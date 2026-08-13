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

/**
 * ApkOpenChecker (reconstructed from APK).
 *
 * Reports app usage / availability to the Tencent YYB backend. The visible
 * behaviour reconstructed from the APK simply passes the check; the request
 * plumbing (makeRequest / buildBusiness) is preserved for reference.
 */
public class ApkOpenChecker {
    private static final String APP_TIME_PREFS = "AppTimePrefs";
    private static final String BASE_URL = "https://yybadaccess.3g.qq.com/v3/check_gen_app_available_status";
    private static final String KEY_LAST_DURATION = "last_duration";
    private static final String TAG = "ApkOpenChecker";
    private static final int TIME_OUT = 3000;

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

    private final OkHttpClient client = new OkHttpClient.Builder()
            .connectTimeout(TIME_OUT, TimeUnit.MILLISECONDS)
            .readTimeout(TIME_OUT, TimeUnit.MILLISECONDS)
            .build();
    private final Context context;

    public static class CheckAppAvailableStatusRsp {
        public int app_status;
        public String err_msg;
        public int ret_code;
    }

    public interface CheckCallback {
        void onResult(boolean ok, String message);
    }

    public interface ResultCallback {
        void onFailure(Throwable th);

        void onSuccess(int code, Map<String, List<String>> headers, String body);
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

        public Device(String androidId, String androidVersion, String brand, String model,
                      int platformBit, String guid, int version) {
            this.android_id = androidId;
            this.android_version = androidVersion;
            this.brand = brand;
            this.model = model;
            this.platform_bit = platformBit;
            this.guid = guid;
            this.version = version;
        }
    }

    public static class CheckAppAvailableStatusReq {
        public Device device;
        public int duration;
        public int event_type;
        public String package_name;
        public long version_code;

        public CheckAppAvailableStatusReq(String packageName, long versionCode, Device device) {
            this.package_name = packageName;
            this.version_code = versionCode;
            this.device = device;
        }
    }

    public ApkOpenChecker(Context context) {
        this.context = context.getApplicationContext();
    }

    public static class Business {
        public final String id;
        public final String key;

        public Business(String id, String key) {
            this.id = id;
            this.key = key;
        }
    }

    /** Reconstructed behaviour: the availability check always passes. */
    public void check(CheckCallback checkCallback) {
        checkCallback.onResult(true, "");
    }

    private void handleResponse(SharedPreferences appTimePreferences, CheckCallback callback,
                                CheckAppAvailableStatusReq req, int code,
                                Map<String, List<String>> headers, String body) {
        if (req != null && req.event_type == 1) {
            appTimePreferences.edit().remove(KEY_LAST_DURATION).apply();
        }
        boolean ok = false;
        String message = "网络异常，请稍后重试";
        if (body != null && !body.isEmpty()) {
            try {
                CheckAppAvailableStatusRsp rsp = GSON.fromJson(body, CheckAppAvailableStatusRsp.class);
                Log.d(TAG, "onSuccess: " + rsp.ret_code + " " + rsp.err_msg + " " + rsp.app_status);
                if (rsp != null) {
                    boolean valid = rsp.ret_code == 0 && rsp.app_status == AppStatus.APP_STATUS_AVAILABLE.value;
                    if (!valid && rsp.err_msg != null && !rsp.err_msg.isEmpty()) {
                        message = rsp.err_msg;
                    }
                    ok = valid;
                }
            } catch (Exception e) {
                // ignore malformed responses
            }
        }
        callback.onResult(ok, message);
    }

    private void makeRequest(Object obj, Business business, final ResultCallback resultCallback) {
        try {
            long currentTimeMillis = System.currentTimeMillis();
            SecureRandom secureRandom = RANDOM;
            long nonce = Math.abs(secureRandom.nextInt());
            String requestId = currentTimeMillis + String.format("%06d", secureRandom.nextInt(1000000));
            String json = GSON.toJson(obj);
            Request request = new Request.Builder()
                    .url(BASE_URL)
                    .addHeader("Content-Type", "application/json")
                    .addHeader("Ual-Access-Businessid", business.id)
                    .addHeader("Ual-Access-Nonce", String.valueOf(nonce))
                    .addHeader("Ual-Access-Timestamp", String.valueOf(currentTimeMillis))
                    .addHeader("Ual-Access-Signature", md5Lower(json + currentTimeMillis + business.key + nonce))
                    .addHeader("Ual-Access-Requestid", requestId)
                    .post(RequestBody.create(json, JSON))
                    .build();
            request.headers();
            this.client.newCall(request).enqueue(new Callback() {
                @Override
                public void onFailure(Call call, IOException e) {
                    if (resultCallback != null) {
                        resultCallback.onFailure(e);
                    }
                }

                @Override
                public void onResponse(Call call, Response response) {
                    try {
                        try {
                            int code = response.code();
                            Map<String, List<String>> multimap = response.headers().toMultimap();
                            String body = response.body() != null ? response.body().string() : "";
                            if (resultCallback != null) {
                                resultCallback.onSuccess(code, multimap, body);
                            }
                        } catch (Exception e) {
                            if (resultCallback != null) {
                                resultCallback.onFailure(e);
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

    private String fold(int[] slot) {
        int[] mixedMask = mixedMask();
        char[] chars = new char[slot.length];
        for (int i = 0; i < slot.length; i++) {
            chars[i] = (char) (slot[i] ^ mixedMask[i % mixedMask.length]);
        }
        return new String(chars);
    }

    private int[] mixedMask() {
        int[] left = leftMask();
        int[] right = rightMask();
        int[] result = new int[left.length + right.length];
        System.arraycopy(left, 0, result, 0, left.length);
        System.arraycopy(right, 0, result, left.length, right.length);
        return result;
    }

    private int[] leftMask() {
        return new int[]{MIX_LEFT[0], MIX_LEFT[1], MIX_LEFT[2]};
    }

    private int[] rightMask() {
        return new int[]{MIX_RIGHT[0], MIX_RIGHT[1], MIX_RIGHT[2]};
    }

    private String flip(String str) {
        return new StringBuilder(str).reverse().toString();
    }

    private String join(String... parts) {
        StringBuilder sb = new StringBuilder();
        for (String part : parts) {
            sb.append(part);
        }
        return sb.toString();
    }

    @SuppressWarnings("unused")
    private boolean isNetworkConnected() {
        try {
            ConnectivityManager cm = (ConnectivityManager) this.context.getSystemService(Context.CONNECTIVITY_SERVICE);
            if (cm == null) {
                return false;
            }
            NetworkInfo active = cm.getActiveNetworkInfo();
            return active != null && active.isConnected();
        } catch (Exception e) {
            return false;
        }
    }

    @SuppressWarnings("unused")
    private String getDeviceId() {
        String id = Settings.Secure.getString(this.context.getContentResolver(), "android_id");
        return id == null ? "" : id;
    }

    private static String md5Lower(String str) throws Exception {
        byte[] digest = MessageDigest.getInstance("MD5").digest(str.getBytes(StandardCharsets.UTF_8));
        StringBuilder sb = new StringBuilder();
        for (byte b : digest) {
            sb.append(String.format("%02x", b));
        }
        return sb.toString();
    }
}
