package org.apache.cordova;

import android.content.Intent;
import android.content.res.Configuration;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Debug;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.function.BiConsumer;
import org.apache.cordova.PluginResult;
import org.json.JSONException;

/* loaded from: classes3.dex */
public class PluginManager {
    private static String DEFAULT_HOSTNAME = "localhost";
    private static String SCHEME_HTTPS = "https";
    private static final int SLOW_EXEC_WARNING_THRESHOLD;
    private static String TAG = "PluginManager";
    private final CordovaWebView app;
    private final CordovaInterface ctx;
    private boolean isInitialized;
    private CordovaPlugin permissionRequester;
    private final Map<String, CordovaPlugin> pluginMap = Collections.synchronizedMap(new LinkedHashMap());
    private final Map<String, PluginEntry> entryMap = Collections.synchronizedMap(new LinkedHashMap());

    static {
        SLOW_EXEC_WARNING_THRESHOLD = Debug.isDebuggerConnected() ? 60 : 16;
    }

    public PluginManager(CordovaWebView cordovaWebView, CordovaInterface cordova, Collection<PluginEntry> pluginEntries) {
        this.ctx = cordova;
        this.app = cordovaWebView;
        setPluginEntries(pluginEntries);
    }

    public Collection<PluginEntry> getPluginEntries() {
        return this.entryMap.values();
    }

    public void setPluginEntries(Collection<PluginEntry> pluginEntries) {
        if (this.isInitialized) {
            onPause(false);
            onDestroy();
            this.pluginMap.clear();
            this.entryMap.clear();
        }
        Iterator<PluginEntry> it = pluginEntries.iterator();
        while (it.hasNext()) {
            addService(it.next());
        }
        if (this.isInitialized) {
            startupPlugins();
        }
    }

    public void init() {
        LOG.d(TAG, "init()");
        this.isInitialized = true;
        onPause(false);
        onDestroy();
        this.pluginMap.clear();
        startupPlugins();
    }

    private void startupPlugins() {
        synchronized (this.entryMap) {
            for (PluginEntry pluginEntry : this.entryMap.values()) {
                if (pluginEntry.onload) {
                    getPlugin(pluginEntry.service);
                } else {
                    LOG.d(TAG, "startupPlugins: put - " + pluginEntry.service);
                    this.pluginMap.put(pluginEntry.service, null);
                }
            }
        }
    }

    public void exec(final String service, final String action, final String callbackId, final String rawArgs) {
        CordovaPlugin plugin = getPlugin(service);
        if (plugin == null) {
            LOG.d(TAG, "exec() call to unknown plugin: " + service);
            this.app.sendPluginResult(new PluginResult(PluginResult.Status.CLASS_NOT_FOUND_EXCEPTION), callbackId);
            return;
        }
        CallbackContext callbackContext = new CallbackContext(callbackId, this.app);
        try {
            long currentTimeMillis = System.currentTimeMillis();
            boolean execute = plugin.execute(action, rawArgs, callbackContext);
            long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
            if (currentTimeMillis2 > SLOW_EXEC_WARNING_THRESHOLD) {
                LOG.w(TAG, "THREAD WARNING: exec() call to " + service + "." + action + " blocked the main thread for " + currentTimeMillis2 + "ms. Plugin should use CordovaInterface.getThreadPool().");
            }
            if (execute) {
                return;
            }
            callbackContext.sendPluginResult(new PluginResult(PluginResult.Status.INVALID_ACTION));
        } catch (JSONException unused) {
            callbackContext.sendPluginResult(new PluginResult(PluginResult.Status.JSON_EXCEPTION));
        } catch (Exception e) {
            LOG.e(TAG, "Uncaught exception from plugin", e);
            callbackContext.error(e.getMessage());
        }
    }

    public CordovaPlugin getPlugin(String service) {
        CordovaPlugin cordovaPlugin = this.pluginMap.get(service);
        if (cordovaPlugin == null) {
            PluginEntry pluginEntry = this.entryMap.get(service);
            if (pluginEntry == null) {
                return null;
            }
            if (pluginEntry.plugin != null) {
                cordovaPlugin = pluginEntry.plugin;
            } else {
                cordovaPlugin = instantiatePlugin(pluginEntry.pluginClass);
            }
            CordovaInterface cordovaInterface = this.ctx;
            CordovaWebView cordovaWebView = this.app;
            cordovaPlugin.privateInitialize(service, cordovaInterface, cordovaWebView, cordovaWebView.getPreferences());
            LOG.d(TAG, "getPlugin - put: " + service);
            this.pluginMap.put(service, cordovaPlugin);
        }
        return cordovaPlugin;
    }

    public void addService(String service, String className) {
        addService(new PluginEntry(service, className, false));
    }

    public void addService(PluginEntry entry) {
        this.entryMap.put(entry.service, entry);
        if (entry.plugin != null) {
            CordovaPlugin cordovaPlugin = entry.plugin;
            String str = entry.service;
            CordovaInterface cordovaInterface = this.ctx;
            CordovaWebView cordovaWebView = this.app;
            cordovaPlugin.privateInitialize(str, cordovaInterface, cordovaWebView, cordovaWebView.getPreferences());
            LOG.d(TAG, "addService: put - " + entry.service);
            this.pluginMap.put(entry.service, entry.plugin);
        }
    }

    public void onPause(boolean multitasking) {
        synchronized (this.pluginMap) {
            for (CordovaPlugin cordovaPlugin : this.pluginMap.values()) {
                if (cordovaPlugin != null) {
                    cordovaPlugin.onPause(multitasking);
                }
            }
        }
    }

    public boolean onReceivedHttpAuthRequest(CordovaWebView view, ICordovaHttpAuthHandler handler, String host, String realm) {
        synchronized (this.pluginMap) {
            for (CordovaPlugin cordovaPlugin : this.pluginMap.values()) {
                if (cordovaPlugin != null && cordovaPlugin.onReceivedHttpAuthRequest(this.app, handler, host, realm)) {
                    return true;
                }
            }
            return false;
        }
    }

    public boolean onReceivedClientCertRequest(CordovaWebView view, ICordovaClientCertRequest request) {
        synchronized (this.pluginMap) {
            for (CordovaPlugin cordovaPlugin : this.pluginMap.values()) {
                if (cordovaPlugin != null && cordovaPlugin.onReceivedClientCertRequest(this.app, request)) {
                    return true;
                }
            }
            return false;
        }
    }

    public void onResume(boolean multitasking) {
        synchronized (this.pluginMap) {
            for (CordovaPlugin cordovaPlugin : this.pluginMap.values()) {
                if (cordovaPlugin != null) {
                    cordovaPlugin.onResume(multitasking);
                }
            }
        }
    }

    public void onStart() {
        synchronized (this.pluginMap) {
            for (CordovaPlugin cordovaPlugin : this.pluginMap.values()) {
                if (cordovaPlugin != null) {
                    cordovaPlugin.onStart();
                }
            }
        }
    }

    public void onStop() {
        synchronized (this.pluginMap) {
            for (CordovaPlugin cordovaPlugin : this.pluginMap.values()) {
                if (cordovaPlugin != null) {
                    cordovaPlugin.onStop();
                }
            }
        }
    }

    public void onDestroy() {
        synchronized (this.pluginMap) {
            for (CordovaPlugin cordovaPlugin : this.pluginMap.values()) {
                if (cordovaPlugin != null) {
                    cordovaPlugin.onDestroy();
                }
            }
        }
    }

    public Object postMessage(final String id, final Object data) {
        Object onMessage;
        LOG.d(TAG, "postMessage: " + id);
        synchronized (this.pluginMap) {
            if (Build.VERSION.SDK_INT >= 24) {
                this.pluginMap.forEach(new BiConsumer() { // from class: org.apache.cordova.PluginManager$$ExternalSyntheticLambda1
                    @Override // java.util.function.BiConsumer
                    public final void accept(Object obj, Object obj2) {
                        PluginManager.lambda$postMessage$0(id, data, (String) obj, (CordovaPlugin) obj2);
                    }
                });
            } else {
                for (CordovaPlugin cordovaPlugin : this.pluginMap.values()) {
                    if (cordovaPlugin != null && (onMessage = cordovaPlugin.onMessage(id, data)) != null) {
                        return onMessage;
                    }
                }
            }
            return this.ctx.onMessage(id, data);
        }
    }

    static /* synthetic */ void lambda$postMessage$0(final String id, final Object data, String s, CordovaPlugin plugin) {
        if (plugin != null) {
            plugin.onMessage(id, data);
        }
    }

    public void onNewIntent(Intent intent) {
        synchronized (this.pluginMap) {
            for (CordovaPlugin cordovaPlugin : this.pluginMap.values()) {
                if (cordovaPlugin != null) {
                    cordovaPlugin.onNewIntent(intent);
                }
            }
        }
    }

    private String getLaunchUrlPrefix() {
        if (!this.app.getPreferences().getBoolean("AndroidInsecureFileModeEnabled", false)) {
            return this.app.getPreferences().getString("scheme", SCHEME_HTTPS).toLowerCase() + "://" + this.app.getPreferences().getString("hostname", DEFAULT_HOSTNAME) + '/';
        }
        return "file://";
    }

    public boolean shouldAllowRequest(String url) {
        Boolean shouldAllowRequest;
        synchronized (this.entryMap) {
            Iterator<PluginEntry> it = this.entryMap.values().iterator();
            while (it.hasNext()) {
                CordovaPlugin cordovaPlugin = this.pluginMap.get(it.next().service);
                if (cordovaPlugin != null && (shouldAllowRequest = cordovaPlugin.shouldAllowRequest(url)) != null) {
                    return shouldAllowRequest.booleanValue();
                }
            }
            if (url.startsWith("blob:") || url.startsWith("data:") || url.startsWith("about:blank") || url.startsWith("https://ssl.gstatic.com/accessibility/javascript/android/")) {
                return true;
            }
            if (url.startsWith("file://")) {
                return !url.contains("/app_webview/");
            }
            return false;
        }
    }

    public boolean shouldAllowNavigation(String url) {
        Boolean shouldAllowNavigation;
        synchronized (this.entryMap) {
            Iterator<PluginEntry> it = this.entryMap.values().iterator();
            while (it.hasNext()) {
                CordovaPlugin cordovaPlugin = this.pluginMap.get(it.next().service);
                if (cordovaPlugin != null && (shouldAllowNavigation = cordovaPlugin.shouldAllowNavigation(url)) != null) {
                    return shouldAllowNavigation.booleanValue();
                }
            }
            return url.startsWith(getLaunchUrlPrefix()) || url.startsWith("about:blank");
        }
    }

    public boolean shouldAllowBridgeAccess(String url) {
        Boolean shouldAllowBridgeAccess;
        synchronized (this.entryMap) {
            Iterator<PluginEntry> it = this.entryMap.values().iterator();
            while (it.hasNext()) {
                CordovaPlugin cordovaPlugin = this.pluginMap.get(it.next().service);
                if (cordovaPlugin != null && (shouldAllowBridgeAccess = cordovaPlugin.shouldAllowBridgeAccess(url)) != null) {
                    return shouldAllowBridgeAccess.booleanValue();
                }
            }
            return url.startsWith(getLaunchUrlPrefix());
        }
    }

    public Boolean shouldOpenExternalUrl(String url) {
        Boolean shouldOpenExternalUrl;
        synchronized (this.entryMap) {
            Iterator<PluginEntry> it = this.entryMap.values().iterator();
            while (it.hasNext()) {
                CordovaPlugin cordovaPlugin = this.pluginMap.get(it.next().service);
                if (cordovaPlugin != null && (shouldOpenExternalUrl = cordovaPlugin.shouldOpenExternalUrl(url)) != null) {
                    return shouldOpenExternalUrl;
                }
            }
            return false;
        }
    }

    public boolean onOverrideUrlLoading(String url) {
        synchronized (this.entryMap) {
            Iterator<PluginEntry> it = this.entryMap.values().iterator();
            while (it.hasNext()) {
                CordovaPlugin cordovaPlugin = this.pluginMap.get(it.next().service);
                if (cordovaPlugin != null && cordovaPlugin.onOverrideUrlLoading(url)) {
                    return true;
                }
            }
            return false;
        }
    }

    public void onReset() {
        synchronized (this.pluginMap) {
            for (CordovaPlugin cordovaPlugin : this.pluginMap.values()) {
                if (cordovaPlugin != null) {
                    cordovaPlugin.onReset();
                }
            }
        }
    }

    Uri remapUri(Uri uri) {
        Uri remapUri;
        synchronized (this.pluginMap) {
            for (CordovaPlugin cordovaPlugin : this.pluginMap.values()) {
                if (cordovaPlugin != null && (remapUri = cordovaPlugin.remapUri(uri)) != null) {
                    return remapUri;
                }
            }
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0017  */
    /* JADX WARN: Removed duplicated region for block: B:5:0x0015  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0021 A[Catch: Exception -> 0x0010, TRY_LEAVE, TryCatch #0 {Exception -> 0x0010, blocks: (B:20:0x0003, B:22:0x000b, B:6:0x0018, B:8:0x0021), top: B:19:0x0003 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private CordovaPlugin instantiatePlugin(String className) {
        Class<?> cls;
        if (className != null) {
            try {
                if (!"".equals(className)) {
                    cls = Class.forName(className);
                    if (!(cls == null) || !CordovaPlugin.class.isAssignableFrom(cls)) {
                        return (CordovaPlugin) cls.newInstance();
                    }
                    return null;
                }
            } catch (Exception e) {
                e.printStackTrace();
                System.out.println("Error adding plugin " + className + ".");
                return null;
            }
        }
        cls = null;
        if (!((cls == null) & CordovaPlugin.class.isAssignableFrom(cls))) {
        }
    }

    public void onConfigurationChanged(Configuration newConfig) {
        synchronized (this.pluginMap) {
            for (CordovaPlugin cordovaPlugin : this.pluginMap.values()) {
                if (cordovaPlugin != null) {
                    cordovaPlugin.onConfigurationChanged(newConfig);
                }
            }
        }
    }

    public Bundle onSaveInstanceState() {
        Bundle onSaveInstanceState;
        Bundle bundle = new Bundle();
        synchronized (this.pluginMap) {
            for (CordovaPlugin cordovaPlugin : this.pluginMap.values()) {
                if (cordovaPlugin != null && (onSaveInstanceState = cordovaPlugin.onSaveInstanceState()) != null) {
                    bundle.putBundle(cordovaPlugin.getServiceName(), onSaveInstanceState);
                }
            }
        }
        return bundle;
    }

    public ArrayList<CordovaPluginPathHandler> getPluginPathHandlers() {
        ArrayList<CordovaPluginPathHandler> arrayList = new ArrayList<>();
        for (CordovaPlugin cordovaPlugin : this.pluginMap.values()) {
            if (cordovaPlugin != null && cordovaPlugin.getPathHandler() != null) {
                arrayList.add(cordovaPlugin.getPathHandler());
            }
        }
        return arrayList;
    }
}
