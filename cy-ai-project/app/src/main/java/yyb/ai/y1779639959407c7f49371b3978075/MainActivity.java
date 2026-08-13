package yyb.ai.y1779639959407c7f49371b3978075;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.widget.Toast;

import com.getcapacitor.BridgeActivity;

/**
 * MainActivity (reconstructed from APK).
 *
 * Extends Capacitor's BridgeActivity and registers the custom HTTP plugin that
 * injects common request headers (package name + device id).
 */
public class MainActivity extends BridgeActivity {
    private static final String KEY_LAST_DURATION = "last_duration";
    private static final String TAG = "MainActivity";

    private ApkOpenChecker apkChecker;
    private SharedPreferences preferences;
    private long startTime;

    @Override
    protected void onCreate(Bundle bundle) {
        registerPlugin(CustomHttpPlugin.class);
        super.onCreate(bundle);
        this.apkChecker = new ApkOpenChecker(this);
        this.preferences = getSharedPreferences("AppTimePrefs", 0);
        this.startTime = System.currentTimeMillis();
        startCheckApk("onCreate");
    }

    private void startCheckApk(final String source) {
        this.apkChecker.check(new ApkOpenChecker.CheckCallback() {
            @Override
            public void onResult(boolean ok, String message) {
                if (!ok) {
                    runOnUiThread(new Runnable() {
                        @Override
                        public void run() {
                            showToastAndFinish(message);
                        }
                    });
                } else {
                    Log.d(TAG, "应用检查通过，source=" + source);
                }
            }
        });
    }

    private void showToastAndFinish(String message) {
        Toast.makeText(this, message, Toast.LENGTH_SHORT).show();
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() {
            @Override
            public void run() {
                finish();
            }
        }, 500L);
    }

    @Override
    public void onDestroy() {
        long elapsed = (System.currentTimeMillis() - this.startTime) / 1000;
        int duration = elapsed > Integer.MAX_VALUE ? Integer.MAX_VALUE : (int) Math.max(elapsed, 0L);
        this.preferences.edit().putInt(KEY_LAST_DURATION, duration).commit();
        startCheckApk("onDestroy");
        super.onDestroy();
    }
}
