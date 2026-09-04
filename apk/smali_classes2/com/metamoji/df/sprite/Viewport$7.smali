.class Lcom/metamoji/df/sprite/Viewport$7;
.super Ljava/lang/Object;
.source "Viewport.java"

# interfaces
.implements Lcom/metamoji/df/sprite/AllInOneGesture$DragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/df/sprite/Viewport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field _buttonSecondary:Z

.field _contextClick:Z

.field _tempMoveStartPos:Landroid/graphics/PointF;

.field final synthetic this$0:Lcom/metamoji/df/sprite/Viewport;


# direct methods
.method constructor <init>(Lcom/metamoji/df/sprite/Viewport;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 478
    iput-object p1, p0, Lcom/metamoji/df/sprite/Viewport$7;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 479
    iput-boolean p1, p0, Lcom/metamoji/df/sprite/Viewport$7;->_buttonSecondary:Z

    .line 480
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/df/sprite/Viewport$7;->_tempMoveStartPos:Landroid/graphics/PointF;

    .line 481
    iput-boolean p1, p0, Lcom/metamoji/df/sprite/Viewport$7;->_contextClick:Z

    return-void
.end method


# virtual methods
.method public dragCancel(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 2

    .line 540
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport$7;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-static {v0}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fgetnumberOfTouchesPanGesture(Lcom/metamoji/df/sprite/Viewport;)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 541
    iget-boolean v0, p0, Lcom/metamoji/df/sprite/Viewport$7;->_buttonSecondary:Z

    .line 545
    iget-object v1, p0, Lcom/metamoji/df/sprite/Viewport$7;->this$0:Lcom/metamoji/df/sprite/Viewport;

    if-eqz v0, :cond_0

    .line 542
    invoke-static {v1}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fgetgesture(Lcom/metamoji/df/sprite/Viewport;)Lcom/metamoji/df/sprite/AllInOneGesture;

    move-result-object v0

    iget-object v0, v0, Lcom/metamoji/df/sprite/AllInOneGesture;->panListener:Lcom/metamoji/df/sprite/AllInOneGesture$PanListener;

    invoke-interface {v0, p1}, Lcom/metamoji/df/sprite/AllInOneGesture$PanListener;->panCancel(Lcom/metamoji/df/sprite/TouchEvent;)V

    const/4 p1, 0x0

    .line 543
    iput-boolean p1, p0, Lcom/metamoji/df/sprite/Viewport$7;->_buttonSecondary:Z

    return-void

    .line 545
    :cond_0
    invoke-static {v1}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fget_GESTURE_DRAG(Lcom/metamoji/df/sprite/Viewport;)Lcom/metamoji/df/sprite/AllInOneGesture$DragListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/metamoji/df/sprite/AllInOneGesture$DragListener;->dragCancel(Lcom/metamoji/df/sprite/TouchEvent;)V

    return-void

    .line 548
    :cond_1
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport$7;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-static {v0}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fgetgesture(Lcom/metamoji/df/sprite/Viewport;)Lcom/metamoji/df/sprite/AllInOneGesture;

    move-result-object v0

    iget-object v0, v0, Lcom/metamoji/df/sprite/AllInOneGesture;->panListener:Lcom/metamoji/df/sprite/AllInOneGesture$PanListener;

    invoke-interface {v0, p1}, Lcom/metamoji/df/sprite/AllInOneGesture$PanListener;->panCancel(Lcom/metamoji/df/sprite/TouchEvent;)V

    return-void
.end method

.method public dragEnd(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 2

    .line 523
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport$7;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-static {v0}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fgetnumberOfTouchesPanGesture(Lcom/metamoji/df/sprite/Viewport;)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 524
    iget-boolean v0, p0, Lcom/metamoji/df/sprite/Viewport$7;->_buttonSecondary:Z

    .line 531
    iget-object v1, p0, Lcom/metamoji/df/sprite/Viewport$7;->this$0:Lcom/metamoji/df/sprite/Viewport;

    if-eqz v0, :cond_1

    .line 525
    invoke-static {v1}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fgetgesture(Lcom/metamoji/df/sprite/Viewport;)Lcom/metamoji/df/sprite/AllInOneGesture;

    move-result-object v0

    iget-object v0, v0, Lcom/metamoji/df/sprite/AllInOneGesture;->panListener:Lcom/metamoji/df/sprite/AllInOneGesture$PanListener;

    invoke-interface {v0, p1}, Lcom/metamoji/df/sprite/AllInOneGesture$PanListener;->panEnd(Lcom/metamoji/df/sprite/TouchEvent;)V

    .line 526
    iget-boolean v0, p0, Lcom/metamoji/df/sprite/Viewport$7;->_contextClick:Z

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport$7;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-static {v0}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fgetcontextClickListener(Lcom/metamoji/df/sprite/Viewport;)Lcom/metamoji/df/sprite/ContextClickListener2;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/metamoji/df/sprite/ContextClickListener2;->contextClick(Lcom/metamoji/df/sprite/TouchEvent;)V

    :cond_0
    const/4 p1, 0x0

    .line 529
    iput-boolean p1, p0, Lcom/metamoji/df/sprite/Viewport$7;->_buttonSecondary:Z

    return-void

    .line 531
    :cond_1
    invoke-static {v1}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fget_GESTURE_DRAG(Lcom/metamoji/df/sprite/Viewport;)Lcom/metamoji/df/sprite/AllInOneGesture$DragListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/metamoji/df/sprite/AllInOneGesture$DragListener;->dragEnd(Lcom/metamoji/df/sprite/TouchEvent;)V

    return-void

    .line 534
    :cond_2
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport$7;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-static {v0}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fgetgesture(Lcom/metamoji/df/sprite/Viewport;)Lcom/metamoji/df/sprite/AllInOneGesture;

    move-result-object v0

    iget-object v0, v0, Lcom/metamoji/df/sprite/AllInOneGesture;->panListener:Lcom/metamoji/df/sprite/AllInOneGesture$PanListener;

    invoke-interface {v0, p1}, Lcom/metamoji/df/sprite/AllInOneGesture$PanListener;->panEnd(Lcom/metamoji/df/sprite/TouchEvent;)V

    return-void
.end method

.method public dragMove(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 3

    .line 502
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport$7;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-static {v0}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fgetnumberOfTouchesPanGesture(Lcom/metamoji/df/sprite/Viewport;)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 503
    invoke-interface {p1}, Lcom/metamoji/df/sprite/TouchEvent;->getButtonState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 505
    invoke-interface {p1}, Lcom/metamoji/df/sprite/TouchEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/metamoji/df/sprite/Viewport$7;->_tempMoveStartPos:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    .line 506
    invoke-interface {p1}, Lcom/metamoji/df/sprite/TouchEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/metamoji/df/sprite/Viewport$7;->_tempMoveStartPos:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    .line 507
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x41100000    # 9.0f

    .line 508
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 509
    iput-boolean v0, p0, Lcom/metamoji/df/sprite/Viewport$7;->_contextClick:Z

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport$7;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-static {v0}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fgetgesture(Lcom/metamoji/df/sprite/Viewport;)Lcom/metamoji/df/sprite/AllInOneGesture;

    move-result-object v0

    iget-object v0, v0, Lcom/metamoji/df/sprite/AllInOneGesture;->panListener:Lcom/metamoji/df/sprite/AllInOneGesture$PanListener;

    invoke-interface {v0, p1}, Lcom/metamoji/df/sprite/AllInOneGesture$PanListener;->panMove(Lcom/metamoji/df/sprite/TouchEvent;)V

    return-void

    .line 514
    :cond_1
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport$7;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-static {v0}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fget_GESTURE_DRAG(Lcom/metamoji/df/sprite/Viewport;)Lcom/metamoji/df/sprite/AllInOneGesture$DragListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/metamoji/df/sprite/AllInOneGesture$DragListener;->dragMove(Lcom/metamoji/df/sprite/TouchEvent;)V

    return-void

    .line 517
    :cond_2
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport$7;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-static {v0}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fgetgesture(Lcom/metamoji/df/sprite/Viewport;)Lcom/metamoji/df/sprite/AllInOneGesture;

    move-result-object v0

    iget-object v0, v0, Lcom/metamoji/df/sprite/AllInOneGesture;->panListener:Lcom/metamoji/df/sprite/AllInOneGesture$PanListener;

    invoke-interface {v0, p1}, Lcom/metamoji/df/sprite/AllInOneGesture$PanListener;->panMove(Lcom/metamoji/df/sprite/TouchEvent;)V

    return-void
.end method

.method public dragStart(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 3

    .line 484
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport$7;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-static {v0}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fgettweener(Lcom/metamoji/df/sprite/Viewport;)Lcom/metamoji/df/sprite/Tweener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Tweener;->cancel()V

    .line 485
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport$7;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-static {v0}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fgetnumberOfTouchesPanGesture(Lcom/metamoji/df/sprite/Viewport;)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 486
    invoke-interface {p1}, Lcom/metamoji/df/sprite/TouchEvent;->getButtonState()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 487
    iput-boolean v1, p0, Lcom/metamoji/df/sprite/Viewport$7;->_buttonSecondary:Z

    .line 488
    iput-boolean v1, p0, Lcom/metamoji/df/sprite/Viewport$7;->_contextClick:Z

    .line 489
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport$7;->_tempMoveStartPos:Landroid/graphics/PointF;

    invoke-interface {p1}, Lcom/metamoji/df/sprite/TouchEvent;->getPoint()Landroid/graphics/PointF;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/cm/PointUtils;->set(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 491
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport$7;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-static {v0}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fgetgesture(Lcom/metamoji/df/sprite/Viewport;)Lcom/metamoji/df/sprite/AllInOneGesture;

    move-result-object v0

    iget-object v0, v0, Lcom/metamoji/df/sprite/AllInOneGesture;->panListener:Lcom/metamoji/df/sprite/AllInOneGesture$PanListener;

    invoke-interface {v0, p1}, Lcom/metamoji/df/sprite/AllInOneGesture$PanListener;->panStart(Lcom/metamoji/df/sprite/TouchEvent;)V

    return-void

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport$7;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-static {v0}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fget_GESTURE_DRAG(Lcom/metamoji/df/sprite/Viewport;)Lcom/metamoji/df/sprite/AllInOneGesture$DragListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/metamoji/df/sprite/AllInOneGesture$DragListener;->dragStart(Lcom/metamoji/df/sprite/TouchEvent;)V

    return-void

    .line 496
    :cond_1
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport$7;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-static {v0}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fgetgesture(Lcom/metamoji/df/sprite/Viewport;)Lcom/metamoji/df/sprite/AllInOneGesture;

    move-result-object v0

    iget-object v0, v0, Lcom/metamoji/df/sprite/AllInOneGesture;->panListener:Lcom/metamoji/df/sprite/AllInOneGesture$PanListener;

    invoke-interface {v0, p1}, Lcom/metamoji/df/sprite/AllInOneGesture$PanListener;->panStart(Lcom/metamoji/df/sprite/TouchEvent;)V

    return-void
.end method
