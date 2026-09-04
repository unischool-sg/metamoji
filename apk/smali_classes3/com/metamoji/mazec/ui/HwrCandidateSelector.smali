.class public Lcom/metamoji/mazec/ui/HwrCandidateSelector;
.super Ljava/lang/Object;
.source "HwrCandidateSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/mazec/ui/HwrCandidateSelector$OnClickListener;
    }
.end annotation


# static fields
.field public static final CONTAINS_LOWER:I = 0x2

.field public static final CONTAINS_NONE:I = 0x0

.field public static final CONTAINS_UPPER:I = 0x1

.field private static mAllImgHeight:I = 0x0

.field private static mAllImgWidth:I = 0x0

.field private static mBlockUnderlineHeight:F = 0.0f

.field private static mClearStrokesButtonHeight:F = 0.0f

.field private static mClearStrokesButtonWidth:F = 0.0f

.field private static mClickSensitivity:F = 0.0f

.field private static mColorBlockUnderline:I = 0x0

.field private static mColorTouched:I = 0x0

.field private static mEnableClearButton:Z = false

.field private static mEnableUpperPart:Z = false

.field private static mImgAllHwrCandidates:Landroid/graphics/drawable/NinePatchDrawable;

.field private static mImgAllHwrCandidatesAlphabet:Landroid/graphics/drawable/NinePatchDrawable;

.field private static mImgAllHwrCandidatesAlphabetJa:Landroid/graphics/drawable/NinePatchDrawable;

.field private static mImgAllHwrCandidatesButton:Landroid/graphics/Bitmap;

.field private static mImgAllHwrCandidatesHiragana:Landroid/graphics/drawable/NinePatchDrawable;

.field private static mImgAllHwrCandidatesKanji:Landroid/graphics/drawable/NinePatchDrawable;

.field private static mImgAllHwrCandidatesKatakana:Landroid/graphics/drawable/NinePatchDrawable;

.field private static mImgAllHwrCandidatesNumber:Landroid/graphics/drawable/NinePatchDrawable;

.field private static mImgAllHwrCandidatesSymbol:Landroid/graphics/drawable/NinePatchDrawable;

.field private static mImgAllHwrCandidatesUnlearned:Landroid/graphics/drawable/NinePatchDrawable;

.field private static mImgCandidatesArrow:Landroid/graphics/drawable/Drawable;

.field private static mImgClearStrokesButton:Landroid/graphics/Bitmap;

.field private static mImgRestHwrCandidates:Landroid/graphics/Bitmap;

.field private static mLang:Ljava/lang/String;

.field private static mRectPadding:I

.field private static mRectSize:I

.field private static mRestImgHeight:I

.field private static mRestImgWidth:I

.field private static mShadowColor:I

.field private static mTextSize:F


# instance fields
.field private mBlockLeft:F

.field private mBlockRight:F

.field private mBottom:F

.field private mButtonBottom:F

.field private mButtonLeft:F

.field private mButtonRight:F

.field private mButtonTop:F

.field private mCandIndex:I

.field private mCategories:[I

.field private mCount:I

.field private mHwCandidates:Lcom/metamoji/mazec/recognizer/HwCandidates;

.field private mLeft:F

.field private mOnClickListener:Lcom/metamoji/mazec/ui/HwrCandidateSelector$OnClickListener;

.field private mPaintForTextMeasure:Landroid/graphics/Paint;

.field private mRight:F

.field private mTexts:[Ljava/lang/String;

.field private mTop:F

.field private mUnitSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    sget-object v0, Lcom/metamoji/mazec/MazecConfig;->DEFAULT_LANG:Ljava/lang/String;

    sput-object v0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mLang:Ljava/lang/String;

    const/4 v0, 0x1

    .line 41
    sput-boolean v0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mEnableClearButton:Z

    const/4 v0, 0x0

    .line 44
    sput-object v0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mImgRestHwrCandidates:Landroid/graphics/Bitmap;

    .line 49
    sput-object v0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mImgAllHwrCandidatesButton:Landroid/graphics/Bitmap;

    .line 50
    sput-object v0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mImgAllHwrCandidatesSymbol:Landroid/graphics/drawable/NinePatchDrawable;

    .line 51
    sput-object v0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mImgAllHwrCandidatesNumber:Landroid/graphics/drawable/NinePatchDrawable;

    .line 52
    sput-object v0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mImgAllHwrCandidatesAlphabet:Landroid/graphics/drawable/NinePatchDrawable;

    .line 53
    sput-object v0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mImgAllHwrCandidatesAlphabetJa:Landroid/graphics/drawable/NinePatchDrawable;

    .line 54
    sput-object v0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mImgAllHwrCandidatesKatakana:Landroid/graphics/drawable/NinePatchDrawable;

    .line 55
    sput-object v0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mImgAllHwrCandidatesHiragana:Landroid/graphics/drawable/NinePatchDrawable;

    .line 56
    sput-object v0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mImgAllHwrCandidatesKanji:Landroid/graphics/drawable/NinePatchDrawable;

    .line 57
    sput-object v0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mImgAllHwrCandidatesUnlearned:Landroid/graphics/drawable/NinePatchDrawable;

    .line 58
    sput-object v0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mImgAllHwrCandidates:Landroid/graphics/drawable/NinePatchDrawable;

    .line 59
    sput-object v0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mImgCandidatesArrow:Landroid/graphics/drawable/Drawable;

    .line 65
    sput-object v0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mImgClearStrokesButton:Landroid/graphics/Bitmap;

    const/16 v0, 0x88

    .line 72
    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mShadowColor:I

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/mazec/recognizer/HwCandidates;I)V
    .locals 2

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mOnClickListener:Lcom/metamoji/mazec/ui/HwrCandidateSelector$OnClickListener;

    .line 95
    iput-object v0, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mTexts:[Ljava/lang/String;

    .line 96
    iput-object v0, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mCategories:[I

    const/4 v1, 0x0

    .line 98
    iput v1, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mCount:I

    .line 100
    iput v1, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mUnitSize:I

    .line 102
    iput-object v0, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mPaintForTextMeasure:Landroid/graphics/Paint;

    .line 208
    iput-object p1, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mHwCandidates:Lcom/metamoji/mazec/recognizer/HwCandidates;

    .line 209
    iput p2, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mCandIndex:I

    return-void
.end method

.method public static calcSelectorPositions(Ljava/util/List;ILcom/metamoji/mazec/stroke/HwStrokes;FLcom/metamoji/mazec/ui/HwrCandidateSelector$OnClickListener;Ljava/util/List;FFLandroid/graphics/Paint;)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/recognizer/HwCandidates;",
            ">;I",
            "Lcom/metamoji/mazec/stroke/HwStrokes;",
            "F",
            "Lcom/metamoji/mazec/ui/HwrCandidateSelector$OnClickListener;",
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/ui/HwrCandidateSelector;",
            ">;FF",
            "Landroid/graphics/Paint;",
            ")V"
        }
    .end annotation

    .line 583
    sget-boolean v0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mEnableUpperPart:Z

    if-nez v0, :cond_0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v4, p6

    move/from16 v5, p7

    .line 584
    invoke-static/range {v0 .. v7}, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->calcSelectorPositionsLowerOnly(Ljava/util/List;ILcom/metamoji/mazec/stroke/HwStrokes;FFFLcom/metamoji/mazec/ui/HwrCandidateSelector$OnClickListener;Ljava/util/List;)V

    return-void

    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p5

    .line 588
    invoke-interface {v11}, Ljava/util/List;->clear()V

    .line 590
    sget v12, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mRectSize:I

    .line 591
    sget v13, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mRectPadding:I

    int-to-float v14, v12

    const/high16 v1, 0x40400000    # 3.0f

    div-float v5, v14, v1

    const/4 v15, 0x0

    add-float v1, v14, v15

    const/high16 v16, 0x40000000    # 2.0f

    add-float v2, v1, v16

    .line 600
    sget-object v3, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mLang:Ljava/lang/String;

    move/from16 v9, p1

    invoke-static {v0, v9, v3}, Lcom/metamoji/mazec/ui/HwrCandidatesView;->getCategory(Ljava/util/List;ILjava/lang/String;)[I

    move-result-object v17

    .line 602
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v3, :cond_10

    .line 605
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/metamoji/mazec/recognizer/HwCandidates;

    .line 606
    invoke-virtual {v7}, Lcom/metamoji/mazec/recognizer/HwCandidates;->getCount()I

    move-result v8

    move/from16 v18, v12

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v8, :cond_3

    .line 611
    invoke-virtual {v7, v15}, Lcom/metamoji/mazec/recognizer/HwCandidates;->getCandidateAt(I)Lcom/metamoji/mazec/recognizer/HwCandidate;

    move-result-object v4

    iget-object v4, v4, Lcom/metamoji/mazec/recognizer/HwCandidate;->text:Ljava/lang/String;

    move/from16 v21, v1

    .line 612
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    move/from16 v22, v2

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    move-object/from16 v2, p8

    move/from16 v19, v3

    const/4 v3, 0x0

    .line 614
    invoke-virtual {v2, v4, v3, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v1

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v1, v3

    mul-int/lit8 v3, v13, 0x2

    add-int/2addr v1, v3

    move/from16 v3, v18

    if-le v1, v3, :cond_2

    move/from16 v18, v1

    goto :goto_2

    :cond_1
    move-object/from16 v2, p8

    move/from16 v19, v3

    move/from16 v3, v18

    :cond_2
    move/from16 v18, v3

    :goto_2
    add-int/lit8 v15, v15, 0x1

    move/from16 v3, v19

    move/from16 v1, v21

    move/from16 v2, v22

    goto :goto_1

    :cond_3
    move/from16 v21, v1

    move/from16 v22, v2

    move/from16 v19, v3

    move/from16 v3, v18

    const/4 v2, 0x1

    add-int v18, v3, v13

    .line 624
    invoke-virtual {v7, v10}, Lcom/metamoji/mazec/recognizer/HwCandidates;->getTargetStrokes(Lcom/metamoji/mazec/stroke/HwStrokes;)Lcom/metamoji/mazec/stroke/HwStrokes;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/mazec/stroke/HwStrokes;->innerBounds()Landroid/graphics/RectF;

    move-result-object v15

    add-int/lit8 v3, v19, -0x1

    if-ge v6, v3, :cond_4

    add-int/lit8 v1, v6, 0x1

    .line 630
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/mazec/recognizer/HwCandidates;

    invoke-virtual {v1, v10}, Lcom/metamoji/mazec/recognizer/HwCandidates;->getTargetStrokes(Lcom/metamoji/mazec/stroke/HwStrokes;)Lcom/metamoji/mazec/stroke/HwStrokes;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/mazec/stroke/HwStrokes;->innerBounds()Landroid/graphics/RectF;

    move-result-object v1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    .line 634
    :goto_3
    iget v4, v15, Landroid/graphics/RectF;->right:F

    if-ge v6, v3, :cond_5

    .line 636
    iget v1, v1, Landroid/graphics/RectF;->left:F

    cmpg-float v23, v1, v4

    if-gez v23, :cond_5

    move v4, v1

    .line 643
    :cond_5
    iget v1, v15, Landroid/graphics/RectF;->left:F

    sub-float v1, v4, v1

    float-to-int v1, v1

    div-int v1, v1, v18

    const/16 v2, 0x8

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v1, v8, :cond_6

    .line 646
    iget v1, v15, Landroid/graphics/RectF;->left:F

    sub-float v1, v4, v1

    sget v2, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mRestImgWidth:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    int-to-float v2, v13

    sub-float/2addr v1, v2

    float-to-int v1, v1

    div-int v1, v1, v18

    const/16 v2, 0x8

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_4

    :cond_6
    move v1, v8

    :goto_4
    const/4 v2, 0x2

    if-ge v1, v2, :cond_c

    if-ge v1, v8, :cond_c

    .line 656
    invoke-virtual {v15}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v1, v1

    div-int v1, v1, v18

    const/16 v2, 0x8

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v1, v8, :cond_7

    .line 659
    invoke-virtual {v15}, Landroid/graphics/RectF;->width()F

    move-result v1

    sget v2, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mRestImgWidth:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    int-to-float v2, v13

    sub-float/2addr v1, v2

    float-to-int v1, v1

    div-int v1, v1, v18

    const/16 v2, 0x8

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_7
    const/4 v2, 0x2

    if-ge v1, v2, :cond_a

    if-eq v6, v3, :cond_9

    .line 664
    iget v1, v15, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v1

    sget v1, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mRestImgWidth:I

    int-to-float v1, v1

    sub-float/2addr v4, v1

    int-to-float v1, v13

    sub-float/2addr v4, v1

    float-to-int v1, v4

    div-int v1, v1, v18

    if-lt v1, v2, :cond_8

    goto :goto_5

    :cond_8
    const/4 v4, 0x1

    goto :goto_6

    :cond_9
    :goto_5
    move v4, v2

    goto :goto_6

    :cond_a
    move v4, v1

    :goto_6
    if-ge v8, v4, :cond_b

    move v2, v8

    goto :goto_7

    :cond_b
    move v2, v4

    goto :goto_7

    :cond_c
    move v2, v1

    :goto_7
    mul-int v1, v2, v18

    int-to-float v1, v1

    if-ge v2, v8, :cond_d

    .line 679
    sget v3, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mRestImgWidth:I

    add-int/2addr v3, v13

    int-to-float v3, v3

    add-float/2addr v1, v3

    .line 682
    :cond_d
    new-instance v3, Lcom/metamoji/mazec/ui/HwrCandidateSelector;

    invoke-direct {v3, v7, v6}, Lcom/metamoji/mazec/ui/HwrCandidateSelector;-><init>(Lcom/metamoji/mazec/recognizer/HwCandidates;I)V

    sub-int v18, v18, v13

    .line 683
    iget v4, v15, Landroid/graphics/RectF;->left:F

    iget v7, v15, Landroid/graphics/RectF;->left:F

    add-float/2addr v7, v1

    move v1, v6

    move v6, v7

    add-float v7, v5, v14

    if-nez v1, :cond_e

    const/4 v8, -0x1

    goto :goto_8

    :cond_e
    add-int/lit8 v8, v1, -0x1

    aget v8, v17, v8

    :goto_8
    move/from16 v20, v1

    move-object v1, v3

    move/from16 v3, v18

    move/from16 v0, v21

    move/from16 v10, v22

    move/from16 v18, v12

    move/from16 v12, v19

    const/16 v19, 0x0

    invoke-virtual/range {v1 .. v9}, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->initUpperPart(IIFFFFII)V

    move v9, v5

    .line 685
    iget v5, v15, Landroid/graphics/RectF;->left:F

    iget v6, v15, Landroid/graphics/RectF;->top:F

    iget v7, v15, Landroid/graphics/RectF;->right:F

    iget v8, v15, Landroid/graphics/RectF;->bottom:F

    move/from16 v2, p3

    move/from16 v3, p6

    move/from16 v4, p7

    invoke-virtual/range {v1 .. v8}, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->initLowerPart(FFFFFFF)V

    .line 688
    iget v2, v1, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mRight:F

    iget v3, v1, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mLeft:F

    sub-float/2addr v2, v3

    .line 689
    invoke-virtual {v15}, Landroid/graphics/RectF;->width()F

    move-result v3

    cmpg-float v4, v2, v3

    if-gez v4, :cond_f

    sub-float/2addr v3, v2

    div-float v3, v3, v16

    .line 692
    iget v2, v1, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mLeft:F

    add-float/2addr v2, v3

    iput v2, v1, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mLeft:F

    .line 693
    iget v2, v1, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mRight:F

    add-float/2addr v2, v3

    iput v2, v1, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mRight:F

    :cond_f
    move-object/from16 v6, p4

    .line 697
    invoke-virtual {v1, v6}, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->setOnClickListener(Lcom/metamoji/mazec/ui/HwrCandidateSelector$OnClickListener;)V

    .line 698
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v20, 0x1

    move v6, v1

    move v5, v9

    move v2, v10

    move v3, v12

    move/from16 v12, v18

    const/4 v15, 0x0

    move/from16 v9, p1

    move-object/from16 v10, p2

    move v1, v0

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_10
    move v0, v1

    move v10, v2

    move v12, v3

    const/16 v19, 0x0

    move/from16 v4, v19

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_9
    if-ge v4, v12, :cond_19

    .line 710
    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/mazec/ui/HwrCandidateSelector;

    .line 711
    iget v5, v3, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mLeft:F

    cmpg-float v6, v1, v5

    if-gtz v6, :cond_14

    cmpg-float v6, v2, v5

    if-gtz v6, :cond_14

    add-int/lit8 v5, v12, -0x1

    if-ge v4, v5, :cond_13

    add-int/lit8 v5, v4, 0x1

    .line 714
    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/mazec/ui/HwrCandidateSelector;

    .line 715
    iget v6, v3, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mRight:F

    iget v5, v5, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mLeft:F

    cmpg-float v5, v6, v5

    if-gtz v5, :cond_12

    cmpg-float v3, v1, v6

    if-gez v3, :cond_11

    move v1, v6

    :cond_11
    cmpg-float v3, v2, v6

    if-gez v3, :cond_13

    move v2, v6

    goto :goto_a

    :cond_12
    const/4 v5, 0x0

    .line 726
    iput v5, v3, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mTop:F

    .line 727
    iput v0, v3, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mBottom:F

    cmpg-float v3, v1, v6

    if-gez v3, :cond_13

    move v1, v6

    :cond_13
    :goto_a
    const/4 v6, 0x0

    goto :goto_b

    :cond_14
    cmpg-float v6, v1, v2

    if-gez v6, :cond_16

    const/4 v6, 0x0

    .line 737
    iput v6, v3, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mTop:F

    .line 738
    iput v0, v3, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mBottom:F

    cmpg-float v7, v5, v1

    if-gez v7, :cond_15

    .line 740
    iget v7, v3, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mRight:F

    sub-float v5, v1, v5

    add-float/2addr v7, v5

    iput v7, v3, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mRight:F

    .line 741
    iput v1, v3, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mLeft:F

    .line 743
    :cond_15
    iget v3, v3, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mRight:F

    cmpg-float v5, v1, v3

    if-gez v5, :cond_18

    move v1, v3

    goto :goto_b

    :cond_16
    const/4 v6, 0x0

    .line 748
    iput v10, v3, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mTop:F

    add-float v7, v10, v14

    .line 749
    iput v7, v3, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mBottom:F

    cmpg-float v7, v5, v2

    if-gez v7, :cond_17

    .line 751
    iget v7, v3, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mRight:F

    sub-float v5, v2, v5

    add-float/2addr v7, v5

    iput v7, v3, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mRight:F

    .line 752
    iput v2, v3, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mLeft:F

    .line 754
    :cond_17
    iget v3, v3, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mRight:F

    cmpg-float v5, v2, v3

    if-gez v5, :cond_18

    move v2, v3

    :cond_18
    :goto_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_19
    return-void
.end method

.method private static calcSelectorPositionsLowerOnly(Ljava/util/List;ILcom/metamoji/mazec/stroke/HwStrokes;FFFLcom/metamoji/mazec/ui/HwrCandidateSelector$OnClickListener;Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/recognizer/HwCandidates;",
            ">;I",
            "Lcom/metamoji/mazec/stroke/HwStrokes;",
            "FFF",
            "Lcom/metamoji/mazec/ui/HwrCandidateSelector$OnClickListener;",
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/ui/HwrCandidateSelector;",
            ">;)V"
        }
    .end annotation

    .line 946
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->clear()V

    .line 947
    sget-object v0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mLang:Ljava/lang/String;

    move v10, p1

    invoke-static {p0, p1, v0}, Lcom/metamoji/mazec/ui/HwrCandidatesView;->getCategory(Ljava/util/List;ILjava/lang/String;)[I

    move-result-object v0

    .line 948
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v11

    const/4 v1, 0x0

    move v12, v1

    :goto_0
    if-ge v12, v11, :cond_2

    .line 951
    invoke-interface {p0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/mazec/recognizer/HwCandidates;

    move-object/from16 v13, p2

    .line 955
    invoke-virtual {v1, v13}, Lcom/metamoji/mazec/recognizer/HwCandidates;->getTargetStrokes(Lcom/metamoji/mazec/stroke/HwStrokes;)Lcom/metamoji/mazec/stroke/HwStrokes;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_2

    .line 959
    :cond_0
    invoke-virtual {v2}, Lcom/metamoji/mazec/stroke/HwStrokes;->innerBounds()Landroid/graphics/RectF;

    move-result-object v2

    .line 961
    new-instance v3, Lcom/metamoji/mazec/ui/HwrCandidateSelector;

    invoke-direct {v3, v1, v12}, Lcom/metamoji/mazec/ui/HwrCandidateSelector;-><init>(Lcom/metamoji/mazec/recognizer/HwCandidates;I)V

    .line 962
    iget v5, v2, Landroid/graphics/RectF;->left:F

    iget v6, v2, Landroid/graphics/RectF;->top:F

    iget v7, v2, Landroid/graphics/RectF;->right:F

    iget v8, v2, Landroid/graphics/RectF;->bottom:F

    if-nez v12, :cond_1

    const/4 v1, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v12, -0x1

    aget v1, v0, v1

    :goto_1
    move/from16 v2, p3

    move/from16 v4, p5

    move v9, v1

    move-object v1, v3

    move/from16 v3, p4

    invoke-direct/range {v1 .. v10}, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->initLowerPartLowerOnly(FFFFFFFII)V

    move-object v2, v1

    move-object/from16 v1, p6

    .line 964
    invoke-virtual {v2, v1}, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->setOnClickListener(Lcom/metamoji/mazec/ui/HwrCandidateSelector$OnClickListener;)V

    move-object/from16 v3, p7

    .line 965
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    move v10, p1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public static draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;Ljava/util/List;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Paint;",
            "Landroid/graphics/Paint;",
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/ui/HwrCandidateSelector;",
            ">;I)V"
        }
    .end annotation

    .line 974
    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 975
    sget v0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mTextSize:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 977
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 979
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/mazec/ui/HwrCandidateSelector;

    if-ne v2, p4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    invoke-virtual {v3, p0, p1, p2, v4}, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static enableUpperPart()Z
    .locals 1

    .line 199
    sget-boolean v0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mEnableUpperPart:Z

    return v0
.end method

.method static init()V
    .locals 7

    .line 109
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->getPrefs()Lcom/metamoji/mazec/MazecPreferences;

    move-result-object v1

    iget-boolean v1, v1, Lcom/metamoji/mazec/MazecPreferences;->showCnvCandidates:Z

    sput-boolean v1, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mEnableUpperPart:Z

    .line 113
    sget-object v1, Lcom/metamoji/mazec/BuildConfig;->DEVICE_VENDOR:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    sget-object v2, Lcom/metamoji/mazec/BuildOption$DeviceVendor;->SAMSUNG:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    if-ne v1, v2, :cond_0

    .line 114
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x0

    .line 115
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 118
    :goto_0
    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 120
    sget-object v2, Lcom/metamoji/mazec/BuildOption;->DEVICE_TYPE:Lcom/metamoji/mazec/BuildOption$DeviceType;

    sget-object v3, Lcom/metamoji/mazec/BuildOption$DeviceType;->SMARTPHONE:Lcom/metamoji/mazec/BuildOption$DeviceType;

    const-string v4, "drawable.show_all_hwr_candidates"

    const-string v5, "drawable.next_candidates_n"

    if-ne v2, v3, :cond_2

    sget-object v2, Lcom/metamoji/mazec/BuildConfig;->DEVICE_NAME:Lcom/metamoji/mazec/BuildOption$DeviceName;

    sget-object v3, Lcom/metamoji/mazec/BuildOption$DeviceName;->NONE:Lcom/metamoji/mazec/BuildOption$DeviceName;

    if-eq v2, v3, :cond_1

    sget-object v2, Lcom/metamoji/mazec/BuildConfig;->DEVICE_NAME:Lcom/metamoji/mazec/BuildOption$DeviceName;

    sget-object v3, Lcom/metamoji/mazec/BuildOption$DeviceName;->KINDLEFIRE:Lcom/metamoji/mazec/BuildOption$DeviceName;

    if-ne v2, v3, :cond_2

    .line 124
    :cond_1
    const-string v2, "dimen.img_w_next_hwr_candidates"

    invoke-static {v2}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mRestImgWidth:I

    .line 125
    const-string v2, "dimen.img_h_next_hwr_candidates"

    invoke-static {v2}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mRestImgHeight:I

    .line 126
    invoke-static {v5}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    sget v3, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mRestImgWidth:I

    sget v5, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mRestImgHeight:I

    const/4 v6, 0x1

    invoke-static {v2, v3, v5, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mImgRestHwrCandidates:Landroid/graphics/Bitmap;

    .line 128
    const-string v2, "dimen.img_w_hwr_candidates"

    invoke-static {v2}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mAllImgWidth:I

    .line 129
    const-string v2, "dimen.img_h_hwr_candidates"

    invoke-static {v2}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mAllImgHeight:I

    .line 131
    const-string v2, "drawable.show_all_hwr_candidates_symbol"

    invoke-static {v2}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/NinePatchDrawable;

    sput-object v2, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mImgAllHwrCandidatesSymbol:Landroid/graphics/drawable/NinePatchDrawable;

    .line 132
    const-string v2, "drawable.show_all_hwr_candidates_number"

    invoke-static {v2}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/NinePatchDrawable;

    sput-object v2, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mImgAllHwrCandidatesNumber:Landroid/graphics/drawable/NinePatchDrawable;

    .line 133
    const-string v2, "drawable.show_all_hwr_candidates_alphabet"

    invoke-static {v2}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/NinePatchDrawable;

    sput-object v2, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mImgAllHwrCandidatesAlphabet:Landroid/graphics/drawable/NinePatchDrawable;

    .line 134
    const-string v2, "drawable.show_all_hwr_candidates_alphabet_ja"

    invoke-static {v2}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/NinePatchDrawable;

    sput-object v2, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mImgAllHwrCandidatesAlphabetJa:Landroid/graphics/drawable/NinePatchDrawable;

    .line 135
    const-string v2, "drawable.show_all_hwr_candidates_katakana"

    invoke-static {v2}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/NinePatchDrawable;

    sput-object v2, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mImgAllHwrCandidatesKatakana:Landroid/graphics/drawable/NinePatchDrawable;

    .line 136
    const-string v2, "drawable.show_all_hwr_candidates_hiragana"

    invoke-static {v2}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/NinePatchDrawable;

    sput-object v2, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mImgAllHwrCandidatesHiragana:Landroid/graphics/drawable/NinePatchDrawable;

    .line 137
    const-string v2, "drawable.show_all_hwr_candidates_kanji"

    invoke-static {v2}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/NinePatchDrawable;

    sput-object v2, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mImgAllHwrCandidatesKanji:Landroid/graphics/drawable/NinePatchDrawable;

    .line 138
    const-string v2, "drawable.show_all_hwr_candidates_unlearned"

    invoke-static {v2}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/NinePatchDrawable;

    sput-object v2, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mImgAllHwrCandidatesUnlearned:Landroid/graphics/drawable/NinePatchDrawable;

    .line 139
    const-string v2, "drawable.show_all_hwr_candidates_other"

    invoke-static {v2}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/NinePatchDrawable;

    sput-object v2, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mImgAllHwrCandidates:Landroid/graphics/drawable/NinePatchDrawable;

    .line 140
    const-string v2, "drawable.show_all_hwr_candidates_arrow"

    invoke-static {v2}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sput-object v2, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mImgCandidatesArrow:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 142
    :cond_2
    invoke-static {v5}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mImgRestHwrCandidates:Landroid/graphics/Bitmap;

    .line 143
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sput v2, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mRestImgWidth:I

    .line 144
    sget-object v2, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mImgRestHwrCandidates:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sput v2, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mRestImgHeight:I

    .line 146
    invoke-static {v4}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mImgAllHwrCandidatesButton:Landroid/graphics/Bitmap;

    .line 147
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sput v2, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mAllImgWidth:I

    .line 148
    sget-object v2, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mImgAllHwrCandidatesButton:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sput v2, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mAllImgHeight:I

    :goto_1
    const/16 v2, 0x80

    .line 151
    invoke-static {v2, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    sput v2, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mColorTouched:I

    .line 153
    const-string v2, "dimen.hwr_list_text_size"

    invoke-static {v2}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    sput v2, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mTextSize:F

    .line 154
    const-string v2, "dimen.hwr_list_rect_size"

    invoke-static {v2}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mRectSize:I

    .line 155
    const-string v2, "dimen.hwr_list_rect_padding"

    invoke-static {v2}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mRectPadding:I

    .line 156
    sget v2, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mAllImgWidth:I

    int-to-float v2, v2

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr v2, v3

    sput v2, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mClickSensitivity:F

    .line 158
    const-string v2, "color.bkcolor_block_underline"

    invoke-static {v2}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sput v2, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mColorBlockUnderline:I

    .line 159
    const-string v2, "dimen.hwr_block_underline_height"

    invoke-static {v2}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    sput v2, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mBlockUnderlineHeight:F

    .line 160
    invoke-static {v4}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mImgAllHwrCandidatesButton:Landroid/graphics/Bitmap;

    .line 161
    const-string v2, "drawable.clear_strokes"

    invoke-static {v2}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mImgClearStrokesButton:Landroid/graphics/Bitmap;

    .line 162
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mClearStrokesButtonWidth:F

    .line 163
    sget-object v0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mImgClearStrokesButton:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mClearStrokesButtonHeight:F

    return-void
.end method

.method private initLowerPartLowerOnly(FFFFFFFII)V
    .locals 3

    .line 387
    iget v0, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mCount:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    if-ge v0, v1, :cond_0

    .line 389
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mTexts:[Ljava/lang/String;

    .line 390
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mCategories:[I

    .line 392
    :cond_0
    iput v1, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mCount:I

    .line 395
    :cond_1
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mTexts:[Ljava/lang/String;

    iget-object v1, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mHwCandidates:Lcom/metamoji/mazec/recognizer/HwCandidates;

    invoke-virtual {v1}, Lcom/metamoji/mazec/recognizer/HwCandidates;->getMostProbableCandidate()Lcom/metamoji/mazec/recognizer/HwCandidate;

    move-result-object v1

    iget-object v1, v1, Lcom/metamoji/mazec/recognizer/HwCandidate;->text:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 397
    invoke-direct {p0, p8, p9}, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->updateCandCategories(II)V

    .line 399
    invoke-virtual/range {p0 .. p7}, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->initLowerPart(FFFFFFF)V

    return-void
.end method

.method public static invalidate(Landroid/view/View;IIF)V
    .locals 6

    .line 991
    sget-boolean v0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mEnableUpperPart:Z

    if-eqz v0, :cond_0

    .line 992
    sget v0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mRectSize:I

    add-int/lit8 v1, v0, 0x2

    add-int/2addr v1, v0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/view/View;->invalidate(IIII)V

    :cond_0
    float-to-double v0, p3

    .line 996
    sget v2, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mAllImgHeight:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    double-to-int v0, v0

    float-to-int p3, p3

    .line 998
    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/view/View;->invalidate(IIII)V

    return-void
.end method

.method public static setLang(Ljava/lang/String;)V
    .locals 0

    .line 191
    sput-object p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mLang:Ljava/lang/String;

    return-void
.end method

.method private updateCandCategories(II)V
    .locals 5

    .line 407
    iget v0, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mCount:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 409
    iget-object v2, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mTexts:[Ljava/lang/String;

    aget-object v2, v2, v1

    .line 410
    iget-object v3, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mCategories:[I

    sget-object v4, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mLang:Ljava/lang/String;

    invoke-static {v2, p2, p1, v4}, Lcom/metamoji/mazec/ui/HwrCandidatesView;->getCategory(Ljava/lang/String;IILjava/lang/String;)I

    move-result v2

    aput v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public click(FF)V
    .locals 4

    .line 551
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->contains(FF)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 555
    :cond_0
    sget-boolean v0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mEnableUpperPart:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mLeft:F

    cmpg-float v2, v0, p1

    if-gtz v2, :cond_2

    iget v2, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mTop:F

    sget v3, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mClickSensitivity:F

    sub-float/2addr v2, v3

    cmpg-float v2, v2, p2

    if-gtz v2, :cond_2

    iget v2, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mRight:F

    cmpg-float v2, p1, v2

    if-gez v2, :cond_2

    iget v2, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mBottom:F

    add-float/2addr v2, v3

    cmpg-float v2, p2, v2

    if-gez v2, :cond_2

    .line 557
    iget-object p2, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mOnClickListener:Lcom/metamoji/mazec/ui/HwrCandidateSelector$OnClickListener;

    if-eqz p2, :cond_3

    sub-float/2addr p1, v0

    .line 558
    iget v0, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mUnitSize:I

    sget v2, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mRectPadding:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    div-float/2addr p1, v0

    float-to-int p1, p1

    .line 559
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mTexts:[Ljava/lang/String;

    array-length v2, v0

    if-ge p1, v2, :cond_1

    aget-object v1, v0, p1

    .line 561
    :cond_1
    iget p1, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mCandIndex:I

    const/4 v0, 0x0

    invoke-interface {p2, p1, v1, v0}, Lcom/metamoji/mazec/ui/HwrCandidateSelector$OnClickListener;->onClick(ILjava/lang/String;Z)V

    return-void

    .line 563
    :cond_2
    iget v0, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mButtonLeft:F

    sget v2, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mClickSensitivity:F

    sub-float/2addr v0, v2

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_3

    iget v0, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mButtonTop:F

    sub-float/2addr v0, v2

    cmpg-float v0, v0, p2

    if-gtz v0, :cond_3

    iget v0, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mButtonRight:F

    add-float/2addr v0, v2

    cmpg-float p1, p1, v0

    if-gez p1, :cond_3

    iget p1, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mButtonBottom:F

    add-float/2addr p1, v2

    cmpg-float p1, p2, p1

    if-gez p1, :cond_3

    .line 566
    iget-object p1, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mOnClickListener:Lcom/metamoji/mazec/ui/HwrCandidateSelector$OnClickListener;

    if-eqz p1, :cond_3

    .line 567
    iget p2, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mCandIndex:I

    sget-boolean v0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mEnableClearButton:Z

    invoke-interface {p1, p2, v1, v0}, Lcom/metamoji/mazec/ui/HwrCandidateSelector$OnClickListener;->onClick(ILjava/lang/String;Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public contains(FF)I
    .locals 2

    .line 217
    sget-boolean v0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mEnableUpperPart:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mLeft:F

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mTop:F

    sget v1, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mClickSensitivity:F

    sub-float/2addr v0, v1

    cmpg-float v0, v0, p2

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mRight:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget v0, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mBottom:F

    add-float/2addr v0, v1

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 219
    :cond_0
    iget v0, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mButtonLeft:F

    sget v1, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mClickSensitivity:F

    sub-float/2addr v0, v1

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mButtonTop:F

    sub-float/2addr v0, v1

    cmpg-float v0, v0, p2

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mButtonRight:F

    add-float/2addr v0, v1

    cmpg-float p1, p1, v0

    if-gez p1, :cond_1

    iget p1, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mButtonBottom:F

    add-float/2addr p1, v1

    cmpg-float p1, p2, p1

    if-gez p1, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;Z)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v6, p2

    .line 419
    iget-object v1, v0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mHwCandidates:Lcom/metamoji/mazec/recognizer/HwCandidates;

    if-nez v1, :cond_0

    goto/16 :goto_5

    .line 423
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v8

    .line 424
    invoke-virtual {v6}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v9

    .line 426
    sget-boolean v1, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mEnableUpperPart:Z

    const/4 v12, 0x1

    const/high16 v13, 0x40000000    # 2.0f

    if-eqz v1, :cond_4

    iget v1, v0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mLeft:F

    float-to-int v1, v1

    iget v2, v0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mTop:F

    float-to-int v2, v2

    iget v3, v0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mRight:F

    float-to-int v3, v3

    add-int/2addr v3, v12

    iget v4, v0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mBottom:F

    float-to-int v4, v4

    add-int/2addr v4, v12

    invoke-virtual {v8, v1, v2, v3, v4}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 427
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v14

    .line 428
    iget v15, v0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mCount:I

    .line 429
    sget v7, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mRectSize:I

    .line 430
    iget v1, v0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mUnitSize:I

    .line 431
    sget v16, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mRectPadding:I

    .line 433
    iget-object v2, v0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mHwCandidates:Lcom/metamoji/mazec/recognizer/HwCandidates;

    invoke-virtual {v2}, Lcom/metamoji/mazec/recognizer/HwCandidates;->getMostProbableCandidate()Lcom/metamoji/mazec/recognizer/HwCandidate;

    move-result-object v2

    iget-object v2, v2, Lcom/metamoji/mazec/recognizer/HwCandidate;->text:Ljava/lang/String;

    .line 436
    iget v3, v0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mTop:F

    int-to-float v4, v7

    div-float v5, v4, v13

    add-float/2addr v3, v5

    iget v5, v9, Landroid/graphics/Paint$FontMetrics;->ascent:F

    const/16 v17, 0x0

    iget v10, v9, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v5, v10

    div-float/2addr v5, v13

    sub-float v10, v3, v5

    .line 438
    iget v3, v0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mLeft:F

    move/from16 v5, v17

    :goto_0
    if-ge v5, v15, :cond_3

    move/from16 v18, v12

    .line 440
    iget-object v12, v0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mTexts:[Ljava/lang/String;

    aget-object v12, v12, v5

    iget-object v11, v0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mCategories:[I

    aget v11, v11, v5

    sget-object v13, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mLang:Ljava/lang/String;

    invoke-static {v14, v12, v11, v13}, Lcom/metamoji/mazec/ui/HwrCandidatesView;->getBkColor(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)I

    move-result v11

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 441
    sget v11, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mShadowColor:I

    const/high16 v12, 0x40000000    # 2.0f

    invoke-virtual {v6, v12, v12, v12, v11}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    move-object v11, v2

    move v2, v3

    .line 442
    iget v3, v0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mTop:F

    int-to-float v12, v1

    move v13, v4

    add-float v4, v2, v12

    move/from16 v20, v5

    add-float v5, v3, v13

    move/from16 v21, v20

    move/from16 v20, v13

    move-object v13, v11

    move v11, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move/from16 v22, v7

    move-object v7, v6

    .line 443
    iget-object v1, v0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mTexts:[Ljava/lang/String;

    aget-object v1, v1, v21

    iget-object v3, v0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mCategories:[I

    aget v3, v3, v21

    sget-object v5, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mLang:Ljava/lang/String;

    invoke-static {v14, v1, v3, v5}, Lcom/metamoji/mazec/ui/HwrCandidatesView;->getBorderColor(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v6, p3

    .line 445
    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 446
    iget v3, v0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mTop:F

    add-float v5, v3, v20

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 448
    :cond_1
    invoke-virtual {v7}, Landroid/graphics/Paint;->clearShadowLayer()V

    .line 450
    iget-object v1, v0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mTexts:[Ljava/lang/String;

    aget-object v1, v1, v21

    .line 451
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget v3, Lcom/metamoji/mazec/ui/HwrCandidatesView;->colorSelectedCandidate:I

    goto :goto_1

    :cond_2
    sget v3, Lcom/metamoji/mazec/ui/HwrCandidatesView;->colorUnselectedCandidate:I

    :goto_1
    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v19, 0x40000000    # 2.0f

    div-float v12, v12, v19

    add-float v5, v2, v12

    const/4 v3, 0x0

    .line 454
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    move v6, v10

    move v10, v2

    move-object v2, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    move v3, v6

    move-object v6, v7

    add-int v2, v11, v16

    int-to-float v2, v2

    add-float/2addr v2, v10

    add-int/lit8 v5, v21, 0x1

    move v10, v3

    move v1, v11

    move/from16 v12, v18

    move/from16 v4, v20

    move/from16 v7, v22

    move v3, v2

    move-object v2, v13

    const/high16 v13, 0x40000000    # 2.0f

    goto/16 :goto_0

    :cond_3
    move-object/from16 v1, p1

    move v10, v3

    move/from16 v22, v7

    move/from16 v18, v12

    .line 459
    iget v2, v0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mCount:I

    iget-object v3, v0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mHwCandidates:Lcom/metamoji/mazec/recognizer/HwCandidates;

    invoke-virtual {v3}, Lcom/metamoji/mazec/recognizer/HwCandidates;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 460
    sget-object v2, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mImgRestHwrCandidates:Landroid/graphics/Bitmap;

    float-to-int v3, v10

    int-to-float v3, v3

    iget v4, v0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mTop:F

    float-to-int v4, v4

    add-int v4, v4, v22

    sget v5, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mRestImgHeight:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_4
    move-object/from16 v1, p1

    move/from16 v18, v12

    const/16 v17, 0x0

    .line 465
    :cond_5
    :goto_2
    iget v2, v0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mButtonLeft:F

    float-to-int v2, v2

    iget v3, v0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mButtonTop:F

    float-to-int v3, v3

    iget v4, v0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mButtonRight:F

    float-to-int v4, v4

    add-int/lit8 v4, v4, 0x1

    iget v5, v0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mButtonBottom:F

    float-to-int v5, v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v8, v2, v3, v4, v5}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 466
    sget-boolean v2, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mEnableUpperPart:Z

    if-eqz v2, :cond_8

    .line 467
    sget-object v2, Lcom/metamoji/mazec/BuildConfig;->DEVICE_VENDOR:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    sget-object v3, Lcom/metamoji/mazec/BuildOption$DeviceVendor;->SAMSUNG:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    if-ne v2, v3, :cond_6

    .line 468
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 469
    iget v3, v0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mButtonLeft:F

    iget v4, v0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mButtonTop:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 470
    sget-object v3, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mImgAllHwrCandidatesButton:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v2, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    return-void

    .line 471
    :cond_6
    sget-boolean v2, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mEnableClearButton:Z

    if-eqz v2, :cond_7

    .line 473
    sget v2, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mColorBlockUnderline:I

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 474
    iget v2, v0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mButtonTop:F

    iget v3, v0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mButtonBottom:F

    add-float/2addr v2, v3

    const/high16 v19, 0x40000000    # 2.0f

    div-float v2, v2, v19

    move v3, v2

    .line 475
    iget v2, v0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mBlockLeft:F

    sget v4, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mBlockUnderlineHeight:F

    div-float v5, v4, v19

    sub-float v5, v3, v5

    move v7, v4

    iget v4, v0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mBlockRight:F

    div-float v7, v7, v19

    add-float/2addr v3, v7

    move/from16 v23, v5

    move v5, v3

    move/from16 v3, v23

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 476
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 477
    iget v3, v0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mButtonLeft:F

    iget v4, v0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mButtonTop:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 478
    sget-object v3, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mImgClearStrokesButton:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v2, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    return-void

    :cond_7
    const/4 v5, 0x0

    .line 481
    sget-object v2, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mImgAllHwrCandidatesButton:Landroid/graphics/Bitmap;

    iget v3, v0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mButtonLeft:F

    float-to-int v3, v3

    int-to-float v3, v3

    iget v4, v0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mButtonTop:F

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void

    :cond_8
    const/4 v5, 0x0

    .line 485
    iget-object v2, v0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mCategories:[I

    aget v2, v2, v17

    const/4 v3, 0x2

    if-ne v2, v3, :cond_9

    .line 488
    sget-object v2, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mImgAllHwrCandidatesKatakana:Landroid/graphics/drawable/NinePatchDrawable;

    goto/16 :goto_4

    :cond_9
    const/16 v3, 0x8

    if-ne v2, v3, :cond_a

    .line 490
    sget-object v2, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mImgAllHwrCandidatesNumber:Landroid/graphics/drawable/NinePatchDrawable;

    goto/16 :goto_4

    :cond_a
    const/4 v3, 0x4

    if-ne v2, v3, :cond_c

    .line 492
    sget-object v2, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mLang:Ljava/lang/String;

    invoke-static {v2}, Lcom/metamoji/mazec/util/LocaleUtil;->isLatinLanguage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 493
    sget-object v2, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mImgAllHwrCandidatesAlphabet:Landroid/graphics/drawable/NinePatchDrawable;

    goto :goto_4

    .line 495
    :cond_b
    sget-object v2, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mImgAllHwrCandidatesAlphabetJa:Landroid/graphics/drawable/NinePatchDrawable;

    goto :goto_4

    :cond_c
    const/16 v3, 0x20

    if-ne v2, v3, :cond_10

    .line 498
    sget-object v2, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mLang:Ljava/lang/String;

    const-string v3, "ja_JP"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 499
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/mazec/MazecIms;->getClassroomLearnedKanjiCharactersIfLearnedPreced()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 500
    iget-object v3, v0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mTexts:[Ljava/lang/String;

    array-length v4, v3

    if-lez v4, :cond_d

    .line 501
    aget-object v3, v3, v17

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_d

    .line 502
    sget-object v11, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mImgAllHwrCandidatesUnlearned:Landroid/graphics/drawable/NinePatchDrawable;

    goto :goto_3

    :cond_d
    move-object v11, v5

    :goto_3
    if-nez v11, :cond_e

    .line 506
    sget-object v2, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mImgAllHwrCandidatesKanji:Landroid/graphics/drawable/NinePatchDrawable;

    goto :goto_4

    :cond_e
    move-object v2, v11

    goto :goto_4

    .line 509
    :cond_f
    sget-object v2, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mImgAllHwrCandidatesHiragana:Landroid/graphics/drawable/NinePatchDrawable;

    goto :goto_4

    :cond_10
    move/from16 v3, v18

    if-ne v2, v3, :cond_11

    .line 512
    sget-object v2, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mImgAllHwrCandidatesHiragana:Landroid/graphics/drawable/NinePatchDrawable;

    goto :goto_4

    :cond_11
    const/16 v3, 0x100

    if-ne v2, v3, :cond_12

    .line 514
    sget-object v2, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mImgAllHwrCandidatesHiragana:Landroid/graphics/drawable/NinePatchDrawable;

    goto :goto_4

    :cond_12
    const/16 v3, 0x10

    if-ne v2, v3, :cond_13

    .line 516
    sget-object v2, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mImgAllHwrCandidatesSymbol:Landroid/graphics/drawable/NinePatchDrawable;

    goto :goto_4

    .line 518
    :cond_13
    sget-object v2, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mImgAllHwrCandidates:Landroid/graphics/drawable/NinePatchDrawable;

    .line 520
    :goto_4
    iget v3, v0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mButtonLeft:F

    float-to-int v3, v3

    iget v4, v0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mButtonTop:F

    float-to-int v4, v4

    iget v5, v0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mButtonRight:F

    float-to-int v5, v5

    iget v7, v0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mButtonBottom:F

    float-to-int v7, v7

    invoke-virtual {v2, v3, v4, v5, v7}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(IIII)V

    .line 521
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    const/high16 v2, 0x40400000    # 3.0f

    if-eqz p4, :cond_14

    .line 523
    new-instance v3, Landroid/graphics/RectF;

    iget v4, v0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mButtonLeft:F

    iget v5, v0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mButtonTop:F

    iget v7, v0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mButtonRight:F

    iget v8, v0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mButtonBottom:F

    invoke-direct {v3, v4, v5, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 524
    sget v4, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mColorTouched:I

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 525
    invoke-virtual {v1, v3, v2, v2, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 527
    :cond_14
    sget-object v3, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mImgCandidatesArrow:Landroid/graphics/drawable/Drawable;

    iget v4, v0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mButtonLeft:F

    iget v5, v0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mButtonRight:F

    add-float v7, v4, v5

    float-to-double v7, v7

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v7, v10

    sget v12, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mAllImgHeight:I

    int-to-double v13, v12

    div-double/2addr v13, v10

    sub-double/2addr v7, v13

    double-to-int v7, v7

    iget v8, v0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mButtonTop:F

    float-to-int v8, v8

    add-float/2addr v4, v5

    float-to-double v4, v4

    div-double/2addr v4, v10

    int-to-double v12, v12

    div-double/2addr v12, v10

    add-double/2addr v4, v12

    double-to-int v4, v4

    iget v5, v0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mButtonBottom:F

    float-to-int v5, v5

    invoke-virtual {v3, v7, v8, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 529
    sget-object v3, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mImgCandidatesArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/high16 v3, -0x1000000

    .line 531
    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 532
    iget v3, v0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mButtonTop:F

    iget v4, v0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mButtonBottom:F

    sub-float/2addr v4, v3

    mul-float/2addr v4, v2

    const/high16 v2, 0x40a00000    # 5.0f

    div-float/2addr v4, v2

    add-float/2addr v3, v4

    iget v2, v9, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget v4, v9, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v2, v4

    const/high16 v19, 0x40000000    # 2.0f

    div-float v2, v2, v19

    sub-float/2addr v3, v2

    .line 533
    iget-object v2, v0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mTexts:[Ljava/lang/String;

    aget-object v2, v2, v17

    iget v4, v0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mButtonLeft:F

    iget v5, v0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mButtonRight:F

    add-float/2addr v4, v5

    div-float v4, v4, v19

    invoke-virtual {v1, v2, v4, v3, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_15
    :goto_5
    return-void
.end method

.method public getCandidatesIndex()I
    .locals 1

    .line 232
    iget v0, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mCandIndex:I

    return v0
.end method

.method public initLowerPart(FFFFFFF)V
    .locals 3

    .line 292
    iput p4, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mBlockLeft:F

    .line 293
    iput p6, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mBlockRight:F

    .line 294
    sget-object p5, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mLang:Ljava/lang/String;

    invoke-static {p5}, Lcom/metamoji/mazec/util/LocaleUtil;->isCJKLanguage(Ljava/lang/String;)Z

    move-result p5

    const/high16 p7, 0x40c00000    # 6.0f

    const/high16 v0, 0x40e00000    # 7.0f

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz p5, :cond_2

    .line 295
    sget-boolean p5, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mEnableClearButton:Z

    if-eqz p5, :cond_0

    .line 296
    iput p6, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mButtonRight:F

    .line 297
    sget p5, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mClearStrokesButtonWidth:F

    sub-float p5, p6, p5

    iput p5, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mButtonLeft:F

    .line 298
    sget p5, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mClearStrokesButtonHeight:F

    mul-float/2addr v0, p5

    div-float/2addr v0, p7

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mButtonTop:F

    add-float/2addr p1, p5

    .line 299
    iput p1, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mButtonBottom:F

    goto/16 :goto_4

    :cond_0
    sub-float p5, p6, p4

    .line 302
    sget p7, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mAllImgWidth:I

    int-to-float v0, p7

    sub-float/2addr p5, v0

    div-float/2addr p5, v1

    add-float/2addr p5, p4

    iput p5, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mButtonLeft:F

    .line 303
    sget-boolean v0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mEnableUpperPart:Z

    if-eqz v0, :cond_1

    .line 304
    sget v0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mAllImgHeight:I

    mul-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x6

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mButtonTop:F

    goto :goto_0

    .line 306
    :cond_1
    sget v0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mAllImgHeight:I

    mul-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mButtonTop:F

    :goto_0
    int-to-float p1, p7

    add-float/2addr p5, p1

    .line 308
    iput p5, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mButtonRight:F

    .line 309
    iget p1, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mButtonTop:F

    sget p5, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mAllImgHeight:I

    int-to-float p5, p5

    add-float/2addr p1, p5

    iput p1, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mButtonBottom:F

    goto/16 :goto_4

    .line 311
    :cond_2
    sget-object p5, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mLang:Ljava/lang/String;

    invoke-static {p5}, Lcom/metamoji/mazec/util/LocaleUtil;->isLatinLanguage(Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_f

    .line 312
    sget-boolean p5, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mEnableUpperPart:Z

    if-eqz p5, :cond_6

    .line 313
    sget-boolean p5, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mEnableClearButton:Z

    if-eqz p5, :cond_4

    .line 314
    iput p4, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mButtonLeft:F

    .line 315
    sget p5, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mClearStrokesButtonHeight:F

    mul-float/2addr v0, p5

    div-float/2addr v0, p7

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mButtonTop:F

    .line 316
    sget p7, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mClearStrokesButtonWidth:F

    add-float v0, p4, p7

    cmpl-float v0, p6, v0

    if-lez v0, :cond_3

    move p7, p6

    goto :goto_1

    :cond_3
    add-float/2addr p7, p4

    :goto_1
    iput p7, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mButtonRight:F

    add-float/2addr p1, p5

    .line 317
    iput p1, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mButtonBottom:F

    goto/16 :goto_4

    .line 319
    :cond_4
    iput p4, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mButtonLeft:F

    .line 320
    sget p5, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mAllImgHeight:I

    mul-int/lit8 p7, p5, 0x7

    div-int/lit8 p7, p7, 0x6

    int-to-float p7, p7

    sub-float/2addr p1, p7

    iput p1, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mButtonTop:F

    .line 321
    sget p7, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mAllImgWidth:I

    int-to-float v0, p7

    add-float/2addr v0, p4

    cmpl-float v0, p6, v0

    if-lez v0, :cond_5

    move p7, p6

    goto :goto_2

    :cond_5
    int-to-float p7, p7

    add-float/2addr p7, p4

    :goto_2
    iput p7, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mButtonRight:F

    int-to-float p5, p5

    add-float/2addr p1, p5

    .line 322
    iput p1, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mButtonBottom:F

    goto :goto_4

    .line 327
    :cond_6
    iget-object p5, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mTexts:[Ljava/lang/String;

    if-eqz p5, :cond_8

    array-length p7, p5

    if-lez p7, :cond_8

    const/4 p7, 0x0

    .line 328
    aget-object p5, p5, p7

    .line 329
    iget-object p7, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mPaintForTextMeasure:Landroid/graphics/Paint;

    const/4 v0, 0x1

    if-nez p7, :cond_7

    .line 330
    new-instance p7, Landroid/graphics/Paint;

    invoke-direct {p7}, Landroid/graphics/Paint;-><init>()V

    .line 331
    invoke-virtual {p7, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 332
    invoke-virtual {p7, v0}, Landroid/graphics/Paint;->setDither(Z)V

    .line 333
    sget v2, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mTextSize:F

    invoke-virtual {p7, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 334
    iput-object p7, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mPaintForTextMeasure:Landroid/graphics/Paint;

    .line 336
    :cond_7
    iget-object p7, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mPaintForTextMeasure:Landroid/graphics/Paint;

    invoke-virtual {p7, p5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p7

    .line 337
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p5

    if-le p5, v0, :cond_9

    .line 338
    sget p5, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mTextSize:F

    mul-float/2addr p5, v1

    add-float/2addr p7, p5

    goto :goto_3

    :cond_8
    sub-float p7, p6, p4

    .line 344
    :cond_9
    :goto_3
    sget p5, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mAllImgWidth:I

    int-to-float v0, p5

    cmpg-float v0, p7, v0

    if-gez v0, :cond_a

    int-to-float p7, p5

    :cond_a
    add-float p5, p4, p6

    sub-float/2addr p5, p7

    div-float/2addr p5, v1

    .line 348
    iput p5, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mButtonLeft:F

    .line 349
    sget v0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mAllImgHeight:I

    mul-int/lit8 v1, v0, 0x5

    div-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    sub-float/2addr p1, v1

    iput p1, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mButtonTop:F

    add-float/2addr p5, p7

    .line 350
    iput p5, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mButtonRight:F

    int-to-float p5, v0

    add-float/2addr p1, p5

    .line 351
    iput p1, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mButtonBottom:F

    .line 357
    :goto_4
    iget p1, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mButtonLeft:F

    cmpg-float p5, p1, p2

    .line 367
    iget p7, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mButtonRight:F

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    if-gez p5, :cond_c

    sub-float/2addr p7, p1

    add-float p1, p2, p7

    cmpg-float p1, p1, p6

    if-gez p1, :cond_b

    add-float/2addr p2, p6

    sub-float/2addr p2, p7

    float-to-double p1, p2

    div-double/2addr p1, v0

    double-to-int p1, p1

    int-to-float p1, p1

    .line 362
    iput p1, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mButtonLeft:F

    goto :goto_5

    :cond_b
    sub-float/2addr p6, p7

    .line 364
    iput p6, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mButtonLeft:F

    .line 366
    :goto_5
    iget p1, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mButtonLeft:F

    add-float/2addr p1, p7

    iput p1, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mButtonRight:F

    return-void

    :cond_c
    cmpl-float p2, p7, p3

    if-lez p2, :cond_f

    sub-float/2addr p7, p1

    sub-float p1, p3, p7

    cmpl-float p2, p1, p4

    if-lez p2, :cond_d

    add-float/2addr p4, p3

    sub-float/2addr p4, p7

    float-to-double p1, p4

    div-double/2addr p1, v0

    double-to-int p1, p1

    int-to-float p1, p1

    .line 372
    iput p1, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mButtonLeft:F

    goto :goto_6

    :cond_d
    cmpg-float p2, p6, p3

    if-gez p2, :cond_e

    .line 377
    iput p1, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mButtonLeft:F

    goto :goto_6

    .line 379
    :cond_e
    iput p4, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mButtonLeft:F

    .line 382
    :goto_6
    iget p1, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mButtonLeft:F

    add-float/2addr p1, p7

    iput p1, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mButtonRight:F

    :cond_f
    return-void
.end method

.method public initUpperPart(IIFFFFII)V
    .locals 2

    .line 242
    iget v0, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mCount:I

    if-eq v0, p1, :cond_1

    if-ge v0, p1, :cond_0

    .line 244
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mTexts:[Ljava/lang/String;

    .line 245
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mCategories:[I

    .line 247
    :cond_0
    iput p1, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mCount:I

    .line 251
    :cond_1
    iput p2, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mUnitSize:I

    .line 254
    iput p3, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mLeft:F

    .line 255
    iput p4, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mTop:F

    .line 256
    iput p5, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mRight:F

    .line 257
    iput p6, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mBottom:F

    .line 260
    iget-object p2, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mHwCandidates:Lcom/metamoji/mazec/recognizer/HwCandidates;

    invoke-virtual {p2}, Lcom/metamoji/mazec/recognizer/HwCandidates;->getMostProbableCandidate()Lcom/metamoji/mazec/recognizer/HwCandidate;

    move-result-object p2

    iget-object p2, p2, Lcom/metamoji/mazec/recognizer/HwCandidate;->text:Ljava/lang/String;

    .line 264
    iget p3, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mCount:I

    const/4 p4, 0x0

    move p5, p4

    :goto_0
    const/4 p6, 0x1

    if-ge p4, p3, :cond_3

    .line 266
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mHwCandidates:Lcom/metamoji/mazec/recognizer/HwCandidates;

    invoke-virtual {v0, p4}, Lcom/metamoji/mazec/recognizer/HwCandidates;->getCandidateAt(I)Lcom/metamoji/mazec/recognizer/HwCandidate;

    move-result-object v0

    iget-object v0, v0, Lcom/metamoji/mazec/recognizer/HwCandidate;->text:Ljava/lang/String;

    .line 267
    iget-object v1, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mTexts:[Ljava/lang/String;

    aput-object v0, v1, p4

    .line 270
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move p5, p6

    :cond_2
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_3
    if-nez p5, :cond_4

    if-lez p1, :cond_4

    .line 278
    iget-object p3, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mTexts:[Ljava/lang/String;

    sub-int/2addr p1, p6

    aput-object p2, p3, p1

    .line 284
    :cond_4
    invoke-direct {p0, p7, p8}, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->updateCandCategories(II)V

    return-void
.end method

.method public invalidateLowerButton(Landroid/view/View;)V
    .locals 4

    .line 1002
    iget v0, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mButtonLeft:F

    float-to-int v0, v0

    iget v1, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mButtonTop:F

    float-to-int v1, v1

    iget v2, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mButtonRight:F

    float-to-int v2, v2

    iget v3, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mButtonBottom:F

    float-to-int v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->invalidate(IIII)V

    return-void
.end method

.method public setOnClickListener(Lcom/metamoji/mazec/ui/HwrCandidateSelector$OnClickListener;)V
    .locals 0

    .line 543
    iput-object p1, p0, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->mOnClickListener:Lcom/metamoji/mazec/ui/HwrCandidateSelector$OnClickListener;

    return-void
.end method
