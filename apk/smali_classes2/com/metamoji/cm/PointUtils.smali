.class public Lcom/metamoji/cm/PointUtils;
.super Ljava/lang/Object;
.source "PointUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static PointF(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 2

    .line 8
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Landroid/graphics/PointF;->x:F

    iget p0, p0, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public static set(Landroid/graphics/PointF;FF)V
    .locals 0

    .line 17
    iput p1, p0, Landroid/graphics/PointF;->x:F

    .line 18
    iput p2, p0, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method public static set(Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 1

    .line 12
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iput v0, p0, Landroid/graphics/PointF;->x:F

    .line 13
    iget p1, p1, Landroid/graphics/PointF;->y:F

    iput p1, p0, Landroid/graphics/PointF;->y:F

    return-void
.end method
