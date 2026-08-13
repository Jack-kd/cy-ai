package androidx.webkit.internal;

import android.content.pm.PackageInfo;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;

/* loaded from: classes.dex */
public class ApiHelperForO {
    private ApiHelperForO() {
    }

    public static void setSafeBrowsingEnabled(WebSettings webSettings, boolean z) {
        webSettings.setSafeBrowsingEnabled(z);
    }

    public static boolean getSafeBrowsingEnabled(WebSettings webSettings) {
        boolean safeBrowsingEnabled;
        safeBrowsingEnabled = webSettings.getSafeBrowsingEnabled();
        return safeBrowsingEnabled;
    }

    public static WebViewClient getWebViewClient(WebView webView) {
        WebViewClient webViewClient;
        webViewClient = webView.getWebViewClient();
        return webViewClient;
    }

    public static WebChromeClient getWebChromeClient(WebView webView) {
        WebChromeClient webChromeClient;
        webChromeClient = webView.getWebChromeClient();
        return webChromeClient;
    }

    public static PackageInfo getCurrentWebViewPackage() {
        PackageInfo currentWebViewPackage;
        currentWebViewPackage = WebView.getCurrentWebViewPackage();
        return currentWebViewPackage;
    }
}
