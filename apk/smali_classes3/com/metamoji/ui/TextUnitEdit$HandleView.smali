.class Lcom/metamoji/ui/TextUnitEdit$HandleView;
.super Landroid/view/View;
.source "TextUnitEdit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/TextUnitEdit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandleView"
.end annotation


# static fields
.field public static final CENTER:I = 0x1

.field public static final LEFT:I = 0x0

.field public static final RIGHT:I = 0x2


# instance fields
.field private mContainer:Landroid/widget/PopupWindow;

.field private mController:Lcom/metamoji/ui/TextUnitEdit$CursorController;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mHeight:I

.field private mHotspotX:F

.field private mHotspotY:F

.field private mIsDragging:Z

.field private mLastParentX:I

.field private mLastParentY:I

.field private mPositionX:I

.field private mPositionY:I

.field final mTempCoords:[I

.field mTempRect:Landroid/graphics/Rect;

.field private mTouchOffsetY:F

.field private mTouchToWindowOffsetX:F

.field private mTouchToWindowOffsetY:F

.field final synthetic this$0:Lcom/metamoji/ui/TextUnitEdit;


# direct methods
.method public constructor <init>(Lcom/metamoji/ui/TextUnitEdit;Lcom/metamoji/ui/TextUnitEdit$CursorController;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 1329
    iput-object p1, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->this$0:Lcom/metamoji/ui/TextUnitEdit;

    .line 1330
    invoke-virtual {p1}, Lcom/metamoji/ui/TextUnitEdit;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x2

    .line 1306
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->mTempCoords:[I

    .line 1331
    iput-object p2, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->mController:Lcom/metamoji/ui/TextUnitEdit$CursorController;

    .line 1332
    new-instance p2, Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Lcom/metamoji/ui/TextUnitEdit;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->mContainer:Landroid/widget/PopupWindow;

    .line 1333
    sget p1, Lcom/metamoji/noteanytime/R$style;->TextHandleAnimation:I

    invoke-virtual {p2, p1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 1334
    iget-object p1, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->mContainer:Landroid/widget/PopupWindow;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1336
    iget-object p1, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->mContainer:Landroid/widget/PopupWindow;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 1339
    invoke-virtual {p0, p3}, Lcom/metamoji/ui/TextUnitEdit$HandleView;->setOrientation(I)V

    return-void
.end method

.method private isPositionVisible()Z
    .locals 6

    .line 1416
    iget-boolean v0, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->mIsDragging:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1429
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->this$0:Lcom/metamoji/ui/TextUnitEdit;

    .line 1431
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 1433
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1435
    iget-object v4, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->mTempRect:Landroid/graphics/Rect;

    if-nez v4, :cond_1

    .line 1436
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->mTempRect:Landroid/graphics/Rect;

    .line 1438
    :cond_1
    iget-object v4, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->mTempRect:Landroid/graphics/Rect;

    const/4 v5, 0x0

    .line 1439
    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 1440
    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1441
    iput v2, v4, Landroid/graphics/Rect;->right:I

    .line 1442
    iput v3, v4, Landroid/graphics/Rect;->bottom:I

    .line 1444
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 v3, 0x0

    .line 1445
    invoke-interface {v2, v0, v4, v3}, Landroid/view/ViewParent;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 1449
    :cond_2
    iget-object v2, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->mTempCoords:[I

    .line 1450
    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1451
    aget v0, v2, v5

    iget v3, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->mPositionX:I

    add-int/2addr v0, v3

    iget v3, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->mHotspotX:F

    float-to-int v3, v3

    add-int/2addr v0, v3

    .line 1452
    aget v2, v2, v1

    iget v3, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->mPositionY:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->mHotspotY:F

    float-to-int v3, v3

    add-int/2addr v2, v3

    .line 1454
    iget v3, v4, Landroid/graphics/Rect;->left:I

    if-lt v0, v3, :cond_3

    iget v3, v4, Landroid/graphics/Rect;->right:I

    if-gt v0, v3, :cond_3

    iget v0, v4, Landroid/graphics/Rect;->top:I

    if-lt v2, v0, :cond_3

    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    if-gt v2, v0, :cond_3

    return v1

    :cond_3
    :goto_0
    return v5
.end method

.method private moveTo(II)V
    .locals 7

    .line 1459
    iput p1, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->mPositionX:I

    .line 1460
    iput p2, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->mPositionY:I

    .line 1461
    invoke-direct {p0}, Lcom/metamoji/ui/TextUnitEdit$HandleView;->isPositionVisible()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1463
    iget-object p1, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 1464
    iget-object p1, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->mTempCoords:[I

    .line 1465
    iget-object v1, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->this$0:Lcom/metamoji/ui/TextUnitEdit;

    invoke-virtual {v1, p1}, Lcom/metamoji/ui/TextUnitEdit;->getLocationInWindow([I)V

    .line 1466
    iget-object v1, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->mContainer:Landroid/widget/PopupWindow;

    aget v2, p1, p2

    iget v3, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->mPositionX:I

    add-int/2addr v2, v3

    aget v3, p1, v0

    iget v4, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->mPositionY:I

    add-int/2addr v3, v4

    .line 1467
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit$HandleView;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit$HandleView;->getLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit$HandleView;->getBottom()I

    move-result v5

    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit$HandleView;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    .line 1466
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0

    .line 1469
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit$HandleView;->show()V

    const/4 p1, 0x0

    .line 1472
    :goto_0
    iget-boolean v1, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->mIsDragging:Z

    if-eqz v1, :cond_3

    if-nez p1, :cond_1

    .line 1474
    iget-object p1, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->mTempCoords:[I

    .line 1475
    iget-object v1, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->this$0:Lcom/metamoji/ui/TextUnitEdit;

    invoke-virtual {v1, p1}, Lcom/metamoji/ui/TextUnitEdit;->getLocationInWindow([I)V

    .line 1477
    :cond_1
    aget p2, p1, p2

    iget v1, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->mLastParentX:I

    if-ne p2, v1, :cond_2

    aget v2, p1, v0

    iget v3, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->mLastParentY:I

    if-eq v2, v3, :cond_3

    .line 1478
    :cond_2
    iget v2, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->mTouchToWindowOffsetX:F

    sub-int v1, p2, v1

    int-to-float v1, v1

    add-float/2addr v2, v1

    iput v2, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->mTouchToWindowOffsetX:F

    .line 1479
    iget v1, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->mTouchToWindowOffsetY:F

    aget p1, p1, v0

    iget v0, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->mLastParentY:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    add-float/2addr v1, v0

    iput v1, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->mTouchToWindowOffsetY:F

    .line 1480
    iput p2, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->mLastParentX:I

    .line 1481
    iput p1, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->mLastParentY:I

    :cond_3
    return-void

    .line 1485
    :cond_4
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit$HandleView;->hide()V

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    const/4 v0, 0x0

    .line 1406
    iput-boolean v0, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->mIsDragging:Z

    .line 1407
    iget-object v0, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public isDragging()Z
    .locals 1

    .line 1545
    iget-boolean v0, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->mIsDragging:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .line 1411
    iget-object v0, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1491
    iget-object v0, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit$HandleView;->getRight()I

    move-result v1

    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit$HandleView;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit$HandleView;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit$HandleView;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1499
    iget-object v0, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    .line 1387
    iget-object p1, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    iget-object p2, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1388
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    .line 1387
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/TextUnitEdit$HandleView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1505
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    goto :goto_0

    .line 1523
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->this$0:Lcom/metamoji/ui/TextUnitEdit;

    invoke-static {v0}, Lcom/metamoji/ui/TextUnitEdit;->-$$Nest$misInComposition(Lcom/metamoji/ui/TextUnitEdit;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1524
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 1525
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    .line 1526
    iget v1, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->mTouchToWindowOffsetX:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->mHotspotX:F

    add-float/2addr v0, v1

    .line 1527
    iget v1, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->mTouchToWindowOffsetY:F

    sub-float/2addr p1, v1

    iget v1, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->mHotspotY:F

    add-float/2addr p1, v1

    iget v1, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->mTouchOffsetY:F

    add-float/2addr p1, v1

    .line 1529
    iget-object v1, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->mController:Lcom/metamoji/ui/TextUnitEdit$CursorController;

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v0, p1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v1, p0, v3}, Lcom/metamoji/ui/TextUnitEdit$CursorController;->updatePosition(Lcom/metamoji/ui/TextUnitEdit$HandleView;Landroid/graphics/PointF;)V

    goto :goto_0

    .line 1536
    :cond_1
    iget-object p1, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->mController:Lcom/metamoji/ui/TextUnitEdit$CursorController;

    instance-of p1, p1, Lcom/metamoji/ui/TextUnitEdit$SelectionModifierCursorController;

    if-eqz p1, :cond_2

    .line 1537
    iget-object p1, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->this$0:Lcom/metamoji/ui/TextUnitEdit;

    invoke-virtual {p1}, Lcom/metamoji/ui/TextUnitEdit;->appearContextMenu()V

    .line 1539
    :cond_2
    iput-boolean v1, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->mIsDragging:Z

    goto :goto_0

    .line 1507
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 1508
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    .line 1509
    iget v3, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->mPositionX:I

    int-to-float v3, v3

    sub-float/2addr v0, v3

    iput v0, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->mTouchToWindowOffsetX:F

    .line 1510
    iget v0, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->mPositionY:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->mTouchToWindowOffsetY:F

    .line 1511
    iget-object p1, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->mTempCoords:[I

    .line 1512
    iget-object v0, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->this$0:Lcom/metamoji/ui/TextUnitEdit;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/TextUnitEdit;->getLocationInWindow([I)V

    .line 1513
    aget v0, p1, v1

    iput v0, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->mLastParentX:I

    .line 1514
    aget p1, p1, v2

    iput p1, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->mLastParentY:I

    .line 1515
    iput-boolean v2, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->mIsDragging:Z

    .line 1517
    iget-object p1, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->this$0:Lcom/metamoji/ui/TextUnitEdit;

    invoke-virtual {p1}, Lcom/metamoji/ui/TextUnitEdit;->clearContextMenu()V

    :cond_4
    :goto_0
    return v2
.end method

.method positionAtCursor(Lcom/metamoji/un/text/model/TextPosition;Z)V
    .locals 5

    .line 1549
    iget-object v0, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 1550
    iget-object v1, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 1553
    iget-object v2, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->this$0:Lcom/metamoji/ui/TextUnitEdit;

    invoke-virtual {v2}, Lcom/metamoji/ui/TextUnitEdit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/metamoji/un/text/model/TextModel;->caretRectInWholeViewForPosition(Lcom/metamoji/un/text/model/TextPosition;)Landroid/graphics/RectF;

    move-result-object p1

    .line 1555
    invoke-static {}, Lcom/metamoji/ui/TextUnitEdit;->-$$Nest$sfgetsCursorControllerTempRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 1556
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget v4, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->mHotspotX:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    if-eqz p2, :cond_0

    .line 1558
    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    :cond_0
    iget p1, p1, Landroid/graphics/RectF;->top:F

    iget p2, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->mHeight:I

    int-to-float p2, p2

    sub-float/2addr p1, p2

    :goto_0
    float-to-int p1, p1

    iput p1, v2, Landroid/graphics/Rect;->top:I

    .line 1560
    iget p1, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v0

    iput p1, v2, Landroid/graphics/Rect;->right:I

    .line 1561
    iget p1, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v1

    iput p1, v2, Landroid/graphics/Rect;->bottom:I

    .line 1565
    iget p1, v2, Landroid/graphics/Rect;->left:I

    iget p2, v2, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/TextUnitEdit$HandleView;->moveTo(II)V

    return-void
.end method

.method public setOrientation(I)V
    .locals 3

    const/high16 v0, 0x42600000    # 56.0f

    if-eqz p1, :cond_3

    .line 1356
    iget-object v1, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->this$0:Lcom/metamoji/ui/TextUnitEdit;

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    .line 1367
    invoke-static {v1}, Lcom/metamoji/ui/TextUnitEdit;->-$$Nest$fget_selectHandleCenter(Lcom/metamoji/ui/TextUnitEdit;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_0

    .line 1368
    iget-object p1, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->this$0:Lcom/metamoji/ui/TextUnitEdit;

    invoke-virtual {p1}, Lcom/metamoji/ui/TextUnitEdit;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$drawable;->text_ins_cur:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/metamoji/ui/TextUnitEdit;->-$$Nest$fput_selectHandleCenter(Lcom/metamoji/ui/TextUnitEdit;Landroid/graphics/drawable/Drawable;)V

    .line 1370
    :cond_0
    iget-object p1, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->this$0:Lcom/metamoji/ui/TextUnitEdit;

    invoke-static {p1}, Lcom/metamoji/ui/TextUnitEdit;->-$$Nest$fget_selectHandleCenter(Lcom/metamoji/ui/TextUnitEdit;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1371
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    .line 1372
    iput p1, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->mHotspotX:F

    goto :goto_0

    .line 1356
    :cond_1
    invoke-static {v1}, Lcom/metamoji/ui/TextUnitEdit;->-$$Nest$fget_selectHandleRight(Lcom/metamoji/ui/TextUnitEdit;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_2

    .line 1357
    iget-object p1, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->this$0:Lcom/metamoji/ui/TextUnitEdit;

    invoke-virtual {p1}, Lcom/metamoji/ui/TextUnitEdit;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/metamoji/noteanytime/R$drawable;->text_sel_cur_r:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/metamoji/ui/TextUnitEdit;->-$$Nest$fput_selectHandleRight(Lcom/metamoji/ui/TextUnitEdit;Landroid/graphics/drawable/Drawable;)V

    .line 1359
    :cond_2
    iget-object p1, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->this$0:Lcom/metamoji/ui/TextUnitEdit;

    invoke-static {p1}, Lcom/metamoji/ui/TextUnitEdit;->-$$Nest$fget_selectHandleRight(Lcom/metamoji/ui/TextUnitEdit;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1360
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    int-to-float p1, p1

    const/high16 v1, 0x41000000    # 8.0f

    mul-float/2addr p1, v1

    div-float/2addr p1, v0

    .line 1361
    iput p1, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->mHotspotX:F

    goto :goto_0

    .line 1346
    :cond_3
    iget-object p1, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->this$0:Lcom/metamoji/ui/TextUnitEdit;

    invoke-static {p1}, Lcom/metamoji/ui/TextUnitEdit;->-$$Nest$fget_selectHandleLeft(Lcom/metamoji/ui/TextUnitEdit;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_4

    .line 1347
    iget-object p1, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->this$0:Lcom/metamoji/ui/TextUnitEdit;

    invoke-virtual {p1}, Lcom/metamoji/ui/TextUnitEdit;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/metamoji/noteanytime/R$drawable;->text_sel_cur_l:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/metamoji/ui/TextUnitEdit;->-$$Nest$fput_selectHandleLeft(Lcom/metamoji/ui/TextUnitEdit;Landroid/graphics/drawable/Drawable;)V

    .line 1349
    :cond_4
    iget-object p1, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->this$0:Lcom/metamoji/ui/TextUnitEdit;

    invoke-static {p1}, Lcom/metamoji/ui/TextUnitEdit;->-$$Nest$fget_selectHandleLeft(Lcom/metamoji/ui/TextUnitEdit;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1350
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    int-to-float p1, p1

    const/high16 v1, 0x42400000    # 48.0f

    mul-float/2addr p1, v1

    div-float/2addr p1, v0

    .line 1351
    iput p1, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->mHotspotX:F

    .line 1377
    :goto_0
    iget-object p1, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    neg-int v0, p1

    int-to-float v0, v0

    const v1, 0x3e99999a    # 0.3f

    mul-float/2addr v0, v1

    .line 1379
    iput v0, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->mTouchOffsetY:F

    const/4 v0, 0x0

    .line 1380
    iput v0, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->mHotspotY:F

    .line 1381
    iput p1, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->mHeight:I

    .line 1382
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit$HandleView;->invalidate()V

    return-void
.end method

.method public show()V
    .locals 6

    .line 1392
    invoke-direct {p0}, Lcom/metamoji/ui/TextUnitEdit$HandleView;->isPositionVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1393
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit$HandleView;->hide()V

    return-void

    .line 1397
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1398
    iget-object v0, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->mTempCoords:[I

    .line 1399
    iget-object v1, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->this$0:Lcom/metamoji/ui/TextUnitEdit;

    invoke-virtual {v1, v0}, Lcom/metamoji/ui/TextUnitEdit;->getLocationInWindow([I)V

    const/4 v1, 0x0

    .line 1400
    aget v2, v0, v1

    iget v3, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->mPositionX:I

    add-int/2addr v2, v3

    aput v2, v0, v1

    const/4 v3, 0x1

    .line 1401
    aget v4, v0, v3

    iget v5, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->mPositionY:I

    add-int/2addr v4, v5

    aput v4, v0, v3

    .line 1402
    iget-object v0, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->mContainer:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/metamoji/ui/TextUnitEdit$HandleView;->this$0:Lcom/metamoji/ui/TextUnitEdit;

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method
