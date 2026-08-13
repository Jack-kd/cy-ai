.class public Lcom/mycompany/plugins/mediapicker/CapacitorMediaPickerPlugin;
.super Lcom/getcapacitor/Plugin;
.source "CapacitorMediaPickerPlugin.java"


# annotations
.annotation runtime Lcom/getcapacitor/annotation/CapacitorPlugin;
    name = "MediaPicker"
    permissions = {
        .subannotation Lcom/getcapacitor/annotation/Permission;
            alias = "photos"
            strings = {
                "android.permission.READ_MEDIA_IMAGES"
            }
        .end subannotation,
        .subannotation Lcom/getcapacitor/annotation/Permission;
            alias = "video"
            strings = {
                "android.permission.READ_MEDIA_VIDEO"
            }
        .end subannotation,
        .subannotation Lcom/getcapacitor/annotation/Permission;
            alias = "storage"
            strings = {
                "android.permission.READ_EXTERNAL_STORAGE"
            }
        .end subannotation
    }
.end annotation


# instance fields
.field private savedCallId:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$20MBp5WBQpiQ4GpepbAeWG_65ok(Lcom/mycompany/plugins/mediapicker/CapacitorMediaPickerPlugin;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mycompany/plugins/mediapicker/CapacitorMediaPickerPlugin;->lambda$handleMediaResult$0(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WlaFfRJV1wF8_h6L1XMp4MFAAEw(Lcom/mycompany/plugins/mediapicker/CapacitorMediaPickerPlugin;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mycompany/plugins/mediapicker/CapacitorMediaPickerPlugin;->lambda$handleMediaResult$1(Ljava/util/ArrayList;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetsavedCallId(Lcom/mycompany/plugins/mediapicker/CapacitorMediaPickerPlugin;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mycompany/plugins/mediapicker/CapacitorMediaPickerPlugin;->savedCallId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhandleMediaResult(Lcom/mycompany/plugins/mediapicker/CapacitorMediaPickerPlugin;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mycompany/plugins/mediapicker/CapacitorMediaPickerPlugin;->handleMediaResult(Ljava/util/ArrayList;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/getcapacitor/Plugin;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mycompany/plugins/mediapicker/CapacitorMediaPickerPlugin;)Lcom/getcapacitor/Bridge;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/mycompany/plugins/mediapicker/CapacitorMediaPickerPlugin;->bridge:Lcom/getcapacitor/Bridge;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mycompany/plugins/mediapicker/CapacitorMediaPickerPlugin;)Lcom/getcapacitor/Bridge;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/mycompany/plugins/mediapicker/CapacitorMediaPickerPlugin;->bridge:Lcom/getcapacitor/Bridge;

    return-object p0
.end method

.method private buildMediaFileObject(Landroid/content/Context;Lcom/luck/picture/lib/entity/LocalMedia;Ljava/lang/String;)Lcom/getcapacitor/JSObject;
    .locals 10

    .line 242
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 244
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 246
    invoke-virtual {p2}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object p1

    .line 247
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 248
    invoke-direct {p0, p3}, Lcom/mycompany/plugins/mediapicker/CapacitorMediaPickerPlugin;->guessMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 251
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "video/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 252
    :goto_0
    invoke-virtual {p2}, Lcom/luck/picture/lib/entity/LocalMedia;->getWidth()I

    move-result v4

    .line 253
    invoke-virtual {p2}, Lcom/luck/picture/lib/entity/LocalMedia;->getHeight()I

    move-result v5

    .line 254
    invoke-virtual {p2}, Lcom/luck/picture/lib/entity/LocalMedia;->getDuration()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    .line 257
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/mycompany/plugins/mediapicker/CapacitorMediaPickerPlugin;->bridge:Lcom/getcapacitor/Bridge;

    invoke-virtual {v8}, Lcom/getcapacitor/Bridge;->getLocalUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/_capacitor_file_"

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 259
    new-instance v8, Lcom/getcapacitor/JSObject;

    invoke-direct {v8}, Lcom/getcapacitor/JSObject;-><init>()V

    .line 260
    const-string v9, "path"

    invoke-virtual {v8, v9, p3}, Lcom/getcapacitor/JSObject;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/getcapacitor/JSObject;

    .line 261
    const-string p3, "name"

    invoke-virtual {v8, p3, v0}, Lcom/getcapacitor/JSObject;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/getcapacitor/JSObject;

    .line 262
    const-string p3, "mimeType"

    invoke-virtual {v8, p3, p1}, Lcom/getcapacitor/JSObject;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/getcapacitor/JSObject;

    .line 263
    const-string p1, "size"

    invoke-virtual {v8, p1, v1, v2}, Lcom/getcapacitor/JSObject;->put(Ljava/lang/String;J)Lcom/getcapacitor/JSObject;

    if-eqz v3, :cond_2

    .line 264
    const-string p1, "video"

    goto :goto_1

    :cond_2
    const-string p1, "image"

    :goto_1
    const-string p3, "type"

    invoke-virtual {v8, p3, p1}, Lcom/getcapacitor/JSObject;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/getcapacitor/JSObject;

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    const-wide/16 v6, 0x0

    .line 265
    :goto_2
    const-string p1, "duration"

    invoke-virtual {v8, p1, v6, v7}, Lcom/getcapacitor/JSObject;->put(Ljava/lang/String;J)Lcom/getcapacitor/JSObject;

    .line 266
    const-string p1, "width"

    invoke-virtual {v8, p1, v4}, Lcom/getcapacitor/JSObject;->put(Ljava/lang/String;I)Lcom/getcapacitor/JSObject;

    .line 267
    const-string p1, "height"

    invoke-virtual {v8, p1, v5}, Lcom/getcapacitor/JSObject;->put(Ljava/lang/String;I)Lcom/getcapacitor/JSObject;

    .line 268
    const-string p1, "previewUrl"

    invoke-virtual {v8, p1, p2}, Lcom/getcapacitor/JSObject;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/getcapacitor/JSObject;

    return-object v8
.end method

.method private copyUriToCache(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 296
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 301
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 302
    new-instance p3, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 304
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 p2, 0x2000

    .line 305
    new-array p2, p2, [B

    .line 307
    :goto_0
    invoke-virtual {v0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    .line 308
    invoke-virtual {p1, p2, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 310
    :cond_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 311
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 312
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 314
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 298
    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Cannot open input stream for URI: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private guessExtension(Lcom/luck/picture/lib/entity/LocalMedia;)Ljava/lang/String;
    .locals 1

    .line 318
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object p1

    .line 319
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 320
    const-string v0, "video/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ".mp4"

    return-object p1

    .line 321
    :cond_0
    const-string v0, "png"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, ".png"

    return-object p1

    .line 322
    :cond_1
    const-string v0, "gif"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, ".gif"

    return-object p1

    .line 323
    :cond_2
    const-string v0, "webp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, ".webp"

    return-object p1

    .line 325
    :cond_3
    const-string p1, ".jpg"

    return-object p1
.end method

.method private guessMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 329
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 330
    const-string v0, ".jpg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, ".jpeg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 331
    :cond_0
    const-string v0, ".png"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "image/png"

    return-object p1

    .line 332
    :cond_1
    const-string v0, ".gif"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "image/gif"

    return-object p1

    .line 333
    :cond_2
    const-string v0, ".webp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "image/webp"

    return-object p1

    .line 334
    :cond_3
    const-string v0, ".heic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, ".heif"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 335
    :cond_4
    const-string v0, ".mp4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, ".m4v"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    .line 336
    :cond_5
    const-string v0, ".mov"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p1, "video/quicktime"

    return-object p1

    .line 337
    :cond_6
    const-string v0, ".avi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p1, "video/x-msvideo"

    return-object p1

    .line 338
    :cond_7
    const-string v0, ".3gp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "video/3gpp"

    return-object p1

    .line 339
    :cond_8
    const-string p1, "application/octet-stream"

    return-object p1

    .line 335
    :cond_9
    :goto_0
    const-string p1, "video/mp4"

    return-object p1

    .line 334
    :cond_a
    :goto_1
    const-string p1, "image/heic"

    return-object p1

    .line 330
    :cond_b
    :goto_2
    const-string p1, "image/jpeg"

    return-object p1
.end method

.method private handleMediaResult(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)V"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/mycompany/plugins/mediapicker/CapacitorMediaPickerPlugin;->bridge:Lcom/getcapacitor/Bridge;

    iget-object v1, p0, Lcom/mycompany/plugins/mediapicker/CapacitorMediaPickerPlugin;->savedCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/getcapacitor/Bridge;->getSavedCall(Ljava/lang/String;)Lcom/getcapacitor/PluginCall;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 203
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mycompany/plugins/mediapicker/CapacitorMediaPickerPlugin$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/mycompany/plugins/mediapicker/CapacitorMediaPickerPlugin$$ExternalSyntheticLambda0;-><init>(Lcom/mycompany/plugins/mediapicker/CapacitorMediaPickerPlugin;Ljava/util/ArrayList;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 238
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private handlePermissionResult(Lcom/getcapacitor/PluginCall;)V
    .locals 5
    .annotation runtime Lcom/getcapacitor/annotation/PermissionCallback;
    .end annotation

    .line 95
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_3

    .line 96
    invoke-virtual {p0}, Lcom/mycompany/plugins/mediapicker/CapacitorMediaPickerPlugin;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_MEDIA_IMAGES"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 98
    :goto_0
    invoke-virtual {p0}, Lcom/mycompany/plugins/mediapicker/CapacitorMediaPickerPlugin;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "android.permission.READ_MEDIA_VIDEO"

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    .line 101
    const-string v0, "video"

    const-string v1, "handlePermissionResult"

    invoke-virtual {p0, v0, p1, v1}, Lcom/mycompany/plugins/mediapicker/CapacitorMediaPickerPlugin;->requestPermissionForAlias(Ljava/lang/String;Lcom/getcapacitor/PluginCall;Ljava/lang/String;)V

    return-void

    :cond_2
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    goto :goto_2

    .line 106
    :cond_3
    invoke-virtual {p0}, Lcom/mycompany/plugins/mediapicker/CapacitorMediaPickerPlugin;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    .line 111
    :goto_2
    invoke-direct {p0, p1}, Lcom/mycompany/plugins/mediapicker/CapacitorMediaPickerPlugin;->launchMediaPicker(Lcom/getcapacitor/PluginCall;)V

    goto :goto_3

    .line 113
    :cond_4
    const-string v0, "Photo library access denied. Please grant permission in Settings."

    invoke-virtual {p1, v0}, Lcom/getcapacitor/PluginCall;->reject(Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method private synthetic lambda$handleMediaResult$0(Ljava/util/ArrayList;)V
    .locals 4

    .line 222
    iget-object v0, p0, Lcom/mycompany/plugins/mediapicker/CapacitorMediaPickerPlugin;->bridge:Lcom/getcapacitor/Bridge;

    iget-object v1, p0, Lcom/mycompany/plugins/mediapicker/CapacitorMediaPickerPlugin;->savedCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/getcapacitor/Bridge;->getSavedCall(Ljava/lang/String;)Lcom/getcapacitor/PluginCall;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 225
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 226
    new-instance v1, Lcom/getcapacitor/JSObject;

    invoke-direct {v1}, Lcom/getcapacitor/JSObject;-><init>()V

    .line 227
    new-instance v2, Lcom/getcapacitor/JSArray;

    invoke-direct {v2}, Lcom/getcapacitor/JSArray;-><init>()V

    .line 228
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/getcapacitor/JSObject;

    .line 229
    invoke-virtual {v2, v3}, Lcom/getcapacitor/JSArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 231
    :cond_1
    const-string p1, "files"

    invoke-virtual {v1, p1, v2}, Lcom/getcapacitor/JSObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/getcapacitor/JSObject;

    .line 232
    invoke-virtual {v0, v1}, Lcom/getcapacitor/PluginCall;->resolve(Lcom/getcapacitor/JSObject;)V

    goto :goto_1

    .line 234
    :cond_2
    const-string p1, "No files selected"

    invoke-virtual {v0, p1}, Lcom/getcapacitor/PluginCall;->reject(Ljava/lang/String;)V

    .line 236
    :goto_1
    iget-object p1, p0, Lcom/mycompany/plugins/mediapicker/CapacitorMediaPickerPlugin;->bridge:Lcom/getcapacitor/Bridge;

    invoke-virtual {p1, v0}, Lcom/getcapacitor/Bridge;->releaseCall(Lcom/getcapacitor/PluginCall;)V

    return-void
.end method

.method private synthetic lambda$handleMediaResult$1(Ljava/util/ArrayList;)V
    .locals 5

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 205
    invoke-virtual {p0}, Lcom/mycompany/plugins/mediapicker/CapacitorMediaPickerPlugin;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 207
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/luck/picture/lib/entity/LocalMedia;

    .line 209
    :try_start_0
    invoke-direct {p0, v1, v2}, Lcom/mycompany/plugins/mediapicker/CapacitorMediaPickerPlugin;->resolveMediaPath(Landroid/content/Context;Lcom/luck/picture/lib/entity/LocalMedia;)Ljava/lang/String;

    move-result-object v3

    .line 210
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 211
    invoke-direct {p0, v1, v2, v3}, Lcom/mycompany/plugins/mediapicker/CapacitorMediaPickerPlugin;->buildMediaFileObject(Landroid/content/Context;Lcom/luck/picture/lib/entity/LocalMedia;Ljava/lang/String;)Lcom/getcapacitor/JSObject;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 213
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 217
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 221
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/plugins/mediapicker/CapacitorMediaPickerPlugin;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p1

    new-instance v1, Lcom/mycompany/plugins/mediapicker/CapacitorMediaPickerPlugin$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lcom/mycompany/plugins/mediapicker/CapacitorMediaPickerPlugin$$ExternalSyntheticLambda1;-><init>(Lcom/mycompany/plugins/mediapicker/CapacitorMediaPickerPlugin;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AppCompatActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private launchMediaPicker(Lcom/getcapacitor/PluginCall;)V
    .locals 9

    const/16 v0, 0x9

    .line 118
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "maxCount"

    invoke-virtual {p1, v1, v0}, Lcom/getcapacitor/PluginCall;->getInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 119
    const-string v1, "mediaType"

    const-string v2, "all"

    invoke-virtual {p1, v1, v2}, Lcom/getcapacitor/PluginCall;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 124
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v1, "image"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "video"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v2, :cond_1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 136
    invoke-static {}, Lcom/luck/picture/lib/config/SelectMimeType;->ofAll()I

    move-result v2

    .line 138
    const-string v6, "\u56fe\u7247\u548c\u89c6\u9891"

    move v7, v5

    goto :goto_1

    .line 131
    :cond_0
    invoke-static {}, Lcom/luck/picture/lib/config/SelectMimeType;->ofVideo()I

    move-result v2

    .line 134
    const-string v6, "\u89c6\u9891"

    goto :goto_0

    .line 126
    :cond_1
    invoke-static {}, Lcom/luck/picture/lib/config/SelectMimeType;->ofImage()I

    move-result v2

    .line 129
    const-string v6, "\u56fe\u7247"

    :goto_0
    move v7, v4

    .line 143
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v8, "\u6700\u591a\u53ea\u80fd\u9009\u62e9"

    if-nez v1, :cond_3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 151
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u4e2a\u6587\u4ef6"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 148
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u4e2a\u89c6\u9891"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 145
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u5f20\u56fe\u7247"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 155
    :goto_2
    invoke-virtual {p0}, Lcom/mycompany/plugins/mediapicker/CapacitorMediaPickerPlugin;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/luck/picture/lib/basic/PictureSelector;->create(Landroidx/appcompat/app/AppCompatActivity;)Lcom/luck/picture/lib/basic/PictureSelector;

    move-result-object v1

    .line 156
    invoke-virtual {v1, v2}, Lcom/luck/picture/lib/basic/PictureSelector;->openGallery(I)Lcom/luck/picture/lib/basic/PictureSelectionModel;

    move-result-object v1

    .line 157
    invoke-static {}, Lcom/mycompany/plugins/mediapicker/GlideEngine;->createGlideEngine()Lcom/mycompany/plugins/mediapicker/GlideEngine;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/luck/picture/lib/basic/PictureSelectionModel;->setImageEngine(Lcom/luck/picture/lib/engine/ImageEngine;)Lcom/luck/picture/lib/basic/PictureSelectionModel;

    move-result-object v1

    .line 158
    invoke-virtual {v1, v0}, Lcom/luck/picture/lib/basic/PictureSelectionModel;->setMaxSelectNum(I)Lcom/luck/picture/lib/basic/PictureSelectionModel;

    move-result-object v1

    .line 159
    invoke-virtual {v1, v0}, Lcom/luck/picture/lib/basic/PictureSelectionModel;->setMaxVideoSelectNum(I)Lcom/luck/picture/lib/basic/PictureSelectionModel;

    move-result-object v1

    .line 160
    invoke-virtual {v1, v4}, Lcom/luck/picture/lib/basic/PictureSelectionModel;->setMinSelectNum(I)Lcom/luck/picture/lib/basic/PictureSelectionModel;

    move-result-object v1

    .line 161
    invoke-virtual {v1, v4}, Lcom/luck/picture/lib/basic/PictureSelectionModel;->setMinVideoSelectNum(I)Lcom/luck/picture/lib/basic/PictureSelectionModel;

    move-result-object v1

    .line 162
    invoke-virtual {v1, v7}, Lcom/luck/picture/lib/basic/PictureSelectionModel;->isWithSelectVideoImage(Z)Lcom/luck/picture/lib/basic/PictureSelectionModel;

    move-result-object v1

    .line 163
    invoke-virtual {v1, v4}, Lcom/luck/picture/lib/basic/PictureSelectionModel;->isDisplayCamera(Z)Lcom/luck/picture/lib/basic/PictureSelectionModel;

    move-result-object v1

    .line 164
    invoke-virtual {v1, v5}, Lcom/luck/picture/lib/basic/PictureSelectionModel;->isOriginalControl(Z)Lcom/luck/picture/lib/basic/PictureSelectionModel;

    move-result-object v1

    .line 165
    invoke-virtual {v1, v6}, Lcom/luck/picture/lib/basic/PictureSelectionModel;->setDefaultAlbumName(Ljava/lang/String;)Lcom/luck/picture/lib/basic/PictureSelectionModel;

    move-result-object v1

    .line 166
    invoke-virtual {v1, v5}, Lcom/luck/picture/lib/basic/PictureSelectionModel;->isPageStrategy(Z)Lcom/luck/picture/lib/basic/PictureSelectionModel;

    move-result-object v1

    .line 167
    invoke-virtual {v1, v5}, Lcom/luck/picture/lib/basic/PictureSelectionModel;->isPageSyncAlbumCount(Z)Lcom/luck/picture/lib/basic/PictureSelectionModel;

    move-result-object v1

    if-ne v0, v5, :cond_4

    goto :goto_3

    :cond_4
    const/4 v5, 0x2

    .line 168
    :goto_3
    invoke-virtual {v1, v5}, Lcom/luck/picture/lib/basic/PictureSelectionModel;->setSelectionMode(I)Lcom/luck/picture/lib/basic/PictureSelectionModel;

    move-result-object v0

    new-instance v1, Lcom/mycompany/plugins/mediapicker/CapacitorMediaPickerPlugin$2;

    invoke-direct {v1, p0, p1}, Lcom/mycompany/plugins/mediapicker/CapacitorMediaPickerPlugin$2;-><init>(Lcom/mycompany/plugins/mediapicker/CapacitorMediaPickerPlugin;Ljava/lang/String;)V

    .line 171
    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/basic/PictureSelectionModel;->setSelectLimitTipsListener(Lcom/luck/picture/lib/interfaces/OnSelectLimitTipsListener;)Lcom/luck/picture/lib/basic/PictureSelectionModel;

    move-result-object p1

    new-instance v0, Lcom/mycompany/plugins/mediapicker/CapacitorMediaPickerPlugin$1;

    invoke-direct {v0, p0}, Lcom/mycompany/plugins/mediapicker/CapacitorMediaPickerPlugin$1;-><init>(Lcom/mycompany/plugins/mediapicker/CapacitorMediaPickerPlugin;)V

    .line 182
    invoke-virtual {p1, v0}, Lcom/luck/picture/lib/basic/PictureSelectionModel;->forResult(Lcom/luck/picture/lib/interfaces/OnResultCallbackListener;)V

    return-void
.end method

.method private resolveMediaPath(Landroid/content/Context;Lcom/luck/picture/lib/entity/LocalMedia;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 275
    invoke-virtual {p2}, Lcom/luck/picture/lib/entity/LocalMedia;->isCompressed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/luck/picture/lib/entity/LocalMedia;->getCompressPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 276
    invoke-virtual {p2}, Lcom/luck/picture/lib/entity/LocalMedia;->getCompressPath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 278
    :cond_0
    invoke-virtual {p2}, Lcom/luck/picture/lib/entity/LocalMedia;->getSandboxPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 279
    invoke-virtual {p2}, Lcom/luck/picture/lib/entity/LocalMedia;->getSandboxPath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 281
    :cond_1
    invoke-virtual {p2}, Lcom/luck/picture/lib/entity/LocalMedia;->getRealPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 282
    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Lcom/luck/picture/lib/entity/LocalMedia;->getRealPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 283
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 284
    invoke-virtual {p2}, Lcom/luck/picture/lib/entity/LocalMedia;->getRealPath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 287
    :cond_2
    invoke-virtual {p2}, Lcom/luck/picture/lib/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 288
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 289
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 290
    invoke-direct {p0, p2}, Lcom/mycompany/plugins/mediapicker/CapacitorMediaPickerPlugin;->guessExtension(Lcom/luck/picture/lib/entity/LocalMedia;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lcom/mycompany/plugins/mediapicker/CapacitorMediaPickerPlugin;->copyUriToCache(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public pickMedia(Lcom/getcapacitor/PluginCall;)V
    .locals 6
    .annotation runtime Lcom/getcapacitor/PluginMethod;
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/mycompany/plugins/mediapicker/CapacitorMediaPickerPlugin;->bridge:Lcom/getcapacitor/Bridge;

    invoke-virtual {v0, p1}, Lcom/getcapacitor/Bridge;->saveCall(Lcom/getcapacitor/PluginCall;)V

    .line 66
    invoke-virtual {p1}, Lcom/getcapacitor/PluginCall;->getCallbackId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mycompany/plugins/mediapicker/CapacitorMediaPickerPlugin;->savedCallId:Ljava/lang/String;

    .line 68
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const-string v2, "handlePermissionResult"

    if-lt v0, v1, :cond_3

    .line 69
    invoke-virtual {p0}, Lcom/mycompany/plugins/mediapicker/CapacitorMediaPickerPlugin;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_MEDIA_IMAGES"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    .line 71
    :goto_0
    invoke-virtual {p0}, Lcom/mycompany/plugins/mediapicker/CapacitorMediaPickerPlugin;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "android.permission.READ_MEDIA_VIDEO"

    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    if-nez v0, :cond_2

    .line 74
    const-string v0, "photos"

    invoke-virtual {p0, v0, p1, v2}, Lcom/mycompany/plugins/mediapicker/CapacitorMediaPickerPlugin;->requestPermissionForAlias(Ljava/lang/String;Lcom/getcapacitor/PluginCall;Ljava/lang/String;)V

    return-void

    :cond_2
    if-nez v1, :cond_4

    .line 78
    const-string v0, "video"

    invoke-virtual {p0, v0, p1, v2}, Lcom/mycompany/plugins/mediapicker/CapacitorMediaPickerPlugin;->requestPermissionForAlias(Ljava/lang/String;Lcom/getcapacitor/PluginCall;Ljava/lang/String;)V

    return-void

    .line 82
    :cond_3
    invoke-virtual {p0}, Lcom/mycompany/plugins/mediapicker/CapacitorMediaPickerPlugin;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    .line 84
    const-string v0, "storage"

    invoke-virtual {p0, v0, p1, v2}, Lcom/mycompany/plugins/mediapicker/CapacitorMediaPickerPlugin;->requestPermissionForAlias(Ljava/lang/String;Lcom/getcapacitor/PluginCall;Ljava/lang/String;)V

    return-void

    .line 89
    :cond_4
    invoke-direct {p0, p1}, Lcom/mycompany/plugins/mediapicker/CapacitorMediaPickerPlugin;->launchMediaPicker(Lcom/getcapacitor/PluginCall;)V

    return-void
.end method
