.class abstract Lcom/metamoji/df/sprite/PinchSolver;
.super Ljava/lang/Object;
.source "PinchSolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/df/sprite/PinchSolver$NaivePinchSolver;,
        Lcom/metamoji/df/sprite/PinchSolver$ScaleTranslate;
    }
.end annotation


# static fields
.field private static singleton:Lcom/metamoji/df/sprite/PinchSolver;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getInstance()Lcom/metamoji/df/sprite/PinchSolver;
    .locals 1

    .line 16
    sget-object v0, Lcom/metamoji/df/sprite/PinchSolver;->singleton:Lcom/metamoji/df/sprite/PinchSolver;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lcom/metamoji/df/sprite/PinchSolver$NaivePinchSolver;

    invoke-direct {v0}, Lcom/metamoji/df/sprite/PinchSolver$NaivePinchSolver;-><init>()V

    sput-object v0, Lcom/metamoji/df/sprite/PinchSolver;->singleton:Lcom/metamoji/df/sprite/PinchSolver;

    .line 19
    :cond_0
    sget-object v0, Lcom/metamoji/df/sprite/PinchSolver;->singleton:Lcom/metamoji/df/sprite/PinchSolver;

    return-object v0
.end method


# virtual methods
.method detect(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 4

    .line 32
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    .line 33
    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget p3, p3, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, p3

    .line 35
    iget p3, p2, Landroid/graphics/PointF;->x:F

    iget v1, p4, Landroid/graphics/PointF;->x:F

    sub-float/2addr p3, v1

    .line 36
    iget p2, p2, Landroid/graphics/PointF;->y:F

    iget p4, p4, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, p4

    mul-float p4, v0, v0

    mul-float v1, p1, p1

    add-float/2addr p4, v1

    float-to-double v1, p4

    .line 39
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float p4, v1

    mul-float v1, p3, p3

    mul-float v2, p2, p2

    add-float/2addr v1, v2

    float-to-double v1, v1

    .line 41
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    const/4 v2, 0x0

    cmpl-float v3, p4, v2

    if-eqz v3, :cond_1

    cmpl-float v2, v1, v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    div-float/2addr v0, p4

    div-float/2addr p1, p4

    div-float/2addr p3, v1

    div-float/2addr p2, v1

    mul-float/2addr v0, p3

    mul-float/2addr p1, p2

    add-float/2addr v0, p1

    return v0

    :cond_1
    :goto_0
    const/high16 p1, -0x40800000    # -1.0f

    return p1
.end method

.method abstract solve(Lcom/metamoji/df/sprite/PinchSolver$ScaleTranslate;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/metamoji/df/sprite/PinchSolver$ScaleTranslate;)V
.end method
