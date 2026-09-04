.class public final Lcom/metamoji/ch/ChPoint;
.super Ljava/lang/Object;
.source "ChPoint.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ch/ChPoint$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bB\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006B\u0011\u0008\u0016\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u0005\u0010\tJ\u0006\u0010\u0010\u001a\u00020\u0008J\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J\u001d\u0010\u0013\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001J\t\u0010\u0019\u001a\u00020\u001aH\u00d6\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000b\"\u0004\u0008\u000f\u0010\r\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/metamoji/ch/ChPoint;",
        "",
        "x",
        "",
        "y",
        "<init>",
        "(DD)V",
        "point",
        "Landroid/graphics/PointF;",
        "(Landroid/graphics/PointF;)V",
        "getX",
        "()D",
        "setX",
        "(D)V",
        "getY",
        "setY",
        "toPointF",
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
        "Companion",
        "chart"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/metamoji/ch/ChPoint$Companion;


# instance fields
.field private x:D

.field private y:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/ch/ChPoint$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/ch/ChPoint$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/ch/ChPoint;->Companion:Lcom/metamoji/ch/ChPoint$Companion;

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/metamoji/ch/ChPoint;->x:D

    iput-wide p3, p0, Lcom/metamoji/ch/ChPoint;->y:D

    return-void
.end method

.method public constructor <init>(Landroid/graphics/PointF;)V
    .locals 4

    const-string v0, "point"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget v0, p1, Landroid/graphics/PointF;->x:F

    float-to-double v0, v0

    iget p1, p1, Landroid/graphics/PointF;->y:F

    float-to-double v2, p1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/metamoji/ch/ChPoint;-><init>(DD)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/metamoji/ch/ChPoint;DDILjava/lang/Object;)Lcom/metamoji/ch/ChPoint;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-wide p1, p0, Lcom/metamoji/ch/ChPoint;->x:D

    :cond_0
    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_1

    iget-wide p3, p0, Lcom/metamoji/ch/ChPoint;->y:D

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/metamoji/ch/ChPoint;->copy(DD)Lcom/metamoji/ch/ChPoint;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()D
    .locals 2

    iget-wide v0, p0, Lcom/metamoji/ch/ChPoint;->x:D

    return-wide v0
.end method

.method public final component2()D
    .locals 2

    iget-wide v0, p0, Lcom/metamoji/ch/ChPoint;->y:D

    return-wide v0
.end method

.method public final copy(DD)Lcom/metamoji/ch/ChPoint;
    .locals 1

    new-instance v0, Lcom/metamoji/ch/ChPoint;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/metamoji/ch/ChPoint;-><init>(DD)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/metamoji/ch/ChPoint;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/metamoji/ch/ChPoint;

    iget-wide v3, p0, Lcom/metamoji/ch/ChPoint;->x:D

    iget-wide v5, p1, Lcom/metamoji/ch/ChPoint;->x:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/metamoji/ch/ChPoint;->y:D

    iget-wide v5, p1, Lcom/metamoji/ch/ChPoint;->y:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getX()D
    .locals 2

    .line 10
    iget-wide v0, p0, Lcom/metamoji/ch/ChPoint;->x:D

    return-wide v0
.end method

.method public final getY()D
    .locals 2

    .line 10
    iget-wide v0, p0, Lcom/metamoji/ch/ChPoint;->y:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/metamoji/ch/ChPoint;->x:D

    invoke-static {v0, v1}, Ljava/lang/Double;->hashCode(D)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/metamoji/ch/ChPoint;->y:D

    invoke-static {v1, v2}, Ljava/lang/Double;->hashCode(D)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final setX(D)V
    .locals 0

    .line 10
    iput-wide p1, p0, Lcom/metamoji/ch/ChPoint;->x:D

    return-void
.end method

.method public final setY(D)V
    .locals 0

    .line 10
    iput-wide p1, p0, Lcom/metamoji/ch/ChPoint;->y:D

    return-void
.end method

.method public final toPointF()Landroid/graphics/PointF;
    .locals 4

    .line 20
    new-instance v0, Landroid/graphics/PointF;

    iget-wide v1, p0, Lcom/metamoji/ch/ChPoint;->x:D

    double-to-float v1, v1

    iget-wide v2, p0, Lcom/metamoji/ch/ChPoint;->y:D

    double-to-float v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-wide v0, p0, Lcom/metamoji/ch/ChPoint;->x:D

    iget-wide v2, p0, Lcom/metamoji/ch/ChPoint;->y:D

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ChPoint(x="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
