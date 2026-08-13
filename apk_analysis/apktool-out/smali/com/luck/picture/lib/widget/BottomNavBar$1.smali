.class Lcom/luck/picture/lib/widget/BottomNavBar$1;
.super Ljava/lang/Object;
.source "BottomNavBar.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/widget/BottomNavBar;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/luck/picture/lib/widget/BottomNavBar;


# direct methods
.method constructor <init>(Lcom/luck/picture/lib/widget/BottomNavBar;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/luck/picture/lib/widget/BottomNavBar$1;->this$0:Lcom/luck/picture/lib/widget/BottomNavBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 64
    iget-object p1, p0, Lcom/luck/picture/lib/widget/BottomNavBar$1;->this$0:Lcom/luck/picture/lib/widget/BottomNavBar;

    iget-object p1, p1, Lcom/luck/picture/lib/widget/BottomNavBar;->config:Lcom/luck/picture/lib/config/SelectorConfig;

    iput-boolean p2, p1, Lcom/luck/picture/lib/config/SelectorConfig;->isCheckOriginalImage:Z

    .line 65
    iget-object p1, p0, Lcom/luck/picture/lib/widget/BottomNavBar$1;->this$0:Lcom/luck/picture/lib/widget/BottomNavBar;

    invoke-static {p1}, Lcom/luck/picture/lib/widget/BottomNavBar;->access$000(Lcom/luck/picture/lib/widget/BottomNavBar;)Landroid/widget/CheckBox;

    move-result-object p1

    iget-object v0, p0, Lcom/luck/picture/lib/widget/BottomNavBar$1;->this$0:Lcom/luck/picture/lib/widget/BottomNavBar;

    iget-object v0, v0, Lcom/luck/picture/lib/widget/BottomNavBar;->config:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isCheckOriginalImage:Z

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 66
    iget-object p1, p0, Lcom/luck/picture/lib/widget/BottomNavBar$1;->this$0:Lcom/luck/picture/lib/widget/BottomNavBar;

    iget-object p1, p1, Lcom/luck/picture/lib/widget/BottomNavBar;->bottomNavBarListener:Lcom/luck/picture/lib/widget/BottomNavBar$OnBottomNavBarListener;

    if-eqz p1, :cond_0

    .line 67
    iget-object p1, p0, Lcom/luck/picture/lib/widget/BottomNavBar$1;->this$0:Lcom/luck/picture/lib/widget/BottomNavBar;

    iget-object p1, p1, Lcom/luck/picture/lib/widget/BottomNavBar;->bottomNavBarListener:Lcom/luck/picture/lib/widget/BottomNavBar$OnBottomNavBarListener;

    invoke-virtual {p1}, Lcom/luck/picture/lib/widget/BottomNavBar$OnBottomNavBarListener;->onCheckOriginalChange()V

    if-eqz p2, :cond_0

    .line 68
    iget-object p1, p0, Lcom/luck/picture/lib/widget/BottomNavBar$1;->this$0:Lcom/luck/picture/lib/widget/BottomNavBar;

    iget-object p1, p1, Lcom/luck/picture/lib/widget/BottomNavBar;->config:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {p1}, Lcom/luck/picture/lib/config/SelectorConfig;->getSelectCount()I

    move-result p1

    if-nez p1, :cond_0

    .line 69
    iget-object p1, p0, Lcom/luck/picture/lib/widget/BottomNavBar$1;->this$0:Lcom/luck/picture/lib/widget/BottomNavBar;

    iget-object p1, p1, Lcom/luck/picture/lib/widget/BottomNavBar;->bottomNavBarListener:Lcom/luck/picture/lib/widget/BottomNavBar$OnBottomNavBarListener;

    invoke-virtual {p1}, Lcom/luck/picture/lib/widget/BottomNavBar$OnBottomNavBarListener;->onFirstCheckOriginalSelectedChange()V

    :cond_0
    return-void
.end method
