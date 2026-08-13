package yyb.ai.y1779639959407c7f49371b3978075;

import android.os.Handler;
import android.os.Looper;
import android.util.Log;

import java.util.Map;

/**
 * AnrWatchDog (reconstructed from APK).
 *
 * Background thread that posts a tick to the main looper every loop and, if the
 * main thread fails to process it within the timeout, reports an ANR.
 */
public class AnrWatchDog extends Thread {
    public static final long ANR_TIMEOUT_MS = 5000;
    private static final long CHECK_INTERVAL_MS = 1000;
    private static final String TAG = "AnrWatchDog";

    private final Listener listener;
    private final Handler mainHandler;
    private volatile boolean ticked;

    public interface Listener {
        void onAnrDetected(String stack, String allStack, long durationMs);
    }

    public AnrWatchDog(Listener listener) {
        super(TAG);
        this.ticked = true;
        this.mainHandler = new Handler(Looper.getMainLooper());
        this.listener = listener;
        setDaemon(true);
    }

    @Override
    public void run() {
        String stack;
        String allStack;
        while (!isInterrupted()) {
            try {
                try {
                    this.ticked = false;
                    this.mainHandler.post(new Runnable() {
                        @Override
                        public void run() {
                            AnrWatchDog.this.ticked = true;
                        }
                    });
                    Thread.sleep(ANR_TIMEOUT_MS);
                    if (!this.ticked) {
                        try {
                            stack = dumpThread(Looper.getMainLooper().getThread());
                        } catch (Throwable th) {
                            stack = "[dump main thread failed: " + th.getMessage() + "]";
                        }
                        try {
                            allStack = dumpAllThreads();
                        } catch (Throwable th) {
                            allStack = "[dump all threads failed: " + th.getMessage() + "]";
                        }
                        Listener l = this.listener;
                        if (l != null) {
                            try {
                                l.onAnrDetected(stack, allStack, ANR_TIMEOUT_MS);
                            } catch (Throwable th) {
                                Log.w(TAG, "listener.onAnrDetected throw", th);
                            }
                        }
                        while (!this.ticked && !isInterrupted()) {
                            Thread.sleep(CHECK_INTERVAL_MS);
                        }
                    }
                } catch (Throwable th) {
                    Log.w(TAG, "watchdog loop error", th);
                    Thread.sleep(CHECK_INTERVAL_MS);
                }
            } catch (InterruptedException e) {
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
        StackTraceElement[] stack = thread.getStackTrace();
        if (stack != null) {
            for (StackTraceElement element : stack) {
                sb.append("  at ");
                sb.append(element.toString());
                sb.append('\n');
                if (sb.length() > 16384) {
                    sb.append("  ...(truncated)\n");
                    break;
                }
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
            StackTraceElement[] stack = entry.getValue();
            if (stack != null) {
                for (StackTraceElement element : stack) {
                    sb.append("  at ");
                    sb.append(element.toString());
                    sb.append('\n');
                    if (sb.length() > MAX_ALL_STACK_LEN) {
                        sb.append("  ...(truncated)\n");
                        return sb.toString();
                    }
                }
            }
            sb.append('\n');
        }
        return sb.toString();
    }

    private static final int MAX_ALL_STACK_LEN = 32768;
}
