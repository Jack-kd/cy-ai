.class Lyyb/ai/y1779639959407c7f49371b3978075/AiyybGuidReader$EocdInfo;
.super Ljava/lang/Object;
.source "AiyybGuidReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyyb/ai/y1779639959407c7f49371b3978075/AiyybGuidReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EocdInfo"
.end annotation


# instance fields
.field final buffer:Ljava/nio/ByteBuffer;

.field final offset:J


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;J)V
    .locals 0

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    iput-object p1, p0, Lyyb/ai/y1779639959407c7f49371b3978075/AiyybGuidReader$EocdInfo;->buffer:Ljava/nio/ByteBuffer;

    .line 225
    iput-wide p2, p0, Lyyb/ai/y1779639959407c7f49371b3978075/AiyybGuidReader$EocdInfo;->offset:J

    return-void
.end method
