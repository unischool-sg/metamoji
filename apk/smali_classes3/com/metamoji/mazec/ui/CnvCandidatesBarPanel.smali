.class public Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;
.super Landroid/view/View;
.source "CnvCandidatesBarPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel$Listener;,
        Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel$CandidateCell;
    }
.end annotation


# instance fields
.field private mBkColorNormal:I

.field private mBkColorTouched:I

.field private mBorderColor1:I

.field private mBorderColor2:I

.field private mBorderMargin:I

.field mCandidates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/converter/MmjiWord;",
            ">;"
        }
    .end annotation
.end field

.field private mCandidatesLayout:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel$CandidateCell;",
            ">;"
        }
    .end annotation
.end field

.field private mCandsCount:I

.field mConvResult:Lcom/metamoji/mazec/converter/ConvertResult;

.field private mCurCandIndex:I

.field private mCurLineColor:I

.field private mCurLineHeight:I

.field private mHiliteColor:I

.field mListType:[I

.field private mListener:Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel$Listener;

.field private mPaint:Landroid/graphics/Paint;

.field private mPrefHeight:I

.field private mShadowColor:I

.field private mTextColorCorrection:I

.field private mTextColorNormal:I

.field private mTextPadding:I

.field private mTextPaint:Landroid/text/TextPaint;

.field private mTextSize:F

.field private mTouchedCellIndex:I

.field private mTouchedCellOn:Z

.field private mWorkRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 140
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 78
    iput-object p1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mListener:Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel$Listener;

    const/16 v0, 0xff

    .line 90
    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mHiliteColor:I

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mCandidatesLayout:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 115
    iput v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mCandsCount:I

    .line 117
    iput-object p1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mCandidates:Ljava/util/List;

    const/4 p1, -0x1

    .line 119
    iput p1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mCurCandIndex:I

    .line 126
    iput p1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mTouchedCellIndex:I

    .line 128
    iput-boolean v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mTouchedCellOn:Z

    .line 134
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mWorkRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 147
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 78
    iput-object p1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mListener:Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel$Listener;

    const/16 p2, 0xff

    .line 90
    invoke-static {p2, p2, p2, p2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    iput p2, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mHiliteColor:I

    .line 113
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mCandidatesLayout:Ljava/util/ArrayList;

    const/4 p2, 0x0

    .line 115
    iput p2, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mCandsCount:I

    .line 117
    iput-object p1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mCandidates:Ljava/util/List;

    const/4 p1, -0x1

    .line 119
    iput p1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mCurCandIndex:I

    .line 126
    iput p1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mTouchedCellIndex:I

    .line 128
    iput-boolean p2, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mTouchedCellOn:Z

    .line 134
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mWorkRect:Landroid/graphics/Rect;

    return-void
.end method

.method private clearCandidatesLayout()V
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mCandidatesLayout:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, -0x1

    .line 226
    iput v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mCurCandIndex:I

    .line 228
    iput v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mTouchedCellIndex:I

    const/4 v0, 0x0

    .line 229
    iput-boolean v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mTouchedCellOn:Z

    .line 230
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->requestLayout()V

    .line 231
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->invalidate()V

    return-void
.end method

.method private getCandidateCellAt(I)Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel$CandidateCell;
    .locals 1

    if-ltz p1, :cond_1

    .line 215
    iget v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mCandsCount:I

    if-ge p1, v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mCandidatesLayout:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    .line 217
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->layoutCandidates()V

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mCandidatesLayout:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel$CandidateCell;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getCandidateCells()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel$CandidateCell;",
            ">;"
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mCandidatesLayout:Ljava/util/ArrayList;

    return-object v0
.end method

.method private static includeEmoji(Ljava/lang/String;)Z
    .locals 5

    .line 63
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 65
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 66
    invoke-static {v3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 67
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    const v4, 0xf3000

    if-lt v3, v4, :cond_1

    const v4, 0xfeba1

    if-gt v3, v4, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private invalidateCellAt(I)V
    .locals 3

    .line 550
    invoke-direct {p0, p1}, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->getCandidateCellAt(I)Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel$CandidateCell;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 552
    iget v0, p1, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel$CandidateCell;->left:I

    iget p1, p1, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel$CandidateCell;->right:I

    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p1, v1}, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->invalidate(IIII)V

    :cond_0
    return-void
.end method

.method private onTouchCancel(Landroid/view/MotionEvent;)V
    .locals 1

    .line 393
    iget p1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mTouchedCellIndex:I

    if-ltz p1, :cond_1

    .line 394
    iget-boolean v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mTouchedCellOn:Z

    if-eqz v0, :cond_0

    .line 395
    invoke-direct {p0, p1}, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->invalidateCellAt(I)V

    :cond_0
    const/4 p1, -0x1

    .line 397
    iput p1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mTouchedCellIndex:I

    const/4 p1, 0x0

    .line 398
    iput-boolean p1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mTouchedCellOn:Z

    :cond_1
    return-void
.end method

.method private onTouchEnd(Landroid/view/MotionEvent;)V
    .locals 3

    .line 358
    iget v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mTouchedCellIndex:I

    if-ltz v0, :cond_1

    .line 359
    iget-boolean v1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mTouchedCellOn:Z

    if-eqz v1, :cond_0

    .line 360
    invoke-direct {p0, v0}, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->invalidateCellAt(I)V

    .line 363
    :cond_0
    iget v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mTouchedCellIndex:I

    const/4 v1, -0x1

    .line 365
    iput v1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mTouchedCellIndex:I

    const/4 v1, 0x0

    .line 366
    iput-boolean v1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mTouchedCellOn:Z

    .line 368
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v2, p1, v0}, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->positionInCell(FFI)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 371
    iget-object p1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mListener:Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel$Listener;

    if-eqz p1, :cond_1

    .line 372
    invoke-direct {p0, v0}, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->getCandidateCellAt(I)Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel$CandidateCell;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 374
    invoke-virtual {p0, v1}, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->playSoundEffect(I)V

    .line 375
    iget-object v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mListener:Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel$Listener;

    iget-object p1, p1, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel$CandidateCell;->word:Lcom/metamoji/mazec/converter/MmjiWord;

    invoke-interface {v0, p1}, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel$Listener;->onSelect(Lcom/metamoji/mazec/converter/MmjiWord;)V

    :cond_1
    return-void
.end method

.method private onTouchMove(Landroid/view/MotionEvent;)V
    .locals 2

    .line 383
    iget v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mTouchedCellIndex:I

    if-ltz v0, :cond_0

    .line 384
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mTouchedCellIndex:I

    invoke-direct {p0, v0, p1, v1}, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->positionInCell(FFI)Z

    move-result p1

    .line 385
    iget-boolean v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mTouchedCellOn:Z

    if-eq v0, p1, :cond_0

    .line 386
    iput-boolean p1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mTouchedCellOn:Z

    .line 387
    iget p1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mTouchedCellIndex:I

    invoke-direct {p0, p1}, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->invalidateCellAt(I)V

    :cond_0
    return-void
.end method

.method private onTouchStart(Landroid/view/MotionEvent;)V
    .locals 1

    .line 349
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->position2cellIndex(FF)I

    move-result p1

    iput p1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mTouchedCellIndex:I

    const/4 v0, 0x1

    .line 350
    iput-boolean v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mTouchedCellOn:Z

    .line 351
    invoke-direct {p0, p1}, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->invalidateCellAt(I)V

    return-void
.end method

.method private position2cellIndex(FF)I
    .locals 3

    const/4 v0, 0x0

    cmpg-float v0, v0, p2

    if-gtz v0, :cond_1

    .line 322
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float p2, p2, v0

    if-gez p2, :cond_1

    .line 323
    invoke-direct {p0}, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->getCandidateCells()Ljava/util/List;

    move-result-object p2

    .line 324
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 328
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel$CandidateCell;

    .line 329
    iget v2, v2, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel$CandidateCell;->right:I

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private positionInCell(FFI)Z
    .locals 2

    const/4 v0, 0x0

    cmpg-float v0, v0, p2

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 338
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float p2, p2, v0

    if-gez p2, :cond_0

    .line 339
    invoke-direct {p0, p3}, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->getCandidateCellAt(I)Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel$CandidateCell;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 340
    iget p3, p2, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel$CandidateCell;->left:I

    int-to-float p3, p3

    cmpg-float p3, p3, p1

    if-gtz p3, :cond_0

    iget p2, p2, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel$CandidateCell;->right:I

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method


# virtual methods
.method public commitCurrentCandidate()Z
    .locals 2

    .line 501
    iget-object v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mListener:Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel$Listener;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 505
    :cond_0
    iget v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mCurCandIndex:I

    invoke-direct {p0, v0}, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->getCandidateCellAt(I)Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel$CandidateCell;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 510
    :cond_1
    iget-object v1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mListener:Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel$Listener;

    iget-object v0, v0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel$CandidateCell;->word:Lcom/metamoji/mazec/converter/MmjiWord;

    invoke-interface {v1, v0}, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel$Listener;->onSelect(Lcom/metamoji/mazec/converter/MmjiWord;)V

    const/4 v0, 0x1

    return v0
.end method

.method protected drawCurrentCandidateBack(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V
    .locals 6

    .line 480
    iget p4, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mCurLineColor:I

    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v1, p3

    .line 481
    iget p3, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mCurLineHeight:I

    sub-int p3, p6, p3

    int-to-float v2, p3

    int-to-float v3, p5

    int-to-float v4, p6

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected drawTouchedCandidateBack(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V
    .locals 2

    .line 485
    iget v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mBkColorTouched:I

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float p3, p3

    int-to-float p4, p4

    int-to-float p5, p5

    int-to-float p6, p6

    move v1, p6

    move-object p6, p2

    move p2, p3

    move p3, p4

    move p4, p5

    move p5, v1

    .line 486
    invoke-virtual/range {p1 .. p6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getCandidateAt(I)Lcom/metamoji/mazec/converter/MmjiWord;
    .locals 0

    .line 564
    invoke-direct {p0, p1}, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->getCandidateCellAt(I)Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel$CandidateCell;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 566
    iget-object p1, p1, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel$CandidateCell;->word:Lcom/metamoji/mazec/converter/MmjiWord;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCandidateRectAt(I)Landroid/graphics/Rect;
    .locals 4

    .line 572
    invoke-direct {p0, p1}, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->getCandidateCellAt(I)Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel$CandidateCell;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 574
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel$CandidateCell;->left:I

    iget p1, p1, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel$CandidateCell;->right:I

    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, p1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPreferableHeight()I
    .locals 1

    .line 186
    iget v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mPrefHeight:I

    return v0
.end method

.method public hasCandidates()Z
    .locals 1

    .line 560
    iget v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mCandsCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasCurrentCandidate()Z
    .locals 1

    .line 519
    iget v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mCurCandIndex:I

    invoke-direct {p0, v0}, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->getCandidateCellAt(I)Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel$CandidateCell;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected init(Lcom/metamoji/mazec/MazecIms;)V
    .locals 1

    .line 154
    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 155
    const-string v0, "dimen.cnv_candates_bar_h"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mPrefHeight:I

    const/high16 v0, -0x1000000

    .line 157
    iput v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mTextColorNormal:I

    const v0, -0xffff01

    .line 158
    iput v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mTextColorCorrection:I

    .line 159
    const-string v0, "dimen.cnv_candates_bar_text_size"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mTextSize:F

    .line 160
    const-string v0, "dimen.cnv_candates_bar_text_padding"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mTextPadding:I

    .line 162
    const-string v0, "color.cnv_candidates_bar_back_normal"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mBkColorNormal:I

    .line 163
    const-string v0, "color.cnv_candidates_bar_back_touched"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mBkColorTouched:I

    .line 164
    const-string v0, "color.cnv_candidates_bar_back_shadow"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mShadowColor:I

    .line 165
    const-string v0, "color.cnv_candidates_bar_border_dark"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mBorderColor1:I

    .line 166
    const-string v0, "color.cnv_candidates_bar_border_light"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mBorderColor2:I

    const/4 v0, 0x0

    .line 167
    iput v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mBorderMargin:I

    .line 169
    const-string v0, "color.cnv_candidates_bar_cur_line"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mCurLineColor:I

    .line 170
    const-string v0, "dimen.cnv_candates_bar_cur_line_height"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mCurLineHeight:I

    .line 172
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    const/4 v0, 0x1

    .line 173
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 174
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setDither(Z)V

    const/high16 v0, 0x40000000    # 2.0f

    .line 175
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 176
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 177
    iget v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mTextSize:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 179
    iput-object p1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mPaint:Landroid/graphics/Paint;

    .line 180
    new-instance p1, Landroid/text/TextPaint;

    iget-object v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object p1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mTextPaint:Landroid/text/TextPaint;

    return-void
.end method

.method public layoutCandidates()V
    .locals 1

    const/4 v0, -0x1

    .line 235
    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->layoutCandidatesInWidth(I)I

    return-void
.end method

.method public layoutCandidatesInWidth(I)I
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 245
    iget-object v2, v0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mCandidatesLayout:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 246
    iget v3, v0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mCandsCount:I

    const/4 v4, 0x0

    if-ge v2, v3, :cond_6

    .line 247
    iget-object v3, v0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mPaint:Landroid/graphics/Paint;

    .line 248
    sget-object v5, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 251
    iget v5, v0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mTextPadding:I

    mul-int/lit8 v6, v5, 0x2

    if-lez v2, :cond_0

    .line 254
    iget-object v7, v0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mCandidatesLayout:Ljava/util/ArrayList;

    add-int/lit8 v8, v2, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel$CandidateCell;

    .line 255
    iget v7, v7, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel$CandidateCell;->right:I

    add-int/lit8 v7, v7, 0x4

    goto :goto_0

    :cond_0
    move v7, v4

    .line 258
    :goto_0
    iget v8, v0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mCandsCount:I

    if-ge v2, v8, :cond_5

    .line 259
    iget-object v8, v0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mCandidates:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/metamoji/mazec/converter/MmjiWord;

    .line 260
    invoke-virtual {v8}, Lcom/metamoji/mazec/converter/MmjiWord;->getCandidate()Ljava/lang/String;

    move-result-object v10

    .line 261
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v9

    .line 263
    invoke-static {v10}, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->includeEmoji(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 264
    iget-object v12, v0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {v10, v12}, Landroid/text/StaticLayout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v12

    goto :goto_1

    :cond_1
    invoke-virtual {v3, v10, v4, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v12

    :goto_1
    float-to-double v12, v12

    .line 266
    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v12, v12

    add-int/2addr v12, v6

    const/4 v13, 0x1

    if-ne v9, v13, :cond_2

    add-int/2addr v12, v5

    .line 271
    :cond_2
    new-instance v9, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel$CandidateCell;

    const/4 v13, 0x0

    invoke-direct {v9, v13}, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel$CandidateCell;-><init>(Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel-IA;)V

    .line 272
    iput v7, v9, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel$CandidateCell;->left:I

    add-int/2addr v7, v12

    .line 273
    iput v7, v9, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel$CandidateCell;->right:I

    .line 274
    iput-object v8, v9, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel$CandidateCell;->word:Lcom/metamoji/mazec/converter/MmjiWord;

    if-eqz v11, :cond_3

    .line 276
    new-instance v8, Landroid/text/StaticLayout;

    iget-object v11, v0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mTextPaint:Landroid/text/TextPaint;

    iget v12, v9, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel$CandidateCell;->right:I

    iget v13, v9, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel$CandidateCell;->left:I

    sub-int/2addr v12, v13

    sget-object v13, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    move-object/from16 v17, v9

    move-object v9, v8

    move-object/from16 v8, v17

    invoke-direct/range {v9 .. v16}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v9, v8, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel$CandidateCell;->layout:Landroid/text/Layout;

    goto :goto_2

    :cond_3
    move-object v8, v9

    .line 278
    :goto_2
    iget-object v9, v0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mCandidatesLayout:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-lez v1, :cond_4

    if-ge v1, v7, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v7, v7, 0x4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 286
    :cond_5
    :goto_3
    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->requestLayout()V

    .line 287
    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->invalidate()V

    return v7

    :cond_6
    return v4
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 407
    iget-object v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mWorkRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 409
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->getWidth()I

    move-result v0

    .line 410
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->getHeight()I

    move-result v1

    .line 412
    iget-object v7, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mPaint:Landroid/graphics/Paint;

    .line 414
    iget v2, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mBkColorNormal:I

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    const/high16 v2, 0x3fc00000    # 1.5f

    .line 416
    iget v3, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mShadowColor:I

    invoke-virtual {v7, v2, v2, v2, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 417
    iget v2, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mBkColorNormal:I

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v5, v0

    add-int/lit8 v8, v1, -0x2

    int-to-float v6, v8

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    .line 418
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 419
    invoke-virtual {v7}, Landroid/graphics/Paint;->clearShadowLayer()V

    .line 421
    sget-object p1, Lcom/metamoji/mazec/BuildConfig;->DEVICE_VENDOR:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    sget-object v0, Lcom/metamoji/mazec/BuildOption$DeviceVendor;->SAMSUNG:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    if-ne p1, v0, :cond_0

    .line 422
    iget p1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mHiliteColor:I

    invoke-virtual {v7, p1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v4, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 423
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 426
    :cond_0
    iget p1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mCandsCount:I

    if-gtz p1, :cond_1

    move-object p1, p0

    goto/16 :goto_4

    .line 430
    :cond_1
    iget-boolean p1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mTouchedCellOn:Z

    if-eqz p1, :cond_2

    .line 431
    iget p1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mTouchedCellIndex:I

    invoke-direct {p0, p1}, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->getCandidateCellAt(I)Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel$CandidateCell;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 433
    iget v5, p1, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel$CandidateCell;->left:I

    const/4 v6, 0x0

    iget p1, p1, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel$CandidateCell;->right:I

    move-object v3, v2

    move-object v4, v7

    move-object v2, p0

    move v7, p1

    invoke-virtual/range {v2 .. v8}, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->drawTouchedCandidateBack(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    move-object v7, v4

    goto :goto_0

    :cond_2
    move-object v3, v2

    move-object v2, p0

    .line 437
    :goto_0
    iget p1, v2, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mCurCandIndex:I

    invoke-direct {p0, p1}, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->getCandidateCellAt(I)Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel$CandidateCell;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 439
    iget v5, p1, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel$CandidateCell;->left:I

    const/4 v6, 0x0

    iget p1, p1, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel$CandidateCell;->right:I

    move-object v4, v7

    move v7, p1

    invoke-virtual/range {v2 .. v8}, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->drawCurrentCandidateBack(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    move-object v7, v4

    :cond_3
    move-object p1, v2

    move-object v2, v3

    .line 442
    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 445
    invoke-virtual {v7}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    int-to-float v3, v1

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v3, v9

    .line 446
    iget v4, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v4, v0

    div-float/2addr v4, v9

    sub-float/2addr v3, v4

    .line 447
    iget v0, p1, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mBorderMargin:I

    int-to-float v10, v0

    sub-int/2addr v8, v0

    int-to-float v0, v8

    .line 448
    invoke-direct {p0}, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->getCandidateCells()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_4
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel$CandidateCell;

    .line 449
    iget v5, v4, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel$CandidateCell;->right:I

    iget-object v6, p1, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mWorkRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    if-lt v5, v6, :cond_4

    iget-object v5, p1, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mWorkRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget v6, v4, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel$CandidateCell;->left:I

    if-ge v5, v6, :cond_5

    goto :goto_1

    .line 453
    :cond_5
    iget-object v5, v4, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel$CandidateCell;->word:Lcom/metamoji/mazec/converter/MmjiWord;

    invoke-virtual {v5}, Lcom/metamoji/mazec/converter/MmjiWord;->getCandidate()Ljava/lang/String;

    move-result-object v5

    .line 454
    iget v12, v4, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel$CandidateCell;->right:I

    .line 455
    iget-object v6, v4, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel$CandidateCell;->layout:Landroid/text/Layout;

    if-eqz v6, :cond_6

    .line 457
    sget-object v5, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v7, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 458
    iget v5, p1, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mTextColorNormal:I

    invoke-virtual {v7, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 459
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 460
    iget v5, v4, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel$CandidateCell;->left:I

    int-to-float v5, v5

    iget-object v6, v4, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel$CandidateCell;->layout:Landroid/text/Layout;

    invoke-virtual {v6}, Landroid/text/Layout;->getHeight()I

    move-result v6

    sub-int v6, v1, v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 461
    iget-object v4, v4, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel$CandidateCell;->layout:Landroid/text/Layout;

    invoke-virtual {v4, v2}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 462
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 463
    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    move v8, v3

    goto :goto_3

    .line 466
    :cond_6
    iget-object v6, v4, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel$CandidateCell;->word:Lcom/metamoji/mazec/converter/MmjiWord;

    invoke-virtual {v6}, Lcom/metamoji/mazec/converter/MmjiWord;->getWordType()I

    move-result v6

    const/4 v8, 0x5

    if-ne v6, v8, :cond_7

    iget v6, p1, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mTextColorCorrection:I

    goto :goto_2

    :cond_7
    iget v6, p1, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mTextColorNormal:I

    :goto_2
    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setColor(I)V

    move-object v8, v7

    move v7, v3

    move-object v3, v5

    .line 467
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    iget v4, v4, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel$CandidateCell;->left:I

    add-int/2addr v4, v12

    int-to-float v4, v4

    div-float v6, v4, v9

    const/4 v4, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    move-object v13, v8

    move v8, v7

    move-object v7, v13

    :goto_3
    int-to-float v12, v12

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v3, v12

    .line 471
    iget v4, p1, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mBorderColor1:I

    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setColor(I)V

    move v5, v3

    move v6, v0

    move v4, v10

    .line 472
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v0, 0x40200000    # 2.5f

    add-float v3, v12, v0

    .line 474
    iget v0, p1, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mBorderColor2:I

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setColor(I)V

    move v5, v3

    .line 475
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v0, v6

    move v3, v8

    goto/16 :goto_1

    :cond_8
    :goto_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 584
    iget v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mPrefHeight:I

    .line 585
    iget-object v1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mCandidatesLayout:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 587
    iget-object v2, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mCandidatesLayout:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel$CandidateCell;

    .line 588
    iget v1, v1, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel$CandidateCell;->right:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 590
    :goto_0
    invoke-static {v1, p1}, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->resolveSize(II)I

    move-result p1

    invoke-static {v0, p2}, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->resolveSize(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 297
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->notifyInputViewTouched()V

    .line 299
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

    .line 314
    :cond_0
    invoke-direct {p0, p1}, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->onTouchCancel(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 310
    :cond_1
    invoke-direct {p0, p1}, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->onTouchMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 306
    :cond_2
    invoke-direct {p0, p1}, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->onTouchEnd(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 302
    :cond_3
    invoke-direct {p0, p1}, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->onTouchStart(Landroid/view/MotionEvent;)V

    :goto_0
    return v1
.end method

.method public resetCurrentCandidate()V
    .locals 1

    .line 543
    iget v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mCurCandIndex:I

    if-lez v0, :cond_0

    .line 544
    invoke-direct {p0, v0}, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->invalidateCellAt(I)V

    const/4 v0, -0x1

    .line 545
    iput v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mCurCandIndex:I

    :cond_0
    return-void
.end method

.method public setCnvResult(Lcom/metamoji/mazec/converter/ConvertResult;[II)I
    .locals 1

    .line 190
    invoke-direct {p0}, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->clearCandidatesLayout()V

    .line 192
    iput-object p1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mConvResult:Lcom/metamoji/mazec/converter/ConvertResult;

    .line 193
    iput-object p2, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mListType:[I

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 195
    invoke-virtual {p1, p2}, Lcom/metamoji/mazec/converter/ConvertResult;->getCandidates([I)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mCandidates:Ljava/util/List;

    .line 196
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mCandsCount:I

    .line 198
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object p1

    .line 199
    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->isInReedit()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->getHwrResult()Lcom/metamoji/mazec/recognizer/HwRecognitionResult;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 200
    iput v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mCurCandIndex:I

    goto :goto_0

    .line 203
    :cond_0
    iput v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mCandsCount:I

    const/4 p1, 0x0

    .line 204
    iput-object p1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mCandidates:Ljava/util/List;

    .line 207
    :cond_1
    :goto_0
    invoke-virtual {p0, p3}, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->layoutCandidatesInWidth(I)I

    move-result p1

    return p1
.end method

.method public setCurrentCandidateToNext()V
    .locals 2

    .line 527
    iget v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mCandsCount:I

    if-lez v0, :cond_1

    .line 528
    iget v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mCurCandIndex:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 529
    iput v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mCurCandIndex:I

    goto :goto_0

    .line 531
    :cond_0
    invoke-direct {p0, v0}, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->invalidateCellAt(I)V

    .line 532
    iget v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mCurCandIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mCurCandIndex:I

    .line 533
    iget v1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mCandsCount:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mCurCandIndex:I

    .line 535
    :goto_0
    iget v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mCurCandIndex:I

    invoke-direct {p0, v0}, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->invalidateCellAt(I)V

    .line 536
    iget-object v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mListener:Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel$Listener;

    if-eqz v0, :cond_1

    .line 537
    iget v1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mCurCandIndex:I

    invoke-interface {v0, v1}, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel$Listener;->onCurrentCandidateChanged(I)V

    :cond_1
    return-void
.end method

.method public setListener(Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel$Listener;)V
    .locals 0

    .line 493
    iput-object p1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel;->mListener:Lcom/metamoji/mazec/ui/CnvCandidatesBarPanel$Listener;

    return-void
.end method
