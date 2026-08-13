package androidx.webkit.internal;

import android.os.Looper;
import android.webkit.TracingConfig;
import android.webkit.TracingController;
import android.webkit.WebView;
import androidx.viewpager2.widget.ViewPager2$$ExternalSyntheticApiModelOutline0;
import androidx.webkit.TracingConfig;
import java.io.OutputStream;
import java.util.Collection;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public class ApiHelperForP {
    private ApiHelperForP() {
    }

    public static TracingController getTracingControllerInstance() {
        TracingController tracingController;
        tracingController = TracingController.getInstance();
        return tracingController;
    }

    public static boolean isTracing(TracingController tracingController) {
        boolean isTracing;
        isTracing = tracingController.isTracing();
        return isTracing;
    }

    public static void start(TracingController tracingController, TracingConfig tracingConfig) {
        TracingConfig.Builder addCategories;
        TracingConfig.Builder addCategories2;
        TracingConfig.Builder tracingMode;
        android.webkit.TracingConfig build;
        addCategories = ViewPager2$$ExternalSyntheticApiModelOutline0.m202m().addCategories(tracingConfig.getPredefinedCategories());
        addCategories2 = addCategories.addCategories((Collection<String>) tracingConfig.getCustomIncludedCategories());
        tracingMode = addCategories2.setTracingMode(tracingConfig.getTracingMode());
        build = tracingMode.build();
        tracingController.start(build);
    }

    public static boolean stop(TracingController tracingController, OutputStream outputStream, Executor executor) {
        boolean stop;
        stop = tracingController.stop(outputStream, executor);
        return stop;
    }

    public static ClassLoader getWebViewClassLoader() {
        ClassLoader webViewClassLoader;
        webViewClassLoader = WebView.getWebViewClassLoader();
        return webViewClassLoader;
    }

    public static Looper getWebViewLooper(WebView webView) {
        Looper webViewLooper;
        webViewLooper = webView.getWebViewLooper();
        return webViewLooper;
    }

    public static void setDataDirectorySuffix(String str) {
        WebView.setDataDirectorySuffix(str);
    }
}
