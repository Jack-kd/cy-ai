.class Lcom/mycompany/plugins/mediapicker/CapacitorMediaPickerPlugin$1;
.super Ljava/lang/Object;
.source "CapacitorMediaPickerPlugin.java"

# interfaces
.implements Lcom/luck/picture/lib/interfaces/OnResultCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mycompany/plugins/mediapicker/CapacitorMediaPickerPlugin;->launchMediaPicker(Lcom/getcapacitor/PluginCall;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/luck/picture/lib/interfaces/OnResultCallbackListener<",
        "Lcom/luck/picture/lib/entity/LocalMedia;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mycompany/plugins/mediapicker/CapacitorMediaPickerPlugin;


# direct methods
.method constructor <init>(Lcom/mycompany/plugins/mediapicker/CapacitorMediaPickerPlugin;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 182
    iput-object p1, p0, Lcom/mycompany/plugins/mediapicker/CapacitorMediaPickerPlugin$1;->this$0:Lcom/mycompany/plugins/mediapicker/CapacitorMediaPickerPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/mycompany/plugins/mediapicker/CapacitorMediaPickerPlugin$1;->this$0:Lcom/mycompany/plugins/mediapicker/CapacitorMediaPickerPlugin;

    invoke-static {v0}, Lcom/mycompany/plugins/mediapicker/CapacitorMediaPickerPlugin;->access$000(Lcom/mycompany/plugins/mediapicker/CapacitorMediaPickerPlugin;)Lcom/getcapacitor/Bridge;

    move-result-object v0

    iget-object v1, p0, Lcom/mycompany/plugins/mediapicker/CapacitorMediaPickerPlugin$1;->this$0:Lcom/mycompany/plugins/mediapicker/CapacitorMediaPickerPlugin;

    invoke-static {v1}, Lcom/mycompany/plugins/mediapicker/CapacitorMediaPickerPlugin;->-$$Nest$fgetsavedCallId(Lcom/mycompany/plugins/mediapicker/CapacitorMediaPickerPlugin;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/getcapacitor/Bridge;->getSavedCall(Ljava/lang/String;)Lcom/getcapacitor/PluginCall;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 192
    const-string v1, "User cancelled"

    invoke-virtual {v0, v1}, Lcom/getcapacitor/PluginCall;->reject(Ljava/lang/String;)V

    .line 193
    iget-object v1, p0, Lcom/mycompany/plugins/mediapicker/CapacitorMediaPickerPlugin$1;->this$0:Lcom/mycompany/plugins/mediapicker/CapacitorMediaPickerPlugin;

    invoke-static {v1}, Lcom/mycompany/plugins/mediapicker/CapacitorMediaPickerPlugin;->access$100(Lcom/mycompany/plugins/mediapicker/CapacitorMediaPickerPlugin;)Lcom/getcapacitor/Bridge;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/getcapacitor/Bridge;->releaseCall(Lcom/getcapacitor/PluginCall;)V

    :cond_0
    return-void
.end method

.method public onResult(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)V"
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/mycompany/plugins/mediapicker/CapacitorMediaPickerPlugin$1;->this$0:Lcom/mycompany/plugins/mediapicker/CapacitorMediaPickerPlugin;

    invoke-static {v0, p1}, Lcom/mycompany/plugins/mediapicker/CapacitorMediaPickerPlugin;->-$$Nest$mhandleMediaResult(Lcom/mycompany/plugins/mediapicker/CapacitorMediaPickerPlugin;Ljava/util/ArrayList;)V

    return-void
.end method
