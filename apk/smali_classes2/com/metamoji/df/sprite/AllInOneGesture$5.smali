.class Lcom/metamoji/df/sprite/AllInOneGesture$5;
.super Lcom/metamoji/df/sprite/AllInOneGesture$State;
.source "AllInOneGesture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/df/sprite/AllInOneGesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private d0:F

.field final synthetic this$0:Lcom/metamoji/df/sprite/AllInOneGesture;

.field private x0:F

.field private y0:F


# direct methods
.method constructor <init>(Lcom/metamoji/df/sprite/AllInOneGesture;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 364
    iput-object p1, p0, Lcom/metamoji/df/sprite/AllInOneGesture$5;->this$0:Lcom/metamoji/df/sprite/AllInOneGesture;

    invoke-direct {p0}, Lcom/metamoji/df/sprite/AllInOneGesture$State;-><init>()V

    return-void
.end method


# virtual methods
.method cancel(Landroid/view/MotionEvent;)Lcom/metamoji/df/sprite/AllInOneGesture$State;
    .locals 1

    .line 438
    iget-object v0, p0, Lcom/metamoji/df/sprite/AllInOneGesture$5;->this$0:Lcom/metamoji/df/sprite/AllInOneGesture;

    invoke-static {v0}, Lcom/metamoji/df/sprite/AllInOneGesture;->-$$Nest$fget_1Tap(Lcom/metamoji/df/sprite/AllInOneGesture;)Lcom/metamoji/df/sprite/AllInOneGesture$State;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/AllInOneGesture$State;->cancel(Landroid/view/MotionEvent;)Lcom/metamoji/df/sprite/AllInOneGesture$State;

    move-result-object p1

    return-object p1
.end method

.method minus(Landroid/view/MotionEvent;)Lcom/metamoji/df/sprite/AllInOneGesture$State;
    .locals 1

    .line 428
    iget-object v0, p0, Lcom/metamoji/df/sprite/AllInOneGesture$5;->this$0:Lcom/metamoji/df/sprite/AllInOneGesture;

    invoke-static {v0}, Lcom/metamoji/df/sprite/AllInOneGesture;->-$$Nest$fget_1Tap(Lcom/metamoji/df/sprite/AllInOneGesture;)Lcom/metamoji/df/sprite/AllInOneGesture$State;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/AllInOneGesture$State;->minus(Landroid/view/MotionEvent;)Lcom/metamoji/df/sprite/AllInOneGesture$State;

    move-result-object p1

    return-object p1
.end method

.method move(Landroid/view/MotionEvent;)Lcom/metamoji/df/sprite/AllInOneGesture$State;
    .locals 9

    .line 380
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v0

    const/4 v1, 0x1

    .line 382
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    cmpl-float v2, v2, v4

    if-nez v2, :cond_2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    cmpl-float v2, v2, v4

    if-nez v2, :cond_2

    .line 383
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 384
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 385
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v3, p0, Lcom/metamoji/df/sprite/AllInOneGesture$5;->y0:F

    sub-float/2addr p1, v3

    const/4 v3, 0x0

    cmpl-float p1, p1, v3

    if-lez p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 p1, -0x40800000    # -1.0f

    :goto_0
    and-int/lit16 v0, v0, 0x1000

    .line 397
    iget-object v3, p0, Lcom/metamoji/df/sprite/AllInOneGesture$5;->this$0:Lcom/metamoji/df/sprite/AllInOneGesture;

    const/high16 v4, 0x42000000    # 32.0f

    if-nez v0, :cond_1

    const/high16 v0, 0x41800000    # 16.0f

    mul-float/2addr p1, v0

    add-float v0, p1, p1

    .line 390
    iget-object v3, v3, Lcom/metamoji/df/sprite/AllInOneGesture;->panListener:Lcom/metamoji/df/sprite/AllInOneGesture$PanListener;

    new-instance v5, Lcom/metamoji/df/sprite/TouchEvent$OnTwoPoints;

    new-instance v6, Landroid/graphics/PointF;

    sub-float v7, v1, v4

    invoke-direct {v6, v7, v2}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v8, Landroid/graphics/PointF;

    add-float/2addr v1, v4

    invoke-direct {v8, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v5, v6, v8}, Lcom/metamoji/df/sprite/TouchEvent$OnTwoPoints;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    invoke-interface {v3, v5}, Lcom/metamoji/df/sprite/AllInOneGesture$PanListener;->panStart(Lcom/metamoji/df/sprite/TouchEvent;)V

    .line 391
    iget-object v3, p0, Lcom/metamoji/df/sprite/AllInOneGesture$5;->this$0:Lcom/metamoji/df/sprite/AllInOneGesture;

    iget-object v3, v3, Lcom/metamoji/df/sprite/AllInOneGesture;->panListener:Lcom/metamoji/df/sprite/AllInOneGesture$PanListener;

    new-instance v4, Lcom/metamoji/df/sprite/TouchEvent$OnTwoPoints;

    new-instance v5, Landroid/graphics/PointF;

    add-float/2addr p1, v2

    invoke-direct {v5, v7, p1}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v4, v5, v6}, Lcom/metamoji/df/sprite/TouchEvent$OnTwoPoints;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    invoke-interface {v3, v4}, Lcom/metamoji/df/sprite/AllInOneGesture$PanListener;->panMove(Lcom/metamoji/df/sprite/TouchEvent;)V

    .line 392
    iget-object p1, p0, Lcom/metamoji/df/sprite/AllInOneGesture$5;->this$0:Lcom/metamoji/df/sprite/AllInOneGesture;

    iget-object p1, p1, Lcom/metamoji/df/sprite/AllInOneGesture;->panListener:Lcom/metamoji/df/sprite/AllInOneGesture$PanListener;

    new-instance v3, Lcom/metamoji/df/sprite/TouchEvent$OnTwoPoints;

    new-instance v4, Landroid/graphics/PointF;

    add-float/2addr v0, v2

    invoke-direct {v4, v7, v0}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5, v1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v3, v4, v5}, Lcom/metamoji/df/sprite/TouchEvent$OnTwoPoints;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    invoke-interface {p1, v3}, Lcom/metamoji/df/sprite/AllInOneGesture$PanListener;->panEnd(Lcom/metamoji/df/sprite/TouchEvent;)V

    goto :goto_1

    :cond_1
    add-float v0, p1, v4

    add-float/2addr p1, v0

    .line 397
    iget-object v3, v3, Lcom/metamoji/df/sprite/AllInOneGesture;->pinchListener:Lcom/metamoji/df/sprite/AllInOneGesture$PinchListener;

    new-instance v5, Lcom/metamoji/df/sprite/TouchEvent$OnTwoPoints;

    new-instance v6, Landroid/graphics/PointF;

    sub-float v7, v1, v4

    invoke-direct {v6, v7, v2}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v7, Landroid/graphics/PointF;

    add-float/2addr v4, v1

    invoke-direct {v7, v4, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v5, v6, v7}, Lcom/metamoji/df/sprite/TouchEvent$OnTwoPoints;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    invoke-interface {v3, v5}, Lcom/metamoji/df/sprite/AllInOneGesture$PinchListener;->pinchStart(Lcom/metamoji/df/sprite/TouchEvent;)V

    .line 398
    iget-object v3, p0, Lcom/metamoji/df/sprite/AllInOneGesture$5;->this$0:Lcom/metamoji/df/sprite/AllInOneGesture;

    iget-object v3, v3, Lcom/metamoji/df/sprite/AllInOneGesture;->pinchListener:Lcom/metamoji/df/sprite/AllInOneGesture$PinchListener;

    new-instance v4, Lcom/metamoji/df/sprite/TouchEvent$OnTwoPoints;

    new-instance v5, Landroid/graphics/PointF;

    sub-float v6, v1, v0

    invoke-direct {v5, v6, v2}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v6, Landroid/graphics/PointF;

    add-float/2addr v0, v1

    invoke-direct {v6, v0, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v4, v5, v6}, Lcom/metamoji/df/sprite/TouchEvent$OnTwoPoints;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    invoke-interface {v3, v4}, Lcom/metamoji/df/sprite/AllInOneGesture$PinchListener;->pinchMove(Lcom/metamoji/df/sprite/TouchEvent;)V

    .line 399
    iget-object v0, p0, Lcom/metamoji/df/sprite/AllInOneGesture$5;->this$0:Lcom/metamoji/df/sprite/AllInOneGesture;

    iget-object v0, v0, Lcom/metamoji/df/sprite/AllInOneGesture;->pinchListener:Lcom/metamoji/df/sprite/AllInOneGesture$PinchListener;

    new-instance v3, Lcom/metamoji/df/sprite/TouchEvent$OnTwoPoints;

    new-instance v4, Landroid/graphics/PointF;

    sub-float v5, v1, p1

    invoke-direct {v4, v5, v2}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v5, Landroid/graphics/PointF;

    add-float/2addr v1, p1

    invoke-direct {v5, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v3, v4, v5}, Lcom/metamoji/df/sprite/TouchEvent$OnTwoPoints;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    invoke-interface {v0, v3}, Lcom/metamoji/df/sprite/AllInOneGesture$PinchListener;->pinchEnd(Lcom/metamoji/df/sprite/TouchEvent;)V

    .line 401
    :goto_1
    iput v2, p0, Lcom/metamoji/df/sprite/AllInOneGesture$5;->y0:F

    return-object p0

    .line 403
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lcom/metamoji/df/sprite/AllInOneGesture$5;->x0:F

    sub-float/2addr v0, v2

    .line 404
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v4, p0, Lcom/metamoji/df/sprite/AllInOneGesture$5;->y0:F

    sub-float/2addr v2, v4

    mul-float/2addr v0, v0

    mul-float/2addr v2, v2

    add-float/2addr v0, v2

    float-to-double v4, v0

    .line 405
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v0, v4

    .line 406
    iget-object v2, p0, Lcom/metamoji/df/sprite/AllInOneGesture$5;->this$0:Lcom/metamoji/df/sprite/AllInOneGesture;

    iget v2, v2, Lcom/metamoji/df/sprite/AllInOneGesture;->dragThreshold:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_3

    .line 407
    sget-object v0, Lcom/metamoji/df/sprite/TouchEvent;->MOTION:Lcom/metamoji/df/sprite/TouchEvent$OnMotion;

    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/TouchEvent$OnMotion;->init(Landroid/view/MotionEvent;)Lcom/metamoji/df/sprite/TouchEvent$OnMotion;

    move-result-object v0

    .line 408
    iget-object v1, p0, Lcom/metamoji/df/sprite/AllInOneGesture$5;->this$0:Lcom/metamoji/df/sprite/AllInOneGesture;

    invoke-virtual {v1, v0}, Lcom/metamoji/df/sprite/AllInOneGesture;->dragCancel(Lcom/metamoji/df/sprite/TouchEvent;)V

    .line 409
    iget-object v1, p0, Lcom/metamoji/df/sprite/AllInOneGesture$5;->this$0:Lcom/metamoji/df/sprite/AllInOneGesture;

    iget-object v1, v1, Lcom/metamoji/df/sprite/AllInOneGesture;->panListener:Lcom/metamoji/df/sprite/AllInOneGesture$PanListener;

    invoke-interface {v1, v0}, Lcom/metamoji/df/sprite/AllInOneGesture$PanListener;->panStart(Lcom/metamoji/df/sprite/TouchEvent;)V

    .line 410
    iget-object v0, p0, Lcom/metamoji/df/sprite/AllInOneGesture$5;->this$0:Lcom/metamoji/df/sprite/AllInOneGesture;

    invoke-static {v0}, Lcom/metamoji/df/sprite/AllInOneGesture;->-$$Nest$fget_2Pan(Lcom/metamoji/df/sprite/AllInOneGesture;)Lcom/metamoji/df/sprite/AllInOneGesture$State;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/AllInOneGesture$State;->setup(Landroid/view/MotionEvent;)Lcom/metamoji/df/sprite/AllInOneGesture$State;

    move-result-object p1

    return-object p1

    .line 412
    :cond_3
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    sub-float/2addr v0, v2

    .line 413
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    sub-float/2addr v1, v2

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    .line 414
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 415
    iget v1, p0, Lcom/metamoji/df/sprite/AllInOneGesture$5;->d0:F

    div-float/2addr v0, v1

    .line 416
    iget-object v1, p0, Lcom/metamoji/df/sprite/AllInOneGesture$5;->this$0:Lcom/metamoji/df/sprite/AllInOneGesture;

    iget v1, v1, Lcom/metamoji/df/sprite/AllInOneGesture;->zoomMinThreshold:F

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_5

    iget-object v1, p0, Lcom/metamoji/df/sprite/AllInOneGesture$5;->this$0:Lcom/metamoji/df/sprite/AllInOneGesture;

    iget v1, v1, Lcom/metamoji/df/sprite/AllInOneGesture;->zoomMaxThreshold:F

    cmpg-float v0, v1, v0

    if-gez v0, :cond_4

    goto :goto_2

    :cond_4
    return-object p0

    .line 417
    :cond_5
    :goto_2
    sget-object v0, Lcom/metamoji/df/sprite/TouchEvent;->MOTION:Lcom/metamoji/df/sprite/TouchEvent$OnMotion;

    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/TouchEvent$OnMotion;->init(Landroid/view/MotionEvent;)Lcom/metamoji/df/sprite/TouchEvent$OnMotion;

    move-result-object v0

    .line 418
    iget-object v1, p0, Lcom/metamoji/df/sprite/AllInOneGesture$5;->this$0:Lcom/metamoji/df/sprite/AllInOneGesture;

    invoke-virtual {v1, v0}, Lcom/metamoji/df/sprite/AllInOneGesture;->dragCancel(Lcom/metamoji/df/sprite/TouchEvent;)V

    .line 419
    iget-object v1, p0, Lcom/metamoji/df/sprite/AllInOneGesture$5;->this$0:Lcom/metamoji/df/sprite/AllInOneGesture;

    iget-object v1, v1, Lcom/metamoji/df/sprite/AllInOneGesture;->pinchListener:Lcom/metamoji/df/sprite/AllInOneGesture$PinchListener;

    invoke-interface {v1, v0}, Lcom/metamoji/df/sprite/AllInOneGesture$PinchListener;->pinchStart(Lcom/metamoji/df/sprite/TouchEvent;)V

    .line 420
    iget-object v0, p0, Lcom/metamoji/df/sprite/AllInOneGesture$5;->this$0:Lcom/metamoji/df/sprite/AllInOneGesture;

    invoke-static {v0}, Lcom/metamoji/df/sprite/AllInOneGesture;->-$$Nest$fget_2Pinch(Lcom/metamoji/df/sprite/AllInOneGesture;)Lcom/metamoji/df/sprite/AllInOneGesture$State;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/AllInOneGesture$State;->setup(Landroid/view/MotionEvent;)Lcom/metamoji/df/sprite/AllInOneGesture$State;

    move-result-object p1

    return-object p1
.end method

.method plus(Landroid/view/MotionEvent;)Lcom/metamoji/df/sprite/AllInOneGesture$State;
    .locals 4

    .line 370
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/metamoji/df/sprite/AllInOneGesture$5;->x0:F

    .line 371
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/metamoji/df/sprite/AllInOneGesture$5;->y0:F

    const/4 v0, 0x1

    .line 372
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v1, v3

    .line 373
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    sub-float/2addr v0, p1

    mul-float/2addr v1, v1

    mul-float/2addr v0, v0

    add-float/2addr v1, v0

    float-to-double v0, v1

    .line 374
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    iput p1, p0, Lcom/metamoji/df/sprite/AllInOneGesture$5;->d0:F

    return-object p0
.end method

.method up(Landroid/view/MotionEvent;)Lcom/metamoji/df/sprite/AllInOneGesture$State;
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/metamoji/df/sprite/AllInOneGesture$5;->this$0:Lcom/metamoji/df/sprite/AllInOneGesture;

    invoke-static {v0}, Lcom/metamoji/df/sprite/AllInOneGesture;->-$$Nest$fget_1Tap(Lcom/metamoji/df/sprite/AllInOneGesture;)Lcom/metamoji/df/sprite/AllInOneGesture$State;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/AllInOneGesture$State;->up(Landroid/view/MotionEvent;)Lcom/metamoji/df/sprite/AllInOneGesture$State;

    move-result-object p1

    return-object p1
.end method
