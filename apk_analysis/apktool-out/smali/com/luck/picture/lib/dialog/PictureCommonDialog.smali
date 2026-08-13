.class public Lcom/luck/picture/lib/dialog/PictureCommonDialog;
.super Landroid/app/Dialog;
.source "PictureCommonDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/luck/picture/lib/dialog/PictureCommonDialog$OnDialogEventListener;
    }
.end annotation


# instance fields
.field private eventListener:Lcom/luck/picture/lib/dialog/PictureCommonDialog$OnDialogEventListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 28
    sget v0, Lcom/luck/picture/lib/R$style;->Picture_Theme_Dialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 29
    sget p1, Lcom/luck/picture/lib/R$layout;->ps_common_dialog:I

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/dialog/PictureCommonDialog;->setContentView(I)V

    .line 30
    sget p1, Lcom/luck/picture/lib/R$id;->btn_cancel:I

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/dialog/PictureCommonDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 31
    sget v0, Lcom/luck/picture/lib/R$id;->btn_commit:I

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/dialog/PictureCommonDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 32
    sget v1, Lcom/luck/picture/lib/R$id;->tvTitle:I

    invoke-virtual {p0, v1}, Lcom/luck/picture/lib/dialog/PictureCommonDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 33
    sget v2, Lcom/luck/picture/lib/R$id;->tv_content:I

    invoke-virtual {p0, v2}, Lcom/luck/picture/lib/dialog/PictureCommonDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 34
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    invoke-direct {p0}, Lcom/luck/picture/lib/dialog/PictureCommonDialog;->setDialogSize()V

    return-void
.end method

.method private setDialogSize()V
    .locals 3

    .line 42
    invoke-virtual {p0}, Lcom/luck/picture/lib/dialog/PictureCommonDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    .line 43
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 44
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v1, 0x11

    .line 45
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 46
    invoke-virtual {p0}, Lcom/luck/picture/lib/dialog/PictureCommonDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    sget v2, Lcom/luck/picture/lib/R$style;->PictureThemeDialogWindowStyle:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 47
    invoke-virtual {p0}, Lcom/luck/picture/lib/dialog/PictureCommonDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public static showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/luck/picture/lib/dialog/PictureCommonDialog;
    .locals 1

    .line 22
    new-instance v0, Lcom/luck/picture/lib/dialog/PictureCommonDialog;

    invoke-direct {v0, p0, p1, p2}, Lcom/luck/picture/lib/dialog/PictureCommonDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual {v0}, Lcom/luck/picture/lib/dialog/PictureCommonDialog;->show()V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 53
    sget v0, Lcom/luck/picture/lib/R$id;->btn_cancel:I

    if-ne p1, v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/luck/picture/lib/dialog/PictureCommonDialog;->dismiss()V

    goto :goto_0

    .line 55
    :cond_0
    sget v0, Lcom/luck/picture/lib/R$id;->btn_commit:I

    if-ne p1, v0, :cond_1

    .line 56
    invoke-virtual {p0}, Lcom/luck/picture/lib/dialog/PictureCommonDialog;->dismiss()V

    .line 57
    iget-object p1, p0, Lcom/luck/picture/lib/dialog/PictureCommonDialog;->eventListener:Lcom/luck/picture/lib/dialog/PictureCommonDialog$OnDialogEventListener;

    if-eqz p1, :cond_1

    .line 58
    invoke-interface {p1}, Lcom/luck/picture/lib/dialog/PictureCommonDialog$OnDialogEventListener;->onConfirm()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setOnDialogEventListener(Lcom/luck/picture/lib/dialog/PictureCommonDialog$OnDialogEventListener;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/luck/picture/lib/dialog/PictureCommonDialog;->eventListener:Lcom/luck/picture/lib/dialog/PictureCommonDialog$OnDialogEventListener;

    return-void
.end method
