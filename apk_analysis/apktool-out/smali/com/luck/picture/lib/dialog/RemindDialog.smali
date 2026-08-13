.class public Lcom/luck/picture/lib/dialog/RemindDialog;
.super Landroid/app/Dialog;
.source "RemindDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/luck/picture/lib/dialog/RemindDialog$OnDialogClickListener;
    }
.end annotation


# instance fields
.field private final btnOk:Landroid/widget/TextView;

.field private listener:Lcom/luck/picture/lib/dialog/RemindDialog$OnDialogClickListener;

.field private final tvContent:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 23
    sget v0, Lcom/luck/picture/lib/R$style;->Picture_Theme_Dialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 24
    sget p1, Lcom/luck/picture/lib/R$layout;->ps_remind_dialog:I

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/dialog/RemindDialog;->setContentView(I)V

    .line 25
    sget p1, Lcom/luck/picture/lib/R$id;->btnOk:I

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/dialog/RemindDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/luck/picture/lib/dialog/RemindDialog;->btnOk:Landroid/widget/TextView;

    .line 26
    sget v0, Lcom/luck/picture/lib/R$id;->tv_content:I

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/dialog/RemindDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/luck/picture/lib/dialog/RemindDialog;->tvContent:Landroid/widget/TextView;

    .line 27
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    invoke-direct {p0}, Lcom/luck/picture/lib/dialog/RemindDialog;->setDialogSize()V

    return-void
.end method

.method public static buildDialog(Landroid/content/Context;Ljava/lang/String;)Lcom/luck/picture/lib/dialog/RemindDialog;
    .locals 1

    .line 38
    new-instance v0, Lcom/luck/picture/lib/dialog/RemindDialog;

    invoke-direct {v0, p0, p1}, Lcom/luck/picture/lib/dialog/RemindDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method private setDialogSize()V
    .locals 3

    .line 58
    invoke-virtual {p0}, Lcom/luck/picture/lib/dialog/RemindDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    .line 59
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 60
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v1, 0x11

    .line 61
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 62
    invoke-virtual {p0}, Lcom/luck/picture/lib/dialog/RemindDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    sget v2, Lcom/luck/picture/lib/R$style;->PictureThemeDialogWindowStyle:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 63
    invoke-virtual {p0}, Lcom/luck/picture/lib/dialog/RemindDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public static showTipsDialog(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 34
    new-instance v0, Lcom/luck/picture/lib/dialog/RemindDialog;

    invoke-direct {v0, p0, p1}, Lcom/luck/picture/lib/dialog/RemindDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 69
    sget v1, Lcom/luck/picture/lib/R$id;->btnOk:I

    if-ne v0, v1, :cond_1

    .line 70
    iget-object v0, p0, Lcom/luck/picture/lib/dialog/RemindDialog;->listener:Lcom/luck/picture/lib/dialog/RemindDialog$OnDialogClickListener;

    if-eqz v0, :cond_0

    .line 71
    invoke-interface {v0, p1}, Lcom/luck/picture/lib/dialog/RemindDialog$OnDialogClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/luck/picture/lib/dialog/RemindDialog;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setButtonText(Ljava/lang/String;)V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/luck/picture/lib/dialog/RemindDialog;->btnOk:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setButtonTextColor(I)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/luck/picture/lib/dialog/RemindDialog;->btnOk:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/luck/picture/lib/dialog/RemindDialog;->tvContent:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setContentTextColor(I)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/luck/picture/lib/dialog/RemindDialog;->tvContent:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setOnDialogClickListener(Lcom/luck/picture/lib/dialog/RemindDialog$OnDialogClickListener;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/luck/picture/lib/dialog/RemindDialog;->listener:Lcom/luck/picture/lib/dialog/RemindDialog$OnDialogClickListener;

    return-void
.end method
