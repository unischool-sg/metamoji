.class final Lio/github/toyota32k/media/lib/converter/Converter$Progress$DealtEntry;
.super Ljava/lang/Object;
.source "Converter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/toyota32k/media/lib/converter/Converter$Progress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DealtEntry"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0082\u0008\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005J\t\u0010\t\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\n\u001a\u00020\u0003H\u00c6\u0003J\u001d\u0010\u000b\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u000f\u001a\u00020\u0010H\u00d6\u0001J\t\u0010\u0011\u001a\u00020\u0012H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0007\u00a8\u0006\u0013"
    }
    d2 = {
        "Lio/github/toyota32k/media/lib/converter/Converter$Progress$DealtEntry;",
        "",
        "position",
        "",
        "tick",
        "(JJ)V",
        "getPosition",
        "()J",
        "getTick",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "",
        "libMedia_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final position:J

.field private final tick:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lio/github/toyota32k/media/lib/converter/Converter$Progress$DealtEntry;->position:J

    iput-wide p3, p0, Lio/github/toyota32k/media/lib/converter/Converter$Progress$DealtEntry;->tick:J

    return-void
.end method

.method public static synthetic copy$default(Lio/github/toyota32k/media/lib/converter/Converter$Progress$DealtEntry;JJILjava/lang/Object;)Lio/github/toyota32k/media/lib/converter/Converter$Progress$DealtEntry;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-wide p1, p0, Lio/github/toyota32k/media/lib/converter/Converter$Progress$DealtEntry;->position:J

    :cond_0
    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_1

    iget-wide p3, p0, Lio/github/toyota32k/media/lib/converter/Converter$Progress$DealtEntry;->tick:J

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/github/toyota32k/media/lib/converter/Converter$Progress$DealtEntry;->copy(JJ)Lio/github/toyota32k/media/lib/converter/Converter$Progress$DealtEntry;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lio/github/toyota32k/media/lib/converter/Converter$Progress$DealtEntry;->position:J

    return-wide v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lio/github/toyota32k/media/lib/converter/Converter$Progress$DealtEntry;->tick:J

    return-wide v0
.end method

.method public final copy(JJ)Lio/github/toyota32k/media/lib/converter/Converter$Progress$DealtEntry;
    .locals 1

    new-instance v0, Lio/github/toyota32k/media/lib/converter/Converter$Progress$DealtEntry;

    invoke-direct {v0, p1, p2, p3, p4}, Lio/github/toyota32k/media/lib/converter/Converter$Progress$DealtEntry;-><init>(JJ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lio/github/toyota32k/media/lib/converter/Converter$Progress$DealtEntry;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lio/github/toyota32k/media/lib/converter/Converter$Progress$DealtEntry;

    iget-wide v3, p0, Lio/github/toyota32k/media/lib/converter/Converter$Progress$DealtEntry;->position:J

    iget-wide v5, p1, Lio/github/toyota32k/media/lib/converter/Converter$Progress$DealtEntry;->position:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lio/github/toyota32k/media/lib/converter/Converter$Progress$DealtEntry;->tick:J

    iget-wide v5, p1, Lio/github/toyota32k/media/lib/converter/Converter$Progress$DealtEntry;->tick:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getPosition()J
    .locals 2

    .line 181
    iget-wide v0, p0, Lio/github/toyota32k/media/lib/converter/Converter$Progress$DealtEntry;->position:J

    return-wide v0
.end method

.method public final getTick()J
    .locals 2

    .line 181
    iget-wide v0, p0, Lio/github/toyota32k/media/lib/converter/Converter$Progress$DealtEntry;->tick:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lio/github/toyota32k/media/lib/converter/Converter$Progress$DealtEntry;->position:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lio/github/toyota32k/media/lib/converter/Converter$Progress$DealtEntry;->tick:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DealtEntry(position="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lio/github/toyota32k/media/lib/converter/Converter$Progress$DealtEntry;->position:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tick="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lio/github/toyota32k/media/lib/converter/Converter$Progress$DealtEntry;->tick:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
