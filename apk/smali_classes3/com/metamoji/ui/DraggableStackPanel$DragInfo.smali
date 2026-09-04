.class Lcom/metamoji/ui/DraggableStackPanel$DragInfo;
.super Ljava/lang/Object;
.source "DraggableStackPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/DraggableStackPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DragInfo"
.end annotation


# instance fields
.field private mCurrentIndex:I

.field private mDragMargin:F

.field private mFromIndex:I

.field private mMaxPos:F

.field private mOrgTargetPos:F

.field private mPivot:F

.field private mSensePos:[F

.field private mStartPos:F

.field private mTarget:Landroid/view/View;

.field final synthetic this$0:Lcom/metamoji/ui/DraggableStackPanel;


# direct methods
.method public constructor <init>(Lcom/metamoji/ui/DraggableStackPanel;Landroid/view/View;Landroid/graphics/PointF;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 572
    iput-object p1, p0, Lcom/metamoji/ui/DraggableStackPanel$DragInfo;->this$0:Lcom/metamoji/ui/DraggableStackPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 573
    invoke-virtual {p1}, Lcom/metamoji/ui/DraggableStackPanel;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    .line 580
    iput-object p2, p0, Lcom/metamoji/ui/DraggableStackPanel$DragInfo;->mTarget:Landroid/view/View;

    .line 581
    invoke-static {p1, p2}, Lcom/metamoji/ui/DraggableStackPanel;->-$$Nest$mfindChild(Lcom/metamoji/ui/DraggableStackPanel;Landroid/view/View;)I

    move-result v2

    iput v2, p0, Lcom/metamoji/ui/DraggableStackPanel$DragInfo;->mFromIndex:I

    .line 582
    iput v2, p0, Lcom/metamoji/ui/DraggableStackPanel$DragInfo;->mCurrentIndex:I

    .line 589
    iget-object v3, p1, Lcom/metamoji/ui/DraggableStackPanel;->mPos1:Landroid/graphics/PointF;

    invoke-static {p1, v2, p2, v3}, Lcom/metamoji/ui/DraggableStackPanel;->-$$Nest$mgetPosition(Lcom/metamoji/ui/DraggableStackPanel;ILandroid/view/View;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v2

    .line 591
    invoke-static {p1}, Lcom/metamoji/ui/DraggableStackPanel;->-$$Nest$fgetmVertical(Lcom/metamoji/ui/DraggableStackPanel;)Z

    move-result v3

    const/high16 v4, 0x41200000    # 10.0f

    const/high16 v5, 0x40000000    # 2.0f

    if-eqz v3, :cond_0

    .line 593
    iget p3, p3, Landroid/graphics/PointF;->y:F

    iput p3, p0, Lcom/metamoji/ui/DraggableStackPanel$DragInfo;->mStartPos:F

    .line 594
    invoke-direct {p0, p2}, Lcom/metamoji/ui/DraggableStackPanel$DragInfo;->getItemHeight(Landroid/view/View;)F

    move-result p2

    .line 595
    iget p3, v2, Landroid/graphics/PointF;->y:F

    div-float v3, p2, v5

    add-float/2addr p3, v3

    iput p3, p0, Lcom/metamoji/ui/DraggableStackPanel$DragInfo;->mPivot:F

    div-float p3, p2, v4

    .line 596
    iput p3, p0, Lcom/metamoji/ui/DraggableStackPanel$DragInfo;->mDragMargin:F

    .line 597
    iget p3, v2, Landroid/graphics/PointF;->y:F

    iput p3, p0, Lcom/metamoji/ui/DraggableStackPanel$DragInfo;->mOrgTargetPos:F

    goto :goto_0

    .line 601
    :cond_0
    iget p3, p3, Landroid/graphics/PointF;->x:F

    iput p3, p0, Lcom/metamoji/ui/DraggableStackPanel$DragInfo;->mStartPos:F

    .line 602
    invoke-direct {p0, p2}, Lcom/metamoji/ui/DraggableStackPanel$DragInfo;->getItemWidth(Landroid/view/View;)F

    move-result p2

    .line 603
    iget p3, v2, Landroid/graphics/PointF;->x:F

    div-float v3, p2, v5

    add-float/2addr p3, v3

    iput p3, p0, Lcom/metamoji/ui/DraggableStackPanel$DragInfo;->mPivot:F

    .line 604
    iget p3, v2, Landroid/graphics/PointF;->x:F

    iput p3, p0, Lcom/metamoji/ui/DraggableStackPanel$DragInfo;->mOrgTargetPos:F

    :goto_0
    div-float/2addr p2, v4

    .line 606
    iput p2, p0, Lcom/metamoji/ui/DraggableStackPanel$DragInfo;->mDragMargin:F

    .line 608
    new-array p2, v0, [F

    iput-object p2, p0, Lcom/metamoji/ui/DraggableStackPanel$DragInfo;->mSensePos:[F

    const/4 p2, 0x0

    :goto_1
    if-ge p2, v0, :cond_2

    .line 611
    invoke-virtual {p1, p2}, Lcom/metamoji/ui/DraggableStackPanel;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 612
    invoke-static {p1}, Lcom/metamoji/ui/DraggableStackPanel;->-$$Nest$fgetmVertical(Lcom/metamoji/ui/DraggableStackPanel;)Z

    move-result v2

    .line 618
    iget-object v3, p0, Lcom/metamoji/ui/DraggableStackPanel$DragInfo;->mSensePos:[F

    if-eqz v2, :cond_1

    .line 614
    iget-object v2, p1, Lcom/metamoji/ui/DraggableStackPanel;->mPos1:Landroid/graphics/PointF;

    invoke-static {p1, p2, p3, v2}, Lcom/metamoji/ui/DraggableStackPanel;->-$$Nest$mgetPosition(Lcom/metamoji/ui/DraggableStackPanel;ILandroid/view/View;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, p3}, Lcom/metamoji/ui/DraggableStackPanel$DragInfo;->getItemHeight(Landroid/view/View;)F

    move-result p3

    add-float/2addr v2, p3

    aput v2, v3, p2

    goto :goto_2

    .line 618
    :cond_1
    iget-object v2, p1, Lcom/metamoji/ui/DraggableStackPanel;->mPos1:Landroid/graphics/PointF;

    invoke-static {p1, p2, p3, v2}, Lcom/metamoji/ui/DraggableStackPanel;->-$$Nest$mgetPosition(Lcom/metamoji/ui/DraggableStackPanel;ILandroid/view/View;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    invoke-direct {p0, p3}, Lcom/metamoji/ui/DraggableStackPanel$DragInfo;->getItemWidth(Landroid/view/View;)F

    move-result p3

    add-float/2addr v2, p3

    aput v2, v3, p2

    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 622
    :cond_2
    iget-object p1, p0, Lcom/metamoji/ui/DraggableStackPanel$DragInfo;->mTarget:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    .line 625
    iget-object p1, p0, Lcom/metamoji/ui/DraggableStackPanel$DragInfo;->mSensePos:[F

    sub-int/2addr v0, v1

    aget p1, p1, v0

    iput p1, p0, Lcom/metamoji/ui/DraggableStackPanel$DragInfo;->mMaxPos:F

    return-void

    .line 576
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "DraggableStackPanel.DragInfo cannot begin drag and drop: few items."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getItemHeight(Landroid/view/View;)F
    .locals 2

    .line 795
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 796
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr p1, v1

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr p1, v0

    int-to-float p1, p1

    return p1
.end method

.method private getItemWidth(Landroid/view/View;)F
    .locals 2

    .line 783
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 784
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr p1, v1

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr p1, v0

    int-to-float p1, p1

    return p1
.end method

.method private limitMovePos(F)F
    .locals 3

    .line 636
    iget v0, p0, Lcom/metamoji/ui/DraggableStackPanel$DragInfo;->mDragMargin:F

    neg-float v1, v0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    neg-float p1, v0

    return p1

    .line 640
    :cond_0
    iget v1, p0, Lcom/metamoji/ui/DraggableStackPanel$DragInfo;->mMaxPos:F

    add-float v2, v1, v0

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1

    add-float/2addr v1, v0

    return v1

    :cond_1
    return p1
.end method

.method private repositionOnDragging(I)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 704
    iget-object v2, v0, Lcom/metamoji/ui/DraggableStackPanel$DragInfo;->this$0:Lcom/metamoji/ui/DraggableStackPanel;

    invoke-static {v2}, Lcom/metamoji/ui/DraggableStackPanel;->-$$Nest$fgetmVertical(Lcom/metamoji/ui/DraggableStackPanel;)Z

    move-result v2

    .line 707
    iget-object v3, v0, Lcom/metamoji/ui/DraggableStackPanel$DragInfo;->mTarget:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 705
    invoke-direct {v0, v3}, Lcom/metamoji/ui/DraggableStackPanel$DragInfo;->getItemHeight(Landroid/view/View;)F

    move-result v2

    goto :goto_0

    .line 707
    :cond_0
    invoke-direct {v0, v3}, Lcom/metamoji/ui/DraggableStackPanel$DragInfo;->getItemWidth(Landroid/view/View;)F

    move-result v2

    .line 710
    :goto_0
    iget v3, v0, Lcom/metamoji/ui/DraggableStackPanel$DragInfo;->mFromIndex:I

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 711
    iget v4, v0, Lcom/metamoji/ui/DraggableStackPanel$DragInfo;->mFromIndex:I

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 712
    iget-object v5, v0, Lcom/metamoji/ui/DraggableStackPanel$DragInfo;->this$0:Lcom/metamoji/ui/DraggableStackPanel;

    invoke-virtual {v5}, Lcom/metamoji/ui/DraggableStackPanel;->getChildCount()I

    move-result v5

    const/4 v6, 0x0

    move v7, v6

    :goto_1
    if-ge v7, v5, :cond_8

    .line 713
    iget v8, v0, Lcom/metamoji/ui/DraggableStackPanel$DragInfo;->mFromIndex:I

    if-ne v7, v8, :cond_1

    goto/16 :goto_4

    .line 719
    :cond_1
    iget-object v8, v0, Lcom/metamoji/ui/DraggableStackPanel$DragInfo;->this$0:Lcom/metamoji/ui/DraggableStackPanel;

    invoke-virtual {v8, v7}, Lcom/metamoji/ui/DraggableStackPanel;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 720
    iget-object v9, v0, Lcom/metamoji/ui/DraggableStackPanel$DragInfo;->this$0:Lcom/metamoji/ui/DraggableStackPanel;

    iget-object v10, v9, Lcom/metamoji/ui/DraggableStackPanel;->mPos1:Landroid/graphics/PointF;

    invoke-static {v9, v7, v8, v10}, Lcom/metamoji/ui/DraggableStackPanel;->-$$Nest$mgetPosition(Lcom/metamoji/ui/DraggableStackPanel;ILandroid/view/View;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v9

    .line 721
    iget-object v10, v0, Lcom/metamoji/ui/DraggableStackPanel$DragInfo;->this$0:Lcom/metamoji/ui/DraggableStackPanel;

    invoke-static {v10}, Lcom/metamoji/ui/DraggableStackPanel;->-$$Nest$fgetmVertical(Lcom/metamoji/ui/DraggableStackPanel;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 722
    iget v9, v9, Landroid/graphics/PointF;->y:F

    goto :goto_2

    .line 724
    :cond_2
    iget v9, v9, Landroid/graphics/PointF;->x:F

    :goto_2
    if-gt v3, v7, :cond_4

    if-gt v7, v4, :cond_4

    .line 728
    iget v10, v0, Lcom/metamoji/ui/DraggableStackPanel$DragInfo;->mFromIndex:I

    if-ge v7, v10, :cond_3

    add-float/2addr v9, v2

    add-int/lit8 v10, v7, 0x1

    goto :goto_3

    :cond_3
    if-le v7, v10, :cond_4

    sub-float/2addr v9, v2

    add-int/lit8 v10, v7, -0x1

    goto :goto_3

    :cond_4
    move v10, v7

    .line 737
    :goto_3
    iget-object v11, v0, Lcom/metamoji/ui/DraggableStackPanel$DragInfo;->this$0:Lcom/metamoji/ui/DraggableStackPanel;

    invoke-static {v11}, Lcom/metamoji/ui/DraggableStackPanel;->-$$Nest$fgetmVertical(Lcom/metamoji/ui/DraggableStackPanel;)Z

    move-result v11

    const-wide/16 v12, 0x96

    const/4 v14, 0x2

    const/4 v15, 0x1

    if-eqz v11, :cond_6

    .line 738
    invoke-virtual {v8}, Landroid/view/View;->getX()F

    move-result v11

    cmpl-float v16, v11, v9

    if-eqz v16, :cond_5

    .line 741
    new-array v14, v14, [F

    aput v11, v14, v6

    aput v9, v14, v15

    invoke-static {v14}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v11

    .line 742
    invoke-virtual {v11, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 743
    new-instance v12, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v12}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v11, v12}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 744
    new-instance v12, Lcom/metamoji/ui/DraggableStackPanel$DragInfo$1;

    invoke-direct {v12, v0, v8}, Lcom/metamoji/ui/DraggableStackPanel$DragInfo$1;-><init>(Lcom/metamoji/ui/DraggableStackPanel$DragInfo;Landroid/view/View;)V

    invoke-virtual {v11, v12}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 750
    invoke-virtual {v11}, Landroid/animation/ValueAnimator;->start()V

    .line 752
    :cond_5
    iget-object v11, v0, Lcom/metamoji/ui/DraggableStackPanel$DragInfo;->mSensePos:[F

    invoke-direct {v0, v8}, Lcom/metamoji/ui/DraggableStackPanel$DragInfo;->getItemHeight(Landroid/view/View;)F

    move-result v8

    add-float/2addr v9, v8

    aput v9, v11, v10

    goto :goto_4

    .line 754
    :cond_6
    invoke-virtual {v8}, Landroid/view/View;->getX()F

    move-result v11

    cmpl-float v16, v11, v9

    if-eqz v16, :cond_7

    .line 757
    new-array v14, v14, [F

    aput v11, v14, v6

    aput v9, v14, v15

    invoke-static {v14}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v11

    .line 758
    invoke-virtual {v11, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 759
    new-instance v12, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v12}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v11, v12}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 760
    new-instance v12, Lcom/metamoji/ui/DraggableStackPanel$DragInfo$2;

    invoke-direct {v12, v0, v8}, Lcom/metamoji/ui/DraggableStackPanel$DragInfo$2;-><init>(Lcom/metamoji/ui/DraggableStackPanel$DragInfo;Landroid/view/View;)V

    invoke-virtual {v11, v12}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 766
    invoke-virtual {v11}, Landroid/animation/ValueAnimator;->start()V

    .line 768
    :cond_7
    iget-object v11, v0, Lcom/metamoji/ui/DraggableStackPanel$DragInfo;->mSensePos:[F

    invoke-direct {v0, v8}, Lcom/metamoji/ui/DraggableStackPanel$DragInfo;->getItemWidth(Landroid/view/View;)F

    move-result v8

    add-float/2addr v9, v8

    aput v9, v11, v10

    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 771
    :cond_8
    iget-object v3, v0, Lcom/metamoji/ui/DraggableStackPanel$DragInfo;->mSensePos:[F

    if-nez v1, :cond_9

    goto :goto_5

    :cond_9
    add-int/lit8 v4, v1, -0x1

    aget v4, v3, v4

    add-float/2addr v2, v4

    :goto_5
    aput v2, v3, v1

    .line 772
    iput v1, v0, Lcom/metamoji/ui/DraggableStackPanel$DragInfo;->mCurrentIndex:I

    return-void
.end method


# virtual methods
.method public From()I
    .locals 1

    .line 545
    iget v0, p0, Lcom/metamoji/ui/DraggableStackPanel$DragInfo;->mFromIndex:I

    return v0
.end method

.method public To()I
    .locals 1

    .line 550
    iget v0, p0, Lcom/metamoji/ui/DraggableStackPanel$DragInfo;->mCurrentIndex:I

    return v0
.end method

.method public check(Landroid/view/View;)Z
    .locals 1

    .line 557
    iget-object v0, p0, Lcom/metamoji/ui/DraggableStackPanel$DragInfo;->mTarget:Landroid/view/View;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public dragTo(Landroid/graphics/PointF;)V
    .locals 4

    .line 658
    iget-object v0, p0, Lcom/metamoji/ui/DraggableStackPanel$DragInfo;->this$0:Lcom/metamoji/ui/DraggableStackPanel;

    invoke-static {v0}, Lcom/metamoji/ui/DraggableStackPanel;->-$$Nest$fgetmVertical(Lcom/metamoji/ui/DraggableStackPanel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 660
    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget v0, p0, Lcom/metamoji/ui/DraggableStackPanel$DragInfo;->mStartPos:F

    sub-float/2addr p1, v0

    .line 661
    iget-object v0, p0, Lcom/metamoji/ui/DraggableStackPanel$DragInfo;->mTarget:Landroid/view/View;

    iget v1, p0, Lcom/metamoji/ui/DraggableStackPanel$DragInfo;->mOrgTargetPos:F

    add-float/2addr v1, p1

    invoke-direct {p0, v1}, Lcom/metamoji/ui/DraggableStackPanel$DragInfo;->limitMovePos(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    goto :goto_0

    .line 665
    :cond_0
    iget p1, p1, Landroid/graphics/PointF;->x:F

    iget v0, p0, Lcom/metamoji/ui/DraggableStackPanel$DragInfo;->mStartPos:F

    sub-float/2addr p1, v0

    .line 666
    iget-object v0, p0, Lcom/metamoji/ui/DraggableStackPanel$DragInfo;->mTarget:Landroid/view/View;

    iget v1, p0, Lcom/metamoji/ui/DraggableStackPanel$DragInfo;->mOrgTargetPos:F

    add-float/2addr v1, p1

    invoke-direct {p0, v1}, Lcom/metamoji/ui/DraggableStackPanel$DragInfo;->limitMovePos(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    .line 668
    :goto_0
    iget v0, p0, Lcom/metamoji/ui/DraggableStackPanel$DragInfo;->mPivot:F

    add-float/2addr v0, p1

    const/4 p1, 0x0

    .line 671
    :goto_1
    iget v1, p0, Lcom/metamoji/ui/DraggableStackPanel$DragInfo;->mCurrentIndex:I

    if-ge p1, v1, :cond_2

    .line 673
    iget-object v2, p0, Lcom/metamoji/ui/DraggableStackPanel$DragInfo;->mSensePos:[F

    aget v2, v2, p1

    iget v3, p0, Lcom/metamoji/ui/DraggableStackPanel$DragInfo;->mDragMargin:F

    sub-float/2addr v2, v3

    cmpg-float v2, v0, v2

    if-gez v2, :cond_1

    if-eq v1, p1, :cond_4

    .line 677
    invoke-direct {p0, p1}, Lcom/metamoji/ui/DraggableStackPanel$DragInfo;->repositionOnDragging(I)V

    return-void

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 684
    :cond_2
    iget-object p1, p0, Lcom/metamoji/ui/DraggableStackPanel$DragInfo;->this$0:Lcom/metamoji/ui/DraggableStackPanel;

    invoke-virtual {p1}, Lcom/metamoji/ui/DraggableStackPanel;->getChildCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_2
    iget v1, p0, Lcom/metamoji/ui/DraggableStackPanel$DragInfo;->mCurrentIndex:I

    if-le p1, v1, :cond_4

    .line 686
    iget-object v2, p0, Lcom/metamoji/ui/DraggableStackPanel$DragInfo;->mSensePos:[F

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    iget v3, p0, Lcom/metamoji/ui/DraggableStackPanel$DragInfo;->mDragMargin:F

    add-float/2addr v2, v3

    cmpl-float v2, v0, v2

    if-lez v2, :cond_3

    if-eq v1, p1, :cond_4

    .line 690
    invoke-direct {p0, p1}, Lcom/metamoji/ui/DraggableStackPanel$DragInfo;->repositionOnDragging(I)V

    return-void

    :cond_3
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_4
    return-void
.end method
