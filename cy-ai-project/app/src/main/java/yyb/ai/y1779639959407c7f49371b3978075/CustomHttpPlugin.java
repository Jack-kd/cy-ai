package yyb.ai.y1779639959407c7f49371b3978075;

import android.provider.Settings;
import android.util.Log;

import com.getcapacitor.JSObject;
import com.getcapacitor.PluginCall;
import com.getcapacitor.PluginMethod;
import com.getcapacitor.annotation.CapacitorPlugin;
import com.getcapacitor.plugin.CapacitorHttp;

/**
 * CustomHttpPlugin (reconstructed from APK).
 *
 * Extends Capacitor's built-in CapacitorHttp and injects a Cookie header that
 * carries the package name and the device id (android_id) into every request.
 */
@CapacitorPlugin(name = "CapacitorHttp")
public class CustomHttpPlugin extends CapacitorHttp {

    private void injectCommonHeaders(PluginCall pluginCall) {
        JSObject object = pluginCall.getObject("headers", new JSObject());
        String cookie = object.getString("Cookie", "");
        StringBuilder sb = new StringBuilder();
        if (!cookie.isEmpty()) {
            sb.append(cookie);
            sb.append("; ");
        }
        sb.append("package_name=");
        sb.append(getPackageName());
        sb.append("; device=");
        sb.append(getDeviceId());
        object.put("Cookie", sb.toString());
        pluginCall.getData().put("headers", object);
        Log.d("CustomHttpPlugin", "请求头 headers: " + object);
    }

    private String getDeviceId() {
        return Settings.Secure.getString(getContext().getContentResolver(), "android_id");
    }

    private String getPackageName() {
        return getContext().getPackageName();
    }

    @Override
    @PluginMethod
    public void request(PluginCall pluginCall) {
        injectCommonHeaders(pluginCall);
        super.request(pluginCall);
    }

    @Override
    @PluginMethod
    public void get(PluginCall pluginCall) {
        injectCommonHeaders(pluginCall);
        super.get(pluginCall);
    }

    @Override
    @PluginMethod
    public void post(PluginCall pluginCall) {
        injectCommonHeaders(pluginCall);
        super.post(pluginCall);
    }

    @Override
    @PluginMethod
    public void put(PluginCall pluginCall) {
        injectCommonHeaders(pluginCall);
        super.put(pluginCall);
    }

    @Override
    @PluginMethod
    public void patch(PluginCall pluginCall) {
        injectCommonHeaders(pluginCall);
        super.patch(pluginCall);
    }

    @Override
    @PluginMethod
    public void delete(PluginCall pluginCall) {
        injectCommonHeaders(pluginCall);
        super.delete(pluginCall);
    }
}
