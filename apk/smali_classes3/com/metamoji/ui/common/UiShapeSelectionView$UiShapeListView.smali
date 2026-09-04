.class Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;
.super Landroid/view/View;
.source "UiShapeSelectionView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/common/UiShapeSelectionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UiShapeListView"
.end annotation


# instance fields
.field private border:Landroid/graphics/RectF;

.field private frectWork:Landroid/graphics/RectF;

.field private mCellHeight:I

.field private mCellHorzSpacing:I

.field private mCellVertSpacing:I

.field private mCellWidth:I

.field private mColor:Landroid/graphics/Paint;

.field private mColumnCount:I

.field private mLabelHeight:I

.field mOwner:Lcom/metamoji/ui/common/UiShapeSelectionView;

.field private mRowCount:I

.field private mSelected:I

.field mSelectedListener:Lcom/metamoji/ui/common/UiShapeSelectionView$IShapeSelected;

.field private mSideMargin:I

.field private mTopMargin:I

.field final synthetic this$0:Lcom/metamoji/ui/common/UiShapeSelectionView;


# direct methods
.method public constructor <init>(Lcom/metamoji/ui/common/UiShapeSelectionView;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 177
    iput-object p1, p0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->this$0:Lcom/metamoji/ui/common/UiShapeSelectionView;

    .line 178
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x5

    .line 155
    iput p2, p0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mColumnCount:I

    const/4 p2, 0x6

    .line 156
    iput p2, p0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mRowCount:I

    const/4 p2, -0x1

    .line 157
    iput p2, p0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mSelected:I

    .line 158
    new-instance p2, Landroid/graphics/Paint;

    const/4 v0, 0x3

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mColor:Landroid/graphics/Paint;

    const/4 p2, 0x0

    .line 161
    iput-object p2, p0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mSelectedListener:Lcom/metamoji/ui/common/UiShapeSelectionView$IShapeSelected;

    const/16 p2, 0x38

    .line 164
    iput p2, p0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mCellWidth:I

    .line 165
    iput p2, p0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mCellHeight:I

    const/16 p2, 0xa

    .line 166
    iput p2, p0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mLabelHeight:I

    const/16 p2, 0x1e

    .line 167
    iput p2, p0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mCellHorzSpacing:I

    const/16 p2, 0x19

    .line 168
    iput p2, p0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mCellVertSpacing:I

    const/16 p2, 0x14

    .line 169
    iput p2, p0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mSideMargin:I

    .line 170
    iput p2, p0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mTopMargin:I

    .line 239
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->frectWork:Landroid/graphics/RectF;

    .line 240
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->border:Landroid/graphics/RectF;

    const/4 p2, 0x1

    .line 179
    invoke-virtual {p1, p2}, Lcom/metamoji/ui/common/UiShapeSelectionView;->setFillViewport(Z)V

    .line 181
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 182
    sget p2, Lcom/metamoji/noteanytime/R$dimen;->ShapeListCellWidth:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mCellWidth:I

    .line 183
    sget p2, Lcom/metamoji/noteanytime/R$dimen;->ShapeListCellHeight:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mCellHeight:I

    const/high16 p2, 0x41400000    # 12.0f

    .line 184
    invoke-static {p2}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mLabelHeight:I

    .line 185
    sget p2, Lcom/metamoji/noteanytime/R$dimen;->ShapeListCellHorzSpacing:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mCellHorzSpacing:I

    .line 186
    sget p2, Lcom/metamoji/noteanytime/R$dimen;->ShapeListCellVertSpacing:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mCellVertSpacing:I

    .line 187
    sget p2, Lcom/metamoji/noteanytime/R$dimen;->ShapeListSideMargin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mSideMargin:I

    .line 188
    sget p2, Lcom/metamoji/noteanytime/R$dimen;->ShapeListTopMargin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mTopMargin:I

    return-void
.end method

.method private calcSize(F)V
    .locals 2

    .line 234
    iget v0, p0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mSideMargin:I

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mCellHorzSpacing:I

    int-to-float v1, v0

    add-float/2addr p1, v1

    iget v1, p0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mCellWidth:I

    add-int/2addr v1, v0

    int-to-float v0, v1

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;I)I

    move-result p1

    iput p1, p0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mColumnCount:I

    .line 235
    iget-object p1, p0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->this$0:Lcom/metamoji/ui/common/UiShapeSelectionView;

    invoke-static {p1}, Lcom/metamoji/ui/common/UiShapeSelectionView;->-$$Nest$fgettypeflowchart(Lcom/metamoji/ui/common/UiShapeSelectionView;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/metamoji/ui/common/UiShapeSelectionView;->-$$Nest$sfgetFlowChartListing()[I

    move-result-object p1

    array-length p1, p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/metamoji/ui/common/UiShapeSelectionView;->-$$Nest$sfgetShapeListing()[I

    move-result-object p1

    array-length p1, p1

    .line 236
    :goto_0
    iget v1, p0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mColumnCount:I

    add-int/2addr p1, v1

    sub-int/2addr p1, v0

    div-int/2addr p1, v1

    iput p1, p0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mRowCount:I

    return-void
.end method


# virtual methods
.method public createContent(Lcom/metamoji/ui/common/UiShapeSelectionView;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mOwner:Lcom/metamoji/ui/common/UiShapeSelectionView;

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 27

    move-object/from16 v0, p0

    const/high16 v1, 0x41200000    # 10.0f

    .line 254
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v7

    .line 255
    iget-object v1, v0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->frectWork:Landroid/graphics/RectF;

    iget v2, v0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mSideMargin:I

    const/4 v8, 0x1

    add-int/2addr v2, v8

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 256
    iget-object v1, v0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->frectWork:Landroid/graphics/RectF;

    iget v2, v0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mTopMargin:I

    add-int/2addr v2, v8

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 257
    iget-object v1, v0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->border:Landroid/graphics/RectF;

    iget v2, v0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mSideMargin:I

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 258
    iget-object v1, v0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->border:Landroid/graphics/RectF;

    iget v2, v0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mTopMargin:I

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 260
    iget-object v1, v0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->this$0:Lcom/metamoji/ui/common/UiShapeSelectionView;

    invoke-static {v1}, Lcom/metamoji/ui/common/UiShapeSelectionView;->-$$Nest$fgettypeflowchart(Lcom/metamoji/ui/common/UiShapeSelectionView;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/metamoji/ui/common/UiShapeSelectionView;->-$$Nest$sfgetFlowChartListing()[I

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/metamoji/ui/common/UiShapeSelectionView;->-$$Nest$sfgetShapeListing()[I

    move-result-object v1

    :goto_0
    move-object v9, v1

    .line 262
    iget v1, v0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mCellHeight:I

    .line 263
    iget-object v2, v0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->this$0:Lcom/metamoji/ui/common/UiShapeSelectionView;

    invoke-static {v2}, Lcom/metamoji/ui/common/UiShapeSelectionView;->-$$Nest$fgettypeflowchart(Lcom/metamoji/ui/common/UiShapeSelectionView;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 264
    iget v2, v0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mLabelHeight:I

    add-int/2addr v1, v2

    :cond_1
    move v10, v1

    .line 267
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 268
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 269
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/16 v2, 0xff

    const/4 v11, 0x0

    .line 271
    invoke-static {v2, v2, v11, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    move v12, v11

    .line 273
    :goto_1
    array-length v1, v9

    if-ge v12, v1, :cond_19

    .line 274
    iget-object v1, v0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->frectWork:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v3, v0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mCellWidth:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    const/high16 v13, 0x40000000    # 2.0f

    sub-float/2addr v2, v13

    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 275
    iget-object v1, v0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->frectWork:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->top:F

    iget v3, v0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mCellHeight:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    sub-float/2addr v2, v13

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    .line 276
    iget-object v1, v0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->border:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v3, v0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mCellWidth:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 277
    iget-object v1, v0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->border:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->top:F

    iget v3, v0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mCellHeight:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    .line 281
    sget-object v1, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;->TRIANGLE_1:Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;

    move v2, v11

    .line 282
    :goto_2
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;->values()[Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 283
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;->values()[Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;->intValue()I

    move-result v3

    aget v4, v9, v12

    if-ne v3, v4, :cond_2

    .line 284
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;->values()[Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;

    move-result-object v1

    aget-object v1, v1, v2

    goto :goto_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    move-object v14, v1

    .line 289
    aget v1, v9, v12

    invoke-static {v1}, Lcom/metamoji/ui/UIUtils;->isLineArrow(I)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v15, 0x0

    const/4 v4, 0x0

    const/high16 v6, 0x3f000000    # 0.5f

    if-eqz v1, :cond_8

    move-object v1, v4

    .line 291
    new-instance v4, Lcom/metamoji/nt/share/NtPenStyle;

    const/high16 v16, 0x41000000    # 8.0f

    iget-object v3, v0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mOwner:Lcom/metamoji/ui/common/UiShapeSelectionView;

    invoke-static {v3}, Lcom/metamoji/ui/common/UiShapeSelectionView;->-$$Nest$fgetmStyle(Lcom/metamoji/ui/common/UiShapeSelectionView;)Lcom/metamoji/nt/share/NtPenStyle;

    move-result-object v3

    invoke-direct {v4, v3}, Lcom/metamoji/nt/share/NtPenStyle;-><init>(Lcom/metamoji/nt/share/NtPenStyle;)V

    .line 292
    aget v3, v9, v12

    sget-object v17, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;->LINE_ARROW:Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;

    invoke-virtual/range {v17 .. v17}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;->intValue()I

    move-result v17

    sub-int v3, v3, v17

    invoke-static {v3}, Lcom/metamoji/ui/UIUtils;->getArrowStyle(I)Lcom/metamoji/nt/share/NtPenStyle;

    move-result-object v3

    const/high16 v17, 0x40a00000    # 5.0f

    .line 293
    iget-object v5, v3, Lcom/metamoji/nt/share/NtPenStyle;->arrowType:Ljava/lang/String;

    iput-object v5, v4, Lcom/metamoji/nt/share/NtPenStyle;->arrowType:Ljava/lang/String;

    .line 294
    iget-object v3, v3, Lcom/metamoji/nt/share/NtPenStyle;->arrowKinds:Ljava/lang/String;

    iput-object v3, v4, Lcom/metamoji/nt/share/NtPenStyle;->arrowKinds:Ljava/lang/String;

    .line 296
    iget-object v3, v0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mOwner:Lcom/metamoji/ui/common/UiShapeSelectionView;

    invoke-static {v3}, Lcom/metamoji/ui/common/UiShapeSelectionView;->-$$Nest$fgetmStyle(Lcom/metamoji/ui/common/UiShapeSelectionView;)Lcom/metamoji/nt/share/NtPenStyle;

    move-result-object v3

    iget v3, v3, Lcom/metamoji/nt/share/NtPenStyle;->lineWidth:F

    div-float/2addr v3, v13

    cmpg-float v5, v3, v6

    if-gtz v5, :cond_4

    move v5, v6

    goto :goto_4

    :cond_4
    cmpl-float v5, v3, v17

    if-lez v5, :cond_5

    move/from16 v5, v17

    goto :goto_4

    :cond_5
    move v5, v3

    .line 305
    :goto_4
    iget-object v3, v0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mOwner:Lcom/metamoji/ui/common/UiShapeSelectionView;

    invoke-static {v3}, Lcom/metamoji/ui/common/UiShapeSelectionView;->-$$Nest$fgetmStyle(Lcom/metamoji/ui/common/UiShapeSelectionView;)Lcom/metamoji/nt/share/NtPenStyle;

    move-result-object v3

    iget-object v3, v3, Lcom/metamoji/nt/share/NtPenStyle;->lineDash:Ljava/util/List;

    if-eqz v3, :cond_7

    .line 306
    new-array v1, v2, [F

    cmpg-float v2, v5, v6

    if-gtz v2, :cond_6

    .line 308
    aput v13, v1, v11

    .line 309
    aput v13, v1, v8

    goto :goto_5

    .line 312
    :cond_6
    aput v16, v1, v11

    .line 313
    aput v16, v1, v8

    .line 315
    :goto_5
    aget v2, v1, v11

    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v2

    aput v2, v1, v11

    .line 316
    aget v2, v1, v8

    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v2

    aput v2, v1, v8

    :cond_7
    move-object v6, v1

    .line 318
    invoke-static {v5}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v5

    .line 319
    iget-object v1, v0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mOwner:Lcom/metamoji/ui/common/UiShapeSelectionView;

    invoke-static {v1}, Lcom/metamoji/ui/common/UiShapeSelectionView;->-$$Nest$fgetmStyle(Lcom/metamoji/ui/common/UiShapeSelectionView;)Lcom/metamoji/nt/share/NtPenStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/nt/share/NtPenStyle;->getLineColor()I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/metamoji/nt/share/NtPenStyle;->setLineColor(I)V

    .line 320
    iget-object v1, v0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mOwner:Lcom/metamoji/ui/common/UiShapeSelectionView;

    invoke-static {v1}, Lcom/metamoji/ui/common/UiShapeSelectionView;->-$$Nest$fgetmStyle(Lcom/metamoji/ui/common/UiShapeSelectionView;)Lcom/metamoji/nt/share/NtPenStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/nt/share/NtPenStyle;->getLineAlpha()F

    move-result v1

    invoke-virtual {v4, v1}, Lcom/metamoji/nt/share/NtPenStyle;->setLineAlpha(F)V

    .line 321
    iget-object v1, v0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mColor:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 322
    iget-object v1, v0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mColor:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 323
    iget-object v2, v0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mColor:Landroid/graphics/Paint;

    iget-object v3, v0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->border:Landroid/graphics/RectF;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lcom/metamoji/ui/UIUtils;->drawArrow(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;Lcom/metamoji/nt/share/NtPenStyle;F[F)V

    move-object v3, v1

    goto :goto_6

    :cond_8
    move-object/from16 v3, p1

    move-object v1, v4

    const/high16 v16, 0x41000000    # 8.0f

    const/high16 v17, 0x40a00000    # 5.0f

    .line 325
    invoke-static {v14}, Lcom/metamoji/ui/UIUtils;->isShapeFlowChartArrow(Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 326
    iget-object v1, v0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mColor:Landroid/graphics/Paint;

    iget-object v2, v0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->border:Landroid/graphics/RectF;

    iget-object v4, v0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->this$0:Lcom/metamoji/ui/common/UiShapeSelectionView;

    invoke-static {v4}, Lcom/metamoji/ui/common/UiShapeSelectionView;->-$$Nest$fgetmStyle(Lcom/metamoji/ui/common/UiShapeSelectionView;)Lcom/metamoji/nt/share/NtPenStyle;

    move-result-object v4

    invoke-static {v3, v1, v14, v2, v4}, Lcom/metamoji/ui/UIUtils;->drawFlowChartArrow(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;Landroid/graphics/RectF;Lcom/metamoji/nt/share/NtPenStyle;)V

    :goto_6
    move/from16 v26, v8

    move v8, v11

    move/from16 v17, v13

    move v6, v15

    goto/16 :goto_c

    .line 329
    :cond_9
    new-instance v4, Lcom/metamoji/cm/RectEx;

    iget-object v5, v0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->border:Landroid/graphics/RectF;

    invoke-direct {v4, v5}, Lcom/metamoji/cm/RectEx;-><init>(Landroid/graphics/RectF;)V

    .line 331
    iget-object v5, v0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mOwner:Lcom/metamoji/ui/common/UiShapeSelectionView;

    invoke-static {v5}, Lcom/metamoji/ui/common/UiShapeSelectionView;->-$$Nest$fgetmStyle(Lcom/metamoji/ui/common/UiShapeSelectionView;)Lcom/metamoji/nt/share/NtPenStyle;

    move-result-object v5

    iget v5, v5, Lcom/metamoji/nt/share/NtPenStyle;->lineWidth:F

    div-float/2addr v5, v13

    cmpg-float v18, v5, v6

    if-gtz v18, :cond_a

    move v5, v6

    move/from16 v17, v5

    goto :goto_7

    :cond_a
    cmpl-float v18, v5, v17

    if-lez v18, :cond_b

    move/from16 v5, v17

    :cond_b
    move/from16 v17, v6

    .line 340
    :goto_7
    iget-object v6, v0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mOwner:Lcom/metamoji/ui/common/UiShapeSelectionView;

    invoke-static {v6}, Lcom/metamoji/ui/common/UiShapeSelectionView;->-$$Nest$fgetmStyle(Lcom/metamoji/ui/common/UiShapeSelectionView;)Lcom/metamoji/nt/share/NtPenStyle;

    move-result-object v6

    iget-object v6, v6, Lcom/metamoji/nt/share/NtPenStyle;->lineDash:Ljava/util/List;

    if-eqz v6, :cond_10

    .line 341
    new-array v2, v2, [F

    cmpg-float v6, v5, v17

    if-gtz v6, :cond_c

    .line 343
    aput v13, v2, v11

    .line 344
    aput v13, v2, v8

    goto :goto_8

    :cond_c
    cmpg-float v6, v5, v13

    const/high16 v17, 0x40800000    # 4.0f

    if-gtz v6, :cond_d

    .line 347
    aput v17, v2, v11

    .line 348
    aput v17, v2, v8

    goto :goto_8

    :cond_d
    cmpg-float v6, v5, v17

    if-gtz v6, :cond_e

    const/high16 v6, 0x40c00000    # 6.0f

    .line 351
    aput v6, v2, v11

    .line 352
    aput v6, v2, v8

    goto :goto_8

    :cond_e
    cmpg-float v6, v5, v16

    if-gtz v6, :cond_f

    const/high16 v6, 0x41400000    # 12.0f

    .line 355
    aput v6, v2, v11

    .line 356
    aput v6, v2, v8

    goto :goto_8

    :cond_f
    const/high16 v6, 0x41600000    # 14.0f

    .line 359
    aput v6, v2, v11

    .line 360
    aput v6, v2, v8

    .line 362
    :goto_8
    aget v6, v2, v11

    invoke-static {v6}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v6

    aput v6, v2, v11

    .line 363
    aget v6, v2, v8

    invoke-static {v6}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v6

    aput v6, v2, v8

    goto :goto_9

    :cond_10
    move-object v2, v1

    .line 365
    :goto_9
    invoke-static {v5}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v5

    .line 366
    invoke-static {v14, v4}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExamples;->createPathForType(Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;Lcom/metamoji/cm/RectEx;)Landroid/graphics/Path;

    move-result-object v4

    .line 369
    iget-object v6, v0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mOwner:Lcom/metamoji/ui/common/UiShapeSelectionView;

    invoke-static {v6}, Lcom/metamoji/ui/common/UiShapeSelectionView;->-$$Nest$fgetmStyle(Lcom/metamoji/ui/common/UiShapeSelectionView;)Lcom/metamoji/nt/share/NtPenStyle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/metamoji/nt/share/NtPenStyle;->isFillType()Z

    move-result v6

    const/high16 v16, 0x437f0000    # 255.0f

    if-eqz v6, :cond_13

    iget-object v6, v0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mOwner:Lcom/metamoji/ui/common/UiShapeSelectionView;

    invoke-static {v6}, Lcom/metamoji/ui/common/UiShapeSelectionView;->-$$Nest$fgetmStyle(Lcom/metamoji/ui/common/UiShapeSelectionView;)Lcom/metamoji/nt/share/NtPenStyle;

    move-result-object v6

    iget-object v6, v6, Lcom/metamoji/nt/share/NtPenStyle;->fillType:Ljava/lang/String;

    move/from16 v17, v13

    const-string v13, "none"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_12

    iget-object v6, v0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mOwner:Lcom/metamoji/ui/common/UiShapeSelectionView;

    invoke-static {v6}, Lcom/metamoji/ui/common/UiShapeSelectionView;->-$$Nest$fgetmStyle(Lcom/metamoji/ui/common/UiShapeSelectionView;)Lcom/metamoji/nt/share/NtPenStyle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/metamoji/nt/share/NtPenStyle;->getFillColors()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_12

    .line 370
    iget-object v6, v0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mColor:Landroid/graphics/Paint;

    sget-object v13, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v13}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 371
    iget-object v6, v0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mColor:Landroid/graphics/Paint;

    invoke-virtual {v6, v15}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 373
    iget-object v6, v0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mOwner:Lcom/metamoji/ui/common/UiShapeSelectionView;

    invoke-static {v6}, Lcom/metamoji/ui/common/UiShapeSelectionView;->-$$Nest$fgetmStyle(Lcom/metamoji/ui/common/UiShapeSelectionView;)Lcom/metamoji/nt/share/NtPenStyle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/metamoji/nt/share/NtPenStyle;->getFillColors()Ljava/util/List;

    move-result-object v6

    .line 374
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v13

    if-le v13, v8, :cond_11

    .line 375
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    .line 376
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 377
    new-instance v18, Landroid/graphics/LinearGradient;

    move/from16 v26, v8

    iget-object v8, v0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->frectWork:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    iget-object v15, v0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->frectWork:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->top:F

    iget-object v11, v0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->frectWork:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->right:F

    iget-object v1, v0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->frectWork:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v23

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v24

    sget-object v25, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move/from16 v22, v1

    move/from16 v19, v8

    move/from16 v21, v11

    move/from16 v20, v15

    invoke-direct/range {v18 .. v25}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    move-object/from16 v1, v18

    .line 378
    iget-object v6, v0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mColor:Landroid/graphics/Paint;

    iget-object v8, v0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mOwner:Lcom/metamoji/ui/common/UiShapeSelectionView;

    invoke-static {v8}, Lcom/metamoji/ui/common/UiShapeSelectionView;->-$$Nest$fgetmStyle(Lcom/metamoji/ui/common/UiShapeSelectionView;)Lcom/metamoji/nt/share/NtPenStyle;

    move-result-object v8

    iget v8, v8, Lcom/metamoji/nt/share/NtPenStyle;->fillAlpha:F

    mul-float v8, v8, v16

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-static {v8}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 379
    iget-object v6, v0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mColor:Landroid/graphics/Paint;

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 380
    iget-object v1, v0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mColor:Landroid/graphics/Paint;

    invoke-virtual {v3, v4, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 381
    iget-object v1, v0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mColor:Landroid/graphics/Paint;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/4 v8, 0x0

    goto :goto_a

    :cond_11
    move/from16 v26, v8

    .line 384
    iget-object v1, v0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mColor:Landroid/graphics/Paint;

    const/4 v8, 0x0

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 385
    iget-object v1, v0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mColor:Landroid/graphics/Paint;

    iget-object v6, v0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mOwner:Lcom/metamoji/ui/common/UiShapeSelectionView;

    invoke-static {v6}, Lcom/metamoji/ui/common/UiShapeSelectionView;->-$$Nest$fgetmStyle(Lcom/metamoji/ui/common/UiShapeSelectionView;)Lcom/metamoji/nt/share/NtPenStyle;

    move-result-object v6

    iget v6, v6, Lcom/metamoji/nt/share/NtPenStyle;->fillAlpha:F

    mul-float v6, v6, v16

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-static {v6}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 386
    iget-object v1, v0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mColor:Landroid/graphics/Paint;

    invoke-virtual {v3, v4, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_a

    :cond_12
    move/from16 v26, v8

    move v8, v11

    goto :goto_a

    :cond_13
    move/from16 v26, v8

    move v8, v11

    move/from16 v17, v13

    .line 391
    :goto_a
    iget-object v1, v0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mColor:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 392
    iget-object v1, v0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mColor:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    if-eqz v2, :cond_14

    .line 394
    iget-object v1, v0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mColor:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/DashPathEffect;

    const/4 v6, 0x0

    invoke-direct {v5, v2, v6}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    goto :goto_b

    :cond_14
    const/4 v6, 0x0

    .line 396
    :goto_b
    iget-object v1, v0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mColor:Landroid/graphics/Paint;

    iget-object v2, v0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mOwner:Lcom/metamoji/ui/common/UiShapeSelectionView;

    invoke-static {v2}, Lcom/metamoji/ui/common/UiShapeSelectionView;->-$$Nest$fgetmStyle(Lcom/metamoji/ui/common/UiShapeSelectionView;)Lcom/metamoji/nt/share/NtPenStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/nt/share/NtPenStyle;->getLineColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 397
    iget-object v1, v0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mColor:Landroid/graphics/Paint;

    iget-object v2, v0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mOwner:Lcom/metamoji/ui/common/UiShapeSelectionView;

    invoke-static {v2}, Lcom/metamoji/ui/common/UiShapeSelectionView;->-$$Nest$fgetmStyle(Lcom/metamoji/ui/common/UiShapeSelectionView;)Lcom/metamoji/nt/share/NtPenStyle;

    move-result-object v2

    iget v2, v2, Lcom/metamoji/nt/share/NtPenStyle;->lineAlpha:F

    mul-float v2, v2, v16

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 398
    iget-object v1, v0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mColor:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 399
    iget-object v1, v0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mColor:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 400
    iget-object v1, v0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mColor:Landroid/graphics/Paint;

    invoke-virtual {v3, v4, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 401
    iget-object v1, v0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mColor:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 403
    :goto_c
    iget-object v1, v0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->this$0:Lcom/metamoji/ui/common/UiShapeSelectionView;

    invoke-static {v1}, Lcom/metamoji/ui/common/UiShapeSelectionView;->-$$Nest$fgettypeflowchart(Lcom/metamoji/ui/common/UiShapeSelectionView;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 404
    invoke-static {v14}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExamples;->getLabelForType(Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    move v15, v6

    :goto_d
    const/16 v4, 0x8

    if-lt v2, v4, :cond_16

    .line 407
    iget-object v4, v0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->this$0:Lcom/metamoji/ui/common/UiShapeSelectionView;

    invoke-static {v4}, Lcom/metamoji/ui/common/UiShapeSelectionView;->-$$Nest$fgetmLabelPaint(Lcom/metamoji/ui/common/UiShapeSelectionView;)Landroid/graphics/Paint;

    move-result-object v4

    int-to-float v5, v2

    invoke-static {v5}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 408
    iget-object v4, v0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->this$0:Lcom/metamoji/ui/common/UiShapeSelectionView;

    invoke-static {v4}, Lcom/metamoji/ui/common/UiShapeSelectionView;->-$$Nest$fgetmLabelPaint(Lcom/metamoji/ui/common/UiShapeSelectionView;)Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v15

    .line 409
    iget v4, v0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mCellWidth:I

    int-to-float v4, v4

    sub-float/2addr v4, v15

    div-float v4, v4, v17

    neg-float v5, v7

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_15

    goto :goto_e

    :cond_15
    add-int/lit8 v2, v2, -0x1

    goto :goto_d

    .line 413
    :cond_16
    :goto_e
    iget-object v2, v0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->frectWork:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget v4, v0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mCellWidth:I

    int-to-float v4, v4

    sub-float/2addr v4, v15

    div-float v4, v4, v17

    add-float/2addr v2, v4

    iget-object v4, v0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->frectWork:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    int-to-float v5, v10

    add-float/2addr v4, v5

    iget-object v5, v0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->this$0:Lcom/metamoji/ui/common/UiShapeSelectionView;

    invoke-static {v5}, Lcom/metamoji/ui/common/UiShapeSelectionView;->-$$Nest$fgetmLabelPaint(Lcom/metamoji/ui/common/UiShapeSelectionView;)Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_17
    add-int/lit8 v12, v12, 0x1

    .line 416
    iget v1, v0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mColumnCount:I

    rem-int v1, v12, v1

    .line 422
    iget-object v2, v0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->frectWork:Landroid/graphics/RectF;

    if-nez v1, :cond_18

    .line 417
    iget v1, v0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mSideMargin:I

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    iput v1, v2, Landroid/graphics/RectF;->left:F

    .line 418
    iget-object v1, v0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->border:Landroid/graphics/RectF;

    iget v2, v0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mSideMargin:I

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 419
    iget-object v1, v0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->frectWork:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->top:F

    iget v4, v0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mCellVertSpacing:I

    add-int/2addr v4, v10

    int-to-float v4, v4

    add-float/2addr v2, v4

    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 420
    iget-object v1, v0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->border:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->top:F

    iget v4, v0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mCellVertSpacing:I

    add-int/2addr v4, v10

    int-to-float v4, v4

    add-float/2addr v2, v4

    iput v2, v1, Landroid/graphics/RectF;->top:F

    goto :goto_f

    .line 422
    :cond_18
    iget v1, v2, Landroid/graphics/RectF;->left:F

    iget v4, v0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mCellWidth:I

    iget v5, v0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mCellHorzSpacing:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    add-float/2addr v1, v4

    iput v1, v2, Landroid/graphics/RectF;->left:F

    .line 423
    iget-object v1, v0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->border:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v4, v0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mCellWidth:I

    iget v5, v0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mCellHorzSpacing:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    add-float/2addr v2, v4

    iput v2, v1, Landroid/graphics/RectF;->left:F

    :goto_f
    move v11, v8

    move/from16 v8, v26

    goto/16 :goto_1

    :cond_19
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 216
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 217
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 218
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 219
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    int-to-float p2, p1

    .line 222
    invoke-direct {p0, p2}, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->calcSize(F)V

    .line 223
    iget p2, p0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mCellHeight:I

    .line 224
    iget-object v0, p0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->this$0:Lcom/metamoji/ui/common/UiShapeSelectionView;

    invoke-static {v0}, Lcom/metamoji/ui/common/UiShapeSelectionView;->-$$Nest$fgettypeflowchart(Lcom/metamoji/ui/common/UiShapeSelectionView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget v0, p0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mLabelHeight:I

    add-int/2addr p2, v0

    .line 227
    :cond_0
    iget v0, p0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mCellVertSpacing:I

    add-int/2addr p2, v0

    .line 228
    iget v1, p0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mRowCount:I

    mul-int/2addr v1, p2

    iget p2, p0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mTopMargin:I

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr v1, p2

    sub-int/2addr v1, v0

    .line 229
    invoke-virtual {p0, p1, v1}, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "X="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Touch"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 438
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 439
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 440
    iget v1, p0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mSideMargin:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mCellHorzSpacing:I

    int-to-float v2, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    iget v2, p0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mCellWidth:I

    add-int/2addr v2, v1

    int-to-float v1, v2

    div-float/2addr v0, v1

    float-to-int v0, v0

    const/4 v1, 0x0

    if-ltz v0, :cond_3

    .line 441
    iget v2, p0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mColumnCount:I

    if-gt v2, v0, :cond_0

    goto :goto_0

    .line 445
    :cond_0
    iget v2, p0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mCellHeight:I

    .line 446
    iget-object v4, p0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->this$0:Lcom/metamoji/ui/common/UiShapeSelectionView;

    invoke-static {v4}, Lcom/metamoji/ui/common/UiShapeSelectionView;->-$$Nest$fgettypeflowchart(Lcom/metamoji/ui/common/UiShapeSelectionView;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 447
    iget v4, p0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mLabelHeight:I

    add-int/2addr v2, v4

    .line 449
    :cond_1
    iget v4, p0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mTopMargin:I

    int-to-float v4, v4

    sub-float/2addr p1, v4

    iget v4, p0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mCellVertSpacing:I

    int-to-float v5, v4

    div-float/2addr v5, v3

    add-float/2addr p1, v5

    add-int/2addr v2, v4

    int-to-float v2, v2

    div-float/2addr p1, v2

    float-to-int p1, p1

    if-ltz p1, :cond_3

    .line 450
    iget v2, p0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mRowCount:I

    if-gt v2, p1, :cond_2

    goto :goto_0

    .line 455
    :cond_2
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->pos2index(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->selectItem(I)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v1
.end method

.method pos2index(II)I
    .locals 1

    .line 467
    iget v0, p0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mColumnCount:I

    mul-int/2addr p1, v0

    add-int/2addr p1, p2

    .line 468
    iget-object p2, p0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->this$0:Lcom/metamoji/ui/common/UiShapeSelectionView;

    invoke-static {p2}, Lcom/metamoji/ui/common/UiShapeSelectionView;->-$$Nest$fgettypeflowchart(Lcom/metamoji/ui/common/UiShapeSelectionView;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/metamoji/ui/common/UiShapeSelectionView;->-$$Nest$sfgetFlowChartListing()[I

    move-result-object p2

    array-length p2, p2

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/metamoji/ui/common/UiShapeSelectionView;->-$$Nest$sfgetShapeListing()[I

    move-result-object p2

    array-length p2, p2

    :goto_0
    if-ltz p1, :cond_1

    if-ge p1, p2, :cond_1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public selectItem(I)Z
    .locals 2

    .line 545
    iget-object v0, p0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->this$0:Lcom/metamoji/ui/common/UiShapeSelectionView;

    invoke-static {v0}, Lcom/metamoji/ui/common/UiShapeSelectionView;->-$$Nest$fgettypeflowchart(Lcom/metamoji/ui/common/UiShapeSelectionView;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/metamoji/ui/common/UiShapeSelectionView;->-$$Nest$sfgetFlowChartListing()[I

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/metamoji/ui/common/UiShapeSelectionView;->-$$Nest$sfgetShapeListing()[I

    move-result-object v0

    .line 546
    :goto_0
    array-length v1, v0

    if-lt p1, v1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 558
    :cond_1
    iput p1, p0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mSelected:I

    if-ltz p1, :cond_2

    .line 563
    iget-object v1, p0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mSelectedListener:Lcom/metamoji/ui/common/UiShapeSelectionView$IShapeSelected;

    if-eqz v1, :cond_2

    .line 564
    aget p1, v0, p1

    invoke-interface {v1, p1}, Lcom/metamoji/ui/common/UiShapeSelectionView$IShapeSelected;->onShapeSelected(I)V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public setSelectedListener(Lcom/metamoji/ui/common/UiShapeSelectionView$IShapeSelected;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->mSelectedListener:Lcom/metamoji/ui/common/UiShapeSelectionView$IShapeSelected;

    return-void
.end method
