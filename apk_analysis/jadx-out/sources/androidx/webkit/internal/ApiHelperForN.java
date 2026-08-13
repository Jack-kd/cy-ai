package androidx.webkit.internal;

import android.content.Context;
import android.webkit.ServiceWorkerClient;
import android.webkit.ServiceWorkerController;
import android.webkit.ServiceWorkerWebSettings;
import android.webkit.WebResourceRequest;
import android.webkit.WebSettings;
import androidx.webkit.ServiceWorkerClientCompat;
import java.io.File;

/* loaded from: classes.dex */
public class ApiHelperForN {
    private ApiHelperForN() {
    }

    public static File getDataDir(Context context) {
        File dataDir;
        dataDir = context.getDataDir();
        return dataDir;
    }

    public static ServiceWorkerController getServiceWorkerControllerInstance() {
        ServiceWorkerController serviceWorkerController;
        serviceWorkerController = ServiceWorkerController.getInstance();
        return serviceWorkerController;
    }

    public static ServiceWorkerWebSettings getServiceWorkerWebSettings(ServiceWorkerController serviceWorkerController) {
        ServiceWorkerWebSettings serviceWorkerWebSettings;
        serviceWorkerWebSettings = serviceWorkerController.getServiceWorkerWebSettings();
        return serviceWorkerWebSettings;
    }

    public static ServiceWorkerWebSettingsImpl getServiceWorkerWebSettingsImpl(ServiceWorkerController serviceWorkerController) {
        return new ServiceWorkerWebSettingsImpl(getServiceWorkerWebSettings(serviceWorkerController));
    }

    public static void setServiceWorkerClient(ServiceWorkerController serviceWorkerController, ServiceWorkerClient serviceWorkerClient) {
        serviceWorkerController.setServiceWorkerClient(serviceWorkerClient);
    }

    public static void setServiceWorkerClientCompat(ServiceWorkerController serviceWorkerController, ServiceWorkerClientCompat serviceWorkerClientCompat) {
        serviceWorkerController.setServiceWorkerClient(new FrameworkServiceWorkerClient(serviceWorkerClientCompat));
    }

    public static void setCacheMode(ServiceWorkerWebSettings serviceWorkerWebSettings, int i) {
        serviceWorkerWebSettings.setCacheMode(i);
    }

    public static int getCacheMode(ServiceWorkerWebSettings serviceWorkerWebSettings) {
        int cacheMode;
        cacheMode = serviceWorkerWebSettings.getCacheMode();
        return cacheMode;
    }

    public static void setAllowContentAccess(ServiceWorkerWebSettings serviceWorkerWebSettings, boolean z) {
        serviceWorkerWebSettings.setAllowContentAccess(z);
    }

    public static boolean getAllowContentAccess(ServiceWorkerWebSettings serviceWorkerWebSettings) {
        boolean allowContentAccess;
        allowContentAccess = serviceWorkerWebSettings.getAllowContentAccess();
        return allowContentAccess;
    }

    public static void setAllowFileAccess(ServiceWorkerWebSettings serviceWorkerWebSettings, boolean z) {
        serviceWorkerWebSettings.setAllowFileAccess(z);
    }

    public static boolean getAllowFileAccess(ServiceWorkerWebSettings serviceWorkerWebSettings) {
        boolean allowFileAccess;
        allowFileAccess = serviceWorkerWebSettings.getAllowFileAccess();
        return allowFileAccess;
    }

    public static void setBlockNetworkLoads(ServiceWorkerWebSettings serviceWorkerWebSettings, boolean z) {
        serviceWorkerWebSettings.setBlockNetworkLoads(z);
    }

    public static boolean getBlockNetworkLoads(ServiceWorkerWebSettings serviceWorkerWebSettings) {
        boolean blockNetworkLoads;
        blockNetworkLoads = serviceWorkerWebSettings.getBlockNetworkLoads();
        return blockNetworkLoads;
    }

    public static boolean isRedirect(WebResourceRequest webResourceRequest) {
        boolean isRedirect;
        isRedirect = webResourceRequest.isRedirect();
        return isRedirect;
    }

    public static void setDisabledActionModeMenuItems(WebSettings webSettings, int i) {
        webSettings.setDisabledActionModeMenuItems(i);
    }

    public static int getDisabledActionModeMenuItems(WebSettings webSettings) {
        int disabledActionModeMenuItems;
        disabledActionModeMenuItems = webSettings.getDisabledActionModeMenuItems();
        return disabledActionModeMenuItems;
    }
}
