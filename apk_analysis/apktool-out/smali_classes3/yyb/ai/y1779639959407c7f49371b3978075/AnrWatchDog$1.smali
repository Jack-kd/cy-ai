.class Lyyb/ai/y1779639959407c7f49371b3978075/AnrWatchDog$1;
.super Ljava/lang/Object;
.source "AnrWatchDog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyyb/ai/y1779639959407c7f49371b3978075/AnrWatchDog;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lyyb/ai/y1779639959407c7f49371b3978075/AnrWatchDog;


# direct methods
.method constructor <init>(Lyyb/ai/y1779639959407c7f49371b3978075/AnrWatchDog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lyyb/ai/y1779639959407c7f49371b3978075/AnrWatchDog$1;->this$0:Lyyb/ai/y1779639959407c7f49371b3978075/AnrWatchDog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 57
    iget-object v0, p0, Lyyb/ai/y1779639959407c7f49371b3978075/AnrWatchDog$1;->this$0:Lyyb/ai/y1779639959407c7f49371b3978075/AnrWatchDog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lyyb/ai/y1779639959407c7f49371b3978075/AnrWatchDog;->-$$Nest$fputticked(Lyyb/ai/y1779639959407c7f49371b3978075/AnrWatchDog;Z)V

    return-void
.end method
