.class public Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$CrashItem;
.super Ljava/lang/Object;
.source "CrashReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CrashItem"
.end annotation


# instance fields
.field public crash_block_duration_ms:Ljava/lang/Long;

.field public crash_exception_message:Ljava/lang/String;

.field public crash_occur_time_ms:J

.field public crash_process_name:Ljava/lang/String;

.field public crash_report_retry_count:I

.field public crash_source:Ljava/lang/String;

.field public crash_thread_name:Ljava/lang/String;

.field public crash_thread_stack:Ljava/lang/String;

.field public crash_type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
