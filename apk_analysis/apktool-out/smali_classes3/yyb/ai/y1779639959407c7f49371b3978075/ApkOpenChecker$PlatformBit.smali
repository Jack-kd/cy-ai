.class public final enum Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$PlatformBit;
.super Ljava/lang/Enum;
.source "ApkOpenChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlatformBit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$PlatformBit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$PlatformBit;

.field public static final enum PLATFORMBIT_32:Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$PlatformBit;

.field public static final enum PLATFORMBIT_64:Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$PlatformBit;

.field public static final enum PLATFORMBIT_UNKNOWN:Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$PlatformBit;


# instance fields
.field public final value:I


# direct methods
.method private static synthetic $values()[Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$PlatformBit;
    .locals 3

    const/4 v0, 0x3

    .line 49
    new-array v0, v0, [Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$PlatformBit;

    sget-object v1, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$PlatformBit;->PLATFORMBIT_UNKNOWN:Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$PlatformBit;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$PlatformBit;->PLATFORMBIT_32:Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$PlatformBit;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$PlatformBit;->PLATFORMBIT_64:Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$PlatformBit;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 50
    new-instance v0, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$PlatformBit;

    const-string v1, "PLATFORMBIT_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$PlatformBit;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$PlatformBit;->PLATFORMBIT_UNKNOWN:Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$PlatformBit;

    .line 51
    new-instance v0, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$PlatformBit;

    const-string v1, "PLATFORMBIT_32"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$PlatformBit;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$PlatformBit;->PLATFORMBIT_32:Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$PlatformBit;

    .line 52
    new-instance v0, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$PlatformBit;

    const-string v1, "PLATFORMBIT_64"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$PlatformBit;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$PlatformBit;->PLATFORMBIT_64:Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$PlatformBit;

    .line 49
    invoke-static {}, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$PlatformBit;->$values()[Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$PlatformBit;

    move-result-object v0

    sput-object v0, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$PlatformBit;->$VALUES:[Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$PlatformBit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 56
    iput p3, p0, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$PlatformBit;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$PlatformBit;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 49
    const-class v0, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$PlatformBit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$PlatformBit;

    return-object p0
.end method

.method public static values()[Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$PlatformBit;
    .locals 1

    .line 49
    sget-object v0, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$PlatformBit;->$VALUES:[Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$PlatformBit;

    invoke-virtual {v0}, [Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$PlatformBit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$PlatformBit;

    return-object v0
.end method
