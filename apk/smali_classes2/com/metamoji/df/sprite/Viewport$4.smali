.class Lcom/metamoji/df/sprite/Viewport$4;
.super Ljava/lang/Object;
.source "Viewport.java"

# interfaces
.implements Lcom/metamoji/df/sprite/AllInOneGesture$PinchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/df/sprite/Viewport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private idA:I

.field private idB:I

.field private prevA:Landroid/graphics/PointF;

.field private prevB:Landroid/graphics/PointF;

.field private prevPos:Landroid/graphics/PointF;

.field private st1:Lcom/metamoji/df/sprite/PinchSolver$ScaleTranslate;

.field private st2:Lcom/metamoji/df/sprite/PinchSolver$ScaleTranslate;

.field final synthetic this$0:Lcom/metamoji/df/sprite/Viewport;


# direct methods
.method constructor <init>(Lcom/metamoji/df/sprite/Viewport;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 331
    iput-object p1, p0, Lcom/metamoji/df/sprite/Viewport$4;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    new-instance p1, Lcom/metamoji/df/sprite/PinchSolver$ScaleTranslate;

    invoke-direct {p1}, Lcom/metamoji/df/sprite/PinchSolver$ScaleTranslate;-><init>()V

    iput-object p1, p0, Lcom/metamoji/df/sprite/Viewport$4;->st1:Lcom/metamoji/df/sprite/PinchSolver$ScaleTranslate;

    .line 339
    new-instance p1, Lcom/metamoji/df/sprite/PinchSolver$ScaleTranslate;

    invoke-direct {p1}, Lcom/metamoji/df/sprite/PinchSolver$ScaleTranslate;-><init>()V

    iput-object p1, p0, Lcom/metamoji/df/sprite/Viewport$4;->st2:Lcom/metamoji/df/sprite/PinchSolver$ScaleTranslate;

    return-void
.end method


# virtual methods
.method public pinchCancel(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 1

    .line 453
    iget-object p1, p0, Lcom/metamoji/df/sprite/Viewport$4;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-static {p1}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fgetmainLayer(Lcom/metamoji/df/sprite/Viewport;)Lcom/metamoji/df/sprite/Layer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 454
    iget-object p1, p0, Lcom/metamoji/df/sprite/Viewport$4;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-static {p1}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fgetmainLayer(Lcom/metamoji/df/sprite/Viewport;)Lcom/metamoji/df/sprite/Layer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Layer;->endScreenShot()V

    .line 456
    :cond_0
    iget-object p1, p0, Lcom/metamoji/df/sprite/Viewport$4;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-static {p1}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fgetviewportListener(Lcom/metamoji/df/sprite/Viewport;)Lcom/metamoji/df/sprite/ViewportListener;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/metamoji/df/sprite/ViewportListener;->zoomEnd(Z)V

    return-void
.end method

.method public pinchEnd(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 2

    .line 405
    iget-object p1, p0, Lcom/metamoji/df/sprite/Viewport$4;->this$0:Lcom/metamoji/df/sprite/Viewport;

    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport$4;->prevA:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/metamoji/df/sprite/Viewport$4;->prevB:Landroid/graphics/PointF;

    invoke-static {v0, v1}, Lcom/metamoji/df/sprite/Geometry;->plus(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Lcom/metamoji/df/sprite/Geometry;->div(Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$mpinchZoomRebound(Lcom/metamoji/df/sprite/Viewport;Landroid/graphics/PointF;)Z

    move-result p1

    .line 410
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport$4;->this$0:Lcom/metamoji/df/sprite/Viewport;

    if-eqz p1, :cond_0

    .line 406
    invoke-static {v0}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fgetviewportListener(Lcom/metamoji/df/sprite/Viewport;)Lcom/metamoji/df/sprite/ViewportListener;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/metamoji/df/sprite/ViewportListener;->zoomEnd(Z)V

    .line 407
    iget-object p1, p0, Lcom/metamoji/df/sprite/Viewport$4;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-static {p1}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fgetviewportListener(Lcom/metamoji/df/sprite/Viewport;)Lcom/metamoji/df/sprite/ViewportListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/metamoji/df/sprite/ViewportListener;->zoomReboundStart()V

    return-void

    .line 410
    :cond_0
    invoke-static {v0}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fgetmainLayer(Lcom/metamoji/df/sprite/Viewport;)Lcom/metamoji/df/sprite/Layer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 411
    iget-object p1, p0, Lcom/metamoji/df/sprite/Viewport$4;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-static {p1}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fgetmainLayer(Lcom/metamoji/df/sprite/Viewport;)Lcom/metamoji/df/sprite/Layer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Layer;->endScreenShot()V

    .line 413
    :cond_1
    iget-object p1, p0, Lcom/metamoji/df/sprite/Viewport$4;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-static {p1}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fgetviewportListener(Lcom/metamoji/df/sprite/Viewport;)Lcom/metamoji/df/sprite/ViewportListener;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/metamoji/df/sprite/ViewportListener;->zoomEnd(Z)V

    return-void
.end method

.method public pinchMove(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 9

    .line 363
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport$4;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Viewport;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 368
    :cond_0
    iget v1, p0, Lcom/metamoji/df/sprite/Viewport$4;->idA:I

    invoke-interface {p1, v1}, Lcom/metamoji/df/sprite/TouchEvent;->getPointer(I)Landroid/graphics/PointF;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 372
    :cond_1
    iget v1, p0, Lcom/metamoji/df/sprite/Viewport$4;->idB:I

    invoke-interface {p1, v1}, Lcom/metamoji/df/sprite/TouchEvent;->getPointer(I)Landroid/graphics/PointF;

    move-result-object v5

    if-nez v5, :cond_2

    :goto_0
    return-void

    .line 377
    :cond_2
    invoke-static {}, Lcom/metamoji/df/sprite/PinchSolver;->getInstance()Lcom/metamoji/df/sprite/PinchSolver;

    move-result-object v2

    .line 378
    iget-object p1, p0, Lcom/metamoji/df/sprite/Viewport$4;->prevA:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/metamoji/df/sprite/Viewport$4;->prevB:Landroid/graphics/PointF;

    invoke-virtual {v2, v4, v5, p1, v1}, Lcom/metamoji/df/sprite/PinchSolver;->detect(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p1

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-lez p1, :cond_3

    .line 381
    iget-object p1, p0, Lcom/metamoji/df/sprite/Viewport$4;->prevA:Landroid/graphics/PointF;

    invoke-static {v4, p1}, Lcom/metamoji/df/sprite/Geometry;->minus(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport$4;->prevB:Landroid/graphics/PointF;

    invoke-static {v5, v0}, Lcom/metamoji/df/sprite/Geometry;->minus(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/metamoji/df/sprite/Geometry;->plus(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Lcom/metamoji/df/sprite/Geometry;->div(Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object p1

    .line 382
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport$4;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-static {v0}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fgetscrollTranslate(Lcom/metamoji/df/sprite/Viewport;)Landroid/graphics/PointF;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/metamoji/df/sprite/Geometry;->plus(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    .line 383
    iget v0, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, p1, Landroid/graphics/PointF;->y:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_4

    .line 384
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport$4;->this$0:Lcom/metamoji/df/sprite/Viewport;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/df/sprite/Viewport;->setScrollTranslate(FF)V

    goto :goto_1

    .line 388
    :cond_3
    iget-object p1, p0, Lcom/metamoji/df/sprite/Viewport$4;->st1:Lcom/metamoji/df/sprite/PinchSolver$ScaleTranslate;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Stage;->getZoom()F

    move-result v1

    iput v1, p1, Lcom/metamoji/df/sprite/PinchSolver$ScaleTranslate;->scale:F

    .line 389
    iget-object p1, p0, Lcom/metamoji/df/sprite/Viewport$4;->st1:Lcom/metamoji/df/sprite/PinchSolver$ScaleTranslate;

    iget-object v1, p0, Lcom/metamoji/df/sprite/Viewport$4;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-static {v1}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fgetscrollTranslate(Lcom/metamoji/df/sprite/Viewport;)Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iput v1, p1, Lcom/metamoji/df/sprite/PinchSolver$ScaleTranslate;->tx:F

    .line 390
    iget-object p1, p0, Lcom/metamoji/df/sprite/Viewport$4;->st1:Lcom/metamoji/df/sprite/PinchSolver$ScaleTranslate;

    iget-object v1, p0, Lcom/metamoji/df/sprite/Viewport$4;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-static {v1}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fgetscrollTranslate(Lcom/metamoji/df/sprite/Viewport;)Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, p1, Lcom/metamoji/df/sprite/PinchSolver$ScaleTranslate;->ty:F

    .line 392
    iget-object v3, p0, Lcom/metamoji/df/sprite/Viewport$4;->st2:Lcom/metamoji/df/sprite/PinchSolver$ScaleTranslate;

    iget-object v6, p0, Lcom/metamoji/df/sprite/Viewport$4;->prevA:Landroid/graphics/PointF;

    iget-object v7, p0, Lcom/metamoji/df/sprite/Viewport$4;->prevB:Landroid/graphics/PointF;

    iget-object v8, p0, Lcom/metamoji/df/sprite/Viewport$4;->st1:Lcom/metamoji/df/sprite/PinchSolver$ScaleTranslate;

    invoke-virtual/range {v2 .. v8}, Lcom/metamoji/df/sprite/PinchSolver;->solve(Lcom/metamoji/df/sprite/PinchSolver$ScaleTranslate;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/metamoji/df/sprite/PinchSolver$ScaleTranslate;)V

    .line 393
    iget-object p1, p0, Lcom/metamoji/df/sprite/Viewport$4;->st2:Lcom/metamoji/df/sprite/PinchSolver$ScaleTranslate;

    iget p1, p1, Lcom/metamoji/df/sprite/PinchSolver$ScaleTranslate;->scale:F

    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/Stage;->setZoom(F)V

    .line 394
    iget-object p1, p0, Lcom/metamoji/df/sprite/Viewport$4;->st2:Lcom/metamoji/df/sprite/PinchSolver$ScaleTranslate;

    iget p1, p1, Lcom/metamoji/df/sprite/PinchSolver$ScaleTranslate;->tx:F

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/metamoji/df/sprite/Viewport$4;->st2:Lcom/metamoji/df/sprite/PinchSolver$ScaleTranslate;

    iget p1, p1, Lcom/metamoji/df/sprite/PinchSolver$ScaleTranslate;->ty:F

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-nez p1, :cond_4

    .line 395
    iget-object p1, p0, Lcom/metamoji/df/sprite/Viewport$4;->this$0:Lcom/metamoji/df/sprite/Viewport;

    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport$4;->st2:Lcom/metamoji/df/sprite/PinchSolver$ScaleTranslate;

    iget v0, v0, Lcom/metamoji/df/sprite/PinchSolver$ScaleTranslate;->tx:F

    iget-object v1, p0, Lcom/metamoji/df/sprite/Viewport$4;->st2:Lcom/metamoji/df/sprite/PinchSolver$ScaleTranslate;

    iget v1, v1, Lcom/metamoji/df/sprite/PinchSolver$ScaleTranslate;->ty:F

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/df/sprite/Viewport;->setScrollTranslate(FF)V

    .line 398
    :cond_4
    :goto_1
    iput-object v4, p0, Lcom/metamoji/df/sprite/Viewport$4;->prevA:Landroid/graphics/PointF;

    .line 399
    iput-object v5, p0, Lcom/metamoji/df/sprite/Viewport$4;->prevB:Landroid/graphics/PointF;

    .line 400
    iget-object p1, p0, Lcom/metamoji/df/sprite/Viewport$4;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-static {p1}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fgetviewportListener(Lcom/metamoji/df/sprite/Viewport;)Lcom/metamoji/df/sprite/ViewportListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/metamoji/df/sprite/ViewportListener;->zoomChanging()V

    return-void
.end method

.method public pinchSingleEnd(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 1

    const/4 v0, 0x0

    .line 445
    invoke-interface {p1, v0}, Lcom/metamoji/df/sprite/TouchEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/metamoji/df/sprite/Viewport$4;->idA:I

    const/4 v0, 0x1

    .line 446
    invoke-interface {p1, v0}, Lcom/metamoji/df/sprite/TouchEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/metamoji/df/sprite/Viewport$4;->idB:I

    .line 447
    iget v0, p0, Lcom/metamoji/df/sprite/Viewport$4;->idA:I

    invoke-interface {p1, v0}, Lcom/metamoji/df/sprite/TouchEvent;->getPointer(I)Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/df/sprite/Viewport$4;->prevA:Landroid/graphics/PointF;

    .line 448
    iget v0, p0, Lcom/metamoji/df/sprite/Viewport$4;->idB:I

    invoke-interface {p1, v0}, Lcom/metamoji/df/sprite/TouchEvent;->getPointer(I)Landroid/graphics/PointF;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/df/sprite/Viewport$4;->prevB:Landroid/graphics/PointF;

    return-void
.end method

.method public pinchSingleMove(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 4

    .line 426
    invoke-interface {p1}, Lcom/metamoji/df/sprite/TouchEvent;->getX()F

    move-result v0

    .line 427
    invoke-interface {p1}, Lcom/metamoji/df/sprite/TouchEvent;->getY()F

    move-result p1

    .line 428
    iget-object v1, p0, Lcom/metamoji/df/sprite/Viewport$4;->prevPos:Landroid/graphics/PointF;

    if-nez v1, :cond_0

    .line 429
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v0, p1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lcom/metamoji/df/sprite/Viewport$4;->prevPos:Landroid/graphics/PointF;

    return-void

    .line 431
    :cond_0
    iget-object v1, p0, Lcom/metamoji/df/sprite/Viewport$4;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-static {v1}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fgetscrollTranslate(Lcom/metamoji/df/sprite/Viewport;)Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/metamoji/df/sprite/Viewport$4;->prevPos:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float v2, v0, v2

    add-float/2addr v1, v2

    .line 432
    iget-object v2, p0, Lcom/metamoji/df/sprite/Viewport$4;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-static {v2}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fgetscrollTranslate(Lcom/metamoji/df/sprite/Viewport;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/metamoji/df/sprite/Viewport$4;->prevPos:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float v3, p1, v3

    add-float/2addr v2, v3

    .line 433
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_1

    .line 434
    iget-object v3, p0, Lcom/metamoji/df/sprite/Viewport$4;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-virtual {v3, v1, v2}, Lcom/metamoji/df/sprite/Viewport;->setScrollTranslate(FF)V

    .line 436
    :cond_1
    iget-object v1, p0, Lcom/metamoji/df/sprite/Viewport$4;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-static {v1}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fgetviewportListener(Lcom/metamoji/df/sprite/Viewport;)Lcom/metamoji/df/sprite/ViewportListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/metamoji/df/sprite/ViewportListener;->zoomChanging()V

    .line 437
    iget-object v1, p0, Lcom/metamoji/df/sprite/Viewport$4;->prevPos:Landroid/graphics/PointF;

    invoke-virtual {v1, v0, p1}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method public pinchSingleStart(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 0

    const/4 p1, 0x0

    .line 420
    iput-object p1, p0, Lcom/metamoji/df/sprite/Viewport$4;->prevPos:Landroid/graphics/PointF;

    return-void
.end method

.method public pinchStart(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport$4;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-static {v0}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fgettweener(Lcom/metamoji/df/sprite/Viewport;)Lcom/metamoji/df/sprite/Tweener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Tweener;->cancel()V

    .line 345
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport$4;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Viewport;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 350
    invoke-interface {p1, v0}, Lcom/metamoji/df/sprite/TouchEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/metamoji/df/sprite/Viewport$4;->idA:I

    const/4 v0, 0x1

    .line 351
    invoke-interface {p1, v0}, Lcom/metamoji/df/sprite/TouchEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/metamoji/df/sprite/Viewport$4;->idB:I

    .line 352
    iget v0, p0, Lcom/metamoji/df/sprite/Viewport$4;->idA:I

    invoke-interface {p1, v0}, Lcom/metamoji/df/sprite/TouchEvent;->getPointer(I)Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/df/sprite/Viewport$4;->prevA:Landroid/graphics/PointF;

    .line 353
    iget v0, p0, Lcom/metamoji/df/sprite/Viewport$4;->idB:I

    invoke-interface {p1, v0}, Lcom/metamoji/df/sprite/TouchEvent;->getPointer(I)Landroid/graphics/PointF;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/df/sprite/Viewport$4;->prevB:Landroid/graphics/PointF;

    .line 355
    iget-object p1, p0, Lcom/metamoji/df/sprite/Viewport$4;->this$0:Lcom/metamoji/df/sprite/Viewport;

    iget-boolean p1, p1, Lcom/metamoji/df/sprite/Viewport;->useScreenShotPanPinch:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/metamoji/df/sprite/Viewport$4;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-static {p1}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fgetmainLayer(Lcom/metamoji/df/sprite/Viewport;)Lcom/metamoji/df/sprite/Layer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 356
    iget-object p1, p0, Lcom/metamoji/df/sprite/Viewport$4;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-static {p1}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fgetmainLayer(Lcom/metamoji/df/sprite/Viewport;)Lcom/metamoji/df/sprite/Layer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Layer;->beginScreenShot()V

    .line 358
    :cond_1
    iget-object p1, p0, Lcom/metamoji/df/sprite/Viewport$4;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-static {p1}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fgetviewportListener(Lcom/metamoji/df/sprite/Viewport;)Lcom/metamoji/df/sprite/ViewportListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/metamoji/df/sprite/ViewportListener;->zoomStart()V

    return-void
.end method
