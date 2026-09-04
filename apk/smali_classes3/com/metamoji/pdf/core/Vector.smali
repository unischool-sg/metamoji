.class public final Lcom/metamoji/pdf/core/Vector;
.super Ljava/lang/Object;
.source "Vector.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/pdf/core/Vector$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u001f\u0018\u0000 (2\u00020\u0001:\u0001(B\u001b\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006B\u0011\u0008\u0016\u0012\u0006\u0010\u0007\u001a\u00020\u0000\u00a2\u0006\u0004\u0008\u0005\u0010\u0008B\u0011\u0008\u0016\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0005\u0010\u000bB\u0019\u0008\u0016\u0012\u0006\u0010\u000c\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0005\u0010\u000eJ\u0011\u0010!\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0000H\u0086\u0002J\u0011\u0010\"\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0000H\u0086\u0002J\u0011\u0010#\u001a\u00020\u00002\u0006\u0010$\u001a\u00020\u0003H\u0086\u0002J\u0011\u0010%\u001a\u00020\u00002\u0006\u0010$\u001a\u00020\u0003H\u0086\u0002J\t\u0010&\u001a\u00020\u0000H\u0086\u0002J\u0011\u0010\'\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0000H\u0086\u0004R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0010\"\u0004\u0008\u0014\u0010\u0012R\u0011\u0010\u0015\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0010R\u0011\u0010\u0017\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0010R\u0011\u0010\u0019\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u0010R\u0011\u0010\u001b\u001a\u00020\n8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u001dR\u0011\u0010\u001e\u001a\u00020\u00008F\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010 \u00a8\u0006)"
    }
    d2 = {
        "Lcom/metamoji/pdf/core/Vector;",
        "",
        "x",
        "",
        "y",
        "<init>",
        "(FF)V",
        "v",
        "(Lcom/metamoji/pdf/core/Vector;)V",
        "pt",
        "Landroid/graphics/PointF;",
        "(Landroid/graphics/PointF;)V",
        "to",
        "from",
        "(Landroid/graphics/PointF;Landroid/graphics/PointF;)V",
        "getX",
        "()F",
        "setX",
        "(F)V",
        "getY",
        "setY",
        "length",
        "getLength",
        "length2",
        "getLength2",
        "arg",
        "getArg",
        "point",
        "getPoint",
        "()Landroid/graphics/PointF;",
        "unit",
        "getUnit",
        "()Lcom/metamoji/pdf/core/Vector;",
        "plus",
        "minus",
        "times",
        "k",
        "div",
        "unaryMinus",
        "dot",
        "Companion",
        "pdf"
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
.field public static final Companion:Lcom/metamoji/pdf/core/Vector$Companion;


# instance fields
.field private x:F

.field private y:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/pdf/core/Vector$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/pdf/core/Vector$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/pdf/core/Vector;->Companion:Lcom/metamoji/pdf/core/Vector$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v2, v0, v1}, Lcom/metamoji/pdf/core/Vector;-><init>(FFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/metamoji/pdf/core/Vector;->x:F

    iput p2, p0, Lcom/metamoji/pdf/core/Vector;->y:F

    return-void
.end method

.method public synthetic constructor <init>(FFILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move p2, v0

    .line 7
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/metamoji/pdf/core/Vector;-><init>(FF)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/PointF;)V
    .locals 1

    const-string v0, "pt"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, v0, p1}, Lcom/metamoji/pdf/core/Vector;-><init>(FF)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 2

    const-string/jumbo v0, "to"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "from"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, p2

    invoke-direct {p0, v0, p1}, Lcom/metamoji/pdf/core/Vector;-><init>(FF)V

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/pdf/core/Vector;)V
    .locals 1

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iget v0, p1, Lcom/metamoji/pdf/core/Vector;->x:F

    iget p1, p1, Lcom/metamoji/pdf/core/Vector;->y:F

    invoke-direct {p0, v0, p1}, Lcom/metamoji/pdf/core/Vector;-><init>(FF)V

    return-void
.end method


# virtual methods
.method public final div(F)Lcom/metamoji/pdf/core/Vector;
    .locals 3

    .line 31
    new-instance v0, Lcom/metamoji/pdf/core/Vector;

    iget v1, p0, Lcom/metamoji/pdf/core/Vector;->x:F

    div-float/2addr v1, p1

    iget v2, p0, Lcom/metamoji/pdf/core/Vector;->y:F

    div-float/2addr v2, p1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/pdf/core/Vector;-><init>(FF)V

    return-object v0
.end method

.method public final dot(Lcom/metamoji/pdf/core/Vector;)F
    .locals 2

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget v0, p0, Lcom/metamoji/pdf/core/Vector;->x:F

    iget v1, p1, Lcom/metamoji/pdf/core/Vector;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/metamoji/pdf/core/Vector;->y:F

    iget p1, p1, Lcom/metamoji/pdf/core/Vector;->y:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    return v0
.end method

.method public final getArg()F
    .locals 4

    .line 12
    iget v0, p0, Lcom/metamoji/pdf/core/Vector;->y:F

    float-to-double v0, v0

    iget v2, p0, Lcom/metamoji/pdf/core/Vector;->x:F

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public final getLength()F
    .locals 4

    .line 8
    iget v0, p0, Lcom/metamoji/pdf/core/Vector;->x:F

    float-to-double v0, v0

    iget v2, p0, Lcom/metamoji/pdf/core/Vector;->y:F

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public final getLength2()F
    .locals 2

    .line 9
    iget v0, p0, Lcom/metamoji/pdf/core/Vector;->x:F

    mul-float/2addr v0, v0

    iget v1, p0, Lcom/metamoji/pdf/core/Vector;->y:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method public final getPoint()Landroid/graphics/PointF;
    .locals 3

    .line 14
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Lcom/metamoji/pdf/core/Vector;->x:F

    iget v2, p0, Lcom/metamoji/pdf/core/Vector;->y:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public final getUnit()Lcom/metamoji/pdf/core/Vector;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/metamoji/pdf/core/Vector;->getLength()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/metamoji/pdf/core/Vector;->div(F)Lcom/metamoji/pdf/core/Vector;

    move-result-object v0

    return-object v0
.end method

.method public final getX()F
    .locals 1

    .line 7
    iget v0, p0, Lcom/metamoji/pdf/core/Vector;->x:F

    return v0
.end method

.method public final getY()F
    .locals 1

    .line 7
    iget v0, p0, Lcom/metamoji/pdf/core/Vector;->y:F

    return v0
.end method

.method public final minus(Lcom/metamoji/pdf/core/Vector;)Lcom/metamoji/pdf/core/Vector;
    .locals 3

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance v0, Lcom/metamoji/pdf/core/Vector;

    iget v1, p0, Lcom/metamoji/pdf/core/Vector;->x:F

    iget v2, p1, Lcom/metamoji/pdf/core/Vector;->x:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/metamoji/pdf/core/Vector;->y:F

    iget p1, p1, Lcom/metamoji/pdf/core/Vector;->y:F

    sub-float/2addr v2, p1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/pdf/core/Vector;-><init>(FF)V

    return-object v0
.end method

.method public final plus(Lcom/metamoji/pdf/core/Vector;)Lcom/metamoji/pdf/core/Vector;
    .locals 3

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance v0, Lcom/metamoji/pdf/core/Vector;

    iget v1, p0, Lcom/metamoji/pdf/core/Vector;->x:F

    iget v2, p1, Lcom/metamoji/pdf/core/Vector;->x:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/metamoji/pdf/core/Vector;->y:F

    iget p1, p1, Lcom/metamoji/pdf/core/Vector;->y:F

    add-float/2addr v2, p1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/pdf/core/Vector;-><init>(FF)V

    return-object v0
.end method

.method public final setX(F)V
    .locals 0

    .line 7
    iput p1, p0, Lcom/metamoji/pdf/core/Vector;->x:F

    return-void
.end method

.method public final setY(F)V
    .locals 0

    .line 7
    iput p1, p0, Lcom/metamoji/pdf/core/Vector;->y:F

    return-void
.end method

.method public final times(F)Lcom/metamoji/pdf/core/Vector;
    .locals 3

    .line 30
    new-instance v0, Lcom/metamoji/pdf/core/Vector;

    iget v1, p0, Lcom/metamoji/pdf/core/Vector;->x:F

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/metamoji/pdf/core/Vector;->y:F

    mul-float/2addr v2, p1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/pdf/core/Vector;-><init>(FF)V

    return-object v0
.end method

.method public final unaryMinus()Lcom/metamoji/pdf/core/Vector;
    .locals 3

    .line 33
    new-instance v0, Lcom/metamoji/pdf/core/Vector;

    iget v1, p0, Lcom/metamoji/pdf/core/Vector;->x:F

    neg-float v1, v1

    iget v2, p0, Lcom/metamoji/pdf/core/Vector;->y:F

    neg-float v2, v2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/pdf/core/Vector;-><init>(FF)V

    return-object v0
.end method
