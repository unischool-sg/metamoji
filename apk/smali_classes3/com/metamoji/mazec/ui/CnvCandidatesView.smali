.class public abstract Lcom/metamoji/mazec/ui/CnvCandidatesView;
.super Landroid/view/View;
.source "CnvCandidatesView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/mazec/ui/CnvCandidatesView$OnSelectListener;,
        Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;,
        Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidatesLine;
    }
.end annotation


# instance fields
.field private mBottomPadding:I

.field private mCellPadding:I

.field private mCells:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;",
            ">;"
        }
    .end annotation
.end field

.field private mCurCandIndex:I

.field private mCurLineColor:I

.field private mCurLineHeight:I

.field private mFontDeltaY:F

.field private mHeight:I

.field private mLeftPadding:I

.field private mLinePadding:I

.field private mLines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidatesLine;",
            ">;"
        }
    .end annotation
.end field

.field private mOnSelectListener:Lcom/metamoji/mazec/ui/CnvCandidatesView$OnSelectListener;

.field private mPaint1:Landroid/graphics/Paint;

.field private mRightPadding:I

.field private mRowHeight:I

.field private mTextColor:I

.field private mTextPadding:I

.field private mTextPaint:Landroid/text/TextPaint;

.field private mTextSize:F

.field private mTopPadding:I

.field private mTouchedCellIndex:I

.field private mTouchedCellOn:Z

.field private mWidth:I

.field private mWorkRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 124
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 p1, -0x1000000

    .line 77
    iput p1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mTextColor:I

    const/4 p1, 0x0

    .line 79
    iput-object p1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mOnSelectListener:Lcom/metamoji/mazec/ui/CnvCandidatesView$OnSelectListener;

    .line 82
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mCells:Ljava/util/ArrayList;

    .line 84
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mLines:Ljava/util/ArrayList;

    const/4 p1, -0x1

    .line 86
    iput p1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mCurCandIndex:I

    .line 93
    iput p1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mTouchedCellIndex:I

    const/4 p1, 0x0

    .line 95
    iput-boolean p1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mTouchedCellOn:Z

    .line 106
    iput p1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mWidth:I

    .line 107
    iput p1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mHeight:I

    .line 117
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mWorkRect:Landroid/graphics/Rect;

    .line 125
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/CnvCandidatesView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 132
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, -0x1000000

    .line 77
    iput p1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mTextColor:I

    const/4 p1, 0x0

    .line 79
    iput-object p1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mOnSelectListener:Lcom/metamoji/mazec/ui/CnvCandidatesView$OnSelectListener;

    .line 82
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mCells:Ljava/util/ArrayList;

    .line 84
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mLines:Ljava/util/ArrayList;

    const/4 p1, -0x1

    .line 86
    iput p1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mCurCandIndex:I

    .line 93
    iput p1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mTouchedCellIndex:I

    const/4 p1, 0x0

    .line 95
    iput-boolean p1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mTouchedCellOn:Z

    .line 106
    iput p1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mWidth:I

    .line 107
    iput p1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mHeight:I

    .line 117
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mWorkRect:Landroid/graphics/Rect;

    .line 133
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/CnvCandidatesView;->init()V

    return-void
.end method

.method private copyPreRowWidths(IILjava/util/ArrayList;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;",
            ">;)Z"
        }
    .end annotation

    .line 423
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int p2, v0, p2

    move v1, p2

    :goto_0
    const/4 v2, 0x1

    if-ge v1, v0, :cond_2

    .line 425
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;

    sub-int v4, v1, p1

    .line 426
    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;

    .line 427
    invoke-virtual {v3}, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->width()I

    move-result v5

    invoke-virtual {v4}, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->width()I

    move-result v6

    if-gt v5, v6, :cond_0

    goto :goto_1

    .line 431
    :cond_0
    iget-object v5, v3, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->word:Lcom/metamoji/mazec/converter/MmjiWord;

    invoke-virtual {v5}, Lcom/metamoji/mazec/converter/MmjiWord;->getCandidate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v2, :cond_1

    invoke-virtual {v3}, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->width()I

    move-result v2

    iget v3, p0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mTextPadding:I

    sub-int/2addr v2, v3

    invoke-virtual {v4}, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->width()I

    move-result v3

    if-gt v2, v3, :cond_1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_2
    if-ge p2, v0, :cond_3

    .line 439
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;

    sub-int v3, p2, p1

    .line 440
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;

    .line 441
    iget v4, v3, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->left:I

    iput v4, v1, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->left:I

    .line 442
    iget v3, v3, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->right:I

    iput v3, v1, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->right:I

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_3
    return v2
.end method

.method private divideRestWidth(IIILjava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;",
            ">;)V"
        }
    .end annotation

    int-to-float p2, p2

    int-to-float v0, p3

    div-float/2addr p2, v0

    .line 405
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int p3, v0, p3

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-ge p3, v2, :cond_0

    .line 407
    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;

    .line 408
    iget v3, v2, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->left:I

    float-to-int v4, v1

    add-int/2addr v3, v4

    iput v3, v2, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->left:I

    add-float/2addr v1, p2

    .line 410
    iget v3, v2, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->right:I

    float-to-int v4, v1

    add-int/2addr v3, v4

    iput v3, v2, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->right:I

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 412
    :cond_0
    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;

    .line 413
    iget p3, p2, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->left:I

    float-to-int p4, v1

    add-int/2addr p3, p4

    iput p3, p2, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->left:I

    .line 414
    iput p1, p2, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->right:I

    return-void
.end method

.method private includeEmoji(Ljava/lang/String;)Z
    .locals 5

    .line 190
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 192
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 193
    invoke-static {v3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 194
    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    const v4, 0xf3000

    if-lt v3, v4, :cond_1

    const v4, 0xfeba1

    if-gt v3, v4, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private invalidateCell(I)V
    .locals 0

    .line 702
    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/ui/CnvCandidatesView;->getCandidateRect(I)Landroid/graphics/Rect;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 704
    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/ui/CnvCandidatesView;->invalidate(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method private onTouchCancel(Landroid/view/MotionEvent;)V
    .locals 1

    .line 559
    iget p1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mTouchedCellIndex:I

    if-ltz p1, :cond_1

    .line 560
    iget-boolean v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mTouchedCellOn:Z

    if-eqz v0, :cond_0

    .line 561
    invoke-direct {p0, p1}, Lcom/metamoji/mazec/ui/CnvCandidatesView;->invalidateCell(I)V

    :cond_0
    const/4 p1, -0x1

    .line 563
    iput p1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mTouchedCellIndex:I

    const/4 p1, 0x0

    .line 564
    iput-boolean p1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mTouchedCellOn:Z

    :cond_1
    return-void
.end method

.method private onTouchEnd(Landroid/view/MotionEvent;)V
    .locals 3

    .line 524
    iget v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mTouchedCellIndex:I

    if-ltz v0, :cond_1

    .line 525
    iget-object v1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mCells:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;

    .line 526
    iget-boolean v1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mTouchedCellOn:Z

    if-eqz v1, :cond_0

    .line 527
    iget v1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mTouchedCellIndex:I

    invoke-direct {p0, v1}, Lcom/metamoji/mazec/ui/CnvCandidatesView;->invalidateCell(I)V

    :cond_0
    const/4 v1, -0x1

    .line 530
    iput v1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mTouchedCellIndex:I

    const/4 v1, 0x0

    .line 531
    iput-boolean v1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mTouchedCellOn:Z

    .line 533
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 534
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 535
    invoke-virtual {v0, v2, p1}, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->containsPoint(FF)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 536
    iget-object p1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mOnSelectListener:Lcom/metamoji/mazec/ui/CnvCandidatesView$OnSelectListener;

    if-eqz p1, :cond_1

    .line 537
    invoke-virtual {p0, v1}, Lcom/metamoji/mazec/ui/CnvCandidatesView;->playSoundEffect(I)V

    .line 538
    iget-object p1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mOnSelectListener:Lcom/metamoji/mazec/ui/CnvCandidatesView$OnSelectListener;

    iget-object v0, v0, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->word:Lcom/metamoji/mazec/converter/MmjiWord;

    invoke-interface {p1, v0}, Lcom/metamoji/mazec/ui/CnvCandidatesView$OnSelectListener;->onSelect(Lcom/metamoji/mazec/converter/MmjiWord;)V

    :cond_1
    return-void
.end method

.method private onTouchMove(Landroid/view/MotionEvent;)V
    .locals 2

    .line 545
    iget v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mTouchedCellIndex:I

    if-ltz v0, :cond_0

    .line 546
    iget-object v1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mCells:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;

    .line 547
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 548
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 550
    invoke-virtual {v0, v1, p1}, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->containsPoint(FF)Z

    move-result p1

    .line 551
    iget-boolean v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mTouchedCellOn:Z

    if-eq v0, p1, :cond_0

    .line 552
    iput-boolean p1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mTouchedCellOn:Z

    .line 553
    iget p1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mTouchedCellIndex:I

    invoke-direct {p0, p1}, Lcom/metamoji/mazec/ui/CnvCandidatesView;->invalidateCell(I)V

    :cond_0
    return-void
.end method

.method private onTouchStart(Landroid/view/MotionEvent;)V
    .locals 6

    .line 504
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 505
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 507
    iget-object v1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mCells:Ljava/util/ArrayList;

    .line 508
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 510
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;

    .line 511
    iget v5, v4, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->bottom:I

    int-to-float v5, v5

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_0

    iget v4, v4, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->right:I

    int-to-float v4, v4

    cmpg-float v4, v0, v4

    if-gtz v4, :cond_0

    .line 512
    iput v3, p0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mTouchedCellIndex:I

    const/4 p1, 0x1

    .line 513
    iput-boolean p1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mTouchedCellOn:Z

    .line 514
    invoke-direct {p0, v3}, Lcom/metamoji/mazec/ui/CnvCandidatesView;->invalidateCell(I)V

    return-void

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected drawCellBackground(Landroid/graphics/Canvas;Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;IZ)V
    .locals 0

    return-void
.end method

.method protected drawCellBorder(Landroid/graphics/Canvas;Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;ZZ)V
    .locals 0

    return-void
.end method

.method protected drawLineBorder(Landroid/graphics/Canvas;Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidatesLine;ZZ)V
    .locals 0

    return-void
.end method

.method protected getBottomPadding(Landroid/content/res/Resources;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getCandidateRect(I)Landroid/graphics/Rect;
    .locals 4

    if-ltz p1, :cond_0

    .line 709
    iget-object v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mCells:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 710
    iget-object v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mCells:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;

    .line 711
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->left:I

    iget v2, p1, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->top:I

    iget v3, p1, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->right:I

    iget p1, p1, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->bottom:I

    invoke-direct {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getCellPadding(Landroid/content/res/Resources;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getDispHeight()I
    .locals 1

    .line 468
    iget v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mHeight:I

    return v0
.end method

.method public getDispWidth()I
    .locals 1

    .line 460
    iget v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mWidth:I

    return v0
.end method

.method protected getLeftPadding(Landroid/content/res/Resources;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected getLinePadding(Landroid/content/res/Resources;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected getRightPadding(Landroid/content/res/Resources;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected abstract getRowHeight(Landroid/content/res/Resources;)I
.end method

.method protected abstract getTextPadding(Landroid/content/res/Resources;)I
.end method

.method protected abstract getTextSize(Landroid/content/res/Resources;)F
.end method

.method protected getTopPadding(Landroid/content/res/Resources;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected init()V
    .locals 2

    .line 140
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 141
    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/ui/CnvCandidatesView;->getRowHeight(Landroid/content/res/Resources;)I

    move-result v1

    iput v1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mRowHeight:I

    .line 142
    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/ui/CnvCandidatesView;->getTextSize(Landroid/content/res/Resources;)F

    move-result v1

    iput v1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mTextSize:F

    .line 143
    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/ui/CnvCandidatesView;->getTextPadding(Landroid/content/res/Resources;)I

    move-result v1

    iput v1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mTextPadding:I

    .line 145
    const-string v1, "color.cnv_candidates_bar_cur_line"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mCurLineColor:I

    .line 146
    const-string v1, "dimen.cnv_candates_bar_cur_line_height"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mCurLineHeight:I

    .line 148
    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/ui/CnvCandidatesView;->getLeftPadding(Landroid/content/res/Resources;)I

    move-result v1

    iput v1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mLeftPadding:I

    .line 149
    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/ui/CnvCandidatesView;->getTopPadding(Landroid/content/res/Resources;)I

    move-result v1

    iput v1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mTopPadding:I

    .line 150
    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/ui/CnvCandidatesView;->getRightPadding(Landroid/content/res/Resources;)I

    move-result v1

    iput v1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mRightPadding:I

    .line 151
    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/ui/CnvCandidatesView;->getBottomPadding(Landroid/content/res/Resources;)I

    move-result v1

    iput v1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mBottomPadding:I

    .line 153
    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/ui/CnvCandidatesView;->getLinePadding(Landroid/content/res/Resources;)I

    move-result v1

    iput v1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mLinePadding:I

    .line 154
    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/ui/CnvCandidatesView;->getCellPadding(Landroid/content/res/Resources;)I

    move-result v0

    iput v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mCellPadding:I

    .line 157
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x1

    .line 158
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 159
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 160
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 161
    iget v1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 162
    iget v1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 164
    iput-object v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mPaint1:Landroid/graphics/Paint;

    .line 166
    new-instance v0, Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mPaint1:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mTextPaint:Landroid/text/TextPaint;

    .line 171
    iget-object v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mPaint1:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 172
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v1, v0

    iput v1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mFontDeltaY:F

    return-void
.end method

.method public initView(Lcom/metamoji/mazec/converter/ConvertResult;[II)V
    .locals 34

    move-object/from16 v0, p0

    move/from16 v1, p3

    .line 207
    iget-object v2, v0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mCells:Ljava/util/ArrayList;

    .line 208
    iget-object v3, v0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mLines:Ljava/util/ArrayList;

    .line 209
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 210
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const/4 v4, -0x1

    .line 211
    iput v4, v0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mCurCandIndex:I

    if-nez p1, :cond_0

    goto :goto_0

    .line 217
    :cond_0
    invoke-virtual/range {p1 .. p2}, Lcom/metamoji/mazec/converter/ConvertResult;->getCandidates([I)Ljava/util/List;

    move-result-object v4

    .line 220
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    :goto_0
    return-void

    .line 225
    :cond_1
    iget-object v6, v0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mPaint1:Landroid/graphics/Paint;

    .line 226
    sget-object v7, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 228
    iget v7, v0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mRowHeight:I

    .line 229
    iget v8, v0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mTextPadding:I

    mul-int/lit8 v9, v8, 0x2

    .line 231
    iget v10, v0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mLeftPadding:I

    iget v11, v0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mRightPadding:I

    sub-int v11, v1, v11

    .line 232
    iget v12, v0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mTopPadding:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_1
    if-ge v14, v5, :cond_b

    .line 237
    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v13, v18

    check-cast v13, Lcom/metamoji/mazec/converter/MmjiWord;

    move-object/from16 v26, v4

    .line 238
    invoke-virtual {v13}, Lcom/metamoji/mazec/converter/MmjiWord;->getCandidate()Ljava/lang/String;

    move-result-object v4

    move/from16 v27, v7

    .line 239
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    .line 240
    invoke-direct {v0, v4}, Lcom/metamoji/mazec/ui/CnvCandidatesView;->includeEmoji(Ljava/lang/String;)Z

    move-result v18

    move/from16 v28, v8

    if-eqz v18, :cond_2

    .line 242
    iget-object v8, v0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {v4, v8}, Landroid/text/StaticLayout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v8

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    invoke-virtual {v6, v4, v8, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v19

    move/from16 v8, v19

    :goto_2
    move/from16 v29, v9

    float-to-double v8, v8

    .line 244
    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    add-int v8, v8, v29

    const/4 v9, 0x1

    if-ne v7, v9, :cond_3

    add-int v8, v8, v28

    :cond_3
    add-int/2addr v8, v10

    if-le v8, v11, :cond_9

    if-nez v15, :cond_6

    .line 252
    iget-object v8, v0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mWorkRect:Landroid/graphics/Rect;

    const/4 v9, 0x0

    invoke-virtual {v6, v4, v9, v7, v8}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 254
    iget-object v7, v0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mWorkRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    const/4 v8, 0x2

    add-int/2addr v7, v8

    .line 255
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 256
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v8}, Ljava/util/ArrayList;-><init>(I)V

    sub-int v20, v1, v29

    .line 259
    new-instance v18, Landroid/text/StaticLayout;

    iget-object v15, v0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mTextPaint:Landroid/text/TextPaint;

    sget-object v22, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/high16 v23, 0x3f800000    # 1.0f

    move-object/from16 v19, v4

    move/from16 v21, v20

    move-object/from16 v20, v15

    invoke-direct/range {v18 .. v25}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move/from16 v25, v8

    move-object/from16 v15, v18

    move/from16 v20, v21

    .line 260
    invoke-virtual {v15}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v8

    const/16 v17, 0x0

    move-object/from16 v30, v6

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v8, :cond_5

    move/from16 v31, v8

    .line 263
    invoke-virtual {v15, v6}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v8

    move/from16 v32, v14

    invoke-virtual {v15, v6}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v14

    invoke-virtual {v4, v8, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 264
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    invoke-virtual {v15, v6}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v14

    cmpg-float v18, v17, v14

    if-gez v18, :cond_4

    goto :goto_4

    :cond_4
    move/from16 v14, v17

    .line 269
    :goto_4
    new-instance v17, Landroid/text/StaticLayout;

    move-object/from16 v33, v4

    iget-object v4, v0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mTextPaint:Landroid/text/TextPaint;

    sget-object v21, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/high16 v22, 0x3f800000    # 1.0f

    move-object/from16 v19, v4

    move-object/from16 v18, v8

    invoke-direct/range {v17 .. v24}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v8, v17

    move/from16 v4, v20

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    move/from16 v17, v14

    move/from16 v8, v31

    move/from16 v14, v32

    move-object/from16 v4, v33

    goto :goto_3

    :cond_5
    move/from16 v32, v14

    move/from16 v4, v20

    .line 272
    new-instance v6, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;

    invoke-direct {v6}, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;-><init>()V

    .line 273
    iget v8, v0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mLeftPadding:I

    iput v8, v6, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->left:I

    .line 274
    iput v12, v6, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->top:I

    .line 275
    iput v11, v6, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->right:I

    sub-int v8, v27, v7

    add-int/2addr v12, v8

    .line 276
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    mul-int/2addr v8, v7

    add-int/2addr v12, v8

    iput v12, v6, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->bottom:I

    .line 277
    iput-object v13, v6, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->word:Lcom/metamoji/mazec/converter/MmjiWord;

    .line 278
    iput-object v9, v6, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->textParts:Ljava/util/ArrayList;

    .line 279
    iput-object v10, v6, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->layouts:Ljava/util/ArrayList;

    .line 280
    iput v7, v6, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->lineHeight:I

    .line 281
    iget v7, v0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mTextPadding:I

    int-to-float v4, v4

    sub-float v4, v4, v17

    float-to-int v4, v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v7, v4

    iput v7, v6, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->paddingLeft:I

    .line 283
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    iget v4, v6, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->bottom:I

    iget v6, v0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mLinePadding:I

    add-int/2addr v4, v6

    const/4 v15, 0x1

    goto :goto_6

    :cond_6
    move-object/from16 v30, v6

    move/from16 v32, v14

    move/from16 v4, v17

    if-ne v15, v4, :cond_7

    .line 292
    invoke-direct {v0, v4, v15, v2}, Lcom/metamoji/mazec/ui/CnvCandidatesView;->copyPreRowWidths(IILjava/util/ArrayList;)Z

    move-result v8

    goto :goto_5

    :cond_7
    const/4 v8, 0x0

    :goto_5
    if-nez v8, :cond_8

    sub-int v4, v1, v10

    add-int/lit8 v4, v4, 0x4

    .line 298
    invoke-direct {v0, v1, v4, v15, v2}, Lcom/metamoji/mazec/ui/CnvCandidatesView;->divideRestWidth(IIILjava/util/ArrayList;)V

    :cond_8
    add-int/lit8 v14, v32, -0x1

    .line 304
    iget v4, v0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mLinePadding:I

    add-int v7, v27, v4

    add-int v4, v12, v7

    .line 308
    :goto_6
    iget v6, v0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mLeftPadding:I

    .line 312
    new-instance v7, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidatesLine;

    invoke-direct {v7}, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidatesLine;-><init>()V

    move/from16 v9, v16

    .line 313
    iput v9, v7, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidatesLine;->start:I

    add-int/lit8 v16, v14, 0x1

    sub-int v8, v16, v9

    .line 314
    iput v8, v7, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidatesLine;->count:I

    .line 316
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v12, v4

    move/from16 v17, v15

    const/4 v15, 0x0

    goto :goto_7

    :cond_9
    move-object/from16 v33, v4

    move-object/from16 v30, v6

    move/from16 v32, v14

    move/from16 v9, v16

    move/from16 v4, v17

    .line 323
    new-instance v6, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;

    invoke-direct {v6}, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;-><init>()V

    .line 324
    iput v10, v6, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->left:I

    .line 325
    iput v12, v6, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->top:I

    .line 326
    iput v8, v6, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->right:I

    add-int v7, v12, v27

    .line 327
    iput v7, v6, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->bottom:I

    .line 328
    iput-object v13, v6, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->word:Lcom/metamoji/mazec/converter/MmjiWord;

    if-eqz v18, :cond_a

    .line 330
    new-instance v7, Ljava/util/ArrayList;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, v6, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->layouts:Ljava/util/ArrayList;

    .line 331
    iget-object v7, v6, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->layouts:Ljava/util/ArrayList;

    new-instance v18, Landroid/text/StaticLayout;

    iget-object v8, v0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->width()I

    move-result v21

    sget-object v22, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/high16 v23, 0x3f800000    # 1.0f

    move-object/from16 v20, v8

    move-object/from16 v19, v33

    invoke-direct/range {v18 .. v25}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v8, v18

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    :cond_a
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    .line 337
    iget v6, v6, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->right:I

    iget v7, v0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mCellPadding:I

    add-int/2addr v6, v7

    move/from16 v17, v4

    move/from16 v16, v9

    move/from16 v14, v32

    :goto_7
    move v10, v6

    const/4 v8, 0x1

    add-int/2addr v14, v8

    move-object/from16 v4, v26

    move/from16 v7, v27

    move/from16 v8, v28

    move/from16 v9, v29

    move-object/from16 v6, v30

    goto/16 :goto_1

    :cond_b
    move/from16 v29, v9

    move/from16 v9, v16

    move/from16 v4, v17

    .line 340
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_c

    add-int/lit8 v7, v6, -0x1

    .line 343
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidatesLine;

    .line 344
    iget v8, v7, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidatesLine;->start:I

    iget v7, v7, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidatesLine;->count:I

    add-int/2addr v8, v7

    if-ge v8, v5, :cond_d

    .line 347
    :cond_c
    new-instance v7, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidatesLine;

    invoke-direct {v7}, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidatesLine;-><init>()V

    .line 348
    iput v9, v7, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidatesLine;->start:I

    sub-int/2addr v5, v9

    .line 349
    iput v5, v7, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidatesLine;->count:I

    .line 351
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    :cond_d
    if-lez v15, :cond_e

    if-lt v4, v15, :cond_e

    .line 359
    invoke-direct {v0, v4, v15, v2}, Lcom/metamoji/mazec/ui/CnvCandidatesView;->copyPreRowWidths(IILjava/util/ArrayList;)Z

    move-result v8

    goto :goto_8

    :cond_e
    const/4 v8, 0x0

    :goto_8
    if-nez v8, :cond_12

    sub-int v4, v1, v10

    add-int/lit8 v4, v4, 0x4

    add-int/lit8 v9, v29, 0xa

    if-ge v4, v9, :cond_f

    .line 365
    invoke-direct {v0, v1, v4, v15, v2}, Lcom/metamoji/mazec/ui/CnvCandidatesView;->divideRestWidth(IIILjava/util/ArrayList;)V

    .line 369
    :cond_f
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int v5, v4, v15

    :goto_9
    if-ge v5, v4, :cond_12

    .line 371
    iget-object v7, v0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mCells:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;

    .line 372
    iget-object v8, v7, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->layouts:Ljava/util/ArrayList;

    if-eqz v8, :cond_10

    iget-object v8, v7, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->layouts:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_10

    .line 373
    iget-object v8, v7, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->layouts:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/text/Layout;

    .line 374
    invoke-virtual {v8}, Landroid/text/Layout;->getWidth()I

    move-result v8

    invoke-virtual {v7}, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->width()I

    move-result v10

    if-eq v8, v10, :cond_11

    .line 375
    iget-object v8, v7, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->layouts:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 376
    iget-object v8, v7, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->layouts:Ljava/util/ArrayList;

    new-instance v10, Landroid/text/StaticLayout;

    iget-object v11, v7, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->word:Lcom/metamoji/mazec/converter/MmjiWord;

    invoke-virtual {v11}, Lcom/metamoji/mazec/converter/MmjiWord;->getCandidate()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7}, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->width()I

    move-result v13

    sget-object v14, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-direct/range {v10 .. v17}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_10
    const/4 v9, 0x0

    :cond_11
    :goto_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 383
    :cond_12
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidatesLine;

    .line 384
    iget v7, v5, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidatesLine;->start:I

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;

    iget v8, v5, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidatesLine;->start:I

    iget v9, v5, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidatesLine;->count:I

    add-int/2addr v8, v9

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;

    .line 385
    iget v9, v7, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->left:I

    iput v9, v5, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidatesLine;->left:I

    .line 386
    iget v7, v7, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->top:I

    iput v7, v5, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidatesLine;->top:I

    .line 387
    iget v7, v8, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->right:I

    iput v7, v5, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidatesLine;->right:I

    .line 388
    iget v7, v8, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->bottom:I

    iput v7, v5, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidatesLine;->bottom:I

    goto :goto_b

    :cond_13
    const/4 v9, 0x1

    sub-int/2addr v6, v9

    .line 391
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidatesLine;

    .line 394
    iput v1, v0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mWidth:I

    .line 395
    iget v1, v2, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidatesLine;->bottom:I

    iget v2, v0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mBottomPadding:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mHeight:I

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 573
    iget-object v2, v0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mWorkRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 575
    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/CnvCandidatesView;->getWidth()I

    move-result v8

    iget v9, v0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mRowHeight:I

    .line 577
    iget-object v10, v0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mCells:Ljava/util/ArrayList;

    .line 578
    iget-object v7, v0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mPaint1:Landroid/graphics/Paint;

    .line 579
    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    int-to-float v2, v9

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v2, v11

    .line 583
    iget v3, v0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mFontDeltaY:F

    sub-float v12, v2, v3

    .line 585
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_e

    .line 590
    :cond_0
    iget-object v2, v0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v13, 0x1

    add-int/lit8 v14, v2, -0x1

    .line 591
    iget-object v2, v0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidatesLine;

    .line 592
    iget v5, v4, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidatesLine;->bottom:I

    iget-object v6, v0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mWorkRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    if-lt v5, v6, :cond_d

    iget-object v5, v0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mWorkRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget v6, v4, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidatesLine;->top:I

    if-ge v5, v6, :cond_1

    goto/16 :goto_c

    .line 596
    :cond_1
    iget v5, v4, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidatesLine;->start:I

    iget v6, v4, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidatesLine;->count:I

    add-int/2addr v5, v6

    sub-int/2addr v5, v13

    .line 597
    iget v6, v4, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidatesLine;->start:I

    :goto_1
    if-gt v6, v5, :cond_a

    .line 598
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move/from16 v17, v11

    move-object/from16 v11, v16

    check-cast v11, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;

    .line 600
    iget v2, v4, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidatesLine;->start:I

    sub-int v2, v6, v2

    move/from16 v18, v13

    iget v13, v0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mTouchedCellIndex:I

    if-ne v6, v13, :cond_2

    iget-boolean v13, v0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mTouchedCellOn:Z

    if-eqz v13, :cond_2

    move/from16 v13, v18

    goto :goto_2

    :cond_2
    const/4 v13, 0x0

    :goto_2
    invoke-virtual {v0, v1, v11, v2, v13}, Lcom/metamoji/mazec/ui/CnvCandidatesView;->drawCellBackground(Landroid/graphics/Canvas;Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;IZ)V

    .line 602
    iget v2, v0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mCurCandIndex:I

    if-ne v6, v2, :cond_3

    .line 603
    invoke-virtual {v7}, Landroid/graphics/Paint;->getColor()I

    move-result v13

    .line 604
    iget v2, v0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mCurLineColor:I

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 605
    iget v2, v11, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->left:I

    int-to-float v2, v2

    iget v1, v11, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->bottom:I

    add-int/lit8 v1, v1, -0x1

    move/from16 v19, v1

    iget v1, v0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mCurLineHeight:I

    sub-int v1, v19, v1

    int-to-float v1, v1

    move/from16 v19, v1

    iget v1, v11, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->right:I

    int-to-float v1, v1

    move/from16 v20, v1

    iget v1, v11, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->bottom:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    move/from16 v21, v3

    move-object/from16 v22, v4

    move/from16 v23, v5

    move/from16 v24, v6

    move-object v6, v7

    move/from16 v3, v19

    move/from16 v4, v20

    const/4 v7, 0x0

    move v5, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 606
    invoke-virtual {v6, v13}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_3

    :cond_3
    move/from16 v21, v3

    move-object/from16 v22, v4

    move/from16 v23, v5

    move/from16 v24, v6

    move-object v6, v7

    const/4 v7, 0x0

    .line 609
    :goto_3
    iget-object v2, v11, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->textParts:Ljava/util/ArrayList;

    if-nez v2, :cond_5

    .line 610
    iget-object v2, v11, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->word:Lcom/metamoji/mazec/converter/MmjiWord;

    invoke-virtual {v2}, Lcom/metamoji/mazec/converter/MmjiWord;->getCandidate()Ljava/lang/String;

    move-result-object v2

    .line 611
    iget-object v3, v11, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->layouts:Ljava/util/ArrayList;

    if-eqz v3, :cond_4

    .line 613
    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 614
    iget-object v2, v11, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->layouts:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/text/Layout;

    .line 615
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 616
    iget v3, v11, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->left:I

    int-to-float v3, v3

    iget v4, v11, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->top:I

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v5

    sub-int v5, v9, v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 617
    invoke-virtual {v2, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 618
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 619
    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    move/from16 v16, v7

    move-object v7, v6

    goto :goto_4

    .line 622
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    .line 623
    iget v3, v11, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->left:I

    iget v5, v11, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->right:I

    add-int/2addr v3, v5

    int-to-float v3, v3

    div-float v5, v3, v17

    iget v3, v11, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->top:I

    int-to-float v3, v3

    add-float/2addr v3, v12

    move/from16 v16, v7

    move-object v7, v6

    move v6, v3

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    :goto_4
    move-object/from16 v4, v22

    goto/16 :goto_7

    :cond_5
    move/from16 v16, v7

    move-object v7, v6

    .line 634
    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 636
    iget-object v2, v11, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->textParts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 637
    iget v2, v11, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->top:I

    iget v3, v11, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->bottom:I

    iget v4, v11, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->top:I

    sub-int/2addr v3, v4

    iget v4, v11, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->lineHeight:I

    mul-int/2addr v4, v13

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 638
    iget-object v3, v11, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->layouts:Ljava/util/ArrayList;

    if-eqz v3, :cond_6

    move v3, v2

    move/from16 v2, v16

    :goto_5
    if-ge v2, v13, :cond_7

    .line 641
    iget-object v4, v11, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->layouts:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/text/Layout;

    .line 642
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 643
    iget v5, v0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mTextPadding:I

    int-to-float v5, v5

    iget v6, v11, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->lineHeight:I

    invoke-virtual {v4}, Landroid/text/Layout;->getHeight()I

    move-result v19

    sub-int v6, v6, v19

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v3

    int-to-float v6, v6

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 644
    invoke-virtual {v4, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 645
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 646
    iget v4, v11, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->lineHeight:I

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 650
    :cond_6
    iget v3, v11, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->lineHeight:I

    int-to-float v3, v3

    div-float v3, v3, v17

    iget v4, v0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mFontDeltaY:F

    sub-float v19, v3, v4

    move v3, v2

    move/from16 v2, v16

    :goto_6
    if-ge v2, v13, :cond_7

    .line 652
    iget-object v4, v11, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->textParts:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move v5, v2

    move-object v2, v4

    .line 653
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    .line 654
    iget v6, v11, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->paddingLeft:I

    int-to-float v6, v6

    int-to-float v1, v3

    add-float v1, v1, v19

    move/from16 v20, v3

    const/4 v3, 0x0

    move/from16 v25, v20

    move/from16 v20, v5

    move v5, v6

    move v6, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 662
    iget v2, v11, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->lineHeight:I

    add-int v3, v25, v2

    add-int/lit8 v2, v20, 0x1

    goto :goto_6

    .line 666
    :cond_7
    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto/16 :goto_4

    .line 669
    :goto_7
    iget v2, v4, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidatesLine;->start:I

    move/from16 v6, v24

    if-ne v6, v2, :cond_8

    move/from16 v2, v18

    goto :goto_8

    :cond_8
    move/from16 v2, v16

    :goto_8
    move/from16 v5, v23

    if-ne v6, v5, :cond_9

    iget v3, v11, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->right:I

    if-gt v8, v3, :cond_9

    move/from16 v3, v18

    goto :goto_9

    :cond_9
    move/from16 v3, v16

    :goto_9
    invoke-virtual {v0, v1, v11, v2, v3}, Lcom/metamoji/mazec/ui/CnvCandidatesView;->drawCellBorder(Landroid/graphics/Canvas;Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;ZZ)V

    add-int/lit8 v6, v6, 0x1

    move/from16 v11, v17

    move/from16 v13, v18

    move/from16 v3, v21

    goto/16 :goto_1

    :cond_a
    move v2, v3

    move/from16 v17, v11

    move/from16 v18, v13

    const/16 v16, 0x0

    if-nez v2, :cond_b

    move/from16 v3, v18

    goto :goto_a

    :cond_b
    move/from16 v3, v16

    :goto_a
    if-ne v2, v14, :cond_c

    move/from16 v5, v18

    goto :goto_b

    :cond_c
    move/from16 v5, v16

    .line 671
    :goto_b
    invoke-virtual {v0, v1, v4, v3, v5}, Lcom/metamoji/mazec/ui/CnvCandidatesView;->drawLineBorder(Landroid/graphics/Canvas;Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidatesLine;ZZ)V

    add-int/lit8 v3, v2, 0x1

    goto :goto_d

    :cond_d
    :goto_c
    move v2, v3

    move/from16 v17, v11

    move/from16 v18, v13

    const/16 v16, 0x0

    move v3, v2

    :goto_d
    move/from16 v11, v17

    move/from16 v13, v18

    goto/16 :goto_0

    :cond_e
    :goto_e
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 452
    iget p1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mWidth:I

    iget p2, p0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mHeight:I

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/mazec/ui/CnvCandidatesView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 476
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->notifyInputViewTouched()V

    .line 478
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 493
    :cond_0
    invoke-direct {p0, p1}, Lcom/metamoji/mazec/ui/CnvCandidatesView;->onTouchCancel(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 489
    :cond_1
    invoke-direct {p0, p1}, Lcom/metamoji/mazec/ui/CnvCandidatesView;->onTouchMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 485
    :cond_2
    invoke-direct {p0, p1}, Lcom/metamoji/mazec/ui/CnvCandidatesView;->onTouchEnd(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 481
    :cond_3
    invoke-direct {p0, p1}, Lcom/metamoji/mazec/ui/CnvCandidatesView;->onTouchStart(Landroid/view/MotionEvent;)V

    :goto_0
    return v1
.end method

.method public setCurrentCandidateIndex(I)V
    .locals 1

    .line 696
    iget v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mCurCandIndex:I

    invoke-direct {p0, v0}, Lcom/metamoji/mazec/ui/CnvCandidatesView;->invalidateCell(I)V

    .line 697
    iput p1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mCurCandIndex:I

    .line 698
    invoke-direct {p0, p1}, Lcom/metamoji/mazec/ui/CnvCandidatesView;->invalidateCell(I)V

    return-void
.end method

.method public setOnSelectListener(Lcom/metamoji/mazec/ui/CnvCandidatesView$OnSelectListener;)V
    .locals 0

    .line 685
    iput-object p1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesView;->mOnSelectListener:Lcom/metamoji/mazec/ui/CnvCandidatesView$OnSelectListener;

    return-void
.end method
