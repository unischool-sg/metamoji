.class public Lcom/metamoji/mazec/ui/CnvCandidatesViewNA;
.super Lcom/metamoji/mazec/ui/CnvCandidatesView;
.source "CnvCandidatesViewNA.java"


# static fields
.field private static final COLOR_BORDER:I

.field private static final COLOR_CONV_DARK:I

.field private static final COLOR_CONV_DARK_TOUCHED:I

.field private static final COLOR_CONV_LIGHT:I

.field private static final COLOR_CONV_LIGHT_TOUCHED:I

.field private static final COLOR_CORR_DARK:I

.field private static final COLOR_CORR_DARK_TOUCHED:I

.field private static final COLOR_CORR_LIGHT:I

.field private static final COLOR_CORR_LIGHT_TOUCHED:I

.field private static final COLOR_INPUT:I

.field private static final COLOR_INPUT_TOUCHED:I


# instance fields
.field private mPaintFill:Landroid/graphics/Paint;

.field private mPaintStroke:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xcc

    const/16 v1, 0xff

    .line 15
    invoke-static {v1, v1, v1, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/metamoji/mazec/ui/CnvCandidatesViewNA;->COLOR_INPUT:I

    const/16 v0, 0xb8

    const/16 v2, 0xe6

    .line 16
    invoke-static {v1, v2, v2, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/metamoji/mazec/ui/CnvCandidatesViewNA;->COLOR_INPUT_TOUCHED:I

    .line 17
    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/metamoji/mazec/ui/CnvCandidatesViewNA;->COLOR_CONV_DARK:I

    const/16 v0, 0xcf

    .line 18
    invoke-static {v1, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/metamoji/mazec/ui/CnvCandidatesViewNA;->COLOR_CONV_DARK_TOUCHED:I

    const/16 v0, 0xf6

    .line 19
    invoke-static {v1, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/metamoji/mazec/ui/CnvCandidatesViewNA;->COLOR_CONV_LIGHT:I

    const/16 v0, 0xdd

    .line 20
    invoke-static {v1, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    sput v3, Lcom/metamoji/mazec/ui/CnvCandidatesViewNA;->COLOR_CONV_LIGHT_TOUCHED:I

    .line 21
    invoke-static {v1, v0, v0, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/metamoji/mazec/ui/CnvCandidatesViewNA;->COLOR_CORR_DARK:I

    const/16 v0, 0xc7

    .line 22
    invoke-static {v1, v0, v0, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/metamoji/mazec/ui/CnvCandidatesViewNA;->COLOR_CORR_DARK_TOUCHED:I

    const/16 v0, 0xed

    .line 23
    invoke-static {v1, v0, v0, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/metamoji/mazec/ui/CnvCandidatesViewNA;->COLOR_CORR_LIGHT:I

    const/16 v0, 0xd5

    .line 24
    invoke-static {v1, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/metamoji/mazec/ui/CnvCandidatesViewNA;->COLOR_CORR_LIGHT_TOUCHED:I

    .line 25
    invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/metamoji/mazec/ui/CnvCandidatesViewNA;->COLOR_BORDER:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/metamoji/mazec/ui/CnvCandidatesView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/metamoji/mazec/ui/CnvCandidatesView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected drawCellBackground(Landroid/graphics/Canvas;Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;IZ)V
    .locals 6

    .line 75
    rem-int/lit8 p3, p3, 0x2

    const/4 v0, 0x1

    if-nez p3, :cond_0

    move p3, v0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 77
    :goto_0
    iget-object v1, p2, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->word:Lcom/metamoji/mazec/converter/MmjiWord;

    invoke-virtual {v1}, Lcom/metamoji/mazec/converter/MmjiWord;->getWordType()I

    move-result v1

    if-eq v1, v0, :cond_8

    const/4 v0, 0x5

    if-eq v1, v0, :cond_4

    if-eqz p4, :cond_2

    if-eqz p3, :cond_1

    .line 92
    sget p3, Lcom/metamoji/mazec/ui/CnvCandidatesViewNA;->COLOR_CONV_DARK_TOUCHED:I

    goto :goto_1

    :cond_1
    sget p3, Lcom/metamoji/mazec/ui/CnvCandidatesViewNA;->COLOR_CONV_LIGHT_TOUCHED:I

    goto :goto_1

    :cond_2
    if-eqz p3, :cond_3

    .line 94
    sget p3, Lcom/metamoji/mazec/ui/CnvCandidatesViewNA;->COLOR_CONV_DARK:I

    goto :goto_1

    :cond_3
    sget p3, Lcom/metamoji/mazec/ui/CnvCandidatesViewNA;->COLOR_CONV_LIGHT:I

    goto :goto_1

    :cond_4
    if-eqz p4, :cond_6

    if-eqz p3, :cond_5

    .line 84
    sget p3, Lcom/metamoji/mazec/ui/CnvCandidatesViewNA;->COLOR_CORR_DARK_TOUCHED:I

    goto :goto_1

    :cond_5
    sget p3, Lcom/metamoji/mazec/ui/CnvCandidatesViewNA;->COLOR_CORR_LIGHT_TOUCHED:I

    goto :goto_1

    :cond_6
    if-eqz p3, :cond_7

    .line 86
    sget p3, Lcom/metamoji/mazec/ui/CnvCandidatesViewNA;->COLOR_CORR_DARK:I

    goto :goto_1

    :cond_7
    sget p3, Lcom/metamoji/mazec/ui/CnvCandidatesViewNA;->COLOR_CORR_LIGHT:I

    goto :goto_1

    :cond_8
    if-eqz p4, :cond_9

    .line 79
    sget p3, Lcom/metamoji/mazec/ui/CnvCandidatesViewNA;->COLOR_INPUT_TOUCHED:I

    goto :goto_1

    :cond_9
    sget p3, Lcom/metamoji/mazec/ui/CnvCandidatesViewNA;->COLOR_INPUT:I

    .line 98
    :goto_1
    iget-object p4, p0, Lcom/metamoji/mazec/ui/CnvCandidatesViewNA;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {p4, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    iget p3, p2, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->left:I

    int-to-float v1, p3

    iget p3, p2, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->top:I

    int-to-float v2, p3

    iget p3, p2, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->right:I

    int-to-float v3, p3

    iget p2, p2, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->bottom:I

    int-to-float v4, p2

    iget-object v5, p0, Lcom/metamoji/mazec/ui/CnvCandidatesViewNA;->mPaintFill:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected drawLineBorder(Landroid/graphics/Canvas;Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidatesLine;ZZ)V
    .locals 6

    .line 103
    iget p3, p2, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidatesLine;->left:I

    int-to-float v1, p3

    iget p3, p2, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidatesLine;->top:I

    int-to-float v2, p3

    iget p3, p2, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidatesLine;->right:I

    int-to-float v3, p3

    iget p2, p2, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidatesLine;->bottom:I

    int-to-float v4, p2

    iget-object v5, p0, Lcom/metamoji/mazec/ui/CnvCandidatesViewNA;->mPaintStroke:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected getBottomPadding(Landroid/content/res/Resources;)I
    .locals 0

    const/4 p1, 0x4

    return p1
.end method

.method protected getLeftPadding(Landroid/content/res/Resources;)I
    .locals 0

    const/4 p1, 0x4

    return p1
.end method

.method protected getRightPadding(Landroid/content/res/Resources;)I
    .locals 0

    const/4 p1, 0x4

    return p1
.end method

.method protected getRowHeight(Landroid/content/res/Resources;)I
    .locals 1

    .line 58
    const-string v0, "dimen.cnv_candates_bar_h"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1
.end method

.method public getTextPadding(Landroid/content/res/Resources;)I
    .locals 1

    .line 66
    const-string v0, "dimen.cnv_candates_bar_text_padding"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1
.end method

.method public getTextSize(Landroid/content/res/Resources;)F
    .locals 1

    .line 62
    const-string v0, "dimen.cnv_candates_bar_text_size"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    return p1
.end method

.method protected getTopPadding(Landroid/content/res/Resources;)I
    .locals 0

    const/4 p1, 0x4

    return p1
.end method

.method protected init()V
    .locals 3

    .line 41
    invoke-super {p0}, Lcom/metamoji/mazec/ui/CnvCandidatesView;->init()V

    .line 43
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x1

    .line 44
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 45
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 46
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 47
    iput-object v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesViewNA;->mPaintFill:Landroid/graphics/Paint;

    .line 49
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 50
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/high16 v1, 0x40000000    # 2.0f

    .line 51
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 52
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 53
    sget v1, Lcom/metamoji/mazec/ui/CnvCandidatesViewNA;->COLOR_BORDER:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 54
    iput-object v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesViewNA;->mPaintStroke:Landroid/graphics/Paint;

    return-void
.end method
