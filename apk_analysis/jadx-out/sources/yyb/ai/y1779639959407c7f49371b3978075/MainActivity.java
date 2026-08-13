package yyb.ai.y1779639959407c7f49371b3978075;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.widget.Toast;
import com.getcapacitor.BridgeActivity;
import yyb.ai.y1779639959407c7f49371b3978075.ApkOpenChecker;

/* loaded from: classes3.dex */
public class MainActivity extends BridgeActivity {
    private static final String KEY_LAST_DURATION = "last_duration";
    private static final String TAG = "MainActivity";
    private ApkOpenChecker apkChecker;
    private SharedPreferences preferences;
    private long startTime;

    @Override // com.getcapacitor.BridgeActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        registerPlugin(CustomHttpPlugin.class);
        super.onCreate(bundle);
        this.apkChecker = new ApkOpenChecker(this);
        this.preferences = getSharedPreferences("AppTimePrefs", 0);
        this.startTime = System.currentTimeMillis();
        startCheckApk("onCreate");
    }

    private void startCheckApk(final String str) {
        this.apkChecker.check(new ApkOpenChecker.CheckCallback() { // from class: yyb.ai.y1779639959407c7f49371b3978075.MainActivity$$ExternalSyntheticLambda1
            @Override // yyb.ai.y1779639959407c7f49371b3978075.ApkOpenChecker.CheckCallback
            public final void onResult(boolean z, String str2) {
                MainActivity.this.lambda$startCheckApk$2(str, z, str2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startCheckApk$2(String str, boolean z, final String str2) {
        if (!z) {
            runOnUiThread(new Runnable() { // from class: yyb.ai.y1779639959407c7f49371b3978075.MainActivity$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    MainActivity.this.lambda$startCheckApk$1(str2);
                }
            });
            return;
        }
        Log.d(TAG, "应用检查通过，source=" + str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startCheckApk$1(String str) {
        Toast.makeText(this, str, 1).show();
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: yyb.ai.y1779639959407c7f49371b3978075.MainActivity$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                MainActivity.this.lambda$startCheckApk$0();
            }
        }, 500L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startCheckApk$0() {
        finish();
    }

    @Override // com.getcapacitor.BridgeActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        long currentTimeMillis = (System.currentTimeMillis() - this.startTime) / 1000;
        this.preferences.edit().putInt(KEY_LAST_DURATION, currentTimeMillis > 2147483647L ? Integer.MAX_VALUE : (int) Math.max(currentTimeMillis, 0L)).commit();
        startCheckApk("onDestroy");
        super.onDestroy();
    }
}
