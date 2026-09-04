.class public final Lcom/metamoji/un/survey/UnSurveyChartUtil$Companion;
.super Ljava/lang/Object;
.source "UnSurveyChartUtil.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/survey/UnSurveyChartUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0007\n\u0002\u0010 \n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007J$\u0010\u0010\u001a\u00020\r2\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00010\u00122\u0006\u0010\u000e\u001a\u00020\u000fH\u0007J$\u0010\u0013\u001a\u00020\r2\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00010\u00122\u0006\u0010\u000e\u001a\u00020\u000fH\u0007J\u0016\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018J\u0010\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001aH\u0007J\u0010\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001dH\u0002J\u0010\u0010\u001f\u001a\u00020\u001a2\u0006\u0010 \u001a\u00020\u001aH\u0007J\u0010\u0010!\u001a\u00020\u001d2\u0006\u0010\"\u001a\u00020\u001aH\u0007J\u001e\u0010#\u001a\u00020\u001d2\u000c\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u00010%2\u0006\u0010&\u001a\u00020\u001aH\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/metamoji/un/survey/UnSurveyChartUtil$Companion;",
        "",
        "<init>",
        "()V",
        "CHART_MARGIN",
        "",
        "CHART_WIDTH",
        "CHART_HEIGHT",
        "BAR_CHART_WIDTH",
        "BAR_CHART_HEIGHT",
        "PIE_CHART_WIDTH",
        "PIE_CHART_HEIGHT",
        "createBlankChartImage",
        "Landroid/graphics/Bitmap;",
        "blankMsg",
        "",
        "createBarChartImage",
        "chartData",
        "",
        "createPieChartImage",
        "createChartImage",
        "chart",
        "Lcom/metamoji/ch/IChChart;",
        "chartSize",
        "Lcom/metamoji/ch/ChSize;",
        "fillColor",
        "",
        "index",
        "toRgbItem",
        "",
        "item",
        "chooseTextColor",
        "color",
        "barChartFontSize",
        "itemCount",
        "pieChartFontSize",
        "result",
        "",
        "totalCount",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/survey/UnSurveyChartUtil$Companion;-><init>()V

    return-void
.end method

.method private final toRgbItem(D)D
    .locals 2

    const/16 v0, 0xff

    int-to-double v0, v0

    div-double/2addr p1, v0

    const-wide v0, 0x3fa41c8216c61523L    # 0.03928

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    const-wide v0, 0x4029d70a3d70a3d7L    # 12.92

    div-double/2addr p1, v0

    return-wide p1

    :cond_0
    const-wide v0, 0x3fac28f5c28f5c29L    # 0.055

    add-double/2addr p1, v0

    const-wide v0, 0x3ff0e147ae147ae1L    # 1.055

    div-double/2addr p1, v0

    const-wide v0, 0x4003333333333333L    # 2.4

    .line 190
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    return-wide p1
.end method


# virtual methods
.method public final barChartFontSize(I)D
    .locals 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/16 v0, 0xf

    const-wide/high16 v1, 0x403e000000000000L    # 30.0

    if-le p1, v0, :cond_0

    int-to-double v3, p1

    const-wide/high16 v5, 0x402e000000000000L    # 15.0

    sub-double/2addr v3, v5

    const-wide/high16 v5, 0x4008000000000000L    # 3.0

    mul-double/2addr v3, v5

    sub-double/2addr v1, v3

    :cond_0
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpg-double p1, v1, v3

    if-gez p1, :cond_1

    return-wide v3

    :cond_1
    return-wide v1
.end method

.method public final chooseTextColor(I)I
    .locals 18
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p0

    .line 196
    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    .line 197
    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 198
    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    int-to-double v4, v1

    .line 202
    invoke-direct {v0, v4, v5}, Lcom/metamoji/un/survey/UnSurveyChartUtil$Companion;->toRgbItem(D)D

    move-result-wide v4

    int-to-double v1, v2

    .line 203
    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/survey/UnSurveyChartUtil$Companion;->toRgbItem(D)D

    move-result-wide v1

    int-to-double v6, v3

    .line 204
    invoke-direct {v0, v6, v7}, Lcom/metamoji/un/survey/UnSurveyChartUtil$Companion;->toRgbItem(D)D

    move-result-wide v6

    const-wide v8, 0x3fcb367a0f9096bcL    # 0.2126

    mul-double/2addr v4, v8

    const-wide v10, 0x3fe6e2eb1c432ca5L    # 0.7152

    mul-double/2addr v1, v10

    add-double/2addr v4, v1

    const-wide v1, 0x3fb27bb2fec56d5dL    # 0.0722

    mul-double/2addr v6, v1

    add-double/2addr v4, v6

    const-wide v6, 0x406fe00000000000L    # 255.0

    .line 209
    invoke-direct {v0, v6, v7}, Lcom/metamoji/un/survey/UnSurveyChartUtil$Companion;->toRgbItem(D)D

    move-result-wide v12

    .line 210
    invoke-direct {v0, v6, v7}, Lcom/metamoji/un/survey/UnSurveyChartUtil$Companion;->toRgbItem(D)D

    move-result-wide v14

    .line 211
    invoke-direct {v0, v6, v7}, Lcom/metamoji/un/survey/UnSurveyChartUtil$Companion;->toRgbItem(D)D

    move-result-wide v6

    mul-double/2addr v12, v8

    mul-double/2addr v14, v10

    add-double/2addr v12, v14

    mul-double/2addr v6, v1

    add-double/2addr v12, v6

    const/16 v3, 0xff

    const/4 v6, 0x0

    .line 215
    invoke-static {v3, v6, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    const-wide/high16 v6, 0x4050000000000000L    # 64.0

    .line 216
    invoke-direct {v0, v6, v7}, Lcom/metamoji/un/survey/UnSurveyChartUtil$Companion;->toRgbItem(D)D

    move-result-wide v14

    .line 217
    invoke-direct {v0, v6, v7}, Lcom/metamoji/un/survey/UnSurveyChartUtil$Companion;->toRgbItem(D)D

    move-result-wide v16

    .line 218
    invoke-direct {v0, v6, v7}, Lcom/metamoji/un/survey/UnSurveyChartUtil$Companion;->toRgbItem(D)D

    move-result-wide v6

    mul-double/2addr v14, v8

    mul-double v16, v16, v10

    add-double v14, v14, v16

    mul-double/2addr v6, v1

    add-double/2addr v14, v6

    const-wide v1, 0x3fa999999999999aL    # 0.05

    add-double/2addr v12, v1

    add-double/2addr v4, v1

    div-double/2addr v12, v4

    add-double/2addr v14, v1

    div-double/2addr v4, v14

    cmpg-double v1, v12, v4

    if-gez v1, :cond_0

    return v3

    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public final createBarChartImage(Ljava/util/Map;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "chartData"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "blankMsg"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    new-instance v3, Lcom/metamoji/un/survey/UnSurveyChartDataSource;

    invoke-direct {v3, v1}, Lcom/metamoji/un/survey/UnSurveyChartDataSource;-><init>(Ljava/util/Map;)V

    .line 71
    invoke-virtual {v3}, Lcom/metamoji/un/survey/UnSurveyChartDataSource;->getCategoryCount()I

    move-result v4

    .line 72
    invoke-virtual {v3}, Lcom/metamoji/un/survey/UnSurveyChartDataSource;->getSeriesCount()I

    move-result v5

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-wide v10, v6

    move-wide v12, v10

    move v9, v8

    :goto_0
    if-ge v9, v4, :cond_3

    move v14, v8

    :goto_1
    if-ge v14, v5, :cond_2

    .line 78
    invoke-virtual {v3, v9, v14}, Lcom/metamoji/un/survey/UnSurveyChartDataSource;->data(II)Ljava/lang/Double;

    move-result-object v15

    if-eqz v15, :cond_1

    .line 79
    invoke-virtual {v15}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->isNaN(D)Z

    move-result v16

    if-nez v16, :cond_1

    invoke-virtual {v15}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v16

    if-nez v16, :cond_1

    .line 80
    invoke-virtual {v15}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    cmpg-double v16, v16, v10

    if-gez v16, :cond_0

    .line 81
    invoke-virtual {v15}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    .line 83
    :cond_0
    invoke-virtual {v15}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    cmpl-double v16, v16, v12

    if-lez v16, :cond_1

    .line 84
    invoke-virtual {v15}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    :cond_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_3
    cmpg-double v4, v10, v6

    if-nez v4, :cond_4

    cmpg-double v4, v12, v6

    if-nez v4, :cond_4

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    .line 99
    :cond_4
    new-instance v4, Lcom/metamoji/un/survey/UnSurveyBarChartSetting;

    invoke-direct {v4, v1}, Lcom/metamoji/un/survey/UnSurveyBarChartSetting;-><init>(Ljava/util/Map;)V

    const-wide/high16 v5, 0x3ff4000000000000L    # 1.25

    mul-double/2addr v12, v5

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    cmpl-double v1, v12, v5

    if-lez v1, :cond_5

    .line 101
    invoke-virtual {v4, v12, v13}, Lcom/metamoji/un/survey/UnSurveyBarChartSetting;->setMMaxValue(D)V

    goto :goto_2

    .line 103
    :cond_5
    invoke-virtual {v4, v5, v6}, Lcom/metamoji/un/survey/UnSurveyBarChartSetting;->setMMaxValue(D)V

    .line 106
    :goto_2
    invoke-virtual {v4}, Lcom/metamoji/un/survey/UnSurveyBarChartSetting;->totalCount()I

    move-result v1

    if-nez v1, :cond_6

    .line 107
    invoke-virtual {v0, v2}, Lcom/metamoji/un/survey/UnSurveyChartUtil$Companion;->createBlankChartImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 110
    :cond_6
    new-instance v1, Lcom/metamoji/ch/bar/ChBarChart;

    check-cast v4, Lcom/metamoji/ch/bar/IChBarChartSetting;

    invoke-direct {v1, v4}, Lcom/metamoji/ch/bar/ChBarChart;-><init>(Lcom/metamoji/ch/bar/IChBarChartSetting;)V

    .line 112
    new-instance v2, Lcom/metamoji/ch/ChSize;

    const-wide v4, 0x4086800000000000L    # 720.0

    const-wide v6, 0x4080400000000000L    # 520.0

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/metamoji/ch/ChSize;-><init>(DD)V

    .line 113
    check-cast v3, Lcom/metamoji/ch/IChDataSource;

    invoke-virtual {v1, v3, v2}, Lcom/metamoji/ch/bar/ChBarChart;->update(Lcom/metamoji/ch/IChDataSource;Lcom/metamoji/ch/ChSize;)V

    .line 115
    check-cast v1, Lcom/metamoji/ch/IChChart;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/un/survey/UnSurveyChartUtil$Companion;->createChartImage(Lcom/metamoji/ch/IChChart;Lcom/metamoji/ch/ChSize;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public final createBlankChartImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "blankMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v2, Lcom/metamoji/df/sprite/Sprite;

    invoke-direct {v2}, Lcom/metamoji/df/sprite/Sprite;-><init>()V

    const/high16 v0, 0x44480000    # 800.0f

    .line 30
    invoke-virtual {v2, v0}, Lcom/metamoji/df/sprite/Sprite;->setWidth(F)V

    const/high16 v1, 0x44160000    # 600.0f

    .line 31
    invoke-virtual {v2, v1}, Lcom/metamoji/df/sprite/Sprite;->setHeight(F)V

    .line 33
    new-instance v3, Lcom/metamoji/df/sprite/PaintSolid;

    const/16 v4, 0xff

    const/16 v5, 0xc1

    invoke-static {v4, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-direct {v3, v4}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    .line 34
    new-instance v4, Lcom/metamoji/df/sprite/PaintSolid;

    const/4 v5, -0x1

    invoke-direct {v4, v5}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    .line 35
    invoke-virtual {v2}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v5

    const/high16 v6, 0x40800000    # 4.0f

    invoke-virtual {v5, v6}, Lcom/metamoji/df/sprite/Graphics;->setLineWidth(F)V

    .line 36
    invoke-virtual {v2}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v5

    check-cast v3, Lcom/metamoji/df/sprite/Paint;

    invoke-virtual {v5, v3}, Lcom/metamoji/df/sprite/Graphics;->setLinePaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 37
    invoke-virtual {v2}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v3

    check-cast v4, Lcom/metamoji/df/sprite/Paint;

    invoke-virtual {v3, v4}, Lcom/metamoji/df/sprite/Graphics;->setFillPaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 38
    invoke-virtual {v2}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4, v0, v1}, Lcom/metamoji/df/sprite/Graphics;->drawRect(FFFF)V

    .line 41
    invoke-virtual {v2}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v3

    const/high16 v5, 0x42880000    # 68.0f

    invoke-virtual {v3, v5}, Lcom/metamoji/df/sprite/Graphics;->setFontSize(F)V

    .line 42
    invoke-virtual {v2}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/metamoji/df/sprite/Graphics;->rectOfString(Ljava/lang/String;)Landroid/graphics/RectF;

    move-result-object v3

    .line 43
    :goto_0
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v6

    const/high16 v7, 0x44200000    # 640.0f

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_0

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v6

    const/high16 v7, 0x43dc0000    # 440.0f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    :cond_0
    const/4 v6, 0x1

    int-to-float v6, v6

    sub-float/2addr v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v6, v5, v6

    if-gez v6, :cond_3

    :cond_1
    cmpl-float v4, v5, v4

    if-lez v4, :cond_2

    .line 53
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float v4, v0, v4

    const/4 v5, 0x2

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 54
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    sub-float v3, v1, v3

    div-float/2addr v3, v5

    .line 55
    invoke-virtual {v2}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v5

    invoke-virtual {v5, v4, v3, p1}, Lcom/metamoji/df/sprite/Graphics;->drawString(FFLjava/lang/String;)V

    :cond_2
    move v3, v1

    .line 58
    new-instance v1, Lcom/metamoji/df/sprite/Rasterizer;

    invoke-direct {v1}, Lcom/metamoji/df/sprite/Rasterizer;-><init>()V

    float-to-int p1, v0

    .line 59
    invoke-virtual {v1, p1}, Lcom/metamoji/df/sprite/Rasterizer;->setWidth(I)V

    float-to-int p1, v3

    .line 60
    invoke-virtual {v1, p1}, Lcom/metamoji/df/sprite/Rasterizer;->setHeight(I)V

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 62
    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/df/sprite/Rasterizer;->paint(Lcom/metamoji/df/sprite/Sprite;FFFF)V

    .line 64
    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Rasterizer;->getImage()Landroid/graphics/Bitmap;

    move-result-object p1

    const-string v0, "getImage(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_3
    move v3, v1

    .line 48
    invoke-virtual {v2}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/metamoji/df/sprite/Graphics;->setFontSize(F)V

    .line 49
    invoke-virtual {v2}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/metamoji/df/sprite/Graphics;->rectOfString(Ljava/lang/String;)Landroid/graphics/RectF;

    move-result-object v1

    move v8, v3

    move-object v3, v1

    move v1, v8

    goto :goto_0
.end method

.method public final createChartImage(Lcom/metamoji/ch/IChChart;Lcom/metamoji/ch/ChSize;)Landroid/graphics/Bitmap;
    .locals 10

    const-string v0, "chart"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chartSize"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    new-instance v2, Lcom/metamoji/df/sprite/Sprite;

    invoke-direct {v2}, Lcom/metamoji/df/sprite/Sprite;-><init>()V

    const/high16 v0, 0x44480000    # 800.0f

    .line 143
    invoke-virtual {v2, v0}, Lcom/metamoji/df/sprite/Sprite;->setWidth(F)V

    const/high16 v1, 0x44160000    # 600.0f

    .line 144
    invoke-virtual {v2, v1}, Lcom/metamoji/df/sprite/Sprite;->setHeight(F)V

    .line 146
    new-instance v3, Lcom/metamoji/df/sprite/PaintSolid;

    const/16 v4, 0xff

    const/16 v5, 0xc1

    invoke-static {v4, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-direct {v3, v4}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    .line 147
    new-instance v4, Lcom/metamoji/df/sprite/PaintSolid;

    const/4 v5, -0x1

    invoke-direct {v4, v5}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    .line 148
    invoke-virtual {v2}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v5

    const/high16 v6, 0x40800000    # 4.0f

    invoke-virtual {v5, v6}, Lcom/metamoji/df/sprite/Graphics;->setLineWidth(F)V

    .line 149
    invoke-virtual {v2}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v5

    check-cast v3, Lcom/metamoji/df/sprite/Paint;

    invoke-virtual {v5, v3}, Lcom/metamoji/df/sprite/Graphics;->setLinePaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 150
    invoke-virtual {v2}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v3

    check-cast v4, Lcom/metamoji/df/sprite/Paint;

    invoke-virtual {v3, v4}, Lcom/metamoji/df/sprite/Graphics;->setFillPaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 151
    invoke-virtual {v2}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4, v0, v1}, Lcom/metamoji/df/sprite/Graphics;->drawRect(FFFF)V

    .line 153
    invoke-interface {p1}, Lcom/metamoji/ch/IChChart;->getSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/metamoji/df/sprite/Sprite;->addChild(Lcom/metamoji/df/sprite/Sprite;)V

    .line 154
    invoke-interface {p1}, Lcom/metamoji/ch/IChChart;->getSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v3

    invoke-virtual {p2}, Lcom/metamoji/ch/ChSize;->getWidth()D

    move-result-wide v4

    double-to-float v4, v4

    sub-float v4, v0, v4

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/metamoji/df/sprite/Sprite;->setX(F)V

    .line 155
    invoke-interface {p1}, Lcom/metamoji/ch/IChChart;->getSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v3

    float-to-double v6, v1

    invoke-virtual {p2}, Lcom/metamoji/ch/ChSize;->getHeight()D

    move-result-wide v8

    sub-double/2addr v6, v8

    double-to-float v4, v6

    mul-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/metamoji/df/sprite/Sprite;->setY(F)V

    .line 156
    invoke-interface {p1}, Lcom/metamoji/ch/IChChart;->getSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v3

    invoke-virtual {p2}, Lcom/metamoji/ch/ChSize;->getWidth()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/metamoji/df/sprite/Sprite;->setWidth(F)V

    .line 157
    invoke-interface {p1}, Lcom/metamoji/ch/IChChart;->getSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object p1

    invoke-virtual {p2}, Lcom/metamoji/ch/ChSize;->getHeight()D

    move-result-wide v3

    double-to-float p2, v3

    invoke-virtual {p1, p2}, Lcom/metamoji/df/sprite/Sprite;->setHeight(F)V

    move p1, v1

    .line 159
    new-instance v1, Lcom/metamoji/df/sprite/Rasterizer;

    invoke-direct {v1}, Lcom/metamoji/df/sprite/Rasterizer;-><init>()V

    float-to-int p2, v0

    .line 160
    invoke-virtual {v1, p2}, Lcom/metamoji/df/sprite/Rasterizer;->setWidth(I)V

    float-to-int p1, p1

    .line 161
    invoke-virtual {v1, p1}, Lcom/metamoji/df/sprite/Rasterizer;->setHeight(I)V

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 163
    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/df/sprite/Rasterizer;->paint(Lcom/metamoji/df/sprite/Sprite;FFFF)V

    .line 165
    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Rasterizer;->getImage()Landroid/graphics/Bitmap;

    move-result-object p1

    const-string p2, "getImage(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final createPieChartImage(Ljava/util/Map;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "chartData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blankMsg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    new-instance v0, Lcom/metamoji/un/survey/UnSurveyChartDataSource;

    invoke-direct {v0, p1}, Lcom/metamoji/un/survey/UnSurveyChartDataSource;-><init>(Ljava/util/Map;)V

    .line 124
    new-instance v1, Lcom/metamoji/un/survey/UnSurveyPieChartSetting;

    invoke-direct {v1, p1}, Lcom/metamoji/un/survey/UnSurveyPieChartSetting;-><init>(Ljava/util/Map;)V

    .line 126
    invoke-virtual {v1}, Lcom/metamoji/un/survey/UnSurveyPieChartSetting;->totalCount()I

    move-result p1

    if-nez p1, :cond_0

    .line 127
    invoke-virtual {p0, p2}, Lcom/metamoji/un/survey/UnSurveyChartUtil$Companion;->createBlankChartImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 130
    :cond_0
    new-instance p1, Lcom/metamoji/ch/pie/ChPieChart;

    check-cast v1, Lcom/metamoji/ch/pie/IChPieChartSetting;

    invoke-direct {p1, v1}, Lcom/metamoji/ch/pie/ChPieChart;-><init>(Lcom/metamoji/ch/pie/IChPieChartSetting;)V

    .line 132
    new-instance p2, Lcom/metamoji/ch/ChSize;

    const-wide v1, 0x4086800000000000L    # 720.0

    const-wide v3, 0x4080400000000000L    # 520.0

    invoke-direct {p2, v1, v2, v3, v4}, Lcom/metamoji/ch/ChSize;-><init>(DD)V

    .line 133
    check-cast v0, Lcom/metamoji/ch/IChDataSource;

    invoke-virtual {p1, v0, p2}, Lcom/metamoji/ch/pie/ChPieChart;->update(Lcom/metamoji/ch/IChDataSource;Lcom/metamoji/ch/ChSize;)V

    .line 135
    check-cast p1, Lcom/metamoji/ch/IChChart;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/un/survey/UnSurveyChartUtil$Companion;->createChartImage(Lcom/metamoji/ch/IChChart;Lcom/metamoji/ch/ChSize;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public final fillColor(I)I
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 170
    sget-object v0, Lcom/metamoji/un/survey/UnSurveyChartAutoColor;->INSTANCE:Lcom/metamoji/un/survey/UnSurveyChartAutoColor;

    invoke-virtual {v0, p1}, Lcom/metamoji/un/survey/UnSurveyChartAutoColor;->color(I)I

    move-result p1

    return p1
.end method

.method public final pieChartFontSize(Ljava/util/List;I)D
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;I)D"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    .line 251
    :goto_0
    const-string v5, "null cannot be cast to non-null type kotlin.Int"

    const-string v6, "null cannot be cast to non-null type kotlin.collections.List<*>"

    const/4 v7, 0x1

    if-ge v2, v0, :cond_1

    add-int/lit8 v3, v3, 0x1

    .line 253
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Ljava/util/List;

    .line 254
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/2addr v4, v8

    int-to-double v8, v4

    int-to-double v10, p2

    div-double/2addr v8, v10

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    cmpl-double v8, v8, v10

    if-ltz v8, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    add-int/lit8 p2, v0, -0x1

    :goto_2
    const/4 v2, -0x1

    if-ge v2, p2, :cond_3

    .line 263
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/util/List;

    .line 264
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :cond_3
    :goto_3
    sub-int/2addr v0, v3

    sub-int/2addr v0, v1

    const/16 p1, 0x9

    if-gt v0, p1, :cond_d

    if-le v3, p1, :cond_4

    goto :goto_8

    :cond_4
    const/16 p1, 0x8

    if-gt v0, p1, :cond_c

    if-le v3, p1, :cond_5

    goto :goto_7

    :cond_5
    const/4 p1, 0x7

    if-gt v0, p1, :cond_b

    if-le v3, p1, :cond_6

    goto :goto_6

    :cond_6
    const/4 p1, 0x6

    if-gt v0, p1, :cond_a

    if-le v3, p1, :cond_7

    goto :goto_5

    :cond_7
    const/4 p1, 0x5

    if-gt v0, p1, :cond_9

    if-le v3, p1, :cond_8

    goto :goto_4

    :cond_8
    const-wide/high16 p1, 0x403e000000000000L    # 30.0

    return-wide p1

    :cond_9
    :goto_4
    const-wide/high16 p1, 0x403c000000000000L    # 28.0

    return-wide p1

    :cond_a
    :goto_5
    const-wide/high16 p1, 0x4038000000000000L    # 24.0

    return-wide p1

    :cond_b
    :goto_6
    const-wide/high16 p1, 0x4035000000000000L    # 21.0

    return-wide p1

    :cond_c
    :goto_7
    const-wide/high16 p1, 0x4033000000000000L    # 19.0

    return-wide p1

    :cond_d
    :goto_8
    const-wide/high16 p1, 0x4031000000000000L    # 17.0

    return-wide p1
.end method
