package yyb.ai.y1779639959407c7f49371b3978075;

import android.app.ActivityManager;
import android.app.ApplicationExitInfo;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Handler;
import android.os.Process;
import android.provider.Settings;
import android.util.Log;

import com.google.gson.Gson;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;

/**
 * CrashReporter (reconstructed from APK).
 *
 * Installs a global uncaught exception handler + ANR watchdog and uploads
 * crash / ANR reports to the Tencent YYB reporting endpoint.
 */
public class CrashReporter {
    private static final long DEDUP_WINDOW_MS = 10000;
    private static final String KEY_LAST_REPORTED_ANR_TS = "last_reported_anr_ts";
    private static final int MAX_ALL_STACK_LEN = 32768;
    private static final int MAX_MSG_LEN = 512;
    private static final int MAX_PENDING_FILES = 10;
    private static final int MAX_STACK_LEN = 16384;
    private static final String PENDING_DIR_NAME = "aiappshell_crash_pending";
    private static final String REPORT_URL = "https://yybadaccess.3g.qq.com/v3/gen_app_report_data";
    private static final String SP_NAME = "aiappshell_crash";
    private static final String TAG = "CrashReporter";
    private static final int TIME_OUT_MS = 3000;
    private static final String MEDIA_UNKNOWN = "unknown";

    private static volatile Context sAppContext;
    private static volatile Thread.UncaughtExceptionHandler sPrevHandler;
    private static volatile AnrWatchDog sWatchDog;

    private static final MediaType JSON = MediaType.parse("application/json; charset=utf-8");
    private static final Gson GSON = new Gson();
    private static final SecureRandom RANDOM = new SecureRandom();

    private static final int[] MIX_LEFT = {19, 41, 7};
    private static final int[] MIX_RIGHT = {88, 121, 44};
    private static final int[] SLOT_A = {114, 64, 88, 63, 28, 66, 76};
    private static final int[] SLOT_B = {120, 77, 116, 7, 9, 92, 114};
    private static final int[] SLOT_C = {38, 30, 102, 63, 24, 95, 43, 16};   // 102 = QUALITY_BALANCED_POWER_ACCURACY
    private static final int[] SLOT_D = {36, 27, 54, 32, 17, 88, 118, 16};
    private static final int[] SLOT_E = {43, 74, 106, 61, 78, 31, 112, 30};  // 106 = TypedValues.TYPE_TARGET

    private static final AtomicBoolean sInstalled = new AtomicBoolean(false);
    private static final AtomicBoolean sFlushTriggered = new AtomicBoolean(false);
    private static Handler sMainHandler = new Handler();

    public static class CrashItem {
        public Long crash_block_duration_ms;
        public String crash_exception_message;
        public long crash_occur_time_ms;
        public String crash_process_name;
        public int crash_report_retry_count;
        public String crash_source;
        public String crash_thread_name;
        public String crash_thread_stack;
        public String crash_type;
    }

    public static class Device {
        public String android_id;
        public String android_version;
        public String brand;
        public String model;
        public int platform_bit;
    }

    public static class ReportReq {
        public Device device;
        public int event_type;
        public Map<String, Object> ext_data;
        public String package_name;
        public long version_code;
        public String version_name;
    }

    private static class Business {
        final String id;
        final String key;

        Business(String id, String key) {
            this.id = id;
            this.key = key;
        }
    }

    public static void install(Context context) {
        if (context != null && sInstalled.compareAndSet(false, true)) {
            try {
                sAppContext = context.getApplicationContext();
                if (isMainProcess(sAppContext)) {
                    sPrevHandler = Thread.getDefaultUncaughtExceptionHandler();
                    Thread.setDefaultUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler() {
                        @Override
                        public void uncaughtException(Thread thread, Throwable th) {
                            handleJavaCrash(thread, th);
                        }
                    });
                    sWatchDog = new AnrWatchDog(new AnrWatchDog.Listener() {
                        @Override
                        public void onAnrDetected(String stack, String allStack, long durationMs) {
                            handleAnr("watchdog", System.currentTimeMillis(), durationMs, stack, allStack);
                        }
                    });
                    sWatchDog.start();
                }
            } catch (Throwable th) {
                Log.w(TAG, "install failed", th);
            }
        }
    }

    public static void flushPending(Context context) {
        if (context != null && sFlushTriggered.compareAndSet(false, true)) {
            final Context appContext = context.getApplicationContext();
            Thread thread = new Thread("CrashReporter-flush") {
                @Override
                public void run() {
                    try {
                        doFlush(appContext);
                    } catch (Throwable th) {
                        Log.w(TAG, "flushPending failed", th);
                    }
                }
            };
            thread.setDaemon(true);
            thread.start();
        }
    }

    private static void handleJavaCrash(Thread thread, Throwable th) {
        try {
            try {
                CrashItem item = new CrashItem();
                item.crash_type = "java";
                item.crash_source = "uncaught_handler";
                item.crash_occur_time_ms = System.currentTimeMillis();
                item.crash_report_retry_count = 0;
                item.crash_thread_name = thread != null ? thread.getName() : MEDIA_UNKNOWN;
                item.crash_process_name = getCurrentProcessName(sAppContext);
                item.crash_exception_message = truncate(
                        (th == null || th.getMessage() == null) ? "" : th.getMessage(), MAX_MSG_LEN);
                item.crash_thread_stack = truncate(stackToString(th), MAX_STACK_LEN);
                item.crash_block_duration_ms = null;
                if (!attemptRealtimeReport(sAppContext, item)) {
                    writePendingFile(sAppContext, item);
                }
            } catch (Throwable ignored) {
                // fall through to default handler
            }
            if (sPrevHandler == null) {
                Process.killProcess(Process.myPid());
                System.exit(10);
            } else {
                sPrevHandler.uncaughtException(thread, th);
            }
        } catch (Throwable ignored) {
        }
    }

    private static void handleAnr(String source, long timeMs, long durationMs, String stack, String allStack) {
        try {
            CrashItem item = new CrashItem();
            item.crash_type = "anr";
            item.crash_source = source;
            item.crash_occur_time_ms = timeMs;
            item.crash_report_retry_count = 0;
            item.crash_thread_name = "main";
            item.crash_process_name = getCurrentProcessName(sAppContext);
            item.crash_block_duration_ms = durationMs;
            if (stack == null || stack.length() <= 0) {
                stack = allStack;
            }
            item.crash_thread_stack = truncate(stack, MAX_STACK_LEN);
            item.crash_exception_message = "";
            if (!attemptRealtimeReport(sAppContext, item)) {
                writePendingFile(sAppContext, item);
            }
        } catch (Throwable th) {
            Log.w(TAG, "handleAnr failed", th);
        }
    }

    private static void writePendingFile(Context context, CrashItem item) {
        if (context == null) {
            return;
        }
        try {
            File pendingDir = getPendingDir(context);
            if (pendingDir == null) {
                return;
            }
            trimPendingDirIfNeeded(pendingDir);
            String name = item.crash_occur_time_ms + "_" + item.crash_type + "_" + item.crash_source + ".log";
            File file = new File(pendingDir, name);
            File tmp = new File(pendingDir, name + ".tmp");
            String json = GSON.toJson(item);
            FileOutputStream fos = null;
            try {
                fos = new FileOutputStream(tmp);
                fos.write(json.getBytes(StandardCharsets.UTF_8));
                fos.flush();
                fos.getFD().sync();
                fos.close();
                fos = null;
                if (!tmp.renameTo(file)) {
                    tmp.delete();
                }
            } catch (Throwable th) {
                if (fos != null) {
                    try {
                        fos.close();
                    } catch (IOException ignored) {
                    }
                }
                throw th;
            }
        } catch (Throwable th) {
            Log.w(TAG, "writePendingFile failed", th);
        }
    }

    private static void trimPendingDirIfNeeded(File dir) {
        try {
            File[] files = dir.listFiles();
            if (files != null && files.length >= MAX_PENDING_FILES) {
                Arrays.sort(files, new Comparator<File>() {
                    @Override
                    public int compare(File a, File b) {
                        return Long.compare(a.lastModified(), b.lastModified());
                    }
                });
                int remove = files.length - (MAX_PENDING_FILES - 1);
                for (int i = 0; i < remove && i < files.length; i++) {
                    files[i].delete();
                }
            }
        } catch (Throwable ignored) {
        }
    }

    private static void doFlush(Context context) {
        File pendingDir = getPendingDir(context);
        if (pendingDir == null) {
            return;
        }
        ArrayList<CrashItem> items = new ArrayList<>();
        ArrayList<File> files = new ArrayList<>();
        File[] list = pendingDir.listFiles();
        if (list != null) {
            for (File file : list) {
                if (file.getName().endsWith(".log")) {
                    try {
                        CrashItem item = GSON.fromJson(readFile(file), CrashItem.class);
                        if (item != null) {
                            items.add(item);
                            files.add(file);
                        } else {
                            file.delete();
                        }
                    } catch (Throwable ignored) {
                        file.delete();
                    }
                }
            }
        }
        if (Build.VERSION.SDK_INT >= 30) {
            try {
                Iterator<CrashItem> it = collectSystemAnr(context).iterator();
                while (it.hasNext()) {
                    items.add(it.next());
                    files.add(null);
                }
            } catch (Throwable th) {
                Log.w(TAG, "collectSystemAnr failed", th);
            }
        }
        if (items.isEmpty()) {
            return;
        }
        dedupAnrInPlace(items, files);
        for (int i = 0; i < items.size(); i++) {
            reportSingle(context, items.get(i), files.get(i));
        }
    }

    private static List<CrashItem> collectSystemAnr(Context context) {
        ArrayList<CrashItem> items = new ArrayList<>();
        if (Build.VERSION.SDK_INT < 30) {
            return items;
        }
        ActivityManager am = (ActivityManager) context.getSystemService(Context.ACTIVITY_SERVICE);
        if (am == null) {
            return items;
        }
        SharedPreferences sp = context.getSharedPreferences(SP_NAME, 0);
        long lastTs = sp.getLong(KEY_LAST_REPORTED_ANR_TS, 0L);
        List<ApplicationExitInfo> reasons = am.getHistoricalProcessExitReasons(context.getPackageName(), 0, 10);
        if (reasons == null) {
            return items;
        }
        long maxTs = lastTs;
        for (ApplicationExitInfo info : reasons) {
            if (info.getReason() == ApplicationExitInfo.REASON_ANR) {
                long ts = info.getTimestamp();
                if (ts > lastTs) {
                    CrashItem item = new CrashItem();
                    item.crash_type = "anr";
                    item.crash_source = "system_exit";
                    item.crash_occur_time_ms = ts;
                    item.crash_report_retry_count = 0;
                    item.crash_thread_name = "main";
                    item.crash_process_name = info.getProcessName();
                    item.crash_block_duration_ms = 0L;
                    item.crash_thread_stack = truncate(readTraceInputStream(info), MAX_ALL_STACK_LEN);
                    item.crash_exception_message = "";
                    items.add(item);
                    if (ts > maxTs) {
                        maxTs = ts;
                    }
                }
            }
        }
        if (maxTs > lastTs) {
            sp.edit().putLong(KEY_LAST_REPORTED_ANR_TS, maxTs).apply();
        }
        return items;
    }

    private static String readTraceInputStream(ApplicationExitInfo info) {
        if (Build.VERSION.SDK_INT < 30) {
            return "";
        }
        InputStream inputStream = null;
        try {
            inputStream = info.getTraceInputStream();
            if (inputStream == null) {
                return "";
            }
            BufferedReader reader = new BufferedReader(new InputStreamReader(inputStream, StandardCharsets.UTF_8));
            StringBuilder sb = new StringBuilder(8192);
            String line;
            while ((line = reader.readLine()) != null) {
                sb.append(line);
                sb.append('\n');
                if (sb.length() > MAX_ALL_STACK_LEN) {
                    sb.append("...(truncated)\n");
                    break;
                }
            }
            return sb.toString();
        } catch (Throwable ignored) {
            return "";
        } finally {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException ignored) {
                }
            }
        }
    }

    private static void dedupAnrInPlace(List<CrashItem> items, List<File> files) {
        if (items == null || items.isEmpty()) {
            return;
        }
        ArrayList<Long> systemAnrTimes = new ArrayList<>();
        for (CrashItem item : items) {
            if ("anr".equals(item.crash_type) && "system_exit".equals(item.crash_source)) {
                systemAnrTimes.add(item.crash_occur_time_ms);
            }
        }
        if (systemAnrTimes.isEmpty()) {
            return;
        }
        for (int i = items.size() - 1; i >= 0; i--) {
            CrashItem item = items.get(i);
            if ("anr".equals(item.crash_type) && "watchdog".equals(item.crash_source)) {
                for (Long ts : systemAnrTimes) {
                    if (Math.abs(ts - item.crash_occur_time_ms) <= DEDUP_WINDOW_MS) {
                        items.remove(i);
                        File f = files.remove(i);
                        if (f != null) {
                            try {
                                f.delete();
                            } catch (Throwable ignored) {
                            }
                        }
                        break;
                    }
                }
            }
        }
    }

    private static boolean attemptRealtimeReport(Context context, CrashItem item) {
        if (context != null && item != null) {
            try {
                ReportReq req = buildReportReq(context, item);
                String json = GSON.toJson(req);
                Business business = buildBusiness();
                long timestamp = System.currentTimeMillis();
                long nonce = Math.abs(RANDOM.nextInt());
                Response response = new OkHttpClient.Builder()
                        .connectTimeout(1500L, TimeUnit.MILLISECONDS)
                        .readTimeout(1500L, TimeUnit.MILLISECONDS)
                        .build()
                        .newCall(buildReportRequest(json, business, timestamp, nonce, false))
                        .execute();
                try {
                    if (response.isSuccessful()) {
                        Log.d(TAG, "实时上报成功");
                        return true;
                    }
                    Log.w(TAG, "实时上报失败, code=" + response.code());
                    return false;
                } finally {
                    response.close();
                }
            } catch (Throwable th) {
                Log.w(TAG, "实时上报异常", th);
            }
        }
        return false;
    }

    private static void reportSingle(Context context, CrashItem item, final File file) {
        try {
            ReportReq req = buildReportReq(context, item);
            String json = GSON.toJson(req);
            Business business = buildBusiness();
            long timestamp = System.currentTimeMillis();
            long nonce = Math.abs(RANDOM.nextInt());
            new OkHttpClient.Builder()
                    .connectTimeout(TIME_OUT_MS, TimeUnit.MILLISECONDS)
                    .readTimeout(TIME_OUT_MS, TimeUnit.MILLISECONDS)
                    .build()
                    .newCall(buildReportRequest(json, business, timestamp, nonce, true))
                    .enqueue(new Callback() {
                        @Override
                        public void onFailure(Call call, IOException e) {
                            deleteSilently(file);
                            Log.w(TAG, "reportSingle failed", e);
                        }

                        @Override
                        public void onResponse(Call call, Response response) {
                            try {
                                response.close();
                            } catch (Throwable ignored) {
                            }
                            if (response.isSuccessful()) {
                                Log.d(TAG, "reportSingle success");
                            } else {
                                Log.w(TAG, "reportSingle failed, code=" + response.code());
                            }
                            deleteSilently(file);
                        }
                    });
        } catch (Throwable ignored) {
            deleteSilently(file);
        }
    }

    private static ReportReq buildReportReq(Context context, CrashItem item) {
        ReportReq req = new ReportReq();
        req.package_name = context.getPackageName();
        req.version_code = getVersionCode(context);
        req.version_name = getVersionName(context);
        req.device = buildDevice(context);
        req.event_type = 2;
        req.ext_data = new HashMap<>();
        req.ext_data.put("crash_type", item.crash_type);
        req.ext_data.put("crash_source", item.crash_source);
        req.ext_data.put("crash_occur_time_ms", item.crash_occur_time_ms);
        req.ext_data.put("crash_report_retry_count", item.crash_report_retry_count);
        req.ext_data.put("crash_thread_name", item.crash_thread_name);
        req.ext_data.put("crash_process_name", item.crash_process_name);
        req.ext_data.put("crash_thread_stack", item.crash_thread_stack);
        req.ext_data.put("crash_exception_message", item.crash_exception_message);
        req.ext_data.put("crash_block_duration_ms", item.crash_block_duration_ms);
        return req;
    }

    private static Request buildReportRequest(String json, Business business, long timestamp,
                                              long nonce, boolean withRequestId) {
        Request.Builder builder = new Request.Builder()
                .url(REPORT_URL)
                .addHeader("Content-Type", "application/json")
                .addHeader("Ual-Access-Businessid", business.id)
                .addHeader("Ual-Access-Nonce", String.valueOf(nonce))
                .addHeader("Ual-Access-Timestamp", String.valueOf(timestamp))
                .addHeader("Ual-Access-Signature", md5Lower(json + timestamp + business.key + nonce));
        if (withRequestId) {
            builder.addHeader("Ual-Access-Requestid",
                    timestamp + String.format("%06d", RANDOM.nextInt(1000000)));
        }
        return builder.post(RequestBody.create(json, JSON)).build();
    }

    private static void deleteSilently(File file) {
        if (file == null) {
            return;
        }
        try {
            file.delete();
        } catch (Throwable ignored) {
        }
    }

    private static Device buildDevice(Context context) {
        Device device = new Device();
        device.android_id = getDeviceId(context);
        device.android_version = getAndroidVersion();
        device.brand = getDeviceBrand();
        device.model = getDeviceModel();
        device.platform_bit = getPlatformBit();
        return device;
    }

    private static String getDeviceId(Context context) {
        try {
            String id = Settings.Secure.getString(context.getContentResolver(), "android_id");
            return id == null ? "" : id;
        } catch (Throwable ignored) {
            return "";
        }
    }

    private static String getDeviceBrand() {
        return Build.BRAND == null ? MEDIA_UNKNOWN : Build.BRAND;
    }

    private static String getDeviceModel() {
        return Build.MODEL == null ? MEDIA_UNKNOWN : Build.MODEL;
    }

    private static String getAndroidVersion() {
        return Build.VERSION.RELEASE == null ? MEDIA_UNKNOWN : Build.VERSION.RELEASE;
    }

    private static int getPlatformBit() {
        try {
            String arch = System.getProperty("os.arch");
            if (arch == null) {
                return 0;
            }
            return arch.contains("64") ? 2 : 1;
        } catch (Throwable ignored) {
            return 0;
        }
    }

    private static long getVersionCode(Context context) {
        try {
            PackageManager pm = context.getPackageManager();
            String pkg = context.getPackageName();
            PackageInfo info;
            if (Build.VERSION.SDK_INT >= 33) {
                info = pm.getPackageInfo(pkg, PackageManager.PackageInfoFlags.of(0L));
            } else {
                info = pm.getPackageInfo(pkg, 0);
            }
            if (Build.VERSION.SDK_INT >= 28) {
                return info.getLongVersionCode();
            }
            return info.versionCode;
        } catch (Throwable ignored) {
            return 0L;
        }
    }

    private static String getVersionName(Context context) {
        try {
            PackageManager pm = context.getPackageManager();
            String pkg = context.getPackageName();
            PackageInfo info;
            if (Build.VERSION.SDK_INT >= 33) {
                info = pm.getPackageInfo(pkg, PackageManager.PackageInfoFlags.of(0L));
            } else {
                info = pm.getPackageInfo(pkg, 0);
            }
            return info.versionName == null ? MEDIA_UNKNOWN : info.versionName;
        } catch (Throwable ignored) {
            return MEDIA_UNKNOWN;
        }
    }

    private static Business buildBusiness() {
        return new Business(join(fold(SLOT_A), flip(fold(SLOT_B))),
                join(fold(SLOT_C), flip(fold(SLOT_D)), fold(SLOT_E)));
    }

    private static String fold(int[] slot) {
        int[] mixedMask = mixedMask();
        char[] chars = new char[slot.length];
        for (int i = 0; i < slot.length; i++) {
            chars[i] = (char) (slot[i] ^ mixedMask[i % mixedMask.length]);
        }
        return new String(chars);
    }

    private static int[] mixedMask() {
        int[] result = new int[MIX_LEFT.length + MIX_RIGHT.length];
        System.arraycopy(MIX_LEFT, 0, result, 0, MIX_LEFT.length);
        System.arraycopy(MIX_RIGHT, 0, result, MIX_LEFT.length, MIX_RIGHT.length);
        return result;
    }

    private static String flip(String str) {
        return new StringBuilder(str).reverse().toString();
    }

    private static String join(String... parts) {
        StringBuilder sb = new StringBuilder();
        for (String part : parts) {
            sb.append(part);
        }
        return sb.toString();
    }

    private static String md5Lower(String str) {
        try {
            byte[] digest = MessageDigest.getInstance("MD5").digest(str.getBytes(StandardCharsets.UTF_8));
            StringBuilder sb = new StringBuilder();
            for (byte b : digest) {
                sb.append(String.format("%02x", b));
            }
            return sb.toString();
        } catch (Exception e) {
            return "";
        }
    }

    private static File getPendingDir(Context context) {
        try {
            File dir = new File(context.getFilesDir(), PENDING_DIR_NAME);
            if (!dir.exists() && !dir.mkdirs()) {
                return null;
            }
            return dir;
        } catch (Throwable ignored) {
            return null;
        }
    }

    private static String readFile(File file) throws IOException {
        FileInputStream fis = new FileInputStream(file);
        try {
            int len = (int) Math.min(file.length(), 131072L);
            byte[] buffer = new byte[len];
            int total = 0;
            while (total < len) {
                int read = fis.read(buffer, total, len - total);
                if (read <= 0) {
                    break;
                }
                total += read;
            }
            return new String(buffer, 0, total, StandardCharsets.UTF_8);
        } finally {
            try {
                fis.close();
            } catch (IOException ignored) {
            }
        }
    }

    private static String stackToString(Throwable th) {
        if (th == null) {
            return "";
        }
        StringWriter sw = new StringWriter(2048);
        PrintWriter pw = new PrintWriter(sw);
        try {
            th.printStackTrace(pw);
            pw.flush();
            pw.close();
            return sw.toString();
        } catch (Throwable t) {
            pw.flush();
            pw.close();
            throw t;
        }
    }

    private static String truncate(String str, int max) {
        if (str == null) {
            return "";
        }
        if (str.length() <= max) {
            return str;
        }
        return str.substring(0, max) + "\n...(truncated)";
    }

    private static boolean isMainProcess(Context context) {
        try {
            String pkg = context.getPackageName();
            String process = getCurrentProcessName(context);
            return pkg != null && pkg.equals(process);
        } catch (Throwable ignored) {
            return true;
        }
    }

    private static String getCurrentProcessName(Context context) {
        try {
            int pid = Process.myPid();
            ActivityManager am = (ActivityManager) context.getSystemService(Context.ACTIVITY_SERVICE);
            if (am != null) {
                List<ActivityManager.RunningAppProcessInfo> procs = am.getRunningAppProcesses();
                if (procs != null) {
                    for (ActivityManager.RunningAppProcessInfo p : procs) {
                        if (p.pid == pid) {
                            return p.processName;
                        }
                    }
                }
            }
        } catch (Throwable ignored) {
        }
        return context.getPackageName();
    }
}
