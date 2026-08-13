.class public Lcom/luck/picture/lib/permissions/PermissionConfig;
.super Ljava/lang/Object;
.source "PermissionConfig.java"


# static fields
.field public static final CAMERA:[Ljava/lang/String;

.field public static CURRENT_REQUEST_PERMISSION:[Ljava/lang/String; = null

.field public static final READ_EXTERNAL_STORAGE:Ljava/lang/String; = "android.permission.READ_EXTERNAL_STORAGE"

.field public static final READ_MEDIA_AUDIO:Ljava/lang/String; = "android.permission.READ_MEDIA_AUDIO"

.field public static final READ_MEDIA_IMAGES:Ljava/lang/String; = "android.permission.READ_MEDIA_IMAGES"

.field public static final READ_MEDIA_VIDEO:Ljava/lang/String; = "android.permission.READ_MEDIA_VIDEO"

.field public static final READ_MEDIA_VISUAL_USER_SELECTED:Ljava/lang/String; = "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"

.field public static final WRITE_EXTERNAL_STORAGE:Ljava/lang/String; = "android.permission.WRITE_EXTERNAL_STORAGE"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 33
    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/luck/picture/lib/permissions/PermissionConfig;->CURRENT_REQUEST_PERMISSION:[Ljava/lang/String;

    .line 38
    const-string v0, "android.permission.CAMERA"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/luck/picture/lib/permissions/PermissionConfig;->CAMERA:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getReadPermissionArray(Landroid/content/Context;I)[Ljava/lang/String;
    .locals 10

    .line 44
    invoke-static {}, Lcom/luck/picture/lib/utils/SdkVersionUtils;->isUPSIDE_DOWN_CAKE()Z

    move-result v0

    const-string v1, "android.permission.READ_MEDIA_AUDIO"

    const-string v2, "android.permission.READ_MEDIA_VIDEO"

    const-string v3, "android.permission.READ_MEDIA_IMAGES"

    const/16 v4, 0x21

    const-string v5, "android.permission.READ_EXTERNAL_STORAGE"

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v0, :cond_a

    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 46
    invoke-static {}, Lcom/luck/picture/lib/config/SelectMimeType;->ofImage()I

    move-result v0

    const-string v8, "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"

    const/16 v9, 0x22

    if-ne p1, v0, :cond_2

    if-lt p0, v9, :cond_0

    .line 48
    filled-new-array {v8, v3}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-ne p0, v4, :cond_1

    .line 50
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 52
    :cond_1
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 54
    :cond_2
    invoke-static {}, Lcom/luck/picture/lib/config/SelectMimeType;->ofVideo()I

    move-result v0

    if-ne p1, v0, :cond_5

    if-lt p0, v9, :cond_3

    .line 56
    filled-new-array {v8, v2}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    if-ne p0, v4, :cond_4

    .line 58
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 60
    :cond_4
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 62
    :cond_5
    invoke-static {}, Lcom/luck/picture/lib/config/SelectMimeType;->ofAudio()I

    move-result v0

    if-ne p1, v0, :cond_7

    if-lt p0, v4, :cond_6

    .line 64
    new-array p0, v7, [Ljava/lang/String;

    aput-object v1, p0, v6

    goto :goto_0

    .line 65
    :cond_6
    new-array p0, v7, [Ljava/lang/String;

    aput-object v5, p0, v6

    :goto_0
    return-object p0

    :cond_7
    if-lt p0, v9, :cond_8

    .line 68
    filled-new-array {v8, v3, v2}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    if-ne p0, v4, :cond_9

    .line 70
    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 72
    :cond_9
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 75
    :cond_a
    invoke-static {}, Lcom/luck/picture/lib/utils/SdkVersionUtils;->isTIRAMISU()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 77
    invoke-static {}, Lcom/luck/picture/lib/config/SelectMimeType;->ofImage()I

    move-result v0

    if-ne p1, v0, :cond_c

    if-lt p0, v4, :cond_b

    .line 79
    new-array p0, v7, [Ljava/lang/String;

    aput-object v3, p0, v6

    goto :goto_1

    .line 80
    :cond_b
    new-array p0, v7, [Ljava/lang/String;

    aput-object v5, p0, v6

    :goto_1
    return-object p0

    .line 81
    :cond_c
    invoke-static {}, Lcom/luck/picture/lib/config/SelectMimeType;->ofVideo()I

    move-result v0

    if-ne p1, v0, :cond_e

    if-lt p0, v4, :cond_d

    .line 83
    new-array p0, v7, [Ljava/lang/String;

    aput-object v2, p0, v6

    goto :goto_2

    .line 84
    :cond_d
    new-array p0, v7, [Ljava/lang/String;

    aput-object v5, p0, v6

    :goto_2
    return-object p0

    .line 85
    :cond_e
    invoke-static {}, Lcom/luck/picture/lib/config/SelectMimeType;->ofAudio()I

    move-result v0

    if-ne p1, v0, :cond_10

    if-lt p0, v4, :cond_f

    .line 87
    new-array p0, v7, [Ljava/lang/String;

    aput-object v1, p0, v6

    goto :goto_3

    .line 88
    :cond_f
    new-array p0, v7, [Ljava/lang/String;

    aput-object v5, p0, v6

    :goto_3
    return-object p0

    :cond_10
    if-lt p0, v4, :cond_11

    const/4 p0, 0x2

    .line 91
    new-array p0, p0, [Ljava/lang/String;

    aput-object v3, p0, v6

    aput-object v2, p0, v7

    goto :goto_4

    .line 92
    :cond_11
    new-array p0, v7, [Ljava/lang/String;

    aput-object v5, p0, v6

    :goto_4
    return-object p0

    .line 95
    :cond_12
    const-string p0, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v5, p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
