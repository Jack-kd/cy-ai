.class public Lcom/luck/picture/lib/dialog/PictureLoadingDialog;
.super Landroid/app/Dialog;
.source "PictureLoadingDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 16
    sget v0, Lcom/luck/picture/lib/R$style;->Picture_Theme_AlertDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x1

    .line 17
    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/dialog/PictureLoadingDialog;->setCancelable(Z)V

    const/4 p1, 0x0

    .line 18
    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/dialog/PictureLoadingDialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method private setDialogSize()V
    .locals 3

    .line 28
    invoke-virtual {p0}, Lcom/luck/picture/lib/dialog/PictureLoadingDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    .line 29
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 30
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v1, 0x11

    .line 31
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 32
    invoke-virtual {p0}, Lcom/luck/picture/lib/dialog/PictureLoadingDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    sget v2, Lcom/luck/picture/lib/R$style;->PictureThemeDialogWindowStyle:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 33
    invoke-virtual {p0}, Lcom/luck/picture/lib/dialog/PictureLoadingDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 22
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 23
    sget p1, Lcom/luck/picture/lib/R$layout;->ps_alert_dialog:I

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/dialog/PictureLoadingDialog;->setContentView(I)V

    .line 24
    invoke-direct {p0}, Lcom/luck/picture/lib/dialog/PictureLoadingDialog;->setDialogSize()V

    return-void
.end method
