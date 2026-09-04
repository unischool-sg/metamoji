.class Lcom/metamoji/df/sprite/PinchSolver$NaivePinchSolver;
.super Lcom/metamoji/df/sprite/PinchSolver;
.source "PinchSolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/df/sprite/PinchSolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NaivePinchSolver"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/metamoji/df/sprite/PinchSolver;-><init>()V

    return-void
.end method


# virtual methods
.method solve(Lcom/metamoji/df/sprite/PinchSolver$ScaleTranslate;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/metamoji/df/sprite/PinchSolver$ScaleTranslate;)V
    .locals 3

    .line 86
    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget v1, p3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    .line 87
    iget v1, p2, Landroid/graphics/PointF;->y:F

    iget v2, p3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    .line 88
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 90
    iget v1, p4, Landroid/graphics/PointF;->x:F

    iget v2, p5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    .line 91
    iget p4, p4, Landroid/graphics/PointF;->y:F

    iget p5, p5, Landroid/graphics/PointF;->y:F

    sub-float/2addr p4, p5

    mul-float/2addr v1, v1

    mul-float/2addr p4, p4

    add-float/2addr v1, p4

    float-to-double p4, v1

    .line 92
    invoke-static {p4, p5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p4

    double-to-float p4, p4

    div-float/2addr v0, p4

    .line 96
    iget p4, p6, Lcom/metamoji/df/sprite/PinchSolver$ScaleTranslate;->scale:F

    mul-float/2addr p4, v0

    iput p4, p1, Lcom/metamoji/df/sprite/PinchSolver$ScaleTranslate;->scale:F

    .line 99
    iget p4, p2, Landroid/graphics/PointF;->x:F

    iget p5, p3, Landroid/graphics/PointF;->x:F

    add-float/2addr p4, p5

    const/high16 p5, 0x40000000    # 2.0f

    div-float/2addr p4, p5

    .line 100
    iget p2, p2, Landroid/graphics/PointF;->y:F

    iget p3, p3, Landroid/graphics/PointF;->y:F

    add-float/2addr p2, p3

    div-float/2addr p2, p5

    .line 103
    iget p3, p6, Lcom/metamoji/df/sprite/PinchSolver$ScaleTranslate;->tx:F

    sub-float p3, p4, p3

    mul-float/2addr p3, v0

    sub-float/2addr p4, p3

    iput p4, p1, Lcom/metamoji/df/sprite/PinchSolver$ScaleTranslate;->tx:F

    .line 104
    iget p3, p6, Lcom/metamoji/df/sprite/PinchSolver$ScaleTranslate;->ty:F

    sub-float p3, p2, p3

    mul-float/2addr p3, v0

    sub-float/2addr p2, p3

    iput p2, p1, Lcom/metamoji/df/sprite/PinchSolver$ScaleTranslate;->ty:F

    return-void
.end method
