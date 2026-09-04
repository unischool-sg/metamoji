.class public final Lcom/metamoji/ch/ChPointKt;
.super Ljava/lang/Object;
.source "ChPoint.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0006\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\u0012\u0010\u0003\u001a\u00020\u0004*\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0001\u001a\u0012\u0010\u0007\u001a\u00020\u0004*\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0001\u001a*\u0010\u0008\u001a\u00020\u0004*\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00012\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\n\u001a\u001a\u0010\r\u001a\u00020\u0004*\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0006\u001a\u00020\u0001\u001a\u001a\u0010\u0010\u001a\u00020\u0004*\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u00012\u0006\u0010\u0012\u001a\u00020\n\u00a8\u0006\u0013"
    }
    d2 = {
        "toChPoint",
        "Lcom/metamoji/ch/ChPoint;",
        "Landroid/graphics/PointF;",
        "moveTo",
        "",
        "Lcom/metamoji/df/sprite/Graphics;",
        "point",
        "lineTo",
        "arcTo",
        "r",
        "",
        "startAngle",
        "sweepAngle",
        "drawString",
        "string",
        "",
        "drawCircle",
        "centerPoint",
        "radius",
        "chart"
    }
    k = 0x2
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final arcTo(Lcom/metamoji/df/sprite/Graphics;Lcom/metamoji/ch/ChPoint;DDD)V
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "point"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p1}, Lcom/metamoji/ch/ChPoint;->getX()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p1}, Lcom/metamoji/ch/ChPoint;->getY()D

    move-result-wide v1

    double-to-float p1, v1

    double-to-float p3, p2

    double-to-float p4, p4

    double-to-float p5, p6

    move p2, p1

    move p1, v0

    invoke-virtual/range {p0 .. p5}, Lcom/metamoji/df/sprite/Graphics;->arcTo(FFFFF)V

    return-void
.end method

.method public static final drawCircle(Lcom/metamoji/df/sprite/Graphics;Lcom/metamoji/ch/ChPoint;D)V
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "centerPoint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p1}, Lcom/metamoji/ch/ChPoint;->getX()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p1}, Lcom/metamoji/ch/ChPoint;->getY()D

    move-result-wide v1

    double-to-float p1, v1

    double-to-float p2, p2

    invoke-virtual {p0, v0, p1, p2}, Lcom/metamoji/df/sprite/Graphics;->drawCircle(FFF)V

    return-void
.end method

.method public static final drawString(Lcom/metamoji/df/sprite/Graphics;Ljava/lang/String;Lcom/metamoji/ch/ChPoint;)V
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "point"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p2}, Lcom/metamoji/ch/ChPoint;->getX()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p2}, Lcom/metamoji/ch/ChPoint;->getY()D

    move-result-wide v1

    double-to-float p2, v1

    invoke-virtual {p0, v0, p2, p1}, Lcom/metamoji/df/sprite/Graphics;->drawString(FFLjava/lang/String;)V

    return-void
.end method

.method public static final lineTo(Lcom/metamoji/df/sprite/Graphics;Lcom/metamoji/ch/ChPoint;)V
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "point"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p1}, Lcom/metamoji/ch/ChPoint;->getX()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p1}, Lcom/metamoji/ch/ChPoint;->getY()D

    move-result-wide v1

    double-to-float p1, v1

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/df/sprite/Graphics;->lineTo(FF)V

    return-void
.end method

.method public static final moveTo(Lcom/metamoji/df/sprite/Graphics;Lcom/metamoji/ch/ChPoint;)V
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "point"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1}, Lcom/metamoji/ch/ChPoint;->getX()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p1}, Lcom/metamoji/ch/ChPoint;->getY()D

    move-result-wide v1

    double-to-float p1, v1

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/df/sprite/Graphics;->moveTo(FF)V

    return-void
.end method

.method public static final toChPoint(Landroid/graphics/PointF;)Lcom/metamoji/ch/ChPoint;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance v0, Lcom/metamoji/ch/ChPoint;

    invoke-direct {v0, p0}, Lcom/metamoji/ch/ChPoint;-><init>(Landroid/graphics/PointF;)V

    return-object v0
.end method
