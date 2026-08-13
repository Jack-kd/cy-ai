package yyb.ai.y1779639959407c7f49371b3978075;

import android.app.Application;
import android.util.Log;

/* loaded from: classes3.dex */
public class MainApplication extends Application {
    private static final String TAG = "MainApplication";

    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
        try {
            CrashReporter.install(this);
            CrashReporter.flushPending(this);
        } catch (Throwable th) {
            Log.w(TAG, "CrashReporter init failed", th);
        }
    }
}
