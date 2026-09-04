.class public Lcom/metamoji/mazec/ui/HwrCandidatesView;
.super Landroid/view/View;
.source "HwrCandidatesView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/mazec/ui/HwrCandidatesView$OnClickListener;,
        Lcom/metamoji/mazec/ui/HwrCandidatesView$CandidateCell;
    }
.end annotation


# static fields
.field public static borderColorUnlearned:I = 0x0

.field public static colorAlphabetEn:I = 0x0

.field public static colorAlphabetJa:I = 0x0

.field public static colorHangul:I = 0x0

.field public static colorHiragana:I = 0x0

.field public static colorKanji:I = 0x0

.field public static colorKanjiChinese:I = 0x0

.field public static colorKatakana:I = 0x0

.field public static colorNumber:I = 0x0

.field public static colorSelectedCandidate:I = 0x0

.field public static colorSymbol:I = 0x0

.field public static colorUndefined:I = 0x0

.field public static colorUnlearned:I = 0x0

.field public static colorUnselectedCandidate:I = 0x0

.field private static initColors:Z = false

.field private static mShadowColor:I


# instance fields
.field private mAltCandidates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/recognizer/HwCandidates;",
            ">;"
        }
    .end annotation
.end field

.field private mAltCandidatessMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/metamoji/mazec/ui/HwrCandidatesView$CandidateCell;",
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/recognizer/HwCandidates;",
            ">;>;"
        }
    .end annotation
.end field

.field private mBorderPaint:Landroid/graphics/Paint;

.field private mCells:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/mazec/ui/HwrCandidatesView$CandidateCell;",
            ">;"
        }
    .end annotation
.end field

.field private mColCnt:I

.field private mFontDeltaY:F

.field private mHeight:I

.field private mOnClickListener:Lcom/metamoji/mazec/ui/HwrCandidatesView$OnClickListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mRectPadding:I

.field private mRectSize:I

.field private mRowCnt:I

.field private mSelectedStr:Ljava/lang/String;

.field private mTextSize:F

.field private mTouchedCellIndex:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x88

    .line 66
    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->mShadowColor:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 146
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 99
    iput-object v0, p0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->mOnClickListener:Lcom/metamoji/mazec/ui/HwrCandidatesView$OnClickListener;

    .line 102
    iput-object v0, p0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->mAltCandidatessMap:Ljava/util/HashMap;

    .line 105
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->mCells:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 113
    iput v1, p0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->mWidth:I

    .line 114
    iput v1, p0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->mHeight:I

    .line 120
    iput-object v0, p0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->mSelectedStr:Ljava/lang/String;

    .line 121
    iput-object v0, p0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->mAltCandidates:Ljava/util/List;

    .line 147
    invoke-direct {p0, p1}, Lcom/metamoji/mazec/ui/HwrCandidatesView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 152
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 99
    iput-object p2, p0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->mOnClickListener:Lcom/metamoji/mazec/ui/HwrCandidatesView$OnClickListener;

    .line 102
    iput-object p2, p0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->mAltCandidatessMap:Ljava/util/HashMap;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->mCells:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 113
    iput v0, p0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->mWidth:I

    .line 114
    iput v0, p0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->mHeight:I

    .line 120
    iput-object p2, p0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->mSelectedStr:Ljava/lang/String;

    .line 121
    iput-object p2, p0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->mAltCandidates:Ljava/util/List;

    .line 153
    invoke-direct {p0, p1}, Lcom/metamoji/mazec/ui/HwrCandidatesView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private static category2bkcolor(Landroid/content/Context;ILjava/lang/String;)I
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_b

    const/4 p0, 0x2

    if-eq p1, p0, :cond_a

    const/4 p0, 0x4

    if-eq p1, p0, :cond_7

    const/16 p0, 0x8

    if-eq p1, p0, :cond_6

    const/16 p0, 0x10

    if-eq p1, p0, :cond_5

    const/16 p0, 0x20

    if-eq p1, p0, :cond_3

    const/16 p0, 0x40

    if-eq p1, p0, :cond_2

    const/16 p0, 0x80

    if-eq p1, p0, :cond_1

    const/16 p0, 0x100

    if-eq p1, p0, :cond_0

    .line 697
    sget p0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->colorUndefined:I

    return p0

    .line 696
    :cond_0
    sget p0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->colorHangul:I

    return p0

    .line 695
    :cond_1
    sget p0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->colorHiragana:I

    return p0

    .line 694
    :cond_2
    sget p0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->colorKanji:I

    return p0

    .line 677
    :cond_3
    const-string p0, "ja_JP"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 678
    sget p0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->colorKanji:I

    return p0

    .line 680
    :cond_4
    sget p0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->colorKanjiChinese:I

    return p0

    .line 693
    :cond_5
    sget p0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->colorSymbol:I

    return p0

    .line 692
    :cond_6
    sget p0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->colorNumber:I

    return p0

    .line 685
    :cond_7
    invoke-static {p2}, Lcom/metamoji/mazec/util/LocaleUtil;->isLatinLanguage(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 686
    sget p0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->colorAlphabetEn:I

    return p0

    .line 687
    :cond_8
    invoke-static {p2}, Lcom/metamoji/mazec/util/LocaleUtil;->isCJKLanguage(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 688
    sget p0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->colorAlphabetJa:I

    return p0

    .line 690
    :cond_9
    sget p0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->colorUndefined:I

    return p0

    .line 683
    :cond_a
    sget p0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->colorKatakana:I

    return p0

    .line 682
    :cond_b
    sget p0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->colorHiragana:I

    return p0
.end method

.method public static getBkColor(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I
    .locals 0

    .line 600
    invoke-static {p1, p2, p3, p4}, Lcom/metamoji/mazec/ui/HwrCandidatesView;->getCategory(Ljava/lang/String;IILjava/lang/String;)I

    move-result p2

    invoke-static {p0, p1, p2, p4}, Lcom/metamoji/mazec/ui/HwrCandidatesView;->getBkColor(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method protected static getBkColor(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)I
    .locals 1

    .line 603
    invoke-static {p0}, Lcom/metamoji/mazec/ui/HwrCandidatesView;->initColors(Landroid/content/Context;)V

    const/16 v0, 0x20

    if-eq p2, v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 606
    invoke-static {p1, v0, p3}, Lcom/metamoji/mazec/ui/HwrCandidatesView;->hasUnlearnedKanji(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 607
    sget p0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->colorUnlearned:I

    return p0

    .line 611
    :cond_1
    invoke-static {p0, p2, p3}, Lcom/metamoji/mazec/ui/HwrCandidatesView;->category2bkcolor(Landroid/content/Context;ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method protected static getBorderColor(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I
    .locals 0

    .line 617
    invoke-static {p1, p2, p3, p4}, Lcom/metamoji/mazec/ui/HwrCandidatesView;->getCategory(Ljava/lang/String;IILjava/lang/String;)I

    move-result p2

    invoke-static {p0, p1, p2, p4}, Lcom/metamoji/mazec/ui/HwrCandidatesView;->getBorderColor(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method protected static getBorderColor(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)I
    .locals 2

    const/16 v0, 0x20

    const/4 v1, 0x0

    if-eq p2, v0, :cond_0

    if-nez p2, :cond_1

    .line 622
    :cond_0
    invoke-static {p1, v1, p3}, Lcom/metamoji/mazec/ui/HwrCandidatesView;->hasUnlearnedKanji(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 623
    invoke-static {p0}, Lcom/metamoji/mazec/ui/HwrCandidatesView;->initColors(Landroid/content/Context;)V

    .line 624
    sget p0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->borderColorUnlearned:I

    return p0

    :cond_1
    return v1
.end method

.method protected static getCategory(Ljava/lang/String;IILjava/lang/String;)I
    .locals 2

    .line 654
    invoke-static {p0, p3, p1}, Lcom/metamoji/mazec/recognizer/HwCharacterCategorizer;->categoryForText(Ljava/lang/String;Ljava/lang/String;I)[I

    move-result-object p0

    .line 655
    array-length p1, p0

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-ne p1, p3, :cond_0

    .line 657
    aget p0, p0, v0

    return p0

    :cond_0
    move p3, v0

    :goto_0
    if-ge p3, p1, :cond_2

    .line 661
    aget v1, p0, p3

    if-ne v1, p2, :cond_1

    return p2

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 666
    :cond_2
    aget p0, p0, v0

    return p0
.end method

.method public static getCategory(Ljava/util/List;IILjava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/recognizer/HwCandidates;",
            ">;II",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    if-gez p1, :cond_0

    const/4 p0, -0x1

    return p0

    .line 576
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/mazec/recognizer/HwCandidates;

    invoke-virtual {v0}, Lcom/metamoji/mazec/recognizer/HwCandidates;->getMostProbableCandidate()Lcom/metamoji/mazec/recognizer/HwCandidate;

    move-result-object v0

    iget-object v0, v0, Lcom/metamoji/mazec/recognizer/HwCandidate;->text:Ljava/lang/String;

    .line 577
    invoke-static {v0, p3, p2}, Lcom/metamoji/mazec/recognizer/HwCharacterCategorizer;->categoryForText(Ljava/lang/String;Ljava/lang/String;I)[I

    move-result-object v0

    .line 578
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    sub-int/2addr p1, v3

    .line 585
    invoke-static {p0, p1, p2, p3}, Lcom/metamoji/mazec/ui/HwrCandidatesView;->getCategory(Ljava/util/List;IILjava/lang/String;)I

    move-result p0

    move p1, v2

    :goto_0
    if-ge p1, v1, :cond_3

    .line 587
    aget p2, v0, p1

    if-ne p2, p0, :cond_2

    return p0

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 592
    :cond_3
    aget p0, v0, v2

    return p0

    .line 581
    :cond_4
    :goto_1
    aget p0, v0, v2

    return p0
.end method

.method private static getCategory([ILjava/util/List;IILjava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/recognizer/HwCandidates;",
            ">;II",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 538
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/mazec/recognizer/HwCandidates;

    invoke-virtual {v0}, Lcom/metamoji/mazec/recognizer/HwCandidates;->getMostProbableCandidate()Lcom/metamoji/mazec/recognizer/HwCandidate;

    move-result-object v0

    iget-object v0, v0, Lcom/metamoji/mazec/recognizer/HwCandidate;->text:Ljava/lang/String;

    .line 539
    invoke-static {v0, p4, p3}, Lcom/metamoji/mazec/recognizer/HwCharacterCategorizer;->categoryForText(Ljava/lang/String;Ljava/lang/String;I)[I

    move-result-object v0

    .line 540
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, p2, -0x1

    .line 553
    invoke-static {p0, p1, v3, p3, p4}, Lcom/metamoji/mazec/ui/HwrCandidatesView;->getCategory([ILjava/util/List;IILjava/lang/String;)I

    move-result p1

    move p3, v2

    :goto_0
    if-ge p3, v1, :cond_2

    .line 555
    aget p4, v0, p3

    if-ne p4, p1, :cond_1

    .line 556
    aput p1, p0, p2

    return p1

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 561
    :cond_2
    aget p1, v0, v2

    aput p1, p0, p2

    return p1

    .line 543
    :cond_3
    :goto_1
    aget v0, v0, v2

    .line 544
    aput v0, p0, p2

    if-lez p2, :cond_4

    sub-int/2addr p2, v3

    .line 547
    invoke-static {p0, p1, p2, p3, p4}, Lcom/metamoji/mazec/ui/HwrCandidatesView;->getCategory([ILjava/util/List;IILjava/lang/String;)I

    :cond_4
    return v0
.end method

.method public static getCategory(Ljava/util/List;ILjava/lang/String;)[I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/recognizer/HwCandidates;",
            ">;I",
            "Ljava/lang/String;",
            ")[I"
        }
    .end annotation

    .line 525
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 526
    new-array v1, v0, [I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 529
    invoke-static {v1, p0, v0, p1, p2}, Lcom/metamoji/mazec/ui/HwrCandidatesView;->getCategory([ILjava/util/List;IILjava/lang/String;)I

    :cond_0
    return-object v1
.end method

.method private static hasUnlearnedKanji(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 632
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 635
    :cond_0
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/mazec/MazecIms;->getClassroomLearnedKanjiCharactersIfLearnedPreced()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    move v2, v0

    .line 637
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    add-int/lit8 v3, v2, 0x1

    .line 638
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 639
    invoke-static {v2, p1, v0, p2}, Lcom/metamoji/mazec/ui/HwrCandidatesView;->getCategory(Ljava/lang/String;IILjava/lang/String;)I

    move-result v4

    const/16 v5, 0x20

    if-ne v4, v5, :cond_1

    .line 640
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    .line 161
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 162
    const-string v0, "integer.hwr_candidates_popup_col_count"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->mColCnt:I

    .line 163
    const-string v0, "integer.hwr_candidates_popup_row_count"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->mRowCnt:I

    .line 164
    const-string v0, "dimen.hwr_candidates_popup_text_size"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->mTextSize:F

    .line 165
    const-string v0, "dimen.hwr_candidates_popup_rect_size"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->mRectSize:I

    .line 166
    const-string v0, "dimen.hwr_candidates_popup_rect_padding"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->mRectPadding:I

    .line 168
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    const/4 v0, 0x1

    .line 170
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 171
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setDither(Z)V

    .line 172
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 173
    iget v1, p0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->mTextSize:F

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 174
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 176
    iput-object p1, p0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->mPaint:Landroid/graphics/Paint;

    .line 178
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 180
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 181
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setDither(Z)V

    const/high16 v0, 0x40a00000    # 5.0f

    .line 182
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 183
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 185
    iput-object v1, p0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->mBorderPaint:Landroid/graphics/Paint;

    .line 188
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p1

    .line 189
    iget v0, p0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->mRectSize:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v2, p1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v2, p1

    div-float/2addr v2, v1

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->mFontDeltaY:F

    return-void
.end method

.method private static initColors(Landroid/content/Context;)V
    .locals 1

    .line 76
    sget-boolean v0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->initColors:Z

    if-nez v0, :cond_0

    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 79
    const-string v0, "color.bkcolor_kanji"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->colorKanji:I

    .line 80
    const-string v0, "color.bkcolor_hiragana"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->colorHiragana:I

    .line 81
    const-string v0, "color.bkcolor_katakana"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->colorKatakana:I

    .line 82
    const-string v0, "color.bkcolor_alphabet_ja"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->colorAlphabetJa:I

    .line 83
    const-string v0, "color.bkcolor_alphabet_en"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->colorAlphabetEn:I

    .line 84
    const-string v0, "color.bkcolor_number"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->colorNumber:I

    .line 85
    const-string v0, "color.bkcolor_symbol"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->colorSymbol:I

    .line 86
    const-string v0, "color.bkcolor_undefined"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->colorUndefined:I

    .line 87
    const-string v0, "color.txtcolor_selected_hw_candidate"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->colorSelectedCandidate:I

    .line 88
    const-string v0, "color.txtcolor_unselected_hw_candidate"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->colorUnselectedCandidate:I

    .line 89
    const-string v0, "color.bkcolor_kanji_chinese"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->colorKanjiChinese:I

    .line 90
    const-string v0, "color.bkcolor_hangul"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->colorHangul:I

    .line 91
    const-string v0, "color.bkcolor_unlearned"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->colorUnlearned:I

    .line 92
    const-string v0, "color.bordercolor_unlearned"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    sput p0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->borderColorUnlearned:I

    const/4 p0, 0x1

    .line 94
    sput-boolean p0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->initColors:Z

    :cond_0
    return-void
.end method

.method private initViewForJAJP(Lcom/metamoji/mazec/recognizer/HwRecognitionResult;IILjava/lang/String;)V
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    .line 316
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v4

    .line 319
    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/mazec/recognizer/HwRecognitionResult;->getCandidatesList()Ljava/util/List;

    move-result-object v5

    .line 322
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/metamoji/mazec/recognizer/HwCandidates;

    .line 325
    invoke-virtual {v6}, Lcom/metamoji/mazec/recognizer/HwCandidates;->getMostProbableCandidate()Lcom/metamoji/mazec/recognizer/HwCandidate;

    move-result-object v7

    iget-object v7, v7, Lcom/metamoji/mazec/recognizer/HwCandidate;->text:Ljava/lang/String;

    .line 328
    invoke-virtual {v6}, Lcom/metamoji/mazec/recognizer/HwCandidates;->firstStrokeIndex()I

    move-result v8

    invoke-virtual {v6}, Lcom/metamoji/mazec/recognizer/HwCandidates;->lastStrokeIndex()I

    move-result v9

    move-object/from16 v10, p1

    invoke-virtual {v10, v8, v9}, Lcom/metamoji/mazec/recognizer/HwRecognitionResult;->getAltCandidates(II)Ljava/util/List;

    move-result-object v8

    .line 329
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    const/4 v11, 0x1

    if-lez v9, :cond_0

    move v12, v11

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    :goto_0
    if-eqz v12, :cond_1

    .line 332
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    iput-object v13, v0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->mAltCandidatessMap:Ljava/util/HashMap;

    :cond_1
    if-lez v1, :cond_2

    sub-int/2addr v1, v11

    .line 336
    invoke-static {v5, v1, v2, v3}, Lcom/metamoji/mazec/ui/HwrCandidatesView;->getCategory(Ljava/util/List;IILjava/lang/String;)I

    move-result v1

    goto :goto_1

    :cond_2
    const/4 v1, -0x1

    .line 338
    :goto_1
    iget v5, v0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->mRectSize:I

    .line 339
    iget v14, v0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->mRectPadding:I

    add-int v15, v5, v14

    .line 342
    invoke-virtual {v6}, Lcom/metamoji/mazec/recognizer/HwCandidates;->getCount()I

    move-result v13

    move/from16 v16, v11

    .line 343
    iget v11, v0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->mRowCnt:I

    .line 344
    iget v10, v0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->mColCnt:I

    if-eqz v12, :cond_3

    add-int/lit8 v12, v11, -0x1

    goto :goto_2

    :cond_3
    move v12, v11

    :goto_2
    move/from16 p2, v14

    move/from16 v19, v15

    const/4 v14, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    :goto_3
    if-ge v14, v12, :cond_9

    if-eqz v17, :cond_4

    goto/16 :goto_8

    :cond_4
    move/from16 v15, v18

    move/from16 v18, v12

    move v12, v15

    const/4 v15, 0x0

    :goto_4
    if-ge v15, v10, :cond_8

    if-ge v12, v13, :cond_6

    add-int/lit8 v20, v12, 0x1

    .line 356
    invoke-virtual {v6, v12}, Lcom/metamoji/mazec/recognizer/HwCandidates;->getCandidateAt(I)Lcom/metamoji/mazec/recognizer/HwCandidate;

    move-result-object v12

    move-object/from16 v21, v6

    .line 357
    new-instance v6, Lcom/metamoji/mazec/ui/HwrCandidatesView$CandidateCell;

    move/from16 v22, v13

    const/4 v13, 0x0

    invoke-direct {v6, v13}, Lcom/metamoji/mazec/ui/HwrCandidatesView$CandidateCell;-><init>(Lcom/metamoji/mazec/ui/HwrCandidatesView-IA;)V

    .line 358
    iget-object v13, v12, Lcom/metamoji/mazec/recognizer/HwCandidate;->text:Ljava/lang/String;

    iput-object v13, v6, Lcom/metamoji/mazec/ui/HwrCandidatesView$CandidateCell;->text:Ljava/lang/String;

    .line 359
    iget-object v13, v12, Lcom/metamoji/mazec/recognizer/HwCandidate;->text:Ljava/lang/String;

    invoke-static {v4, v13, v2, v1, v3}, Lcom/metamoji/mazec/ui/HwrCandidatesView;->getBkColor(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result v13

    iput v13, v6, Lcom/metamoji/mazec/ui/HwrCandidatesView$CandidateCell;->bkColor:I

    .line 360
    iget-object v13, v12, Lcom/metamoji/mazec/recognizer/HwCandidate;->text:Ljava/lang/String;

    invoke-static {v4, v13, v2, v1, v3}, Lcom/metamoji/mazec/ui/HwrCandidatesView;->getBorderColor(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result v13

    iput v13, v6, Lcom/metamoji/mazec/ui/HwrCandidatesView$CandidateCell;->borderColor:I

    .line 361
    iget-object v12, v12, Lcom/metamoji/mazec/recognizer/HwCandidate;->text:Ljava/lang/String;

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    sget v12, Lcom/metamoji/mazec/ui/HwrCandidatesView;->colorSelectedCandidate:I

    goto :goto_5

    :cond_5
    sget v12, Lcom/metamoji/mazec/ui/HwrCandidatesView;->colorUnselectedCandidate:I

    :goto_5
    iput v12, v6, Lcom/metamoji/mazec/ui/HwrCandidatesView$CandidateCell;->txtColor:I

    mul-int v12, v15, v19

    add-int v12, p2, v12

    .line 362
    iput v12, v6, Lcom/metamoji/mazec/ui/HwrCandidatesView$CandidateCell;->left:I

    mul-int v12, v14, v19

    add-int v12, p2, v12

    .line 363
    iput v12, v6, Lcom/metamoji/mazec/ui/HwrCandidatesView$CandidateCell;->top:I

    .line 364
    iget v12, v6, Lcom/metamoji/mazec/ui/HwrCandidatesView$CandidateCell;->left:I

    add-int/2addr v12, v5

    iput v12, v6, Lcom/metamoji/mazec/ui/HwrCandidatesView$CandidateCell;->right:I

    .line 365
    iget v12, v6, Lcom/metamoji/mazec/ui/HwrCandidatesView$CandidateCell;->top:I

    add-int/2addr v12, v5

    iput v12, v6, Lcom/metamoji/mazec/ui/HwrCandidatesView$CandidateCell;->bottom:I

    .line 366
    iget-object v12, v0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->mCells:Ljava/util/ArrayList;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v12, v20

    goto :goto_6

    :cond_6
    move-object/from16 v21, v6

    move/from16 v22, v13

    if-nez v15, :cond_7

    add-int/lit8 v14, v14, -0x1

    move/from16 v17, v16

    goto :goto_7

    :cond_7
    move/from16 v17, v16

    :goto_6
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v6, v21

    move/from16 v13, v22

    goto :goto_4

    :cond_8
    move-object/from16 v21, v6

    move/from16 v22, v13

    :goto_7
    add-int/lit8 v14, v14, 0x1

    move/from16 v6, v18

    move/from16 v18, v12

    move v12, v6

    move-object/from16 v6, v21

    move/from16 v13, v22

    goto/16 :goto_3

    :cond_9
    :goto_8
    mul-int v15, v19, v10

    .line 379
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    :goto_9
    if-ge v14, v11, :cond_11

    move/from16 v13, p2

    const/4 v12, 0x0

    :goto_a
    if-ge v12, v10, :cond_10

    if-ge v7, v9, :cond_e

    .line 385
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move/from16 v18, v7

    move-object/from16 v7, v17

    check-cast v7, Ljava/util/List;

    move-object/from16 v17, v8

    const/4 v8, 0x0

    .line 386
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 387
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/metamoji/mazec/recognizer/HwCandidates;

    move-object/from16 v21, v8

    .line 388
    invoke-virtual/range {v20 .. v20}, Lcom/metamoji/mazec/recognizer/HwCandidates;->getMostProbableCandidate()Lcom/metamoji/mazec/recognizer/HwCandidate;

    move-result-object v8

    iget-object v8, v8, Lcom/metamoji/mazec/recognizer/HwCandidate;->text:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, v21

    goto :goto_b

    .line 390
    :cond_a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v20, v6

    .line 391
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v6

    move/from16 v21, v9

    move/from16 v9, v16

    if-ne v6, v9, :cond_b

    move v6, v5

    move/from16 v22, v10

    move v9, v11

    goto :goto_c

    .line 392
    :cond_b
    iget-object v9, v0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->mPaint:Landroid/graphics/Paint;

    move/from16 v22, v10

    const/4 v10, 0x0

    invoke-virtual {v9, v8, v10, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v6

    move v9, v11

    float-to-double v10, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v6, v10

    add-int/lit8 v6, v6, 0xa

    :goto_c
    if-ge v6, v5, :cond_c

    move v6, v5

    :cond_c
    add-int v10, v13, v6

    if-gt v10, v15, :cond_f

    .line 399
    new-instance v10, Lcom/metamoji/mazec/ui/HwrCandidatesView$CandidateCell;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Lcom/metamoji/mazec/ui/HwrCandidatesView$CandidateCell;-><init>(Lcom/metamoji/mazec/ui/HwrCandidatesView-IA;)V

    .line 400
    iput-object v8, v10, Lcom/metamoji/mazec/ui/HwrCandidatesView$CandidateCell;->text:Ljava/lang/String;

    .line 401
    invoke-static {v4, v8, v2, v1, v3}, Lcom/metamoji/mazec/ui/HwrCandidatesView;->getBorderColor(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result v11

    iput v11, v10, Lcom/metamoji/mazec/ui/HwrCandidatesView$CandidateCell;->borderColor:I

    .line 402
    iget v11, v10, Lcom/metamoji/mazec/ui/HwrCandidatesView$CandidateCell;->borderColor:I

    if-eqz v11, :cond_d

    .line 403
    invoke-static {v4, v8, v2, v1, v3}, Lcom/metamoji/mazec/ui/HwrCandidatesView;->getBkColor(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result v8

    iput v8, v10, Lcom/metamoji/mazec/ui/HwrCandidatesView$CandidateCell;->bkColor:I

    const/4 v8, -0x1

    goto :goto_d

    :cond_d
    const/4 v8, -0x1

    .line 405
    iput v8, v10, Lcom/metamoji/mazec/ui/HwrCandidatesView$CandidateCell;->bkColor:I

    .line 407
    :goto_d
    sget v11, Lcom/metamoji/mazec/ui/HwrCandidatesView;->colorUnselectedCandidate:I

    iput v11, v10, Lcom/metamoji/mazec/ui/HwrCandidatesView$CandidateCell;->txtColor:I

    .line 408
    iput v13, v10, Lcom/metamoji/mazec/ui/HwrCandidatesView$CandidateCell;->left:I

    mul-int v11, v14, v19

    add-int v11, p2, v11

    .line 409
    iput v11, v10, Lcom/metamoji/mazec/ui/HwrCandidatesView$CandidateCell;->top:I

    .line 410
    iget v11, v10, Lcom/metamoji/mazec/ui/HwrCandidatesView$CandidateCell;->left:I

    add-int/2addr v11, v6

    iput v11, v10, Lcom/metamoji/mazec/ui/HwrCandidatesView$CandidateCell;->right:I

    .line 411
    iget v6, v10, Lcom/metamoji/mazec/ui/HwrCandidatesView$CandidateCell;->top:I

    add-int/2addr v6, v5

    iput v6, v10, Lcom/metamoji/mazec/ui/HwrCandidatesView$CandidateCell;->bottom:I

    .line 412
    iget-object v6, v0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->mCells:Ljava/util/ArrayList;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    iget v6, v10, Lcom/metamoji/mazec/ui/HwrCandidatesView$CandidateCell;->right:I

    add-int v13, v6, p2

    .line 414
    iget-object v6, v0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->mAltCandidatessMap:Ljava/util/HashMap;

    invoke-virtual {v6, v10, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v18, 0x1

    goto :goto_e

    :cond_e
    move-object/from16 v20, v6

    move/from16 v18, v7

    move-object/from16 v17, v8

    move/from16 v21, v9

    move/from16 v22, v10

    move v9, v11

    :cond_f
    const/4 v8, -0x1

    move/from16 v7, v18

    :goto_e
    add-int/lit8 v12, v12, 0x1

    move v11, v9

    move-object/from16 v8, v17

    move-object/from16 v6, v20

    move/from16 v9, v21

    move/from16 v10, v22

    const/16 v16, 0x1

    goto/16 :goto_a

    :cond_10
    move-object/from16 v20, v6

    move/from16 v18, v7

    move-object/from16 v17, v8

    move/from16 v21, v9

    move/from16 v22, v10

    move v9, v11

    const/4 v8, -0x1

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v8, v17

    move/from16 v9, v21

    const/16 v16, 0x1

    goto/16 :goto_9

    .line 423
    :cond_11
    iget v1, v0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->mColCnt:I

    mul-int v15, v19, v1

    add-int v14, p2, v15

    add-int/lit8 v14, v14, 0x2

    iput v14, v0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->mWidth:I

    .line 424
    iget v1, v0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->mRowCnt:I

    mul-int v15, v19, v1

    add-int v14, p2, v15

    iput v14, v0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->mHeight:I

    return-void
.end method

.method private initViewForLatin(Lcom/metamoji/mazec/recognizer/HwRecognitionResult;IIILjava/lang/String;)V
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    .line 210
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v5

    .line 213
    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/mazec/recognizer/HwRecognitionResult;->getCandidatesList()Ljava/util/List;

    move-result-object v6

    .line 216
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/metamoji/mazec/recognizer/HwCandidates;

    .line 219
    invoke-virtual {v7}, Lcom/metamoji/mazec/recognizer/HwCandidates;->getMostProbableCandidate()Lcom/metamoji/mazec/recognizer/HwCandidate;

    move-result-object v8

    iget-object v8, v8, Lcom/metamoji/mazec/recognizer/HwCandidate;->text:Ljava/lang/String;

    const/4 v9, 0x1

    if-lez v1, :cond_0

    sub-int/2addr v1, v9

    .line 222
    invoke-static {v6, v1, v2, v4}, Lcom/metamoji/mazec/ui/HwrCandidatesView;->getCategory(Ljava/util/List;IILjava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    .line 224
    :goto_0
    iget v6, v0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->mRectSize:I

    .line 225
    iget v10, v0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->mRectPadding:I

    .line 227
    invoke-virtual {v7}, Lcom/metamoji/mazec/recognizer/HwCandidates;->getCount()I

    move-result v11

    .line 228
    iget v12, v0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->mRowCnt:I

    move/from16 v16, v10

    const/4 v9, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    :goto_1
    if-ge v14, v12, :cond_9

    if-eqz v15, :cond_1

    goto/16 :goto_6

    :cond_1
    move/from16 v13, v17

    move/from16 v17, v12

    move v12, v10

    :goto_2
    if-lt v13, v11, :cond_2

    move-object/from16 v19, v7

    move/from16 v18, v11

    move/from16 v20, v13

    move/from16 v21, v14

    move/from16 v11, v16

    const/4 v15, 0x1

    goto/16 :goto_4

    :cond_2
    move/from16 v18, v11

    .line 253
    invoke-virtual {v7, v13}, Lcom/metamoji/mazec/recognizer/HwCandidates;->getCandidateAt(I)Lcom/metamoji/mazec/recognizer/HwCandidate;

    move-result-object v11

    .line 254
    iget-object v11, v11, Lcom/metamoji/mazec/recognizer/HwCandidate;->text:Ljava/lang/String;

    move-object/from16 v19, v7

    .line 255
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v7

    move/from16 v20, v13

    .line 256
    iget-object v13, v0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->mPaint:Landroid/graphics/Paint;

    move/from16 v21, v14

    const/4 v14, 0x0

    invoke-virtual {v13, v11, v14, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v7

    move/from16 p2, v15

    float-to-double v14, v7

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v7, v14

    add-int/lit8 v7, v7, 0xa

    if-ge v7, v6, :cond_3

    move v7, v6

    :cond_3
    add-int/2addr v7, v12

    add-int v14, v7, v10

    const/4 v15, 0x0

    if-le v14, v3, :cond_7

    if-ne v12, v10, :cond_5

    .line 263
    new-instance v14, Lcom/metamoji/mazec/ui/HwrCandidatesView$CandidateCell;

    invoke-direct {v14, v15}, Lcom/metamoji/mazec/ui/HwrCandidatesView$CandidateCell;-><init>(Lcom/metamoji/mazec/ui/HwrCandidatesView-IA;)V

    .line 264
    iput-object v11, v14, Lcom/metamoji/mazec/ui/HwrCandidatesView$CandidateCell;->text:Ljava/lang/String;

    .line 265
    invoke-static {v5, v11, v2, v1, v4}, Lcom/metamoji/mazec/ui/HwrCandidatesView;->getBkColor(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result v15

    iput v15, v14, Lcom/metamoji/mazec/ui/HwrCandidatesView$CandidateCell;->bkColor:I

    .line 266
    invoke-static {v5, v11, v2, v1, v4}, Lcom/metamoji/mazec/ui/HwrCandidatesView;->getBorderColor(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result v15

    iput v15, v14, Lcom/metamoji/mazec/ui/HwrCandidatesView$CandidateCell;->borderColor:I

    .line 267
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    sget v11, Lcom/metamoji/mazec/ui/HwrCandidatesView;->colorSelectedCandidate:I

    goto :goto_3

    :cond_4
    sget v11, Lcom/metamoji/mazec/ui/HwrCandidatesView;->colorUnselectedCandidate:I

    :goto_3
    iput v11, v14, Lcom/metamoji/mazec/ui/HwrCandidatesView$CandidateCell;->txtColor:I

    .line 268
    iput v12, v14, Lcom/metamoji/mazec/ui/HwrCandidatesView$CandidateCell;->left:I

    move/from16 v11, v16

    .line 269
    iput v11, v14, Lcom/metamoji/mazec/ui/HwrCandidatesView$CandidateCell;->top:I

    .line 270
    iput v7, v14, Lcom/metamoji/mazec/ui/HwrCandidatesView$CandidateCell;->right:I

    add-int v7, v11, v6

    .line 271
    iput v7, v14, Lcom/metamoji/mazec/ui/HwrCandidatesView$CandidateCell;->bottom:I

    .line 272
    iget-object v7, v0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->mCells:Ljava/util/ArrayList;

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v20, 0x1

    move/from16 v15, p2

    move v12, v3

    move/from16 v20, v7

    goto :goto_4

    :cond_5
    move/from16 v11, v16

    move/from16 v15, p2

    :goto_4
    add-int v7, v6, v10

    add-int v16, v11, v7

    if-ge v9, v12, :cond_6

    move v9, v12

    :cond_6
    add-int/lit8 v14, v21, 0x1

    move/from16 v12, v17

    move/from16 v11, v18

    move-object/from16 v7, v19

    move/from16 v17, v20

    goto/16 :goto_1

    :cond_7
    move/from16 v14, v16

    .line 279
    new-instance v13, Lcom/metamoji/mazec/ui/HwrCandidatesView$CandidateCell;

    invoke-direct {v13, v15}, Lcom/metamoji/mazec/ui/HwrCandidatesView$CandidateCell;-><init>(Lcom/metamoji/mazec/ui/HwrCandidatesView-IA;)V

    .line 280
    iput-object v11, v13, Lcom/metamoji/mazec/ui/HwrCandidatesView$CandidateCell;->text:Ljava/lang/String;

    .line 281
    invoke-static {v5, v11, v2, v1, v4}, Lcom/metamoji/mazec/ui/HwrCandidatesView;->getBkColor(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result v15

    iput v15, v13, Lcom/metamoji/mazec/ui/HwrCandidatesView$CandidateCell;->bkColor:I

    .line 282
    invoke-static {v5, v11, v2, v1, v4}, Lcom/metamoji/mazec/ui/HwrCandidatesView;->getBorderColor(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result v15

    iput v15, v13, Lcom/metamoji/mazec/ui/HwrCandidatesView$CandidateCell;->borderColor:I

    .line 283
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    sget v11, Lcom/metamoji/mazec/ui/HwrCandidatesView;->colorSelectedCandidate:I

    goto :goto_5

    :cond_8
    sget v11, Lcom/metamoji/mazec/ui/HwrCandidatesView;->colorUnselectedCandidate:I

    :goto_5
    iput v11, v13, Lcom/metamoji/mazec/ui/HwrCandidatesView$CandidateCell;->txtColor:I

    .line 284
    iput v12, v13, Lcom/metamoji/mazec/ui/HwrCandidatesView$CandidateCell;->left:I

    .line 285
    iput v14, v13, Lcom/metamoji/mazec/ui/HwrCandidatesView$CandidateCell;->top:I

    .line 286
    iput v7, v13, Lcom/metamoji/mazec/ui/HwrCandidatesView$CandidateCell;->right:I

    add-int v7, v14, v6

    .line 287
    iput v7, v13, Lcom/metamoji/mazec/ui/HwrCandidatesView$CandidateCell;->bottom:I

    .line 288
    iget-object v7, v0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->mCells:Ljava/util/ArrayList;

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v20, 0x1

    .line 291
    iget v11, v13, Lcom/metamoji/mazec/ui/HwrCandidatesView$CandidateCell;->right:I

    add-int v12, v11, v10

    move/from16 v15, p2

    move v13, v7

    move/from16 v16, v14

    move/from16 v11, v18

    move-object/from16 v7, v19

    move/from16 v14, v21

    goto/16 :goto_2

    :cond_9
    :goto_6
    int-to-double v1, v3

    const-wide v3, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v1, v3

    double-to-int v1, v1

    if-le v9, v1, :cond_a

    add-int/lit8 v9, v9, 0x2

    .line 303
    iput v9, v0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->mWidth:I

    goto :goto_7

    :cond_a
    add-int/lit8 v1, v1, 0x2

    .line 305
    iput v1, v0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->mWidth:I

    :goto_7
    add-int/2addr v6, v10

    .line 307
    iget v1, v0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->mRowCnt:I

    mul-int/2addr v6, v1

    add-int/2addr v10, v6

    iput v10, v0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->mHeight:I

    return-void
.end method

.method private onTouchEnd(Landroid/view/MotionEvent;)V
    .locals 3

    .line 497
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 498
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 500
    iget v1, p0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->mTouchedCellIndex:I

    if-ltz v1, :cond_1

    .line 501
    iget-object v2, p0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->mCells:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/mazec/ui/HwrCandidatesView$CandidateCell;

    .line 502
    iget v2, v1, Lcom/metamoji/mazec/ui/HwrCandidatesView$CandidateCell;->left:I

    int-to-float v2, v2

    cmpg-float v2, v2, v0

    if-gtz v2, :cond_1

    iget v2, v1, Lcom/metamoji/mazec/ui/HwrCandidatesView$CandidateCell;->right:I

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    iget v0, v1, Lcom/metamoji/mazec/ui/HwrCandidatesView$CandidateCell;->top:I

    int-to-float v0, v0

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_1

    iget v0, v1, Lcom/metamoji/mazec/ui/HwrCandidatesView$CandidateCell;->bottom:I

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_1

    .line 503
    iget-object p1, p0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->mAltCandidatessMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 504
    iput-object v0, p0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->mSelectedStr:Ljava/lang/String;

    .line 505
    iget-object p1, p0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->mAltCandidatessMap:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->mAltCandidates:Ljava/util/List;

    goto :goto_0

    .line 507
    :cond_0
    iget-object p1, v1, Lcom/metamoji/mazec/ui/HwrCandidatesView$CandidateCell;->text:Ljava/lang/String;

    iput-object p1, p0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->mSelectedStr:Ljava/lang/String;

    .line 508
    iput-object v0, p0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->mAltCandidates:Ljava/util/List;

    .line 511
    :goto_0
    iget-object p1, p0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->mOnClickListener:Lcom/metamoji/mazec/ui/HwrCandidatesView$OnClickListener;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 512
    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/ui/HwrCandidatesView;->playSoundEffect(I)V

    .line 513
    iget-object p1, p0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->mOnClickListener:Lcom/metamoji/mazec/ui/HwrCandidatesView$OnClickListener;

    invoke-interface {p1, p0}, Lcom/metamoji/mazec/ui/HwrCandidatesView$OnClickListener;->onClick(Lcom/metamoji/mazec/ui/HwrCandidatesView;)V

    :cond_1
    return-void
.end method

.method private onTouchStart(Landroid/view/MotionEvent;)V
    .locals 6

    .line 477
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 478
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/4 v1, -0x1

    .line 480
    iput v1, p0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->mTouchedCellIndex:I

    .line 481
    iget-object v1, p0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->mCells:Ljava/util/ArrayList;

    .line 482
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 484
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/mazec/ui/HwrCandidatesView$CandidateCell;

    .line 485
    iget v5, v4, Lcom/metamoji/mazec/ui/HwrCandidatesView$CandidateCell;->left:I

    int-to-float v5, v5

    cmpg-float v5, v5, v0

    if-gtz v5, :cond_0

    iget v5, v4, Lcom/metamoji/mazec/ui/HwrCandidatesView$CandidateCell;->right:I

    int-to-float v5, v5

    cmpg-float v5, v0, v5

    if-gez v5, :cond_0

    iget v5, v4, Lcom/metamoji/mazec/ui/HwrCandidatesView$CandidateCell;->top:I

    int-to-float v5, v5

    cmpg-float v5, v5, p1

    if-gtz v5, :cond_0

    iget v4, v4, Lcom/metamoji/mazec/ui/HwrCandidatesView$CandidateCell;->bottom:I

    int-to-float v4, v4

    cmpg-float v4, p1, v4

    if-gez v4, :cond_0

    .line 486
    iput v3, p0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->mTouchedCellIndex:I

    return-void

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getAltCandidates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/recognizer/HwCandidates;",
            ">;"
        }
    .end annotation

    .line 745
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->mAltCandidates:Ljava/util/List;

    return-object v0
.end method

.method public getDispHeight()I
    .locals 1

    .line 448
    iget v0, p0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->mHeight:I

    return v0
.end method

.method public getDispWidth()I
    .locals 1

    .line 440
    iget v0, p0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->mWidth:I

    return v0
.end method

.method public getSelectedString()Ljava/lang/String;
    .locals 1

    .line 736
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->mSelectedStr:Ljava/lang/String;

    return-object v0
.end method

.method public initView(Lcom/metamoji/mazec/recognizer/HwRecognitionResult;IIILjava/lang/String;)V
    .locals 1

    .line 198
    invoke-static {p5}, Lcom/metamoji/mazec/util/LocaleUtil;->isLatinLanguage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    invoke-direct/range {p0 .. p5}, Lcom/metamoji/mazec/ui/HwrCandidatesView;->initViewForLatin(Lcom/metamoji/mazec/recognizer/HwRecognitionResult;IIILjava/lang/String;)V

    move-object p1, p0

    return-void

    :cond_0
    move p4, p3

    move p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 201
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/metamoji/mazec/ui/HwrCandidatesView;->initViewForJAJP(Lcom/metamoji/mazec/recognizer/HwRecognitionResult;IILjava/lang/String;)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    .line 708
    iget-object v1, v0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->mCells:Ljava/util/ArrayList;

    .line 709
    iget-object v7, v0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->mPaint:Landroid/graphics/Paint;

    .line 710
    iget-object v13, v0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->mBorderPaint:Landroid/graphics/Paint;

    .line 712
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v2, 0x0

    move v15, v2

    :goto_0
    if-ge v15, v14, :cond_1

    .line 714
    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/metamoji/mazec/ui/HwrCandidatesView$CandidateCell;

    .line 715
    iget v2, v8, Lcom/metamoji/mazec/ui/HwrCandidatesView$CandidateCell;->bkColor:I

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 716
    sget v2, Lcom/metamoji/mazec/ui/HwrCandidatesView;->mShadowColor:I

    const/high16 v9, 0x40000000    # 2.0f

    invoke-virtual {v7, v9, v9, v9, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 717
    iget v2, v8, Lcom/metamoji/mazec/ui/HwrCandidatesView$CandidateCell;->left:I

    int-to-float v3, v2

    iget v2, v8, Lcom/metamoji/mazec/ui/HwrCandidatesView$CandidateCell;->top:I

    int-to-float v4, v2

    iget v2, v8, Lcom/metamoji/mazec/ui/HwrCandidatesView$CandidateCell;->right:I

    int-to-float v5, v2

    iget v2, v8, Lcom/metamoji/mazec/ui/HwrCandidatesView$CandidateCell;->bottom:I

    int-to-float v6, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 718
    iget v2, v8, Lcom/metamoji/mazec/ui/HwrCandidatesView$CandidateCell;->borderColor:I

    if-eqz v2, :cond_0

    .line 719
    iget v2, v8, Lcom/metamoji/mazec/ui/HwrCandidatesView$CandidateCell;->borderColor:I

    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v2, 0x40a00000    # 5.0f

    .line 720
    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 721
    iget v2, v8, Lcom/metamoji/mazec/ui/HwrCandidatesView$CandidateCell;->left:I

    int-to-float v2, v2

    iget v3, v8, Lcom/metamoji/mazec/ui/HwrCandidatesView$CandidateCell;->top:I

    int-to-float v10, v3

    iget v3, v8, Lcom/metamoji/mazec/ui/HwrCandidatesView$CandidateCell;->right:I

    int-to-float v11, v3

    iget v3, v8, Lcom/metamoji/mazec/ui/HwrCandidatesView$CandidateCell;->bottom:I

    int-to-float v12, v3

    move v3, v9

    move v9, v2

    move-object v2, v8

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_0
    move-object v2, v8

    move v3, v9

    .line 723
    :goto_1
    invoke-virtual {v7}, Landroid/graphics/Paint;->clearShadowLayer()V

    .line 725
    iget v4, v2, Lcom/metamoji/mazec/ui/HwrCandidatesView$CandidateCell;->txtColor:I

    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setColor(I)V

    move v4, v3

    .line 726
    iget-object v3, v2, Lcom/metamoji/mazec/ui/HwrCandidatesView$CandidateCell;->text:Ljava/lang/String;

    iget-object v5, v2, Lcom/metamoji/mazec/ui/HwrCandidatesView$CandidateCell;->text:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    iget v6, v2, Lcom/metamoji/mazec/ui/HwrCandidatesView$CandidateCell;->left:I

    iget v8, v2, Lcom/metamoji/mazec/ui/HwrCandidatesView$CandidateCell;->right:I

    add-int/2addr v6, v8

    int-to-float v6, v6

    div-float/2addr v6, v4

    iget v2, v2, Lcom/metamoji/mazec/ui/HwrCandidatesView$CandidateCell;->top:I

    int-to-float v2, v2

    iget v4, v0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->mFontDeltaY:F

    add-float/2addr v2, v4

    const/4 v4, 0x0

    move-object v8, v7

    move v7, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    move-object v7, v8

    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 432
    iget p1, p0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->mWidth:I

    iget p2, p0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->mHeight:I

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/mazec/ui/HwrCandidatesView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 456
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->notifyInputViewTouched()V

    .line 458
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 465
    :cond_0
    invoke-direct {p0, p1}, Lcom/metamoji/mazec/ui/HwrCandidatesView;->onTouchEnd(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 461
    :cond_1
    invoke-direct {p0, p1}, Lcom/metamoji/mazec/ui/HwrCandidatesView;->onTouchStart(Landroid/view/MotionEvent;)V

    :goto_0
    return v1
.end method

.method public setOnClickListener(Lcom/metamoji/mazec/ui/HwrCandidatesView$OnClickListener;)V
    .locals 0

    .line 753
    iput-object p1, p0, Lcom/metamoji/mazec/ui/HwrCandidatesView;->mOnClickListener:Lcom/metamoji/mazec/ui/HwrCandidatesView$OnClickListener;

    return-void
.end method
