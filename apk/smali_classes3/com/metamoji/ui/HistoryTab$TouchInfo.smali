.class Lcom/metamoji/ui/HistoryTab$TouchInfo;
.super Ljava/lang/Object;
.source "HistoryTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/HistoryTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TouchInfo"
.end annotation


# static fields
.field private static final DRAG_THRESHOLD:F = 15.0f


# instance fields
.field private mCloseButtonWidth:F

.field private mNewPosGlobal:Landroid/graphics/PointF;

.field private mNewPosLocal:Landroid/graphics/PointF;

.field private mOrgPosGlobal:Landroid/graphics/PointF;

.field private mOrgPosLocal:Landroid/graphics/PointF;

.field private mPointerId:I

.field private mRect:Landroid/graphics/Rect;

.field private mState:I

.field final synthetic this$0:Lcom/metamoji/ui/HistoryTab;


# direct methods
.method public constructor <init>(Lcom/metamoji/ui/HistoryTab;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 237
    iput-object p1, p0, Lcom/metamoji/ui/HistoryTab$TouchInfo;->this$0:Lcom/metamoji/ui/HistoryTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 220
    iput p1, p0, Lcom/metamoji/ui/HistoryTab$TouchInfo;->mState:I

    const/4 v0, 0x0

    .line 227
    iput v0, p0, Lcom/metamoji/ui/HistoryTab$TouchInfo;->mCloseButtonWidth:F

    .line 238
    iput p1, p0, Lcom/metamoji/ui/HistoryTab$TouchInfo;->mPointerId:I

    .line 239
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/HistoryTab$TouchInfo;->mOrgPosGlobal:Landroid/graphics/PointF;

    .line 240
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/HistoryTab$TouchInfo;->mNewPosGlobal:Landroid/graphics/PointF;

    .line 241
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/HistoryTab$TouchInfo;->mOrgPosLocal:Landroid/graphics/PointF;

    .line 242
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/HistoryTab$TouchInfo;->mNewPosLocal:Landroid/graphics/PointF;

    .line 243
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/HistoryTab$TouchInfo;->mRect:Landroid/graphics/Rect;

    return-void
.end method

.method private isEventOnCloseButton(Landroid/graphics/PointF;)Z
    .locals 4

    .line 253
    invoke-direct {p0, p1}, Lcom/metamoji/ui/HistoryTab$TouchInfo;->isEventOnTab(Landroid/graphics/PointF;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/HistoryTab$TouchInfo;->this$0:Lcom/metamoji/ui/HistoryTab;

    invoke-static {v0}, Lcom/metamoji/ui/HistoryTab;->-$$Nest$fgetmCloseButton(Lcom/metamoji/ui/HistoryTab;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v2, p0, Lcom/metamoji/ui/HistoryTab$TouchInfo;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->getHitRect(Landroid/graphics/Rect;)V

    .line 257
    iget-object v0, p0, Lcom/metamoji/ui/HistoryTab$TouchInfo;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/PointF;->x:F

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int p1, v2

    if-gt v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method private isEventOnTab(Landroid/graphics/PointF;)Z
    .locals 2

    .line 266
    iget-object v0, p0, Lcom/metamoji/ui/HistoryTab$TouchInfo;->this$0:Lcom/metamoji/ui/HistoryTab;

    iget-object v1, p0, Lcom/metamoji/ui/HistoryTab$TouchInfo;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/HistoryTab;->getHitRect(Landroid/graphics/Rect;)V

    .line 267
    iget-object v0, p0, Lcom/metamoji/ui/HistoryTab$TouchInfo;->mRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 268
    iget-object v0, p0, Lcom/metamoji/ui/HistoryTab$TouchInfo;->mRect:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1
.end method

.method private tryBeginDrag(Landroid/graphics/PointF;)V
    .locals 2

    .line 307
    iget-object v0, p0, Lcom/metamoji/ui/HistoryTab$TouchInfo;->this$0:Lcom/metamoji/ui/HistoryTab;

    invoke-static {v0}, Lcom/metamoji/ui/HistoryTab;->-$$Nest$mdraggableContainer(Lcom/metamoji/ui/HistoryTab;)Lcom/metamoji/ui/IDraggableContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/ui/HistoryTab$TouchInfo;->this$0:Lcom/metamoji/ui/HistoryTab;

    invoke-interface {v0, v1, p1}, Lcom/metamoji/ui/IDraggableContainer;->dragBegin(Landroid/view/View;Landroid/graphics/PointF;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    .line 308
    iput p1, p0, Lcom/metamoji/ui/HistoryTab$TouchInfo;->mState:I

    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()Z
    .locals 3

    .line 405
    iget v0, p0, Lcom/metamoji/ui/HistoryTab$TouchInfo;->mState:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 412
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/ui/HistoryTab$TouchInfo;->this$0:Lcom/metamoji/ui/HistoryTab;

    invoke-static {v0}, Lcom/metamoji/ui/HistoryTab;->-$$Nest$mdraggableContainer(Lcom/metamoji/ui/HistoryTab;)Lcom/metamoji/ui/IDraggableContainer;

    move-result-object v0

    iget-object v2, p0, Lcom/metamoji/ui/HistoryTab$TouchInfo;->this$0:Lcom/metamoji/ui/HistoryTab;

    invoke-interface {v0, v2}, Lcom/metamoji/ui/IDraggableContainer;->dragCancel(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
    :catchall_0
    :cond_1
    iput v1, p0, Lcom/metamoji/ui/HistoryTab$TouchInfo;->mState:I

    .line 418
    iget-object v0, p0, Lcom/metamoji/ui/HistoryTab$TouchInfo;->this$0:Lcom/metamoji/ui/HistoryTab;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/HistoryTab;->setPressed(Z)V

    const/4 v0, 0x1

    return v0
.end method

.method public move(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 318
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 319
    invoke-virtual {p0}, Lcom/metamoji/ui/HistoryTab$TouchInfo;->cancel()Z

    return v1

    .line 323
    :cond_0
    iget v0, p0, Lcom/metamoji/ui/HistoryTab$TouchInfo;->mState:I

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_4

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iget v3, p0, Lcom/metamoji/ui/HistoryTab$TouchInfo;->mPointerId:I

    if-eq v0, v3, :cond_1

    goto :goto_1

    .line 328
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ui/HistoryTab$TouchInfo;->mNewPosGlobal:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 329
    iget-object v0, p0, Lcom/metamoji/ui/HistoryTab$TouchInfo;->mNewPosGlobal:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, v0, Landroid/graphics/PointF;->y:F

    .line 331
    iget p1, p0, Lcom/metamoji/ui/HistoryTab$TouchInfo;->mState:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 332
    iget-object p1, p0, Lcom/metamoji/ui/HistoryTab$TouchInfo;->mNewPosGlobal:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/metamoji/ui/HistoryTab$TouchInfo;->mOrgPosGlobal:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x41700000    # 15.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_3

    .line 334
    iget-object p1, p0, Lcom/metamoji/ui/HistoryTab$TouchInfo;->mNewPosGlobal:Landroid/graphics/PointF;

    invoke-direct {p0, p1}, Lcom/metamoji/ui/HistoryTab$TouchInfo;->tryBeginDrag(Landroid/graphics/PointF;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 337
    iget-object p1, p0, Lcom/metamoji/ui/HistoryTab$TouchInfo;->this$0:Lcom/metamoji/ui/HistoryTab;

    invoke-static {p1}, Lcom/metamoji/ui/HistoryTab;->-$$Nest$mdraggableContainer(Lcom/metamoji/ui/HistoryTab;)Lcom/metamoji/ui/IDraggableContainer;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/ui/HistoryTab$TouchInfo;->this$0:Lcom/metamoji/ui/HistoryTab;

    iget-object v1, p0, Lcom/metamoji/ui/HistoryTab$TouchInfo;->mNewPosGlobal:Landroid/graphics/PointF;

    invoke-interface {p1, v0, v1}, Lcom/metamoji/ui/IDraggableContainer;->drag(Landroid/view/View;Landroid/graphics/PointF;)V

    :cond_3
    :goto_0
    return v2

    :cond_4
    :goto_1
    return v1
.end method

.method public press(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 275
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 276
    invoke-virtual {p0}, Lcom/metamoji/ui/HistoryTab$TouchInfo;->cancel()Z

    return v1

    .line 280
    :cond_0
    iget v0, p0, Lcom/metamoji/ui/HistoryTab$TouchInfo;->mState:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/metamoji/ui/HistoryTab$TouchInfo;->this$0:Lcom/metamoji/ui/HistoryTab;

    invoke-static {v0}, Lcom/metamoji/ui/HistoryTab;->-$$Nest$mdraggableContainer(Lcom/metamoji/ui/HistoryTab;)Lcom/metamoji/ui/IDraggableContainer;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/ui/IDraggableContainer;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 284
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ui/HistoryTab$TouchInfo;->this$0:Lcom/metamoji/ui/HistoryTab;

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/HistoryTab;->setPressed(Z)V

    .line 286
    iget-object v0, p0, Lcom/metamoji/ui/HistoryTab$TouchInfo;->mOrgPosGlobal:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iput v3, v0, Landroid/graphics/PointF;->x:F

    .line 287
    iget-object v0, p0, Lcom/metamoji/ui/HistoryTab$TouchInfo;->mOrgPosGlobal:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iput v3, v0, Landroid/graphics/PointF;->y:F

    .line 288
    iget-object v0, p0, Lcom/metamoji/ui/HistoryTab$TouchInfo;->mOrgPosLocal:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, v0, Landroid/graphics/PointF;->x:F

    .line 289
    iget-object v0, p0, Lcom/metamoji/ui/HistoryTab$TouchInfo;->mOrgPosLocal:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, v0, Landroid/graphics/PointF;->y:F

    .line 290
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/metamoji/ui/HistoryTab$TouchInfo;->mPointerId:I

    .line 292
    iget-object p1, p0, Lcom/metamoji/ui/HistoryTab$TouchInfo;->mOrgPosLocal:Landroid/graphics/PointF;

    invoke-direct {p0, p1}, Lcom/metamoji/ui/HistoryTab$TouchInfo;->isEventOnCloseButton(Landroid/graphics/PointF;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 294
    iput v2, p0, Lcom/metamoji/ui/HistoryTab$TouchInfo;->mState:I

    goto :goto_0

    :cond_2
    const/4 p1, 0x2

    .line 297
    iput p1, p0, Lcom/metamoji/ui/HistoryTab$TouchInfo;->mState:I

    :goto_0
    return v2

    :cond_3
    :goto_1
    return v1
.end method

.method public release(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 360
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 361
    invoke-virtual {p0}, Lcom/metamoji/ui/HistoryTab$TouchInfo;->cancel()Z

    return v1

    .line 365
    :cond_0
    iget v0, p0, Lcom/metamoji/ui/HistoryTab$TouchInfo;->mState:I

    if-eqz v0, :cond_5

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iget v3, p0, Lcom/metamoji/ui/HistoryTab$TouchInfo;->mPointerId:I

    if-eq v0, v3, :cond_1

    goto :goto_1

    .line 370
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/ui/HistoryTab$TouchInfo;->mNewPosGlobal:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iput v3, v0, Landroid/graphics/PointF;->x:F

    .line 371
    iget-object v0, p0, Lcom/metamoji/ui/HistoryTab$TouchInfo;->mNewPosGlobal:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iput v3, v0, Landroid/graphics/PointF;->y:F

    .line 372
    iget-object v0, p0, Lcom/metamoji/ui/HistoryTab$TouchInfo;->mNewPosLocal:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, v0, Landroid/graphics/PointF;->x:F

    .line 373
    iget-object v0, p0, Lcom/metamoji/ui/HistoryTab$TouchInfo;->mNewPosLocal:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, v0, Landroid/graphics/PointF;->y:F

    .line 375
    iget p1, p0, Lcom/metamoji/ui/HistoryTab$TouchInfo;->mState:I

    if-ne p1, v2, :cond_2

    .line 377
    iget-object p1, p0, Lcom/metamoji/ui/HistoryTab$TouchInfo;->this$0:Lcom/metamoji/ui/HistoryTab;

    invoke-static {p1}, Lcom/metamoji/ui/HistoryTab;->-$$Nest$mgetHistoryTabEventListener(Lcom/metamoji/ui/HistoryTab;)Lcom/metamoji/ui/HistoryTab$IHistoryTabEventHandler;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 378
    iget-object v0, p0, Lcom/metamoji/ui/HistoryTab$TouchInfo;->mNewPosLocal:Landroid/graphics/PointF;

    invoke-direct {p0, v0}, Lcom/metamoji/ui/HistoryTab$TouchInfo;->isEventOnCloseButton(Landroid/graphics/PointF;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 379
    iget-object v0, p0, Lcom/metamoji/ui/HistoryTab$TouchInfo;->this$0:Lcom/metamoji/ui/HistoryTab;

    invoke-interface {p1, v0}, Lcom/metamoji/ui/HistoryTab$IHistoryTabEventHandler;->deleteMe(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 384
    iget-object p1, p0, Lcom/metamoji/ui/HistoryTab$TouchInfo;->this$0:Lcom/metamoji/ui/HistoryTab;

    invoke-static {p1}, Lcom/metamoji/ui/HistoryTab;->-$$Nest$mdraggableContainer(Lcom/metamoji/ui/HistoryTab;)Lcom/metamoji/ui/IDraggableContainer;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/ui/HistoryTab$TouchInfo;->this$0:Lcom/metamoji/ui/HistoryTab;

    iget-object v3, p0, Lcom/metamoji/ui/HistoryTab$TouchInfo;->mNewPosGlobal:Landroid/graphics/PointF;

    invoke-interface {p1, v0, v3}, Lcom/metamoji/ui/IDraggableContainer;->dragEnd(Landroid/view/View;Landroid/graphics/PointF;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 387
    iget-object p1, p0, Lcom/metamoji/ui/HistoryTab$TouchInfo;->this$0:Lcom/metamoji/ui/HistoryTab;

    invoke-static {p1}, Lcom/metamoji/ui/HistoryTab;->-$$Nest$mgetHistoryTabEventListener(Lcom/metamoji/ui/HistoryTab;)Lcom/metamoji/ui/HistoryTab$IHistoryTabEventHandler;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 388
    iget-object v0, p0, Lcom/metamoji/ui/HistoryTab$TouchInfo;->mNewPosLocal:Landroid/graphics/PointF;

    invoke-direct {p0, v0}, Lcom/metamoji/ui/HistoryTab$TouchInfo;->isEventOnTab(Landroid/graphics/PointF;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 389
    iget-object v0, p0, Lcom/metamoji/ui/HistoryTab$TouchInfo;->this$0:Lcom/metamoji/ui/HistoryTab;

    invoke-interface {p1, v0}, Lcom/metamoji/ui/HistoryTab$IHistoryTabEventHandler;->selectMe(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    :catchall_0
    :cond_4
    :goto_0
    iput v1, p0, Lcom/metamoji/ui/HistoryTab$TouchInfo;->mState:I

    .line 396
    iget-object p1, p0, Lcom/metamoji/ui/HistoryTab$TouchInfo;->this$0:Lcom/metamoji/ui/HistoryTab;

    invoke-virtual {p1, v1}, Lcom/metamoji/ui/HistoryTab;->setPressed(Z)V

    return v2

    :cond_5
    :goto_1
    return v1
.end method
