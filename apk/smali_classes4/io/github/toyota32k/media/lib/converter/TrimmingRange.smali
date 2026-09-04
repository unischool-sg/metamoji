.class public final Lio/github/toyota32k/media/lib/converter/TrimmingRange;
.super Ljava/lang/Object;
.source "TrimmingRange.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/toyota32k/media/lib/converter/TrimmingRange$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0012\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u0000 \u001f2\u00020\u0001:\u0001\u001fB\u0019\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005J\u000e\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u0003J\u000e\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u0003J\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0003H\u00c6\u0003J\u000e\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u0003J\u001d\u0010\u0018\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0019\u001a\u00020\t2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001b\u001a\u00020\u001cH\u00d6\u0001J\t\u0010\u001d\u001a\u00020\u001eH\u00d6\u0001R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u000c\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000bR\u0011\u0010\u000e\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000bR\u0011\u0010\u0010\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0007\u00a8\u0006 "
    }
    d2 = {
        "Lio/github/toyota32k/media/lib/converter/TrimmingRange;",
        "",
        "startUs",
        "",
        "endUs",
        "(JJ)V",
        "getEndUs",
        "()J",
        "hasAny",
        "",
        "getHasAny",
        "()Z",
        "hasEnd",
        "getHasEnd",
        "hasStart",
        "getHasStart",
        "isEmpty",
        "getStartUs",
        "checkEnd",
        "timeUs",
        "checkStart",
        "component1",
        "component2",
        "contains",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
        "",
        "Companion",
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


# static fields
.field public static final Companion:Lio/github/toyota32k/media/lib/converter/TrimmingRange$Companion;

.field private static final Empty:Lio/github/toyota32k/media/lib/converter/TrimmingRange;


# instance fields
.field private final endUs:J

.field private final hasAny:Z

.field private final hasEnd:Z

.field private final hasStart:Z

.field private final isEmpty:Z

.field private final startUs:J


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lio/github/toyota32k/media/lib/converter/TrimmingRange$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/github/toyota32k/media/lib/converter/TrimmingRange$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/github/toyota32k/media/lib/converter/TrimmingRange;->Companion:Lio/github/toyota32k/media/lib/converter/TrimmingRange$Companion;

    .line 24
    new-instance v2, Lio/github/toyota32k/media/lib/converter/TrimmingRange;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    invoke-direct/range {v2 .. v8}, Lio/github/toyota32k/media/lib/converter/TrimmingRange;-><init>(JJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v2, Lio/github/toyota32k/media/lib/converter/TrimmingRange;->Empty:Lio/github/toyota32k/media/lib/converter/TrimmingRange;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const/4 v5, 0x3

    const/4 v6, 0x0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lio/github/toyota32k/media/lib/converter/TrimmingRange;-><init>(JJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 3

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lio/github/toyota32k/media/lib/converter/TrimmingRange;->startUs:J

    iput-wide p3, p0, Lio/github/toyota32k/media/lib/converter/TrimmingRange;->endUs:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    const/4 p2, 0x0

    const/4 v2, 0x1

    if-lez p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, p2

    .line 7
    :goto_0
    iput-boolean p1, p0, Lio/github/toyota32k/media/lib/converter/TrimmingRange;->hasStart:Z

    cmp-long p3, p3, v0

    if-lez p3, :cond_1

    move p3, v2

    goto :goto_1

    :cond_1
    move p3, p2

    .line 8
    :goto_1
    iput-boolean p3, p0, Lio/github/toyota32k/media/lib/converter/TrimmingRange;->hasEnd:Z

    if-nez p1, :cond_2

    if-eqz p3, :cond_3

    :cond_2
    move p2, v2

    .line 9
    :cond_3
    iput-boolean p2, p0, Lio/github/toyota32k/media/lib/converter/TrimmingRange;->hasAny:Z

    xor-int/lit8 p1, p3, 0x1

    .line 10
    iput-boolean p1, p0, Lio/github/toyota32k/media/lib/converter/TrimmingRange;->isEmpty:Z

    return-void
.end method

.method public synthetic constructor <init>(JJILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 2

    and-int/lit8 p6, p5, 0x1

    const-wide/16 v0, 0x0

    if-eqz p6, :cond_0

    move-wide p1, v0

    :cond_0
    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_1

    move-wide p3, v0

    .line 6
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lio/github/toyota32k/media/lib/converter/TrimmingRange;-><init>(JJ)V

    return-void
.end method

.method public static final synthetic access$getEmpty$cp()Lio/github/toyota32k/media/lib/converter/TrimmingRange;
    .locals 1

    .line 6
    sget-object v0, Lio/github/toyota32k/media/lib/converter/TrimmingRange;->Empty:Lio/github/toyota32k/media/lib/converter/TrimmingRange;

    return-object v0
.end method

.method public static synthetic copy$default(Lio/github/toyota32k/media/lib/converter/TrimmingRange;JJILjava/lang/Object;)Lio/github/toyota32k/media/lib/converter/TrimmingRange;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-wide p1, p0, Lio/github/toyota32k/media/lib/converter/TrimmingRange;->startUs:J

    :cond_0
    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_1

    iget-wide p3, p0, Lio/github/toyota32k/media/lib/converter/TrimmingRange;->endUs:J

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/github/toyota32k/media/lib/converter/TrimmingRange;->copy(JJ)Lio/github/toyota32k/media/lib/converter/TrimmingRange;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final checkEnd(J)Z
    .locals 4

    .line 16
    iget-wide v0, p0, Lio/github/toyota32k/media/lib/converter/TrimmingRange;->endUs:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    cmp-long p1, p1, v0

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final checkStart(J)Z
    .locals 4

    .line 13
    iget-wide v0, p0, Lio/github/toyota32k/media/lib/converter/TrimmingRange;->startUs:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    cmp-long p1, v0, p1

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lio/github/toyota32k/media/lib/converter/TrimmingRange;->startUs:J

    return-wide v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lio/github/toyota32k/media/lib/converter/TrimmingRange;->endUs:J

    return-wide v0
.end method

.method public final contains(J)Z
    .locals 1

    .line 20
    invoke-virtual {p0, p1, p2}, Lio/github/toyota32k/media/lib/converter/TrimmingRange;->checkStart(J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lio/github/toyota32k/media/lib/converter/TrimmingRange;->checkEnd(J)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final copy(JJ)Lio/github/toyota32k/media/lib/converter/TrimmingRange;
    .locals 1

    new-instance v0, Lio/github/toyota32k/media/lib/converter/TrimmingRange;

    invoke-direct {v0, p1, p2, p3, p4}, Lio/github/toyota32k/media/lib/converter/TrimmingRange;-><init>(JJ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lio/github/toyota32k/media/lib/converter/TrimmingRange;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lio/github/toyota32k/media/lib/converter/TrimmingRange;

    iget-wide v3, p0, Lio/github/toyota32k/media/lib/converter/TrimmingRange;->startUs:J

    iget-wide v5, p1, Lio/github/toyota32k/media/lib/converter/TrimmingRange;->startUs:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lio/github/toyota32k/media/lib/converter/TrimmingRange;->endUs:J

    iget-wide v5, p1, Lio/github/toyota32k/media/lib/converter/TrimmingRange;->endUs:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getEndUs()J
    .locals 2

    .line 6
    iget-wide v0, p0, Lio/github/toyota32k/media/lib/converter/TrimmingRange;->endUs:J

    return-wide v0
.end method

.method public final getHasAny()Z
    .locals 1

    .line 9
    iget-boolean v0, p0, Lio/github/toyota32k/media/lib/converter/TrimmingRange;->hasAny:Z

    return v0
.end method

.method public final getHasEnd()Z
    .locals 1

    .line 8
    iget-boolean v0, p0, Lio/github/toyota32k/media/lib/converter/TrimmingRange;->hasEnd:Z

    return v0
.end method

.method public final getHasStart()Z
    .locals 1

    .line 7
    iget-boolean v0, p0, Lio/github/toyota32k/media/lib/converter/TrimmingRange;->hasStart:Z

    return v0
.end method

.method public final getStartUs()J
    .locals 2

    .line 6
    iget-wide v0, p0, Lio/github/toyota32k/media/lib/converter/TrimmingRange;->startUs:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lio/github/toyota32k/media/lib/converter/TrimmingRange;->startUs:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lio/github/toyota32k/media/lib/converter/TrimmingRange;->endUs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .line 10
    iget-boolean v0, p0, Lio/github/toyota32k/media/lib/converter/TrimmingRange;->isEmpty:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TrimmingRange(startUs="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lio/github/toyota32k/media/lib/converter/TrimmingRange;->startUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endUs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lio/github/toyota32k/media/lib/converter/TrimmingRange;->endUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
