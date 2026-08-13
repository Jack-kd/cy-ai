.class public Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$CheckAppAvailableStatusReq;
.super Ljava/lang/Object;
.source "ApkOpenChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CheckAppAvailableStatusReq"
.end annotation


# instance fields
.field public device:Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$Device;

.field public duration:I

.field public event_type:I

.field public package_name:Ljava/lang/String;

.field public version_code:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JLyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$Device;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$CheckAppAvailableStatusReq;->package_name:Ljava/lang/String;

    .line 101
    iput-wide p2, p0, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$CheckAppAvailableStatusReq;->version_code:J

    .line 102
    iput-object p4, p0, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$CheckAppAvailableStatusReq;->device:Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$Device;

    return-void
.end method
