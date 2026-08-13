.class public Ltop/zibin/luban/Luban;
.super Ljava/lang/Object;
.source "Luban.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/zibin/luban/Luban$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_DISK_CACHE_DIR:Ljava/lang/String; = "luban_disk_cache"

.field private static final KEY_SOURCE:Ljava/lang/String; = "source"

.field private static final MSG_COMPRESS_ERROR:I = 0x2

.field private static final MSG_COMPRESS_START:I = 0x1

.field private static final MSG_COMPRESS_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Luban"


# instance fields
.field private focusAlpha:Z

.field private isUseIOBufferPool:Z

.field private mCompressListener:Ltop/zibin/luban/OnCompressListener;

.field private mCompressionPredicate:Ltop/zibin/luban/CompressionPredicate;

.field private mHandler:Landroid/os/Handler;

.field private mLeastCompressSize:I

.field private mNewCompressListener:Ltop/zibin/luban/OnNewCompressListener;

.field private mRenameListener:Ltop/zibin/luban/OnRenameListener;

.field private mStreamProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltop/zibin/luban/InputStreamProvider;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetDir:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ltop/zibin/luban/Luban$Builder;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {p1}, Ltop/zibin/luban/Luban$Builder;->access$000(Ltop/zibin/luban/Luban$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltop/zibin/luban/Luban;->mTargetDir:Ljava/lang/String;

    .line 44
    invoke-static {p1}, Ltop/zibin/luban/Luban$Builder;->access$100(Ltop/zibin/luban/Luban$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Ltop/zibin/luban/Luban;->focusAlpha:Z

    .line 45
    invoke-static {p1}, Ltop/zibin/luban/Luban$Builder;->access$200(Ltop/zibin/luban/Luban$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Ltop/zibin/luban/Luban;->isUseIOBufferPool:Z

    .line 46
    invoke-static {p1}, Ltop/zibin/luban/Luban$Builder;->access$300(Ltop/zibin/luban/Luban$Builder;)Ltop/zibin/luban/OnRenameListener;

    move-result-object v0

    iput-object v0, p0, Ltop/zibin/luban/Luban;->mRenameListener:Ltop/zibin/luban/OnRenameListener;

    .line 47
    invoke-static {p1}, Ltop/zibin/luban/Luban$Builder;->access$400(Ltop/zibin/luban/Luban$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ltop/zibin/luban/Luban;->mStreamProviders:Ljava/util/List;

    .line 48
    invoke-static {p1}, Ltop/zibin/luban/Luban$Builder;->access$500(Ltop/zibin/luban/Luban$Builder;)Ltop/zibin/luban/OnCompressListener;

    move-result-object v0

    iput-object v0, p0, Ltop/zibin/luban/Luban;->mCompressListener:Ltop/zibin/luban/OnCompressListener;

    .line 49
    invoke-static {p1}, Ltop/zibin/luban/Luban$Builder;->access$600(Ltop/zibin/luban/Luban$Builder;)Ltop/zibin/luban/OnNewCompressListener;

    move-result-object v0

    iput-object v0, p0, Ltop/zibin/luban/Luban;->mNewCompressListener:Ltop/zibin/luban/OnNewCompressListener;

    .line 50
    invoke-static {p1}, Ltop/zibin/luban/Luban$Builder;->access$700(Ltop/zibin/luban/Luban$Builder;)I

    move-result v0

    iput v0, p0, Ltop/zibin/luban/Luban;->mLeastCompressSize:I

    .line 51
    invoke-static {p1}, Ltop/zibin/luban/Luban$Builder;->access$800(Ltop/zibin/luban/Luban$Builder;)Ltop/zibin/luban/CompressionPredicate;

    move-result-object p1

    iput-object p1, p0, Ltop/zibin/luban/Luban;->mCompressionPredicate:Ltop/zibin/luban/CompressionPredicate;

    .line 52
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Ltop/zibin/luban/Luban;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Ltop/zibin/luban/Luban$Builder;Ltop/zibin/luban/Luban$1;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Ltop/zibin/luban/Luban;-><init>(Ltop/zibin/luban/Luban$Builder;)V

    return-void
.end method

.method static synthetic access$1000(Ltop/zibin/luban/Luban;Landroid/content/Context;Ltop/zibin/luban/InputStreamProvider;)Ljava/io/File;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ltop/zibin/luban/Luban;->compress(Landroid/content/Context;Ltop/zibin/luban/InputStreamProvider;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Ltop/zibin/luban/Luban;Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Ltop/zibin/luban/Luban;->launch(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1400(Ltop/zibin/luban/Luban;Ltop/zibin/luban/InputStreamProvider;Landroid/content/Context;)Ljava/io/File;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ltop/zibin/luban/Luban;->get(Ltop/zibin/luban/InputStreamProvider;Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(Ltop/zibin/luban/Luban;Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1}, Ltop/zibin/luban/Luban;->get(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Ltop/zibin/luban/Luban;)Landroid/os/Handler;
    .locals 0

    .line 23
    iget-object p0, p0, Ltop/zibin/luban/Luban;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private compress(Landroid/content/Context;Ltop/zibin/luban/InputStreamProvider;)Ljava/io/File;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    :try_start_0
    invoke-direct {p0, p1, p2}, Ltop/zibin/luban/Luban;->compressReal(Landroid/content/Context;Ltop/zibin/luban/InputStreamProvider;)Ljava/io/File;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    invoke-interface {p2}, Ltop/zibin/luban/InputStreamProvider;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {p2}, Ltop/zibin/luban/InputStreamProvider;->close()V

    .line 197
    throw p1
.end method

.method private compressReal(Landroid/content/Context;Ltop/zibin/luban/InputStreamProvider;)Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    sget-object v0, Ltop/zibin/luban/Checker;->SINGLE:Ltop/zibin/luban/Checker;

    invoke-virtual {v0, p2}, Ltop/zibin/luban/Checker;->extSuffix(Ltop/zibin/luban/InputStreamProvider;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ltop/zibin/luban/Luban;->getImageCacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 204
    invoke-interface {p2}, Ltop/zibin/luban/InputStreamProvider;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ltop/zibin/luban/Checker;->isContent(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ltop/zibin/luban/InputStreamProvider;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p1, v1}, Ltop/zibin/luban/LubanUtils;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ltop/zibin/luban/InputStreamProvider;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 205
    :goto_0
    iget-object v2, p0, Ltop/zibin/luban/Luban;->mRenameListener:Ltop/zibin/luban/OnRenameListener;

    if-eqz v2, :cond_1

    .line 206
    invoke-interface {v2, v1}, Ltop/zibin/luban/OnRenameListener;->rename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 207
    invoke-direct {p0, p1, v0}, Ltop/zibin/luban/Luban;->getImageCustomFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 210
    :cond_1
    iget-object p1, p0, Ltop/zibin/luban/Luban;->mCompressionPredicate:Ltop/zibin/luban/CompressionPredicate;

    if-eqz p1, :cond_3

    .line 211
    invoke-interface {p1, v1}, Ltop/zibin/luban/CompressionPredicate;->apply(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Ltop/zibin/luban/Checker;->SINGLE:Ltop/zibin/luban/Checker;

    iget v2, p0, Ltop/zibin/luban/Luban;->mLeastCompressSize:I

    .line 212
    invoke-virtual {p1, v2, v1}, Ltop/zibin/luban/Checker;->needCompress(ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 213
    new-instance p1, Ltop/zibin/luban/Engine;

    iget-boolean v1, p0, Ltop/zibin/luban/Luban;->focusAlpha:Z

    invoke-direct {p1, p2, v0, v1}, Ltop/zibin/luban/Engine;-><init>(Ltop/zibin/luban/InputStreamProvider;Ljava/io/File;Z)V

    invoke-virtual {p1}, Ltop/zibin/luban/Engine;->compress()Ljava/io/File;

    move-result-object p1

    goto :goto_1

    .line 216
    :cond_2
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 219
    :cond_3
    sget-object p1, Ltop/zibin/luban/Checker;->SINGLE:Ltop/zibin/luban/Checker;

    iget v2, p0, Ltop/zibin/luban/Luban;->mLeastCompressSize:I

    invoke-virtual {p1, v2, v1}, Ltop/zibin/luban/Checker;->needCompress(ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 220
    new-instance p1, Ltop/zibin/luban/Engine;

    iget-boolean v1, p0, Ltop/zibin/luban/Luban;->focusAlpha:Z

    invoke-direct {p1, p2, v0, v1}, Ltop/zibin/luban/Engine;-><init>(Ltop/zibin/luban/InputStreamProvider;Ljava/io/File;Z)V

    invoke-virtual {p1}, Ltop/zibin/luban/Engine;->compress()Ljava/io/File;

    move-result-object p1

    goto :goto_1

    .line 223
    :cond_4
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_1
    return-object p1
.end method

.method private get(Ltop/zibin/luban/InputStreamProvider;Landroid/content/Context;)Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    :try_start_0
    new-instance v0, Ltop/zibin/luban/Engine;

    sget-object v1, Ltop/zibin/luban/Checker;->SINGLE:Ltop/zibin/luban/Checker;

    invoke-virtual {v1, p1}, Ltop/zibin/luban/Checker;->extSuffix(Ltop/zibin/luban/InputStreamProvider;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Ltop/zibin/luban/Luban;->getImageCacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    iget-boolean v1, p0, Ltop/zibin/luban/Luban;->focusAlpha:Z

    invoke-direct {v0, p1, p2, v1}, Ltop/zibin/luban/Engine;-><init>(Ltop/zibin/luban/InputStreamProvider;Ljava/io/File;Z)V

    invoke-virtual {v0}, Ltop/zibin/luban/Engine;->compress()Ljava/io/File;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    invoke-interface {p1}, Ltop/zibin/luban/InputStreamProvider;->close()V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Ltop/zibin/luban/InputStreamProvider;->close()V

    .line 177
    throw p2
.end method

.method private get(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 182
    iget-object v1, p0, Ltop/zibin/luban/Luban;->mStreamProviders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 184
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 185
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltop/zibin/luban/InputStreamProvider;

    invoke-direct {p0, p1, v2}, Ltop/zibin/luban/Luban;->compress(Landroid/content/Context;Ltop/zibin/luban/InputStreamProvider;)Ljava/io/File;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getImageCacheDir(Landroid/content/Context;)Ljava/io/File;
    .locals 1

    .line 95
    const-string v0, "luban_disk_cache"

    invoke-static {p1, v0}, Ltop/zibin/luban/Luban;->getImageCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method private static getImageCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 107
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 109
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 110
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    return-object v0

    :cond_1
    return-object v1

    :cond_2
    const/4 p0, 0x6

    .line 116
    const-string p1, "Luban"

    invoke-static {p1, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 117
    const-string p0, "default disk cache dir is null"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v0
.end method

.method private getImageCacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .line 65
    iget-object v0, p0, Ltop/zibin/luban/Luban;->mTargetDir:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-direct {p0, p1}, Ltop/zibin/luban/Luban;->getImageCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltop/zibin/luban/Luban;->mTargetDir:Ljava/lang/String;

    .line 69
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Ltop/zibin/luban/Luban;->mTargetDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 71
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p2, ".jpg"

    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 74
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p2
.end method

.method private getImageCustomFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 78
    iget-object v0, p0, Ltop/zibin/luban/Luban;->mTargetDir:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-direct {p0, p1}, Ltop/zibin/luban/Luban;->getImageCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltop/zibin/luban/Luban;->mTargetDir:Ljava/lang/String;

    .line 82
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Ltop/zibin/luban/Luban;->mTargetDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 84
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p2
.end method

.method private launch(Landroid/content/Context;)V
    .locals 4

    .line 126
    iget-object v0, p0, Ltop/zibin/luban/Luban;->mStreamProviders:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 136
    :cond_0
    iget-object v0, p0, Ltop/zibin/luban/Luban;->mStreamProviders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 138
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 139
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltop/zibin/luban/InputStreamProvider;

    .line 141
    sget-object v2, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v3, Ltop/zibin/luban/Luban$1;

    invoke-direct {v3, p0, p1, v1}, Ltop/zibin/luban/Luban$1;-><init>(Ltop/zibin/luban/Luban;Landroid/content/Context;Ltop/zibin/luban/InputStreamProvider;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 165
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void

    .line 127
    :cond_2
    :goto_1
    iget-object p1, p0, Ltop/zibin/luban/Luban;->mCompressListener:Ltop/zibin/luban/OnCompressListener;

    const-string v0, "image file cannot be null"

    if-eqz p1, :cond_3

    .line 128
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    const/4 v2, -0x1

    invoke-interface {p1, v2, v1}, Ltop/zibin/luban/OnCompressListener;->onError(ILjava/lang/Throwable;)V

    .line 130
    :cond_3
    iget-object p1, p0, Ltop/zibin/luban/Luban;->mNewCompressListener:Ltop/zibin/luban/OnNewCompressListener;

    if-eqz p1, :cond_4

    .line 131
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    const-string v0, ""

    invoke-interface {p1, v0, v1}, Ltop/zibin/luban/OnNewCompressListener;->onError(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    return-void
.end method

.method public static with(Landroid/content/Context;)Ltop/zibin/luban/Luban$Builder;
    .locals 1

    .line 56
    new-instance v0, Ltop/zibin/luban/Luban$Builder;

    invoke-direct {v0, p0}, Ltop/zibin/luban/Luban$Builder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    .line 233
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "source"

    if-eqz v0, :cond_4

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 251
    :cond_0
    iget-object v0, p0, Ltop/zibin/luban/Luban;->mCompressListener:Ltop/zibin/luban/OnCompressListener;

    if-eqz v0, :cond_1

    .line 252
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Throwable;

    invoke-interface {v0, v2, v3}, Ltop/zibin/luban/OnCompressListener;->onError(ILjava/lang/Throwable;)V

    .line 254
    :cond_1
    iget-object v0, p0, Ltop/zibin/luban/Luban;->mNewCompressListener:Ltop/zibin/luban/OnNewCompressListener;

    if-eqz v0, :cond_6

    .line 255
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Throwable;

    invoke-interface {v0, v1, p1}, Ltop/zibin/luban/OnNewCompressListener;->onError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 235
    :cond_2
    iget-object p1, p0, Ltop/zibin/luban/Luban;->mCompressListener:Ltop/zibin/luban/OnCompressListener;

    if-eqz p1, :cond_3

    .line 236
    invoke-interface {p1}, Ltop/zibin/luban/OnCompressListener;->onStart()V

    .line 238
    :cond_3
    iget-object p1, p0, Ltop/zibin/luban/Luban;->mNewCompressListener:Ltop/zibin/luban/OnNewCompressListener;

    if-eqz p1, :cond_6

    .line 239
    invoke-interface {p1}, Ltop/zibin/luban/OnNewCompressListener;->onStart()V

    goto :goto_0

    .line 243
    :cond_4
    iget-object v0, p0, Ltop/zibin/luban/Luban;->mCompressListener:Ltop/zibin/luban/OnCompressListener;

    if-eqz v0, :cond_5

    .line 244
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/io/File;

    invoke-interface {v0, v2, v3}, Ltop/zibin/luban/OnCompressListener;->onSuccess(ILjava/io/File;)V

    .line 246
    :cond_5
    iget-object v0, p0, Ltop/zibin/luban/Luban;->mNewCompressListener:Ltop/zibin/luban/OnNewCompressListener;

    if-eqz v0, :cond_6

    .line 247
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/io/File;

    invoke-interface {v0, v1, p1}, Ltop/zibin/luban/OnNewCompressListener;->onSuccess(Ljava/lang/String;Ljava/io/File;)V

    :cond_6
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
