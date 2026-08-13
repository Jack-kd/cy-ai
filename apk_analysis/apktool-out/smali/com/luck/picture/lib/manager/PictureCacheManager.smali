.class public Lcom/luck/picture/lib/manager/PictureCacheManager;
.super Ljava/lang/Object;
.source "PictureCacheManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteAllCacheDirFile(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 118
    invoke-static {p0, v0, v1}, Lcom/luck/picture/lib/manager/PictureCacheManager;->deleteAllCacheDirFile(Landroid/content/Context;ZLcom/luck/picture/lib/interfaces/OnCallbackListener;)V

    return-void
.end method

.method public static deleteAllCacheDirFile(Landroid/content/Context;Lcom/luck/picture/lib/interfaces/OnCallbackListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/luck/picture/lib/interfaces/OnCallbackListener<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 127
    invoke-static {p0, v0, p1}, Lcom/luck/picture/lib/manager/PictureCacheManager;->deleteAllCacheDirFile(Landroid/content/Context;ZLcom/luck/picture/lib/interfaces/OnCallbackListener;)V

    return-void
.end method

.method private static deleteAllCacheDirFile(Landroid/content/Context;ZLcom/luck/picture/lib/interfaces/OnCallbackListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Lcom/luck/picture/lib/interfaces/OnCallbackListener<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 146
    sget-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 148
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 150
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 151
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 152
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz p1, :cond_0

    .line 155
    new-instance v5, Lcom/luck/picture/lib/manager/PictureCacheManager$2;

    invoke-direct {v5, p0, v4}, Lcom/luck/picture/lib/manager/PictureCacheManager$2;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v5}, Lcom/luck/picture/lib/thread/PictureThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    .line 163
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/luck/picture/lib/interfaces/OnCallbackListener;->onCall(Ljava/lang/Object;)V

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 172
    :cond_2
    sget-object v0, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 174
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 176
    array-length v2, v0

    move v3, v1

    :goto_2
    if-ge v3, v2, :cond_5

    aget-object v4, v0, v3

    .line 177
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 178
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz p1, :cond_3

    .line 181
    new-instance v5, Lcom/luck/picture/lib/manager/PictureCacheManager$3;

    invoke-direct {v5, p0, v4}, Lcom/luck/picture/lib/manager/PictureCacheManager$3;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v5}, Lcom/luck/picture/lib/thread/PictureThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_3
    if-eqz p2, :cond_4

    .line 189
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/luck/picture/lib/interfaces/OnCallbackListener;->onCall(Ljava/lang/Object;)V

    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 198
    :cond_5
    sget-object v0, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 200
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 202
    array-length v2, v0

    :goto_4
    if-ge v1, v2, :cond_8

    aget-object v3, v0, v1

    .line 203
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 204
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_7

    if-eqz p1, :cond_6

    .line 207
    new-instance v4, Lcom/luck/picture/lib/manager/PictureCacheManager$4;

    invoke-direct {v4, p0, v3}, Lcom/luck/picture/lib/manager/PictureCacheManager$4;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v4}, Lcom/luck/picture/lib/thread/PictureThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_5

    :cond_6
    if-eqz p2, :cond_7

    .line 215
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Lcom/luck/picture/lib/interfaces/OnCallbackListener;->onCall(Ljava/lang/Object;)V

    :cond_7
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    return-void
.end method

.method public static deleteAllCacheDirRefreshFile(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 136
    invoke-static {p0, v0, v1}, Lcom/luck/picture/lib/manager/PictureCacheManager;->deleteAllCacheDirFile(Landroid/content/Context;ZLcom/luck/picture/lib/interfaces/OnCallbackListener;)V

    return-void
.end method

.method public static deleteCacheDirFile(Landroid/content/Context;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 64
    invoke-static {p0, p1, v0, v1}, Lcom/luck/picture/lib/manager/PictureCacheManager;->deleteCacheDirFile(Landroid/content/Context;IZLcom/luck/picture/lib/interfaces/OnCallbackListener;)V

    return-void
.end method

.method public static deleteCacheDirFile(Landroid/content/Context;ILcom/luck/picture/lib/interfaces/OnCallbackListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/luck/picture/lib/interfaces/OnCallbackListener<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 74
    invoke-static {p0, p1, v0, p2}, Lcom/luck/picture/lib/manager/PictureCacheManager;->deleteCacheDirFile(Landroid/content/Context;IZLcom/luck/picture/lib/interfaces/OnCallbackListener;)V

    return-void
.end method

.method private static deleteCacheDirFile(Landroid/content/Context;IZLcom/luck/picture/lib/interfaces/OnCallbackListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IZ",
            "Lcom/luck/picture/lib/interfaces/OnCallbackListener<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 84
    invoke-static {}, Lcom/luck/picture/lib/config/SelectMimeType;->ofImage()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 85
    sget-object p1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object p1, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    .line 84
    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 87
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 89
    array-length v0, p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    .line 90
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 91
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz p2, :cond_1

    .line 94
    new-instance v3, Lcom/luck/picture/lib/manager/PictureCacheManager$1;

    invoke-direct {v3, p0, v2}, Lcom/luck/picture/lib/manager/PictureCacheManager$1;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v3}, Lcom/luck/picture/lib/thread/PictureThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_1
    if-eqz p3, :cond_2

    .line 102
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v2}, Lcom/luck/picture/lib/interfaces/OnCallbackListener;->onCall(Ljava/lang/Object;)V

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public static deleteCacheDirFile(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 24
    invoke-static {p0, v0}, Lcom/luck/picture/lib/manager/PictureCacheManager;->deleteCacheDirFile(Ljava/lang/String;Lcom/luck/picture/lib/interfaces/OnCallbackListener;)V

    return-void
.end method

.method public static deleteCacheDirFile(Ljava/lang/String;Lcom/luck/picture/lib/interfaces/OnCallbackListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/luck/picture/lib/interfaces/OnCallbackListener<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 31
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 34
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 35
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 36
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    .line 39
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/luck/picture/lib/interfaces/OnCallbackListener;->onCall(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static deleteCacheRefreshDirFile(Landroid/content/Context;I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 54
    invoke-static {p0, p1, v0, v1}, Lcom/luck/picture/lib/manager/PictureCacheManager;->deleteCacheDirFile(Landroid/content/Context;IZLcom/luck/picture/lib/interfaces/OnCallbackListener;)V

    return-void
.end method
