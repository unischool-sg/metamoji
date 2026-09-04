.class Lcom/metamoji/ui/UiImageEditorView$DragRecognizer;
.super Ljava/lang/Object;
.source "UiImageEditorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/UiImageEditorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DragRecognizer"
.end annotation


# instance fields
.field _disturbed:Z

.field _dragItem:I

.field _dragging:Z

.field _movingMask:Z

.field _pointerId:I

.field _touchPos:Landroid/graphics/PointF;

.field final synthetic this$0:Lcom/metamoji/ui/UiImageEditorView;


# direct methods
.method private constructor <init>(Lcom/metamoji/ui/UiImageEditorView;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 381
    iput-object p1, p0, Lcom/metamoji/ui/UiImageEditorView$DragRecognizer;->this$0:Lcom/metamoji/ui/UiImageEditorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 384
    iput p1, p0, Lcom/metamoji/ui/UiImageEditorView$DragRecognizer;->_pointerId:I

    const/4 p1, 0x0

    .line 385
    iput-boolean p1, p0, Lcom/metamoji/ui/UiImageEditorView$DragRecognizer;->_dragging:Z

    .line 386
    iput-boolean p1, p0, Lcom/metamoji/ui/UiImageEditorView$DragRecognizer;->_disturbed:Z

    .line 387
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/UiImageEditorView$DragRecognizer;->_touchPos:Landroid/graphics/PointF;

    .line 445
    iput p1, p0, Lcom/metamoji/ui/UiImageEditorView$DragRecognizer;->_dragItem:I

    .line 446
    iput-boolean p1, p0, Lcom/metamoji/ui/UiImageEditorView$DragRecognizer;->_movingMask:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/metamoji/ui/UiImageEditorView;Lcom/metamoji/ui/UiImageEditorView-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/UiImageEditorView$DragRecognizer;-><init>(Lcom/metamoji/ui/UiImageEditorView;)V

    return-void
.end method


# virtual methods
.method public onDrag(FFFF)Z
    .locals 2

    .line 486
    iget-object v0, p0, Lcom/metamoji/ui/UiImageEditorView$DragRecognizer;->this$0:Lcom/metamoji/ui/UiImageEditorView;

    invoke-static {v0}, Lcom/metamoji/ui/UiImageEditorView;->-$$Nest$fget_selectMode(Lcom/metamoji/ui/UiImageEditorView;)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 487
    iget p1, p0, Lcom/metamoji/ui/UiImageEditorView$DragRecognizer;->_dragItem:I

    if-eqz p1, :cond_0

    .line 488
    iget-object p2, p0, Lcom/metamoji/ui/UiImageEditorView$DragRecognizer;->this$0:Lcom/metamoji/ui/UiImageEditorView;

    invoke-static {p2, p1, p3, p4}, Lcom/metamoji/ui/UiImageEditorView;->-$$Nest$mmoveHandle(Lcom/metamoji/ui/UiImageEditorView;IFF)V

    return v1

    .line 490
    :cond_0
    iget-boolean p1, p0, Lcom/metamoji/ui/UiImageEditorView$DragRecognizer;->_movingMask:Z

    if-eqz p1, :cond_1

    .line 491
    iget-object p1, p0, Lcom/metamoji/ui/UiImageEditorView$DragRecognizer;->this$0:Lcom/metamoji/ui/UiImageEditorView;

    invoke-static {p1, p3, p4}, Lcom/metamoji/ui/UiImageEditorView;->-$$Nest$mmoveMask(Lcom/metamoji/ui/UiImageEditorView;FF)V

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1

    .line 495
    :cond_2
    iget-object p3, p0, Lcom/metamoji/ui/UiImageEditorView$DragRecognizer;->this$0:Lcom/metamoji/ui/UiImageEditorView;

    invoke-static {p3, p1, p2}, Lcom/metamoji/ui/UiImageEditorView;->-$$Nest$maddLassoPoint(Lcom/metamoji/ui/UiImageEditorView;FF)V

    return v1
.end method

.method public onDragEnd(FFFF)Z
    .locals 0

    .line 510
    iget-object p3, p0, Lcom/metamoji/ui/UiImageEditorView$DragRecognizer;->this$0:Lcom/metamoji/ui/UiImageEditorView;

    invoke-static {p3}, Lcom/metamoji/ui/UiImageEditorView;->-$$Nest$fget_selectMode(Lcom/metamoji/ui/UiImageEditorView;)I

    move-result p3

    const/4 p4, 0x1

    if-ne p3, p4, :cond_0

    .line 511
    iget-object p3, p0, Lcom/metamoji/ui/UiImageEditorView$DragRecognizer;->this$0:Lcom/metamoji/ui/UiImageEditorView;

    invoke-static {p3, p1, p2}, Lcom/metamoji/ui/UiImageEditorView;->-$$Nest$mcloseLasso(Lcom/metamoji/ui/UiImageEditorView;FF)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onDragStart(Landroid/graphics/PointF;)Z
    .locals 5

    const/4 v0, 0x0

    .line 454
    iput v0, p0, Lcom/metamoji/ui/UiImageEditorView$DragRecognizer;->_dragItem:I

    .line 455
    iput-boolean v0, p0, Lcom/metamoji/ui/UiImageEditorView$DragRecognizer;->_movingMask:Z

    .line 457
    iget-object v1, p0, Lcom/metamoji/ui/UiImageEditorView$DragRecognizer;->this$0:Lcom/metamoji/ui/UiImageEditorView;

    invoke-static {v1}, Lcom/metamoji/ui/UiImageEditorView;->-$$Nest$fget_selectMode(Lcom/metamoji/ui/UiImageEditorView;)I

    move-result v1

    .line 468
    iget-object v2, p0, Lcom/metamoji/ui/UiImageEditorView$DragRecognizer;->this$0:Lcom/metamoji/ui/UiImageEditorView;

    const/4 v3, 0x1

    if-nez v1, :cond_2

    .line 458
    iget-object v1, v2, Lcom/metamoji/ui/UiImageEditorView;->_maskRect:Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget v4, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 459
    iput-boolean v3, p0, Lcom/metamoji/ui/UiImageEditorView$DragRecognizer;->_movingMask:Z

    return v3

    .line 462
    :cond_0
    iget-object v1, p0, Lcom/metamoji/ui/UiImageEditorView$DragRecognizer;->this$0:Lcom/metamoji/ui/UiImageEditorView;

    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, p1}, Lcom/metamoji/ui/UiImageEditorView;->handleHitTest(FF)I

    move-result p1

    if-ltz p1, :cond_1

    .line 464
    iget-object v0, p0, Lcom/metamoji/ui/UiImageEditorView$DragRecognizer;->this$0:Lcom/metamoji/ui/UiImageEditorView;

    invoke-static {v0, p1}, Lcom/metamoji/ui/UiImageEditorView;->-$$Nest$mindexToBits(Lcom/metamoji/ui/UiImageEditorView;I)I

    move-result p1

    iput p1, p0, Lcom/metamoji/ui/UiImageEditorView$DragRecognizer;->_dragItem:I

    return v3

    :cond_1
    return v0

    .line 468
    :cond_2
    iget-object v0, v2, Lcom/metamoji/ui/UiImageEditorView;->_start:Landroid/graphics/PointF;

    invoke-virtual {v0, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 469
    iget-object v0, p0, Lcom/metamoji/ui/UiImageEditorView$DragRecognizer;->this$0:Lcom/metamoji/ui/UiImageEditorView;

    iget-object v0, v0, Lcom/metamoji/ui/UiImageEditorView;->_prev:Landroid/graphics/PointF;

    invoke-virtual {v0, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 471
    iget-object p1, p0, Lcom/metamoji/ui/UiImageEditorView$DragRecognizer;->this$0:Lcom/metamoji/ui/UiImageEditorView;

    invoke-static {p1}, Lcom/metamoji/ui/UiImageEditorView;->-$$Nest$mclearDrawing(Lcom/metamoji/ui/UiImageEditorView;)V

    return v3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 390
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 391
    iput-boolean v2, p0, Lcom/metamoji/ui/UiImageEditorView$DragRecognizer;->_disturbed:Z

    .line 392
    iget-object p1, p0, Lcom/metamoji/ui/UiImageEditorView$DragRecognizer;->this$0:Lcom/metamoji/ui/UiImageEditorView;

    invoke-static {p1}, Lcom/metamoji/ui/UiImageEditorView;->-$$Nest$mclearDrawing(Lcom/metamoji/ui/UiImageEditorView;)V

    return v1

    .line 397
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 398
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 399
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 400
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    if-eqz v0, :cond_6

    const/4 v5, 0x2

    if-eq v0, v2, :cond_1

    if-eq v0, v5, :cond_1

    goto :goto_0

    .line 412
    :cond_1
    iget-boolean v6, p0, Lcom/metamoji/ui/UiImageEditorView$DragRecognizer;->_dragging:Z

    if-nez v6, :cond_2

    :goto_0
    return v1

    .line 415
    :cond_2
    iget v6, p0, Lcom/metamoji/ui/UiImageEditorView$DragRecognizer;->_pointerId:I

    if-ne p1, v6, :cond_5

    iget-boolean v6, p0, Lcom/metamoji/ui/UiImageEditorView$DragRecognizer;->_disturbed:Z

    if-eqz v6, :cond_3

    goto :goto_2

    .line 434
    :cond_3
    iget-object p1, p0, Lcom/metamoji/ui/UiImageEditorView$DragRecognizer;->_touchPos:Landroid/graphics/PointF;

    if-ne v0, v5, :cond_4

    .line 432
    iget p1, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, v3

    iget-object v0, p0, Lcom/metamoji/ui/UiImageEditorView$DragRecognizer;->_touchPos:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v4

    invoke-virtual {p0, v3, v4, p1, v0}, Lcom/metamoji/ui/UiImageEditorView$DragRecognizer;->onDrag(FFFF)Z

    move-result p1

    goto :goto_1

    .line 434
    :cond_4
    iget p1, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, v3

    iget-object v0, p0, Lcom/metamoji/ui/UiImageEditorView$DragRecognizer;->_touchPos:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v4

    invoke-virtual {p0, v3, v4, p1, v0}, Lcom/metamoji/ui/UiImageEditorView$DragRecognizer;->onDragEnd(FFFF)Z

    move-result p1

    .line 436
    :goto_1
    iget-object v0, p0, Lcom/metamoji/ui/UiImageEditorView$DragRecognizer;->_touchPos:Landroid/graphics/PointF;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    return p1

    .line 417
    :cond_5
    :goto_2
    iput-boolean v1, p0, Lcom/metamoji/ui/UiImageEditorView$DragRecognizer;->_disturbed:Z

    .line 418
    iput p1, p0, Lcom/metamoji/ui/UiImageEditorView$DragRecognizer;->_pointerId:I

    .line 419
    iget-object p1, p0, Lcom/metamoji/ui/UiImageEditorView$DragRecognizer;->_touchPos:Landroid/graphics/PointF;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    return v2

    .line 404
    :cond_6
    iput-boolean v1, p0, Lcom/metamoji/ui/UiImageEditorView$DragRecognizer;->_disturbed:Z

    .line 405
    iput p1, p0, Lcom/metamoji/ui/UiImageEditorView$DragRecognizer;->_pointerId:I

    .line 406
    iput-boolean v1, p0, Lcom/metamoji/ui/UiImageEditorView$DragRecognizer;->_dragging:Z

    .line 407
    iget-object p1, p0, Lcom/metamoji/ui/UiImageEditorView$DragRecognizer;->_touchPos:Landroid/graphics/PointF;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 408
    iget-object p1, p0, Lcom/metamoji/ui/UiImageEditorView$DragRecognizer;->_touchPos:Landroid/graphics/PointF;

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/UiImageEditorView$DragRecognizer;->onDragStart(Landroid/graphics/PointF;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/metamoji/ui/UiImageEditorView$DragRecognizer;->_dragging:Z

    return p1
.end method
