.class public final Lcom/metamoji/video/IAmvVideoPlayer$Clipping;
.super Ljava/lang/Object;
.source "IAmvVideoPlayer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/video/IAmvVideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Clipping"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000e\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u0003J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\u001d\u0010\u0011\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0012\u001a\u00020\u000b2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0014\u001a\u00020\u0015H\u00d6\u0001J\t\u0010\u0016\u001a\u00020\u0017H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0008R\u0011\u0010\n\u001a\u00020\u000b8F\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000c\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/metamoji/video/IAmvVideoPlayer$Clipping;",
        "",
        "start",
        "",
        "end",
        "<init>",
        "(JJ)V",
        "getStart",
        "()J",
        "getEnd",
        "isValid",
        "",
        "()Z",
        "clipPos",
        "pos",
        "component1",
        "component2",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
        "",
        "video"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final end:J

.field private final start:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/metamoji/video/IAmvVideoPlayer$Clipping;->start:J

    iput-wide p3, p0, Lcom/metamoji/video/IAmvVideoPlayer$Clipping;->end:J

    return-void
.end method

.method public synthetic constructor <init>(JJILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    const-wide/16 p3, -0x1

    .line 26
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/metamoji/video/IAmvVideoPlayer$Clipping;-><init>(JJ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/metamoji/video/IAmvVideoPlayer$Clipping;JJILjava/lang/Object;)Lcom/metamoji/video/IAmvVideoPlayer$Clipping;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-wide p1, p0, Lcom/metamoji/video/IAmvVideoPlayer$Clipping;->start:J

    :cond_0
    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_1

    iget-wide p3, p0, Lcom/metamoji/video/IAmvVideoPlayer$Clipping;->end:J

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/metamoji/video/IAmvVideoPlayer$Clipping;->copy(JJ)Lcom/metamoji/video/IAmvVideoPlayer$Clipping;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final clipPos(J)J
    .locals 4

    .line 31
    iget-wide v0, p0, Lcom/metamoji/video/IAmvVideoPlayer$Clipping;->end:J

    iget-wide v2, p0, Lcom/metamoji/video/IAmvVideoPlayer$Clipping;->start:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 32
    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iget-wide v0, p0, Lcom/metamoji/video/IAmvVideoPlayer$Clipping;->end:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    return-wide p1

    .line 34
    :cond_0
    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/metamoji/video/IAmvVideoPlayer$Clipping;->start:J

    return-wide v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/metamoji/video/IAmvVideoPlayer$Clipping;->end:J

    return-wide v0
.end method

.method public final copy(JJ)Lcom/metamoji/video/IAmvVideoPlayer$Clipping;
    .locals 1

    new-instance v0, Lcom/metamoji/video/IAmvVideoPlayer$Clipping;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/metamoji/video/IAmvVideoPlayer$Clipping;-><init>(JJ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/metamoji/video/IAmvVideoPlayer$Clipping;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/metamoji/video/IAmvVideoPlayer$Clipping;

    iget-wide v3, p0, Lcom/metamoji/video/IAmvVideoPlayer$Clipping;->start:J

    iget-wide v5, p1, Lcom/metamoji/video/IAmvVideoPlayer$Clipping;->start:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/metamoji/video/IAmvVideoPlayer$Clipping;->end:J

    iget-wide v5, p1, Lcom/metamoji/video/IAmvVideoPlayer$Clipping;->end:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getEnd()J
    .locals 2

    .line 26
    iget-wide v0, p0, Lcom/metamoji/video/IAmvVideoPlayer$Clipping;->end:J

    return-wide v0
.end method

.method public final getStart()J
    .locals 2

    .line 26
    iget-wide v0, p0, Lcom/metamoji/video/IAmvVideoPlayer$Clipping;->start:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/metamoji/video/IAmvVideoPlayer$Clipping;->start:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/metamoji/video/IAmvVideoPlayer$Clipping;->end:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isValid()Z
    .locals 4

    .line 28
    iget-wide v0, p0, Lcom/metamoji/video/IAmvVideoPlayer$Clipping;->end:J

    iget-wide v2, p0, Lcom/metamoji/video/IAmvVideoPlayer$Clipping;->start:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-wide v0, p0, Lcom/metamoji/video/IAmvVideoPlayer$Clipping;->start:J

    iget-wide v2, p0, Lcom/metamoji/video/IAmvVideoPlayer$Clipping;->end:J

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Clipping(start="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
