.class public final Lcom/metamoji/ch/scatter/ChScatterChart;
.super Ljava/lang/Object;
.source "ChScatterChart.kt"

# interfaces
.implements Lcom/metamoji/ch/IChChart;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChScatterChart.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChScatterChart.kt\ncom/metamoji/ch/scatter/ChScatterChart\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,415:1\n1563#2:416\n1634#2,3:417\n1563#2:420\n1634#2,3:421\n*S KotlinDebug\n*F\n+ 1 ChScatterChart.kt\ncom/metamoji/ch/scatter/ChScatterChart\n*L\n65#1:416\n65#1:417,3\n193#1:420\n193#1:421,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0018\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\tH\u0016J\u0006\u0010\u001e\u001a\u00020\u001fJ\u0006\u0010 \u001a\u00020\u001fR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u001e\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\t@RX\u0096\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u001e\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0008\u001a\u00020\r@RX\u0096\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R*\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00112\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011@RX\u0096\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u0016\u001a\u00020\u0017X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u000e\u0010\u001a\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Lcom/metamoji/ch/scatter/ChScatterChart;",
        "Lcom/metamoji/ch/IChChart;",
        "setting",
        "Lcom/metamoji/ch/scatter/IChScatterChartSetting;",
        "<init>",
        "(Lcom/metamoji/ch/scatter/IChScatterChartSetting;)V",
        "getSetting",
        "()Lcom/metamoji/ch/scatter/IChScatterChartSetting;",
        "value",
        "Lcom/metamoji/ch/ChSize;",
        "chartSize",
        "getChartSize",
        "()Lcom/metamoji/ch/ChSize;",
        "Lcom/metamoji/ch/IChDataSource;",
        "dataSource",
        "getDataSource",
        "()Lcom/metamoji/ch/IChDataSource;",
        "",
        "Lcom/metamoji/ch/ChLegend$Item;",
        "legendItems",
        "getLegendItems",
        "()Ljava/util/List;",
        "sprite",
        "Lcom/metamoji/df/sprite/Sprite;",
        "getSprite",
        "()Lcom/metamoji/df/sprite/Sprite;",
        "drawAreaSprite",
        "categoryLabelSprite",
        "update",
        "",
        "calcNiceValueScaleAxis",
        "Lcom/metamoji/ch/IChLinearScaleAxisSetting;",
        "calcNiceCategoryScaleAxis",
        "chart"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final categoryLabelSprite:Lcom/metamoji/df/sprite/Sprite;

.field private chartSize:Lcom/metamoji/ch/ChSize;

.field private dataSource:Lcom/metamoji/ch/IChDataSource;

.field private final drawAreaSprite:Lcom/metamoji/df/sprite/Sprite;

.field private legendItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/ch/ChLegend$Item;",
            ">;"
        }
    .end annotation
.end field

.field private final setting:Lcom/metamoji/ch/scatter/IChScatterChartSetting;

.field private final sprite:Lcom/metamoji/df/sprite/Sprite;


# direct methods
.method public constructor <init>(Lcom/metamoji/ch/scatter/IChScatterChartSetting;)V
    .locals 2

    const-string v0, "setting"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ch/scatter/ChScatterChart;->setting:Lcom/metamoji/ch/scatter/IChScatterChartSetting;

    .line 17
    sget-object p1, Lcom/metamoji/ch/ChSize;->Companion:Lcom/metamoji/ch/ChSize$Companion;

    invoke-virtual {p1}, Lcom/metamoji/ch/ChSize$Companion;->getZero()Lcom/metamoji/ch/ChSize;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ch/scatter/ChScatterChart;->chartSize:Lcom/metamoji/ch/ChSize;

    .line 20
    new-instance p1, Lcom/metamoji/ch/ChNullDataSource;

    invoke-direct {p1}, Lcom/metamoji/ch/ChNullDataSource;-><init>()V

    check-cast p1, Lcom/metamoji/ch/IChDataSource;

    iput-object p1, p0, Lcom/metamoji/ch/scatter/ChScatterChart;->dataSource:Lcom/metamoji/ch/IChDataSource;

    .line 23
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ch/scatter/ChScatterChart;->legendItems:Ljava/util/List;

    .line 26
    new-instance p1, Lcom/metamoji/df/sprite/Sprite;

    invoke-direct {p1}, Lcom/metamoji/df/sprite/Sprite;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ch/scatter/ChScatterChart;->sprite:Lcom/metamoji/df/sprite/Sprite;

    .line 27
    new-instance p1, Lcom/metamoji/df/sprite/Sprite;

    invoke-direct {p1}, Lcom/metamoji/df/sprite/Sprite;-><init>()V

    const/4 v0, 0x1

    .line 28
    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Sprite;->setClipping(Z)V

    .line 27
    iput-object p1, p0, Lcom/metamoji/ch/scatter/ChScatterChart;->drawAreaSprite:Lcom/metamoji/df/sprite/Sprite;

    .line 30
    new-instance v0, Lcom/metamoji/df/sprite/Sprite;

    invoke-direct {v0}, Lcom/metamoji/df/sprite/Sprite;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ch/scatter/ChScatterChart;->categoryLabelSprite:Lcom/metamoji/df/sprite/Sprite;

    .line 33
    invoke-virtual {p0}, Lcom/metamoji/ch/scatter/ChScatterChart;->getSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/metamoji/df/sprite/Sprite;->addChild(Lcom/metamoji/df/sprite/Sprite;)V

    .line 34
    invoke-virtual {p0}, Lcom/metamoji/ch/scatter/ChScatterChart;->getSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Sprite;->addChild(Lcom/metamoji/df/sprite/Sprite;)V

    return-void
.end method

.method private static final update$drawCategoryScale(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/metamoji/ch/internal/transformer/ChFlipVerticalTransformer;Lcom/metamoji/df/sprite/Graphics;Lcom/metamoji/ch/scatter/ChScatterChart;Lcom/metamoji/df/sprite/Graphics;Lcom/metamoji/ch/IChLinearScaleAxisSetting;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/metamoji/ch/ChRect;",
            ">;",
            "Lcom/metamoji/ch/internal/transformer/ChFlipVerticalTransformer;",
            "Lcom/metamoji/df/sprite/Graphics;",
            "Lcom/metamoji/ch/scatter/ChScatterChart;",
            "Lcom/metamoji/df/sprite/Graphics;",
            "Lcom/metamoji/ch/IChLinearScaleAxisSetting;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/metamoji/ch/internal/ChHorizontalAxisLabels;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p6

    .line 208
    iget-object v5, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v5, Lcom/metamoji/ch/ChRect;

    invoke-virtual {v5}, Lcom/metamoji/ch/ChRect;->getWidth()D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpg-double v5, v5, v7

    if-gtz v5, :cond_0

    return-void

    .line 212
    :cond_0
    new-instance v5, Lcom/metamoji/ch/internal/transformer/ChCompositeTransformer;

    const/4 v6, 0x2

    .line 213
    new-array v6, v6, [Lcom/metamoji/ch/internal/transformer/IChCoordinateTransformer;

    new-instance v9, Lcom/metamoji/ch/internal/transformer/ChOffsetTransformer;

    iget-object v10, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v10, Lcom/metamoji/ch/ChRect;

    invoke-virtual {v10}, Lcom/metamoji/ch/ChRect;->getX()D

    move-result-wide v10

    iget-object v12, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v12, Lcom/metamoji/ch/ChRect;

    invoke-virtual {v12}, Lcom/metamoji/ch/ChRect;->getY()D

    move-result-wide v12

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/metamoji/ch/internal/transformer/ChOffsetTransformer;-><init>(DD)V

    const/4 v10, 0x0

    aput-object v9, v6, v10

    const/4 v9, 0x1

    .line 214
    aput-object p1, v6, v9

    .line 212
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/metamoji/ch/internal/transformer/ChCompositeTransformer;-><init>(Ljava/util/List;)V

    .line 217
    new-instance v6, Lcom/metamoji/ch/internal/ChCleanGraphics;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v6, v1}, Lcom/metamoji/ch/internal/ChCleanGraphics;-><init>(Lcom/metamoji/df/sprite/Graphics;)V

    check-cast v6, Ljava/io/Closeable;

    :try_start_0
    move-object v9, v6

    check-cast v9, Lcom/metamoji/ch/internal/ChCleanGraphics;

    .line 218
    iget-object v9, v2, Lcom/metamoji/ch/scatter/ChScatterChart;->setting:Lcom/metamoji/ch/scatter/IChScatterChartSetting;

    invoke-interface {v9}, Lcom/metamoji/ch/scatter/IChScatterChartSetting;->getCategoryScaleGrid()Lcom/metamoji/ch/IChScaleGridSetting;

    move-result-object v9

    invoke-interface {v9}, Lcom/metamoji/ch/IChScaleGridSetting;->getLineWidth()D

    move-result-wide v11

    double-to-float v9, v11

    invoke-virtual {v1, v9}, Lcom/metamoji/df/sprite/Graphics;->setLineWidth(F)V

    .line 219
    new-instance v9, Lcom/metamoji/df/sprite/PaintSolid;

    iget-object v11, v2, Lcom/metamoji/ch/scatter/ChScatterChart;->setting:Lcom/metamoji/ch/scatter/IChScatterChartSetting;

    invoke-interface {v11}, Lcom/metamoji/ch/scatter/IChScatterChartSetting;->getCategoryScaleGrid()Lcom/metamoji/ch/IChScaleGridSetting;

    move-result-object v11

    invoke-interface {v11}, Lcom/metamoji/ch/IChScaleGridSetting;->getLineColor()I

    move-result v11

    invoke-direct {v9, v11}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    check-cast v9, Lcom/metamoji/df/sprite/Paint;

    invoke-virtual {v1, v9}, Lcom/metamoji/df/sprite/Graphics;->setLinePaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 221
    new-instance v9, Lcom/metamoji/ch/internal/ChCleanGraphics;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v9, v3}, Lcom/metamoji/ch/internal/ChCleanGraphics;-><init>(Lcom/metamoji/df/sprite/Graphics;)V

    check-cast v9, Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    move-object v11, v9

    check-cast v11, Lcom/metamoji/ch/internal/ChCleanGraphics;

    .line 222
    new-instance v11, Lcom/metamoji/df/sprite/PaintSolid;

    iget-object v12, v2, Lcom/metamoji/ch/scatter/ChScatterChart;->setting:Lcom/metamoji/ch/scatter/IChScatterChartSetting;

    invoke-interface {v12}, Lcom/metamoji/ch/scatter/IChScatterChartSetting;->getCategoryScaleGrid()Lcom/metamoji/ch/IChScaleGridSetting;

    move-result-object v12

    invoke-interface {v12}, Lcom/metamoji/ch/IChScaleGridSetting;->getLabel()Lcom/metamoji/ch/IChLabelSetting;

    move-result-object v12

    invoke-interface {v12}, Lcom/metamoji/ch/IChLabelSetting;->getColor()I

    move-result v12

    invoke-direct {v11, v12}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    check-cast v11, Lcom/metamoji/df/sprite/Paint;

    invoke-virtual {v3, v11}, Lcom/metamoji/df/sprite/Graphics;->setTextPaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 223
    iget-object v11, v2, Lcom/metamoji/ch/scatter/ChScatterChart;->setting:Lcom/metamoji/ch/scatter/IChScatterChartSetting;

    invoke-interface {v11}, Lcom/metamoji/ch/scatter/IChScatterChartSetting;->getCategoryScaleGrid()Lcom/metamoji/ch/IChScaleGridSetting;

    move-result-object v11

    invoke-interface {v11}, Lcom/metamoji/ch/IChScaleGridSetting;->getLabel()Lcom/metamoji/ch/IChLabelSetting;

    move-result-object v11

    invoke-interface {v11}, Lcom/metamoji/ch/IChLabelSetting;->getFontName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Lcom/metamoji/df/sprite/Graphics;->setFontName(Ljava/lang/String;)V

    .line 224
    iget-object v11, v2, Lcom/metamoji/ch/scatter/ChScatterChart;->setting:Lcom/metamoji/ch/scatter/IChScatterChartSetting;

    invoke-interface {v11}, Lcom/metamoji/ch/scatter/IChScatterChartSetting;->getCategoryScaleGrid()Lcom/metamoji/ch/IChScaleGridSetting;

    move-result-object v11

    invoke-interface {v11}, Lcom/metamoji/ch/IChScaleGridSetting;->getLabel()Lcom/metamoji/ch/IChLabelSetting;

    move-result-object v11

    invoke-interface {v11}, Lcom/metamoji/ch/IChLabelSetting;->getFontSize()D

    move-result-wide v11

    double-to-float v11, v11

    invoke-virtual {v3, v11}, Lcom/metamoji/df/sprite/Graphics;->setFontSize(F)V

    .line 226
    invoke-interface/range {p5 .. p5}, Lcom/metamoji/ch/IChLinearScaleAxisSetting;->getMaxValue()D

    move-result-wide v11

    invoke-interface/range {p5 .. p5}, Lcom/metamoji/ch/IChLinearScaleAxisSetting;->getMinValue()D

    move-result-wide v13

    sub-double/2addr v11, v13

    invoke-interface/range {p5 .. p5}, Lcom/metamoji/ch/IChLinearScaleAxisSetting;->getTickSpacing()D

    move-result-wide v13

    div-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    move-result-wide v11

    double-to-int v3, v11

    .line 229
    iget-object v11, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v11, Lcom/metamoji/ch/ChRect;

    invoke-virtual {v11}, Lcom/metamoji/ch/ChRect;->getHeight()D

    move-result-wide v11

    cmpl-double v11, v11, v7

    if-lez v11, :cond_1

    if-ltz v3, :cond_1

    .line 231
    :goto_0
    invoke-interface/range {p5 .. p5}, Lcom/metamoji/ch/IChLinearScaleAxisSetting;->getMinValue()D

    move-result-wide v11

    int-to-double v13, v10

    invoke-interface/range {p5 .. p5}, Lcom/metamoji/ch/IChLinearScaleAxisSetting;->getTickSpacing()D

    move-result-wide v15

    mul-double/2addr v13, v15

    add-double/2addr v11, v13

    move-object/from16 v13, p5

    .line 232
    invoke-static {v0, v13, v11, v12}, Lcom/metamoji/ch/scatter/ChScatterChart;->update$positionXOf(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/metamoji/ch/IChLinearScaleAxisSetting;D)D

    move-result-wide v11

    .line 233
    new-instance v14, Lcom/metamoji/ch/ChPoint;

    invoke-direct {v14, v11, v12, v7, v8}, Lcom/metamoji/ch/ChPoint;-><init>(DD)V

    invoke-virtual {v5, v14}, Lcom/metamoji/ch/internal/transformer/ChCompositeTransformer;->point(Lcom/metamoji/ch/ChPoint;)Lcom/metamoji/ch/ChPoint;

    move-result-object v14

    invoke-static {v1, v14}, Lcom/metamoji/ch/ChPointKt;->moveTo(Lcom/metamoji/df/sprite/Graphics;Lcom/metamoji/ch/ChPoint;)V

    .line 234
    new-instance v14, Lcom/metamoji/ch/ChPoint;

    iget-object v15, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v15, Lcom/metamoji/ch/ChRect;

    invoke-virtual {v15}, Lcom/metamoji/ch/ChRect;->getHeight()D

    move-result-wide v7

    invoke-direct {v14, v11, v12, v7, v8}, Lcom/metamoji/ch/ChPoint;-><init>(DD)V

    invoke-virtual {v5, v14}, Lcom/metamoji/ch/internal/transformer/ChCompositeTransformer;->point(Lcom/metamoji/ch/ChPoint;)Lcom/metamoji/ch/ChPoint;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/metamoji/ch/ChPointKt;->lineTo(Lcom/metamoji/df/sprite/Graphics;Lcom/metamoji/ch/ChPoint;)V

    .line 235
    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Graphics;->draw()V

    if-eq v10, v3, :cond_1

    add-int/lit8 v10, v10, 0x1

    const-wide/16 v7, 0x0

    goto :goto_0

    .line 240
    :cond_1
    iget-object v0, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const-string v0, "categoryLabels"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1

    :cond_2
    iget-object v0, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels;

    :goto_1
    iget-object v2, v2, Lcom/metamoji/ch/scatter/ChScatterChart;->categoryLabelSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v0, v2}, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels;->draw(Lcom/metamoji/df/sprite/Sprite;)V

    .line 241
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    :try_start_2
    invoke-static {v9, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 242
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 217
    invoke-static {v6, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 221
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-static {v9, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    move-object v1, v0

    .line 217
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v0

    invoke-static {v6, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static final update$drawScatter(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/metamoji/ch/internal/transformer/ChFlipVerticalTransformer;Lcom/metamoji/ch/scatter/ChScatterChart;Lcom/metamoji/df/sprite/Graphics;IILcom/metamoji/ch/IChDataSource;Lcom/metamoji/ch/IChLinearScaleAxisSetting;Lcom/metamoji/ch/IChLinearScaleAxisSetting;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/metamoji/ch/ChRect;",
            ">;",
            "Lcom/metamoji/ch/internal/transformer/ChFlipVerticalTransformer;",
            "Lcom/metamoji/ch/scatter/ChScatterChart;",
            "Lcom/metamoji/df/sprite/Graphics;",
            "II",
            "Lcom/metamoji/ch/IChDataSource;",
            "Lcom/metamoji/ch/IChLinearScaleAxisSetting;",
            "Lcom/metamoji/ch/IChLinearScaleAxisSetting;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    .line 249
    iget-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Lcom/metamoji/ch/ChRect;

    invoke-virtual {v3}, Lcom/metamoji/ch/ChRect;->getWidth()D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpg-double v3, v5, v7

    if-lez v3, :cond_d

    iget-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Lcom/metamoji/ch/ChRect;

    invoke-virtual {v3}, Lcom/metamoji/ch/ChRect;->getHeight()D

    move-result-wide v5

    cmpg-double v3, v5, v7

    if-gtz v3, :cond_0

    goto/16 :goto_8

    .line 255
    :cond_0
    iget-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Lcom/metamoji/ch/ChRect;

    invoke-virtual {v1, v3}, Lcom/metamoji/ch/internal/transformer/ChFlipVerticalTransformer;->rect(Lcom/metamoji/ch/ChRect;)Lcom/metamoji/ch/ChRect;

    move-result-object v3

    .line 256
    invoke-virtual {v3}, Lcom/metamoji/ch/ChRect;->getWidth()D

    move-result-wide v5

    cmpg-double v5, v5, v7

    if-gez v5, :cond_1

    .line 257
    invoke-virtual {v3}, Lcom/metamoji/ch/ChRect;->getX()D

    move-result-wide v5

    invoke-virtual {v3}, Lcom/metamoji/ch/ChRect;->getWidth()D

    move-result-wide v14

    add-double/2addr v5, v14

    invoke-virtual {v3, v5, v6}, Lcom/metamoji/ch/ChRect;->setX(D)V

    .line 258
    invoke-virtual {v3}, Lcom/metamoji/ch/ChRect;->getWidth()D

    move-result-wide v5

    neg-double v5, v5

    invoke-virtual {v3, v5, v6}, Lcom/metamoji/ch/ChRect;->setWidth(D)V

    .line 260
    :cond_1
    invoke-virtual {v3}, Lcom/metamoji/ch/ChRect;->getHeight()D

    move-result-wide v5

    cmpg-double v5, v5, v7

    if-gez v5, :cond_2

    .line 261
    invoke-virtual {v3}, Lcom/metamoji/ch/ChRect;->getY()D

    move-result-wide v5

    invoke-virtual {v3}, Lcom/metamoji/ch/ChRect;->getHeight()D

    move-result-wide v7

    add-double/2addr v5, v7

    invoke-virtual {v3, v5, v6}, Lcom/metamoji/ch/ChRect;->setY(D)V

    .line 262
    invoke-virtual {v3}, Lcom/metamoji/ch/ChRect;->getHeight()D

    move-result-wide v5

    neg-double v5, v5

    invoke-virtual {v3, v5, v6}, Lcom/metamoji/ch/ChRect;->setHeight(D)V

    .line 264
    :cond_2
    iget-object v5, v2, Lcom/metamoji/ch/scatter/ChScatterChart;->drawAreaSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v3}, Lcom/metamoji/ch/ChRect;->getX()D

    move-result-wide v6

    double-to-float v6, v6

    invoke-virtual {v5, v6}, Lcom/metamoji/df/sprite/Sprite;->setX(F)V

    .line 265
    iget-object v5, v2, Lcom/metamoji/ch/scatter/ChScatterChart;->drawAreaSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v3}, Lcom/metamoji/ch/ChRect;->getY()D

    move-result-wide v6

    double-to-float v6, v6

    invoke-virtual {v5, v6}, Lcom/metamoji/df/sprite/Sprite;->setY(F)V

    .line 266
    iget-object v5, v2, Lcom/metamoji/ch/scatter/ChScatterChart;->drawAreaSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v3}, Lcom/metamoji/ch/ChRect;->getWidth()D

    move-result-wide v6

    double-to-float v6, v6

    invoke-virtual {v5, v6}, Lcom/metamoji/df/sprite/Sprite;->setWidth(F)V

    .line 267
    iget-object v5, v2, Lcom/metamoji/ch/scatter/ChScatterChart;->drawAreaSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v3}, Lcom/metamoji/ch/ChRect;->getHeight()D

    move-result-wide v6

    double-to-float v3, v6

    invoke-virtual {v5, v3}, Lcom/metamoji/df/sprite/Sprite;->setHeight(F)V

    .line 269
    new-instance v14, Lcom/metamoji/ch/internal/transformer/ChCompositeTransformer;

    const/4 v3, 0x3

    .line 270
    new-array v3, v3, [Lcom/metamoji/ch/internal/transformer/IChCoordinateTransformer;

    new-instance v5, Lcom/metamoji/ch/internal/transformer/ChOffsetTransformer;

    iget-object v6, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v6, Lcom/metamoji/ch/ChRect;

    invoke-virtual {v6}, Lcom/metamoji/ch/ChRect;->getX()D

    move-result-wide v6

    iget-object v8, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v8, Lcom/metamoji/ch/ChRect;

    invoke-virtual {v8}, Lcom/metamoji/ch/ChRect;->getY()D

    move-result-wide v0

    invoke-direct {v5, v6, v7, v0, v1}, Lcom/metamoji/ch/internal/transformer/ChOffsetTransformer;-><init>(DD)V

    const/4 v0, 0x0

    aput-object v5, v3, v0

    const/4 v1, 0x1

    .line 271
    aput-object p1, v3, v1

    .line 272
    new-instance v5, Lcom/metamoji/ch/internal/transformer/ChOffsetTransformer;

    iget-object v6, v2, Lcom/metamoji/ch/scatter/ChScatterChart;->drawAreaSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v6}, Lcom/metamoji/df/sprite/Sprite;->getX()F

    move-result v6

    neg-float v6, v6

    float-to-double v6, v6

    iget-object v8, v2, Lcom/metamoji/ch/scatter/ChScatterChart;->drawAreaSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v8}, Lcom/metamoji/df/sprite/Sprite;->getY()F

    move-result v8

    neg-float v8, v8

    float-to-double v0, v8

    invoke-direct {v5, v6, v7, v0, v1}, Lcom/metamoji/ch/internal/transformer/ChOffsetTransformer;-><init>(DD)V

    const/4 v0, 0x2

    aput-object v5, v3, v0

    .line 269
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v14, v0}, Lcom/metamoji/ch/internal/transformer/ChCompositeTransformer;-><init>(Ljava/util/List;)V

    .line 276
    new-instance v0, Lcom/metamoji/ch/internal/ChCleanGraphics;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, v4}, Lcom/metamoji/ch/internal/ChCleanGraphics;-><init>(Lcom/metamoji/df/sprite/Graphics;)V

    move-object v1, v0

    check-cast v1, Ljava/io/Closeable;

    :try_start_0
    move-object v0, v1

    check-cast v0, Lcom/metamoji/ch/internal/ChCleanGraphics;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v9, :cond_9

    .line 278
    iget-object v3, v2, Lcom/metamoji/ch/scatter/ChScatterChart;->setting:Lcom/metamoji/ch/scatter/IChScatterChartSetting;

    invoke-interface {v3, v0}, Lcom/metamoji/ch/scatter/IChScatterChartSetting;->isLineDraw(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 279
    iget-object v3, v2, Lcom/metamoji/ch/scatter/ChScatterChart;->setting:Lcom/metamoji/ch/scatter/IChScatterChartSetting;

    invoke-interface {v3, v0}, Lcom/metamoji/ch/scatter/IChScatterChartSetting;->lineWidth(I)D

    move-result-wide v5

    double-to-float v3, v5

    invoke-virtual {v4, v3}, Lcom/metamoji/df/sprite/Graphics;->setLineWidth(F)V

    .line 280
    new-instance v3, Lcom/metamoji/df/sprite/PaintSolid;

    iget-object v5, v2, Lcom/metamoji/ch/scatter/ChScatterChart;->setting:Lcom/metamoji/ch/scatter/IChScatterChartSetting;

    invoke-interface {v5, v0}, Lcom/metamoji/ch/scatter/IChScatterChartSetting;->lineColor(I)I

    move-result v5

    invoke-direct {v3, v5}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    check-cast v3, Lcom/metamoji/df/sprite/Paint;

    invoke-virtual {v4, v3}, Lcom/metamoji/df/sprite/Graphics;->setLinePaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 281
    iget-object v3, v2, Lcom/metamoji/ch/scatter/ChScatterChart;->setting:Lcom/metamoji/ch/scatter/IChScatterChartSetting;

    invoke-interface {v3, v0}, Lcom/metamoji/ch/scatter/IChScatterChartSetting;->lineCap(I)Lcom/metamoji/df/sprite/LineCap;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/metamoji/df/sprite/Graphics;->setLineCap(Lcom/metamoji/df/sprite/LineCap;)V

    .line 282
    iget-object v3, v2, Lcom/metamoji/ch/scatter/ChScatterChart;->setting:Lcom/metamoji/ch/scatter/IChScatterChartSetting;

    invoke-interface {v3, v0}, Lcom/metamoji/ch/scatter/IChScatterChartSetting;->lineJoin(I)Lcom/metamoji/df/sprite/LineJoin;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/metamoji/df/sprite/Graphics;->setLineJoin(Lcom/metamoji/df/sprite/LineJoin;)V

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v3, v10, :cond_6

    .line 286
    invoke-interface {v11, v3}, Lcom/metamoji/ch/IChDataSource;->categoryTitleAsNumber(I)Ljava/lang/Double;

    move-result-object v6

    .line 287
    invoke-interface {v11, v3, v0}, Lcom/metamoji/ch/IChDataSource;->data(II)Ljava/lang/Double;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 288
    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->isNaN(D)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v8

    if-nez v8, :cond_4

    if-eqz v6, :cond_4

    .line 289
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->isNaN(D)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v8

    if-nez v8, :cond_4

    .line 291
    new-instance v8, Lcom/metamoji/ch/ChPoint;

    move/from16 p1, v5

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    move-object/from16 v15, p0

    invoke-static {v15, v12, v5, v6}, Lcom/metamoji/ch/scatter/ChScatterChart;->update$positionXOf(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/metamoji/ch/IChLinearScaleAxisSetting;D)D

    move-result-wide v5

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    invoke-static {v15, v13, v11, v12}, Lcom/metamoji/ch/scatter/ChScatterChart;->update$positionYOf(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/metamoji/ch/IChLinearScaleAxisSetting;D)D

    move-result-wide v11

    invoke-direct {v8, v5, v6, v11, v12}, Lcom/metamoji/ch/ChPoint;-><init>(DD)V

    invoke-virtual {v14, v8}, Lcom/metamoji/ch/internal/transformer/ChCompositeTransformer;->point(Lcom/metamoji/ch/ChPoint;)Lcom/metamoji/ch/ChPoint;

    move-result-object v5

    if-eqz p1, :cond_3

    .line 294
    invoke-static {v4, v5}, Lcom/metamoji/ch/ChPointKt;->lineTo(Lcom/metamoji/df/sprite/Graphics;Lcom/metamoji/ch/ChPoint;)V

    move/from16 v5, p1

    goto :goto_2

    .line 296
    :cond_3
    invoke-static {v4, v5}, Lcom/metamoji/ch/ChPointKt;->moveTo(Lcom/metamoji/df/sprite/Graphics;Lcom/metamoji/ch/ChPoint;)V

    const/4 v5, 0x1

    :goto_2
    const/4 v6, 0x1

    goto :goto_3

    :cond_4
    move-object/from16 v15, p0

    move/from16 p1, v5

    move/from16 v5, p1

    const/4 v6, 0x0

    :goto_3
    if-nez v6, :cond_5

    if-eqz v5, :cond_5

    .line 303
    invoke-virtual {v4}, Lcom/metamoji/df/sprite/Graphics;->draw()V

    const/4 v5, 0x0

    :cond_5
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    goto :goto_1

    :cond_6
    move-object/from16 v15, p0

    move/from16 p1, v5

    if-eqz p1, :cond_8

    .line 309
    invoke-virtual {v4}, Lcom/metamoji/df/sprite/Graphics;->draw()V

    goto :goto_4

    :cond_7
    move-object/from16 v15, p0

    :cond_8
    :goto_4
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    goto/16 :goto_0

    :cond_9
    move-object/from16 v15, p0

    .line 312
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v0, 0x0

    .line 276
    invoke-static {v1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 315
    new-instance v1, Lcom/metamoji/ch/internal/ChCleanGraphics;

    invoke-direct {v1, v4}, Lcom/metamoji/ch/internal/ChCleanGraphics;-><init>(Lcom/metamoji/df/sprite/Graphics;)V

    check-cast v1, Ljava/io/Closeable;

    :try_start_1
    move-object v3, v1

    check-cast v3, Lcom/metamoji/ch/internal/ChCleanGraphics;

    const/4 v11, 0x0

    :goto_5
    if-ge v11, v9, :cond_c

    .line 317
    iget-object v3, v2, Lcom/metamoji/ch/scatter/ChScatterChart;->setting:Lcom/metamoji/ch/scatter/IChScatterChartSetting;

    invoke-interface {v3, v11}, Lcom/metamoji/ch/scatter/IChScatterChartSetting;->markerType(I)Lcom/metamoji/ch/ChMarker;

    move-result-object v3

    .line 318
    sget-object v5, Lcom/metamoji/ch/ChMarker;->NONE:Lcom/metamoji/ch/ChMarker;

    if-eq v3, v5, :cond_b

    .line 319
    iget-object v5, v2, Lcom/metamoji/ch/scatter/ChScatterChart;->setting:Lcom/metamoji/ch/scatter/IChScatterChartSetting;

    invoke-interface {v5, v11}, Lcom/metamoji/ch/scatter/IChScatterChartSetting;->markerSize(I)D

    move-result-wide v5

    .line 320
    iget-object v7, v2, Lcom/metamoji/ch/scatter/ChScatterChart;->setting:Lcom/metamoji/ch/scatter/IChScatterChartSetting;

    invoke-interface {v7, v11}, Lcom/metamoji/ch/scatter/IChScatterChartSetting;->markerColor(I)I

    move-result v8

    const/4 v12, 0x0

    :goto_6
    if-ge v12, v10, :cond_b

    move-object/from16 v7, p6

    .line 323
    invoke-interface {v7, v12}, Lcom/metamoji/ch/IChDataSource;->categoryTitleAsNumber(I)Ljava/lang/Double;

    move-result-object v16

    .line 324
    invoke-interface {v7, v12, v11}, Lcom/metamoji/ch/IChDataSource;->data(II)Ljava/lang/Double;

    move-result-object v18

    if-eqz v18, :cond_a

    .line 325
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->isNaN(D)Z

    move-result v19

    if-nez v19, :cond_a

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v19

    if-nez v19, :cond_a

    if-eqz v16, :cond_a

    .line 326
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->isNaN(D)Z

    move-result v19

    if-nez v19, :cond_a

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v19

    if-nez v19, :cond_a

    .line 327
    new-instance v0, Lcom/metamoji/ch/ChPoint;

    move-object/from16 v19, v3

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    move-object/from16 v9, p7

    invoke-static {v15, v9, v2, v3}, Lcom/metamoji/ch/scatter/ChScatterChart;->update$positionXOf(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/metamoji/ch/IChLinearScaleAxisSetting;D)D

    move-result-wide v2

    move/from16 v16, v8

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-static {v15, v13, v7, v8}, Lcom/metamoji/ch/scatter/ChScatterChart;->update$positionYOf(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/metamoji/ch/IChLinearScaleAxisSetting;D)D

    move-result-wide v7

    invoke-direct {v0, v2, v3, v7, v8}, Lcom/metamoji/ch/ChPoint;-><init>(DD)V

    invoke-virtual {v14, v0}, Lcom/metamoji/ch/internal/transformer/ChCompositeTransformer;->point(Lcom/metamoji/ch/ChPoint;)Lcom/metamoji/ch/ChPoint;

    move-result-object v0

    .line 330
    invoke-virtual {v0}, Lcom/metamoji/ch/ChPoint;->getX()D

    move-result-wide v2

    double-to-float v2, v2

    .line 331
    invoke-virtual {v0}, Lcom/metamoji/ch/ChPoint;->getY()D

    move-result-wide v7

    double-to-float v0, v7

    double-to-float v7, v5

    move/from16 v8, v16

    move-object/from16 v3, v19

    move-wide/from16 v18, v5

    move v6, v0

    move v5, v2

    .line 328
    invoke-virtual/range {v3 .. v8}, Lcom/metamoji/ch/ChMarker;->draw(Lcom/metamoji/df/sprite/Graphics;FFFI)V

    goto :goto_7

    :cond_a
    move-object/from16 v9, p7

    move-wide/from16 v18, v5

    :goto_7
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move/from16 v9, p4

    move-wide/from16 v5, v18

    const/4 v0, 0x0

    goto :goto_6

    :cond_b
    move-object/from16 v9, p7

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move/from16 v9, p4

    const/4 v0, 0x0

    goto/16 :goto_5

    .line 339
    :cond_c
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    .line 315
    invoke-static {v1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :catchall_2
    move-exception v0

    move-object v2, v0

    .line 276
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception v0

    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_d
    :goto_8
    return-void
.end method

.method private static final update$drawValueScale(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/metamoji/ch/internal/transformer/ChFlipVerticalTransformer;Lcom/metamoji/df/sprite/Graphics;Lcom/metamoji/ch/scatter/ChScatterChart;Lcom/metamoji/ch/IChLinearScaleAxisSetting;Ljava/util/List;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/metamoji/ch/ChRect;",
            ">;",
            "Lcom/metamoji/ch/internal/transformer/ChFlipVerticalTransformer;",
            "Lcom/metamoji/df/sprite/Graphics;",
            "Lcom/metamoji/ch/scatter/ChScatterChart;",
            "Lcom/metamoji/ch/IChLinearScaleAxisSetting;",
            "Ljava/util/List<",
            "Lcom/metamoji/ch/internal/ChStringWithSize;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 140
    iget-object v4, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Lcom/metamoji/ch/ChRect;

    invoke-virtual {v4}, Lcom/metamoji/ch/ChRect;->getHeight()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_0

    return-void

    .line 144
    :cond_0
    new-instance v4, Lcom/metamoji/ch/internal/transformer/ChCompositeTransformer;

    const/4 v5, 0x2

    .line 145
    new-array v8, v5, [Lcom/metamoji/ch/internal/transformer/IChCoordinateTransformer;

    new-instance v9, Lcom/metamoji/ch/internal/transformer/ChOffsetTransformer;

    iget-object v10, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v10, Lcom/metamoji/ch/ChRect;

    invoke-virtual {v10}, Lcom/metamoji/ch/ChRect;->getX()D

    move-result-wide v10

    iget-object v12, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v12, Lcom/metamoji/ch/ChRect;

    invoke-virtual {v12}, Lcom/metamoji/ch/ChRect;->getY()D

    move-result-wide v12

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/metamoji/ch/internal/transformer/ChOffsetTransformer;-><init>(DD)V

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const/4 v9, 0x1

    .line 146
    aput-object p1, v8, v9

    .line 144
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v4, v8}, Lcom/metamoji/ch/internal/transformer/ChCompositeTransformer;-><init>(Ljava/util/List;)V

    .line 149
    new-instance v8, Lcom/metamoji/ch/internal/ChCleanGraphics;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v8, v1}, Lcom/metamoji/ch/internal/ChCleanGraphics;-><init>(Lcom/metamoji/df/sprite/Graphics;)V

    check-cast v8, Ljava/io/Closeable;

    :try_start_0
    move-object v9, v8

    check-cast v9, Lcom/metamoji/ch/internal/ChCleanGraphics;

    .line 150
    new-instance v9, Lcom/metamoji/df/sprite/PaintSolid;

    iget-object v11, v2, Lcom/metamoji/ch/scatter/ChScatterChart;->setting:Lcom/metamoji/ch/scatter/IChScatterChartSetting;

    invoke-interface {v11}, Lcom/metamoji/ch/scatter/IChScatterChartSetting;->getValueScaleGrid()Lcom/metamoji/ch/IChScaleGridSetting;

    move-result-object v11

    invoke-interface {v11}, Lcom/metamoji/ch/IChScaleGridSetting;->getLabel()Lcom/metamoji/ch/IChLabelSetting;

    move-result-object v11

    invoke-interface {v11}, Lcom/metamoji/ch/IChLabelSetting;->getColor()I

    move-result v11

    invoke-direct {v9, v11}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    check-cast v9, Lcom/metamoji/df/sprite/Paint;

    invoke-virtual {v1, v9}, Lcom/metamoji/df/sprite/Graphics;->setTextPaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 151
    iget-object v9, v2, Lcom/metamoji/ch/scatter/ChScatterChart;->setting:Lcom/metamoji/ch/scatter/IChScatterChartSetting;

    invoke-interface {v9}, Lcom/metamoji/ch/scatter/IChScatterChartSetting;->getValueScaleGrid()Lcom/metamoji/ch/IChScaleGridSetting;

    move-result-object v9

    invoke-interface {v9}, Lcom/metamoji/ch/IChScaleGridSetting;->getLabel()Lcom/metamoji/ch/IChLabelSetting;

    move-result-object v9

    invoke-interface {v9}, Lcom/metamoji/ch/IChLabelSetting;->getFontName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/metamoji/df/sprite/Graphics;->setFontName(Ljava/lang/String;)V

    .line 152
    iget-object v9, v2, Lcom/metamoji/ch/scatter/ChScatterChart;->setting:Lcom/metamoji/ch/scatter/IChScatterChartSetting;

    invoke-interface {v9}, Lcom/metamoji/ch/scatter/IChScatterChartSetting;->getValueScaleGrid()Lcom/metamoji/ch/IChScaleGridSetting;

    move-result-object v9

    invoke-interface {v9}, Lcom/metamoji/ch/IChScaleGridSetting;->getLabel()Lcom/metamoji/ch/IChLabelSetting;

    move-result-object v9

    invoke-interface {v9}, Lcom/metamoji/ch/IChLabelSetting;->getFontSize()D

    move-result-wide v11

    double-to-float v9, v11

    invoke-virtual {v1, v9}, Lcom/metamoji/df/sprite/Graphics;->setFontSize(F)V

    .line 153
    iget-object v9, v2, Lcom/metamoji/ch/scatter/ChScatterChart;->setting:Lcom/metamoji/ch/scatter/IChScatterChartSetting;

    invoke-interface {v9}, Lcom/metamoji/ch/scatter/IChScatterChartSetting;->getValueScaleGrid()Lcom/metamoji/ch/IChScaleGridSetting;

    move-result-object v9

    invoke-interface {v9}, Lcom/metamoji/ch/IChScaleGridSetting;->getLineWidth()D

    move-result-wide v11

    double-to-float v9, v11

    invoke-virtual {v1, v9}, Lcom/metamoji/df/sprite/Graphics;->setLineWidth(F)V

    .line 154
    new-instance v9, Lcom/metamoji/df/sprite/PaintSolid;

    iget-object v11, v2, Lcom/metamoji/ch/scatter/ChScatterChart;->setting:Lcom/metamoji/ch/scatter/IChScatterChartSetting;

    invoke-interface {v11}, Lcom/metamoji/ch/scatter/IChScatterChartSetting;->getValueScaleGrid()Lcom/metamoji/ch/IChScaleGridSetting;

    move-result-object v11

    invoke-interface {v11}, Lcom/metamoji/ch/IChScaleGridSetting;->getLineColor()I

    move-result v11

    invoke-direct {v9, v11}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    check-cast v9, Lcom/metamoji/df/sprite/Paint;

    invoke-virtual {v1, v9}, Lcom/metamoji/df/sprite/Graphics;->setLinePaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 156
    invoke-interface {v3}, Lcom/metamoji/ch/IChLinearScaleAxisSetting;->getMaxValue()D

    move-result-wide v11

    invoke-interface {v3}, Lcom/metamoji/ch/IChLinearScaleAxisSetting;->getMinValue()D

    move-result-wide v13

    sub-double/2addr v11, v13

    invoke-interface {v3}, Lcom/metamoji/ch/IChLinearScaleAxisSetting;->getTickSpacing()D

    move-result-wide v13

    div-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    move-result-wide v11

    double-to-int v9, v11

    if-ltz v9, :cond_2

    .line 158
    :goto_0
    invoke-interface {v3}, Lcom/metamoji/ch/IChLinearScaleAxisSetting;->getMinValue()D

    move-result-wide v11

    int-to-double v13, v10

    invoke-interface {v3}, Lcom/metamoji/ch/IChLinearScaleAxisSetting;->getTickSpacing()D

    move-result-wide v15

    mul-double/2addr v13, v15

    add-double/2addr v11, v13

    .line 161
    iget-object v13, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v13, Lcom/metamoji/ch/ChRect;

    invoke-virtual {v13}, Lcom/metamoji/ch/ChRect;->getWidth()D

    move-result-wide v13

    cmpl-double v13, v13, v6

    if-lez v13, :cond_1

    .line 162
    new-instance v13, Lcom/metamoji/ch/ChPoint;

    invoke-static {v0, v3, v11, v12}, Lcom/metamoji/ch/scatter/ChScatterChart;->update$positionYOf(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/metamoji/ch/IChLinearScaleAxisSetting;D)D

    move-result-wide v14

    invoke-direct {v13, v6, v7, v14, v15}, Lcom/metamoji/ch/ChPoint;-><init>(DD)V

    invoke-virtual {v4, v13}, Lcom/metamoji/ch/internal/transformer/ChCompositeTransformer;->point(Lcom/metamoji/ch/ChPoint;)Lcom/metamoji/ch/ChPoint;

    move-result-object v13

    invoke-static {v1, v13}, Lcom/metamoji/ch/ChPointKt;->moveTo(Lcom/metamoji/df/sprite/Graphics;Lcom/metamoji/ch/ChPoint;)V

    .line 163
    new-instance v13, Lcom/metamoji/ch/ChPoint;

    iget-object v14, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v14, Lcom/metamoji/ch/ChRect;

    invoke-virtual {v14}, Lcom/metamoji/ch/ChRect;->getWidth()D

    move-result-wide v14

    invoke-static {v0, v3, v11, v12}, Lcom/metamoji/ch/scatter/ChScatterChart;->update$positionYOf(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/metamoji/ch/IChLinearScaleAxisSetting;D)D

    move-result-wide v6

    invoke-direct {v13, v14, v15, v6, v7}, Lcom/metamoji/ch/ChPoint;-><init>(DD)V

    invoke-virtual {v4, v13}, Lcom/metamoji/ch/internal/transformer/ChCompositeTransformer;->point(Lcom/metamoji/ch/ChPoint;)Lcom/metamoji/ch/ChPoint;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/metamoji/ch/ChPointKt;->lineTo(Lcom/metamoji/df/sprite/Graphics;Lcom/metamoji/ch/ChPoint;)V

    .line 164
    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Graphics;->draw()V

    :cond_1
    move-object/from16 v6, p5

    .line 168
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/metamoji/ch/internal/ChStringWithSize;

    .line 169
    new-instance v13, Lcom/metamoji/ch/ChPoint;

    invoke-virtual {v7}, Lcom/metamoji/ch/internal/ChStringWithSize;->getSize()Lcom/metamoji/ch/ChSize;

    move-result-object v14

    invoke-virtual {v14}, Lcom/metamoji/ch/ChSize;->getWidth()D

    move-result-wide v14

    iget-object v5, v2, Lcom/metamoji/ch/scatter/ChScatterChart;->setting:Lcom/metamoji/ch/scatter/IChScatterChartSetting;

    invoke-interface {v5}, Lcom/metamoji/ch/scatter/IChScatterChartSetting;->getValueScaleGrid()Lcom/metamoji/ch/IChScaleGridSetting;

    move-result-object v5

    invoke-interface {v5}, Lcom/metamoji/ch/IChScaleGridSetting;->getLabelMargin()D

    move-result-wide v17

    add-double v14, v14, v17

    neg-double v14, v14

    invoke-static {v0, v3, v11, v12}, Lcom/metamoji/ch/scatter/ChScatterChart;->update$positionYOf(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/metamoji/ch/IChLinearScaleAxisSetting;D)D

    move-result-wide v11

    invoke-virtual {v7}, Lcom/metamoji/ch/internal/ChStringWithSize;->getSize()Lcom/metamoji/ch/ChSize;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/ch/ChSize;->getHeight()D

    move-result-wide v17

    const/4 v5, 0x2

    int-to-double v2, v5

    div-double v17, v17, v2

    add-double v11, v11, v17

    invoke-direct {v13, v14, v15, v11, v12}, Lcom/metamoji/ch/ChPoint;-><init>(DD)V

    .line 170
    invoke-virtual {v7}, Lcom/metamoji/ch/internal/ChStringWithSize;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v13}, Lcom/metamoji/ch/internal/transformer/ChCompositeTransformer;->point(Lcom/metamoji/ch/ChPoint;)Lcom/metamoji/ch/ChPoint;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/metamoji/ch/ChPointKt;->drawString(Lcom/metamoji/df/sprite/Graphics;Ljava/lang/String;Lcom/metamoji/ch/ChPoint;)V

    if-eq v10, v9, :cond_2

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const-wide/16 v6, 0x0

    goto/16 :goto_0

    .line 172
    :cond_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 149
    invoke-static {v8, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v8, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static final update$makeCategoryTickLabels(Lcom/metamoji/df/sprite/Graphics;Lcom/metamoji/ch/scatter/ChScatterChart;Lcom/metamoji/ch/IChLinearScaleAxisSetting;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/metamoji/ch/ChSize;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/df/sprite/Graphics;",
            "Lcom/metamoji/ch/scatter/ChScatterChart;",
            "Lcom/metamoji/ch/IChLinearScaleAxisSetting;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/metamoji/ch/internal/ChHorizontalAxisLabels;",
            ">;",
            "Lcom/metamoji/ch/ChSize;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/metamoji/ch/ChRect;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    .line 179
    new-instance v4, Lcom/metamoji/ch/internal/ChCleanGraphics;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v4, v0}, Lcom/metamoji/ch/internal/ChCleanGraphics;-><init>(Lcom/metamoji/df/sprite/Graphics;)V

    check-cast v4, Ljava/io/Closeable;

    :try_start_0
    move-object v5, v4

    check-cast v5, Lcom/metamoji/ch/internal/ChCleanGraphics;

    .line 180
    new-instance v5, Lcom/metamoji/df/sprite/PaintSolid;

    iget-object v6, v1, Lcom/metamoji/ch/scatter/ChScatterChart;->setting:Lcom/metamoji/ch/scatter/IChScatterChartSetting;

    invoke-interface {v6}, Lcom/metamoji/ch/scatter/IChScatterChartSetting;->getCategoryScaleGrid()Lcom/metamoji/ch/IChScaleGridSetting;

    move-result-object v6

    invoke-interface {v6}, Lcom/metamoji/ch/IChScaleGridSetting;->getLabel()Lcom/metamoji/ch/IChLabelSetting;

    move-result-object v6

    invoke-interface {v6}, Lcom/metamoji/ch/IChLabelSetting;->getColor()I

    move-result v6

    invoke-direct {v5, v6}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    check-cast v5, Lcom/metamoji/df/sprite/Paint;

    invoke-virtual {v0, v5}, Lcom/metamoji/df/sprite/Graphics;->setTextPaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 181
    iget-object v5, v1, Lcom/metamoji/ch/scatter/ChScatterChart;->setting:Lcom/metamoji/ch/scatter/IChScatterChartSetting;

    invoke-interface {v5}, Lcom/metamoji/ch/scatter/IChScatterChartSetting;->getCategoryScaleGrid()Lcom/metamoji/ch/IChScaleGridSetting;

    move-result-object v5

    invoke-interface {v5}, Lcom/metamoji/ch/IChScaleGridSetting;->getLabel()Lcom/metamoji/ch/IChLabelSetting;

    move-result-object v5

    invoke-interface {v5}, Lcom/metamoji/ch/IChLabelSetting;->getFontName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/metamoji/df/sprite/Graphics;->setFontName(Ljava/lang/String;)V

    .line 182
    iget-object v5, v1, Lcom/metamoji/ch/scatter/ChScatterChart;->setting:Lcom/metamoji/ch/scatter/IChScatterChartSetting;

    invoke-interface {v5}, Lcom/metamoji/ch/scatter/IChScatterChartSetting;->getCategoryScaleGrid()Lcom/metamoji/ch/IChScaleGridSetting;

    move-result-object v5

    invoke-interface {v5}, Lcom/metamoji/ch/IChScaleGridSetting;->getLabel()Lcom/metamoji/ch/IChLabelSetting;

    move-result-object v5

    invoke-interface {v5}, Lcom/metamoji/ch/IChLabelSetting;->getFontSize()D

    move-result-wide v5

    double-to-float v5, v5

    invoke-virtual {v0, v5}, Lcom/metamoji/df/sprite/Graphics;->setFontSize(F)V

    .line 184
    invoke-interface {v2}, Lcom/metamoji/ch/IChLinearScaleAxisSetting;->getMaxValue()D

    move-result-wide v5

    invoke-interface {v2}, Lcom/metamoji/ch/IChLinearScaleAxisSetting;->getMinValue()D

    move-result-wide v7

    sub-double/2addr v5, v7

    invoke-interface {v2}, Lcom/metamoji/ch/IChLinearScaleAxisSetting;->getTickSpacing()D

    move-result-wide v7

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v0, v5

    .line 185
    new-instance v5, Lcom/metamoji/ch/scatter/ChScatterChart$$ExternalSyntheticLambda0;

    invoke-direct {v5, v2}, Lcom/metamoji/ch/scatter/ChScatterChart$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/ch/IChLinearScaleAxisSetting;)V

    .line 188
    new-instance v6, Lcom/metamoji/ch/internal/ChNumberFormatter;

    invoke-direct {v6}, Lcom/metamoji/ch/internal/ChNumberFormatter;-><init>()V

    .line 189
    invoke-interface {v2}, Lcom/metamoji/ch/IChLinearScaleAxisSetting;->getNumDecimal()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/metamoji/ch/internal/ChNumberFormatter;->setFractionDigits(I)V

    .line 191
    sget-object v8, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels;->Companion:Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Companion;

    .line 192
    iget-object v9, v1, Lcom/metamoji/ch/scatter/ChScatterChart;->categoryLabelSprite:Lcom/metamoji/df/sprite/Sprite;

    .line 193
    new-instance v7, Lkotlin/ranges/IntRange;

    const/4 v10, 0x0

    invoke-direct {v7, v10, v0}, Lkotlin/ranges/IntRange;-><init>(II)V

    check-cast v7, Ljava/lang/Iterable;

    .line 420
    new-instance v0, Ljava/util/ArrayList;

    const/16 v10, 0xa

    invoke-static {v7, v10}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v0, v10}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 421
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    move-object v10, v7

    check-cast v10, Lkotlin/collections/IntIterator;

    invoke-virtual {v10}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v10

    .line 193
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v5, v10}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Lcom/metamoji/ch/internal/ChNumberFormatter;->stringFrom(D)Ljava/lang/String;

    move-result-object v10

    .line 422
    invoke-interface {v0, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 423
    :cond_0
    move-object v10, v0

    check-cast v10, Ljava/util/List;

    .line 195
    sget-object v12, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$TruncationStrategy;->NONE:Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$TruncationStrategy;

    .line 196
    iget-object v0, v1, Lcom/metamoji/ch/scatter/ChScatterChart;->setting:Lcom/metamoji/ch/scatter/IChScatterChartSetting;

    invoke-interface {v0}, Lcom/metamoji/ch/scatter/IChScatterChartSetting;->getCategoryScaleGrid()Lcom/metamoji/ch/IChScaleGridSetting;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/ch/IChScaleGridSetting;->getLabelMargin()D

    move-result-wide v13

    .line 197
    iget-object v0, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v15, v0

    check-cast v15, Lcom/metamoji/ch/ChRect;

    .line 191
    new-instance v0, Lcom/metamoji/ch/scatter/ChScatterChart$$ExternalSyntheticLambda1;

    invoke-direct {v0, v3}, Lcom/metamoji/ch/scatter/ChScatterChart$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    new-instance v1, Lcom/metamoji/ch/scatter/ChScatterChart$$ExternalSyntheticLambda2;

    invoke-direct {v1, v5, v3, v2}, Lcom/metamoji/ch/scatter/ChScatterChart$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/metamoji/ch/IChLinearScaleAxisSetting;)V

    move-object/from16 v11, p4

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    invoke-virtual/range {v8 .. v17}, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Companion;->build(Lcom/metamoji/df/sprite/Sprite;Ljava/util/List;Lcom/metamoji/ch/ChSize;Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$TruncationStrategy;DLcom/metamoji/ch/ChRect;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/ch/internal/ChHorizontalAxisLabels;

    move-result-object v0

    move-object/from16 v1, p3

    iput-object v0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 201
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 179
    invoke-static {v4, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v4, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method static final update$makeCategoryTickLabels$lambda$8$lambda$4(Lcom/metamoji/ch/IChLinearScaleAxisSetting;I)D
    .locals 4

    .line 186
    invoke-interface {p0}, Lcom/metamoji/ch/IChLinearScaleAxisSetting;->getMinValue()D

    move-result-wide v0

    int-to-double v2, p1

    invoke-interface {p0}, Lcom/metamoji/ch/IChLinearScaleAxisSetting;->getTickSpacing()D

    move-result-wide p0

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    return-wide v0
.end method

.method static final update$makeCategoryTickLabels$lambda$8$lambda$6(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/metamoji/ch/ChRect;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    iput-object p1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final update$makeCategoryTickLabels$lambda$8$lambda$7(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/metamoji/ch/IChLinearScaleAxisSetting;I)D
    .locals 2

    .line 199
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p0, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Lcom/metamoji/ch/scatter/ChScatterChart;->update$positionXOf(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/metamoji/ch/IChLinearScaleAxisSetting;D)D

    move-result-wide p0

    return-wide p0
.end method

.method private static final update$makeValueTickLabels(Lcom/metamoji/df/sprite/Graphics;Lcom/metamoji/ch/scatter/ChScatterChart;Lcom/metamoji/ch/IChLinearScaleAxisSetting;Ljava/util/List;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/df/sprite/Graphics;",
            "Lcom/metamoji/ch/scatter/ChScatterChart;",
            "Lcom/metamoji/ch/IChLinearScaleAxisSetting;",
            "Ljava/util/List<",
            "Lcom/metamoji/ch/internal/ChStringWithSize;",
            ">;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/metamoji/ch/ChRect;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p4

    .line 106
    new-instance v2, Lcom/metamoji/ch/internal/ChCleanGraphics;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v2, p0}, Lcom/metamoji/ch/internal/ChCleanGraphics;-><init>(Lcom/metamoji/df/sprite/Graphics;)V

    check-cast v2, Ljava/io/Closeable;

    :try_start_0
    move-object v3, v2

    check-cast v3, Lcom/metamoji/ch/internal/ChCleanGraphics;

    .line 107
    new-instance v3, Lcom/metamoji/df/sprite/PaintSolid;

    iget-object v4, p1, Lcom/metamoji/ch/scatter/ChScatterChart;->setting:Lcom/metamoji/ch/scatter/IChScatterChartSetting;

    invoke-interface {v4}, Lcom/metamoji/ch/scatter/IChScatterChartSetting;->getValueScaleGrid()Lcom/metamoji/ch/IChScaleGridSetting;

    move-result-object v4

    invoke-interface {v4}, Lcom/metamoji/ch/IChScaleGridSetting;->getLabel()Lcom/metamoji/ch/IChLabelSetting;

    move-result-object v4

    invoke-interface {v4}, Lcom/metamoji/ch/IChLabelSetting;->getColor()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    check-cast v3, Lcom/metamoji/df/sprite/Paint;

    invoke-virtual {p0, v3}, Lcom/metamoji/df/sprite/Graphics;->setTextPaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 108
    iget-object v3, p1, Lcom/metamoji/ch/scatter/ChScatterChart;->setting:Lcom/metamoji/ch/scatter/IChScatterChartSetting;

    invoke-interface {v3}, Lcom/metamoji/ch/scatter/IChScatterChartSetting;->getValueScaleGrid()Lcom/metamoji/ch/IChScaleGridSetting;

    move-result-object v3

    invoke-interface {v3}, Lcom/metamoji/ch/IChScaleGridSetting;->getLabel()Lcom/metamoji/ch/IChLabelSetting;

    move-result-object v3

    invoke-interface {v3}, Lcom/metamoji/ch/IChLabelSetting;->getFontName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/metamoji/df/sprite/Graphics;->setFontName(Ljava/lang/String;)V

    .line 109
    iget-object v3, p1, Lcom/metamoji/ch/scatter/ChScatterChart;->setting:Lcom/metamoji/ch/scatter/IChScatterChartSetting;

    invoke-interface {v3}, Lcom/metamoji/ch/scatter/IChScatterChartSetting;->getValueScaleGrid()Lcom/metamoji/ch/IChScaleGridSetting;

    move-result-object v3

    invoke-interface {v3}, Lcom/metamoji/ch/IChScaleGridSetting;->getLabel()Lcom/metamoji/ch/IChLabelSetting;

    move-result-object v3

    invoke-interface {v3}, Lcom/metamoji/ch/IChLabelSetting;->getFontSize()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-virtual {p0, v3}, Lcom/metamoji/df/sprite/Graphics;->setFontSize(F)V

    .line 111
    invoke-interface/range {p2 .. p2}, Lcom/metamoji/ch/IChLinearScaleAxisSetting;->getMaxValue()D

    move-result-wide v3

    invoke-interface/range {p2 .. p2}, Lcom/metamoji/ch/IChLinearScaleAxisSetting;->getMinValue()D

    move-result-wide v5

    sub-double/2addr v3, v5

    invoke-interface/range {p2 .. p2}, Lcom/metamoji/ch/IChLinearScaleAxisSetting;->getTickSpacing()D

    move-result-wide v5

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 112
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->clear()V

    .line 113
    new-instance v4, Lcom/metamoji/ch/internal/ChNumberFormatter;

    invoke-direct {v4}, Lcom/metamoji/ch/internal/ChNumberFormatter;-><init>()V

    .line 114
    invoke-interface/range {p2 .. p2}, Lcom/metamoji/ch/IChLinearScaleAxisSetting;->getNumDecimal()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/metamoji/ch/internal/ChNumberFormatter;->setFractionDigits(I)V

    const-wide/16 v5, 0x0

    if-ltz v3, :cond_1

    const/4 v7, 0x0

    .line 117
    :goto_0
    invoke-interface/range {p2 .. p2}, Lcom/metamoji/ch/IChLinearScaleAxisSetting;->getMinValue()D

    move-result-wide v8

    int-to-double v10, v7

    invoke-interface/range {p2 .. p2}, Lcom/metamoji/ch/IChLinearScaleAxisSetting;->getTickSpacing()D

    move-result-wide v12

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    .line 118
    invoke-virtual {v4, v8, v9}, Lcom/metamoji/ch/internal/ChNumberFormatter;->stringFrom(D)Ljava/lang/String;

    move-result-object v8

    .line 119
    invoke-virtual {p0, v8}, Lcom/metamoji/df/sprite/Graphics;->rectOfString(Ljava/lang/String;)Landroid/graphics/RectF;

    move-result-object v9

    .line 120
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v9}, Lcom/metamoji/ch/ChRectKt;->getChSize(Landroid/graphics/RectF;)Lcom/metamoji/ch/ChSize;

    move-result-object v9

    .line 121
    new-instance v10, Lcom/metamoji/ch/internal/ChStringWithSize;

    invoke-direct {v10, v8, v9}, Lcom/metamoji/ch/internal/ChStringWithSize;-><init>(Ljava/lang/String;Lcom/metamoji/ch/ChSize;)V

    .line 123
    invoke-virtual {v10}, Lcom/metamoji/ch/internal/ChStringWithSize;->getSize()Lcom/metamoji/ch/ChSize;

    move-result-object v8

    invoke-virtual {v8}, Lcom/metamoji/ch/ChSize;->getWidth()D

    move-result-wide v8

    cmpg-double v11, v5, v8

    if-gez v11, :cond_0

    move-wide v5, v8

    :cond_0
    move-object/from16 v8, p3

    .line 127
    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eq v7, v3, :cond_1

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 130
    :cond_1
    iget-object p0, p1, Lcom/metamoji/ch/scatter/ChScatterChart;->setting:Lcom/metamoji/ch/scatter/IChScatterChartSetting;

    invoke-interface {p0}, Lcom/metamoji/ch/scatter/IChScatterChartSetting;->getValueScaleGrid()Lcom/metamoji/ch/IChScaleGridSetting;

    move-result-object p0

    invoke-interface {p0}, Lcom/metamoji/ch/IChScaleGridSetting;->getLabelMargin()D

    move-result-wide v3

    add-double/2addr v5, v3

    .line 131
    iget-object p0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Lcom/metamoji/ch/ChRect;

    invoke-virtual {p0}, Lcom/metamoji/ch/ChRect;->getX()D

    move-result-wide v3

    add-double/2addr v3, v5

    invoke-virtual {p0, v3, v4}, Lcom/metamoji/ch/ChRect;->setX(D)V

    .line 132
    iget-object p0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Lcom/metamoji/ch/ChRect;

    invoke-virtual {p0}, Lcom/metamoji/ch/ChRect;->getWidth()D

    move-result-wide v0

    sub-double/2addr v0, v5

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/ch/ChRect;->setWidth(D)V

    .line 133
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    .line 106
    invoke-static {v2, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v2, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static final update$positionXOf(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/metamoji/ch/IChLinearScaleAxisSetting;D)D
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/metamoji/ch/ChRect;",
            ">;",
            "Lcom/metamoji/ch/IChLinearScaleAxisSetting;",
            "D)D"
        }
    .end annotation

    .line 97
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Lcom/metamoji/ch/ChRect;

    invoke-virtual {p0}, Lcom/metamoji/ch/ChRect;->getWidth()D

    move-result-wide v0

    invoke-interface {p1}, Lcom/metamoji/ch/IChLinearScaleAxisSetting;->getMaxValue()D

    move-result-wide v2

    invoke-interface {p1}, Lcom/metamoji/ch/IChLinearScaleAxisSetting;->getMinValue()D

    move-result-wide v4

    sub-double/2addr v2, v4

    div-double/2addr v0, v2

    .line 98
    invoke-interface {p1}, Lcom/metamoji/ch/IChLinearScaleAxisSetting;->getMinValue()D

    move-result-wide p0

    neg-double p0, p0

    mul-double/2addr p0, v0

    mul-double/2addr p2, v0

    add-double/2addr p0, p2

    return-wide p0
.end method

.method private static final update$positionYOf(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/metamoji/ch/IChLinearScaleAxisSetting;D)D
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/metamoji/ch/ChRect;",
            ">;",
            "Lcom/metamoji/ch/IChLinearScaleAxisSetting;",
            "D)D"
        }
    .end annotation

    .line 88
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Lcom/metamoji/ch/ChRect;

    invoke-virtual {p0}, Lcom/metamoji/ch/ChRect;->getHeight()D

    move-result-wide v0

    invoke-interface {p1}, Lcom/metamoji/ch/IChLinearScaleAxisSetting;->getMaxValue()D

    move-result-wide v2

    invoke-interface {p1}, Lcom/metamoji/ch/IChLinearScaleAxisSetting;->getMinValue()D

    move-result-wide v4

    sub-double/2addr v2, v4

    div-double/2addr v0, v2

    .line 89
    invoke-interface {p1}, Lcom/metamoji/ch/IChLinearScaleAxisSetting;->getMinValue()D

    move-result-wide p0

    neg-double p0, p0

    mul-double/2addr p0, v0

    mul-double/2addr p2, v0

    add-double/2addr p0, p2

    return-wide p0
.end method

.method private static final update$updateLegendItems(Lcom/metamoji/ch/scatter/ChScatterChart;ILcom/metamoji/ch/IChDataSource;)V
    .locals 19

    move-object/from16 v0, p0

    const/4 v1, 0x0

    move/from16 v2, p1

    .line 65
    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 416
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 417
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v1

    check-cast v3, Lkotlin/collections/IntIterator;

    invoke-virtual {v3}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v3

    move-object/from16 v4, p2

    .line 66
    invoke-interface {v4, v3}, Lcom/metamoji/ch/IChDataSource;->seriesTitle(I)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    const-string v5, ""

    :cond_0
    move-object v8, v5

    .line 67
    iget-object v5, v0, Lcom/metamoji/ch/scatter/ChScatterChart;->setting:Lcom/metamoji/ch/scatter/IChScatterChartSetting;

    invoke-interface {v5, v3}, Lcom/metamoji/ch/scatter/IChScatterChartSetting;->isLineDraw(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 68
    sget-object v5, Lcom/metamoji/ch/ChLegend$Item$Element;->MARKER:Lcom/metamoji/ch/ChLegend$Item$Element;

    check-cast v5, Ljava/lang/Enum;

    sget-object v6, Lcom/metamoji/ch/ChLegend$Item$Element;->LINE:Lcom/metamoji/ch/ChLegend$Item$Element;

    check-cast v6, Ljava/lang/Enum;

    invoke-static {v5, v6}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v5

    goto :goto_1

    .line 70
    :cond_1
    sget-object v5, Lcom/metamoji/ch/ChLegend$Item$Element;->MARKER:Lcom/metamoji/ch/ChLegend$Item$Element;

    check-cast v5, Ljava/lang/Enum;

    invoke-static {v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v5

    :goto_1
    move-object v7, v5

    .line 72
    new-instance v6, Lcom/metamoji/ch/ChLegend$Item;

    .line 73
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 75
    iget-object v5, v0, Lcom/metamoji/ch/scatter/ChScatterChart;->setting:Lcom/metamoji/ch/scatter/IChScatterChartSetting;

    invoke-interface {v5, v3}, Lcom/metamoji/ch/scatter/IChScatterChartSetting;->lineColor(I)I

    move-result v10

    .line 76
    iget-object v5, v0, Lcom/metamoji/ch/scatter/ChScatterChart;->setting:Lcom/metamoji/ch/scatter/IChScatterChartSetting;

    invoke-interface {v5, v3}, Lcom/metamoji/ch/scatter/IChScatterChartSetting;->lineWidth(I)D

    move-result-wide v11

    .line 77
    iget-object v5, v0, Lcom/metamoji/ch/scatter/ChScatterChart;->setting:Lcom/metamoji/ch/scatter/IChScatterChartSetting;

    invoke-interface {v5, v3}, Lcom/metamoji/ch/scatter/IChScatterChartSetting;->markerType(I)Lcom/metamoji/ch/ChMarker;

    move-result-object v13

    .line 78
    iget-object v5, v0, Lcom/metamoji/ch/scatter/ChScatterChart;->setting:Lcom/metamoji/ch/scatter/IChScatterChartSetting;

    invoke-interface {v5, v3}, Lcom/metamoji/ch/scatter/IChScatterChartSetting;->markerSize(I)D

    move-result-wide v14

    .line 79
    iget-object v5, v0, Lcom/metamoji/ch/scatter/ChScatterChart;->setting:Lcom/metamoji/ch/scatter/IChScatterChartSetting;

    invoke-interface {v5, v3}, Lcom/metamoji/ch/scatter/IChScatterChartSetting;->markerColor(I)I

    move-result v16

    const/16 v17, 0x4

    const/16 v18, 0x0

    const/4 v9, 0x0

    .line 72
    invoke-direct/range {v6 .. v18}, Lcom/metamoji/ch/ChLegend$Item;-><init>(Ljava/util/EnumSet;Ljava/lang/String;IIDLcom/metamoji/ch/ChMarker;DIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 418
    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 419
    :cond_2
    check-cast v2, Ljava/util/List;

    .line 65
    iput-object v2, v0, Lcom/metamoji/ch/scatter/ChScatterChart;->legendItems:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final calcNiceCategoryScaleAxis()Lcom/metamoji/ch/IChLinearScaleAxisSetting;
    .locals 11

    .line 393
    invoke-virtual {p0}, Lcom/metamoji/ch/scatter/ChScatterChart;->getDataSource()Lcom/metamoji/ch/IChDataSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/ch/IChDataSource;->getCategoryCount()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move-wide v4, v1

    move-wide v6, v4

    :goto_0
    if-ge v3, v0, :cond_2

    .line 397
    invoke-virtual {p0}, Lcom/metamoji/ch/scatter/ChScatterChart;->getDataSource()Lcom/metamoji/ch/IChDataSource;

    move-result-object v8

    invoke-interface {v8, v3}, Lcom/metamoji/ch/IChDataSource;->categoryTitleAsNumber(I)Ljava/lang/Double;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 398
    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v9

    if-nez v9, :cond_1

    .line 399
    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    cmpg-double v9, v9, v4

    if-gez v9, :cond_0

    .line 400
    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 402
    :cond_0
    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    cmpl-double v9, v9, v6

    if-lez v9, :cond_1

    .line 403
    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    cmpg-double v0, v4, v1

    if-nez v0, :cond_3

    cmpg-double v0, v6, v1

    if-nez v0, :cond_3

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 412
    :cond_3
    new-instance v0, Lcom/metamoji/ch/internal/ChNiceScale;

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/metamoji/ch/internal/ChNiceScale;-><init>(DD)V

    check-cast v0, Lcom/metamoji/ch/IChLinearScaleAxisSetting;

    return-object v0
.end method

.method public final calcNiceValueScaleAxis()Lcom/metamoji/ch/IChLinearScaleAxisSetting;
    .locals 14

    .line 361
    invoke-virtual {p0}, Lcom/metamoji/ch/scatter/ChScatterChart;->getDataSource()Lcom/metamoji/ch/IChDataSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/ch/IChDataSource;->getCategoryCount()I

    move-result v0

    .line 362
    invoke-virtual {p0}, Lcom/metamoji/ch/scatter/ChScatterChart;->getDataSource()Lcom/metamoji/ch/IChDataSource;

    move-result-object v1

    invoke-interface {v1}, Lcom/metamoji/ch/IChDataSource;->getSeriesCount()I

    move-result v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-wide v6, v2

    move-wide v8, v6

    move v5, v4

    :goto_0
    if-ge v5, v0, :cond_3

    move v10, v4

    :goto_1
    if-ge v10, v1, :cond_2

    .line 368
    invoke-virtual {p0}, Lcom/metamoji/ch/scatter/ChScatterChart;->getDataSource()Lcom/metamoji/ch/IChDataSource;

    move-result-object v11

    invoke-interface {v11, v5, v10}, Lcom/metamoji/ch/IChDataSource;->data(II)Ljava/lang/Double;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 369
    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    move-result v12

    if-nez v12, :cond_1

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v12

    if-nez v12, :cond_1

    .line 370
    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    cmpg-double v12, v12, v6

    if-gez v12, :cond_0

    .line 371
    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 373
    :cond_0
    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    cmpl-double v12, v12, v8

    if-lez v12, :cond_1

    .line 374
    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    cmpg-double v0, v6, v2

    if-nez v0, :cond_4

    cmpg-double v0, v8, v2

    if-nez v0, :cond_4

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 388
    :cond_4
    new-instance v0, Lcom/metamoji/ch/internal/ChNiceScale;

    invoke-direct {v0, v6, v7, v8, v9}, Lcom/metamoji/ch/internal/ChNiceScale;-><init>(DD)V

    check-cast v0, Lcom/metamoji/ch/IChLinearScaleAxisSetting;

    return-object v0
.end method

.method public getChartSize()Lcom/metamoji/ch/ChSize;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/metamoji/ch/scatter/ChScatterChart;->chartSize:Lcom/metamoji/ch/ChSize;

    return-object v0
.end method

.method public getDataSource()Lcom/metamoji/ch/IChDataSource;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/metamoji/ch/scatter/ChScatterChart;->dataSource:Lcom/metamoji/ch/IChDataSource;

    return-object v0
.end method

.method public getLegendItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/ch/ChLegend$Item;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/metamoji/ch/scatter/ChScatterChart;->legendItems:Ljava/util/List;

    return-object v0
.end method

.method public final getSetting()Lcom/metamoji/ch/scatter/IChScatterChartSetting;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/metamoji/ch/scatter/ChScatterChart;->setting:Lcom/metamoji/ch/scatter/IChScatterChartSetting;

    return-object v0
.end method

.method public getSprite()Lcom/metamoji/df/sprite/Sprite;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/metamoji/ch/scatter/ChScatterChart;->sprite:Lcom/metamoji/df/sprite/Sprite;

    return-object v0
.end method

.method public update(Lcom/metamoji/ch/IChDataSource;Lcom/metamoji/ch/ChSize;)V
    .locals 21

    move-object/from16 v3, p0

    move-object/from16 v7, p1

    move-object/from16 v4, p2

    const-string v0, "dataSource"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chartSize"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iput-object v7, v3, Lcom/metamoji/ch/scatter/ChScatterChart;->dataSource:Lcom/metamoji/ch/IChDataSource;

    .line 39
    iput-object v4, v3, Lcom/metamoji/ch/scatter/ChScatterChart;->chartSize:Lcom/metamoji/ch/ChSize;

    .line 41
    invoke-virtual {v3}, Lcom/metamoji/ch/scatter/ChScatterChart;->getSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    invoke-virtual {v4}, Lcom/metamoji/ch/ChSize;->getWidth()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Sprite;->setWidth(F)V

    .line 42
    invoke-virtual {v3}, Lcom/metamoji/ch/scatter/ChScatterChart;->getSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    invoke-virtual {v4}, Lcom/metamoji/ch/ChSize;->getHeight()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Sprite;->setHeight(F)V

    .line 44
    new-instance v6, Lcom/metamoji/ch/internal/transformer/ChFlipVerticalTransformer;

    invoke-virtual {v4}, Lcom/metamoji/ch/ChSize;->getHeight()D

    move-result-wide v0

    invoke-direct {v6, v0, v1}, Lcom/metamoji/ch/internal/transformer/ChFlipVerticalTransformer;-><init>(D)V

    .line 46
    invoke-interface {v7}, Lcom/metamoji/ch/IChDataSource;->getCategoryCount()I

    move-result v8

    .line 47
    invoke-interface {v7}, Lcom/metamoji/ch/IChDataSource;->getSeriesCount()I

    move-result v9

    .line 48
    iget-object v0, v3, Lcom/metamoji/ch/scatter/ChScatterChart;->setting:Lcom/metamoji/ch/scatter/IChScatterChartSetting;

    invoke-interface {v0}, Lcom/metamoji/ch/scatter/IChScatterChartSetting;->getValueScaleAxis()Lcom/metamoji/ch/IChLinearScaleAxisSetting;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {v3}, Lcom/metamoji/ch/scatter/ChScatterChart;->calcNiceValueScaleAxis()Lcom/metamoji/ch/IChLinearScaleAxisSetting;

    move-result-object v0

    :cond_0
    move-object v10, v0

    .line 49
    iget-object v0, v3, Lcom/metamoji/ch/scatter/ChScatterChart;->setting:Lcom/metamoji/ch/scatter/IChScatterChartSetting;

    invoke-interface {v0}, Lcom/metamoji/ch/scatter/IChScatterChartSetting;->getCategoryScaleAxis()Lcom/metamoji/ch/IChLinearScaleAxisSetting;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {v3}, Lcom/metamoji/ch/scatter/ChScatterChart;->calcNiceCategoryScaleAxis()Lcom/metamoji/ch/IChLinearScaleAxisSetting;

    move-result-object v0

    :cond_1
    move-object v2, v0

    .line 50
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v11, Lcom/metamoji/ch/ChRect;

    invoke-virtual {v4}, Lcom/metamoji/ch/ChSize;->getWidth()D

    move-result-wide v16

    invoke-virtual {v4}, Lcom/metamoji/ch/ChSize;->getHeight()D

    move-result-wide v18

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    invoke-direct/range {v11 .. v19}, Lcom/metamoji/ch/ChRect;-><init>(DDDD)V

    iput-object v11, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 52
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v1

    check-cast v11, Ljava/util/List;

    .line 53
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 55
    invoke-virtual {v3}, Lcom/metamoji/ch/scatter/ChScatterChart;->getSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v12

    .line 56
    invoke-virtual {v12}, Lcom/metamoji/df/sprite/Graphics;->clear()V

    .line 58
    iget-object v5, v3, Lcom/metamoji/ch/scatter/ChScatterChart;->drawAreaSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v5}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v13

    .line 59
    invoke-virtual {v13}, Lcom/metamoji/df/sprite/Graphics;->clear()V

    .line 61
    iget-object v5, v3, Lcom/metamoji/ch/scatter/ChScatterChart;->categoryLabelSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v5}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v5

    .line 62
    invoke-virtual {v5}, Lcom/metamoji/df/sprite/Graphics;->clear()V

    .line 343
    invoke-static {v3, v9, v7}, Lcom/metamoji/ch/scatter/ChScatterChart;->update$updateLegendItems(Lcom/metamoji/ch/scatter/ChScatterChart;ILcom/metamoji/ch/IChDataSource;)V

    .line 347
    invoke-static {v12, v3, v10, v11, v0}, Lcom/metamoji/ch/scatter/ChScatterChart;->update$makeValueTickLabels(Lcom/metamoji/df/sprite/Graphics;Lcom/metamoji/ch/scatter/ChScatterChart;Lcom/metamoji/ch/IChLinearScaleAxisSetting;Ljava/util/List;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    move-object/from16 v20, v5

    move-object v5, v0

    move-object/from16 v0, v20

    move-object/from16 v20, v3

    move-object v3, v1

    move-object/from16 v1, v20

    .line 348
    invoke-static/range {v0 .. v5}, Lcom/metamoji/ch/scatter/ChScatterChart;->update$makeCategoryTickLabels(Lcom/metamoji/df/sprite/Graphics;Lcom/metamoji/ch/scatter/ChScatterChart;Lcom/metamoji/ch/IChLinearScaleAxisSetting;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/metamoji/ch/ChSize;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    move-object v4, v11

    move-object v11, v0

    move-object v0, v5

    move-object v5, v4

    move-object v4, v10

    move-object v10, v3

    move-object v3, v1

    move-object v1, v6

    move-object v6, v2

    move-object v2, v12

    .line 351
    invoke-static/range {v0 .. v5}, Lcom/metamoji/ch/scatter/ChScatterChart;->update$drawValueScale(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/metamoji/ch/internal/transformer/ChFlipVerticalTransformer;Lcom/metamoji/df/sprite/Graphics;Lcom/metamoji/ch/scatter/ChScatterChart;Lcom/metamoji/ch/IChLinearScaleAxisSetting;Ljava/util/List;)V

    move-object v5, v6

    move-object v6, v10

    move-object v10, v4

    move-object v4, v11

    .line 354
    invoke-static/range {v0 .. v6}, Lcom/metamoji/ch/scatter/ChScatterChart;->update$drawCategoryScale(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/metamoji/ch/internal/transformer/ChFlipVerticalTransformer;Lcom/metamoji/df/sprite/Graphics;Lcom/metamoji/ch/scatter/ChScatterChart;Lcom/metamoji/df/sprite/Graphics;Lcom/metamoji/ch/IChLinearScaleAxisSetting;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    move-object v2, v3

    move-object v6, v7

    move v4, v9

    move-object v3, v13

    move-object v7, v5

    move v5, v8

    move-object v8, v10

    .line 357
    invoke-static/range {v0 .. v8}, Lcom/metamoji/ch/scatter/ChScatterChart;->update$drawScatter(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/metamoji/ch/internal/transformer/ChFlipVerticalTransformer;Lcom/metamoji/ch/scatter/ChScatterChart;Lcom/metamoji/df/sprite/Graphics;IILcom/metamoji/ch/IChDataSource;Lcom/metamoji/ch/IChLinearScaleAxisSetting;Lcom/metamoji/ch/IChLinearScaleAxisSetting;)V

    return-void
.end method
