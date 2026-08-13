.class public Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$Device;
.super Ljava/lang/Object;
.source "ApkOpenChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Device"
.end annotation


# instance fields
.field public android_id:Ljava/lang/String;

.field public android_version:Ljava/lang/String;

.field public brand:Ljava/lang/String;

.field public guid:Ljava/lang/String;

.field public model:Ljava/lang/String;

.field public platform_bit:I

.field public version:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$Device;->android_id:Ljava/lang/String;

    .line 83
    iput-object p2, p0, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$Device;->android_version:Ljava/lang/String;

    .line 84
    iput-object p3, p0, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$Device;->brand:Ljava/lang/String;

    .line 85
    iput-object p4, p0, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$Device;->model:Ljava/lang/String;

    .line 86
    iput p5, p0, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$Device;->platform_bit:I

    .line 87
    iput-object p6, p0, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$Device;->guid:Ljava/lang/String;

    .line 88
    iput p7, p0, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$Device;->version:I

    return-void
.end method
