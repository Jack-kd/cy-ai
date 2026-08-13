.class public Lcom/getcapacitor/Bridge;
.super Ljava/lang/Object;
.source "Bridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/getcapacitor/Bridge$Builder;
    }
.end annotation


# static fields
.field private static final BUNDLE_LAST_PLUGIN_CALL_METHOD_NAME_KEY:Ljava/lang/String; = "capacitorLastActivityPluginMethod"

.field private static final BUNDLE_LAST_PLUGIN_ID_KEY:Ljava/lang/String; = "capacitorLastActivityPluginId"

.field private static final BUNDLE_PLUGIN_CALL_BUNDLE_KEY:Ljava/lang/String; = "capacitorLastPluginCallBundle"

.field private static final BUNDLE_PLUGIN_CALL_OPTIONS_SAVED_KEY:Ljava/lang/String; = "capacitorLastPluginCallOptions"

.field public static final CAPACITOR_CONTENT_START:Ljava/lang/String; = "/_capacitor_content_"

.field public static final CAPACITOR_FILE_START:Ljava/lang/String; = "/_capacitor_file_"

.field public static final CAPACITOR_HTTPS_INTERCEPTOR_START:Ljava/lang/String; = "/_capacitor_https_interceptor_"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CAPACITOR_HTTPS_SCHEME:Ljava/lang/String; = "https"

.field public static final CAPACITOR_HTTP_INTERCEPTOR_START:Ljava/lang/String; = "/_capacitor_http_interceptor_"

.field public static final CAPACITOR_HTTP_INTERCEPTOR_URL_PARAM:Ljava/lang/String; = "u"

.field public static final CAPACITOR_HTTP_SCHEME:Ljava/lang/String; = "http"

.field public static final DEFAULT_ANDROID_WEBVIEW_VERSION:I = 0x3c

.field public static final DEFAULT_HUAWEI_WEBVIEW_VERSION:I = 0xa

.field public static final DEFAULT_WEB_ASSET_DIR:Ljava/lang/String; = "public"

.field private static final LAST_BINARY_VERSION_CODE:Ljava/lang/String; = "lastBinaryVersionCode"

.field private static final LAST_BINARY_VERSION_NAME:Ljava/lang/String; = "lastBinaryVersionName"

.field private static final MINIMUM_ANDROID_WEBVIEW_ERROR:Ljava/lang/String; = "System WebView is not supported"

.field public static final MINIMUM_ANDROID_WEBVIEW_VERSION:I = 0x37

.field public static final MINIMUM_HUAWEI_WEBVIEW_VERSION:I = 0xa

.field private static final PERMISSION_PREFS_NAME:Ljava/lang/String; = "PluginPermStates"


# instance fields
.field private allowedOriginRules:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private app:Lcom/getcapacitor/App;

.field private appAllowNavigationMask:Lcom/getcapacitor/util/HostMask;

.field private appUrl:Ljava/lang/String;

.field private appUrlConfig:Ljava/lang/String;

.field private authorities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private canInjectJS:Ljava/lang/Boolean;

.field private config:Lcom/getcapacitor/CapConfig;

.field private final context:Landroidx/appcompat/app/AppCompatActivity;

.field public final cordovaInterface:Lcom/getcapacitor/cordova/MockCordovaInterfaceImpl;

.field private cordovaWebView:Lorg/apache/cordova/CordovaWebView;

.field private final fragment:Landroidx/fragment/app/Fragment;

.field private final handlerThread:Landroid/os/HandlerThread;

.field private final initialPlugins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/getcapacitor/Plugin;",
            ">;>;"
        }
    .end annotation
.end field

.field private intentUri:Landroid/net/Uri;

.field private localServer:Lcom/getcapacitor/WebViewLocalServer;

.field private localUrl:Ljava/lang/String;

.field private miscJSFileInjections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final msgHandler:Lcom/getcapacitor/MessageHandler;

.field private pluginCallForLastActivity:Lcom/getcapacitor/PluginCall;

.field private final pluginInstances:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/getcapacitor/Plugin;",
            ">;"
        }
    .end annotation
.end field

.field private plugins:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/getcapacitor/PluginHandle;",
            ">;"
        }
    .end annotation
.end field

.field private preferences:Lorg/apache/cordova/CordovaPreferences;

.field private routeProcessor:Lcom/getcapacitor/RouteProcessor;

.field private savedCalls:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/getcapacitor/PluginCall;",
            ">;"
        }
    .end annotation
.end field

.field private savedPermissionCallIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private serverPath:Lcom/getcapacitor/ServerPath;

.field private taskHandler:Landroid/os/Handler;

.field private final webView:Landroid/webkit/WebView;

.field private webViewClient:Lcom/getcapacitor/BridgeWebViewClient;

.field private webViewListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/getcapacitor/WebViewListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$FNYM7cvgeBk0k8YXQH7M96Mrf-c(Lcom/getcapacitor/Bridge;Lcom/getcapacitor/PluginHandle;Ljava/lang/String;Lcom/getcapacitor/PluginCall;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/getcapacitor/Bridge;->lambda$callPluginMethod$0(Lcom/getcapacitor/PluginHandle;Ljava/lang/String;Lcom/getcapacitor/PluginCall;)V

    return-void
.end method

.method public static synthetic $r8$lambda$P1FKFq8tICTLOO-zenvtsccrBL0(Lcom/getcapacitor/Bridge;)V
    .locals 0

    invoke-direct {p0}, Lcom/getcapacitor/Bridge;->lambda$setServerBasePath$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$QUlHKAKwPPB6h_MMqUErymPLE_w(Lcom/getcapacitor/Bridge;)V
    .locals 0

    invoke-direct {p0}, Lcom/getcapacitor/Bridge;->lambda$setServerAssetPath$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$c2-kVWtq9znSXhzGkR-eRCLRvA8(Lcom/getcapacitor/Bridge;)V
    .locals 0

    invoke-direct {p0}, Lcom/getcapacitor/Bridge;->lambda$reload$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$c8L_lcj5D7mie6Lox_r5YdIsoIQ(Lcom/getcapacitor/Bridge;Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/getcapacitor/Bridge;->lambda$eval$1(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/app/AppCompatActivity;Landroid/webkit/WebView;Ljava/util/List;Lcom/getcapacitor/cordova/MockCordovaInterfaceImpl;Lorg/apache/cordova/PluginManager;Lorg/apache/cordova/CordovaPreferences;Lcom/getcapacitor/CapConfig;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/appcompat/app/AppCompatActivity;",
            "Landroid/webkit/WebView;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/getcapacitor/Plugin;",
            ">;>;",
            "Lcom/getcapacitor/cordova/MockCordovaInterfaceImpl;",
            "Lorg/apache/cordova/PluginManager;",
            "Lorg/apache/cordova/CordovaPreferences;",
            "Lcom/getcapacitor/CapConfig;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 190
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v0 .. v10}, Lcom/getcapacitor/Bridge;-><init>(Landroidx/appcompat/app/AppCompatActivity;Lcom/getcapacitor/ServerPath;Landroidx/fragment/app/Fragment;Landroid/webkit/WebView;Ljava/util/List;Ljava/util/List;Lcom/getcapacitor/cordova/MockCordovaInterfaceImpl;Lorg/apache/cordova/PluginManager;Lorg/apache/cordova/CordovaPreferences;Lcom/getcapacitor/CapConfig;)V

    return-void
.end method

.method private constructor <init>(Landroidx/appcompat/app/AppCompatActivity;Lcom/getcapacitor/ServerPath;Landroidx/fragment/app/Fragment;Landroid/webkit/WebView;Ljava/util/List;Ljava/util/List;Lcom/getcapacitor/cordova/MockCordovaInterfaceImpl;Lorg/apache/cordova/PluginManager;Lorg/apache/cordova/CordovaPreferences;Lcom/getcapacitor/CapConfig;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/appcompat/app/AppCompatActivity;",
            "Lcom/getcapacitor/ServerPath;",
            "Landroidx/fragment/app/Fragment;",
            "Landroid/webkit/WebView;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/getcapacitor/Plugin;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/getcapacitor/Plugin;",
            ">;",
            "Lcom/getcapacitor/cordova/MockCordovaInterfaceImpl;",
            "Lorg/apache/cordova/PluginManager;",
            "Lorg/apache/cordova/CordovaPreferences;",
            "Lcom/getcapacitor/CapConfig;",
            ")V"
        }
    .end annotation

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/getcapacitor/Bridge;->allowedOriginRules:Ljava/util/Set;

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/getcapacitor/Bridge;->authorities:Ljava/util/ArrayList;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/getcapacitor/Bridge;->miscJSFileInjections:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 126
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/getcapacitor/Bridge;->canInjectJS:Ljava/lang/Boolean;

    .line 139
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CapacitorPlugins"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/getcapacitor/Bridge;->handlerThread:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    .line 142
    iput-object v1, p0, Lcom/getcapacitor/Bridge;->taskHandler:Landroid/os/Handler;

    .line 149
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/getcapacitor/Bridge;->plugins:Ljava/util/Map;

    .line 152
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/getcapacitor/Bridge;->savedCalls:Ljava/util/Map;

    .line 155
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/getcapacitor/Bridge;->savedPermissionCallIds:Ljava/util/Map;

    .line 165
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/getcapacitor/Bridge;->webViewListeners:Ljava/util/List;

    .line 205
    new-instance v1, Lcom/getcapacitor/App;

    invoke-direct {v1}, Lcom/getcapacitor/App;-><init>()V

    iput-object v1, p0, Lcom/getcapacitor/Bridge;->app:Lcom/getcapacitor/App;

    .line 206
    iput-object p2, p0, Lcom/getcapacitor/Bridge;->serverPath:Lcom/getcapacitor/ServerPath;

    .line 207
    iput-object p1, p0, Lcom/getcapacitor/Bridge;->context:Landroidx/appcompat/app/AppCompatActivity;

    .line 208
    iput-object p3, p0, Lcom/getcapacitor/Bridge;->fragment:Landroidx/fragment/app/Fragment;

    .line 209
    iput-object p4, p0, Lcom/getcapacitor/Bridge;->webView:Landroid/webkit/WebView;

    .line 210
    new-instance p2, Lcom/getcapacitor/BridgeWebViewClient;

    invoke-direct {p2, p0}, Lcom/getcapacitor/BridgeWebViewClient;-><init>(Lcom/getcapacitor/Bridge;)V

    iput-object p2, p0, Lcom/getcapacitor/Bridge;->webViewClient:Lcom/getcapacitor/BridgeWebViewClient;

    .line 211
    iput-object p5, p0, Lcom/getcapacitor/Bridge;->initialPlugins:Ljava/util/List;

    .line 212
    iput-object p6, p0, Lcom/getcapacitor/Bridge;->pluginInstances:Ljava/util/List;

    .line 213
    iput-object p7, p0, Lcom/getcapacitor/Bridge;->cordovaInterface:Lcom/getcapacitor/cordova/MockCordovaInterfaceImpl;

    .line 214
    iput-object p9, p0, Lcom/getcapacitor/Bridge;->preferences:Lorg/apache/cordova/CordovaPreferences;

    .line 217
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 218
    new-instance p2, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/getcapacitor/Bridge;->taskHandler:Landroid/os/Handler;

    if-eqz p10, :cond_0

    goto :goto_0

    .line 220
    :cond_0
    invoke-virtual {p0}, Lcom/getcapacitor/Bridge;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p2

    invoke-static {p2}, Lcom/getcapacitor/CapConfig;->loadDefault(Landroid/content/Context;)Lcom/getcapacitor/CapConfig;

    move-result-object p10

    :goto_0
    iput-object p10, p0, Lcom/getcapacitor/Bridge;->config:Lcom/getcapacitor/CapConfig;

    .line 221
    invoke-static {p10}, Lcom/getcapacitor/Logger;->init(Lcom/getcapacitor/CapConfig;)V

    .line 224
    invoke-direct {p0}, Lcom/getcapacitor/Bridge;->initWebView()V

    .line 225
    invoke-direct {p0}, Lcom/getcapacitor/Bridge;->setAllowedOriginRules()V

    .line 226
    new-instance p2, Lcom/getcapacitor/MessageHandler;

    invoke-direct {p2, p0, p4, p8}, Lcom/getcapacitor/MessageHandler;-><init>(Lcom/getcapacitor/Bridge;Landroid/webkit/WebView;Lorg/apache/cordova/PluginManager;)V

    iput-object p2, p0, Lcom/getcapacitor/Bridge;->msgHandler:Lcom/getcapacitor/MessageHandler;

    .line 229
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 230
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/getcapacitor/Bridge;->intentUri:Landroid/net/Uri;

    .line 232
    invoke-direct {p0}, Lcom/getcapacitor/Bridge;->registerAllPlugins()V

    .line 234
    invoke-direct {p0}, Lcom/getcapacitor/Bridge;->loadWebView()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/appcompat/app/AppCompatActivity;Lcom/getcapacitor/ServerPath;Landroidx/fragment/app/Fragment;Landroid/webkit/WebView;Ljava/util/List;Ljava/util/List;Lcom/getcapacitor/cordova/MockCordovaInterfaceImpl;Lorg/apache/cordova/PluginManager;Lorg/apache/cordova/CordovaPreferences;Lcom/getcapacitor/CapConfig;Lcom/getcapacitor/Bridge-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Lcom/getcapacitor/Bridge;-><init>(Landroidx/appcompat/app/AppCompatActivity;Lcom/getcapacitor/ServerPath;Landroidx/fragment/app/Fragment;Landroid/webkit/WebView;Ljava/util/List;Ljava/util/List;Lcom/getcapacitor/cordova/MockCordovaInterfaceImpl;Lorg/apache/cordova/PluginManager;Lorg/apache/cordova/CordovaPreferences;Lcom/getcapacitor/CapConfig;)V

    return-void
.end method

.method private extractWebViewMajorVersion(Landroid/content/pm/PackageManager;Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 384
    :try_start_0
    invoke-static {p1, p2}, Lcom/getcapacitor/util/InternalUtils;->getPackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 385
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v1, "\\."

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v0

    .line 386
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const/4 v1, 0x2

    .line 389
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    const/4 p2, 0x1

    aput-object p1, v1, p2

    const-string p1, "Unable to get package info for \'%s\' with err \'%s\'"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/getcapacitor/Logger;->warn(Ljava/lang/String;)V

    return v0
.end method

.method private getJSInjector()Lcom/getcapacitor/JSInjector;
    .locals 13

    const-string v0, "window.WEBVIEW_SERVER_URL = \'"

    .line 1030
    :try_start_0
    iget-object v1, p0, Lcom/getcapacitor/Bridge;->context:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v2, p0, Lcom/getcapacitor/Bridge;->config:Lcom/getcapacitor/CapConfig;

    invoke-virtual {v2}, Lcom/getcapacitor/CapConfig;->isLoggingEnabled()Z

    move-result v2

    invoke-virtual {p0}, Lcom/getcapacitor/Bridge;->isDevMode()Z

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/getcapacitor/JSExport;->getGlobalJS(Landroid/content/Context;ZZ)Ljava/lang/String;

    move-result-object v5

    .line 1031
    iget-object v1, p0, Lcom/getcapacitor/Bridge;->context:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v1}, Lcom/getcapacitor/JSExport;->getBridgeJS(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 1032
    iget-object v1, p0, Lcom/getcapacitor/Bridge;->plugins:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lcom/getcapacitor/JSExport;->getPluginJS(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v7

    .line 1033
    iget-object v1, p0, Lcom/getcapacitor/Bridge;->context:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v1}, Lcom/getcapacitor/JSExport;->getCordovaJS(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 1034
    iget-object v1, p0, Lcom/getcapacitor/Bridge;->context:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v1}, Lcom/getcapacitor/JSExport;->getCordovaPluginJS(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 1035
    iget-object v1, p0, Lcom/getcapacitor/Bridge;->context:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v1}, Lcom/getcapacitor/JSExport;->getCordovaPluginsFileJS(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 1036
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/getcapacitor/Bridge;->localUrl:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\';"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1037
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->miscJSFileInjections:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/getcapacitor/Bridge;->context:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v0, v1}, Lcom/getcapacitor/JSExport;->getMiscFileJS(Ljava/util/ArrayList;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    .line 1039
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/getcapacitor/Bridge;->miscJSFileInjections:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 1040
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/getcapacitor/Bridge;->canInjectJS:Ljava/lang/Boolean;

    .line 1042
    new-instance v0, Lcom/getcapacitor/JSInjector;

    move-object v4, v0

    invoke-direct/range {v4 .. v12}, Lcom/getcapacitor/JSInjector;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1044
    const-string v1, "Unable to export Capacitor JS. App will not function!"

    invoke-static {v1, v0}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private getLegacyPluginName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/getcapacitor/Plugin;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 698
    const-class v0, Lcom/getcapacitor/NativePlugin;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/getcapacitor/NativePlugin;

    if-nez p1, :cond_0

    .line 700
    const-string p1, "Plugin doesn\'t have the @CapacitorPlugin annotation. Please add it"

    invoke-static {p1}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 704
    :cond_0
    invoke-interface {p1}, Lcom/getcapacitor/NativePlugin;->name()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private initWebView()V
    .locals 5

    .line 587
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    .line 588
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 589
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 590
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    const/4 v2, 0x0

    .line 591
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 592
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 593
    iget-object v1, p0, Lcom/getcapacitor/Bridge;->config:Lcom/getcapacitor/CapConfig;

    invoke-virtual {v1}, Lcom/getcapacitor/CapConfig;->isMixedContentAllowed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 594
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 597
    :cond_0
    iget-object v1, p0, Lcom/getcapacitor/Bridge;->config:Lcom/getcapacitor/CapConfig;

    invoke-virtual {v1}, Lcom/getcapacitor/CapConfig;->getAppendedUserAgentString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 599
    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v3

    .line 600
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 602
    :cond_1
    iget-object v1, p0, Lcom/getcapacitor/Bridge;->config:Lcom/getcapacitor/CapConfig;

    invoke-virtual {v1}, Lcom/getcapacitor/CapConfig;->getOverriddenUserAgentString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 604
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 607
    :cond_2
    iget-object v1, p0, Lcom/getcapacitor/Bridge;->config:Lcom/getcapacitor/CapConfig;

    invoke-virtual {v1}, Lcom/getcapacitor/CapConfig;->getBackgroundColor()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 610
    :try_start_0
    iget-object v3, p0, Lcom/getcapacitor/Bridge;->webView:Landroid/webkit/WebView;

    invoke-static {v1}, Lcom/getcapacitor/util/WebColor;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 613
    :catch_0
    const-string v1, "WebView background color not applied"

    invoke-static {v1}, Lcom/getcapacitor/Logger;->debug(Ljava/lang/String;)V

    .line 616
    :cond_3
    :goto_0
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 617
    iget-object v1, p0, Lcom/getcapacitor/Bridge;->config:Lcom/getcapacitor/CapConfig;

    invoke-virtual {v1}, Lcom/getcapacitor/CapConfig;->isZoomableWebView()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 619
    iget-object v1, p0, Lcom/getcapacitor/Bridge;->config:Lcom/getcapacitor/CapConfig;

    invoke-virtual {v1}, Lcom/getcapacitor/CapConfig;->isInitialFocus()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 620
    iget-object v1, p0, Lcom/getcapacitor/Bridge;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->requestFocusFromTouch()Z

    .line 623
    :cond_4
    iget-object v1, p0, Lcom/getcapacitor/Bridge;->config:Lcom/getcapacitor/CapConfig;

    invoke-virtual {v1}, Lcom/getcapacitor/CapConfig;->isWebContentsDebuggingEnabled()Z

    move-result v1

    invoke-static {v1}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 625
    invoke-virtual {p0}, Lcom/getcapacitor/Bridge;->getServerUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/getcapacitor/Bridge;->appUrlConfig:Ljava/lang/String;

    .line 626
    invoke-virtual {p0}, Lcom/getcapacitor/Bridge;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 627
    iget-object v2, p0, Lcom/getcapacitor/Bridge;->authorities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 628
    invoke-virtual {p0}, Lcom/getcapacitor/Bridge;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 630
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/getcapacitor/Bridge;->localUrl:Ljava/lang/String;

    .line 632
    iget-object v3, p0, Lcom/getcapacitor/Bridge;->appUrlConfig:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 634
    :try_start_1
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/getcapacitor/Bridge;->appUrlConfig:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 635
    iget-object v2, p0, Lcom/getcapacitor/Bridge;->authorities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 640
    iget-object v1, p0, Lcom/getcapacitor/Bridge;->appUrlConfig:Ljava/lang/String;

    iput-object v1, p0, Lcom/getcapacitor/Bridge;->localUrl:Ljava/lang/String;

    .line 641
    iput-object v1, p0, Lcom/getcapacitor/Bridge;->appUrl:Ljava/lang/String;

    goto :goto_1

    :catch_1
    move-exception v0

    .line 637
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Provided server url is invalid: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;)V

    return-void

    .line 643
    :cond_5
    iput-object v1, p0, Lcom/getcapacitor/Bridge;->appUrl:Ljava/lang/String;

    .line 645
    const-string v1, "http"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "https"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 646
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/getcapacitor/Bridge;->appUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/getcapacitor/Bridge;->appUrl:Ljava/lang/String;

    .line 650
    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/getcapacitor/Bridge;->config:Lcom/getcapacitor/CapConfig;

    invoke-virtual {v1}, Lcom/getcapacitor/CapConfig;->getStartPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 651
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 652
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/getcapacitor/Bridge;->appUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/getcapacitor/Bridge;->appUrl:Ljava/lang/String;

    .line 654
    :cond_7
    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    .line 655
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " yybPackageName/"

    .line 656
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/getcapacitor/Bridge;->context:Landroidx/appcompat/app/AppCompatActivity;

    .line 657
    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " yybDevice/"

    .line 658
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    invoke-virtual {p0}, Lcom/getcapacitor/Bridge;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "android_id"

    invoke-static {v1, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    return-void
.end method

.method private isNewBinary()Z
    .locals 10

    .line 429
    const-string v0, ""

    .line 431
    invoke-virtual {p0}, Lcom/getcapacitor/Bridge;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "CapWebViewSettings"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 435
    const-string v2, "lastBinaryVersionCode"

    const/4 v4, 0x0

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 436
    const-string v6, "lastBinaryVersionName"

    invoke-interface {v1, v6, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 439
    :try_start_0
    invoke-virtual {p0}, Lcom/getcapacitor/Bridge;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 440
    invoke-virtual {p0}, Lcom/getcapacitor/Bridge;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/getcapacitor/util/InternalUtils;->getPackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 441
    invoke-static {v7}, Landroidx/core/content/pm/PackageInfoCompat;->getLongVersionCode(Landroid/content/pm/PackageInfo;)J

    move-result-wide v8

    long-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 442
    :try_start_1
    iget-object v7, v7, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v7

    goto :goto_0

    :catch_1
    move-exception v7

    move-object v8, v0

    .line 444
    :goto_0
    const-string v9, "Unable to get package info"

    invoke-static {v9, v7}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v7, v0

    .line 447
    :goto_1
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_2

    :cond_0
    return v3

    .line 448
    :cond_1
    :goto_2
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 449
    invoke-interface {v1, v2, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 450
    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 451
    const-string v2, "serverBasePath"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 452
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v0, 0x1

    return v0
.end method

.method private synthetic lambda$callPluginMethod$0(Lcom/getcapacitor/PluginHandle;Ljava/lang/String;Lcom/getcapacitor/PluginCall;)V
    .locals 0

    .line 852
    :try_start_0
    invoke-virtual {p1, p2, p3}, Lcom/getcapacitor/PluginHandle;->invoke(Ljava/lang/String;Lcom/getcapacitor/PluginCall;)V

    .line 854
    invoke-virtual {p3}, Lcom/getcapacitor/PluginCall;->isKeptAlive()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 855
    invoke-virtual {p0, p3}, Lcom/getcapacitor/Bridge;->saveCall(Lcom/getcapacitor/PluginCall;)V
    :try_end_0
    .catch Lcom/getcapacitor/PluginLoadException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/getcapacitor/InvalidPluginMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 860
    const-string p2, "Serious error executing plugin"

    invoke-static {p2, p1}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 861
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    .line 858
    :goto_0
    const-string p2, "Unable to execute plugin method"

    invoke-static {p2, p1}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    return-void
.end method

.method private synthetic lambda$eval$1(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 1

    .line 881
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method private synthetic lambda$reload$6()V
    .locals 2

    .line 1444
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/getcapacitor/Bridge;->appUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$setServerAssetPath$5()V
    .locals 2

    .line 1437
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/getcapacitor/Bridge;->appUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$setServerBasePath$4()V
    .locals 2

    .line 1427
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/getcapacitor/Bridge;->appUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$triggerJSEvent$2(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$triggerJSEvent$3(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private loadWebView()V
    .locals 8

    .line 263
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->config:Lcom/getcapacitor/CapConfig;

    invoke-virtual {v0}, Lcom/getcapacitor/CapConfig;->isHTML5Mode()Z

    move-result v6

    .line 266
    invoke-direct {p0}, Lcom/getcapacitor/Bridge;->getJSInjector()Lcom/getcapacitor/JSInjector;

    move-result-object v0

    .line 267
    const-string v1, "DOCUMENT_START_SCRIPT"

    invoke-static {v1}, Landroidx/webkit/WebViewFeature;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v1

    const/4 v7, 0x0

    if-eqz v1, :cond_0

    .line 268
    iget-object v1, p0, Lcom/getcapacitor/Bridge;->appUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 270
    :try_start_0
    iget-object v2, p0, Lcom/getcapacitor/Bridge;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Lcom/getcapacitor/JSInjector;->getScriptString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v2, v3, v1}, Landroidx/webkit/WebViewCompat;->addDocumentStartJavaScript(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/Set;)Landroidx/webkit/ScriptHandler;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v7

    goto :goto_0

    .line 273
    :catch_0
    const-string v1, "Invalid url, using fallback"

    invoke-static {v1}, Lcom/getcapacitor/Logger;->warn(Ljava/lang/String;)V

    :cond_0
    move-object v4, v0

    .line 276
    :goto_0
    new-instance v0, Lcom/getcapacitor/WebViewLocalServer;

    iget-object v2, p0, Lcom/getcapacitor/Bridge;->context:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v5, p0, Lcom/getcapacitor/Bridge;->authorities:Ljava/util/ArrayList;

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/getcapacitor/WebViewLocalServer;-><init>(Landroid/content/Context;Lcom/getcapacitor/Bridge;Lcom/getcapacitor/JSInjector;Ljava/util/ArrayList;Z)V

    iput-object v0, p0, Lcom/getcapacitor/Bridge;->localServer:Lcom/getcapacitor/WebViewLocalServer;

    .line 277
    const-string v1, "public"

    invoke-virtual {v0, v1}, Lcom/getcapacitor/WebViewLocalServer;->hostAssets(Ljava/lang/String;)V

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Loading app at "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/getcapacitor/Bridge;->appUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/getcapacitor/Logger;->debug(Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/getcapacitor/BridgeWebChromeClient;

    invoke-direct {v1, p0}, Lcom/getcapacitor/BridgeWebChromeClient;-><init>(Lcom/getcapacitor/Bridge;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 282
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/getcapacitor/Bridge;->webViewClient:Lcom/getcapacitor/BridgeWebViewClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 284
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/getcapacitor/Bridge;->config:Lcom/getcapacitor/CapConfig;

    invoke-virtual {v0}, Lcom/getcapacitor/CapConfig;->isResolveServiceWorkerRequests()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 285
    invoke-static {}, Lcom/getcapacitor/Bridge$$ExternalSyntheticApiModelOutline0;->m()Landroid/webkit/ServiceWorkerController;

    move-result-object v0

    .line 286
    new-instance v1, Lcom/getcapacitor/Bridge$1;

    invoke-direct {v1, p0}, Lcom/getcapacitor/Bridge$1;-><init>(Lcom/getcapacitor/Bridge;)V

    invoke-static {v0, v1}, Lcom/getcapacitor/Bridge$$ExternalSyntheticApiModelOutline0;->m(Landroid/webkit/ServiceWorkerController;Landroid/webkit/ServiceWorkerClient;)V

    .line 296
    :cond_1
    invoke-virtual {p0}, Lcom/getcapacitor/Bridge;->isDeployDisabled()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/getcapacitor/Bridge;->isNewBinary()Z

    move-result v0

    if-nez v0, :cond_2

    .line 297
    invoke-virtual {p0}, Lcom/getcapacitor/Bridge;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "CapWebViewSettings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 301
    const-string v1, "serverBasePath"

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 302
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 303
    invoke-virtual {p0, v0}, Lcom/getcapacitor/Bridge;->setServerBasePath(Ljava/lang/String;)V

    .line 306
    :cond_2
    invoke-virtual {p0}, Lcom/getcapacitor/Bridge;->isMinimumWebViewInstalled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 307
    invoke-virtual {p0}, Lcom/getcapacitor/Bridge;->getErrorUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 309
    iget-object v1, p0, Lcom/getcapacitor/Bridge;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void

    .line 312
    :cond_3
    const-string v0, "System WebView is not supported"

    invoke-static {v0}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;)V

    .line 317
    :cond_4
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->serverPath:Lcom/getcapacitor/ServerPath;

    if-eqz v0, :cond_6

    .line 318
    invoke-virtual {v0}, Lcom/getcapacitor/ServerPath;->getType()Lcom/getcapacitor/ServerPath$PathType;

    move-result-object v0

    sget-object v1, Lcom/getcapacitor/ServerPath$PathType;->ASSET_PATH:Lcom/getcapacitor/ServerPath$PathType;

    if-ne v0, v1, :cond_5

    .line 319
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->serverPath:Lcom/getcapacitor/ServerPath;

    invoke-virtual {v0}, Lcom/getcapacitor/ServerPath;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/getcapacitor/Bridge;->setServerAssetPath(Ljava/lang/String;)V

    goto :goto_1

    .line 321
    :cond_5
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->serverPath:Lcom/getcapacitor/ServerPath;

    invoke-virtual {v0}, Lcom/getcapacitor/ServerPath;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/getcapacitor/Bridge;->setServerBasePath(Ljava/lang/String;)V

    goto :goto_1

    .line 325
    :cond_6
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/getcapacitor/Bridge;->appUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private logInvalidPluginException(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/getcapacitor/Plugin;",
            ">;)V"
        }
    .end annotation

    .line 761
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NativePlugin "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 763
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is invalid. Ensure the @CapacitorPlugin annotation exists on the plugin class and the class extends Plugin"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 761
    invoke-static {p1}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;)V

    return-void
.end method

.method private logPluginLoadException(Ljava/lang/Class;Ljava/lang/Exception;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/getcapacitor/Plugin;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .line 770
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NativePlugin "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " failed to load"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private pluginId(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/getcapacitor/Plugin;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 737
    invoke-direct {p0, p1}, Lcom/getcapacitor/Bridge;->pluginName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 738
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 741
    :cond_0
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 744
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Registering plugin instance: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/getcapacitor/Logger;->debug(Ljava/lang/String;)V

    return-object v0
.end method

.method private pluginName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/getcapacitor/Plugin;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 750
    const-class v0, Lcom/getcapacitor/annotation/CapacitorPlugin;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/getcapacitor/annotation/CapacitorPlugin;

    if-nez v0, :cond_0

    .line 752
    invoke-direct {p0, p1}, Lcom/getcapacitor/Bridge;->getLegacyPluginName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 754
    :cond_0
    invoke-interface {v0}, Lcom/getcapacitor/annotation/CapacitorPlugin;->name()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private registerAllPlugins()V
    .locals 2

    .line 667
    const-class v0, Lcom/getcapacitor/plugin/CapacitorCookies;

    invoke-virtual {p0, v0}, Lcom/getcapacitor/Bridge;->registerPlugin(Ljava/lang/Class;)V

    .line 668
    const-class v0, Lcom/getcapacitor/plugin/WebView;

    invoke-virtual {p0, v0}, Lcom/getcapacitor/Bridge;->registerPlugin(Ljava/lang/Class;)V

    .line 669
    const-class v0, Lcom/getcapacitor/plugin/CapacitorHttp;

    invoke-virtual {p0, v0}, Lcom/getcapacitor/Bridge;->registerPlugin(Ljava/lang/Class;)V

    .line 671
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->initialPlugins:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 672
    invoke-virtual {p0, v1}, Lcom/getcapacitor/Bridge;->registerPlugin(Ljava/lang/Class;)V

    goto :goto_0

    .line 675
    :cond_0
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->pluginInstances:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/getcapacitor/Plugin;

    .line 676
    invoke-virtual {p0, v1}, Lcom/getcapacitor/Bridge;->registerPluginInstance(Lcom/getcapacitor/Plugin;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private setAllowedOriginRules()V
    .locals 7

    .line 238
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->config:Lcom/getcapacitor/CapConfig;

    invoke-virtual {v0}, Lcom/getcapacitor/CapConfig;->getAllowNavigation()[Ljava/lang/String;

    move-result-object v0

    .line 239
    invoke-virtual {p0}, Lcom/getcapacitor/Bridge;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 240
    invoke-virtual {p0}, Lcom/getcapacitor/Bridge;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 241
    iget-object v3, p0, Lcom/getcapacitor/Bridge;->allowedOriginRules:Ljava/util/Set;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "://"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 242
    invoke-virtual {p0}, Lcom/getcapacitor/Bridge;->getServerUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 243
    iget-object v1, p0, Lcom/getcapacitor/Bridge;->allowedOriginRules:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/getcapacitor/Bridge;->getServerUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz v0, :cond_3

    .line 246
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 247
    const-string v4, "http"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 248
    iget-object v4, p0, Lcom/getcapacitor/Bridge;->allowedOriginRules:Ljava/util/Set;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "https://"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 250
    :cond_1
    iget-object v4, p0, Lcom/getcapacitor/Bridge;->allowedOriginRules:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 253
    :cond_2
    iget-object v1, p0, Lcom/getcapacitor/Bridge;->authorities:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 255
    :cond_3
    invoke-static {v0}, Lcom/getcapacitor/util/HostMask$Parser;->parse([Ljava/lang/String;)Lcom/getcapacitor/util/HostMask;

    move-result-object v0

    iput-object v0, p0, Lcom/getcapacitor/Bridge;->appAllowNavigationMask:Lcom/getcapacitor/util/HostMask;

    return-void
.end method


# virtual methods
.method public addWebViewListener(Lcom/getcapacitor/WebViewListener;)V
    .locals 1

    .line 1497
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->webViewListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public callPluginMethod(Ljava/lang/String;Ljava/lang/String;Lcom/getcapacitor/PluginCall;)V
    .locals 3

    const-string v0, "unable to find plugin : "

    const-string v1, "callback: "

    .line 829
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/getcapacitor/Bridge;->getPlugin(Ljava/lang/String;)Lcom/getcapacitor/PluginHandle;

    move-result-object v2

    if-nez v2, :cond_0

    .line 832
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;)V

    .line 833
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/getcapacitor/PluginCall;->errorCallback(Ljava/lang/String;)V

    return-void

    .line 837
    :cond_0
    invoke-static {}, Lcom/getcapacitor/Logger;->shouldLog()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 838
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 840
    invoke-virtual {p3}, Lcom/getcapacitor/PluginCall;->getCallbackId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", pluginId: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 842
    invoke-virtual {v2}, Lcom/getcapacitor/PluginHandle;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", methodName: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", methodData: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 846
    invoke-virtual {p3}, Lcom/getcapacitor/PluginCall;->getData()Lcom/getcapacitor/JSObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/getcapacitor/JSObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 838
    invoke-static {p1}, Lcom/getcapacitor/Logger;->verbose(Ljava/lang/String;)V

    .line 850
    :cond_1
    new-instance p1, Lcom/getcapacitor/Bridge$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0, v2, p2, p3}, Lcom/getcapacitor/Bridge$$ExternalSyntheticLambda3;-><init>(Lcom/getcapacitor/Bridge;Lcom/getcapacitor/PluginHandle;Ljava/lang/String;Lcom/getcapacitor/PluginCall;)V

    .line 865
    iget-object p2, p0, Lcom/getcapacitor/Bridge;->taskHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 867
    const-string p2, "callPluginMethod"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/getcapacitor/Logger;->tags([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "error : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 868
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/getcapacitor/PluginCall;->errorCallback(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public eval(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 880
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/getcapacitor/Bridge;->context:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 881
    new-instance v1, Lcom/getcapacitor/Bridge$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2}, Lcom/getcapacitor/Bridge$$ExternalSyntheticLambda4;-><init>(Lcom/getcapacitor/Bridge;Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 917
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->taskHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public executeOnMainThread(Ljava/lang/Runnable;)V
    .locals 2

    .line 921
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/getcapacitor/Bridge;->context:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 923
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getActivity()Landroidx/appcompat/app/AppCompatActivity;
    .locals 1

    .line 499
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->context:Landroidx/appcompat/app/AppCompatActivity;

    return-object v0
.end method

.method public getAllowedOriginRules()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1460
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->allowedOriginRules:Ljava/util/Set;

    return-object v0
.end method

.method public getApp()Lcom/getcapacitor/App;
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->app:Lcom/getcapacitor/App;

    return-object v0
.end method

.method public getAppAllowNavigationMask()Lcom/getcapacitor/util/HostMask;
    .locals 1

    .line 1456
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->appAllowNavigationMask:Lcom/getcapacitor/util/HostMask;

    return-object v0
.end method

.method public getAppUrl()Ljava/lang/String;
    .locals 1

    .line 568
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->appUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getConfig()Lcom/getcapacitor/CapConfig;
    .locals 1

    .line 572
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->config:Lcom/getcapacitor/CapConfig;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 491
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->context:Landroidx/appcompat/app/AppCompatActivity;

    return-object v0
.end method

.method public getErrorUrl()Ljava/lang/String;
    .locals 4

    .line 553
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->config:Lcom/getcapacitor/CapConfig;

    invoke-virtual {v0}, Lcom/getcapacitor/CapConfig;->getErrorPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 555
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 556
    invoke-virtual {p0}, Lcom/getcapacitor/Bridge;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 557
    invoke-virtual {p0}, Lcom/getcapacitor/Bridge;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 559
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "://"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 561
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 509
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->fragment:Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 541
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->config:Lcom/getcapacitor/CapConfig;

    invoke-virtual {v0}, Lcom/getcapacitor/CapConfig;->getHostname()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIntentUri()Landroid/net/Uri;
    .locals 1

    .line 525
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->intentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getLocalServer()Lcom/getcapacitor/WebViewLocalServer;
    .locals 1

    .line 1452
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->localServer:Lcom/getcapacitor/WebViewLocalServer;

    return-object v0
.end method

.method public getLocalUrl()Ljava/lang/String;
    .locals 1

    .line 1448
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->localUrl:Ljava/lang/String;

    return-object v0
.end method

.method protected getPermissionCall(Ljava/lang/String;)Lcom/getcapacitor/PluginCall;
    .locals 1

    .line 980
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->savedPermissionCallIds:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/LinkedList;

    if-eqz p1, :cond_0

    .line 983
    invoke-virtual {p1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 986
    :goto_0
    invoke-virtual {p0, p1}, Lcom/getcapacitor/Bridge;->getSavedCall(Ljava/lang/String;)Lcom/getcapacitor/PluginCall;

    move-result-object p1

    return-object p1
.end method

.method protected getPermissionStates(Lcom/getcapacitor/Plugin;)Ljava/util/Map;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/getcapacitor/Plugin;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/getcapacitor/PermissionState;",
            ">;"
        }
    .end annotation

    .line 1226
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1227
    invoke-virtual {p1}, Lcom/getcapacitor/Plugin;->getPluginHandle()Lcom/getcapacitor/PluginHandle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/getcapacitor/PluginHandle;->getPluginAnnotation()Lcom/getcapacitor/annotation/CapacitorPlugin;

    move-result-object p1

    .line 1228
    invoke-interface {p1}, Lcom/getcapacitor/annotation/CapacitorPlugin;->permissions()[Lcom/getcapacitor/annotation/Permission;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_8

    aget-object v4, p1, v3

    .line 1231
    invoke-interface {v4}, Lcom/getcapacitor/annotation/Permission;->strings()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Lcom/getcapacitor/annotation/Permission;->strings()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    invoke-interface {v4}, Lcom/getcapacitor/annotation/Permission;->strings()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_4

    .line 1242
    :cond_0
    invoke-interface {v4}, Lcom/getcapacitor/annotation/Permission;->strings()[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v7, v2

    :goto_1
    if-ge v7, v6, :cond_7

    aget-object v8, v5, v7

    .line 1243
    invoke-interface {v4}, Lcom/getcapacitor/annotation/Permission;->alias()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v9, v8

    goto :goto_2

    :cond_1
    invoke-interface {v4}, Lcom/getcapacitor/annotation/Permission;->alias()Ljava/lang/String;

    move-result-object v9

    .line 1245
    :goto_2
    invoke-virtual {p0}, Lcom/getcapacitor/Bridge;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v8}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_2

    .line 1246
    sget-object v8, Lcom/getcapacitor/PermissionState;->GRANTED:Lcom/getcapacitor/PermissionState;

    goto :goto_3

    .line 1248
    :cond_2
    sget-object v10, Lcom/getcapacitor/PermissionState;->PROMPT:Lcom/getcapacitor/PermissionState;

    .line 1251
    invoke-virtual {p0}, Lcom/getcapacitor/Bridge;->getContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "PluginPermStates"

    invoke-virtual {v11, v12, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    const/4 v12, 0x0

    .line 1252
    invoke-interface {v11, v8, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 1255
    invoke-static {v8}, Lcom/getcapacitor/PermissionState;->byState(Ljava/lang/String;)Lcom/getcapacitor/PermissionState;

    move-result-object v8

    goto :goto_3

    :cond_3
    move-object v8, v10

    .line 1259
    :goto_3
    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/getcapacitor/PermissionState;

    if-eqz v10, :cond_4

    .line 1262
    sget-object v11, Lcom/getcapacitor/PermissionState;->GRANTED:Lcom/getcapacitor/PermissionState;

    if-ne v10, v11, :cond_5

    .line 1263
    :cond_4
    invoke-interface {v0, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1232
    :cond_6
    :goto_4
    invoke-interface {v4}, Lcom/getcapacitor/annotation/Permission;->alias()Ljava/lang/String;

    move-result-object v4

    .line 1233
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    .line 1234
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/getcapacitor/PermissionState;

    if-nez v5, :cond_7

    .line 1238
    sget-object v5, Lcom/getcapacitor/PermissionState;->GRANTED:Lcom/getcapacitor/PermissionState;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_8
    return-object v0
.end method

.method public getPlugin(Ljava/lang/String;)Lcom/getcapacitor/PluginHandle;
    .locals 1

    .line 774
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->plugins:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/getcapacitor/PluginHandle;

    return-object p1
.end method

.method getPluginCallForLastActivity()Lcom/getcapacitor/PluginCall;
    .locals 2

    .line 948
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->pluginCallForLastActivity:Lcom/getcapacitor/PluginCall;

    const/4 v1, 0x0

    .line 949
    iput-object v1, p0, Lcom/getcapacitor/Bridge;->pluginCallForLastActivity:Lcom/getcapacitor/PluginCall;

    return-object v0
.end method

.method public getPluginWithRequestCode(I)Lcom/getcapacitor/PluginHandle;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 786
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->plugins:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/getcapacitor/PluginHandle;

    .line 789
    invoke-virtual {v1}, Lcom/getcapacitor/PluginHandle;->getPluginAnnotation()Lcom/getcapacitor/annotation/CapacitorPlugin;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_4

    .line 792
    invoke-virtual {v1}, Lcom/getcapacitor/PluginHandle;->getLegacyPluginAnnotation()Lcom/getcapacitor/NativePlugin;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 797
    :cond_1
    invoke-interface {v2}, Lcom/getcapacitor/NativePlugin;->permissionRequestCode()I

    move-result v4

    if-ne v4, p1, :cond_2

    return-object v1

    .line 801
    :cond_2
    invoke-interface {v2}, Lcom/getcapacitor/NativePlugin;->requestCodes()[I

    move-result-object v2

    .line 803
    array-length v4, v2

    :goto_1
    if-ge v3, v4, :cond_0

    aget v5, v2, v3

    if-ne v5, p1, :cond_3

    return-object v1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 809
    :cond_4
    invoke-interface {v2}, Lcom/getcapacitor/annotation/CapacitorPlugin;->requestCodes()[I

    move-result-object v2

    .line 811
    array-length v4, v2

    :goto_2
    if-ge v3, v4, :cond_0

    aget v5, v2, v3

    if-ne v5, p1, :cond_5

    return-object v1

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    const/4 p1, 0x0

    return-object p1
.end method

.method getRouteProcessor()Lcom/getcapacitor/RouteProcessor;
    .locals 1

    .line 1481
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->routeProcessor:Lcom/getcapacitor/RouteProcessor;

    return-object v0
.end method

.method public getSavedCall(Ljava/lang/String;)Lcom/getcapacitor/PluginCall;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 944
    :cond_0
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->savedCalls:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/getcapacitor/PluginCall;

    return-object p1
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    .line 533
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->config:Lcom/getcapacitor/CapConfig;

    invoke-virtual {v0}, Lcom/getcapacitor/CapConfig;->getAndroidScheme()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerBasePath()Ljava/lang/String;
    .locals 1

    .line 1417
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->localServer:Lcom/getcapacitor/WebViewLocalServer;

    invoke-virtual {v0}, Lcom/getcapacitor/WebViewLocalServer;->getBasePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getServerPath()Lcom/getcapacitor/ServerPath;
    .locals 1

    .line 1489
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->serverPath:Lcom/getcapacitor/ServerPath;

    return-object v0
.end method

.method public getServerUrl()Ljava/lang/String;
    .locals 1

    .line 549
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->config:Lcom/getcapacitor/CapConfig;

    invoke-virtual {v0}, Lcom/getcapacitor/CapConfig;->getServerUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWebView()Landroid/webkit/WebView;
    .locals 1

    .line 517
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method public getWebViewClient()Lcom/getcapacitor/BridgeWebViewClient;
    .locals 1

    .line 1464
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->webViewClient:Lcom/getcapacitor/BridgeWebViewClient;

    return-object v0
.end method

.method getWebViewListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/getcapacitor/WebViewListener;",
            ">;"
        }
    .end annotation

    .line 1473
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->webViewListeners:Ljava/util/List;

    return-object v0
.end method

.method public handleAppUrlLoadError(Ljava/lang/Exception;)V
    .locals 2

    .line 467
    instance-of v0, p1, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_0

    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to load app. Ensure the server is running at "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/getcapacitor/Bridge;->appUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", or modify the appUrl setting in capacitor.config.json (make sure to npx cap copy after to commit changes)."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public injectScriptBeforeLoad(Ljava/lang/String;)V
    .locals 1

    .line 1054
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->canInjectJS:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1055
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->miscJSFileInjections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public isDeployDisabled()Z
    .locals 3

    .line 459
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->preferences:Lorg/apache/cordova/CordovaPreferences;

    const-string v1, "DisableDeploy"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/CordovaPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isDevMode()Z
    .locals 1

    .line 479
    invoke-virtual {p0}, Lcom/getcapacitor/Bridge;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMinimumWebViewInstalled()Z
    .locals 7

    .line 331
    const-string v0, "\\."

    invoke-virtual {p0}, Lcom/getcapacitor/Bridge;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 334
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lt v2, v3, :cond_4

    .line 335
    invoke-static {}, Lcom/getcapacitor/Bridge$$ExternalSyntheticApiModelOutline0;->m()Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 336
    const-string v1, "(\\d+)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 337
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 338
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 339
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 340
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 341
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.huawei.webview"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 342
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->config:Lcom/getcapacitor/CapConfig;

    invoke-virtual {v0}, Lcom/getcapacitor/CapConfig;->getMinHuaweiWebViewVersion()I

    move-result v0

    if-lt v1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    return v4

    .line 344
    :cond_1
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->config:Lcom/getcapacitor/CapConfig;

    invoke-virtual {v0}, Lcom/getcapacitor/CapConfig;->getMinWebViewVersion()I

    move-result v0

    if-lt v1, v0, :cond_2

    goto :goto_1

    :cond_2
    move v4, v5

    :goto_1
    return v4

    :cond_3
    return v5

    .line 352
    :cond_4
    :try_start_0
    const-string v2, "com.google.android.webview"

    .line 353
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x18

    if-lt v3, v6, :cond_5

    .line 354
    const-string v2, "com.android.chrome"

    .line 356
    :cond_5
    invoke-static {v1, v2}, Lcom/getcapacitor/util/InternalUtils;->getPackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 357
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v5

    .line 358
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 359
    iget-object v3, p0, Lcom/getcapacitor/Bridge;->config:Lcom/getcapacitor/CapConfig;

    invoke-virtual {v3}, Lcom/getcapacitor/CapConfig;->getMinWebViewVersion()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v2, v0, :cond_6

    goto :goto_2

    :cond_6
    move v4, v5

    :goto_2
    return v4

    :catch_0
    move-exception v2

    .line 361
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Unable to get package info for \'com.google.android.webview\'"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/getcapacitor/Logger;->warn(Ljava/lang/String;)V

    .line 365
    :try_start_1
    const-string v2, "com.android.webview"

    invoke-static {v1, v2}, Lcom/getcapacitor/util/InternalUtils;->getPackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 366
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v5

    .line 367
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 368
    iget-object v2, p0, Lcom/getcapacitor/Bridge;->config:Lcom/getcapacitor/CapConfig;

    invoke-virtual {v2}, Lcom/getcapacitor/CapConfig;->getMinWebViewVersion()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-lt v0, v1, :cond_7

    goto :goto_3

    :cond_7
    move v4, v5

    :goto_3
    return v4

    :catch_1
    move-exception v0

    .line 370
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to get package info for \'com.android.webview\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/getcapacitor/Logger;->warn(Ljava/lang/String;)V

    .line 373
    const-string v0, "com.amazon.webview.chromium"

    invoke-direct {p0, v1, v0}, Lcom/getcapacitor/Bridge;->extractWebViewMajorVersion(Landroid/content/pm/PackageManager;Ljava/lang/String;)I

    move-result v0

    .line 374
    iget-object v1, p0, Lcom/getcapacitor/Bridge;->config:Lcom/getcapacitor/CapConfig;

    invoke-virtual {v1}, Lcom/getcapacitor/CapConfig;->getMinWebViewVersion()I

    move-result v1

    if-lt v0, v1, :cond_8

    return v4

    :cond_8
    return v5
.end method

.method public launchIntent(Landroid/net/Uri;)Z
    .locals 4

    .line 398
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->plugins:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 399
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/getcapacitor/PluginHandle;

    invoke-virtual {v1}, Lcom/getcapacitor/PluginHandle;->getInstance()Lcom/getcapacitor/Plugin;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 401
    invoke-virtual {v1, p1}, Lcom/getcapacitor/Plugin;->shouldOverrideLoad(Landroid/net/Uri;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 403
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 408
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v2, "blob"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 412
    :cond_2
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->appUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 414
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->appAllowNavigationMask:Lcom/getcapacitor/util/HostMask;

    .line 415
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/getcapacitor/util/HostMask;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 418
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 419
    invoke-virtual {p0}, Lcom/getcapacitor/Bridge;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_0
    return v1
.end method

.method public logToJs(Ljava/lang/String;)V
    .locals 1

    .line 889
    const-string v0, "log"

    invoke-virtual {p0, p1, v0}, Lcom/getcapacitor/Bridge;->logToJs(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public logToJs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 885
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "window.Capacitor.logJs(\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\", \""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/getcapacitor/Bridge;->eval(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method onActivityResult(IILandroid/content/Intent;)Z
    .locals 3

    .line 1281
    invoke-virtual {p0, p1}, Lcom/getcapacitor/Bridge;->getPluginWithRequestCode(I)Lcom/getcapacitor/PluginHandle;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1283
    invoke-virtual {v0}, Lcom/getcapacitor/PluginHandle;->getInstance()Lcom/getcapacitor/Plugin;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1289
    :cond_0
    invoke-virtual {v0}, Lcom/getcapacitor/PluginHandle;->getInstance()Lcom/getcapacitor/Plugin;

    move-result-object v1

    invoke-virtual {v1}, Lcom/getcapacitor/Plugin;->getSavedCall()Lcom/getcapacitor/PluginCall;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1295
    iget-object v1, p0, Lcom/getcapacitor/Bridge;->pluginCallForLastActivity:Lcom/getcapacitor/PluginCall;

    if-eqz v1, :cond_1

    .line 1296
    invoke-virtual {v0}, Lcom/getcapacitor/PluginHandle;->getInstance()Lcom/getcapacitor/Plugin;

    move-result-object v1

    iget-object v2, p0, Lcom/getcapacitor/Bridge;->pluginCallForLastActivity:Lcom/getcapacitor/PluginCall;

    invoke-virtual {v1, v2}, Lcom/getcapacitor/Plugin;->saveCall(Lcom/getcapacitor/PluginCall;)V

    .line 1299
    :cond_1
    invoke-virtual {v0}, Lcom/getcapacitor/PluginHandle;->getInstance()Lcom/getcapacitor/Plugin;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/getcapacitor/Plugin;->handleOnActivityResult(IILandroid/content/Intent;)V

    const/4 p1, 0x0

    .line 1302
    iput-object p1, p0, Lcom/getcapacitor/Bridge;->pluginCallForLastActivity:Lcom/getcapacitor/PluginCall;

    const/4 p1, 0x1

    return p1

    .line 1284
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to find a Capacitor plugin to handle requestCode, trying Cordova plugins "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/getcapacitor/Logger;->debug(Ljava/lang/String;)V

    .line 1285
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->cordovaInterface:Lcom/getcapacitor/cordova/MockCordovaInterfaceImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/getcapacitor/cordova/MockCordovaInterfaceImpl;->onActivityResult(IILandroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1326
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->plugins:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/getcapacitor/PluginHandle;

    .line 1327
    invoke-virtual {v1}, Lcom/getcapacitor/PluginHandle;->getInstance()Lcom/getcapacitor/Plugin;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/getcapacitor/Plugin;->handleOnConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1397
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->plugins:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/getcapacitor/PluginHandle;

    .line 1398
    invoke-virtual {v1}, Lcom/getcapacitor/PluginHandle;->getInstance()Lcom/getcapacitor/Plugin;

    move-result-object v1

    invoke-virtual {v1}, Lcom/getcapacitor/Plugin;->handleOnDestroy()V

    goto :goto_0

    .line 1401
    :cond_0
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 1403
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->cordovaWebView:Lorg/apache/cordova/CordovaWebView;

    if-eqz v0, :cond_1

    .line 1404
    invoke-interface {v0}, Lorg/apache/cordova/CordovaWebView;->handleDestroy()V

    :cond_1
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1412
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 1413
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 1312
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->plugins:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/getcapacitor/PluginHandle;

    .line 1313
    invoke-virtual {v1}, Lcom/getcapacitor/PluginHandle;->getInstance()Lcom/getcapacitor/Plugin;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/getcapacitor/Plugin;->handleOnNewIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 1316
    :cond_0
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->cordovaWebView:Lorg/apache/cordova/CordovaWebView;

    if-eqz v0, :cond_1

    .line 1317
    invoke-interface {v0, p1}, Lorg/apache/cordova/CordovaWebView;->onNewIntent(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1370
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->plugins:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/getcapacitor/PluginHandle;

    .line 1371
    invoke-virtual {v1}, Lcom/getcapacitor/PluginHandle;->getInstance()Lcom/getcapacitor/Plugin;

    move-result-object v1

    invoke-virtual {v1}, Lcom/getcapacitor/Plugin;->handleOnPause()V

    goto :goto_0

    .line 1374
    :cond_0
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->cordovaWebView:Lorg/apache/cordova/CordovaWebView;

    if-eqz v0, :cond_3

    .line 1375
    invoke-virtual {p0}, Lcom/getcapacitor/Bridge;->shouldKeepRunning()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/getcapacitor/Bridge;->cordovaInterface:Lcom/getcapacitor/cordova/MockCordovaInterfaceImpl;

    invoke-virtual {v0}, Lcom/getcapacitor/cordova/MockCordovaInterfaceImpl;->getActivityResultCallback()Lorg/apache/cordova/CordovaPlugin;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    .line 1376
    :goto_2
    iget-object v1, p0, Lcom/getcapacitor/Bridge;->cordovaWebView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v1, v0}, Lorg/apache/cordova/CordovaWebView;->handlePause(Z)V

    :cond_3
    return-void
.end method

.method onRequestPermissionsResult(I[Ljava/lang/String;[I)Z
    .locals 3

    .line 1141
    invoke-virtual {p0, p1}, Lcom/getcapacitor/Bridge;->getPluginWithRequestCode(I)Lcom/getcapacitor/PluginHandle;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1145
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unable to find a Capacitor plugin to handle permission requestCode, trying Cordova plugins "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/getcapacitor/Logger;->debug(Ljava/lang/String;)V

    .line 1147
    :try_start_0
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->cordovaInterface:Lcom/getcapacitor/cordova/MockCordovaInterfaceImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/getcapacitor/cordova/MockCordovaInterfaceImpl;->handlePermissionResult(I[Ljava/lang/String;[I)Z

    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1149
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Error on Cordova plugin permissions request "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/getcapacitor/Logger;->debug(Ljava/lang/String;)V

    :goto_0
    return v1

    .line 1155
    :cond_0
    invoke-virtual {v0}, Lcom/getcapacitor/PluginHandle;->getPluginAnnotation()Lcom/getcapacitor/annotation/CapacitorPlugin;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1156
    invoke-virtual {v0}, Lcom/getcapacitor/PluginHandle;->getInstance()Lcom/getcapacitor/Plugin;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/getcapacitor/Plugin;->handleRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public onRestart()V
    .locals 2

    .line 1335
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->plugins:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/getcapacitor/PluginHandle;

    .line 1336
    invoke-virtual {v1}, Lcom/getcapacitor/PluginHandle;->getInstance()Lcom/getcapacitor/Plugin;

    move-result-object v1

    invoke-virtual {v1}, Lcom/getcapacitor/Plugin;->handleOnRestart()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1357
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->plugins:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/getcapacitor/PluginHandle;

    .line 1358
    invoke-virtual {v1}, Lcom/getcapacitor/PluginHandle;->getInstance()Lcom/getcapacitor/Plugin;

    move-result-object v1

    invoke-virtual {v1}, Lcom/getcapacitor/Plugin;->handleOnResume()V

    goto :goto_0

    .line 1361
    :cond_0
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->cordovaWebView:Lorg/apache/cordova/CordovaWebView;

    if-eqz v0, :cond_1

    .line 1362
    invoke-virtual {p0}, Lcom/getcapacitor/Bridge;->shouldKeepRunning()Z

    move-result v1

    invoke-interface {v0, v1}, Lorg/apache/cordova/CordovaWebView;->handleResume(Z)V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1344
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->plugins:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/getcapacitor/PluginHandle;

    .line 1345
    invoke-virtual {v1}, Lcom/getcapacitor/PluginHandle;->getInstance()Lcom/getcapacitor/Plugin;

    move-result-object v1

    invoke-virtual {v1}, Lcom/getcapacitor/Plugin;->handleOnStart()V

    goto :goto_0

    .line 1348
    :cond_0
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->cordovaWebView:Lorg/apache/cordova/CordovaWebView;

    if-eqz v0, :cond_1

    .line 1349
    invoke-interface {v0}, Lorg/apache/cordova/CordovaWebView;->handleStart()V

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1384
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->plugins:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/getcapacitor/PluginHandle;

    .line 1385
    invoke-virtual {v1}, Lcom/getcapacitor/PluginHandle;->getInstance()Lcom/getcapacitor/Plugin;

    move-result-object v1

    invoke-virtual {v1}, Lcom/getcapacitor/Plugin;->handleOnStop()V

    goto :goto_0

    .line 1388
    :cond_0
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->cordovaWebView:Lorg/apache/cordova/CordovaWebView;

    if-eqz v0, :cond_1

    .line 1389
    invoke-interface {v0}, Lorg/apache/cordova/CordovaWebView;->handleStop()V

    :cond_1
    return-void
.end method

.method public registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/activity/result/contract/ActivityResultContract<",
            "TI;TO;>;",
            "Landroidx/activity/result/ActivityResultCallback<",
            "TO;>;)",
            "Landroidx/activity/result/ActivityResultLauncher<",
            "TI;>;"
        }
    .end annotation

    .line 1017
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->fragment:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 1018
    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p1

    return-object p1

    .line 1020
    :cond_0
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->context:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p1

    return-object p1
.end method

.method public registerPlugin(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/getcapacitor/Plugin;",
            ">;)V"
        }
    .end annotation

    .line 712
    invoke-direct {p0, p1}, Lcom/getcapacitor/Bridge;->pluginId(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 716
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/getcapacitor/Bridge;->plugins:Ljava/util/Map;

    new-instance v2, Lcom/getcapacitor/PluginHandle;

    invoke-direct {v2, p0, p1}, Lcom/getcapacitor/PluginHandle;-><init>(Lcom/getcapacitor/Bridge;Ljava/lang/Class;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/getcapacitor/InvalidPluginException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/getcapacitor/PluginLoadException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 720
    invoke-direct {p0, p1, v0}, Lcom/getcapacitor/Bridge;->logPluginLoadException(Ljava/lang/Class;Ljava/lang/Exception;)V

    goto :goto_0

    .line 718
    :catch_1
    invoke-direct {p0, p1}, Lcom/getcapacitor/Bridge;->logInvalidPluginException(Ljava/lang/Class;)V

    :goto_0
    return-void
.end method

.method public registerPluginInstance(Lcom/getcapacitor/Plugin;)V
    .locals 4

    .line 725
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 726
    invoke-direct {p0, v0}, Lcom/getcapacitor/Bridge;->pluginId(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 730
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/getcapacitor/Bridge;->plugins:Ljava/util/Map;

    new-instance v3, Lcom/getcapacitor/PluginHandle;

    invoke-direct {v3, p0, p1}, Lcom/getcapacitor/PluginHandle;-><init>(Lcom/getcapacitor/Bridge;Lcom/getcapacitor/Plugin;)V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/getcapacitor/InvalidPluginException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 732
    :catch_0
    invoke-direct {p0, v0}, Lcom/getcapacitor/Bridge;->logInvalidPluginException(Ljava/lang/Class;)V

    :goto_0
    return-void
.end method

.method public registerPluginInstances([Lcom/getcapacitor/Plugin;)V
    .locals 3

    .line 691
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 692
    invoke-virtual {p0, v2}, Lcom/getcapacitor/Bridge;->registerPluginInstance(Lcom/getcapacitor/Plugin;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public registerPlugins([Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "+",
            "Lcom/getcapacitor/Plugin;",
            ">;)V"
        }
    .end annotation

    .line 685
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 686
    invoke-virtual {p0, v2}, Lcom/getcapacitor/Bridge;->registerPlugin(Ljava/lang/Class;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public releaseCall(Lcom/getcapacitor/PluginCall;)V
    .locals 0

    .line 962
    invoke-virtual {p1}, Lcom/getcapacitor/PluginCall;->getCallbackId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/getcapacitor/Bridge;->releaseCall(Ljava/lang/String;)V

    return-void
.end method

.method public releaseCall(Ljava/lang/String;)V
    .locals 1

    .line 970
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->savedCalls:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public reload()V
    .locals 2

    .line 1444
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/getcapacitor/Bridge$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/getcapacitor/Bridge$$ExternalSyntheticLambda8;-><init>(Lcom/getcapacitor/Bridge;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public removeWebViewListener(Lcom/getcapacitor/WebViewListener;)V
    .locals 1

    .line 1505
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->webViewListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public reset()V
    .locals 2

    .line 576
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/getcapacitor/Bridge;->savedCalls:Ljava/util/Map;

    .line 577
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->plugins:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/getcapacitor/PluginHandle;

    .line 578
    invoke-virtual {v1}, Lcom/getcapacitor/PluginHandle;->getInstance()Lcom/getcapacitor/Plugin;

    move-result-object v1

    invoke-virtual {v1}, Lcom/getcapacitor/Plugin;->removeAllListeners()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public restoreInstanceState(Landroid/os/Bundle;)V
    .locals 8

    .line 1064
    const-string v0, "capacitorLastActivityPluginId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1065
    const-string v1, "capacitorLastActivityPluginMethod"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1066
    const-string v1, "capacitorLastPluginCallOptions"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_2

    if-eqz v1, :cond_0

    .line 1072
    :try_start_0
    new-instance v6, Lcom/getcapacitor/JSObject;

    invoke-direct {v6, v1}, Lcom/getcapacitor/JSObject;-><init>(Ljava/lang/String;)V

    .line 1074
    new-instance v7, Lcom/getcapacitor/PluginCall;

    iget-object v2, p0, Lcom/getcapacitor/Bridge;->msgHandler:Lcom/getcapacitor/MessageHandler;

    const-string v4, "-1"

    move-object v1, v7

    move-object v3, v0

    invoke-direct/range {v1 .. v6}, Lcom/getcapacitor/PluginCall;-><init>(Lcom/getcapacitor/MessageHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/getcapacitor/JSObject;)V

    iput-object v7, p0, Lcom/getcapacitor/Bridge;->pluginCallForLastActivity:Lcom/getcapacitor/PluginCall;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1082
    const-string v2, "Unable to restore plugin call, unable to parse persisted JSON object"

    invoke-static {v2, v1}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1087
    :cond_0
    :goto_0
    const-string v1, "capacitorLastPluginCallBundle"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 1088
    invoke-virtual {p0, v0}, Lcom/getcapacitor/Bridge;->getPlugin(Ljava/lang/String;)Lcom/getcapacitor/PluginHandle;

    move-result-object v0

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 1090
    invoke-virtual {v0}, Lcom/getcapacitor/PluginHandle;->getInstance()Lcom/getcapacitor/Plugin;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/getcapacitor/Plugin;->restoreState(Landroid/os/Bundle;)V

    goto :goto_1

    .line 1092
    :cond_1
    const-string p1, "Unable to restore last plugin call"

    invoke-static {p1}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public saveCall(Lcom/getcapacitor/PluginCall;)V
    .locals 2

    .line 931
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->savedCalls:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/getcapacitor/PluginCall;->getCallbackId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .line 1098
    const-string v0, "Saving instance state!"

    invoke-static {v0}, Lcom/getcapacitor/Logger;->debug(Ljava/lang/String;)V

    .line 1102
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->pluginCallForLastActivity:Lcom/getcapacitor/PluginCall;

    if-eqz v0, :cond_1

    .line 1104
    invoke-virtual {v0}, Lcom/getcapacitor/PluginCall;->getPluginId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/getcapacitor/Bridge;->getPlugin(Ljava/lang/String;)Lcom/getcapacitor/PluginHandle;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1107
    invoke-virtual {v1}, Lcom/getcapacitor/PluginHandle;->getInstance()Lcom/getcapacitor/Plugin;

    move-result-object v1

    invoke-virtual {v1}, Lcom/getcapacitor/Plugin;->saveInstanceState()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1109
    const-string v2, "capacitorLastActivityPluginId"

    invoke-virtual {v0}, Lcom/getcapacitor/PluginCall;->getPluginId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    const-string v2, "capacitorLastActivityPluginMethod"

    invoke-virtual {v0}, Lcom/getcapacitor/PluginCall;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1111
    invoke-virtual {v0}, Lcom/getcapacitor/PluginCall;->getData()Lcom/getcapacitor/JSObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/getcapacitor/JSObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "capacitorLastPluginCallOptions"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    const-string v0, "capacitorLastPluginCallBundle"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1114
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Couldn\'t save last "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/getcapacitor/PluginCall;->getPluginId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'s Plugin "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/getcapacitor/PluginCall;->getMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " call"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected savePermissionCall(Lcom/getcapacitor/PluginCall;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 996
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->savedPermissionCallIds:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/getcapacitor/PluginCall;->getPluginId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 997
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->savedPermissionCallIds:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/getcapacitor/PluginCall;->getPluginId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1000
    :cond_0
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->savedPermissionCallIds:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/getcapacitor/PluginCall;->getPluginId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    invoke-virtual {p1}, Lcom/getcapacitor/PluginCall;->getCallbackId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1001
    invoke-virtual {p0, p1}, Lcom/getcapacitor/Bridge;->saveCall(Lcom/getcapacitor/PluginCall;)V

    :cond_1
    return-void
.end method

.method protected setCordovaWebView(Lorg/apache/cordova/CordovaWebView;)V
    .locals 0

    .line 483
    iput-object p1, p0, Lcom/getcapacitor/Bridge;->cordovaWebView:Lorg/apache/cordova/CordovaWebView;

    return-void
.end method

.method setPluginCallForLastActivity(Lcom/getcapacitor/PluginCall;)V
    .locals 0

    .line 954
    iput-object p1, p0, Lcom/getcapacitor/Bridge;->pluginCallForLastActivity:Lcom/getcapacitor/PluginCall;

    return-void
.end method

.method setRouteProcessor(Lcom/getcapacitor/RouteProcessor;)V
    .locals 0

    .line 1485
    iput-object p1, p0, Lcom/getcapacitor/Bridge;->routeProcessor:Lcom/getcapacitor/RouteProcessor;

    return-void
.end method

.method public setServerAssetPath(Ljava/lang/String;)V
    .locals 1

    .line 1436
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->localServer:Lcom/getcapacitor/WebViewLocalServer;

    invoke-virtual {v0, p1}, Lcom/getcapacitor/WebViewLocalServer;->hostAssets(Ljava/lang/String;)V

    .line 1437
    iget-object p1, p0, Lcom/getcapacitor/Bridge;->webView:Landroid/webkit/WebView;

    new-instance v0, Lcom/getcapacitor/Bridge$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/getcapacitor/Bridge$$ExternalSyntheticLambda9;-><init>(Lcom/getcapacitor/Bridge;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setServerBasePath(Ljava/lang/String;)V
    .locals 1

    .line 1426
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->localServer:Lcom/getcapacitor/WebViewLocalServer;

    invoke-virtual {v0, p1}, Lcom/getcapacitor/WebViewLocalServer;->hostFiles(Ljava/lang/String;)V

    .line 1427
    iget-object p1, p0, Lcom/getcapacitor/Bridge;->webView:Landroid/webkit/WebView;

    new-instance v0, Lcom/getcapacitor/Bridge$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/getcapacitor/Bridge$$ExternalSyntheticLambda6;-><init>(Lcom/getcapacitor/Bridge;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setWebViewClient(Lcom/getcapacitor/BridgeWebViewClient;)V
    .locals 1

    .line 1468
    iput-object p1, p0, Lcom/getcapacitor/Bridge;->webViewClient:Lcom/getcapacitor/BridgeWebViewClient;

    .line 1469
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method setWebViewListeners(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/getcapacitor/WebViewListener;",
            ">;)V"
        }
    .end annotation

    .line 1477
    iput-object p1, p0, Lcom/getcapacitor/Bridge;->webViewListeners:Ljava/util/List;

    return-void
.end method

.method public shouldKeepRunning()Z
    .locals 3

    .line 463
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->preferences:Lorg/apache/cordova/CordovaPreferences;

    const-string v1, "KeepRunning"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/CordovaPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public startActivityForPluginWithResult(Lcom/getcapacitor/PluginCall;Landroid/content/Intent;I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1123
    const-string v0, "Starting activity for result"

    invoke-static {v0}, Lcom/getcapacitor/Logger;->debug(Ljava/lang/String;)V

    .line 1125
    iput-object p1, p0, Lcom/getcapacitor/Bridge;->pluginCallForLastActivity:Lcom/getcapacitor/PluginCall;

    .line 1127
    invoke-virtual {p0}, Lcom/getcapacitor/Bridge;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public triggerDocumentJSEvent(Ljava/lang/String;)V
    .locals 1

    .line 909
    const-string v0, "document"

    invoke-virtual {p0, p1, v0}, Lcom/getcapacitor/Bridge;->triggerJSEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public triggerDocumentJSEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 913
    const-string v0, "document"

    invoke-virtual {p0, p1, v0, p2}, Lcom/getcapacitor/Bridge;->triggerJSEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public triggerJSEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 893
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "window.Capacitor.triggerEvent(\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\", \""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/getcapacitor/Bridge$$ExternalSyntheticLambda5;

    invoke-direct {p2}, Lcom/getcapacitor/Bridge$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/getcapacitor/Bridge;->eval(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public triggerJSEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 897
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "window.Capacitor.triggerEvent(\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\", \""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/getcapacitor/Bridge$$ExternalSyntheticLambda7;

    invoke-direct {p2}, Lcom/getcapacitor/Bridge$$ExternalSyntheticLambda7;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/getcapacitor/Bridge;->eval(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public triggerWindowJSEvent(Ljava/lang/String;)V
    .locals 1

    .line 901
    const-string v0, "window"

    invoke-virtual {p0, p1, v0}, Lcom/getcapacitor/Bridge;->triggerJSEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public triggerWindowJSEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 905
    const-string v0, "window"

    invoke-virtual {p0, p1, v0, p2}, Lcom/getcapacitor/Bridge;->triggerJSEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected validatePermissions(Lcom/getcapacitor/Plugin;Lcom/getcapacitor/PluginCall;Ljava/util/Map;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/getcapacitor/Plugin;",
            "Lcom/getcapacitor/PluginCall;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 1173
    invoke-virtual {p0}, Lcom/getcapacitor/Bridge;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "PluginPermStates"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 1175
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1176
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1177
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 1181
    invoke-interface {p1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1184
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1185
    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1186
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 1189
    :cond_1
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1191
    invoke-virtual {p0}, Lcom/getcapacitor/Bridge;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v4

    invoke-static {v4, v3}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1193
    sget-object v4, Lcom/getcapacitor/PermissionState;->PROMPT_WITH_RATIONALE:Lcom/getcapacitor/PermissionState;

    invoke-virtual {v4}, Lcom/getcapacitor/PermissionState;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 1196
    :cond_2
    sget-object v4, Lcom/getcapacitor/PermissionState;->DENIED:Lcom/getcapacitor/PermissionState;

    invoke-virtual {v4}, Lcom/getcapacitor/PermissionState;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1199
    :goto_1
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 1203
    :cond_3
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    new-array p3, v1, [Ljava/lang/String;

    invoke-interface {p1, p3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 1205
    invoke-virtual {p0}, Lcom/getcapacitor/Bridge;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p1}, Lcom/getcapacitor/util/PermissionHelper;->hasDefinedPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_5

    .line 1206
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Missing the following permissions in AndroidManifest.xml:\n"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1208
    invoke-virtual {p0}, Lcom/getcapacitor/Bridge;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/getcapacitor/util/PermissionHelper;->getUndefinedPermissions(Landroid/content/Context;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1209
    array-length v0, p1

    move v2, v1

    :goto_2
    if-ge v2, v0, :cond_4

    aget-object v3, p1, v2

    .line 1210
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1212
    :cond_4
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/getcapacitor/PluginCall;->reject(Ljava/lang/String;)V

    return v1

    :cond_5
    const/4 p1, 0x1

    return p1
.end method
