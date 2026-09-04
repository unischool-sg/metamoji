.class Lcom/metamoji/df/sprite/AllInOneGesture$6;
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

    .line 443
    iput-object p1, p0, Lcom/metamoji/df/sprite/AllInOneGesture$6;->this$0:Lcom/metamoji/df/sprite/AllInOneGesture;

    invoke-direct {p0}, Lcom/metamoji/df/sprite/AllInOneGesture$State;-><init>()V

    return-void
.end method


# virtual methods
.method cancel(Landroid/view/MotionEvent;)Lcom/metamoji/df/sprite/AllInOneGesture$State;
    .locals 2

    .line 491
    iget-object v0, p0, Lcom/metamoji/df/sprite/AllInOneGesture$6;->this$0:Lcom/metamoji/df/sprite/AllInOneGesture;

    iget-object v0, v0, Lcom/metamoji/df/sprite/AllInOneGesture;->panListener:Lcom/metamoji/df/sprite/AllInOneGesture$PanListener;

    sget-object v1, Lcom/metamoji/df/sprite/TouchEvent;->MOTION:Lcom/metamoji/df/sprite/TouchEvent$OnMotion;

    invoke-virtual {v1, p1}, Lcom/metamoji/df/sprite/TouchEvent$OnMotion;->init(Landroid/view/MotionEvent;)Lcom/metamoji/df/sprite/TouchEvent$OnMotion;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/metamoji/df/sprite/AllInOneGesture$PanListener;->panCancel(Lcom/metamoji/df/sprite/TouchEvent;)V

    .line 492
    iget-object p1, p0, Lcom/metamoji/df/sprite/AllInOneGesture$6;->this$0:Lcom/metamoji/df/sprite/AllInOneGesture;

    invoke-static {p1}, Lcom/metamoji/df/sprite/AllInOneGesture;->-$$Nest$fget_0(Lcom/metamoji/df/sprite/AllInOneGesture;)Lcom/metamoji/df/sprite/AllInOneGesture$State;

    move-result-object p1

    return-object p1
.end method

.method minus(Landroid/view/MotionEvent;)Lcom/metamoji/df/sprite/AllInOneGesture$State;
    .locals 0

    .line 481
    iget-object p1, p0, Lcom/metamoji/df/sprite/AllInOneGesture$6;->this$0:Lcom/metamoji/df/sprite/AllInOneGesture;

    invoke-static {p1}, Lcom/metamoji/df/sprite/AllInOneGesture;->-$$Nest$fget_1Pan(Lcom/metamoji/df/sprite/AllInOneGesture;)Lcom/metamoji/df/sprite/AllInOneGesture$State;

    move-result-object p1

    return-object p1
.end method

.method move(Landroid/view/MotionEvent;)Lcom/metamoji/df/sprite/AllInOneGesture$State;
    .locals 4

    .line 459
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/metamoji/df/sprite/AllInOneGesture$6;->x0:F

    sub-float/2addr v0, v1

    .line 460
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/metamoji/df/sprite/AllInOneGesture$6;->y0:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    .line 461
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 462
    iget-object v1, p0, Lcom/metamoji/df/sprite/AllInOneGesture$6;->this$0:Lcom/metamoji/df/sprite/AllInOneGesture;

    iget v1, v1, Lcom/metamoji/df/sprite/AllInOneGesture;->panThreshold:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/metamoji/df/sprite/AllInOneGesture$6;->this$0:Lcom/metamoji/df/sprite/AllInOneGesture;

    invoke-static {v0}, Lcom/metamoji/df/sprite/AllInOneGesture;->-$$Nest$fget_2PanCarved(Lcom/metamoji/df/sprite/AllInOneGesture;)Lcom/metamoji/df/sprite/AllInOneGesture$State;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/AllInOneGesture$State;->move(Landroid/view/MotionEvent;)Lcom/metamoji/df/sprite/AllInOneGesture$State;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x1

    .line 465
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v1, v3

    .line 466
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    sub-float/2addr v0, v2

    mul-float/2addr v1, v1

    mul-float/2addr v0, v0

    add-float/2addr v1, v0

    float-to-double v0, v1

    .line 467
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 468
    iget v1, p0, Lcom/metamoji/df/sprite/AllInOneGesture$6;->d0:F

    div-float/2addr v0, v1

    .line 469
    sget-object v1, Lcom/metamoji/df/sprite/TouchEvent;->MOTION:Lcom/metamoji/df/sprite/TouchEvent$OnMotion;

    invoke-virtual {v1, p1}, Lcom/metamoji/df/sprite/TouchEvent$OnMotion;->init(Landroid/view/MotionEvent;)Lcom/metamoji/df/sprite/TouchEvent$OnMotion;

    move-result-object v1

    .line 470
    iget-object v2, p0, Lcom/metamoji/df/sprite/AllInOneGesture$6;->this$0:Lcom/metamoji/df/sprite/AllInOneGesture;

    iget v2, v2, Lcom/metamoji/df/sprite/AllInOneGesture;->zoomMinThreshold:F

    cmpg-float v2, v0, v2

    if-ltz v2, :cond_2

    iget-object v2, p0, Lcom/metamoji/df/sprite/AllInOneGesture$6;->this$0:Lcom/metamoji/df/sprite/AllInOneGesture;

    iget v2, v2, Lcom/metamoji/df/sprite/AllInOneGesture;->zoomMaxThreshold:F

    cmpg-float v0, v2, v0

    if-gez v0, :cond_1

    goto :goto_0

    .line 475
    :cond_1
    iget-object p1, p0, Lcom/metamoji/df/sprite/AllInOneGesture$6;->this$0:Lcom/metamoji/df/sprite/AllInOneGesture;

    iget-object p1, p1, Lcom/metamoji/df/sprite/AllInOneGesture;->panListener:Lcom/metamoji/df/sprite/AllInOneGesture$PanListener;

    invoke-interface {p1, v1}, Lcom/metamoji/df/sprite/AllInOneGesture$PanListener;->panMove(Lcom/metamoji/df/sprite/TouchEvent;)V

    return-object p0

    .line 471
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/metamoji/df/sprite/AllInOneGesture$6;->this$0:Lcom/metamoji/df/sprite/AllInOneGesture;

    iget-object v0, v0, Lcom/metamoji/df/sprite/AllInOneGesture;->panListener:Lcom/metamoji/df/sprite/AllInOneGesture$PanListener;

    invoke-interface {v0, v1}, Lcom/metamoji/df/sprite/AllInOneGesture$PanListener;->panCancel(Lcom/metamoji/df/sprite/TouchEvent;)V

    .line 472
    iget-object v0, p0, Lcom/metamoji/df/sprite/AllInOneGesture$6;->this$0:Lcom/metamoji/df/sprite/AllInOneGesture;

    iget-object v0, v0, Lcom/metamoji/df/sprite/AllInOneGesture;->pinchListener:Lcom/metamoji/df/sprite/AllInOneGesture$PinchListener;

    invoke-interface {v0, v1}, Lcom/metamoji/df/sprite/AllInOneGesture$PinchListener;->pinchStart(Lcom/metamoji/df/sprite/TouchEvent;)V

    .line 473
    iget-object v0, p0, Lcom/metamoji/df/sprite/AllInOneGesture$6;->this$0:Lcom/metamoji/df/sprite/AllInOneGesture;

    invoke-static {v0}, Lcom/metamoji/df/sprite/AllInOneGesture;->-$$Nest$fget_2Pinch(Lcom/metamoji/df/sprite/AllInOneGesture;)Lcom/metamoji/df/sprite/AllInOneGesture$State;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/AllInOneGesture$State;->setup(Landroid/view/MotionEvent;)Lcom/metamoji/df/sprite/AllInOneGesture$State;

    move-result-object p1

    return-object p1
.end method

.method setup(Landroid/view/MotionEvent;)Lcom/metamoji/df/sprite/AllInOneGesture$State;
    .locals 4

    .line 449
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/metamoji/df/sprite/AllInOneGesture$6;->x0:F

    .line 450
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/metamoji/df/sprite/AllInOneGesture$6;->y0:F

    const/4 v0, 0x1

    .line 451
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v1, v3

    .line 452
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    sub-float/2addr v0, p1

    mul-float/2addr v1, v1

    mul-float/2addr v0, v0

    add-float/2addr v1, v0

    float-to-double v0, v1

    .line 453
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    iput p1, p0, Lcom/metamoji/df/sprite/AllInOneGesture$6;->d0:F

    return-object p0
.end method

.method up(Landroid/view/MotionEvent;)Lcom/metamoji/df/sprite/AllInOneGesture$State;
    .locals 1

    .line 486
    iget-object v0, p0, Lcom/metamoji/df/sprite/AllInOneGesture$6;->this$0:Lcom/metamoji/df/sprite/AllInOneGesture;

    invoke-static {v0}, Lcom/metamoji/df/sprite/AllInOneGesture;->-$$Nest$fget_1Pan(Lcom/metamoji/df/sprite/AllInOneGesture;)Lcom/metamoji/df/sprite/AllInOneGesture$State;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/AllInOneGesture$State;->up(Landroid/view/MotionEvent;)Lcom/metamoji/df/sprite/AllInOneGesture$State;

    move-result-object p1

    return-object p1
.end method
