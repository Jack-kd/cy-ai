.class public Lcom/luck/picture/lib/entity/MediaExtraInfo;
.super Ljava/lang/Object;
.source "MediaExtraInfo.java"


# instance fields
.field private duration:J

.field private height:I

.field private orientation:Ljava/lang/String;

.field private videoThumbnail:Ljava/lang/String;

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDuration()J
    .locals 2

    .line 56
    iget-wide v0, p0, Lcom/luck/picture/lib/entity/MediaExtraInfo;->duration:J

    return-wide v0
.end method

.method public getHeight()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/luck/picture/lib/entity/MediaExtraInfo;->height:I

    return v0
.end method

.method public getOrientation()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/luck/picture/lib/entity/MediaExtraInfo;->orientation:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoThumbnail()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/luck/picture/lib/entity/MediaExtraInfo;->videoThumbnail:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/luck/picture/lib/entity/MediaExtraInfo;->width:I

    return v0
.end method

.method public setDuration(J)V
    .locals 0

    .line 60
    iput-wide p1, p0, Lcom/luck/picture/lib/entity/MediaExtraInfo;->duration:J

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/luck/picture/lib/entity/MediaExtraInfo;->height:I

    return-void
.end method

.method public setOrientation(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/luck/picture/lib/entity/MediaExtraInfo;->orientation:Ljava/lang/String;

    return-void
.end method

.method public setVideoThumbnail(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/luck/picture/lib/entity/MediaExtraInfo;->videoThumbnail:Ljava/lang/String;

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 44
    iput p1, p0, Lcom/luck/picture/lib/entity/MediaExtraInfo;->width:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MediaExtraInfo{videoThumbnail=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/luck/picture/lib/entity/MediaExtraInfo;->videoThumbnail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/luck/picture/lib/entity/MediaExtraInfo;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/luck/picture/lib/entity/MediaExtraInfo;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/luck/picture/lib/entity/MediaExtraInfo;->duration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", orientation=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/luck/picture/lib/entity/MediaExtraInfo;->orientation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
