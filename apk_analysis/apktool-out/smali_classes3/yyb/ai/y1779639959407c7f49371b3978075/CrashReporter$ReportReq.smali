.class public Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$ReportReq;
.super Ljava/lang/Object;
.source "CrashReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReportReq"
.end annotation


# instance fields
.field public device:Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$Device;

.field public event_type:I

.field public ext_data:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public package_name:Ljava/lang/String;

.field public version_code:J

.field public version_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
