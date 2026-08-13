.class Lcom/mycompany/plugins/mediapicker/CapacitorMediaPickerPlugin$2;
.super Ljava/lang/Object;
.source "CapacitorMediaPickerPlugin.java"

# interfaces
.implements Lcom/luck/picture/lib/interfaces/OnSelectLimitTipsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mycompany/plugins/mediapicker/CapacitorMediaPickerPlugin;->launchMediaPicker(Lcom/getcapacitor/PluginCall;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mycompany/plugins/mediapicker/CapacitorMediaPickerPlugin;

.field final synthetic val$limitTips:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mycompany/plugins/mediapicker/CapacitorMediaPickerPlugin;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 171
    iput-object p1, p0, Lcom/mycompany/plugins/mediapicker/CapacitorMediaPickerPlugin$2;->this$0:Lcom/mycompany/plugins/mediapicker/CapacitorMediaPickerPlugin;

    iput-object p2, p0, Lcom/mycompany/plugins/mediapicker/CapacitorMediaPickerPlugin$2;->val$limitTips:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectLimitTips(Landroid/content/Context;Lcom/luck/picture/lib/entity/LocalMedia;Lcom/luck/picture/lib/config/SelectorConfig;I)Z
    .locals 0

    const/4 p2, 0x4

    const/4 p3, 0x0

    if-eq p4, p2, :cond_1

    const/4 p2, 0x6

    if-ne p4, p2, :cond_0

    goto :goto_0

    :cond_0
    return p3

    .line 176
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/mycompany/plugins/mediapicker/CapacitorMediaPickerPlugin$2;->val$limitTips:Ljava/lang/String;

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const/4 p1, 0x1

    return p1
.end method
