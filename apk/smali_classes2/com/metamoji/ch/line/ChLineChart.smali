.class public final Lcom/metamoji/ch/line/ChLineChart;
.super Ljava/lang/Object;
.source "ChLineChart.kt"

# interfaces
.implements Lcom/metamoji/ch/IChChart;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChLineChart.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChLineChart.kt\ncom/metamoji/ch/line/ChLineChart\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,369:1\n1563#2:370\n1634#2,3:371\n1563#2:374\n1634#2,3:375\n*S KotlinDebug\n*F\n+ 1 ChLineChart.kt\ncom/metamoji/ch/line/ChLineChart\n*L\n64#1:370\n64#1:371,3\n172#1:374\n172#1:375,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0018\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\tH\u0016J\u0006\u0010\u001e\u001a\u00020\u001fR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u001e\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\t@RX\u0096\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u001e\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0008\u001a\u00020\r@RX\u0096\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R*\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00112\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011@RX\u0096\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u0016\u001a\u00020\u0017X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u000e\u0010\u001a\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcom/metamoji/ch/line/ChLineChart;",
        "Lcom/metamoji/ch/IChChart;",
        "setting",
        "Lcom/metamoji/ch/line/IChLineChartSetting;",
        "<init>",
        "(Lcom/metamoji/ch/line/IChLineChartSetting;)V",
        "getSetting",
        "()Lcom/metamoji/ch/line/IChLineChartSetting;",
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

.field private final setting:Lcom/metamoji/ch/line/IChLineChartSetting;

.field private final sprite:Lcom/metamoji/df/sprite/Sprite;


# direct methods
.method public constructor <init>(Lcom/metamoji/ch/line/IChLineChartSetting;)V
    .locals 2

    const-string v0, "setting"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ch/line/ChLineChart;->setting:Lcom/metamoji/ch/line/IChLineChartSetting;

    .line 17
    sget-object p1, Lcom/metamoji/ch/ChSize;->Companion:Lcom/metamoji/ch/ChSize$Companion;

    invoke-virtual {p1}, Lcom/metamoji/ch/ChSize$Companion;->getZero()Lcom/metamoji/ch/ChSize;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ch/line/ChLineChart;->chartSize:Lcom/metamoji/ch/ChSize;

    .line 20
    new-instance p1, Lcom/metamoji/ch/ChNullDataSource;

    invoke-direct {p1}, Lcom/metamoji/ch/ChNullDataSource;-><init>()V

    check-cast p1, Lcom/metamoji/ch/IChDataSource;

    iput-object p1, p0, Lcom/metamoji/ch/line/ChLineChart;->dataSource:Lcom/metamoji/ch/IChDataSource;

    .line 23
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ch/line/ChLineChart;->legendItems:Ljava/util/List;

    .line 26
    new-instance p1, Lcom/metamoji/df/sprite/Sprite;

    invoke-direct {p1}, Lcom/metamoji/df/sprite/Sprite;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ch/line/ChLineChart;->sprite:Lcom/metamoji/df/sprite/Sprite;

    .line 27
    new-instance p1, Lcom/metamoji/df/sprite/Sprite;

    invoke-direct {p1}, Lcom/metamoji/df/sprite/Sprite;-><init>()V

    const/4 v0, 0x1

    .line 28
    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Sprite;->setClipping(Z)V

    .line 27
    iput-object p1, p0, Lcom/metamoji/ch/line/ChLineChart;->drawAreaSprite:Lcom/metamoji/df/sprite/Sprite;

    .line 30
    new-instance v0, Lcom/metamoji/df/sprite/Sprite;

    invoke-direct {v0}, Lcom/metamoji/df/sprite/Sprite;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ch/line/ChLineChart;->categoryLabelSprite:Lcom/metamoji/df/sprite/Sprite;

    .line 33
    invoke-virtual {p0}, Lcom/metamoji/ch/line/ChLineChart;->getSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/metamoji/df/sprite/Sprite;->addChild(Lcom/metamoji/df/sprite/Sprite;)V

    .line 34
    invoke-virtual {p0}, Lcom/metamoji/ch/line/ChLineChart;->getSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Sprite;->addChild(Lcom/metamoji/df/sprite/Sprite;)V

    return-void
.end method

.method private static final update$drawCategoryScale(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/metamoji/ch/internal/transformer/ChFlipVerticalTransformer;Lcom/metamoji/df/sprite/Graphics;Lcom/metamoji/ch/line/ChLineChart;Lcom/metamoji/df/sprite/Graphics;ILkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/metamoji/ch/ChRect;",
            ">;",
            "Lcom/metamoji/ch/internal/transformer/ChFlipVerticalTransformer;",
            "Lcom/metamoji/df/sprite/Graphics;",
            "Lcom/metamoji/ch/line/ChLineChart;",
            "Lcom/metamoji/df/sprite/Graphics;",
            "I",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/metamoji/ch/internal/ChHorizontalAxisLabels;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    .line 188
    iget-object v6, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v6, Lcom/metamoji/ch/ChRect;

    invoke-virtual {v6}, Lcom/metamoji/ch/ChRect;->getWidth()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpg-double v6, v6, v8

    if-gtz v6, :cond_0

    return-void

    .line 192
    :cond_0
    new-instance v6, Lcom/metamoji/ch/internal/transformer/ChCompositeTransformer;

    const/4 v7, 0x2

    .line 193
    new-array v7, v7, [Lcom/metamoji/ch/internal/transformer/IChCoordinateTransformer;

    new-instance v10, Lcom/metamoji/ch/internal/transformer/ChOffsetTransformer;

    iget-object v11, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v11, Lcom/metamoji/ch/ChRect;

    invoke-virtual {v11}, Lcom/metamoji/ch/ChRect;->getX()D

    move-result-wide v11

    iget-object v13, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v13, Lcom/metamoji/ch/ChRect;

    invoke-virtual {v13}, Lcom/metamoji/ch/ChRect;->getY()D

    move-result-wide v13

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/metamoji/ch/internal/transformer/ChOffsetTransformer;-><init>(DD)V

    const/4 v11, 0x0

    aput-object v10, v7, v11

    const/4 v10, 0x1

    .line 194
    aput-object p1, v7, v10

    .line 192
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/metamoji/ch/internal/transformer/ChCompositeTransformer;-><init>(Ljava/util/List;)V

    .line 197
    new-instance v7, Lcom/metamoji/ch/internal/ChCleanGraphics;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v7, v1}, Lcom/metamoji/ch/internal/ChCleanGraphics;-><init>(Lcom/metamoji/df/sprite/Graphics;)V

    check-cast v7, Ljava/io/Closeable;

    :try_start_0
    move-object v10, v7

    check-cast v10, Lcom/metamoji/ch/internal/ChCleanGraphics;

    .line 198
    iget-object v10, v2, Lcom/metamoji/ch/line/ChLineChart;->setting:Lcom/metamoji/ch/line/IChLineChartSetting;

    invoke-interface {v10}, Lcom/metamoji/ch/line/IChLineChartSetting;->getCategoryScaleGrid()Lcom/metamoji/ch/IChScaleGridSetting;

    move-result-object v10

    invoke-interface {v10}, Lcom/metamoji/ch/IChScaleGridSetting;->getLineWidth()D

    move-result-wide v12

    double-to-float v10, v12

    invoke-virtual {v1, v10}, Lcom/metamoji/df/sprite/Graphics;->setLineWidth(F)V

    .line 199
    new-instance v10, Lcom/metamoji/df/sprite/PaintSolid;

    iget-object v12, v2, Lcom/metamoji/ch/line/ChLineChart;->setting:Lcom/metamoji/ch/line/IChLineChartSetting;

    invoke-interface {v12}, Lcom/metamoji/ch/line/IChLineChartSetting;->getCategoryScaleGrid()Lcom/metamoji/ch/IChScaleGridSetting;

    move-result-object v12

    invoke-interface {v12}, Lcom/metamoji/ch/IChScaleGridSetting;->getLineColor()I

    move-result v12

    invoke-direct {v10, v12}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    check-cast v10, Lcom/metamoji/df/sprite/Paint;

    invoke-virtual {v1, v10}, Lcom/metamoji/df/sprite/Graphics;->setLinePaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 201
    new-instance v10, Lcom/metamoji/ch/internal/ChCleanGraphics;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v10, v3}, Lcom/metamoji/ch/internal/ChCleanGraphics;-><init>(Lcom/metamoji/df/sprite/Graphics;)V

    check-cast v10, Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    move-object v12, v10

    check-cast v12, Lcom/metamoji/ch/internal/ChCleanGraphics;

    .line 202
    new-instance v12, Lcom/metamoji/df/sprite/PaintSolid;

    iget-object v13, v2, Lcom/metamoji/ch/line/ChLineChart;->setting:Lcom/metamoji/ch/line/IChLineChartSetting;

    invoke-interface {v13}, Lcom/metamoji/ch/line/IChLineChartSetting;->getCategoryScaleGrid()Lcom/metamoji/ch/IChScaleGridSetting;

    move-result-object v13

    invoke-interface {v13}, Lcom/metamoji/ch/IChScaleGridSetting;->getLabel()Lcom/metamoji/ch/IChLabelSetting;

    move-result-object v13

    invoke-interface {v13}, Lcom/metamoji/ch/IChLabelSetting;->getColor()I

    move-result v13

    invoke-direct {v12, v13}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    check-cast v12, Lcom/metamoji/df/sprite/Paint;

    invoke-virtual {v3, v12}, Lcom/metamoji/df/sprite/Graphics;->setTextPaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 203
    iget-object v12, v2, Lcom/metamoji/ch/line/ChLineChart;->setting:Lcom/metamoji/ch/line/IChLineChartSetting;

    invoke-interface {v12}, Lcom/metamoji/ch/line/IChLineChartSetting;->getCategoryScaleGrid()Lcom/metamoji/ch/IChScaleGridSetting;

    move-result-object v12

    invoke-interface {v12}, Lcom/metamoji/ch/IChScaleGridSetting;->getLabel()Lcom/metamoji/ch/IChLabelSetting;

    move-result-object v12

    invoke-interface {v12}, Lcom/metamoji/ch/IChLabelSetting;->getFontName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Lcom/metamoji/df/sprite/Graphics;->setFontName(Ljava/lang/String;)V

    .line 204
    iget-object v12, v2, Lcom/metamoji/ch/line/ChLineChart;->setting:Lcom/metamoji/ch/line/IChLineChartSetting;

    invoke-interface {v12}, Lcom/metamoji/ch/line/IChLineChartSetting;->getCategoryScaleGrid()Lcom/metamoji/ch/IChScaleGridSetting;

    move-result-object v12

    invoke-interface {v12}, Lcom/metamoji/ch/IChScaleGridSetting;->getLabel()Lcom/metamoji/ch/IChLabelSetting;

    move-result-object v12

    invoke-interface {v12}, Lcom/metamoji/ch/IChLabelSetting;->getFontSize()D

    move-result-wide v12

    double-to-float v12, v12

    invoke-virtual {v3, v12}, Lcom/metamoji/df/sprite/Graphics;->setFontSize(F)V

    .line 206
    iget-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Lcom/metamoji/ch/ChRect;

    invoke-virtual {v3}, Lcom/metamoji/ch/ChRect;->getWidth()D

    move-result-wide v12

    int-to-double v14, v4

    div-double/2addr v12, v14

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double v14, v12, v14

    .line 210
    iget-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Lcom/metamoji/ch/ChRect;

    invoke-virtual {v3}, Lcom/metamoji/ch/ChRect;->getHeight()D

    move-result-wide v16

    cmpl-double v3, v16, v8

    if-lez v3, :cond_1

    :goto_0
    if-ge v11, v4, :cond_1

    int-to-double v8, v11

    mul-double/2addr v8, v12

    add-double/2addr v8, v14

    .line 213
    new-instance v3, Lcom/metamoji/ch/ChPoint;

    move-wide/from16 v18, v12

    move v13, v11

    const-wide/16 v11, 0x0

    invoke-direct {v3, v8, v9, v11, v12}, Lcom/metamoji/ch/ChPoint;-><init>(DD)V

    invoke-virtual {v6, v3}, Lcom/metamoji/ch/internal/transformer/ChCompositeTransformer;->point(Lcom/metamoji/ch/ChPoint;)Lcom/metamoji/ch/ChPoint;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/metamoji/ch/ChPointKt;->moveTo(Lcom/metamoji/df/sprite/Graphics;Lcom/metamoji/ch/ChPoint;)V

    .line 214
    new-instance v3, Lcom/metamoji/ch/ChPoint;

    iget-object v11, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v11, Lcom/metamoji/ch/ChRect;

    invoke-virtual {v11}, Lcom/metamoji/ch/ChRect;->getHeight()D

    move-result-wide v11

    invoke-direct {v3, v8, v9, v11, v12}, Lcom/metamoji/ch/ChPoint;-><init>(DD)V

    invoke-virtual {v6, v3}, Lcom/metamoji/ch/internal/transformer/ChCompositeTransformer;->point(Lcom/metamoji/ch/ChPoint;)Lcom/metamoji/ch/ChPoint;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/metamoji/ch/ChPointKt;->lineTo(Lcom/metamoji/df/sprite/Graphics;Lcom/metamoji/ch/ChPoint;)V

    .line 215
    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Graphics;->draw()V

    add-int/lit8 v11, v13, 0x1

    move-wide/from16 v12, v18

    const-wide/16 v8, 0x0

    goto :goto_0

    .line 220
    :cond_1
    iget-object v0, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const-string v0, "categoryLabels"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1

    :cond_2
    iget-object v0, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels;

    :goto_1
    iget-object v2, v2, Lcom/metamoji/ch/line/ChLineChart;->categoryLabelSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v0, v2}, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels;->draw(Lcom/metamoji/df/sprite/Sprite;)V

    .line 221
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    :try_start_2
    invoke-static {v10, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 222
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 197
    invoke-static {v7, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 201
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-static {v10, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    move-object v1, v0

    .line 197
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v0

    invoke-static {v7, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static final update$drawLines(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/metamoji/ch/internal/transformer/ChFlipVerticalTransformer;Lcom/metamoji/ch/line/ChLineChart;ILcom/metamoji/df/sprite/Graphics;ILcom/metamoji/ch/IChDataSource;Lcom/metamoji/ch/IChLinearScaleAxisSetting;)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/metamoji/ch/ChRect;",
            ">;",
            "Lcom/metamoji/ch/internal/transformer/ChFlipVerticalTransformer;",
            "Lcom/metamoji/ch/line/ChLineChart;",
            "I",
            "Lcom/metamoji/df/sprite/Graphics;",
            "I",
            "Lcom/metamoji/ch/IChDataSource;",
            "Lcom/metamoji/ch/IChLinearScaleAxisSetting;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v5, p4

    move/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    .line 229
    iget-object v4, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Lcom/metamoji/ch/ChRect;

    invoke-virtual {v4}, Lcom/metamoji/ch/ChRect;->getWidth()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpg-double v4, v6, v8

    if-lez v4, :cond_c

    iget-object v4, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Lcom/metamoji/ch/ChRect;

    invoke-virtual {v4}, Lcom/metamoji/ch/ChRect;->getHeight()D

    move-result-wide v6

    cmpg-double v4, v6, v8

    if-gtz v4, :cond_0

    goto/16 :goto_6

    .line 235
    :cond_0
    iget-object v4, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Lcom/metamoji/ch/ChRect;

    invoke-virtual {v1, v4}, Lcom/metamoji/ch/internal/transformer/ChFlipVerticalTransformer;->rect(Lcom/metamoji/ch/ChRect;)Lcom/metamoji/ch/ChRect;

    move-result-object v4

    .line 236
    invoke-virtual {v4}, Lcom/metamoji/ch/ChRect;->getWidth()D

    move-result-wide v6

    cmpg-double v6, v6, v8

    if-gez v6, :cond_1

    .line 237
    invoke-virtual {v4}, Lcom/metamoji/ch/ChRect;->getX()D

    move-result-wide v6

    invoke-virtual {v4}, Lcom/metamoji/ch/ChRect;->getWidth()D

    move-result-wide v13

    add-double/2addr v6, v13

    invoke-virtual {v4, v6, v7}, Lcom/metamoji/ch/ChRect;->setX(D)V

    .line 238
    invoke-virtual {v4}, Lcom/metamoji/ch/ChRect;->getWidth()D

    move-result-wide v6

    neg-double v6, v6

    invoke-virtual {v4, v6, v7}, Lcom/metamoji/ch/ChRect;->setWidth(D)V

    .line 240
    :cond_1
    invoke-virtual {v4}, Lcom/metamoji/ch/ChRect;->getHeight()D

    move-result-wide v6

    cmpg-double v6, v6, v8

    if-gez v6, :cond_2

    .line 241
    invoke-virtual {v4}, Lcom/metamoji/ch/ChRect;->getY()D

    move-result-wide v6

    invoke-virtual {v4}, Lcom/metamoji/ch/ChRect;->getHeight()D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Lcom/metamoji/ch/ChRect;->setY(D)V

    .line 242
    invoke-virtual {v4}, Lcom/metamoji/ch/ChRect;->getHeight()D

    move-result-wide v6

    neg-double v6, v6

    invoke-virtual {v4, v6, v7}, Lcom/metamoji/ch/ChRect;->setHeight(D)V

    .line 244
    :cond_2
    iget-object v6, v2, Lcom/metamoji/ch/line/ChLineChart;->drawAreaSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v4}, Lcom/metamoji/ch/ChRect;->getX()D

    move-result-wide v7

    double-to-float v7, v7

    invoke-virtual {v6, v7}, Lcom/metamoji/df/sprite/Sprite;->setX(F)V

    .line 245
    iget-object v6, v2, Lcom/metamoji/ch/line/ChLineChart;->drawAreaSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v4}, Lcom/metamoji/ch/ChRect;->getY()D

    move-result-wide v7

    double-to-float v7, v7

    invoke-virtual {v6, v7}, Lcom/metamoji/df/sprite/Sprite;->setY(F)V

    .line 246
    iget-object v6, v2, Lcom/metamoji/ch/line/ChLineChart;->drawAreaSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v4}, Lcom/metamoji/ch/ChRect;->getWidth()D

    move-result-wide v7

    double-to-float v7, v7

    invoke-virtual {v6, v7}, Lcom/metamoji/df/sprite/Sprite;->setWidth(F)V

    .line 247
    iget-object v6, v2, Lcom/metamoji/ch/line/ChLineChart;->drawAreaSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v4}, Lcom/metamoji/ch/ChRect;->getHeight()D

    move-result-wide v7

    double-to-float v4, v7

    invoke-virtual {v6, v4}, Lcom/metamoji/df/sprite/Sprite;->setHeight(F)V

    .line 249
    new-instance v13, Lcom/metamoji/ch/internal/transformer/ChCompositeTransformer;

    const/4 v4, 0x3

    .line 250
    new-array v4, v4, [Lcom/metamoji/ch/internal/transformer/IChCoordinateTransformer;

    new-instance v6, Lcom/metamoji/ch/internal/transformer/ChOffsetTransformer;

    iget-object v7, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v7, Lcom/metamoji/ch/ChRect;

    invoke-virtual {v7}, Lcom/metamoji/ch/ChRect;->getX()D

    move-result-wide v7

    iget-object v9, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v9, Lcom/metamoji/ch/ChRect;

    invoke-virtual {v9}, Lcom/metamoji/ch/ChRect;->getY()D

    move-result-wide v14

    invoke-direct {v6, v7, v8, v14, v15}, Lcom/metamoji/ch/internal/transformer/ChOffsetTransformer;-><init>(DD)V

    const/4 v14, 0x0

    aput-object v6, v4, v14

    const/4 v6, 0x1

    .line 251
    aput-object v1, v4, v6

    .line 252
    new-instance v1, Lcom/metamoji/ch/internal/transformer/ChOffsetTransformer;

    iget-object v7, v2, Lcom/metamoji/ch/line/ChLineChart;->drawAreaSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v7}, Lcom/metamoji/df/sprite/Sprite;->getX()F

    move-result v7

    float-to-double v7, v7

    neg-double v7, v7

    iget-object v9, v2, Lcom/metamoji/ch/line/ChLineChart;->drawAreaSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v9}, Lcom/metamoji/df/sprite/Sprite;->getY()F

    move-result v9

    float-to-double v14, v9

    neg-double v14, v14

    invoke-direct {v1, v7, v8, v14, v15}, Lcom/metamoji/ch/internal/transformer/ChOffsetTransformer;-><init>(DD)V

    const/4 v7, 0x2

    aput-object v1, v4, v7

    .line 249
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v13, v1}, Lcom/metamoji/ch/internal/transformer/ChCompositeTransformer;-><init>(Ljava/util/List;)V

    .line 255
    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lcom/metamoji/ch/ChRect;

    invoke-virtual {v1}, Lcom/metamoji/ch/ChRect;->getWidth()D

    move-result-wide v7

    int-to-double v14, v3

    div-double v14, v7, v14

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    div-double v16, v14, v7

    .line 259
    new-instance v1, Lcom/metamoji/ch/internal/ChCleanGraphics;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v1, v5}, Lcom/metamoji/ch/internal/ChCleanGraphics;-><init>(Lcom/metamoji/df/sprite/Graphics;)V

    check-cast v1, Ljava/io/Closeable;

    :try_start_0
    move-object v4, v1

    check-cast v4, Lcom/metamoji/ch/internal/ChCleanGraphics;

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v10, :cond_8

    .line 261
    iget-object v7, v2, Lcom/metamoji/ch/line/ChLineChart;->setting:Lcom/metamoji/ch/line/IChLineChartSetting;

    invoke-interface {v7, v4}, Lcom/metamoji/ch/line/IChLineChartSetting;->lineWidth(I)D

    move-result-wide v7

    double-to-float v7, v7

    invoke-virtual {v5, v7}, Lcom/metamoji/df/sprite/Graphics;->setLineWidth(F)V

    .line 262
    new-instance v7, Lcom/metamoji/df/sprite/PaintSolid;

    iget-object v8, v2, Lcom/metamoji/ch/line/ChLineChart;->setting:Lcom/metamoji/ch/line/IChLineChartSetting;

    invoke-interface {v8, v4}, Lcom/metamoji/ch/line/IChLineChartSetting;->lineColor(I)I

    move-result v8

    invoke-direct {v7, v8}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    check-cast v7, Lcom/metamoji/df/sprite/Paint;

    invoke-virtual {v5, v7}, Lcom/metamoji/df/sprite/Graphics;->setLinePaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 263
    iget-object v7, v2, Lcom/metamoji/ch/line/ChLineChart;->setting:Lcom/metamoji/ch/line/IChLineChartSetting;

    invoke-interface {v7, v4}, Lcom/metamoji/ch/line/IChLineChartSetting;->lineCap(I)Lcom/metamoji/df/sprite/LineCap;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/metamoji/df/sprite/Graphics;->setLineCap(Lcom/metamoji/df/sprite/LineCap;)V

    .line 264
    iget-object v7, v2, Lcom/metamoji/ch/line/ChLineChart;->setting:Lcom/metamoji/ch/line/IChLineChartSetting;

    invoke-interface {v7, v4}, Lcom/metamoji/ch/line/IChLineChartSetting;->lineJoin(I)Lcom/metamoji/df/sprite/LineJoin;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/metamoji/df/sprite/Graphics;->setLineJoin(Lcom/metamoji/df/sprite/LineJoin;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    if-ge v7, v3, :cond_6

    .line 268
    invoke-interface {v11, v7, v4}, Lcom/metamoji/ch/IChDataSource;->data(II)Ljava/lang/Double;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 269
    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->isNaN(D)Z

    move-result v18

    if-nez v18, :cond_4

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v18

    if-nez v18, :cond_4

    move/from16 p1, v8

    move-object/from16 v18, v9

    int-to-double v8, v7

    mul-double/2addr v8, v14

    add-double v8, v8, v16

    .line 272
    new-instance v6, Lcom/metamoji/ch/ChPoint;

    move-wide/from16 v20, v14

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    invoke-static {v0, v12, v14, v15}, Lcom/metamoji/ch/line/ChLineChart;->update$positionOf(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/metamoji/ch/IChLinearScaleAxisSetting;D)D

    move-result-wide v14

    invoke-direct {v6, v8, v9, v14, v15}, Lcom/metamoji/ch/ChPoint;-><init>(DD)V

    invoke-virtual {v13, v6}, Lcom/metamoji/ch/internal/transformer/ChCompositeTransformer;->point(Lcom/metamoji/ch/ChPoint;)Lcom/metamoji/ch/ChPoint;

    move-result-object v6

    if-eqz p1, :cond_3

    .line 274
    invoke-static {v5, v6}, Lcom/metamoji/ch/ChPointKt;->lineTo(Lcom/metamoji/df/sprite/Graphics;Lcom/metamoji/ch/ChPoint;)V

    move/from16 v8, p1

    const/4 v6, 0x1

    goto :goto_2

    .line 276
    :cond_3
    invoke-static {v5, v6}, Lcom/metamoji/ch/ChPointKt;->moveTo(Lcom/metamoji/df/sprite/Graphics;Lcom/metamoji/ch/ChPoint;)V

    const/4 v6, 0x1

    const/4 v8, 0x1

    goto :goto_2

    :cond_4
    move/from16 p1, v8

    move-wide/from16 v20, v14

    move/from16 v8, p1

    const/4 v6, 0x0

    :goto_2
    if-nez v6, :cond_5

    if-eqz v8, :cond_5

    .line 283
    invoke-virtual {v5}, Lcom/metamoji/df/sprite/Graphics;->draw()V

    const/4 v8, 0x0

    :cond_5
    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v14, v20

    const/4 v6, 0x1

    goto :goto_1

    :cond_6
    move/from16 p1, v8

    move-wide/from16 v20, v14

    if-eqz p1, :cond_7

    .line 289
    invoke-virtual {v5}, Lcom/metamoji/df/sprite/Graphics;->draw()V

    :cond_7
    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v14, v20

    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_8
    move-wide/from16 v20, v14

    .line 292
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v14, 0x0

    .line 259
    invoke-static {v1, v14}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 295
    new-instance v1, Lcom/metamoji/ch/internal/ChCleanGraphics;

    invoke-direct {v1, v5}, Lcom/metamoji/ch/internal/ChCleanGraphics;-><init>(Lcom/metamoji/df/sprite/Graphics;)V

    check-cast v1, Ljava/io/Closeable;

    :try_start_1
    move-object v4, v1

    check-cast v4, Lcom/metamoji/ch/internal/ChCleanGraphics;

    const/4 v15, 0x0

    :goto_3
    if-ge v15, v10, :cond_b

    .line 297
    iget-object v4, v2, Lcom/metamoji/ch/line/ChLineChart;->setting:Lcom/metamoji/ch/line/IChLineChartSetting;

    invoke-interface {v4, v15}, Lcom/metamoji/ch/line/IChLineChartSetting;->markerType(I)Lcom/metamoji/ch/ChMarker;

    move-result-object v4

    .line 298
    sget-object v6, Lcom/metamoji/ch/ChMarker;->NONE:Lcom/metamoji/ch/ChMarker;

    if-eq v4, v6, :cond_a

    .line 299
    iget-object v6, v2, Lcom/metamoji/ch/line/ChLineChart;->setting:Lcom/metamoji/ch/line/IChLineChartSetting;

    invoke-interface {v6, v15}, Lcom/metamoji/ch/line/IChLineChartSetting;->markerSize(I)D

    move-result-wide v6

    .line 300
    iget-object v8, v2, Lcom/metamoji/ch/line/ChLineChart;->setting:Lcom/metamoji/ch/line/IChLineChartSetting;

    invoke-interface {v8, v15}, Lcom/metamoji/ch/line/IChLineChartSetting;->markerColor(I)I

    move-result v9

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v3, :cond_a

    .line 302
    invoke-interface {v11, v8, v15}, Lcom/metamoji/ch/IChDataSource;->data(II)Ljava/lang/Double;

    move-result-object v18

    if-eqz v18, :cond_9

    .line 303
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->isNaN(D)Z

    move-result v19

    if-nez v19, :cond_9

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v19

    if-nez v19, :cond_9

    move/from16 v19, v15

    int-to-double v14, v8

    mul-double v14, v14, v20

    add-double v14, v14, v16

    .line 305
    new-instance v2, Lcom/metamoji/ch/ChPoint;

    move-object/from16 v22, v4

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v0, v12, v3, v4}, Lcom/metamoji/ch/line/ChLineChart;->update$positionOf(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/metamoji/ch/IChLinearScaleAxisSetting;D)D

    move-result-wide v3

    invoke-direct {v2, v14, v15, v3, v4}, Lcom/metamoji/ch/ChPoint;-><init>(DD)V

    invoke-virtual {v13, v2}, Lcom/metamoji/ch/internal/transformer/ChCompositeTransformer;->point(Lcom/metamoji/ch/ChPoint;)Lcom/metamoji/ch/ChPoint;

    move-result-object v2

    .line 308
    invoke-virtual {v2}, Lcom/metamoji/ch/ChPoint;->getX()D

    move-result-wide v3

    double-to-float v3, v3

    .line 309
    invoke-virtual {v2}, Lcom/metamoji/ch/ChPoint;->getY()D

    move-result-wide v14

    double-to-float v2, v14

    move v4, v8

    double-to-float v8, v6

    move v14, v4

    move-object/from16 v4, v22

    move-wide/from16 v24, v6

    move v7, v2

    move v6, v3

    move-wide/from16 v2, v24

    .line 306
    invoke-virtual/range {v4 .. v9}, Lcom/metamoji/ch/ChMarker;->draw(Lcom/metamoji/df/sprite/Graphics;FFFI)V

    goto :goto_5

    :cond_9
    move-wide v2, v6

    move v14, v8

    move/from16 v19, v15

    :goto_5
    add-int/lit8 v8, v14, 0x1

    move-object/from16 v5, p4

    move-wide v6, v2

    move/from16 v15, v19

    const/4 v14, 0x0

    move-object/from16 v2, p2

    move/from16 v3, p3

    goto :goto_4

    :cond_a
    move/from16 v19, v15

    add-int/lit8 v15, v19, 0x1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v5, p4

    const/4 v14, 0x0

    goto/16 :goto_3

    .line 317
    :cond_b
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    .line 295
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

    .line 259
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception v0

    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_c
    :goto_6
    return-void
.end method

.method private static final update$drawValueScale(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/metamoji/ch/internal/transformer/ChFlipVerticalTransformer;Lcom/metamoji/df/sprite/Graphics;Lcom/metamoji/ch/line/ChLineChart;Lcom/metamoji/ch/IChLinearScaleAxisSetting;Ljava/util/List;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/metamoji/ch/ChRect;",
            ">;",
            "Lcom/metamoji/ch/internal/transformer/ChFlipVerticalTransformer;",
            "Lcom/metamoji/df/sprite/Graphics;",
            "Lcom/metamoji/ch/line/ChLineChart;",
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

    .line 129
    iget-object v4, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Lcom/metamoji/ch/ChRect;

    invoke-virtual {v4}, Lcom/metamoji/ch/ChRect;->getHeight()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_0

    return-void

    .line 133
    :cond_0
    new-instance v4, Lcom/metamoji/ch/internal/transformer/ChCompositeTransformer;

    const/4 v5, 0x2

    .line 134
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

    .line 135
    aput-object p1, v8, v9

    .line 133
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v4, v8}, Lcom/metamoji/ch/internal/transformer/ChCompositeTransformer;-><init>(Ljava/util/List;)V

    .line 138
    new-instance v8, Lcom/metamoji/ch/internal/ChCleanGraphics;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v8, v1}, Lcom/metamoji/ch/internal/ChCleanGraphics;-><init>(Lcom/metamoji/df/sprite/Graphics;)V

    check-cast v8, Ljava/io/Closeable;

    :try_start_0
    move-object v9, v8

    check-cast v9, Lcom/metamoji/ch/internal/ChCleanGraphics;

    .line 139
    new-instance v9, Lcom/metamoji/df/sprite/PaintSolid;

    iget-object v11, v2, Lcom/metamoji/ch/line/ChLineChart;->setting:Lcom/metamoji/ch/line/IChLineChartSetting;

    invoke-interface {v11}, Lcom/metamoji/ch/line/IChLineChartSetting;->getValueScaleGrid()Lcom/metamoji/ch/IChScaleGridSetting;

    move-result-object v11

    invoke-interface {v11}, Lcom/metamoji/ch/IChScaleGridSetting;->getLabel()Lcom/metamoji/ch/IChLabelSetting;

    move-result-object v11

    invoke-interface {v11}, Lcom/metamoji/ch/IChLabelSetting;->getColor()I

    move-result v11

    invoke-direct {v9, v11}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    check-cast v9, Lcom/metamoji/df/sprite/Paint;

    invoke-virtual {v1, v9}, Lcom/metamoji/df/sprite/Graphics;->setTextPaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 140
    iget-object v9, v2, Lcom/metamoji/ch/line/ChLineChart;->setting:Lcom/metamoji/ch/line/IChLineChartSetting;

    invoke-interface {v9}, Lcom/metamoji/ch/line/IChLineChartSetting;->getValueScaleGrid()Lcom/metamoji/ch/IChScaleGridSetting;

    move-result-object v9

    invoke-interface {v9}, Lcom/metamoji/ch/IChScaleGridSetting;->getLabel()Lcom/metamoji/ch/IChLabelSetting;

    move-result-object v9

    invoke-interface {v9}, Lcom/metamoji/ch/IChLabelSetting;->getFontName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/metamoji/df/sprite/Graphics;->setFontName(Ljava/lang/String;)V

    .line 141
    iget-object v9, v2, Lcom/metamoji/ch/line/ChLineChart;->setting:Lcom/metamoji/ch/line/IChLineChartSetting;

    invoke-interface {v9}, Lcom/metamoji/ch/line/IChLineChartSetting;->getValueScaleGrid()Lcom/metamoji/ch/IChScaleGridSetting;

    move-result-object v9

    invoke-interface {v9}, Lcom/metamoji/ch/IChScaleGridSetting;->getLabel()Lcom/metamoji/ch/IChLabelSetting;

    move-result-object v9

    invoke-interface {v9}, Lcom/metamoji/ch/IChLabelSetting;->getFontSize()D

    move-result-wide v11

    double-to-float v9, v11

    invoke-virtual {v1, v9}, Lcom/metamoji/df/sprite/Graphics;->setFontSize(F)V

    .line 142
    iget-object v9, v2, Lcom/metamoji/ch/line/ChLineChart;->setting:Lcom/metamoji/ch/line/IChLineChartSetting;

    invoke-interface {v9}, Lcom/metamoji/ch/line/IChLineChartSetting;->getValueScaleGrid()Lcom/metamoji/ch/IChScaleGridSetting;

    move-result-object v9

    invoke-interface {v9}, Lcom/metamoji/ch/IChScaleGridSetting;->getLineWidth()D

    move-result-wide v11

    double-to-float v9, v11

    invoke-virtual {v1, v9}, Lcom/metamoji/df/sprite/Graphics;->setLineWidth(F)V

    .line 143
    new-instance v9, Lcom/metamoji/df/sprite/PaintSolid;

    iget-object v11, v2, Lcom/metamoji/ch/line/ChLineChart;->setting:Lcom/metamoji/ch/line/IChLineChartSetting;

    invoke-interface {v11}, Lcom/metamoji/ch/line/IChLineChartSetting;->getValueScaleGrid()Lcom/metamoji/ch/IChScaleGridSetting;

    move-result-object v11

    invoke-interface {v11}, Lcom/metamoji/ch/IChScaleGridSetting;->getLineColor()I

    move-result v11

    invoke-direct {v9, v11}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    check-cast v9, Lcom/metamoji/df/sprite/Paint;

    invoke-virtual {v1, v9}, Lcom/metamoji/df/sprite/Graphics;->setLinePaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 145
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

    .line 147
    :goto_0
    invoke-interface {v3}, Lcom/metamoji/ch/IChLinearScaleAxisSetting;->getMinValue()D

    move-result-wide v11

    int-to-double v13, v10

    invoke-interface {v3}, Lcom/metamoji/ch/IChLinearScaleAxisSetting;->getTickSpacing()D

    move-result-wide v15

    mul-double/2addr v13, v15

    add-double/2addr v11, v13

    .line 150
    iget-object v13, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v13, Lcom/metamoji/ch/ChRect;

    invoke-virtual {v13}, Lcom/metamoji/ch/ChRect;->getWidth()D

    move-result-wide v13

    cmpl-double v13, v13, v6

    if-lez v13, :cond_1

    .line 151
    new-instance v13, Lcom/metamoji/ch/ChPoint;

    invoke-static {v0, v3, v11, v12}, Lcom/metamoji/ch/line/ChLineChart;->update$positionOf(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/metamoji/ch/IChLinearScaleAxisSetting;D)D

    move-result-wide v14

    invoke-direct {v13, v6, v7, v14, v15}, Lcom/metamoji/ch/ChPoint;-><init>(DD)V

    invoke-virtual {v4, v13}, Lcom/metamoji/ch/internal/transformer/ChCompositeTransformer;->point(Lcom/metamoji/ch/ChPoint;)Lcom/metamoji/ch/ChPoint;

    move-result-object v13

    invoke-static {v1, v13}, Lcom/metamoji/ch/ChPointKt;->moveTo(Lcom/metamoji/df/sprite/Graphics;Lcom/metamoji/ch/ChPoint;)V

    .line 152
    new-instance v13, Lcom/metamoji/ch/ChPoint;

    iget-object v14, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v14, Lcom/metamoji/ch/ChRect;

    invoke-virtual {v14}, Lcom/metamoji/ch/ChRect;->getWidth()D

    move-result-wide v14

    invoke-static {v0, v3, v11, v12}, Lcom/metamoji/ch/line/ChLineChart;->update$positionOf(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/metamoji/ch/IChLinearScaleAxisSetting;D)D

    move-result-wide v6

    invoke-direct {v13, v14, v15, v6, v7}, Lcom/metamoji/ch/ChPoint;-><init>(DD)V

    invoke-virtual {v4, v13}, Lcom/metamoji/ch/internal/transformer/ChCompositeTransformer;->point(Lcom/metamoji/ch/ChPoint;)Lcom/metamoji/ch/ChPoint;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/metamoji/ch/ChPointKt;->lineTo(Lcom/metamoji/df/sprite/Graphics;Lcom/metamoji/ch/ChPoint;)V

    .line 153
    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Graphics;->draw()V

    :cond_1
    move-object/from16 v6, p5

    .line 157
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/metamoji/ch/internal/ChStringWithSize;

    .line 158
    new-instance v13, Lcom/metamoji/ch/ChPoint;

    invoke-virtual {v7}, Lcom/metamoji/ch/internal/ChStringWithSize;->getSize()Lcom/metamoji/ch/ChSize;

    move-result-object v14

    invoke-virtual {v14}, Lcom/metamoji/ch/ChSize;->getWidth()D

    move-result-wide v14

    iget-object v5, v2, Lcom/metamoji/ch/line/ChLineChart;->setting:Lcom/metamoji/ch/line/IChLineChartSetting;

    invoke-interface {v5}, Lcom/metamoji/ch/line/IChLineChartSetting;->getValueScaleGrid()Lcom/metamoji/ch/IChScaleGridSetting;

    move-result-object v5

    invoke-interface {v5}, Lcom/metamoji/ch/IChScaleGridSetting;->getLabelMargin()D

    move-result-wide v17

    add-double v14, v14, v17

    neg-double v14, v14

    invoke-static {v0, v3, v11, v12}, Lcom/metamoji/ch/line/ChLineChart;->update$positionOf(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/metamoji/ch/IChLinearScaleAxisSetting;D)D

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

    .line 159
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

    .line 161
    :cond_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 138
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

.method private static final update$makeCategoryTickLabels(Lcom/metamoji/df/sprite/Graphics;Lcom/metamoji/ch/line/ChLineChart;Lkotlin/jvm/internal/Ref$ObjectRef;ILcom/metamoji/ch/ChSize;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/metamoji/ch/IChDataSource;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/df/sprite/Graphics;",
            "Lcom/metamoji/ch/line/ChLineChart;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/metamoji/ch/internal/ChHorizontalAxisLabels;",
            ">;I",
            "Lcom/metamoji/ch/ChSize;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/metamoji/ch/ChRect;",
            ">;",
            "Lcom/metamoji/ch/IChDataSource;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p5

    .line 165
    new-instance v4, Lcom/metamoji/ch/internal/ChCleanGraphics;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v4, v0}, Lcom/metamoji/ch/internal/ChCleanGraphics;-><init>(Lcom/metamoji/df/sprite/Graphics;)V

    check-cast v4, Ljava/io/Closeable;

    :try_start_0
    move-object v5, v4

    check-cast v5, Lcom/metamoji/ch/internal/ChCleanGraphics;

    .line 166
    new-instance v5, Lcom/metamoji/df/sprite/PaintSolid;

    iget-object v6, v1, Lcom/metamoji/ch/line/ChLineChart;->setting:Lcom/metamoji/ch/line/IChLineChartSetting;

    invoke-interface {v6}, Lcom/metamoji/ch/line/IChLineChartSetting;->getCategoryScaleGrid()Lcom/metamoji/ch/IChScaleGridSetting;

    move-result-object v6

    invoke-interface {v6}, Lcom/metamoji/ch/IChScaleGridSetting;->getLabel()Lcom/metamoji/ch/IChLabelSetting;

    move-result-object v6

    invoke-interface {v6}, Lcom/metamoji/ch/IChLabelSetting;->getColor()I

    move-result v6

    invoke-direct {v5, v6}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    check-cast v5, Lcom/metamoji/df/sprite/Paint;

    invoke-virtual {v0, v5}, Lcom/metamoji/df/sprite/Graphics;->setTextPaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 167
    iget-object v5, v1, Lcom/metamoji/ch/line/ChLineChart;->setting:Lcom/metamoji/ch/line/IChLineChartSetting;

    invoke-interface {v5}, Lcom/metamoji/ch/line/IChLineChartSetting;->getCategoryScaleGrid()Lcom/metamoji/ch/IChScaleGridSetting;

    move-result-object v5

    invoke-interface {v5}, Lcom/metamoji/ch/IChScaleGridSetting;->getLabel()Lcom/metamoji/ch/IChLabelSetting;

    move-result-object v5

    invoke-interface {v5}, Lcom/metamoji/ch/IChLabelSetting;->getFontName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/metamoji/df/sprite/Graphics;->setFontName(Ljava/lang/String;)V

    .line 168
    iget-object v5, v1, Lcom/metamoji/ch/line/ChLineChart;->setting:Lcom/metamoji/ch/line/IChLineChartSetting;

    invoke-interface {v5}, Lcom/metamoji/ch/line/IChLineChartSetting;->getCategoryScaleGrid()Lcom/metamoji/ch/IChScaleGridSetting;

    move-result-object v5

    invoke-interface {v5}, Lcom/metamoji/ch/IChScaleGridSetting;->getLabel()Lcom/metamoji/ch/IChLabelSetting;

    move-result-object v5

    invoke-interface {v5}, Lcom/metamoji/ch/IChLabelSetting;->getFontSize()D

    move-result-wide v5

    double-to-float v5, v5

    invoke-virtual {v0, v5}, Lcom/metamoji/df/sprite/Graphics;->setFontSize(F)V

    .line 170
    sget-object v6, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels;->Companion:Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Companion;

    .line 171
    iget-object v7, v1, Lcom/metamoji/ch/line/ChLineChart;->categoryLabelSprite:Lcom/metamoji/df/sprite/Sprite;

    const/4 v0, 0x0

    .line 172
    invoke-static {v0, v2}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 374
    new-instance v5, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v0, v8}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v5, Ljava/util/Collection;

    .line 375
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v8, v0

    check-cast v8, Lkotlin/collections/IntIterator;

    invoke-virtual {v8}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v8

    move-object/from16 v9, p6

    .line 172
    invoke-interface {v9, v8}, Lcom/metamoji/ch/IChDataSource;->categoryTitle(I)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_0

    const-string v8, ""

    .line 376
    :cond_0
    invoke-interface {v5, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 377
    :cond_1
    move-object v8, v5

    check-cast v8, Ljava/util/List;

    .line 174
    sget-object v10, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$TruncationStrategy;->TAIL:Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$TruncationStrategy;

    .line 175
    iget-object v0, v1, Lcom/metamoji/ch/line/ChLineChart;->setting:Lcom/metamoji/ch/line/IChLineChartSetting;

    invoke-interface {v0}, Lcom/metamoji/ch/line/IChLineChartSetting;->getCategoryScaleGrid()Lcom/metamoji/ch/IChScaleGridSetting;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/ch/IChScaleGridSetting;->getLabelMargin()D

    move-result-wide v11

    .line 176
    iget-object v0, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v13, v0

    check-cast v13, Lcom/metamoji/ch/ChRect;

    .line 170
    new-instance v14, Lcom/metamoji/ch/line/ChLineChart$$ExternalSyntheticLambda0;

    invoke-direct {v14, v3}, Lcom/metamoji/ch/line/ChLineChart$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    new-instance v15, Lcom/metamoji/ch/line/ChLineChart$$ExternalSyntheticLambda1;

    invoke-direct {v15, v3, v2}, Lcom/metamoji/ch/line/ChLineChart$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;I)V

    move-object/from16 v9, p4

    invoke-virtual/range {v6 .. v15}, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Companion;->build(Lcom/metamoji/df/sprite/Sprite;Ljava/util/List;Lcom/metamoji/ch/ChSize;Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$TruncationStrategy;DLcom/metamoji/ch/ChRect;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/ch/internal/ChHorizontalAxisLabels;

    move-result-object v0

    move-object/from16 v1, p2

    iput-object v0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 183
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 165
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

.method static final update$makeCategoryTickLabels$lambda$7$lambda$5(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/metamoji/ch/ChRect;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    iput-object p1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final update$makeCategoryTickLabels$lambda$7$lambda$6(Lkotlin/jvm/internal/Ref$ObjectRef;II)D
    .locals 4

    .line 179
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Lcom/metamoji/ch/ChRect;

    invoke-virtual {p0}, Lcom/metamoji/ch/ChRect;->getWidth()D

    move-result-wide v0

    int-to-double p0, p1

    div-double/2addr v0, p0

    int-to-double p0, p2

    mul-double/2addr p0, v0

    const/4 p2, 0x2

    int-to-double v2, p2

    div-double/2addr v0, v2

    add-double/2addr p0, v0

    return-wide p0
.end method

.method private static final update$makeValueTickLabels(Lcom/metamoji/df/sprite/Graphics;Lcom/metamoji/ch/line/ChLineChart;Lcom/metamoji/ch/IChLinearScaleAxisSetting;Ljava/util/List;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/metamoji/ch/ChSize;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/df/sprite/Graphics;",
            "Lcom/metamoji/ch/line/ChLineChart;",
            "Lcom/metamoji/ch/IChLinearScaleAxisSetting;",
            "Ljava/util/List<",
            "Lcom/metamoji/ch/internal/ChStringWithSize;",
            ">;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/metamoji/ch/ChRect;",
            ">;",
            "Lcom/metamoji/ch/ChSize;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 85
    new-instance v4, Lcom/metamoji/ch/internal/ChCleanGraphics;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v4, v0}, Lcom/metamoji/ch/internal/ChCleanGraphics;-><init>(Lcom/metamoji/df/sprite/Graphics;)V

    check-cast v4, Ljava/io/Closeable;

    :try_start_0
    move-object v5, v4

    check-cast v5, Lcom/metamoji/ch/internal/ChCleanGraphics;

    .line 86
    new-instance v5, Lcom/metamoji/df/sprite/PaintSolid;

    iget-object v6, v1, Lcom/metamoji/ch/line/ChLineChart;->setting:Lcom/metamoji/ch/line/IChLineChartSetting;

    invoke-interface {v6}, Lcom/metamoji/ch/line/IChLineChartSetting;->getValueScaleGrid()Lcom/metamoji/ch/IChScaleGridSetting;

    move-result-object v6

    invoke-interface {v6}, Lcom/metamoji/ch/IChScaleGridSetting;->getLabel()Lcom/metamoji/ch/IChLabelSetting;

    move-result-object v6

    invoke-interface {v6}, Lcom/metamoji/ch/IChLabelSetting;->getColor()I

    move-result v6

    invoke-direct {v5, v6}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    check-cast v5, Lcom/metamoji/df/sprite/Paint;

    invoke-virtual {v0, v5}, Lcom/metamoji/df/sprite/Graphics;->setTextPaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 87
    iget-object v5, v1, Lcom/metamoji/ch/line/ChLineChart;->setting:Lcom/metamoji/ch/line/IChLineChartSetting;

    invoke-interface {v5}, Lcom/metamoji/ch/line/IChLineChartSetting;->getValueScaleGrid()Lcom/metamoji/ch/IChScaleGridSetting;

    move-result-object v5

    invoke-interface {v5}, Lcom/metamoji/ch/IChScaleGridSetting;->getLabel()Lcom/metamoji/ch/IChLabelSetting;

    move-result-object v5

    invoke-interface {v5}, Lcom/metamoji/ch/IChLabelSetting;->getFontName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/metamoji/df/sprite/Graphics;->setFontName(Ljava/lang/String;)V

    .line 88
    iget-object v5, v1, Lcom/metamoji/ch/line/ChLineChart;->setting:Lcom/metamoji/ch/line/IChLineChartSetting;

    invoke-interface {v5}, Lcom/metamoji/ch/line/IChLineChartSetting;->getValueScaleGrid()Lcom/metamoji/ch/IChScaleGridSetting;

    move-result-object v5

    invoke-interface {v5}, Lcom/metamoji/ch/IChScaleGridSetting;->getLabel()Lcom/metamoji/ch/IChLabelSetting;

    move-result-object v5

    invoke-interface {v5}, Lcom/metamoji/ch/IChLabelSetting;->getFontSize()D

    move-result-wide v5

    double-to-float v5, v5

    invoke-virtual {v0, v5}, Lcom/metamoji/df/sprite/Graphics;->setFontSize(F)V

    .line 90
    invoke-interface/range {p2 .. p2}, Lcom/metamoji/ch/IChLinearScaleAxisSetting;->getMaxValue()D

    move-result-wide v5

    invoke-interface/range {p2 .. p2}, Lcom/metamoji/ch/IChLinearScaleAxisSetting;->getMinValue()D

    move-result-wide v7

    sub-double/2addr v5, v7

    invoke-interface/range {p2 .. p2}, Lcom/metamoji/ch/IChLinearScaleAxisSetting;->getTickSpacing()D

    move-result-wide v7

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    .line 91
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 92
    new-instance v6, Lcom/metamoji/ch/internal/ChNumberFormatter;

    invoke-direct {v6}, Lcom/metamoji/ch/internal/ChNumberFormatter;-><init>()V

    .line 93
    invoke-interface/range {p2 .. p2}, Lcom/metamoji/ch/IChLinearScaleAxisSetting;->getNumDecimal()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/metamoji/ch/internal/ChNumberFormatter;->setFractionDigits(I)V

    const-wide/16 v7, 0x0

    if-ltz v5, :cond_1

    const/4 v9, 0x0

    .line 96
    :goto_0
    invoke-interface/range {p2 .. p2}, Lcom/metamoji/ch/IChLinearScaleAxisSetting;->getMinValue()D

    move-result-wide v10

    int-to-double v12, v9

    invoke-interface/range {p2 .. p2}, Lcom/metamoji/ch/IChLinearScaleAxisSetting;->getTickSpacing()D

    move-result-wide v14

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    .line 97
    invoke-virtual {v6, v10, v11}, Lcom/metamoji/ch/internal/ChNumberFormatter;->stringFrom(D)Ljava/lang/String;

    move-result-object v10

    .line 98
    invoke-virtual {v0, v10}, Lcom/metamoji/df/sprite/Graphics;->rectOfString(Ljava/lang/String;)Landroid/graphics/RectF;

    move-result-object v11

    .line 99
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v11}, Lcom/metamoji/ch/ChRectKt;->getChSize(Landroid/graphics/RectF;)Lcom/metamoji/ch/ChSize;

    move-result-object v11

    .line 100
    new-instance v12, Lcom/metamoji/ch/internal/ChStringWithSize;

    invoke-direct {v12, v10, v11}, Lcom/metamoji/ch/internal/ChStringWithSize;-><init>(Ljava/lang/String;Lcom/metamoji/ch/ChSize;)V

    .line 102
    invoke-virtual {v12}, Lcom/metamoji/ch/internal/ChStringWithSize;->getSize()Lcom/metamoji/ch/ChSize;

    move-result-object v10

    invoke-virtual {v10}, Lcom/metamoji/ch/ChSize;->getWidth()D

    move-result-wide v10

    cmpg-double v13, v7, v10

    if-gez v13, :cond_0

    move-wide v7, v10

    .line 106
    :cond_0
    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eq v9, v5, :cond_1

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 109
    :cond_1
    move-object v0, v2

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 110
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ch/internal/ChStringWithSize;

    .line 111
    invoke-interface/range {p2 .. p2}, Lcom/metamoji/ch/IChLinearScaleAxisSetting;->getMinValue()D

    move-result-wide v5

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-double v9, v2

    invoke-interface/range {p2 .. p2}, Lcom/metamoji/ch/IChLinearScaleAxisSetting;->getTickSpacing()D

    move-result-wide v11

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    move-object/from16 v2, p2

    .line 112
    invoke-static {v3, v2, v5, v6}, Lcom/metamoji/ch/line/ChLineChart;->update$positionOf(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/metamoji/ch/IChLinearScaleAxisSetting;D)D

    move-result-wide v5

    .line 113
    iget-object v2, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lcom/metamoji/ch/ChRect;

    invoke-virtual {v2}, Lcom/metamoji/ch/ChRect;->getY()D

    move-result-wide v9

    add-double/2addr v9, v5

    invoke-virtual {v0}, Lcom/metamoji/ch/internal/ChStringWithSize;->getSize()Lcom/metamoji/ch/ChSize;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ch/ChSize;->getHeight()D

    move-result-wide v11

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    div-double/2addr v11, v13

    add-double/2addr v9, v11

    .line 114
    invoke-virtual/range {p5 .. p5}, Lcom/metamoji/ch/ChSize;->getHeight()D

    move-result-wide v11

    cmpl-double v0, v9, v11

    if-lez v0, :cond_2

    .line 115
    iget-object v0, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/ch/ChRect;

    iget-object v2, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lcom/metamoji/ch/ChRect;

    invoke-virtual {v2}, Lcom/metamoji/ch/ChRect;->getHeight()D

    move-result-wide v11

    invoke-virtual/range {p5 .. p5}, Lcom/metamoji/ch/ChSize;->getHeight()D

    move-result-wide v13

    sub-double/2addr v9, v13

    sub-double v9, v5, v9

    div-double/2addr v9, v5

    mul-double/2addr v11, v9

    invoke-virtual {v0, v11, v12}, Lcom/metamoji/ch/ChRect;->setHeight(D)V

    .line 119
    :cond_2
    iget-object v0, v1, Lcom/metamoji/ch/line/ChLineChart;->setting:Lcom/metamoji/ch/line/IChLineChartSetting;

    invoke-interface {v0}, Lcom/metamoji/ch/line/IChLineChartSetting;->getValueScaleGrid()Lcom/metamoji/ch/IChScaleGridSetting;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/ch/IChScaleGridSetting;->getLabelMargin()D

    move-result-wide v0

    add-double/2addr v7, v0

    .line 120
    iget-object v0, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/ch/ChRect;

    invoke-virtual {v0}, Lcom/metamoji/ch/ChRect;->getX()D

    move-result-wide v1

    add-double/2addr v1, v7

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/ch/ChRect;->setX(D)V

    .line 121
    iget-object v0, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/ch/ChRect;

    invoke-virtual {v0}, Lcom/metamoji/ch/ChRect;->getWidth()D

    move-result-wide v1

    sub-double/2addr v1, v7

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/ch/ChRect;->setWidth(D)V

    .line 122
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 85
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

    .line 79
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

    .line 80
    invoke-interface {p1}, Lcom/metamoji/ch/IChLinearScaleAxisSetting;->getMinValue()D

    move-result-wide p0

    neg-double p0, p0

    mul-double/2addr p0, v0

    mul-double/2addr p2, v0

    add-double/2addr p0, p2

    return-wide p0
.end method

.method private static final update$updateLegendItems(Lcom/metamoji/ch/line/ChLineChart;ILcom/metamoji/ch/IChDataSource;)V
    .locals 19

    move-object/from16 v0, p0

    const/4 v1, 0x0

    move/from16 v2, p1

    .line 64
    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 370
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 371
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v1

    check-cast v3, Lkotlin/collections/IntIterator;

    invoke-virtual {v3}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v3

    move-object/from16 v4, p2

    .line 65
    invoke-interface {v4, v3}, Lcom/metamoji/ch/IChDataSource;->seriesTitle(I)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    const-string v5, ""

    :cond_0
    move-object v8, v5

    .line 66
    new-instance v6, Lcom/metamoji/ch/ChLegend$Item;

    .line 67
    sget-object v5, Lcom/metamoji/ch/ChLegend$Item$Element;->LINE:Lcom/metamoji/ch/ChLegend$Item$Element;

    check-cast v5, Ljava/lang/Enum;

    sget-object v7, Lcom/metamoji/ch/ChLegend$Item$Element;->MARKER:Lcom/metamoji/ch/ChLegend$Item$Element;

    check-cast v7, Ljava/lang/Enum;

    invoke-static {v5, v7}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v7

    const-string v5, "of(...)"

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iget-object v5, v0, Lcom/metamoji/ch/line/ChLineChart;->setting:Lcom/metamoji/ch/line/IChLineChartSetting;

    invoke-interface {v5, v3}, Lcom/metamoji/ch/line/IChLineChartSetting;->lineColor(I)I

    move-result v10

    .line 70
    iget-object v5, v0, Lcom/metamoji/ch/line/ChLineChart;->setting:Lcom/metamoji/ch/line/IChLineChartSetting;

    invoke-interface {v5, v3}, Lcom/metamoji/ch/line/IChLineChartSetting;->lineWidth(I)D

    move-result-wide v11

    .line 71
    iget-object v5, v0, Lcom/metamoji/ch/line/ChLineChart;->setting:Lcom/metamoji/ch/line/IChLineChartSetting;

    invoke-interface {v5, v3}, Lcom/metamoji/ch/line/IChLineChartSetting;->markerType(I)Lcom/metamoji/ch/ChMarker;

    move-result-object v13

    .line 72
    iget-object v5, v0, Lcom/metamoji/ch/line/ChLineChart;->setting:Lcom/metamoji/ch/line/IChLineChartSetting;

    invoke-interface {v5, v3}, Lcom/metamoji/ch/line/IChLineChartSetting;->markerSize(I)D

    move-result-wide v14

    .line 73
    iget-object v5, v0, Lcom/metamoji/ch/line/ChLineChart;->setting:Lcom/metamoji/ch/line/IChLineChartSetting;

    invoke-interface {v5, v3}, Lcom/metamoji/ch/line/IChLineChartSetting;->markerColor(I)I

    move-result v16

    const/16 v17, 0x4

    const/16 v18, 0x0

    const/4 v9, 0x0

    .line 66
    invoke-direct/range {v6 .. v18}, Lcom/metamoji/ch/ChLegend$Item;-><init>(Ljava/util/EnumSet;Ljava/lang/String;IIDLcom/metamoji/ch/ChMarker;DIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 372
    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 373
    :cond_1
    check-cast v2, Ljava/util/List;

    .line 64
    iput-object v2, v0, Lcom/metamoji/ch/line/ChLineChart;->legendItems:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final calcNiceValueScaleAxis()Lcom/metamoji/ch/IChLinearScaleAxisSetting;
    .locals 14

    .line 339
    invoke-virtual {p0}, Lcom/metamoji/ch/line/ChLineChart;->getDataSource()Lcom/metamoji/ch/IChDataSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/ch/IChDataSource;->getCategoryCount()I

    move-result v0

    .line 340
    invoke-virtual {p0}, Lcom/metamoji/ch/line/ChLineChart;->getDataSource()Lcom/metamoji/ch/IChDataSource;

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

    .line 346
    invoke-virtual {p0}, Lcom/metamoji/ch/line/ChLineChart;->getDataSource()Lcom/metamoji/ch/IChDataSource;

    move-result-object v11

    invoke-interface {v11, v5, v10}, Lcom/metamoji/ch/IChDataSource;->data(II)Ljava/lang/Double;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 347
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

    .line 348
    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    cmpg-double v12, v12, v6

    if-gez v12, :cond_0

    .line 349
    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 351
    :cond_0
    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    cmpl-double v12, v12, v8

    if-lez v12, :cond_1

    .line 352
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

    .line 366
    :cond_4
    new-instance v0, Lcom/metamoji/ch/internal/ChNiceScale;

    invoke-direct {v0, v6, v7, v8, v9}, Lcom/metamoji/ch/internal/ChNiceScale;-><init>(DD)V

    check-cast v0, Lcom/metamoji/ch/IChLinearScaleAxisSetting;

    return-object v0
.end method

.method public getChartSize()Lcom/metamoji/ch/ChSize;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/metamoji/ch/line/ChLineChart;->chartSize:Lcom/metamoji/ch/ChSize;

    return-object v0
.end method

.method public getDataSource()Lcom/metamoji/ch/IChDataSource;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/metamoji/ch/line/ChLineChart;->dataSource:Lcom/metamoji/ch/IChDataSource;

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
    iget-object v0, p0, Lcom/metamoji/ch/line/ChLineChart;->legendItems:Ljava/util/List;

    return-object v0
.end method

.method public final getSetting()Lcom/metamoji/ch/line/IChLineChartSetting;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/metamoji/ch/line/ChLineChart;->setting:Lcom/metamoji/ch/line/IChLineChartSetting;

    return-object v0
.end method

.method public getSprite()Lcom/metamoji/df/sprite/Sprite;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/metamoji/ch/line/ChLineChart;->sprite:Lcom/metamoji/df/sprite/Sprite;

    return-object v0
.end method

.method public update(Lcom/metamoji/ch/IChDataSource;Lcom/metamoji/ch/ChSize;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    move-object/from16 v4, p2

    const-string v0, "dataSource"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chartSize"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iput-object v6, v1, Lcom/metamoji/ch/line/ChLineChart;->dataSource:Lcom/metamoji/ch/IChDataSource;

    .line 39
    iput-object v4, v1, Lcom/metamoji/ch/line/ChLineChart;->chartSize:Lcom/metamoji/ch/ChSize;

    .line 41
    invoke-virtual {v1}, Lcom/metamoji/ch/line/ChLineChart;->getSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    invoke-virtual {v4}, Lcom/metamoji/ch/ChSize;->getWidth()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/metamoji/df/sprite/Sprite;->setWidth(F)V

    .line 42
    invoke-virtual {v1}, Lcom/metamoji/ch/line/ChLineChart;->getSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    invoke-virtual {v4}, Lcom/metamoji/ch/ChSize;->getHeight()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/metamoji/df/sprite/Sprite;->setHeight(F)V

    .line 44
    new-instance v7, Lcom/metamoji/ch/internal/transformer/ChFlipVerticalTransformer;

    invoke-virtual {v4}, Lcom/metamoji/ch/ChSize;->getHeight()D

    move-result-wide v2

    invoke-direct {v7, v2, v3}, Lcom/metamoji/ch/internal/transformer/ChFlipVerticalTransformer;-><init>(D)V

    .line 46
    invoke-interface {v6}, Lcom/metamoji/ch/IChDataSource;->getCategoryCount()I

    move-result v8

    .line 47
    invoke-interface {v6}, Lcom/metamoji/ch/IChDataSource;->getSeriesCount()I

    move-result v9

    .line 48
    iget-object v0, v1, Lcom/metamoji/ch/line/ChLineChart;->setting:Lcom/metamoji/ch/line/IChLineChartSetting;

    invoke-interface {v0}, Lcom/metamoji/ch/line/IChLineChartSetting;->getValueScaleAxis()Lcom/metamoji/ch/IChLinearScaleAxisSetting;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/metamoji/ch/line/ChLineChart;->calcNiceValueScaleAxis()Lcom/metamoji/ch/IChLinearScaleAxisSetting;

    move-result-object v0

    :cond_0
    move-object v2, v0

    .line 49
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v10, Lcom/metamoji/ch/ChRect;

    invoke-virtual {v4}, Lcom/metamoji/ch/ChSize;->getWidth()D

    move-result-wide v15

    invoke-virtual {v4}, Lcom/metamoji/ch/ChSize;->getHeight()D

    move-result-wide v17

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    invoke-direct/range {v10 .. v18}, Lcom/metamoji/ch/ChRect;-><init>(DDDD)V

    iput-object v10, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 51
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/List;

    .line 52
    new-instance v10, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 54
    invoke-virtual {v1}, Lcom/metamoji/ch/line/ChLineChart;->getSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v5

    .line 55
    invoke-virtual {v5}, Lcom/metamoji/df/sprite/Graphics;->clear()V

    .line 57
    iget-object v11, v1, Lcom/metamoji/ch/line/ChLineChart;->drawAreaSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v11}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v11

    .line 58
    invoke-virtual {v11}, Lcom/metamoji/df/sprite/Graphics;->clear()V

    .line 60
    iget-object v12, v1, Lcom/metamoji/ch/line/ChLineChart;->categoryLabelSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v12}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v12

    .line 61
    invoke-virtual {v12}, Lcom/metamoji/df/sprite/Graphics;->clear()V

    .line 321
    invoke-static {v1, v9, v6}, Lcom/metamoji/ch/line/ChLineChart;->update$updateLegendItems(Lcom/metamoji/ch/line/ChLineChart;ILcom/metamoji/ch/IChDataSource;)V

    move-object/from16 v19, v4

    move-object v4, v0

    move-object v0, v5

    move-object/from16 v5, v19

    .line 325
    invoke-static/range {v0 .. v5}, Lcom/metamoji/ch/line/ChLineChart;->update$makeValueTickLabels(Lcom/metamoji/df/sprite/Graphics;Lcom/metamoji/ch/line/ChLineChart;Lcom/metamoji/ch/IChLinearScaleAxisSetting;Ljava/util/List;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/metamoji/ch/ChSize;)V

    move-object/from16 v19, v12

    move-object v12, v0

    move-object/from16 v0, v19

    move/from16 v19, v8

    move-object v8, v2

    move-object v2, v10

    move-object v10, v3

    move/from16 v3, v19

    move-object/from16 v19, v5

    move-object v5, v4

    move-object/from16 v4, v19

    .line 326
    invoke-static/range {v0 .. v6}, Lcom/metamoji/ch/line/ChLineChart;->update$makeCategoryTickLabels(Lcom/metamoji/df/sprite/Graphics;Lcom/metamoji/ch/line/ChLineChart;Lkotlin/jvm/internal/Ref$ObjectRef;ILcom/metamoji/ch/ChSize;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/metamoji/ch/IChDataSource;)V

    move v6, v3

    move-object v4, v8

    move-object v8, v0

    move-object v3, v1

    move-object v0, v5

    move-object v1, v7

    move-object v5, v10

    move-object v7, v2

    move-object v2, v12

    .line 329
    invoke-static/range {v0 .. v5}, Lcom/metamoji/ch/line/ChLineChart;->update$drawValueScale(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/metamoji/ch/internal/transformer/ChFlipVerticalTransformer;Lcom/metamoji/df/sprite/Graphics;Lcom/metamoji/ch/line/ChLineChart;Lcom/metamoji/ch/IChLinearScaleAxisSetting;Ljava/util/List;)V

    move v5, v6

    move-object v6, v7

    move-object v7, v4

    move-object v4, v8

    .line 332
    invoke-static/range {v0 .. v6}, Lcom/metamoji/ch/line/ChLineChart;->update$drawCategoryScale(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/metamoji/ch/internal/transformer/ChFlipVerticalTransformer;Lcom/metamoji/df/sprite/Graphics;Lcom/metamoji/ch/line/ChLineChart;Lcom/metamoji/df/sprite/Graphics;ILkotlin/jvm/internal/Ref$ObjectRef;)V

    move-object/from16 v6, p1

    move-object v2, v3

    move v3, v5

    move v5, v9

    move-object v4, v11

    .line 335
    invoke-static/range {v0 .. v7}, Lcom/metamoji/ch/line/ChLineChart;->update$drawLines(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/metamoji/ch/internal/transformer/ChFlipVerticalTransformer;Lcom/metamoji/ch/line/ChLineChart;ILcom/metamoji/df/sprite/Graphics;ILcom/metamoji/ch/IChDataSource;Lcom/metamoji/ch/IChLinearScaleAxisSetting;)V

    return-void
.end method
