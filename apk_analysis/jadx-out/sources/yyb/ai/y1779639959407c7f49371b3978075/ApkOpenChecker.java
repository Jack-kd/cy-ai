package yyb.ai.y1779639959407c7f49371b3978075;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.provider.Settings;
import android.util.Log;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.location.LocationRequestCompat;
import androidx.core.os.EnvironmentCompat;
import com.google.gson.Gson;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.SecureRandom;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;

/* loaded from: classes3.dex */
public class ApkOpenChecker {
    private static final String APP_TIME_PREFS = "AppTimePrefs";
    private static final String BASE_URL = "https://yybadaccess.3g.qq.com/v3/check_gen_app_available_status";
    private static final String KEY_LAST_DURATION = "last_duration";
    private static final String TAG = "ApkOpenChecker";
    private static final int TIME_OUT = 3000;
    private final OkHttpClient client = new OkHttpClient.Builder().connectTimeout(3000, TimeUnit.MILLISECONDS).readTimeout(3000, TimeUnit.MILLISECONDS).build();
    private final Context context;
    private static final MediaType JSON = MediaType.parse("application/json; charset=utf-8");
    private static final Gson GSON = new Gson();
    private static final SecureRandom RANDOM = new SecureRandom();
    private static final int[] MIX_LEFT = {19, 41, 7};
    private static final int[] MIX_RIGHT = {88, 121, 44};
    private static final int[] SLOT_A = {114, 64, 88, 63, 28, 66, 76};
    private static final int[] SLOT_B = {120, 77, 116, 7, 9, 92, 114};
    private static final int[] SLOT_C = {38, 30, LocationRequestCompat.QUALITY_BALANCED_POWER_ACCURACY, 63, 24, 95, 43, 16};
    private static final int[] SLOT_D = {36, 27, 54, 32, 17, 88, 118, 16};
    private static final int[] SLOT_E = {43, 74, TypedValues.TYPE_TARGET, 61, 78, 31, 112, 30};

    public static class CheckAppAvailableStatusRsp {
        public int app_status;
        public String err_msg;
        public int ret_code;
    }

    public interface CheckCallback {
        void onResult(boolean z, String str);
    }

    public interface ResultCallback {
        void onFailure(Throwable th);

        void onSuccess(int i, Map<String, List<String>> map, String str);
    }

    public enum PlatformBit {
        PLATFORMBIT_UNKNOWN(0),
        PLATFORMBIT_32(1),
        PLATFORMBIT_64(2);

        public final int value;

        PlatformBit(int i) {
            this.value = i;
        }
    }

    public enum AppStatus {
        APP_STATUS_AVAILABLE(0),
        APP_STATUS_DISABLED(1);

        public final int value;

        AppStatus(int i) {
            this.value = i;
        }
    }

    public static class Device {
        public String android_id;
        public String android_version;
        public String brand;
        public String guid;
        public String model;
        public int platform_bit;
        public int version;

        public Device(String str, String str2, String str3, String str4, int i, String str5, int i2) {
            this.android_id = str;
            this.android_version = str2;
            this.brand = str3;
            this.model = str4;
            this.platform_bit = i;
            this.guid = str5;
            this.version = i2;
        }
    }

    public static class CheckAppAvailableStatusReq {
        public Device device;
        public int duration;
        public int event_type;
        public String package_name;
        public long version_code;

        public CheckAppAvailableStatusReq(String str, long j, Device device) {
            this.package_name = str;
            this.version_code = j;
            this.device = device;
        }
    }

    public ApkOpenChecker(Context context) {
        this.context = context.getApplicationContext();
    }

    public static class Business {
        public final String id;
        public final String key;

        public Business(String str, String str2) {
            this.id = str;
            this.key = str2;
        }
    }

    public void check(CheckCallback checkCallback) {
        checkCallback.onResult(true, "");
    }

    /* renamed from: yyb.ai.y1779639959407c7f49371b3978075.ApkOpenChecker$1, reason: invalid class name */
    class AnonymousClass1 implements ResultCallback {
        final /* synthetic */ SharedPreferences val$appTimePreferences;
        final /* synthetic */ CheckCallback val$callback;
        final /* synthetic */ CheckAppAvailableStatusReq val$req;

        AnonymousClass1(ApkOpenChecker apkOpenChecker, CheckAppAvailableStatusReq checkAppAvailableStatusReq, SharedPreferences sharedPreferences, CheckCallback checkCallback) {
            this.val$req = checkAppAvailableStatusReq;
            this.val$appTimePreferences = sharedPreferences;
            this.val$callback = checkCallback;
        }

        @Override // yyb.ai.y1779639959407c7f49371b3978075.ApkOpenChecker.ResultCallback
        public void onSuccess(int i, Map<String, List<String>> map, String str) {
            if (this.val$req.event_type == 1) {
                this.val$appTimePreferences.edit().remove(ApkOpenChecker.KEY_LAST_DURATION).apply();
            }
            boolean z = false;
            String str2 = "网络异常，请稍后重试";
            if (str != null) {
                try {
                    if (!str.isEmpty()) {
                        CheckAppAvailableStatusRsp checkAppAvailableStatusRsp = (CheckAppAvailableStatusRsp) ApkOpenChecker.GSON.fromJson(str, CheckAppAvailableStatusRsp.class);
                        Log.d(ApkOpenChecker.TAG, "1234 onSuccess: " + checkAppAvailableStatusRsp.ret_code + " " + checkAppAvailableStatusRsp.err_msg + " " + checkAppAvailableStatusRsp.app_status);
                        if (checkAppAvailableStatusRsp != null) {
                            boolean z2 = checkAppAvailableStatusRsp.ret_code == 0 && checkAppAvailableStatusRsp.app_status == AppStatus.APP_STATUS_AVAILABLE.value;
                            if (!z2 && checkAppAvailableStatusRsp.err_msg != null && !checkAppAvailableStatusRsp.err_msg.isEmpty()) {
                                str2 = checkAppAvailableStatusRsp.err_msg;
                            }
                            z = z2;
                        }
                    }
                } catch (Exception unused) {
                }
            }
            this.val$callback.onResult(z, str2);
        }

        @Override // yyb.ai.y1779639959407c7f49371b3978075.ApkOpenChecker.ResultCallback
        public void onFailure(Throwable th) {
            this.val$callback.onResult(false, "网络异常，请稍后重试");
        }
    }

    private void makeRequest(Object obj, Business business, final ResultCallback resultCallback) {
        try {
            long currentTimeMillis = System.currentTimeMillis();
            SecureRandom secureRandom = RANDOM;
            long m = ApkOpenChecker$$ExternalSyntheticBackport1.m(secureRandom.nextInt());
            String str = currentTimeMillis + String.format("%06d", Integer.valueOf(secureRandom.nextInt(1000000)));
            String json = GSON.toJson(obj);
            Request build = new Request.Builder().url(BASE_URL).addHeader("Content-Type", "application/json").addHeader("Ual-Access-Businessid", business.id).addHeader("Ual-Access-Nonce", String.valueOf(m)).addHeader("Ual-Access-Timestamp", String.valueOf(currentTimeMillis)).addHeader("Ual-Access-Signature", md5Lower(json + currentTimeMillis + business.key + m)).addHeader("Ual-Access-Requestid", str).post(RequestBody.create(json, JSON)).build();
            build.headers();
            this.client.newCall(build).enqueue(new Callback(this) { // from class: yyb.ai.y1779639959407c7f49371b3978075.ApkOpenChecker.2
                @Override // okhttp3.Callback
                public void onFailure(Call call, IOException iOException) {
                    ResultCallback resultCallback2 = resultCallback;
                    if (resultCallback2 != null) {
                        resultCallback2.onFailure(iOException);
                    }
                }

                @Override // okhttp3.Callback
                public void onResponse(Call call, Response response) {
                    try {
                        try {
                            int code = response.code();
                            Map<String, List<String>> multimap = response.headers().toMultimap();
                            String string = response.body() != null ? response.body().string() : "";
                            ResultCallback resultCallback2 = resultCallback;
                            if (resultCallback2 != null) {
                                resultCallback2.onSuccess(code, multimap, string);
                            }
                        } catch (Exception e) {
                            ResultCallback resultCallback3 = resultCallback;
                            if (resultCallback3 != null) {
                                resultCallback3.onFailure(e);
                            }
                        }
                    } finally {
                        response.close();
                    }
                }
            });
        } catch (Exception e) {
            if (resultCallback != null) {
                resultCallback.onFailure(e);
            }
        }
    }

    private Business buildBusiness() {
        return new Business(join(readA(), flip(readB())), join(readC(), flip(readD()), readE()));
    }

    private String readA() {
        return fold(SLOT_A);
    }

    private String readB() {
        return fold(SLOT_B);
    }

    private String readC() {
        return fold(SLOT_C);
    }

    private String readD() {
        return fold(SLOT_D);
    }

    private String readE() {
        return fold(SLOT_E);
    }

    private String fold(int[] iArr) {
        int[] mixedMask = mixedMask();
        char[] cArr = new char[iArr.length];
        for (int i = 0; i < iArr.length; i++) {
            cArr[i] = (char) (iArr[i] ^ mixedMask[i % mixedMask.length]);
        }
        return new String(cArr);
    }

    private int[] mixedMask() {
        int[] leftMask = leftMask();
        int[] rightMask = rightMask();
        int[] iArr = new int[leftMask.length + rightMask.length];
        System.arraycopy(leftMask, 0, iArr, 0, leftMask.length);
        System.arraycopy(rightMask, 0, iArr, leftMask.length, rightMask.length);
        return iArr;
    }

    private int[] leftMask() {
        int[] iArr = MIX_LEFT;
        return new int[]{iArr[0], iArr[1], iArr[2]};
    }

    private int[] rightMask() {
        int[] iArr = MIX_RIGHT;
        return new int[]{iArr[0], iArr[1], iArr[2]};
    }

    private String flip(String str) {
        return new StringBuilder(str).reverse().toString();
    }

    private String join(String... strArr) {
        StringBuilder sb = new StringBuilder();
        for (String str : strArr) {
            sb.append(str);
        }
        return sb.toString();
    }

    private boolean isNetworkConnected() {
        NetworkInfo activeNetworkInfo;
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) this.context.getSystemService("connectivity");
            if (connectivityManager == null || (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) == null) {
                return false;
            }
            return activeNetworkInfo.isConnected();
        } catch (Exception unused) {
            return false;
        }
    }

    private String getDeviceId() {
        String string = Settings.Secure.getString(this.context.getContentResolver(), "android_id");
        return string == null ? "" : string;
    }

    private String getVersionName() {
        PackageInfo packageInfo;
        PackageManager.PackageInfoFlags of;
        try {
            PackageManager packageManager = this.context.getPackageManager();
            String packageName = this.context.getPackageName();
            if (Build.VERSION.SDK_INT >= 33) {
                of = PackageManager.PackageInfoFlags.of(0L);
                packageInfo = packageManager.getPackageInfo(packageName, of);
            } else {
                packageInfo = packageManager.getPackageInfo(packageName, 0);
            }
            return packageInfo.versionName == null ? EnvironmentCompat.MEDIA_UNKNOWN : packageInfo.versionName;
        } catch (Exception unused) {
            return EnvironmentCompat.MEDIA_UNKNOWN;
        }
    }

    private String getVersionCode() {
        PackageInfo packageInfo;
        long longVersionCode;
        PackageManager.PackageInfoFlags of;
        try {
            PackageManager packageManager = this.context.getPackageManager();
            String packageName = this.context.getPackageName();
            if (Build.VERSION.SDK_INT >= 33) {
                of = PackageManager.PackageInfoFlags.of(0L);
                packageInfo = packageManager.getPackageInfo(packageName, of);
            } else {
                packageInfo = packageManager.getPackageInfo(packageName, 0);
            }
            if (Build.VERSION.SDK_INT >= 28) {
                longVersionCode = packageInfo.getLongVersionCode();
                return String.valueOf(longVersionCode);
            }
            return String.valueOf(packageInfo.versionCode);
        } catch (Exception unused) {
            return "0";
        }
    }

    private String getDeviceBrand() {
        return Build.BRAND == null ? EnvironmentCompat.MEDIA_UNKNOWN : Build.BRAND;
    }

    private String getDeviceModel() {
        return Build.MODEL == null ? EnvironmentCompat.MEDIA_UNKNOWN : Build.MODEL;
    }

    private String getAndroidVersion() {
        return Build.VERSION.RELEASE == null ? EnvironmentCompat.MEDIA_UNKNOWN : Build.VERSION.RELEASE;
    }

    private PlatformBit getPlatformBit() {
        try {
            String property = System.getProperty("os.arch");
            if (property == null) {
                return PlatformBit.PLATFORMBIT_UNKNOWN;
            }
            if (property.contains("64")) {
                return PlatformBit.PLATFORMBIT_64;
            }
            return PlatformBit.PLATFORMBIT_32;
        } catch (Exception unused) {
            return PlatformBit.PLATFORMBIT_UNKNOWN;
        }
    }

    private static String md5Lower(String str) throws Exception {
        byte[] digest = MessageDigest.getInstance("MD5").digest(str.getBytes(StandardCharsets.UTF_8));
        StringBuilder sb = new StringBuilder();
        for (byte b : digest) {
            sb.append(String.format("%02x", Byte.valueOf(b)));
        }
        return sb.toString();
    }
}
