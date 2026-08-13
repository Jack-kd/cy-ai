package yyb.ai.y1779639959407c7f49371b3978075;

import android.provider.Settings;
import android.util.Log;
import com.getcapacitor.JSObject;
import com.getcapacitor.PluginCall;
import com.getcapacitor.PluginMethod;
import com.getcapacitor.annotation.CapacitorPlugin;
import com.getcapacitor.plugin.CapacitorHttp;

@CapacitorPlugin(name = "CapacitorHttp")
/* loaded from: classes3.dex */
public class CustomHttpPlugin extends CapacitorHttp {
    private void injectCommonHeaders(PluginCall pluginCall) {
        JSObject object = pluginCall.getObject("headers", new JSObject());
        String string = object.getString("Cookie", "");
        StringBuilder sb = new StringBuilder();
        if (!string.isEmpty()) {
            sb.append(string);
            sb.append("; ");
        }
        sb.append("package_name=");
        sb.append(getPackageName());
        sb.append("; device=");
        sb.append(getDeviceId());
        object.put("Cookie", sb.toString());
        pluginCall.getData().put("headers", (Object) object);
        Log.d("CustomHttpPlugin", "请求头 headers: " + object.toString());
    }

    private String getDeviceId() {
        return Settings.Secure.getString(getContext().getContentResolver(), "android_id");
    }

    private String getPackageName() {
        return getContext().getPackageName();
    }

    @Override // com.getcapacitor.plugin.CapacitorHttp
    @PluginMethod
    public void request(PluginCall pluginCall) {
        injectCommonHeaders(pluginCall);
        super.request(pluginCall);
    }

    @Override // com.getcapacitor.plugin.CapacitorHttp
    @PluginMethod
    public void get(PluginCall pluginCall) {
        injectCommonHeaders(pluginCall);
        super.get(pluginCall);
    }

    @Override // com.getcapacitor.plugin.CapacitorHttp
    @PluginMethod
    public void post(PluginCall pluginCall) {
        injectCommonHeaders(pluginCall);
        super.post(pluginCall);
    }

    @Override // com.getcapacitor.plugin.CapacitorHttp
    @PluginMethod
    public void put(PluginCall pluginCall) {
        injectCommonHeaders(pluginCall);
        super.put(pluginCall);
    }

    @Override // com.getcapacitor.plugin.CapacitorHttp
    @PluginMethod
    public void patch(PluginCall pluginCall) {
        injectCommonHeaders(pluginCall);
        super.patch(pluginCall);
    }

    @Override // com.getcapacitor.plugin.CapacitorHttp
    @PluginMethod
    public void delete(PluginCall pluginCall) {
        injectCommonHeaders(pluginCall);
        super.delete(pluginCall);
    }
}
