.class final Lcom/mycompany/plugins/mediapicker/GlideEngine$InstanceHolder;
.super Ljava/lang/Object;
.source "GlideEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/plugins/mediapicker/GlideEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field static final instance:Lcom/mycompany/plugins/mediapicker/GlideEngine;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 87
    new-instance v0, Lcom/mycompany/plugins/mediapicker/GlideEngine;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mycompany/plugins/mediapicker/GlideEngine;-><init>(Lcom/mycompany/plugins/mediapicker/GlideEngine-IA;)V

    sput-object v0, Lcom/mycompany/plugins/mediapicker/GlideEngine$InstanceHolder;->instance:Lcom/mycompany/plugins/mediapicker/GlideEngine;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
