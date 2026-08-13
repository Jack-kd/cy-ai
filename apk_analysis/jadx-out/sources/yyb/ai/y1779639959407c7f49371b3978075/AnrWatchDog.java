package yyb.ai.y1779639959407c7f49371b3978075;

import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import java.util.Map;

/* loaded from: classes3.dex */
public class AnrWatchDog extends Thread {
    public static final long ANR_TIMEOUT_MS = 5000;
    private static final long CHECK_INTERVAL_MS = 1000;
    private static final String TAG = "AnrWatchDog";
    private final Listener listener;
    private final Handler mainHandler;
    private volatile boolean ticked;

    public interface Listener {
        void onAnrDetected(String str, String str2, long j);
    }

    public AnrWatchDog(Listener listener) {
        super(TAG);
        this.ticked = true;
        this.mainHandler = new Handler(Looper.getMainLooper());
        this.listener = listener;
        setDaemon(true);
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        String str;
        String str2;
        while (!isInterrupted()) {
            try {
                try {
                    this.ticked = false;
                    this.mainHandler.post(new Runnable() { // from class: yyb.ai.y1779639959407c7f49371b3978075.AnrWatchDog.1
                        @Override // java.lang.Runnable
                        public void run() {
                            AnrWatchDog.this.ticked = true;
                        }
                    });
                    Thread.sleep(ANR_TIMEOUT_MS);
                    if (!this.ticked) {
                        try {
                            str = dumpThread(Looper.getMainLooper().getThread());
                        } catch (Throwable th) {
                            str = "[dump main thread failed: " + th.getMessage() + "]";
                        }
                        try {
                            str2 = dumpAllThreads();
                        } catch (Throwable th2) {
                            str2 = "[dump all threads failed: " + th2.getMessage() + "]";
                        }
                        Listener listener = this.listener;
                        if (listener != null) {
                            try {
                                listener.onAnrDetected(str, str2, ANR_TIMEOUT_MS);
                            } catch (Throwable th3) {
                                Log.w(TAG, "listener.onAnrDetected throw", th3);
                            }
                        }
                        while (!this.ticked && !isInterrupted()) {
                            Thread.sleep(CHECK_INTERVAL_MS);
                        }
                    }
                } catch (Throwable th4) {
                    Log.w(TAG, "watchdog loop error", th4);
                    Thread.sleep(CHECK_INTERVAL_MS);
                }
            } catch (InterruptedException unused) {
                return;
            }
        }
    }

    private static String dumpThread(Thread thread) {
        StringBuilder sb = new StringBuilder(2048);
        sb.append(thread.getName());
        sb.append(" (state=");
        sb.append(thread.getState());
        sb.append(")\n");
        StackTraceElement[] stackTrace = thread.getStackTrace();
        if (stackTrace != null) {
            int length = stackTrace.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                }
                StackTraceElement stackTraceElement = stackTrace[i];
                sb.append("  at ");
                sb.append(stackTraceElement.toString());
                sb.append('\n');
                if (sb.length() > 16384) {
                    sb.append("  ...(truncated)\n");
                    break;
                }
                i++;
            }
        }
        return sb.toString();
    }

    private static String dumpAllThreads() {
        StringBuilder sb = new StringBuilder(4096);
        for (Map.Entry<Thread, StackTraceElement[]> entry : Thread.getAllStackTraces().entrySet()) {
            Thread key = entry.getKey();
            sb.append("---- ");
            sb.append(key.getName());
            sb.append(" (state=");
            sb.append(key.getState());
            sb.append(") ----\n");
            StackTraceElement[] value = entry.getValue();
            if (value != null) {
                for (StackTraceElement stackTraceElement : value) {
                    sb.append("  at ");
                    sb.append(stackTraceElement.toString());
                    sb.append('\n');
                    if (sb.length() > 32768) {
                        sb.append("  ...(truncated)\n");
                        return sb.toString();
                    }
                }
            }
            sb.append('\n');
        }
        return sb.toString();
    }
}
