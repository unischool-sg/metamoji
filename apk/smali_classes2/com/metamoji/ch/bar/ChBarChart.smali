.class public final Lcom/metamoji/ch/bar/ChBarChart;
.super Ljava/lang/Object;
.source "ChBarChart.kt"

# interfaces
.implements Lcom/metamoji/ch/IChChart;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChBarChart.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChBarChart.kt\ncom/metamoji/ch/bar/ChBarChart\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,434:1\n1563#2:435\n1634#2,3:436\n1563#2:439\n1634#2,3:440\n1563#2:443\n1634#2,3:444\n*S KotlinDebug\n*F\n+ 1 ChBarChart.kt\ncom/metamoji/ch/bar/ChBarChart\n*L\n84#1:435\n84#1:436,3\n170#1:439\n170#1:440,3\n247#1:443\n247#1:444,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0018\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\tH\u0016J\u0006\u0010\"\u001a\u00020#R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u001e\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\t@RX\u0096\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u001e\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0008\u001a\u00020\r@RX\u0096\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R*\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00112\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011@RX\u0096\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u0016\u001a\u00020\u0017X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u000e\u0010\u001a\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001f\u001a\u00020 8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010!\u00a8\u0006$"
    }
    d2 = {
        "Lcom/metamoji/ch/bar/ChBarChart;",
        "Lcom/metamoji/ch/IChChart;",
        "setting",
        "Lcom/metamoji/ch/bar/IChBarChartSetting;",
        "<init>",
        "(Lcom/metamoji/ch/bar/IChBarChartSetting;)V",
        "getSetting",
        "()Lcom/metamoji/ch/bar/IChBarChartSetting;",
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
        "valueLabelSprite",
        "update",
        "",
        "isVertical",
        "",
        "()Z",
        "calcNiceValueScaleAxis",
        "Lcom/metamoji/ch/IChLinearScaleAxisSetting;",
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

.field private final setting:Lcom/metamoji/ch/bar/IChBarChartSetting;

.field private final sprite:Lcom/metamoji/df/sprite/Sprite;

.field private final valueLabelSprite:Lcom/metamoji/df/sprite/Sprite;


# direct methods
.method public constructor <init>(Lcom/metamoji/ch/bar/IChBarChartSetting;)V
    .locals 3

    const-string v0, "setting"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ch/bar/ChBarChart;->setting:Lcom/metamoji/ch/bar/IChBarChartSetting;

    .line 16
    new-instance p1, Lcom/metamoji/ch/ChSize;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1, v0, v1}, Lcom/metamoji/ch/ChSize;-><init>(DD)V

    iput-object p1, p0, Lcom/metamoji/ch/bar/ChBarChart;->chartSize:Lcom/metamoji/ch/ChSize;

    .line 19
    new-instance p1, Lcom/metamoji/ch/ChNullDataSource;

    invoke-direct {p1}, Lcom/metamoji/ch/ChNullDataSource;-><init>()V

    check-cast p1, Lcom/metamoji/ch/IChDataSource;

    iput-object p1, p0, Lcom/metamoji/ch/bar/ChBarChart;->dataSource:Lcom/metamoji/ch/IChDataSource;

    .line 22
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ch/bar/ChBarChart;->legendItems:Ljava/util/List;

    .line 25
    new-instance p1, Lcom/metamoji/df/sprite/Sprite;

    invoke-direct {p1}, Lcom/metamoji/df/sprite/Sprite;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ch/bar/ChBarChart;->sprite:Lcom/metamoji/df/sprite/Sprite;

    .line 26
    new-instance p1, Lcom/metamoji/df/sprite/Sprite;

    invoke-direct {p1}, Lcom/metamoji/df/sprite/Sprite;-><init>()V

    const/4 v0, 0x1

    .line 27
    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Sprite;->setClipping(Z)V

    .line 26
    iput-object p1, p0, Lcom/metamoji/ch/bar/ChBarChart;->drawAreaSprite:Lcom/metamoji/df/sprite/Sprite;

    .line 29
    new-instance v0, Lcom/metamoji/df/sprite/Sprite;

    invoke-direct {v0}, Lcom/metamoji/df/sprite/Sprite;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ch/bar/ChBarChart;->categoryLabelSprite:Lcom/metamoji/df/sprite/Sprite;

    .line 30
    new-instance v1, Lcom/metamoji/df/sprite/Sprite;

    invoke-direct {v1}, Lcom/metamoji/df/sprite/Sprite;-><init>()V

    iput-object v1, p0, Lcom/metamoji/ch/bar/ChBarChart;->valueLabelSprite:Lcom/metamoji/df/sprite/Sprite;

    .line 33
    invoke-virtual {p0}, Lcom/metamoji/ch/bar/ChBarChart;->getSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/metamoji/df/sprite/Sprite;->addChild(Lcom/metamoji/df/sprite/Sprite;)V

    .line 34
    invoke-virtual {p0}, Lcom/metamoji/ch/bar/ChBarChart;->getSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Sprite;->addChild(Lcom/metamoji/df/sprite/Sprite;)V

    .line 35
    invoke-virtual {p0}, Lcom/metamoji/ch/bar/ChBarChart;->getSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/metamoji/df/sprite/Sprite;->addChild(Lcom/metamoji/df/sprite/Sprite;)V

    return-void
.end method

.method private final isVertical()Z
    .locals 2

    .line 401
    iget-object v0, p0, Lcom/metamoji/ch/bar/ChBarChart;->setting:Lcom/metamoji/ch/bar/IChBarChartSetting;

    invoke-interface {v0}, Lcom/metamoji/ch/bar/IChBarChartSetting;->getOrientation()Lcom/metamoji/ch/bar/ChBarChartOrientation;

    move-result-object v0

    sget-object v1, Lcom/metamoji/ch/bar/ChBarChartOrientation;->VERTICAL:Lcom/metamoji/ch/bar/ChBarChartOrientation;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static final update$drawBars(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/metamoji/ch/internal/transformer/IChCoordinateTransformer;Lcom/metamoji/ch/bar/ChBarChart;Lcom/metamoji/df/sprite/Graphics;ILkotlin/jvm/internal/Ref$DoubleRef;Lkotlin/jvm/internal/Ref$DoubleRef;ILcom/metamoji/ch/IChDataSource;Lkotlin/jvm/internal/Ref$DoubleRef;Lkotlin/jvm/internal/Ref$DoubleRef;Lcom/metamoji/ch/IChLinearScaleAxisSetting;)V
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/metamoji/ch/ChRect;",
            ">;",
            "Lcom/metamoji/ch/internal/transformer/IChCoordinateTransformer;",
            "Lcom/metamoji/ch/bar/ChBarChart;",
            "Lcom/metamoji/df/sprite/Graphics;",
            "I",
            "Lkotlin/jvm/internal/Ref$DoubleRef;",
            "Lkotlin/jvm/internal/Ref$DoubleRef;",
            "I",
            "Lcom/metamoji/ch/IChDataSource;",
            "Lkotlin/jvm/internal/Ref$DoubleRef;",
            "Lkotlin/jvm/internal/Ref$DoubleRef;",
            "Lcom/metamoji/ch/IChLinearScaleAxisSetting;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p9

    move-object/from16 v7, p11

    .line 327
    iget-object v8, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v8, Lcom/metamoji/ch/ChRect;

    invoke-virtual {v8}, Lcom/metamoji/ch/ChRect;->getWidth()D

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmpg-double v8, v8, v10

    if-lez v8, :cond_6

    iget-object v8, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v8, Lcom/metamoji/ch/ChRect;

    invoke-virtual {v8}, Lcom/metamoji/ch/ChRect;->getHeight()D

    move-result-wide v8

    cmpg-double v8, v8, v10

    if-gtz v8, :cond_0

    goto/16 :goto_3

    .line 333
    :cond_0
    iget-object v8, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v8, Lcom/metamoji/ch/ChRect;

    invoke-interface {v1, v8}, Lcom/metamoji/ch/internal/transformer/IChCoordinateTransformer;->rect(Lcom/metamoji/ch/ChRect;)Lcom/metamoji/ch/ChRect;

    move-result-object v8

    .line 334
    invoke-virtual {v8}, Lcom/metamoji/ch/ChRect;->getWidth()D

    move-result-wide v12

    cmpg-double v9, v12, v10

    if-gez v9, :cond_1

    .line 335
    invoke-virtual {v8}, Lcom/metamoji/ch/ChRect;->getX()D

    move-result-wide v12

    invoke-virtual {v8}, Lcom/metamoji/ch/ChRect;->getWidth()D

    move-result-wide v14

    add-double/2addr v12, v14

    invoke-virtual {v8, v12, v13}, Lcom/metamoji/ch/ChRect;->setX(D)V

    .line 336
    invoke-virtual {v8}, Lcom/metamoji/ch/ChRect;->getWidth()D

    move-result-wide v12

    neg-double v12, v12

    invoke-virtual {v8, v12, v13}, Lcom/metamoji/ch/ChRect;->setWidth(D)V

    .line 338
    :cond_1
    invoke-virtual {v8}, Lcom/metamoji/ch/ChRect;->getHeight()D

    move-result-wide v12

    cmpg-double v9, v12, v10

    if-gez v9, :cond_2

    .line 339
    invoke-virtual {v8}, Lcom/metamoji/ch/ChRect;->getY()D

    move-result-wide v12

    invoke-virtual {v8}, Lcom/metamoji/ch/ChRect;->getHeight()D

    move-result-wide v14

    add-double/2addr v12, v14

    invoke-virtual {v8, v12, v13}, Lcom/metamoji/ch/ChRect;->setY(D)V

    .line 340
    invoke-virtual {v8}, Lcom/metamoji/ch/ChRect;->getHeight()D

    move-result-wide v12

    neg-double v12, v12

    invoke-virtual {v8, v12, v13}, Lcom/metamoji/ch/ChRect;->setHeight(D)V

    .line 342
    :cond_2
    iget-object v9, v2, Lcom/metamoji/ch/bar/ChBarChart;->drawAreaSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v8}, Lcom/metamoji/ch/ChRect;->getX()D

    move-result-wide v12

    double-to-float v12, v12

    invoke-virtual {v9, v12}, Lcom/metamoji/df/sprite/Sprite;->setX(F)V

    .line 343
    iget-object v9, v2, Lcom/metamoji/ch/bar/ChBarChart;->drawAreaSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v8}, Lcom/metamoji/ch/ChRect;->getY()D

    move-result-wide v12

    double-to-float v12, v12

    invoke-virtual {v9, v12}, Lcom/metamoji/df/sprite/Sprite;->setY(F)V

    .line 344
    iget-object v9, v2, Lcom/metamoji/ch/bar/ChBarChart;->drawAreaSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v8}, Lcom/metamoji/ch/ChRect;->getWidth()D

    move-result-wide v12

    double-to-float v12, v12

    invoke-virtual {v9, v12}, Lcom/metamoji/df/sprite/Sprite;->setWidth(F)V

    .line 345
    iget-object v9, v2, Lcom/metamoji/ch/bar/ChBarChart;->drawAreaSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v8}, Lcom/metamoji/ch/ChRect;->getHeight()D

    move-result-wide v12

    double-to-float v12, v12

    invoke-virtual {v9, v12}, Lcom/metamoji/df/sprite/Sprite;->setHeight(F)V

    .line 347
    new-instance v9, Lcom/metamoji/ch/internal/transformer/ChCompositeTransformer;

    const/4 v12, 0x3

    .line 348
    new-array v12, v12, [Lcom/metamoji/ch/internal/transformer/IChCoordinateTransformer;

    new-instance v13, Lcom/metamoji/ch/internal/transformer/ChOffsetTransformer;

    iget-object v14, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v14, Lcom/metamoji/ch/ChRect;

    invoke-virtual {v14}, Lcom/metamoji/ch/ChRect;->getX()D

    move-result-wide v14

    iget-object v10, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v10, Lcom/metamoji/ch/ChRect;

    invoke-virtual {v10}, Lcom/metamoji/ch/ChRect;->getY()D

    move-result-wide v10

    invoke-direct {v13, v14, v15, v10, v11}, Lcom/metamoji/ch/internal/transformer/ChOffsetTransformer;-><init>(DD)V

    const/4 v10, 0x0

    aput-object v13, v12, v10

    const/4 v11, 0x1

    .line 349
    aput-object v1, v12, v11

    .line 350
    new-instance v1, Lcom/metamoji/ch/internal/transformer/ChOffsetTransformer;

    invoke-virtual {v8}, Lcom/metamoji/ch/ChRect;->getX()D

    move-result-wide v13

    neg-double v13, v13

    invoke-virtual {v8}, Lcom/metamoji/ch/ChRect;->getY()D

    move-result-wide v10

    neg-double v10, v10

    invoke-direct {v1, v13, v14, v10, v11}, Lcom/metamoji/ch/internal/transformer/ChOffsetTransformer;-><init>(DD)V

    const/4 v8, 0x2

    aput-object v1, v12, v8

    .line 347
    invoke-static {v12}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v9, v1}, Lcom/metamoji/ch/internal/transformer/ChCompositeTransformer;-><init>(Ljava/util/List;)V

    .line 353
    new-instance v1, Lcom/metamoji/ch/internal/ChCleanGraphics;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v1, v3}, Lcom/metamoji/ch/internal/ChCleanGraphics;-><init>(Lcom/metamoji/df/sprite/Graphics;)V

    check-cast v1, Ljava/io/Closeable;

    :try_start_0
    move-object v10, v1

    check-cast v10, Lcom/metamoji/ch/internal/ChCleanGraphics;

    move/from16 v10, p4

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v10, :cond_5

    int-to-double v12, v11

    move-object v14, v9

    .line 355
    iget-wide v8, v4, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    mul-double/2addr v12, v8

    iget-wide v8, v4, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    move-wide/from16 v18, v8

    iget-wide v8, v5, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    sub-double v8, v18, v8

    move-wide/from16 v19, v8

    const/4 v15, 0x2

    int-to-double v8, v15

    div-double v19, v19, v8

    add-double v12, v12, v19

    move/from16 v15, p7

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v15, :cond_4

    move-wide/from16 v19, v8

    move-object/from16 v8, p8

    .line 357
    invoke-interface {v8, v4, v11}, Lcom/metamoji/ch/IChDataSource;->data(II)Ljava/lang/Double;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 358
    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Double;->isNaN(D)Z

    move-result v21

    if-nez v21, :cond_3

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v21

    if-nez v21, :cond_3

    .line 359
    iget-object v8, v2, Lcom/metamoji/ch/bar/ChBarChart;->setting:Lcom/metamoji/ch/bar/IChBarChartSetting;

    move-object/from16 v21, v9

    invoke-interface {v8, v11, v4}, Lcom/metamoji/ch/bar/IChBarChartSetting;->lineWidth(II)D

    move-result-wide v8

    double-to-float v8, v8

    invoke-virtual {v3, v8}, Lcom/metamoji/df/sprite/Graphics;->setLineWidth(F)V

    .line 360
    new-instance v8, Lcom/metamoji/df/sprite/PaintSolid;

    iget-object v9, v2, Lcom/metamoji/ch/bar/ChBarChart;->setting:Lcom/metamoji/ch/bar/IChBarChartSetting;

    invoke-interface {v9, v11, v4}, Lcom/metamoji/ch/bar/IChBarChartSetting;->lineColor(II)I

    move-result v9

    invoke-direct {v8, v9}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    check-cast v8, Lcom/metamoji/df/sprite/Paint;

    invoke-virtual {v3, v8}, Lcom/metamoji/df/sprite/Graphics;->setLinePaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 361
    new-instance v8, Lcom/metamoji/df/sprite/PaintSolid;

    iget-object v9, v2, Lcom/metamoji/ch/bar/ChBarChart;->setting:Lcom/metamoji/ch/bar/IChBarChartSetting;

    invoke-interface {v9, v11, v4}, Lcom/metamoji/ch/bar/IChBarChartSetting;->fillColor(II)I

    move-result v9

    invoke-direct {v8, v9}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    check-cast v8, Lcom/metamoji/df/sprite/Paint;

    invoke-virtual {v3, v8}, Lcom/metamoji/df/sprite/Graphics;->setFillPaint(Lcom/metamoji/df/sprite/Paint;)V

    int-to-double v8, v4

    move-wide/from16 v22, v8

    .line 363
    iget-wide v8, v6, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    mul-double v8, v8, v22

    move-wide/from16 v22, v8

    iget-wide v8, v6, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    move-object/from16 v2, p10

    move-wide/from16 v24, v8

    iget-wide v8, v2, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    sub-double v8, v24, v8

    div-double v8, v8, v19

    add-double v8, v22, v8

    .line 364
    new-instance v22, Lcom/metamoji/ch/ChRect;

    add-double v23, v8, v12

    const-wide/16 v8, 0x0

    .line 366
    invoke-static {v0, v7, v8, v9}, Lcom/metamoji/ch/bar/ChBarChart;->update$positionOf(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/metamoji/ch/IChLinearScaleAxisSetting;D)D

    move-result-wide v25

    .line 367
    iget-wide v8, v5, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    move/from16 v31, v4

    .line 368
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v0, v7, v4, v5}, Lcom/metamoji/ch/bar/ChBarChart;->update$positionOf(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/metamoji/ch/IChLinearScaleAxisSetting;D)D

    move-result-wide v4

    move-wide/from16 v27, v4

    const-wide/16 v4, 0x0

    invoke-static {v0, v7, v4, v5}, Lcom/metamoji/ch/bar/ChBarChart;->update$positionOf(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/metamoji/ch/IChLinearScaleAxisSetting;D)D

    move-result-wide v16

    sub-double v29, v27, v16

    move-wide/from16 v27, v8

    .line 364
    invoke-direct/range {v22 .. v30}, Lcom/metamoji/ch/ChRect;-><init>(DDDD)V

    move-object/from16 v8, v22

    invoke-virtual {v14, v8}, Lcom/metamoji/ch/internal/transformer/ChCompositeTransformer;->rect(Lcom/metamoji/ch/ChRect;)Lcom/metamoji/ch/ChRect;

    move-result-object v8

    .line 369
    invoke-virtual {v8}, Lcom/metamoji/ch/ChRect;->standardized()Lcom/metamoji/ch/ChRect;

    move-result-object v8

    .line 370
    invoke-virtual {v8}, Lcom/metamoji/ch/ChRect;->getX()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v8}, Lcom/metamoji/ch/ChRect;->getY()D

    move-result-wide v5

    double-to-float v5, v5

    invoke-virtual {v8}, Lcom/metamoji/ch/ChRect;->getWidth()D

    move-result-wide v6

    double-to-float v6, v6

    invoke-virtual {v8}, Lcom/metamoji/ch/ChRect;->getHeight()D

    move-result-wide v7

    double-to-float v7, v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/metamoji/df/sprite/Graphics;->drawRect(FFFF)V

    goto :goto_2

    :cond_3
    move-object/from16 v2, p10

    move/from16 v31, v4

    :goto_2
    add-int/lit8 v4, v31, 0x1

    move-object/from16 v2, p2

    move-object/from16 v5, p6

    move-object/from16 v6, p9

    move-object/from16 v7, p11

    move-wide/from16 v8, v19

    goto/16 :goto_1

    :cond_4
    move-object/from16 v2, p10

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, p2

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p9

    move-object/from16 v7, p11

    move-object v9, v14

    const/4 v8, 0x2

    goto/16 :goto_0

    .line 374
    :cond_5
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 353
    invoke-static {v1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_6
    :goto_3
    return-void
.end method

.method private static final update$drawCategoryScale(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/metamoji/ch/internal/transformer/IChCoordinateTransformer;Lcom/metamoji/df/sprite/Graphics;Lcom/metamoji/ch/bar/ChBarChart;Lcom/metamoji/df/sprite/Graphics;Lkotlin/jvm/internal/Ref$DoubleRef;ILkotlin/jvm/internal/Ref$ObjectRef;Ljava/util/List;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/metamoji/ch/ChRect;",
            ">;",
            "Lcom/metamoji/ch/internal/transformer/IChCoordinateTransformer;",
            "Lcom/metamoji/df/sprite/Graphics;",
            "Lcom/metamoji/ch/bar/ChBarChart;",
            "Lcom/metamoji/df/sprite/Graphics;",
            "Lkotlin/jvm/internal/Ref$DoubleRef;",
            "I",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/metamoji/ch/internal/ChHorizontalAxisLabels;",
            ">;",
            "Ljava/util/List<",
            "Lcom/metamoji/ch/internal/ChStringWithSize;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    .line 280
    iget-object v7, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v7, Lcom/metamoji/ch/ChRect;

    invoke-virtual {v7}, Lcom/metamoji/ch/ChRect;->getWidth()D

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmpg-double v7, v7, v9

    if-gtz v7, :cond_0

    return-void

    .line 284
    :cond_0
    new-instance v7, Lcom/metamoji/ch/internal/transformer/ChCompositeTransformer;

    const/4 v8, 0x2

    .line 285
    new-array v11, v8, [Lcom/metamoji/ch/internal/transformer/IChCoordinateTransformer;

    new-instance v12, Lcom/metamoji/ch/internal/transformer/ChOffsetTransformer;

    iget-object v13, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v13, Lcom/metamoji/ch/ChRect;

    invoke-virtual {v13}, Lcom/metamoji/ch/ChRect;->getX()D

    move-result-wide v13

    iget-object v15, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v15, Lcom/metamoji/ch/ChRect;

    move-wide/from16 v16, v9

    invoke-virtual {v15}, Lcom/metamoji/ch/ChRect;->getY()D

    move-result-wide v8

    invoke-direct {v12, v13, v14, v8, v9}, Lcom/metamoji/ch/internal/transformer/ChOffsetTransformer;-><init>(DD)V

    const/4 v8, 0x0

    aput-object v12, v11, v8

    const/4 v9, 0x1

    .line 286
    aput-object p1, v11, v9

    .line 284
    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v7, v9}, Lcom/metamoji/ch/internal/transformer/ChCompositeTransformer;-><init>(Ljava/util/List;)V

    .line 289
    new-instance v9, Lcom/metamoji/ch/internal/ChCleanGraphics;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v9, v1}, Lcom/metamoji/ch/internal/ChCleanGraphics;-><init>(Lcom/metamoji/df/sprite/Graphics;)V

    check-cast v9, Ljava/io/Closeable;

    :try_start_0
    move-object v11, v9

    check-cast v11, Lcom/metamoji/ch/internal/ChCleanGraphics;

    .line 290
    iget-object v11, v2, Lcom/metamoji/ch/bar/ChBarChart;->setting:Lcom/metamoji/ch/bar/IChBarChartSetting;

    invoke-interface {v11}, Lcom/metamoji/ch/bar/IChBarChartSetting;->getCategoryScaleGrid()Lcom/metamoji/ch/IChScaleGridSetting;

    move-result-object v11

    invoke-interface {v11}, Lcom/metamoji/ch/IChScaleGridSetting;->getLineWidth()D

    move-result-wide v11

    double-to-float v11, v11

    invoke-virtual {v1, v11}, Lcom/metamoji/df/sprite/Graphics;->setLineWidth(F)V

    .line 291
    new-instance v11, Lcom/metamoji/df/sprite/PaintSolid;

    iget-object v12, v2, Lcom/metamoji/ch/bar/ChBarChart;->setting:Lcom/metamoji/ch/bar/IChBarChartSetting;

    invoke-interface {v12}, Lcom/metamoji/ch/bar/IChBarChartSetting;->getCategoryScaleGrid()Lcom/metamoji/ch/IChScaleGridSetting;

    move-result-object v12

    invoke-interface {v12}, Lcom/metamoji/ch/IChScaleGridSetting;->getLineColor()I

    move-result v12

    invoke-direct {v11, v12}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    check-cast v11, Lcom/metamoji/df/sprite/Paint;

    invoke-virtual {v1, v11}, Lcom/metamoji/df/sprite/Graphics;->setLinePaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 293
    new-instance v11, Lcom/metamoji/ch/internal/ChCleanGraphics;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v11, v3}, Lcom/metamoji/ch/internal/ChCleanGraphics;-><init>(Lcom/metamoji/df/sprite/Graphics;)V

    check-cast v11, Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    :try_start_1
    move-object v12, v11

    check-cast v12, Lcom/metamoji/ch/internal/ChCleanGraphics;

    .line 294
    new-instance v12, Lcom/metamoji/df/sprite/PaintSolid;

    iget-object v13, v2, Lcom/metamoji/ch/bar/ChBarChart;->setting:Lcom/metamoji/ch/bar/IChBarChartSetting;

    invoke-interface {v13}, Lcom/metamoji/ch/bar/IChBarChartSetting;->getCategoryScaleGrid()Lcom/metamoji/ch/IChScaleGridSetting;

    move-result-object v13

    invoke-interface {v13}, Lcom/metamoji/ch/IChScaleGridSetting;->getLabel()Lcom/metamoji/ch/IChLabelSetting;

    move-result-object v13

    invoke-interface {v13}, Lcom/metamoji/ch/IChLabelSetting;->getColor()I

    move-result v13

    invoke-direct {v12, v13}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    check-cast v12, Lcom/metamoji/df/sprite/Paint;

    invoke-virtual {v3, v12}, Lcom/metamoji/df/sprite/Graphics;->setTextPaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 295
    iget-object v12, v2, Lcom/metamoji/ch/bar/ChBarChart;->setting:Lcom/metamoji/ch/bar/IChBarChartSetting;

    invoke-interface {v12}, Lcom/metamoji/ch/bar/IChBarChartSetting;->getCategoryScaleGrid()Lcom/metamoji/ch/IChScaleGridSetting;

    move-result-object v12

    invoke-interface {v12}, Lcom/metamoji/ch/IChScaleGridSetting;->getLabel()Lcom/metamoji/ch/IChLabelSetting;

    move-result-object v12

    invoke-interface {v12}, Lcom/metamoji/ch/IChLabelSetting;->getFontName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Lcom/metamoji/df/sprite/Graphics;->setFontName(Ljava/lang/String;)V

    .line 296
    iget-object v12, v2, Lcom/metamoji/ch/bar/ChBarChart;->setting:Lcom/metamoji/ch/bar/IChBarChartSetting;

    invoke-interface {v12}, Lcom/metamoji/ch/bar/IChBarChartSetting;->getCategoryScaleGrid()Lcom/metamoji/ch/IChScaleGridSetting;

    move-result-object v12

    invoke-interface {v12}, Lcom/metamoji/ch/IChScaleGridSetting;->getLabel()Lcom/metamoji/ch/IChLabelSetting;

    move-result-object v12

    invoke-interface {v12}, Lcom/metamoji/ch/IChLabelSetting;->getFontSize()D

    move-result-wide v12

    double-to-float v12, v12

    invoke-virtual {v3, v12}, Lcom/metamoji/df/sprite/Graphics;->setFontSize(F)V

    .line 298
    iget-object v12, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v12, Lcom/metamoji/ch/ChRect;

    invoke-virtual {v12}, Lcom/metamoji/ch/ChRect;->getWidth()D

    move-result-wide v12

    int-to-double v14, v5

    div-double/2addr v12, v14

    iput-wide v12, v4, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    .line 301
    iget-object v12, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v12, Lcom/metamoji/ch/ChRect;

    invoke-virtual {v12}, Lcom/metamoji/ch/ChRect;->getHeight()D

    move-result-wide v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    cmpl-double v12, v12, v16

    if-lez v12, :cond_1

    if-ltz v5, :cond_1

    move v12, v8

    .line 303
    :goto_0
    :try_start_2
    new-instance v13, Lcom/metamoji/ch/ChPoint;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    int-to-double v14, v12

    move-object/from16 p1, v9

    :try_start_3
    iget-wide v8, v4, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    mul-double/2addr v8, v14

    move-object/from16 v18, v11

    move-wide/from16 v10, v16

    :try_start_4
    invoke-direct {v13, v8, v9, v10, v11}, Lcom/metamoji/ch/ChPoint;-><init>(DD)V

    invoke-virtual {v7, v13}, Lcom/metamoji/ch/internal/transformer/ChCompositeTransformer;->point(Lcom/metamoji/ch/ChPoint;)Lcom/metamoji/ch/ChPoint;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/metamoji/ch/ChPointKt;->moveTo(Lcom/metamoji/df/sprite/Graphics;Lcom/metamoji/ch/ChPoint;)V

    .line 304
    new-instance v8, Lcom/metamoji/ch/ChPoint;

    iget-wide v10, v4, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    mul-double/2addr v14, v10

    iget-object v9, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v9, Lcom/metamoji/ch/ChRect;

    invoke-virtual {v9}, Lcom/metamoji/ch/ChRect;->getHeight()D

    move-result-wide v9

    invoke-direct {v8, v14, v15, v9, v10}, Lcom/metamoji/ch/ChPoint;-><init>(DD)V

    invoke-virtual {v7, v8}, Lcom/metamoji/ch/internal/transformer/ChCompositeTransformer;->point(Lcom/metamoji/ch/ChPoint;)Lcom/metamoji/ch/ChPoint;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/metamoji/ch/ChPointKt;->lineTo(Lcom/metamoji/df/sprite/Graphics;Lcom/metamoji/ch/ChPoint;)V

    .line 305
    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Graphics;->draw()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eq v12, v5, :cond_2

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v9, p1

    move-object/from16 v11, v18

    const/4 v8, 0x0

    const-wide/16 v16, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object/from16 v18, v11

    move-object/from16 v9, p1

    goto/16 :goto_4

    :catchall_1
    move-exception v0

    move-object/from16 p1, v9

    move-object/from16 v18, v11

    goto/16 :goto_4

    :cond_1
    move-object/from16 p1, v9

    move-object/from16 v18, v11

    .line 310
    :cond_2
    :try_start_5
    invoke-direct {v2}, Lcom/metamoji/ch/bar/ChBarChart;->isVertical()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz v0, :cond_4

    .line 311
    :try_start_6
    iget-object v0, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v0, :cond_3

    const-string v0, "horizontalLabels"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    iget-object v0, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels;

    :goto_1
    iget-object v2, v2, Lcom/metamoji/ch/bar/ChBarChart;->categoryLabelSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v0, v2}, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels;->draw(Lcom/metamoji/df/sprite/Sprite;)V

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object/from16 v9, p1

    move-object v1, v0

    move-object/from16 v11, v18

    goto :goto_5

    :cond_4
    const/4 v8, 0x0

    :goto_2
    if-ge v8, v5, :cond_5

    move-object/from16 v0, p8

    .line 314
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/metamoji/ch/internal/ChStringWithSize;

    .line 315
    new-instance v9, Lcom/metamoji/ch/ChPoint;

    int-to-double v10, v8

    iget-wide v12, v4, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    mul-double/2addr v10, v12

    iget-wide v12, v4, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    invoke-virtual {v6}, Lcom/metamoji/ch/internal/ChStringWithSize;->getSize()Lcom/metamoji/ch/ChSize;

    move-result-object v14

    invoke-virtual {v14}, Lcom/metamoji/ch/ChSize;->getHeight()D

    move-result-wide v14

    sub-double/2addr v12, v14

    const/4 v14, 0x2

    int-to-double v1, v14

    div-double/2addr v12, v1

    add-double/2addr v10, v12

    invoke-virtual {v6}, Lcom/metamoji/ch/internal/ChStringWithSize;->getSize()Lcom/metamoji/ch/ChSize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ch/ChSize;->getWidth()D

    move-result-wide v1

    move-object/from16 v12, p3

    iget-object v13, v12, Lcom/metamoji/ch/bar/ChBarChart;->setting:Lcom/metamoji/ch/bar/IChBarChartSetting;

    invoke-interface {v13}, Lcom/metamoji/ch/bar/IChBarChartSetting;->getCategoryScaleGrid()Lcom/metamoji/ch/IChScaleGridSetting;

    move-result-object v13

    invoke-interface {v13}, Lcom/metamoji/ch/IChScaleGridSetting;->getLabelMargin()D

    move-result-wide v15

    add-double/2addr v1, v15

    neg-double v1, v1

    invoke-direct {v9, v10, v11, v1, v2}, Lcom/metamoji/ch/ChPoint;-><init>(DD)V

    .line 316
    invoke-virtual {v6}, Lcom/metamoji/ch/internal/ChStringWithSize;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v9}, Lcom/metamoji/ch/internal/transformer/ChCompositeTransformer;->point(Lcom/metamoji/ch/ChPoint;)Lcom/metamoji/ch/ChPoint;

    move-result-object v2

    invoke-static {v3, v1, v2}, Lcom/metamoji/ch/ChPointKt;->drawString(Lcom/metamoji/df/sprite/Graphics;Ljava/lang/String;Lcom/metamoji/ch/ChPoint;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    add-int/lit8 v8, v8, 0x1

    move-object v2, v12

    goto :goto_2

    .line 319
    :cond_5
    :goto_3
    :try_start_7
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    move-object/from16 v11, v18

    const/4 v0, 0x0

    .line 293
    :try_start_8
    invoke-static {v11, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 320
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-object/from16 v9, p1

    .line 289
    invoke-static {v9, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_3
    move-exception v0

    move-object/from16 v9, p1

    goto :goto_6

    :catchall_4
    move-exception v0

    move-object/from16 v9, p1

    move-object/from16 v11, v18

    goto :goto_4

    :catchall_5
    move-exception v0

    :goto_4
    move-object v1, v0

    .line 293
    :goto_5
    :try_start_9
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    :catchall_6
    move-exception v0

    :try_start_a
    invoke-static {v11, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    :catchall_7
    move-exception v0

    :goto_6
    move-object v1, v0

    .line 289
    :try_start_b
    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    :catchall_8
    move-exception v0

    invoke-static {v9, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static final update$drawValueScale(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/metamoji/ch/internal/transformer/IChCoordinateTransformer;Lcom/metamoji/df/sprite/Graphics;Lcom/metamoji/ch/bar/ChBarChart;Lcom/metamoji/df/sprite/Graphics;Lcom/metamoji/ch/IChLinearScaleAxisSetting;Ljava/util/List;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/metamoji/ch/ChRect;",
            ">;",
            "Lcom/metamoji/ch/internal/transformer/IChCoordinateTransformer;",
            "Lcom/metamoji/df/sprite/Graphics;",
            "Lcom/metamoji/ch/bar/ChBarChart;",
            "Lcom/metamoji/df/sprite/Graphics;",
            "Lcom/metamoji/ch/IChLinearScaleAxisSetting;",
            "Ljava/util/List<",
            "Lcom/metamoji/ch/internal/ChStringWithSize;",
            ">;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/metamoji/ch/internal/ChHorizontalAxisLabels;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p7

    .line 186
    iget-object v6, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v6, Lcom/metamoji/ch/ChRect;

    invoke-virtual {v6}, Lcom/metamoji/ch/ChRect;->getHeight()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpg-double v6, v6, v8

    if-gtz v6, :cond_0

    return-void

    .line 190
    :cond_0
    new-instance v6, Lcom/metamoji/ch/internal/transformer/ChCompositeTransformer;

    const/4 v7, 0x2

    .line 191
    new-array v10, v7, [Lcom/metamoji/ch/internal/transformer/IChCoordinateTransformer;

    new-instance v11, Lcom/metamoji/ch/internal/transformer/ChOffsetTransformer;

    iget-object v12, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v12, Lcom/metamoji/ch/ChRect;

    invoke-virtual {v12}, Lcom/metamoji/ch/ChRect;->getX()D

    move-result-wide v12

    iget-object v14, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v14, Lcom/metamoji/ch/ChRect;

    invoke-virtual {v14}, Lcom/metamoji/ch/ChRect;->getY()D

    move-result-wide v14

    invoke-direct {v11, v12, v13, v14, v15}, Lcom/metamoji/ch/internal/transformer/ChOffsetTransformer;-><init>(DD)V

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const/4 v11, 0x1

    .line 192
    aput-object p1, v10, v11

    .line 190
    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v6, v10}, Lcom/metamoji/ch/internal/transformer/ChCompositeTransformer;-><init>(Ljava/util/List;)V

    .line 195
    new-instance v10, Lcom/metamoji/ch/internal/ChCleanGraphics;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v10, v1}, Lcom/metamoji/ch/internal/ChCleanGraphics;-><init>(Lcom/metamoji/df/sprite/Graphics;)V

    check-cast v10, Ljava/io/Closeable;

    :try_start_0
    move-object v11, v10

    check-cast v11, Lcom/metamoji/ch/internal/ChCleanGraphics;

    .line 196
    iget-object v11, v2, Lcom/metamoji/ch/bar/ChBarChart;->setting:Lcom/metamoji/ch/bar/IChBarChartSetting;

    invoke-interface {v11}, Lcom/metamoji/ch/bar/IChBarChartSetting;->getValueScaleGrid()Lcom/metamoji/ch/IChScaleGridSetting;

    move-result-object v11

    invoke-interface {v11}, Lcom/metamoji/ch/IChScaleGridSetting;->getLineWidth()D

    move-result-wide v13

    double-to-float v11, v13

    invoke-virtual {v1, v11}, Lcom/metamoji/df/sprite/Graphics;->setLineWidth(F)V

    .line 197
    new-instance v11, Lcom/metamoji/df/sprite/PaintSolid;

    iget-object v13, v2, Lcom/metamoji/ch/bar/ChBarChart;->setting:Lcom/metamoji/ch/bar/IChBarChartSetting;

    invoke-interface {v13}, Lcom/metamoji/ch/bar/IChBarChartSetting;->getValueScaleGrid()Lcom/metamoji/ch/IChScaleGridSetting;

    move-result-object v13

    invoke-interface {v13}, Lcom/metamoji/ch/IChScaleGridSetting;->getLineColor()I

    move-result v13

    invoke-direct {v11, v13}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    check-cast v11, Lcom/metamoji/df/sprite/Paint;

    invoke-virtual {v1, v11}, Lcom/metamoji/df/sprite/Graphics;->setLinePaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 199
    new-instance v11, Lcom/metamoji/ch/internal/ChCleanGraphics;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v11, v3}, Lcom/metamoji/ch/internal/ChCleanGraphics;-><init>(Lcom/metamoji/df/sprite/Graphics;)V

    check-cast v11, Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    :try_start_1
    move-object v13, v11

    check-cast v13, Lcom/metamoji/ch/internal/ChCleanGraphics;

    .line 200
    new-instance v13, Lcom/metamoji/df/sprite/PaintSolid;

    iget-object v14, v2, Lcom/metamoji/ch/bar/ChBarChart;->setting:Lcom/metamoji/ch/bar/IChBarChartSetting;

    invoke-interface {v14}, Lcom/metamoji/ch/bar/IChBarChartSetting;->getValueScaleGrid()Lcom/metamoji/ch/IChScaleGridSetting;

    move-result-object v14

    invoke-interface {v14}, Lcom/metamoji/ch/IChScaleGridSetting;->getLabel()Lcom/metamoji/ch/IChLabelSetting;

    move-result-object v14

    invoke-interface {v14}, Lcom/metamoji/ch/IChLabelSetting;->getColor()I

    move-result v14

    invoke-direct {v13, v14}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    check-cast v13, Lcom/metamoji/df/sprite/Paint;

    invoke-virtual {v3, v13}, Lcom/metamoji/df/sprite/Graphics;->setTextPaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 201
    iget-object v13, v2, Lcom/metamoji/ch/bar/ChBarChart;->setting:Lcom/metamoji/ch/bar/IChBarChartSetting;

    invoke-interface {v13}, Lcom/metamoji/ch/bar/IChBarChartSetting;->getValueScaleGrid()Lcom/metamoji/ch/IChScaleGridSetting;

    move-result-object v13

    invoke-interface {v13}, Lcom/metamoji/ch/IChScaleGridSetting;->getLabel()Lcom/metamoji/ch/IChLabelSetting;

    move-result-object v13

    invoke-interface {v13}, Lcom/metamoji/ch/IChLabelSetting;->getFontName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Lcom/metamoji/df/sprite/Graphics;->setFontName(Ljava/lang/String;)V

    .line 202
    iget-object v13, v2, Lcom/metamoji/ch/bar/ChBarChart;->setting:Lcom/metamoji/ch/bar/IChBarChartSetting;

    invoke-interface {v13}, Lcom/metamoji/ch/bar/IChBarChartSetting;->getValueScaleGrid()Lcom/metamoji/ch/IChScaleGridSetting;

    move-result-object v13

    invoke-interface {v13}, Lcom/metamoji/ch/IChScaleGridSetting;->getLabel()Lcom/metamoji/ch/IChLabelSetting;

    move-result-object v13

    invoke-interface {v13}, Lcom/metamoji/ch/IChLabelSetting;->getFontSize()D

    move-result-wide v13

    double-to-float v13, v13

    invoke-virtual {v3, v13}, Lcom/metamoji/df/sprite/Graphics;->setFontSize(F)V

    .line 204
    invoke-interface {v4}, Lcom/metamoji/ch/IChLinearScaleAxisSetting;->getMaxValue()D

    move-result-wide v13

    invoke-interface {v4}, Lcom/metamoji/ch/IChLinearScaleAxisSetting;->getMinValue()D

    move-result-wide v15

    sub-double/2addr v13, v15

    invoke-interface {v4}, Lcom/metamoji/ch/IChLinearScaleAxisSetting;->getTickSpacing()D

    move-result-wide v15

    div-double/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    move-result-wide v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    double-to-int v13, v13

    if-ltz v13, :cond_2

    move v14, v12

    .line 206
    :goto_0
    :try_start_2
    invoke-interface {v4}, Lcom/metamoji/ch/IChLinearScaleAxisSetting;->getMinValue()D

    move-result-wide v15

    move/from16 p1, v13

    int-to-double v12, v14

    invoke-interface {v4}, Lcom/metamoji/ch/IChLinearScaleAxisSetting;->getTickSpacing()D

    move-result-wide v17

    mul-double v12, v12, v17

    add-double/2addr v12, v15

    .line 209
    iget-object v15, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v15, Lcom/metamoji/ch/ChRect;

    invoke-virtual {v15}, Lcom/metamoji/ch/ChRect;->getWidth()D

    move-result-wide v15

    cmpl-double v15, v15, v8

    if-lez v15, :cond_1

    .line 210
    new-instance v15, Lcom/metamoji/ch/ChPoint;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v16, v10

    move-object/from16 v17, v11

    :try_start_3
    invoke-static {v0, v4, v12, v13}, Lcom/metamoji/ch/bar/ChBarChart;->update$positionOf(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/metamoji/ch/IChLinearScaleAxisSetting;D)D

    move-result-wide v10

    invoke-direct {v15, v8, v9, v10, v11}, Lcom/metamoji/ch/ChPoint;-><init>(DD)V

    invoke-virtual {v6, v15}, Lcom/metamoji/ch/internal/transformer/ChCompositeTransformer;->point(Lcom/metamoji/ch/ChPoint;)Lcom/metamoji/ch/ChPoint;

    move-result-object v10

    invoke-static {v1, v10}, Lcom/metamoji/ch/ChPointKt;->moveTo(Lcom/metamoji/df/sprite/Graphics;Lcom/metamoji/ch/ChPoint;)V

    .line 211
    new-instance v10, Lcom/metamoji/ch/ChPoint;

    iget-object v11, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v11, Lcom/metamoji/ch/ChRect;

    invoke-virtual {v11}, Lcom/metamoji/ch/ChRect;->getWidth()D

    move-result-wide v8

    invoke-static {v0, v4, v12, v13}, Lcom/metamoji/ch/bar/ChBarChart;->update$positionOf(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/metamoji/ch/IChLinearScaleAxisSetting;D)D

    move-result-wide v11

    invoke-direct {v10, v8, v9, v11, v12}, Lcom/metamoji/ch/ChPoint;-><init>(DD)V

    invoke-virtual {v6, v10}, Lcom/metamoji/ch/internal/transformer/ChCompositeTransformer;->point(Lcom/metamoji/ch/ChPoint;)Lcom/metamoji/ch/ChPoint;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/metamoji/ch/ChPointKt;->lineTo(Lcom/metamoji/df/sprite/Graphics;Lcom/metamoji/ch/ChPoint;)V

    .line 212
    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Graphics;->draw()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :cond_1
    move-object/from16 v16, v10

    move-object/from16 v17, v11

    :goto_1
    move/from16 v8, p1

    if-eq v14, v8, :cond_3

    add-int/lit8 v14, v14, 0x1

    move v13, v8

    move-object/from16 v10, v16

    move-object/from16 v11, v17

    const-wide/16 v8, 0x0

    const/4 v12, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object/from16 v16, v10

    move-object/from16 v17, v11

    goto/16 :goto_4

    :cond_2
    move-object/from16 v16, v10

    move-object/from16 v17, v11

    move v8, v13

    .line 216
    :cond_3
    :try_start_4
    invoke-direct {v2}, Lcom/metamoji/ch/bar/ChBarChart;->isVertical()Z

    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v1, :cond_4

    if-ltz v8, :cond_6

    const/4 v12, 0x0

    :goto_2
    move-object/from16 v1, p6

    .line 219
    :try_start_5
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/ch/internal/ChStringWithSize;

    .line 221
    invoke-interface {v4}, Lcom/metamoji/ch/IChLinearScaleAxisSetting;->getMinValue()D

    move-result-wide v10

    int-to-double v13, v12

    invoke-interface {v4}, Lcom/metamoji/ch/IChLinearScaleAxisSetting;->getTickSpacing()D

    move-result-wide v18

    mul-double v13, v13, v18

    add-double/2addr v10, v13

    .line 222
    new-instance v13, Lcom/metamoji/ch/ChPoint;

    invoke-virtual {v5}, Lcom/metamoji/ch/internal/ChStringWithSize;->getSize()Lcom/metamoji/ch/ChSize;

    move-result-object v14

    invoke-virtual {v14}, Lcom/metamoji/ch/ChSize;->getWidth()D

    move-result-wide v14

    iget-object v9, v2, Lcom/metamoji/ch/bar/ChBarChart;->setting:Lcom/metamoji/ch/bar/IChBarChartSetting;

    invoke-interface {v9}, Lcom/metamoji/ch/bar/IChBarChartSetting;->getValueScaleGrid()Lcom/metamoji/ch/IChScaleGridSetting;

    move-result-object v9

    invoke-interface {v9}, Lcom/metamoji/ch/IChScaleGridSetting;->getLabelMargin()D

    move-result-wide v18

    add-double v14, v14, v18

    neg-double v14, v14

    invoke-static {v0, v4, v10, v11}, Lcom/metamoji/ch/bar/ChBarChart;->update$positionOf(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/metamoji/ch/IChLinearScaleAxisSetting;D)D

    move-result-wide v9

    invoke-virtual {v5}, Lcom/metamoji/ch/internal/ChStringWithSize;->getSize()Lcom/metamoji/ch/ChSize;

    move-result-object v11

    invoke-virtual {v11}, Lcom/metamoji/ch/ChSize;->getHeight()D

    move-result-wide v18

    int-to-double v0, v7

    div-double v18, v18, v0

    add-double v9, v9, v18

    invoke-direct {v13, v14, v15, v9, v10}, Lcom/metamoji/ch/ChPoint;-><init>(DD)V

    .line 223
    invoke-virtual {v5}, Lcom/metamoji/ch/internal/ChStringWithSize;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v13}, Lcom/metamoji/ch/internal/transformer/ChCompositeTransformer;->point(Lcom/metamoji/ch/ChPoint;)Lcom/metamoji/ch/ChPoint;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/metamoji/ch/ChPointKt;->drawString(Lcom/metamoji/df/sprite/Graphics;Ljava/lang/String;Lcom/metamoji/ch/ChPoint;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eq v12, v8, :cond_6

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object/from16 v10, v16

    move-object/from16 v11, v17

    goto :goto_5

    .line 226
    :cond_4
    :try_start_6
    iget-object v0, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-nez v0, :cond_5

    :try_start_7
    const-string v0, "horizontalLabels"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    const/4 v0, 0x0

    goto :goto_3

    :cond_5
    :try_start_8
    iget-object v0, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels;

    :goto_3
    iget-object v1, v2, Lcom/metamoji/ch/bar/ChBarChart;->valueLabelSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v0, v1}, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels;->draw(Lcom/metamoji/df/sprite/Sprite;)V

    .line 228
    :cond_6
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-object/from16 v11, v17

    const/4 v0, 0x0

    .line 199
    :try_start_9
    invoke-static {v11, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 229
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-object/from16 v10, v16

    .line 195
    invoke-static {v10, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_2
    move-exception v0

    move-object/from16 v10, v16

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object/from16 v10, v16

    move-object/from16 v11, v17

    goto :goto_4

    :catchall_4
    move-exception v0

    :goto_4
    move-object v1, v0

    .line 199
    :goto_5
    :try_start_a
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :catchall_5
    move-exception v0

    :try_start_b
    invoke-static {v11, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    :catchall_6
    move-exception v0

    :goto_6
    move-object v1, v0

    .line 195
    :try_start_c
    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    :catchall_7
    move-exception v0

    invoke-static {v10, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static final update$makeCategoryTickLabels(Lcom/metamoji/df/sprite/Graphics;Lcom/metamoji/ch/bar/ChBarChart;Lkotlin/jvm/internal/Ref$DoubleRef;Lkotlin/jvm/internal/Ref$ObjectRef;ILkotlin/jvm/internal/Ref$DoubleRef;Lkotlin/jvm/internal/Ref$DoubleRef;ILkotlin/jvm/internal/Ref$DoubleRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/metamoji/ch/ChSize;Ljava/util/List;Lcom/metamoji/ch/IChDataSource;Lcom/metamoji/df/sprite/Graphics;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/df/sprite/Graphics;",
            "Lcom/metamoji/ch/bar/ChBarChart;",
            "Lkotlin/jvm/internal/Ref$DoubleRef;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/metamoji/ch/ChRect;",
            ">;I",
            "Lkotlin/jvm/internal/Ref$DoubleRef;",
            "Lkotlin/jvm/internal/Ref$DoubleRef;",
            "I",
            "Lkotlin/jvm/internal/Ref$DoubleRef;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/metamoji/ch/internal/ChHorizontalAxisLabels;",
            ">;",
            "Lcom/metamoji/ch/ChSize;",
            "Ljava/util/List<",
            "Lcom/metamoji/ch/internal/ChStringWithSize;",
            ">;",
            "Lcom/metamoji/ch/IChDataSource;",
            "Lcom/metamoji/df/sprite/Graphics;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p12

    .line 233
    new-instance v8, Lcom/metamoji/ch/internal/ChCleanGraphics;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v8, v0}, Lcom/metamoji/ch/internal/ChCleanGraphics;-><init>(Lcom/metamoji/df/sprite/Graphics;)V

    check-cast v8, Ljava/io/Closeable;

    :try_start_0
    move-object v9, v8

    check-cast v9, Lcom/metamoji/ch/internal/ChCleanGraphics;

    .line 234
    new-instance v9, Lcom/metamoji/df/sprite/PaintSolid;

    iget-object v10, v1, Lcom/metamoji/ch/bar/ChBarChart;->setting:Lcom/metamoji/ch/bar/IChBarChartSetting;

    invoke-interface {v10}, Lcom/metamoji/ch/bar/IChBarChartSetting;->getCategoryScaleGrid()Lcom/metamoji/ch/IChScaleGridSetting;

    move-result-object v10

    invoke-interface {v10}, Lcom/metamoji/ch/IChScaleGridSetting;->getLabel()Lcom/metamoji/ch/IChLabelSetting;

    move-result-object v10

    invoke-interface {v10}, Lcom/metamoji/ch/IChLabelSetting;->getColor()I

    move-result v10

    invoke-direct {v9, v10}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    check-cast v9, Lcom/metamoji/df/sprite/Paint;

    invoke-virtual {v0, v9}, Lcom/metamoji/df/sprite/Graphics;->setTextPaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 235
    iget-object v9, v1, Lcom/metamoji/ch/bar/ChBarChart;->setting:Lcom/metamoji/ch/bar/IChBarChartSetting;

    invoke-interface {v9}, Lcom/metamoji/ch/bar/IChBarChartSetting;->getCategoryScaleGrid()Lcom/metamoji/ch/IChScaleGridSetting;

    move-result-object v9

    invoke-interface {v9}, Lcom/metamoji/ch/IChScaleGridSetting;->getLabel()Lcom/metamoji/ch/IChLabelSetting;

    move-result-object v9

    invoke-interface {v9}, Lcom/metamoji/ch/IChLabelSetting;->getFontName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/metamoji/df/sprite/Graphics;->setFontName(Ljava/lang/String;)V

    .line 236
    iget-object v9, v1, Lcom/metamoji/ch/bar/ChBarChart;->setting:Lcom/metamoji/ch/bar/IChBarChartSetting;

    invoke-interface {v9}, Lcom/metamoji/ch/bar/IChBarChartSetting;->getCategoryScaleGrid()Lcom/metamoji/ch/IChScaleGridSetting;

    move-result-object v9

    invoke-interface {v9}, Lcom/metamoji/ch/IChScaleGridSetting;->getLabel()Lcom/metamoji/ch/IChLabelSetting;

    move-result-object v9

    invoke-interface {v9}, Lcom/metamoji/ch/IChLabelSetting;->getFontSize()D

    move-result-wide v9

    double-to-float v9, v9

    invoke-virtual {v0, v9}, Lcom/metamoji/df/sprite/Graphics;->setFontSize(F)V

    .line 238
    iget-object v0, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/ch/ChRect;

    invoke-virtual {v0}, Lcom/metamoji/ch/ChRect;->getWidth()D

    move-result-wide v9

    int-to-double v11, v4

    div-double/2addr v9, v11

    iput-wide v9, v2, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    .line 239
    iget-wide v9, v2, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    const-wide v11, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v9, v11

    iput-wide v9, v5, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    .line 241
    iget-wide v9, v5, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    move/from16 v0, p7

    int-to-double v11, v0

    div-double/2addr v9, v11

    iput-wide v9, v6, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    .line 242
    iget-wide v5, v6, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    const-wide v9, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v5, v9

    move-object/from16 v0, p8

    iput-wide v5, v0, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    .line 244
    invoke-direct {v1}, Lcom/metamoji/ch/bar/ChBarChart;->isVertical()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, ""

    const/4 v6, 0x0

    if-eqz v0, :cond_2

    .line 245
    :try_start_1
    sget-object v9, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels;->Companion:Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Companion;

    .line 246
    iget-object v10, v1, Lcom/metamoji/ch/bar/ChBarChart;->categoryLabelSprite:Lcom/metamoji/df/sprite/Sprite;

    .line 247
    invoke-static {v6, v4}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 443
    new-instance v4, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v0, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v4, Ljava/util/Collection;

    .line 444
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v0

    check-cast v6, Lkotlin/collections/IntIterator;

    invoke-virtual {v6}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v6

    .line 247
    invoke-interface {v7, v6}, Lcom/metamoji/ch/IChDataSource;->categoryTitle(I)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    move-object v6, v5

    .line 445
    :cond_0
    invoke-interface {v4, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 446
    :cond_1
    move-object v11, v4

    check-cast v11, Ljava/util/List;

    .line 249
    sget-object v13, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$TruncationStrategy;->TAIL:Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$TruncationStrategy;

    .line 250
    iget-object v0, v1, Lcom/metamoji/ch/bar/ChBarChart;->setting:Lcom/metamoji/ch/bar/IChBarChartSetting;

    invoke-interface {v0}, Lcom/metamoji/ch/bar/IChBarChartSetting;->getCategoryScaleGrid()Lcom/metamoji/ch/IChScaleGridSetting;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/ch/IChScaleGridSetting;->getLabelMargin()D

    move-result-wide v14

    .line 251
    iget-object v0, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Lcom/metamoji/ch/ChRect;

    .line 245
    new-instance v0, Lcom/metamoji/ch/bar/ChBarChart$$ExternalSyntheticLambda3;

    invoke-direct {v0, v3}, Lcom/metamoji/ch/bar/ChBarChart$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    new-instance v1, Lcom/metamoji/ch/bar/ChBarChart$$ExternalSyntheticLambda4;

    invoke-direct {v1, v2}, Lcom/metamoji/ch/bar/ChBarChart$$ExternalSyntheticLambda4;-><init>(Lkotlin/jvm/internal/Ref$DoubleRef;)V

    move-object/from16 v12, p10

    move-object/from16 v17, v0

    move-object/from16 v18, v1

    invoke-virtual/range {v9 .. v18}, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Companion;->build(Lcom/metamoji/df/sprite/Sprite;Ljava/util/List;Lcom/metamoji/ch/ChSize;Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$TruncationStrategy;DLcom/metamoji/ch/ChRect;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/ch/internal/ChHorizontalAxisLabels;

    move-result-object v0

    move-object/from16 v1, p9

    iput-object v0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_2

    .line 257
    :cond_2
    invoke-interface/range {p11 .. p11}, Ljava/util/List;->clear()V

    const-wide/16 v9, 0x0

    :goto_1
    if-ge v6, v4, :cond_4

    .line 259
    invoke-interface {v7, v6}, Lcom/metamoji/ch/IChDataSource;->categoryTitle(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    move-object v0, v5

    .line 261
    :cond_3
    sget-object v2, Lcom/metamoji/ch/internal/ChUtils;->INSTANCE:Lcom/metamoji/ch/internal/ChUtils;

    invoke-static/range {p13 .. p13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual/range {p10 .. p10}, Lcom/metamoji/ch/ChSize;->getWidth()D

    move-result-wide v11

    const/4 v13, 0x3

    int-to-double v13, v13

    div-double/2addr v11, v13

    move-object/from16 v13, p13

    invoke-virtual {v2, v13, v0, v11, v12}, Lcom/metamoji/ch/internal/ChUtils;->truncateTail(Lcom/metamoji/df/sprite/Graphics;Ljava/lang/String;D)Lcom/metamoji/ch/internal/ChStringWithSize;

    move-result-object v0

    .line 262
    invoke-virtual {v0}, Lcom/metamoji/ch/internal/ChStringWithSize;->getSize()Lcom/metamoji/ch/ChSize;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/ch/ChSize;->getWidth()D

    move-result-wide v11

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v9

    move-object/from16 v2, p11

    .line 263
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 267
    :cond_4
    iget-object v0, v1, Lcom/metamoji/ch/bar/ChBarChart;->categoryLabelSprite:Lcom/metamoji/df/sprite/Sprite;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/metamoji/df/sprite/Sprite;->setRotation(F)V

    .line 269
    iget-object v0, v1, Lcom/metamoji/ch/bar/ChBarChart;->setting:Lcom/metamoji/ch/bar/IChBarChartSetting;

    invoke-interface {v0}, Lcom/metamoji/ch/bar/IChBarChartSetting;->getCategoryScaleGrid()Lcom/metamoji/ch/IChScaleGridSetting;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/ch/IChScaleGridSetting;->getLabelMargin()D

    move-result-wide v0

    add-double/2addr v9, v0

    .line 270
    iget-object v0, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/ch/ChRect;

    invoke-virtual {v0}, Lcom/metamoji/ch/ChRect;->getY()D

    move-result-wide v1

    add-double/2addr v1, v9

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/ch/ChRect;->setY(D)V

    .line 271
    iget-object v0, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/ch/ChRect;

    invoke-virtual {v0}, Lcom/metamoji/ch/ChRect;->getHeight()D

    move-result-wide v1

    sub-double/2addr v1, v9

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/ch/ChRect;->setHeight(D)V

    .line 273
    :goto_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    .line 233
    invoke-static {v8, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v8, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method static final update$makeCategoryTickLabels$lambda$12$lambda$10(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/metamoji/ch/ChRect;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    iput-object p1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final update$makeCategoryTickLabels$lambda$12$lambda$11(Lkotlin/jvm/internal/Ref$DoubleRef;I)D
    .locals 4

    int-to-double v0, p1

    .line 253
    iget-wide v2, p0, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    mul-double/2addr v0, v2

    iget-wide p0, p0, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    const/4 v2, 0x2

    int-to-double v2, v2

    div-double/2addr p0, v2

    add-double/2addr v0, p0

    return-wide v0
.end method

.method private static final update$makeValueTickLabels(Lcom/metamoji/df/sprite/Graphics;Lcom/metamoji/ch/bar/ChBarChart;Lcom/metamoji/ch/IChLinearScaleAxisSetting;Ljava/util/List;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/metamoji/ch/ChSize;DLcom/metamoji/ch/internal/transformer/IChCoordinateTransformer;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/df/sprite/Graphics;",
            "Lcom/metamoji/ch/bar/ChBarChart;",
            "Lcom/metamoji/ch/IChLinearScaleAxisSetting;",
            "Ljava/util/List<",
            "Lcom/metamoji/ch/internal/ChStringWithSize;",
            ">;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/metamoji/ch/ChRect;",
            ">;",
            "Lcom/metamoji/ch/ChSize;",
            "D",
            "Lcom/metamoji/ch/internal/transformer/IChCoordinateTransformer;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/metamoji/ch/internal/ChHorizontalAxisLabels;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 103
    new-instance v5, Lcom/metamoji/ch/internal/ChCleanGraphics;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v5, v0}, Lcom/metamoji/ch/internal/ChCleanGraphics;-><init>(Lcom/metamoji/df/sprite/Graphics;)V

    check-cast v5, Ljava/io/Closeable;

    :try_start_0
    move-object v6, v5

    check-cast v6, Lcom/metamoji/ch/internal/ChCleanGraphics;

    .line 104
    new-instance v6, Lcom/metamoji/df/sprite/PaintSolid;

    iget-object v7, v1, Lcom/metamoji/ch/bar/ChBarChart;->setting:Lcom/metamoji/ch/bar/IChBarChartSetting;

    invoke-interface {v7}, Lcom/metamoji/ch/bar/IChBarChartSetting;->getValueScaleGrid()Lcom/metamoji/ch/IChScaleGridSetting;

    move-result-object v7

    invoke-interface {v7}, Lcom/metamoji/ch/IChScaleGridSetting;->getLabel()Lcom/metamoji/ch/IChLabelSetting;

    move-result-object v7

    invoke-interface {v7}, Lcom/metamoji/ch/IChLabelSetting;->getColor()I

    move-result v7

    invoke-direct {v6, v7}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    check-cast v6, Lcom/metamoji/df/sprite/Paint;

    invoke-virtual {v0, v6}, Lcom/metamoji/df/sprite/Graphics;->setTextPaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 105
    iget-object v6, v1, Lcom/metamoji/ch/bar/ChBarChart;->setting:Lcom/metamoji/ch/bar/IChBarChartSetting;

    invoke-interface {v6}, Lcom/metamoji/ch/bar/IChBarChartSetting;->getValueScaleGrid()Lcom/metamoji/ch/IChScaleGridSetting;

    move-result-object v6

    invoke-interface {v6}, Lcom/metamoji/ch/IChScaleGridSetting;->getLabel()Lcom/metamoji/ch/IChLabelSetting;

    move-result-object v6

    invoke-interface {v6}, Lcom/metamoji/ch/IChLabelSetting;->getFontName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/metamoji/df/sprite/Graphics;->setFontName(Ljava/lang/String;)V

    .line 106
    iget-object v6, v1, Lcom/metamoji/ch/bar/ChBarChart;->setting:Lcom/metamoji/ch/bar/IChBarChartSetting;

    invoke-interface {v6}, Lcom/metamoji/ch/bar/IChBarChartSetting;->getValueScaleGrid()Lcom/metamoji/ch/IChScaleGridSetting;

    move-result-object v6

    invoke-interface {v6}, Lcom/metamoji/ch/IChScaleGridSetting;->getLabel()Lcom/metamoji/ch/IChLabelSetting;

    move-result-object v6

    invoke-interface {v6}, Lcom/metamoji/ch/IChLabelSetting;->getFontSize()D

    move-result-wide v6

    double-to-float v6, v6

    invoke-virtual {v0, v6}, Lcom/metamoji/df/sprite/Graphics;->setFontSize(F)V

    .line 108
    new-instance v6, Lcom/metamoji/ch/bar/ChBarChart$$ExternalSyntheticLambda0;

    invoke-direct {v6, v2}, Lcom/metamoji/ch/bar/ChBarChart$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/ch/IChLinearScaleAxisSetting;)V

    .line 111
    new-instance v7, Lcom/metamoji/ch/internal/ChNumberFormatter;

    invoke-direct {v7}, Lcom/metamoji/ch/internal/ChNumberFormatter;-><init>()V

    .line 112
    invoke-interface {v2}, Lcom/metamoji/ch/IChLinearScaleAxisSetting;->getNumDecimal()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/metamoji/ch/internal/ChNumberFormatter;->setFractionDigits(I)V

    .line 113
    invoke-interface {v2}, Lcom/metamoji/ch/IChLinearScaleAxisSetting;->getMaxValue()D

    move-result-wide v8

    invoke-interface {v2}, Lcom/metamoji/ch/IChLinearScaleAxisSetting;->getMinValue()D

    move-result-wide v10

    sub-double/2addr v8, v10

    invoke-interface {v2}, Lcom/metamoji/ch/IChLinearScaleAxisSetting;->getTickSpacing()D

    move-result-wide v10

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v8, v8

    .line 115
    invoke-direct {v1}, Lcom/metamoji/ch/bar/ChBarChart;->isVertical()Z

    move-result v9

    const/4 v11, 0x0

    if-eqz v9, :cond_5

    .line 117
    invoke-interface {v3}, Ljava/util/List;->clear()V

    const-wide/16 v12, 0x0

    if-ltz v8, :cond_2

    .line 120
    :goto_0
    invoke-interface {v2}, Lcom/metamoji/ch/IChLinearScaleAxisSetting;->getMinValue()D

    move-result-wide v14

    const/16 v16, 0x1

    int-to-double v9, v11

    invoke-interface {v2}, Lcom/metamoji/ch/IChLinearScaleAxisSetting;->getTickSpacing()D

    move-result-wide v17

    mul-double v9, v9, v17

    add-double/2addr v14, v9

    .line 121
    invoke-virtual {v7, v14, v15}, Lcom/metamoji/ch/internal/ChNumberFormatter;->stringFrom(D)Ljava/lang/String;

    move-result-object v6

    .line 122
    invoke-virtual {v0, v6}, Lcom/metamoji/df/sprite/Graphics;->rectOfString(Ljava/lang/String;)Landroid/graphics/RectF;

    move-result-object v9

    .line 123
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v9}, Lcom/metamoji/ch/ChRectKt;->getChSize(Landroid/graphics/RectF;)Lcom/metamoji/ch/ChSize;

    move-result-object v9

    .line 124
    new-instance v10, Lcom/metamoji/ch/internal/ChStringWithSize;

    invoke-direct {v10, v6, v9}, Lcom/metamoji/ch/internal/ChStringWithSize;-><init>(Ljava/lang/String;Lcom/metamoji/ch/ChSize;)V

    .line 126
    invoke-direct {v1}, Lcom/metamoji/ch/bar/ChBarChart;->isVertical()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v10}, Lcom/metamoji/ch/internal/ChStringWithSize;->getSize()Lcom/metamoji/ch/ChSize;

    move-result-object v6

    invoke-virtual {v6}, Lcom/metamoji/ch/ChSize;->getWidth()D

    move-result-wide v14

    goto :goto_1

    :cond_0
    invoke-virtual {v10}, Lcom/metamoji/ch/internal/ChStringWithSize;->getSize()Lcom/metamoji/ch/ChSize;

    move-result-object v6

    invoke-virtual {v6}, Lcom/metamoji/ch/ChSize;->getHeight()D

    move-result-wide v14

    :goto_1
    cmpg-double v6, v12, v14

    if-gez v6, :cond_1

    move-wide v12, v14

    .line 130
    :cond_1
    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eq v11, v8, :cond_3

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_2
    const/16 v16, 0x1

    .line 133
    :cond_3
    iget-object v0, v1, Lcom/metamoji/ch/bar/ChBarChart;->valueLabelSprite:Lcom/metamoji/df/sprite/Sprite;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/metamoji/df/sprite/Sprite;->setRotation(F)V

    .line 135
    move-object v0, v3

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 136
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ch/internal/ChStringWithSize;

    .line 137
    invoke-interface {v2}, Lcom/metamoji/ch/IChLinearScaleAxisSetting;->getMinValue()D

    move-result-wide v6

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    int-to-double v8, v3

    invoke-interface {v2}, Lcom/metamoji/ch/IChLinearScaleAxisSetting;->getTickSpacing()D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    .line 138
    invoke-static {v4, v2, v6, v7}, Lcom/metamoji/ch/bar/ChBarChart;->update$positionOf(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/metamoji/ch/IChLinearScaleAxisSetting;D)D

    move-result-wide v2

    .line 139
    iget-object v6, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v6, Lcom/metamoji/ch/ChRect;

    invoke-virtual {v6}, Lcom/metamoji/ch/ChRect;->getY()D

    move-result-wide v6

    add-double/2addr v6, v2

    invoke-virtual {v0}, Lcom/metamoji/ch/internal/ChStringWithSize;->getSize()Lcom/metamoji/ch/ChSize;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ch/ChSize;->getHeight()D

    move-result-wide v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    add-double/2addr v6, v8

    .line 140
    invoke-virtual/range {p5 .. p5}, Lcom/metamoji/ch/ChSize;->getHeight()D

    move-result-wide v8

    cmpl-double v0, v6, v8

    if-lez v0, :cond_4

    .line 141
    iget-object v0, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/ch/ChRect;

    iget-object v8, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v8, Lcom/metamoji/ch/ChRect;

    invoke-virtual {v8}, Lcom/metamoji/ch/ChRect;->getHeight()D

    move-result-wide v8

    invoke-virtual/range {p5 .. p5}, Lcom/metamoji/ch/ChSize;->getHeight()D

    move-result-wide v10

    sub-double/2addr v6, v10

    sub-double v6, v2, v6

    div-double/2addr v6, v2

    mul-double/2addr v8, v6

    invoke-virtual {v0, v8, v9}, Lcom/metamoji/ch/ChRect;->setHeight(D)V

    .line 145
    :cond_4
    iget-object v0, v1, Lcom/metamoji/ch/bar/ChBarChart;->setting:Lcom/metamoji/ch/bar/IChBarChartSetting;

    invoke-interface {v0}, Lcom/metamoji/ch/bar/IChBarChartSetting;->getValueScaleGrid()Lcom/metamoji/ch/IChScaleGridSetting;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/ch/IChScaleGridSetting;->getLabelMargin()D

    move-result-wide v0

    add-double/2addr v12, v0

    .line 146
    iget-object v0, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/ch/ChRect;

    invoke-virtual {v0}, Lcom/metamoji/ch/ChRect;->getX()D

    move-result-wide v1

    add-double/2addr v1, v12

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/ch/ChRect;->setX(D)V

    .line 147
    iget-object v0, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/ch/ChRect;

    invoke-virtual {v0}, Lcom/metamoji/ch/ChRect;->getWidth()D

    move-result-wide v1

    sub-double/2addr v1, v12

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/ch/ChRect;->setWidth(D)V

    goto/16 :goto_3

    :cond_5
    const/16 v16, 0x1

    .line 156
    new-instance v0, Lcom/metamoji/ch/internal/transformer/ChFlipVerticalTransformer;

    move-wide/from16 v9, p6

    invoke-direct {v0, v9, v10}, Lcom/metamoji/ch/internal/transformer/ChFlipVerticalTransformer;-><init>(D)V

    .line 159
    new-instance v3, Lcom/metamoji/ch/internal/transformer/ChCompositeTransformer;

    const/4 v9, 0x2

    .line 160
    new-array v10, v9, [Lcom/metamoji/ch/internal/transformer/IChCoordinateTransformer;

    aput-object p8, v10, v11

    .line 161
    aput-object v0, v10, v16

    .line 159
    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v3, v10}, Lcom/metamoji/ch/internal/transformer/ChCompositeTransformer;-><init>(Ljava/util/List;)V

    .line 164
    new-instance v10, Lcom/metamoji/ch/internal/transformer/ChCompositeTransformer;

    .line 165
    new-array v9, v9, [Lcom/metamoji/ch/internal/transformer/IChCoordinateTransformer;

    aput-object v0, v9, v11

    .line 166
    aput-object p8, v9, v16

    .line 164
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/metamoji/ch/internal/transformer/ChCompositeTransformer;-><init>(Ljava/util/List;)V

    .line 168
    sget-object v12, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels;->Companion:Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Companion;

    .line 169
    iget-object v13, v1, Lcom/metamoji/ch/bar/ChBarChart;->valueLabelSprite:Lcom/metamoji/df/sprite/Sprite;

    .line 170
    new-instance v0, Lkotlin/ranges/IntRange;

    invoke-direct {v0, v11, v8}, Lkotlin/ranges/IntRange;-><init>(II)V

    check-cast v0, Ljava/lang/Iterable;

    .line 439
    new-instance v8, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {v0, v9}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v8, Ljava/util/Collection;

    .line 440
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    move-object v9, v0

    check-cast v9, Lkotlin/collections/IntIterator;

    invoke-virtual {v9}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v9

    .line 170
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v6, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v14

    invoke-virtual {v7, v14, v15}, Lcom/metamoji/ch/internal/ChNumberFormatter;->stringFrom(D)Ljava/lang/String;

    move-result-object v9

    .line 441
    invoke-interface {v8, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 442
    :cond_6
    move-object v14, v8

    check-cast v14, Ljava/util/List;

    .line 172
    sget-object v16, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$TruncationStrategy;->NONE:Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$TruncationStrategy;

    .line 173
    iget-object v0, v1, Lcom/metamoji/ch/bar/ChBarChart;->setting:Lcom/metamoji/ch/bar/IChBarChartSetting;

    invoke-interface {v0}, Lcom/metamoji/ch/bar/IChBarChartSetting;->getValueScaleGrid()Lcom/metamoji/ch/IChScaleGridSetting;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/ch/IChScaleGridSetting;->getLabelMargin()D

    move-result-wide v17

    .line 174
    iget-object v0, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/ch/ChRect;

    invoke-virtual {v3, v0}, Lcom/metamoji/ch/internal/transformer/ChCompositeTransformer;->rect(Lcom/metamoji/ch/ChRect;)Lcom/metamoji/ch/ChRect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ch/ChRect;->standardized()Lcom/metamoji/ch/ChRect;

    move-result-object v19

    .line 168
    new-instance v0, Lcom/metamoji/ch/bar/ChBarChart$$ExternalSyntheticLambda1;

    invoke-direct {v0, v4, v10}, Lcom/metamoji/ch/bar/ChBarChart$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/metamoji/ch/internal/transformer/ChCompositeTransformer;)V

    new-instance v1, Lcom/metamoji/ch/bar/ChBarChart$$ExternalSyntheticLambda2;

    invoke-direct {v1, v6, v4, v2}, Lcom/metamoji/ch/bar/ChBarChart$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/metamoji/ch/IChLinearScaleAxisSetting;)V

    move-object/from16 v15, p5

    move-object/from16 v20, v0

    move-object/from16 v21, v1

    invoke-virtual/range {v12 .. v21}, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Companion;->build(Lcom/metamoji/df/sprite/Sprite;Ljava/util/List;Lcom/metamoji/ch/ChSize;Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$TruncationStrategy;DLcom/metamoji/ch/ChRect;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/ch/internal/ChHorizontalAxisLabels;

    move-result-object v0

    move-object/from16 v1, p9

    iput-object v0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 179
    :goto_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 103
    invoke-static {v5, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

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

    invoke-static {v5, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method static final update$makeValueTickLabels$lambda$6$lambda$2(Lcom/metamoji/ch/IChLinearScaleAxisSetting;I)D
    .locals 4

    .line 109
    invoke-interface {p0}, Lcom/metamoji/ch/IChLinearScaleAxisSetting;->getMinValue()D

    move-result-wide v0

    int-to-double v2, p1

    invoke-interface {p0}, Lcom/metamoji/ch/IChLinearScaleAxisSetting;->getTickSpacing()D

    move-result-wide p0

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    return-wide v0
.end method

.method static final update$makeValueTickLabels$lambda$6$lambda$4(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/metamoji/ch/internal/transformer/ChCompositeTransformer;Lcom/metamoji/ch/ChRect;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    invoke-virtual {p1, p2}, Lcom/metamoji/ch/internal/transformer/ChCompositeTransformer;->rect(Lcom/metamoji/ch/ChRect;)Lcom/metamoji/ch/ChRect;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/ch/ChRect;->standardized()Lcom/metamoji/ch/ChRect;

    move-result-object p1

    iput-object p1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final update$makeValueTickLabels$lambda$6$lambda$5(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/metamoji/ch/IChLinearScaleAxisSetting;I)D
    .locals 2

    .line 176
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p0, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Lcom/metamoji/ch/bar/ChBarChart;->update$positionOf(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/metamoji/ch/IChLinearScaleAxisSetting;D)D

    move-result-wide p0

    return-wide p0
.end method

.method private static final update$positionOf(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/metamoji/ch/IChLinearScaleAxisSetting;D)D
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

    invoke-virtual {p0}, Lcom/metamoji/ch/ChRect;->getHeight()D

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

.method private static final update$updateLegendItems(Lcom/metamoji/ch/bar/ChBarChart;ILcom/metamoji/ch/IChDataSource;)V
    .locals 20

    move-object/from16 v0, p0

    const/4 v1, 0x0

    move/from16 v2, p1

    .line 84
    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 435
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .line 436
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v2

    check-cast v4, Lkotlin/collections/IntIterator;

    invoke-virtual {v4}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v4

    move-object/from16 v5, p2

    .line 85
    invoke-interface {v5, v4}, Lcom/metamoji/ch/IChDataSource;->seriesTitle(I)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    const-string v6, ""

    :cond_0
    move-object v9, v6

    .line 86
    new-instance v7, Lcom/metamoji/ch/ChLegend$Item;

    .line 87
    sget-object v6, Lcom/metamoji/ch/ChLegend$Item$Element;->BOX:Lcom/metamoji/ch/ChLegend$Item$Element;

    check-cast v6, Ljava/lang/Enum;

    invoke-static {v6}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v8

    const-string v6, "of(...)"

    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    iget-object v6, v0, Lcom/metamoji/ch/bar/ChBarChart;->setting:Lcom/metamoji/ch/bar/IChBarChartSetting;

    invoke-interface {v6, v4, v1}, Lcom/metamoji/ch/bar/IChBarChartSetting;->fillColor(II)I

    move-result v10

    .line 90
    iget-object v6, v0, Lcom/metamoji/ch/bar/ChBarChart;->setting:Lcom/metamoji/ch/bar/IChBarChartSetting;

    invoke-interface {v6, v4, v1}, Lcom/metamoji/ch/bar/IChBarChartSetting;->lineColor(II)I

    move-result v11

    .line 91
    iget-object v6, v0, Lcom/metamoji/ch/bar/ChBarChart;->setting:Lcom/metamoji/ch/bar/IChBarChartSetting;

    invoke-interface {v6, v4, v1}, Lcom/metamoji/ch/bar/IChBarChartSetting;->lineWidth(II)D

    move-result-wide v12

    const/16 v18, 0xe0

    const/16 v19, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    .line 86
    invoke-direct/range {v7 .. v19}, Lcom/metamoji/ch/ChLegend$Item;-><init>(Ljava/util/EnumSet;Ljava/lang/String;IIDLcom/metamoji/ch/ChMarker;DIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 437
    invoke-interface {v3, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 438
    :cond_1
    check-cast v3, Ljava/util/List;

    .line 84
    iput-object v3, v0, Lcom/metamoji/ch/bar/ChBarChart;->legendItems:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final calcNiceValueScaleAxis()Lcom/metamoji/ch/IChLinearScaleAxisSetting;
    .locals 14

    .line 404
    invoke-virtual {p0}, Lcom/metamoji/ch/bar/ChBarChart;->getDataSource()Lcom/metamoji/ch/IChDataSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/ch/IChDataSource;->getCategoryCount()I

    move-result v0

    .line 405
    invoke-virtual {p0}, Lcom/metamoji/ch/bar/ChBarChart;->getDataSource()Lcom/metamoji/ch/IChDataSource;

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

    .line 411
    invoke-virtual {p0}, Lcom/metamoji/ch/bar/ChBarChart;->getDataSource()Lcom/metamoji/ch/IChDataSource;

    move-result-object v11

    invoke-interface {v11, v5, v10}, Lcom/metamoji/ch/IChDataSource;->data(II)Ljava/lang/Double;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 412
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

    .line 413
    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    cmpg-double v12, v12, v6

    if-gez v12, :cond_0

    .line 414
    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 416
    :cond_0
    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    cmpl-double v12, v12, v8

    if-lez v12, :cond_1

    .line 417
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

    .line 431
    :cond_4
    new-instance v0, Lcom/metamoji/ch/internal/ChNiceScale;

    invoke-direct {v0, v6, v7, v8, v9}, Lcom/metamoji/ch/internal/ChNiceScale;-><init>(DD)V

    check-cast v0, Lcom/metamoji/ch/IChLinearScaleAxisSetting;

    return-object v0
.end method

.method public getChartSize()Lcom/metamoji/ch/ChSize;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/metamoji/ch/bar/ChBarChart;->chartSize:Lcom/metamoji/ch/ChSize;

    return-object v0
.end method

.method public getDataSource()Lcom/metamoji/ch/IChDataSource;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/metamoji/ch/bar/ChBarChart;->dataSource:Lcom/metamoji/ch/IChDataSource;

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

    .line 22
    iget-object v0, p0, Lcom/metamoji/ch/bar/ChBarChart;->legendItems:Ljava/util/List;

    return-object v0
.end method

.method public final getSetting()Lcom/metamoji/ch/bar/IChBarChartSetting;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/metamoji/ch/bar/ChBarChart;->setting:Lcom/metamoji/ch/bar/IChBarChartSetting;

    return-object v0
.end method

.method public getSprite()Lcom/metamoji/df/sprite/Sprite;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/metamoji/ch/bar/ChBarChart;->sprite:Lcom/metamoji/df/sprite/Sprite;

    return-object v0
.end method

.method public update(Lcom/metamoji/ch/IChDataSource;Lcom/metamoji/ch/ChSize;)V
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v12, p1

    move-object/from16 v5, p2

    const-string v0, "dataSource"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chartSize"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iput-object v12, v1, Lcom/metamoji/ch/bar/ChBarChart;->dataSource:Lcom/metamoji/ch/IChDataSource;

    .line 40
    iput-object v5, v1, Lcom/metamoji/ch/bar/ChBarChart;->chartSize:Lcom/metamoji/ch/ChSize;

    .line 42
    invoke-virtual {v1}, Lcom/metamoji/ch/bar/ChBarChart;->getSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    invoke-virtual {v5}, Lcom/metamoji/ch/ChSize;->getWidth()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/metamoji/df/sprite/Sprite;->setWidth(F)V

    .line 43
    invoke-virtual {v1}, Lcom/metamoji/ch/bar/ChBarChart;->getSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    invoke-virtual {v5}, Lcom/metamoji/ch/ChSize;->getHeight()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/metamoji/df/sprite/Sprite;->setHeight(F)V

    .line 48
    invoke-direct {v1}, Lcom/metamoji/ch/bar/ChBarChart;->isVertical()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v5}, Lcom/metamoji/ch/ChSize;->getWidth()D

    move-result-wide v2

    .line 50
    invoke-virtual {v5}, Lcom/metamoji/ch/ChSize;->getHeight()D

    move-result-wide v6

    .line 51
    new-instance v0, Lcom/metamoji/ch/internal/transformer/ChFlipVerticalTransformer;

    invoke-direct {v0, v6, v7}, Lcom/metamoji/ch/internal/transformer/ChFlipVerticalTransformer;-><init>(D)V

    check-cast v0, Lcom/metamoji/ch/internal/transformer/IChCoordinateTransformer;

    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {v5}, Lcom/metamoji/ch/ChSize;->getHeight()D

    move-result-wide v2

    .line 54
    invoke-virtual {v5}, Lcom/metamoji/ch/ChSize;->getWidth()D

    move-result-wide v6

    .line 55
    new-instance v0, Lcom/metamoji/ch/internal/transformer/ChXYTransposeTransformer;

    invoke-direct {v0}, Lcom/metamoji/ch/internal/transformer/ChXYTransposeTransformer;-><init>()V

    check-cast v0, Lcom/metamoji/ch/internal/transformer/IChCoordinateTransformer;

    :goto_0
    move-object v8, v0

    move-wide/from16 v20, v6

    move-wide v6, v2

    .line 58
    invoke-interface {v12}, Lcom/metamoji/ch/IChDataSource;->getCategoryCount()I

    move-result v10

    .line 59
    invoke-interface {v12}, Lcom/metamoji/ch/IChDataSource;->getSeriesCount()I

    move-result v11

    .line 60
    iget-object v0, v1, Lcom/metamoji/ch/bar/ChBarChart;->setting:Lcom/metamoji/ch/bar/IChBarChartSetting;

    invoke-interface {v0}, Lcom/metamoji/ch/bar/IChBarChartSetting;->getValueScaleAxis()Lcom/metamoji/ch/IChLinearScaleAxisSetting;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Lcom/metamoji/ch/bar/ChBarChart;->calcNiceValueScaleAxis()Lcom/metamoji/ch/IChLinearScaleAxisSetting;

    move-result-object v0

    :cond_1
    move-object v2, v0

    .line 61
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v13, Lcom/metamoji/ch/ChRect;

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    move-wide/from16 v18, v6

    invoke-direct/range {v13 .. v21}, Lcom/metamoji/ch/ChRect;-><init>(DDDD)V

    iput-object v13, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 63
    new-instance v13, Lkotlin/jvm/internal/Ref$DoubleRef;

    invoke-direct {v13}, Lkotlin/jvm/internal/Ref$DoubleRef;-><init>()V

    .line 64
    new-instance v14, Lkotlin/jvm/internal/Ref$DoubleRef;

    invoke-direct {v14}, Lkotlin/jvm/internal/Ref$DoubleRef;-><init>()V

    .line 65
    new-instance v15, Lkotlin/jvm/internal/Ref$DoubleRef;

    invoke-direct {v15}, Lkotlin/jvm/internal/Ref$DoubleRef;-><init>()V

    .line 66
    new-instance v16, Lkotlin/jvm/internal/Ref$DoubleRef;

    invoke-direct/range {v16 .. v16}, Lkotlin/jvm/internal/Ref$DoubleRef;-><init>()V

    .line 68
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/List;

    .line 69
    new-instance v9, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 71
    invoke-virtual {v1}, Lcom/metamoji/ch/bar/ChBarChart;->getSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v17

    .line 72
    invoke-virtual/range {v17 .. v17}, Lcom/metamoji/df/sprite/Graphics;->clear()V

    .line 74
    iget-object v4, v1, Lcom/metamoji/ch/bar/ChBarChart;->drawAreaSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v4}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v18

    .line 75
    invoke-virtual/range {v18 .. v18}, Lcom/metamoji/df/sprite/Graphics;->clear()V

    .line 77
    iget-object v4, v1, Lcom/metamoji/ch/bar/ChBarChart;->categoryLabelSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v4}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v19

    .line 78
    invoke-virtual/range {v19 .. v19}, Lcom/metamoji/df/sprite/Graphics;->clear()V

    .line 80
    iget-object v4, v1, Lcom/metamoji/ch/bar/ChBarChart;->valueLabelSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v4}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v4

    .line 81
    invoke-virtual {v4}, Lcom/metamoji/df/sprite/Graphics;->clear()V

    .line 378
    invoke-static {v1, v11, v12}, Lcom/metamoji/ch/bar/ChBarChart;->update$updateLegendItems(Lcom/metamoji/ch/bar/ChBarChart;ILcom/metamoji/ch/IChDataSource;)V

    .line 382
    invoke-direct {v1}, Lcom/metamoji/ch/bar/ChBarChart;->isVertical()Z

    move-result v20

    if-eqz v20, :cond_2

    move-object/from16 v22, v4

    move-object v4, v0

    move-object/from16 v0, v22

    .line 383
    invoke-static/range {v0 .. v9}, Lcom/metamoji/ch/bar/ChBarChart;->update$makeValueTickLabels(Lcom/metamoji/df/sprite/Graphics;Lcom/metamoji/ch/bar/ChBarChart;Lcom/metamoji/ch/IChLinearScaleAxisSetting;Ljava/util/List;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/metamoji/ch/ChSize;DLcom/metamoji/ch/internal/transformer/IChCoordinateTransformer;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    move-object/from16 v6, v16

    move-object/from16 v16, v8

    move-object v8, v6

    move v7, v11

    move-object v6, v15

    move-object v15, v0

    move-object v11, v3

    move-object v3, v4

    move v4, v10

    move-object/from16 v0, v19

    move-object v10, v5

    move-object v5, v14

    move-object v14, v2

    move-object v2, v13

    move-object/from16 v13, v17

    .line 384
    invoke-static/range {v0 .. v13}, Lcom/metamoji/ch/bar/ChBarChart;->update$makeCategoryTickLabels(Lcom/metamoji/df/sprite/Graphics;Lcom/metamoji/ch/bar/ChBarChart;Lkotlin/jvm/internal/Ref$DoubleRef;Lkotlin/jvm/internal/Ref$ObjectRef;ILkotlin/jvm/internal/Ref$DoubleRef;Lkotlin/jvm/internal/Ref$DoubleRef;ILkotlin/jvm/internal/Ref$DoubleRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/metamoji/ch/ChSize;Ljava/util/List;Lcom/metamoji/ch/IChDataSource;Lcom/metamoji/df/sprite/Graphics;)V

    move-object v1, v0

    move-object v0, v3

    move-object/from16 v17, v1

    move-object v12, v2

    move v10, v4

    move-object v2, v13

    move-object v4, v15

    move-object/from16 v1, v16

    move-object v13, v5

    move-object v15, v8

    move-object v5, v14

    move-object v14, v6

    move-object v6, v11

    move v11, v7

    move-object/from16 v3, p0

    move-object v7, v9

    goto/16 :goto_1

    :cond_2
    move-object/from16 v22, v3

    move-object v3, v0

    move-object/from16 v0, v19

    move-wide/from16 v19, v6

    move v7, v11

    move-object/from16 v11, v22

    move-object/from16 v22, v16

    move-object/from16 v16, v8

    move-object/from16 v8, v22

    move-object v6, v15

    move-object v15, v4

    move v4, v10

    move-object v10, v5

    move-object v5, v14

    move-object v14, v2

    move-object v2, v13

    move-object/from16 v13, v17

    .line 386
    invoke-static/range {v0 .. v13}, Lcom/metamoji/ch/bar/ChBarChart;->update$makeCategoryTickLabels(Lcom/metamoji/df/sprite/Graphics;Lcom/metamoji/ch/bar/ChBarChart;Lkotlin/jvm/internal/Ref$DoubleRef;Lkotlin/jvm/internal/Ref$ObjectRef;ILkotlin/jvm/internal/Ref$DoubleRef;Lkotlin/jvm/internal/Ref$DoubleRef;ILkotlin/jvm/internal/Ref$DoubleRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/metamoji/ch/ChSize;Ljava/util/List;Lcom/metamoji/ch/IChDataSource;Lcom/metamoji/df/sprite/Graphics;)V

    move-object/from16 v17, v0

    move-object v12, v2

    move-object v2, v14

    move-object v0, v15

    move-object v14, v6

    move-object v15, v8

    move-object/from16 v8, v16

    move-object/from16 v16, v13

    move-object v13, v5

    move-object v5, v10

    move v10, v4

    move-object v4, v3

    move-object v3, v11

    move v11, v7

    move-wide/from16 v6, v19

    .line 387
    invoke-static/range {v0 .. v9}, Lcom/metamoji/ch/bar/ChBarChart;->update$makeValueTickLabels(Lcom/metamoji/df/sprite/Graphics;Lcom/metamoji/ch/bar/ChBarChart;Lcom/metamoji/ch/IChLinearScaleAxisSetting;Ljava/util/List;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/metamoji/ch/ChSize;DLcom/metamoji/ch/internal/transformer/IChCoordinateTransformer;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    move-object/from16 v22, v4

    move-object v4, v0

    move-object/from16 v0, v22

    move-object v5, v2

    move-object v6, v3

    move-object v1, v8

    move-object/from16 v2, v16

    move-object v7, v9

    move-object/from16 v3, p0

    .line 391
    :goto_1
    invoke-static/range {v0 .. v7}, Lcom/metamoji/ch/bar/ChBarChart;->update$drawValueScale(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/metamoji/ch/internal/transformer/IChCoordinateTransformer;Lcom/metamoji/df/sprite/Graphics;Lcom/metamoji/ch/bar/ChBarChart;Lcom/metamoji/df/sprite/Graphics;Lcom/metamoji/ch/IChLinearScaleAxisSetting;Ljava/util/List;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    move-object v9, v5

    move-object v8, v6

    move v6, v10

    move-object v5, v12

    move-object/from16 v4, v17

    .line 394
    invoke-static/range {v0 .. v8}, Lcom/metamoji/ch/bar/ChBarChart;->update$drawCategoryScale(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/metamoji/ch/internal/transformer/IChCoordinateTransformer;Lcom/metamoji/df/sprite/Graphics;Lcom/metamoji/ch/bar/ChBarChart;Lcom/metamoji/df/sprite/Graphics;Lkotlin/jvm/internal/Ref$DoubleRef;ILkotlin/jvm/internal/Ref$ObjectRef;Ljava/util/List;)V

    move-object/from16 v8, p1

    move-object v2, v3

    move v7, v6

    move v4, v11

    move-object v10, v13

    move-object v6, v15

    move-object/from16 v3, v18

    move-object v11, v9

    move-object v9, v5

    move-object v5, v14

    .line 397
    invoke-static/range {v0 .. v11}, Lcom/metamoji/ch/bar/ChBarChart;->update$drawBars(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/metamoji/ch/internal/transformer/IChCoordinateTransformer;Lcom/metamoji/ch/bar/ChBarChart;Lcom/metamoji/df/sprite/Graphics;ILkotlin/jvm/internal/Ref$DoubleRef;Lkotlin/jvm/internal/Ref$DoubleRef;ILcom/metamoji/ch/IChDataSource;Lkotlin/jvm/internal/Ref$DoubleRef;Lkotlin/jvm/internal/Ref$DoubleRef;Lcom/metamoji/ch/IChLinearScaleAxisSetting;)V

    return-void
.end method
