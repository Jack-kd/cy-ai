.class public Lcom/luck/picture/lib/PictureOnlyCameraFragment;
.super Lcom/luck/picture/lib/basic/PictureCommonFragment;
.source "PictureOnlyCameraFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "PictureOnlyCameraFragment"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/luck/picture/lib/PictureOnlyCameraFragment;
    .locals 1

    .line 28
    new-instance v0, Lcom/luck/picture/lib/PictureOnlyCameraFragment;

    invoke-direct {v0}, Lcom/luck/picture/lib/PictureOnlyCameraFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public dispatchCameraMediaResult(Lcom/luck/picture/lib/entity/LocalMedia;)V
    .locals 1

    const/4 v0, 0x0

    .line 53
    invoke-virtual {p0, p1, v0}, Lcom/luck/picture/lib/PictureOnlyCameraFragment;->confirmSelect(Lcom/luck/picture/lib/entity/LocalMedia;Z)I

    move-result p1

    if-nez p1, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureOnlyCameraFragment;->dispatchTransformResult()V

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureOnlyCameraFragment;->onKeyBackFragmentFinish()V

    :goto_0
    return-void
.end method

.method public getFragmentTag()Ljava/lang/String;
    .locals 1

    .line 33
    sget-object v0, Lcom/luck/picture/lib/PictureOnlyCameraFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceId()I
    .locals 1

    .line 38
    sget v0, Lcom/luck/picture/lib/R$layout;->ps_empty:I

    return v0
.end method

.method public handlePermissionSettingResult([Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 71
    invoke-virtual {p0, v1, v0}, Lcom/luck/picture/lib/PictureOnlyCameraFragment;->onPermissionExplainEvent(Z[Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/luck/picture/lib/PictureOnlyCameraFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->onPermissionsEventListener:Lcom/luck/picture/lib/interfaces/OnPermissionsInterceptListener;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/luck/picture/lib/PictureOnlyCameraFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->onPermissionsEventListener:Lcom/luck/picture/lib/interfaces/OnPermissionsInterceptListener;

    .line 75
    invoke-interface {v0, p0, p1}, Lcom/luck/picture/lib/interfaces/OnPermissionsInterceptListener;->hasPermissions(Landroidx/fragment/app/Fragment;[Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureOnlyCameraFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/luck/picture/lib/permissions/PermissionChecker;->isCheckCamera(Landroid/content/Context;)Z

    move-result p1

    .line 78
    invoke-static {}, Lcom/luck/picture/lib/utils/SdkVersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureOnlyCameraFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/luck/picture/lib/permissions/PermissionChecker;->isCheckWriteExternalStorage(Landroid/content/Context;)Z

    move-result p1

    :goto_0
    if-eqz p1, :cond_2

    .line 84
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureOnlyCameraFragment;->openSelectedCamera()V

    goto :goto_2

    .line 86
    :cond_2
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureOnlyCameraFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/luck/picture/lib/permissions/PermissionChecker;->isCheckCamera(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 87
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureOnlyCameraFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/luck/picture/lib/R$string;->ps_camera:I

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PictureOnlyCameraFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/luck/picture/lib/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 89
    :cond_3
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureOnlyCameraFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/luck/picture/lib/permissions/PermissionChecker;->isCheckWriteExternalStorage(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 90
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureOnlyCameraFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/luck/picture/lib/R$string;->ps_jurisdiction:I

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PictureOnlyCameraFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/luck/picture/lib/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 93
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureOnlyCameraFragment;->onKeyBackFragmentFinish()V

    .line 95
    :goto_2
    new-array p1, v1, [Ljava/lang/String;

    sput-object p1, Lcom/luck/picture/lib/permissions/PermissionConfig;->CURRENT_REQUEST_PERMISSION:[Ljava/lang/String;

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 63
    invoke-super {p0, p1, p2, p3}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onActivityResult(IILandroid/content/Intent;)V

    if-nez p2, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureOnlyCameraFragment;->onKeyBackFragmentFinish()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 44
    invoke-super {p0, p1, p2}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    if-nez p2, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureOnlyCameraFragment;->openSelectedCamera()V

    :cond_0
    return-void
.end method
