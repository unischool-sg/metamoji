.class public final Lcom/metamoji/ch/radar/ChRadarChart;
.super Ljava/lang/Object;
.source "ChRadarChart.kt"

# interfaces
.implements Lcom/metamoji/ch/IChChart;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChRadarChart.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChRadarChart.kt\ncom/metamoji/ch/radar/ChRadarChart\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,331:1\n1563#2:332\n1634#2,3:333\n*S KotlinDebug\n*F\n+ 1 ChRadarChart.kt\ncom/metamoji/ch/radar/ChRadarChart\n*L\n59#1:332\n59#1:333,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0018\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\tH\u0016J\u0006\u0010\u001c\u001a\u00020\u001dR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u001e\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\t@RX\u0096\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u001e\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0008\u001a\u00020\r@RX\u0096\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R*\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00112\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011@RX\u0096\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u0016\u001a\u00020\u0017X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/metamoji/ch/radar/ChRadarChart;",
        "Lcom/metamoji/ch/IChChart;",
        "setting",
        "Lcom/metamoji/ch/radar/IChRadarChartSetting;",
        "<init>",
        "(Lcom/metamoji/ch/radar/IChRadarChartSetting;)V",
        "getSetting",
        "()Lcom/metamoji/ch/radar/IChRadarChartSetting;",
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
.field private chartSize:Lcom/metamoji/ch/ChSize;

.field private dataSource:Lcom/metamoji/ch/IChDataSource;

.field private legendItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/ch/ChLegend$Item;",
            ">;"
        }
    .end annotation
.end field

.field private final setting:Lcom/metamoji/ch/radar/IChRadarChartSetting;

.field private final sprite:Lcom/metamoji/df/sprite/Sprite;


# direct methods
.method public constructor <init>(Lcom/metamoji/ch/radar/IChRadarChartSetting;)V
    .locals 1

    const-string v0, "setting"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ch/radar/ChRadarChart;->setting:Lcom/metamoji/ch/radar/IChRadarChartSetting;

    .line 17
    sget-object p1, Lcom/metamoji/ch/ChSize;->Companion:Lcom/metamoji/ch/ChSize$Companion;

    invoke-virtual {p1}, Lcom/metamoji/ch/ChSize$Companion;->getZero()Lcom/metamoji/ch/ChSize;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ch/radar/ChRadarChart;->chartSize:Lcom/metamoji/ch/ChSize;

    .line 20
    new-instance p1, Lcom/metamoji/ch/ChNullDataSource;

    invoke-direct {p1}, Lcom/metamoji/ch/ChNullDataSource;-><init>()V

    check-cast p1, Lcom/metamoji/ch/IChDataSource;

    iput-object p1, p0, Lcom/metamoji/ch/radar/ChRadarChart;->dataSource:Lcom/metamoji/ch/IChDataSource;

    .line 23
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ch/radar/ChRadarChart;->legendItems:Ljava/util/List;

    .line 26
    new-instance p1, Lcom/metamoji/df/sprite/Sprite;

    invoke-direct {p1}, Lcom/metamoji/df/sprite/Sprite;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ch/radar/ChRadarChart;->sprite:Lcom/metamoji/df/sprite/Sprite;

    return-void
.end method

.method private static final update$drawCategoryLabel(Lcom/metamoji/ch/ChPoint;Lcom/metamoji/df/sprite/Graphics;Lcom/metamoji/ch/radar/ChRadarChart;ILjava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ch/ChPoint;",
            "Lcom/metamoji/df/sprite/Graphics;",
            "Lcom/metamoji/ch/radar/ChRadarChart;",
            "I",
            "Ljava/util/List<",
            "Lcom/metamoji/ch/internal/ChStringWithSize;",
            ">;",
            "Ljava/util/List<",
            "Lcom/metamoji/ch/ChPoint;",
            ">;)V"
        }
    .end annotation

    .line 162
    new-instance v0, Lcom/metamoji/ch/internal/transformer/ChCompositeTransformer;

    .line 163
    new-instance v1, Lcom/metamoji/ch/internal/transformer/ChOffsetTransformer;

    invoke-virtual {p0}, Lcom/metamoji/ch/ChPoint;->getX()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/metamoji/ch/ChPoint;->getY()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/metamoji/ch/internal/transformer/ChOffsetTransformer;-><init>(DD)V

    .line 162
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/metamoji/ch/internal/transformer/ChCompositeTransformer;-><init>(Ljava/util/List;)V

    .line 166
    new-instance p0, Lcom/metamoji/ch/internal/ChCleanGraphics;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/metamoji/ch/internal/ChCleanGraphics;-><init>(Lcom/metamoji/df/sprite/Graphics;)V

    check-cast p0, Ljava/io/Closeable;

    :try_start_0
    move-object v1, p0

    check-cast v1, Lcom/metamoji/ch/internal/ChCleanGraphics;

    .line 167
    new-instance v1, Lcom/metamoji/df/sprite/PaintSolid;

    iget-object v2, p2, Lcom/metamoji/ch/radar/ChRadarChart;->setting:Lcom/metamoji/ch/radar/IChRadarChartSetting;

    invoke-interface {v2}, Lcom/metamoji/ch/radar/IChRadarChartSetting;->getCategoryScaleGrid()Lcom/metamoji/ch/IChScaleGridSetting;

    move-result-object v2

    invoke-interface {v2}, Lcom/metamoji/ch/IChScaleGridSetting;->getLabel()Lcom/metamoji/ch/IChLabelSetting;

    move-result-object v2

    invoke-interface {v2}, Lcom/metamoji/ch/IChLabelSetting;->getColor()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    check-cast v1, Lcom/metamoji/df/sprite/Paint;

    invoke-virtual {p1, v1}, Lcom/metamoji/df/sprite/Graphics;->setTextPaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 168
    iget-object v1, p2, Lcom/metamoji/ch/radar/ChRadarChart;->setting:Lcom/metamoji/ch/radar/IChRadarChartSetting;

    invoke-interface {v1}, Lcom/metamoji/ch/radar/IChRadarChartSetting;->getCategoryScaleGrid()Lcom/metamoji/ch/IChScaleGridSetting;

    move-result-object v1

    invoke-interface {v1}, Lcom/metamoji/ch/IChScaleGridSetting;->getLabel()Lcom/metamoji/ch/IChLabelSetting;

    move-result-object v1

    invoke-interface {v1}, Lcom/metamoji/ch/IChLabelSetting;->getFontName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/metamoji/df/sprite/Graphics;->setFontName(Ljava/lang/String;)V

    .line 169
    iget-object p2, p2, Lcom/metamoji/ch/radar/ChRadarChart;->setting:Lcom/metamoji/ch/radar/IChRadarChartSetting;

    invoke-interface {p2}, Lcom/metamoji/ch/radar/IChRadarChartSetting;->getCategoryScaleGrid()Lcom/metamoji/ch/IChScaleGridSetting;

    move-result-object p2

    invoke-interface {p2}, Lcom/metamoji/ch/IChScaleGridSetting;->getLabel()Lcom/metamoji/ch/IChLabelSetting;

    move-result-object p2

    invoke-interface {p2}, Lcom/metamoji/ch/IChLabelSetting;->getFontSize()D

    move-result-wide v1

    double-to-float p2, v1

    invoke-virtual {p1, p2}, Lcom/metamoji/df/sprite/Graphics;->setFontSize(F)V

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p3, :cond_0

    .line 173
    invoke-interface {p4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ch/internal/ChStringWithSize;

    .line 174
    invoke-interface {p5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ch/ChPoint;

    .line 175
    invoke-virtual {v1}, Lcom/metamoji/ch/internal/ChStringWithSize;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2}, Lcom/metamoji/ch/internal/transformer/ChCompositeTransformer;->point(Lcom/metamoji/ch/ChPoint;)Lcom/metamoji/ch/ChPoint;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/metamoji/ch/ChPointKt;->drawString(Lcom/metamoji/df/sprite/Graphics;Ljava/lang/String;Lcom/metamoji/ch/ChPoint;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 177
    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 166
    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private static final update$drawCategoryScale(Lcom/metamoji/ch/ChPoint;Lcom/metamoji/df/sprite/Graphics;Lcom/metamoji/ch/radar/ChRadarChart;ILkotlin/jvm/internal/Ref$DoubleRef;)V
    .locals 10

    .line 182
    new-instance v0, Lcom/metamoji/ch/internal/transformer/ChCompositeTransformer;

    .line 183
    new-instance v1, Lcom/metamoji/ch/internal/transformer/ChOffsetTransformer;

    invoke-virtual {p0}, Lcom/metamoji/ch/ChPoint;->getX()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/metamoji/ch/ChPoint;->getY()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/metamoji/ch/internal/transformer/ChOffsetTransformer;-><init>(DD)V

    .line 182
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/metamoji/ch/internal/transformer/ChCompositeTransformer;-><init>(Ljava/util/List;)V

    .line 186
    new-instance p0, Lcom/metamoji/ch/internal/ChCleanGraphics;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/metamoji/ch/internal/ChCleanGraphics;-><init>(Lcom/metamoji/df/sprite/Graphics;)V

    check-cast p0, Ljava/io/Closeable;

    :try_start_0
    move-object v1, p0

    check-cast v1, Lcom/metamoji/ch/internal/ChCleanGraphics;

    .line 187
    iget-object v1, p2, Lcom/metamoji/ch/radar/ChRadarChart;->setting:Lcom/metamoji/ch/radar/IChRadarChartSetting;

    invoke-interface {v1}, Lcom/metamoji/ch/radar/IChRadarChartSetting;->getCategoryScaleGrid()Lcom/metamoji/ch/IChScaleGridSetting;

    move-result-object v1

    invoke-interface {v1}, Lcom/metamoji/ch/IChScaleGridSetting;->getLineWidth()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {p1, v1}, Lcom/metamoji/df/sprite/Graphics;->setLineWidth(F)V

    .line 188
    new-instance v1, Lcom/metamoji/df/sprite/PaintSolid;

    iget-object p2, p2, Lcom/metamoji/ch/radar/ChRadarChart;->setting:Lcom/metamoji/ch/radar/IChRadarChartSetting;

    invoke-interface {p2}, Lcom/metamoji/ch/radar/IChRadarChartSetting;->getCategoryScaleGrid()Lcom/metamoji/ch/IChScaleGridSetting;

    move-result-object p2

    invoke-interface {p2}, Lcom/metamoji/ch/IChScaleGridSetting;->getLineColor()I

    move-result p2

    invoke-direct {v1, p2}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    check-cast v1, Lcom/metamoji/df/sprite/Paint;

    invoke-virtual {p1, v1}, Lcom/metamoji/df/sprite/Graphics;->setLinePaint(Lcom/metamoji/df/sprite/Paint;)V

    const-wide v1, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v3, p3

    div-double/2addr v1, v3

    if-ltz p3, :cond_0

    const/4 p2, 0x0

    .line 193
    :goto_0
    new-instance v3, Lcom/metamoji/ch/ChPoint;

    iget-wide v4, p4, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    int-to-double v6, p2

    mul-double/2addr v6, v1

    const-wide v8, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v4, v8

    iget-wide v8, p4, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v8, v6

    invoke-direct {v3, v4, v5, v8, v9}, Lcom/metamoji/ch/ChPoint;-><init>(DD)V

    .line 194
    new-instance v4, Lcom/metamoji/ch/ChPoint;

    const-wide/16 v5, 0x0

    invoke-direct {v4, v5, v6, v5, v6}, Lcom/metamoji/ch/ChPoint;-><init>(DD)V

    invoke-virtual {v0, v4}, Lcom/metamoji/ch/internal/transformer/ChCompositeTransformer;->point(Lcom/metamoji/ch/ChPoint;)Lcom/metamoji/ch/ChPoint;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/metamoji/ch/ChPointKt;->moveTo(Lcom/metamoji/df/sprite/Graphics;Lcom/metamoji/ch/ChPoint;)V

    .line 195
    new-instance v4, Lcom/metamoji/ch/ChPoint;

    invoke-virtual {v3}, Lcom/metamoji/ch/ChPoint;->getX()D

    move-result-wide v5

    invoke-virtual {v3}, Lcom/metamoji/ch/ChPoint;->getY()D

    move-result-wide v7

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/metamoji/ch/ChPoint;-><init>(DD)V

    invoke-virtual {v0, v4}, Lcom/metamoji/ch/internal/transformer/ChCompositeTransformer;->point(Lcom/metamoji/ch/ChPoint;)Lcom/metamoji/ch/ChPoint;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/metamoji/ch/ChPointKt;->lineTo(Lcom/metamoji/df/sprite/Graphics;Lcom/metamoji/ch/ChPoint;)V

    .line 196
    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Graphics;->draw()V

    if-eq p2, p3, :cond_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 198
    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 186
    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private static final update$drawDataPolygon(Lcom/metamoji/ch/ChPoint;ILcom/metamoji/df/sprite/Graphics;ILcom/metamoji/ch/radar/ChRadarChart;Lcom/metamoji/ch/IChDataSource;Lkotlin/jvm/internal/Ref$DoubleRef;Lcom/metamoji/ch/IChLinearScaleAxisSetting;)V
    .locals 25

    move/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    .line 228
    new-instance v8, Lcom/metamoji/ch/internal/transformer/ChCompositeTransformer;

    .line 229
    new-instance v4, Lcom/metamoji/ch/internal/transformer/ChOffsetTransformer;

    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/ch/ChPoint;->getX()D

    move-result-wide v9

    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/ch/ChPoint;->getY()D

    move-result-wide v11

    invoke-direct {v4, v9, v10, v11, v12}, Lcom/metamoji/ch/internal/transformer/ChOffsetTransformer;-><init>(DD)V

    .line 228
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v8, v4}, Lcom/metamoji/ch/internal/transformer/ChCompositeTransformer;-><init>(Ljava/util/List;)V

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v9, v0

    div-double/2addr v4, v9

    .line 232
    new-instance v9, Lcom/metamoji/ch/internal/ChCleanGraphics;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v9, v1}, Lcom/metamoji/ch/internal/ChCleanGraphics;-><init>(Lcom/metamoji/df/sprite/Graphics;)V

    check-cast v9, Ljava/io/Closeable;

    :try_start_0
    move-object v10, v9

    check-cast v10, Lcom/metamoji/ch/internal/ChCleanGraphics;

    .line 233
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    check-cast v10, Ljava/util/List;

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v6, :cond_5

    .line 236
    sget-object v13, Lcom/metamoji/df/sprite/LineJoin;->BEVEL:Lcom/metamoji/df/sprite/LineJoin;

    invoke-virtual {v1, v13}, Lcom/metamoji/df/sprite/Graphics;->setLineJoin(Lcom/metamoji/df/sprite/LineJoin;)V

    .line 237
    iget-object v13, v7, Lcom/metamoji/ch/radar/ChRadarChart;->setting:Lcom/metamoji/ch/radar/IChRadarChartSetting;

    invoke-interface {v13, v12}, Lcom/metamoji/ch/radar/IChRadarChartSetting;->lineWidth(I)D

    move-result-wide v13

    double-to-float v13, v13

    invoke-virtual {v1, v13}, Lcom/metamoji/df/sprite/Graphics;->setLineWidth(F)V

    .line 238
    new-instance v13, Lcom/metamoji/df/sprite/PaintSolid;

    iget-object v14, v7, Lcom/metamoji/ch/radar/ChRadarChart;->setting:Lcom/metamoji/ch/radar/IChRadarChartSetting;

    invoke-interface {v14, v12}, Lcom/metamoji/ch/radar/IChRadarChartSetting;->lineColor(I)I

    move-result v14

    invoke-direct {v13, v14}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    check-cast v13, Lcom/metamoji/df/sprite/Paint;

    invoke-virtual {v1, v13}, Lcom/metamoji/df/sprite/Graphics;->setLinePaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 239
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    check-cast v13, Ljava/util/List;

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v0, :cond_1

    move-object/from16 v15, p5

    .line 241
    invoke-interface {v15, v14, v12}, Lcom/metamoji/ch/IChDataSource;->data(II)Ljava/lang/Double;

    move-result-object v16

    if-eqz v16, :cond_0

    .line 242
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->isNaN(D)Z

    move-result v17

    if-nez v17, :cond_0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v17

    if-nez v17, :cond_0

    .line 243
    new-instance v11, Lcom/metamoji/ch/ChPoint;

    move-wide/from16 v17, v4

    .line 244
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/metamoji/ch/radar/ChRadarChart;->update$positionOf(Lkotlin/jvm/internal/Ref$DoubleRef;Lcom/metamoji/ch/IChLinearScaleAxisSetting;D)D

    move-result-wide v4

    move-wide/from16 v19, v4

    int-to-double v4, v14

    mul-double v4, v4, v17

    const-wide v21, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double v4, v4, v21

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v21

    move-wide/from16 v23, v4

    mul-double v4, v19, v21

    move/from16 v19, v14

    .line 245
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    invoke-static {v2, v3, v14, v15}, Lcom/metamoji/ch/radar/ChRadarChart;->update$positionOf(Lkotlin/jvm/internal/Ref$DoubleRef;Lcom/metamoji/ch/IChLinearScaleAxisSetting;D)D

    move-result-wide v14

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    mul-double v14, v14, v20

    .line 243
    invoke-direct {v11, v4, v5, v14, v15}, Lcom/metamoji/ch/ChPoint;-><init>(DD)V

    .line 247
    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    move-wide/from16 v17, v4

    move/from16 v19, v14

    :goto_2
    add-int/lit8 v14, v19, 0x1

    move-wide/from16 v4, v17

    goto :goto_1

    :cond_1
    move-wide/from16 v17, v4

    .line 251
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    const/4 v4, 0x0

    .line 252
    invoke-interface {v13, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v13, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/metamoji/ch/ChPoint;

    if-eqz v5, :cond_2

    .line 256
    invoke-virtual {v8, v11}, Lcom/metamoji/ch/internal/transformer/ChCompositeTransformer;->point(Lcom/metamoji/ch/ChPoint;)Lcom/metamoji/ch/ChPoint;

    move-result-object v11

    invoke-static {v1, v11}, Lcom/metamoji/ch/ChPointKt;->lineTo(Lcom/metamoji/df/sprite/Graphics;Lcom/metamoji/ch/ChPoint;)V

    goto :goto_3

    .line 258
    :cond_2
    invoke-virtual {v8, v11}, Lcom/metamoji/ch/internal/transformer/ChCompositeTransformer;->point(Lcom/metamoji/ch/ChPoint;)Lcom/metamoji/ch/ChPoint;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/metamoji/ch/ChPointKt;->moveTo(Lcom/metamoji/df/sprite/Graphics;Lcom/metamoji/ch/ChPoint;)V

    const/4 v5, 0x1

    goto :goto_3

    .line 262
    :cond_3
    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Graphics;->draw()V

    const/4 v4, 0x0

    .line 263
    invoke-interface {v13, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 264
    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    :goto_4
    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v4, v17

    goto/16 :goto_0

    :cond_5
    const/4 v4, 0x0

    move v11, v4

    :goto_5
    if-ge v11, v6, :cond_7

    .line 268
    iget-object v0, v7, Lcom/metamoji/ch/radar/ChRadarChart;->setting:Lcom/metamoji/ch/radar/IChRadarChartSetting;

    invoke-interface {v0, v11}, Lcom/metamoji/ch/radar/IChRadarChartSetting;->markerType(I)Lcom/metamoji/ch/ChMarker;

    move-result-object v0

    .line 269
    sget-object v2, Lcom/metamoji/ch/ChMarker;->NONE:Lcom/metamoji/ch/ChMarker;

    if-eq v0, v2, :cond_6

    .line 270
    iget-object v2, v7, Lcom/metamoji/ch/radar/ChRadarChart;->setting:Lcom/metamoji/ch/radar/IChRadarChartSetting;

    invoke-interface {v2, v11}, Lcom/metamoji/ch/radar/IChRadarChartSetting;->markerSize(I)D

    move-result-wide v12

    .line 271
    iget-object v2, v7, Lcom/metamoji/ch/radar/ChRadarChart;->setting:Lcom/metamoji/ch/radar/IChRadarChartSetting;

    invoke-interface {v2, v11}, Lcom/metamoji/ch/radar/IChRadarChartSetting;->markerColor(I)I

    move-result v5

    .line 272
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_6
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ch/ChPoint;

    .line 273
    invoke-virtual {v8, v2}, Lcom/metamoji/ch/internal/transformer/ChCompositeTransformer;->point(Lcom/metamoji/ch/ChPoint;)Lcom/metamoji/ch/ChPoint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/ch/ChPoint;->getX()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-virtual {v8, v2}, Lcom/metamoji/ch/internal/transformer/ChCompositeTransformer;->point(Lcom/metamoji/ch/ChPoint;)Lcom/metamoji/ch/ChPoint;

    move-result-object v2

    move-object/from16 p0, v0

    invoke-virtual {v2}, Lcom/metamoji/ch/ChPoint;->getY()D

    move-result-wide v0

    double-to-float v0, v0

    double-to-float v4, v12

    move-object/from16 v1, p2

    move v2, v3

    move v3, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/ch/ChMarker;->draw(Lcom/metamoji/df/sprite/Graphics;FFFI)V

    move-object/from16 v1, p2

    goto :goto_6

    :cond_6
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p2

    goto :goto_5

    .line 277
    :cond_7
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 232
    invoke-static {v9, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

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

    invoke-static {v9, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static final update$drawValueScale(Lcom/metamoji/ch/ChPoint;Lcom/metamoji/df/sprite/Graphics;Lcom/metamoji/ch/radar/ChRadarChart;Lcom/metamoji/ch/IChLinearScaleAxisSetting;Ljava/util/List;Lkotlin/jvm/internal/Ref$DoubleRef;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ch/ChPoint;",
            "Lcom/metamoji/df/sprite/Graphics;",
            "Lcom/metamoji/ch/radar/ChRadarChart;",
            "Lcom/metamoji/ch/IChLinearScaleAxisSetting;",
            "Ljava/util/List<",
            "Lcom/metamoji/ch/internal/ChStringWithSize;",
            ">;",
            "Lkotlin/jvm/internal/Ref$DoubleRef;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    .line 203
    new-instance v4, Lcom/metamoji/ch/internal/transformer/ChCompositeTransformer;

    .line 204
    new-instance v5, Lcom/metamoji/ch/internal/transformer/ChOffsetTransformer;

    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/ch/ChPoint;->getX()D

    move-result-wide v6

    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/ch/ChPoint;->getY()D

    move-result-wide v8

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/metamoji/ch/internal/transformer/ChOffsetTransformer;-><init>(DD)V

    .line 203
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/metamoji/ch/internal/transformer/ChCompositeTransformer;-><init>(Ljava/util/List;)V

    .line 207
    new-instance v5, Lcom/metamoji/ch/internal/ChCleanGraphics;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v5, v0}, Lcom/metamoji/ch/internal/ChCleanGraphics;-><init>(Lcom/metamoji/df/sprite/Graphics;)V

    check-cast v5, Ljava/io/Closeable;

    :try_start_0
    move-object v6, v5

    check-cast v6, Lcom/metamoji/ch/internal/ChCleanGraphics;

    .line 208
    iget-object v6, v1, Lcom/metamoji/ch/radar/ChRadarChart;->setting:Lcom/metamoji/ch/radar/IChRadarChartSetting;

    invoke-interface {v6}, Lcom/metamoji/ch/radar/IChRadarChartSetting;->getValueScaleGrid()Lcom/metamoji/ch/IChScaleGridSetting;

    move-result-object v6

    invoke-interface {v6}, Lcom/metamoji/ch/IChScaleGridSetting;->getLineWidth()D

    move-result-wide v6

    double-to-float v6, v6

    invoke-virtual {v0, v6}, Lcom/metamoji/df/sprite/Graphics;->setLineWidth(F)V

    .line 209
    new-instance v6, Lcom/metamoji/df/sprite/PaintSolid;

    iget-object v7, v1, Lcom/metamoji/ch/radar/ChRadarChart;->setting:Lcom/metamoji/ch/radar/IChRadarChartSetting;

    invoke-interface {v7}, Lcom/metamoji/ch/radar/IChRadarChartSetting;->getValueScaleGrid()Lcom/metamoji/ch/IChScaleGridSetting;

    move-result-object v7

    invoke-interface {v7}, Lcom/metamoji/ch/IChScaleGridSetting;->getLineColor()I

    move-result v7

    invoke-direct {v6, v7}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    check-cast v6, Lcom/metamoji/df/sprite/Paint;

    invoke-virtual {v0, v6}, Lcom/metamoji/df/sprite/Graphics;->setLinePaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 210
    new-instance v6, Lcom/metamoji/df/sprite/PaintSolid;

    iget-object v7, v1, Lcom/metamoji/ch/radar/ChRadarChart;->setting:Lcom/metamoji/ch/radar/IChRadarChartSetting;

    invoke-interface {v7}, Lcom/metamoji/ch/radar/IChRadarChartSetting;->getValueScaleGrid()Lcom/metamoji/ch/IChScaleGridSetting;

    move-result-object v7

    invoke-interface {v7}, Lcom/metamoji/ch/IChScaleGridSetting;->getLabel()Lcom/metamoji/ch/IChLabelSetting;

    move-result-object v7

    invoke-interface {v7}, Lcom/metamoji/ch/IChLabelSetting;->getColor()I

    move-result v7

    invoke-direct {v6, v7}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    check-cast v6, Lcom/metamoji/df/sprite/Paint;

    invoke-virtual {v0, v6}, Lcom/metamoji/df/sprite/Graphics;->setTextPaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 211
    iget-object v6, v1, Lcom/metamoji/ch/radar/ChRadarChart;->setting:Lcom/metamoji/ch/radar/IChRadarChartSetting;

    invoke-interface {v6}, Lcom/metamoji/ch/radar/IChRadarChartSetting;->getValueScaleGrid()Lcom/metamoji/ch/IChScaleGridSetting;

    move-result-object v6

    invoke-interface {v6}, Lcom/metamoji/ch/IChScaleGridSetting;->getLabel()Lcom/metamoji/ch/IChLabelSetting;

    move-result-object v6

    invoke-interface {v6}, Lcom/metamoji/ch/IChLabelSetting;->getFontName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/metamoji/df/sprite/Graphics;->setFontName(Ljava/lang/String;)V

    .line 212
    iget-object v1, v1, Lcom/metamoji/ch/radar/ChRadarChart;->setting:Lcom/metamoji/ch/radar/IChRadarChartSetting;

    invoke-interface {v1}, Lcom/metamoji/ch/radar/IChRadarChartSetting;->getValueScaleGrid()Lcom/metamoji/ch/IChScaleGridSetting;

    move-result-object v1

    invoke-interface {v1}, Lcom/metamoji/ch/IChScaleGridSetting;->getLabel()Lcom/metamoji/ch/IChLabelSetting;

    move-result-object v1

    invoke-interface {v1}, Lcom/metamoji/ch/IChLabelSetting;->getFontSize()D

    move-result-wide v6

    double-to-float v1, v6

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Graphics;->setFontSize(F)V

    .line 215
    invoke-interface {v2}, Lcom/metamoji/ch/IChLinearScaleAxisSetting;->getMaxValue()D

    move-result-wide v6

    invoke-interface {v2}, Lcom/metamoji/ch/IChLinearScaleAxisSetting;->getMinValue()D

    move-result-wide v8

    sub-double/2addr v6, v8

    invoke-interface {v2}, Lcom/metamoji/ch/IChLinearScaleAxisSetting;->getTickSpacing()D

    move-result-wide v8

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v1, v6

    if-ltz v1, :cond_0

    const/4 v6, 0x0

    .line 218
    :goto_0
    invoke-interface {v2}, Lcom/metamoji/ch/IChLinearScaleAxisSetting;->getMinValue()D

    move-result-wide v7

    int-to-double v9, v6

    invoke-interface {v2}, Lcom/metamoji/ch/IChLinearScaleAxisSetting;->getTickSpacing()D

    move-result-wide v11

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    .line 219
    new-instance v9, Lcom/metamoji/ch/ChPoint;

    const-wide/16 v10, 0x0

    invoke-direct {v9, v10, v11, v10, v11}, Lcom/metamoji/ch/ChPoint;-><init>(DD)V

    invoke-virtual {v4, v9}, Lcom/metamoji/ch/internal/transformer/ChCompositeTransformer;->point(Lcom/metamoji/ch/ChPoint;)Lcom/metamoji/ch/ChPoint;

    move-result-object v9

    invoke-static {v3, v2, v7, v8}, Lcom/metamoji/ch/radar/ChRadarChart;->update$positionOf(Lkotlin/jvm/internal/Ref$DoubleRef;Lcom/metamoji/ch/IChLinearScaleAxisSetting;D)D

    move-result-wide v10

    invoke-static {v0, v9, v10, v11}, Lcom/metamoji/ch/ChPointKt;->drawCircle(Lcom/metamoji/df/sprite/Graphics;Lcom/metamoji/ch/ChPoint;D)V

    move-object/from16 v9, p4

    .line 220
    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/metamoji/ch/internal/ChStringWithSize;

    .line 221
    invoke-virtual {v10}, Lcom/metamoji/ch/internal/ChStringWithSize;->getString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/metamoji/ch/ChPoint;

    invoke-virtual {v10}, Lcom/metamoji/ch/internal/ChStringWithSize;->getSize()Lcom/metamoji/ch/ChSize;

    move-result-object v13

    invoke-virtual {v13}, Lcom/metamoji/ch/ChSize;->getWidth()D

    move-result-wide v13

    neg-double v13, v13

    invoke-static {v3, v2, v7, v8}, Lcom/metamoji/ch/radar/ChRadarChart;->update$positionOf(Lkotlin/jvm/internal/Ref$DoubleRef;Lcom/metamoji/ch/IChLinearScaleAxisSetting;D)D

    move-result-wide v7

    neg-double v7, v7

    invoke-virtual {v10}, Lcom/metamoji/ch/internal/ChStringWithSize;->getSize()Lcom/metamoji/ch/ChSize;

    move-result-object v10

    invoke-virtual {v10}, Lcom/metamoji/ch/ChSize;->getHeight()D

    move-result-wide v15

    sub-double/2addr v7, v15

    invoke-direct {v12, v13, v14, v7, v8}, Lcom/metamoji/ch/ChPoint;-><init>(DD)V

    invoke-virtual {v4, v12}, Lcom/metamoji/ch/internal/transformer/ChCompositeTransformer;->point(Lcom/metamoji/ch/ChPoint;)Lcom/metamoji/ch/ChPoint;

    move-result-object v7

    invoke-static {v0, v11, v7}, Lcom/metamoji/ch/ChPointKt;->drawString(Lcom/metamoji/df/sprite/Graphics;Ljava/lang/String;Lcom/metamoji/ch/ChPoint;)V

    if-eq v6, v1, :cond_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 223
    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 207
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

.method private static final update$makeCategoryTickLabels(Lcom/metamoji/df/sprite/Graphics;Lcom/metamoji/ch/radar/ChRadarChart;Ljava/util/List;ILcom/metamoji/ch/IChDataSource;DLjava/util/List;DLkotlin/jvm/internal/Ref$DoubleRef;Lkotlin/jvm/internal/Ref$DoubleRef;)V
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/df/sprite/Graphics;",
            "Lcom/metamoji/ch/radar/ChRadarChart;",
            "Ljava/util/List<",
            "Lcom/metamoji/ch/internal/ChStringWithSize;",
            ">;I",
            "Lcom/metamoji/ch/IChDataSource;",
            "D",
            "Ljava/util/List<",
            "Lcom/metamoji/ch/ChPoint;",
            ">;D",
            "Lkotlin/jvm/internal/Ref$DoubleRef;",
            "Lkotlin/jvm/internal/Ref$DoubleRef;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p10

    move-object/from16 v5, p11

    .line 81
    new-instance v6, Lcom/metamoji/ch/internal/ChCleanGraphics;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v6, v0}, Lcom/metamoji/ch/internal/ChCleanGraphics;-><init>(Lcom/metamoji/df/sprite/Graphics;)V

    check-cast v6, Ljava/io/Closeable;

    :try_start_0
    move-object v7, v6

    check-cast v7, Lcom/metamoji/ch/internal/ChCleanGraphics;

    .line 82
    new-instance v7, Lcom/metamoji/df/sprite/PaintSolid;

    iget-object v8, v1, Lcom/metamoji/ch/radar/ChRadarChart;->setting:Lcom/metamoji/ch/radar/IChRadarChartSetting;

    invoke-interface {v8}, Lcom/metamoji/ch/radar/IChRadarChartSetting;->getCategoryScaleGrid()Lcom/metamoji/ch/IChScaleGridSetting;

    move-result-object v8

    invoke-interface {v8}, Lcom/metamoji/ch/IChScaleGridSetting;->getLabel()Lcom/metamoji/ch/IChLabelSetting;

    move-result-object v8

    invoke-interface {v8}, Lcom/metamoji/ch/IChLabelSetting;->getColor()I

    move-result v8

    invoke-direct {v7, v8}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    check-cast v7, Lcom/metamoji/df/sprite/Paint;

    invoke-virtual {v0, v7}, Lcom/metamoji/df/sprite/Graphics;->setTextPaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 83
    iget-object v7, v1, Lcom/metamoji/ch/radar/ChRadarChart;->setting:Lcom/metamoji/ch/radar/IChRadarChartSetting;

    invoke-interface {v7}, Lcom/metamoji/ch/radar/IChRadarChartSetting;->getCategoryScaleGrid()Lcom/metamoji/ch/IChScaleGridSetting;

    move-result-object v7

    invoke-interface {v7}, Lcom/metamoji/ch/IChScaleGridSetting;->getLabel()Lcom/metamoji/ch/IChLabelSetting;

    move-result-object v7

    invoke-interface {v7}, Lcom/metamoji/ch/IChLabelSetting;->getFontName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/metamoji/df/sprite/Graphics;->setFontName(Ljava/lang/String;)V

    .line 84
    iget-object v7, v1, Lcom/metamoji/ch/radar/ChRadarChart;->setting:Lcom/metamoji/ch/radar/IChRadarChartSetting;

    invoke-interface {v7}, Lcom/metamoji/ch/radar/IChRadarChartSetting;->getCategoryScaleGrid()Lcom/metamoji/ch/IChScaleGridSetting;

    move-result-object v7

    invoke-interface {v7}, Lcom/metamoji/ch/IChScaleGridSetting;->getLabel()Lcom/metamoji/ch/IChLabelSetting;

    move-result-object v7

    invoke-interface {v7}, Lcom/metamoji/ch/IChLabelSetting;->getFontSize()D

    move-result-wide v7

    double-to-float v7, v7

    invoke-virtual {v0, v7}, Lcom/metamoji/df/sprite/Graphics;->setFontSize(F)V

    .line 85
    invoke-interface {v2}, Ljava/util/List;->clear()V

    const/4 v8, 0x0

    :goto_0
    const/4 v9, 0x4

    if-ge v8, v3, :cond_1

    move-object/from16 v10, p4

    .line 89
    invoke-interface {v10, v8}, Lcom/metamoji/ch/IChDataSource;->categoryTitle(I)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_0

    const-string v11, ""

    .line 90
    :cond_0
    invoke-virtual {v0, v11}, Lcom/metamoji/df/sprite/Graphics;->rectOfString(Ljava/lang/String;)Landroid/graphics/RectF;

    move-result-object v12

    .line 91
    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v12}, Lcom/metamoji/ch/ChRectKt;->getChSize(Landroid/graphics/RectF;)Lcom/metamoji/ch/ChSize;

    move-result-object v12

    .line 93
    new-instance v13, Lcom/metamoji/ch/internal/ChStringWithSize;

    invoke-direct {v13, v11, v12}, Lcom/metamoji/ch/internal/ChStringWithSize;-><init>(Ljava/lang/String;Lcom/metamoji/ch/ChSize;)V

    .line 94
    sget-object v11, Lcom/metamoji/ch/internal/ChUtils;->INSTANCE:Lcom/metamoji/ch/internal/ChUtils;

    invoke-virtual {v13}, Lcom/metamoji/ch/internal/ChStringWithSize;->getString()Ljava/lang/String;

    move-result-object v12

    int-to-double v13, v9

    div-double v13, p5, v13

    invoke-virtual {v11, v0, v12, v13, v14}, Lcom/metamoji/ch/internal/ChUtils;->truncateTail(Lcom/metamoji/df/sprite/Graphics;Ljava/lang/String;D)Lcom/metamoji/ch/internal/ChStringWithSize;

    move-result-object v9

    .line 95
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    const-wide v10, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v12, v3

    div-double/2addr v10, v12

    .line 100
    iget-object v0, v1, Lcom/metamoji/ch/radar/ChRadarChart;->setting:Lcom/metamoji/ch/radar/IChRadarChartSetting;

    invoke-interface {v0}, Lcom/metamoji/ch/radar/IChRadarChartSetting;->getCategoryScaleGrid()Lcom/metamoji/ch/IChScaleGridSetting;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/ch/IChScaleGridSetting;->getLabelMargin()D

    move-result-wide v0

    .line 101
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->clear()V

    int-to-double v8, v9

    div-double v8, p5, v8

    const/4 v12, 0x3

    int-to-double v12, v12

    div-double v12, p8, v12

    .line 102
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    const/4 v12, 0x0

    :goto_1
    const/4 v13, 0x2

    if-ge v12, v3, :cond_2

    .line 104
    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/metamoji/ch/internal/ChStringWithSize;

    const-wide p0, 0x3ff921fb54442d18L    # 1.5707963267948966

    int-to-double v14, v12

    mul-double/2addr v14, v10

    sub-double v14, v14, p0

    .line 106
    invoke-virtual/range {v16 .. v16}, Lcom/metamoji/ch/internal/ChStringWithSize;->getSize()Lcom/metamoji/ch/ChSize;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/metamoji/ch/ChSize;->getWidth()D

    move-result-wide v17

    sub-double v17, p5, v17

    move-wide/from16 v19, v8

    int-to-double v7, v13

    div-double v17, v17, v7

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->abs(D)D

    move-result-wide v21

    move-wide/from16 v23, v0

    div-double v0, v17, v21

    .line 107
    invoke-virtual/range {v16 .. v16}, Lcom/metamoji/ch/internal/ChStringWithSize;->getSize()Lcom/metamoji/ch/ChSize;

    move-result-object v9

    invoke-virtual {v9}, Lcom/metamoji/ch/ChSize;->getHeight()D

    move-result-wide v16

    sub-double v16, p8, v16

    div-double v16, v16, v7

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    div-double v7, v16, v7

    .line 108
    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    move-wide/from16 v7, v19

    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 109
    iget-wide v13, v4, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    invoke-static {v13, v14, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, v4, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    add-int/lit8 v12, v12, 0x1

    move-wide v8, v7

    move-wide/from16 v0, v23

    goto :goto_1

    :cond_2
    move-wide/from16 v23, v0

    const-wide p0, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 112
    iget-wide v0, v5, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v3, :cond_3

    .line 114
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/metamoji/ch/internal/ChStringWithSize;

    int-to-double v14, v7

    mul-double/2addr v14, v10

    sub-double v14, v14, p0

    .line 116
    new-instance v9, Lcom/metamoji/ch/ChPoint;

    move-wide/from16 p5, v14

    iget-wide v13, v4, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    invoke-static/range {p5 .. p6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double/2addr v13, v15

    iget-wide v2, v4, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    invoke-static/range {p5 .. p6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    mul-double/2addr v2, v15

    invoke-direct {v9, v13, v14, v2, v3}, Lcom/metamoji/ch/ChPoint;-><init>(DD)V

    .line 117
    new-instance v2, Lcom/metamoji/ch/ChPoint;

    invoke-virtual {v9}, Lcom/metamoji/ch/ChPoint;->getX()D

    move-result-wide v12

    invoke-virtual {v8}, Lcom/metamoji/ch/internal/ChStringWithSize;->getSize()Lcom/metamoji/ch/ChSize;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/ch/ChSize;->getWidth()D

    move-result-wide v14

    move/from16 v16, v7

    move-object/from16 p4, v8

    const/4 v3, 0x2

    int-to-double v7, v3

    div-double/2addr v14, v7

    sub-double/2addr v12, v14

    invoke-virtual {v9}, Lcom/metamoji/ch/ChPoint;->getY()D

    move-result-wide v14

    invoke-virtual/range {p4 .. p4}, Lcom/metamoji/ch/internal/ChStringWithSize;->getSize()Lcom/metamoji/ch/ChSize;

    move-result-object v9

    invoke-virtual {v9}, Lcom/metamoji/ch/ChSize;->getHeight()D

    move-result-wide v17

    div-double v17, v17, v7

    sub-double v14, v14, v17

    invoke-direct {v2, v12, v13, v14, v15}, Lcom/metamoji/ch/ChPoint;-><init>(DD)V

    move-object/from16 v7, p7

    .line 118
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    new-instance v25, Lcom/metamoji/ch/ChRect;

    invoke-virtual {v2}, Lcom/metamoji/ch/ChPoint;->getX()D

    move-result-wide v26

    invoke-virtual {v2}, Lcom/metamoji/ch/ChPoint;->getY()D

    move-result-wide v28

    invoke-virtual/range {p4 .. p4}, Lcom/metamoji/ch/internal/ChStringWithSize;->getSize()Lcom/metamoji/ch/ChSize;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/ch/ChSize;->getWidth()D

    move-result-wide v30

    invoke-virtual/range {p4 .. p4}, Lcom/metamoji/ch/internal/ChStringWithSize;->getSize()Lcom/metamoji/ch/ChSize;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/ch/ChSize;->getHeight()D

    move-result-wide v32

    invoke-direct/range {v25 .. v33}, Lcom/metamoji/ch/ChRect;-><init>(DDDD)V

    .line 121
    invoke-virtual/range {v25 .. v25}, Lcom/metamoji/ch/ChRect;->getMinX()D

    move-result-wide v8

    invoke-virtual/range {v25 .. v25}, Lcom/metamoji/ch/ChRect;->getMinX()D

    move-result-wide v12

    mul-double/2addr v8, v12

    invoke-virtual/range {v25 .. v25}, Lcom/metamoji/ch/ChRect;->getMinY()D

    move-result-wide v12

    invoke-virtual/range {v25 .. v25}, Lcom/metamoji/ch/ChRect;->getMinY()D

    move-result-wide v14

    mul-double/2addr v12, v14

    add-double/2addr v8, v12

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 122
    invoke-virtual/range {v25 .. v25}, Lcom/metamoji/ch/ChRect;->getMinX()D

    move-result-wide v8

    invoke-virtual/range {v25 .. v25}, Lcom/metamoji/ch/ChRect;->getMinX()D

    move-result-wide v12

    mul-double/2addr v8, v12

    invoke-virtual/range {v25 .. v25}, Lcom/metamoji/ch/ChRect;->getMaxY()D

    move-result-wide v12

    invoke-virtual/range {v25 .. v25}, Lcom/metamoji/ch/ChRect;->getMaxY()D

    move-result-wide v14

    mul-double/2addr v12, v14

    add-double/2addr v8, v12

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 123
    invoke-virtual/range {v25 .. v25}, Lcom/metamoji/ch/ChRect;->getMaxX()D

    move-result-wide v8

    invoke-virtual/range {v25 .. v25}, Lcom/metamoji/ch/ChRect;->getMaxX()D

    move-result-wide v12

    mul-double/2addr v8, v12

    invoke-virtual/range {v25 .. v25}, Lcom/metamoji/ch/ChRect;->getMinY()D

    move-result-wide v12

    invoke-virtual/range {v25 .. v25}, Lcom/metamoji/ch/ChRect;->getMinY()D

    move-result-wide v14

    mul-double/2addr v12, v14

    add-double/2addr v8, v12

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 124
    invoke-virtual/range {v25 .. v25}, Lcom/metamoji/ch/ChRect;->getMaxX()D

    move-result-wide v8

    invoke-virtual/range {v25 .. v25}, Lcom/metamoji/ch/ChRect;->getMaxX()D

    move-result-wide v12

    mul-double/2addr v8, v12

    invoke-virtual/range {v25 .. v25}, Lcom/metamoji/ch/ChRect;->getMaxY()D

    move-result-wide v12

    invoke-virtual/range {v25 .. v25}, Lcom/metamoji/ch/ChRect;->getMaxY()D

    move-result-wide v14

    mul-double/2addr v12, v14

    add-double/2addr v8, v12

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    add-int/lit8 v2, v16, 0x1

    move v7, v2

    move v13, v3

    move-object/from16 v2, p2

    move/from16 v3, p3

    goto/16 :goto_2

    :cond_3
    sub-double v0, v0, v23

    .line 126
    iput-wide v0, v5, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    .line 127
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 81
    invoke-static {v6, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

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

    invoke-static {v6, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static final update$makeValueTickLabels(Lcom/metamoji/df/sprite/Graphics;Lcom/metamoji/ch/radar/ChRadarChart;Ljava/util/List;Lcom/metamoji/ch/IChLinearScaleAxisSetting;Lkotlin/jvm/internal/Ref$DoubleRef;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/df/sprite/Graphics;",
            "Lcom/metamoji/ch/radar/ChRadarChart;",
            "Ljava/util/List<",
            "Lcom/metamoji/ch/internal/ChStringWithSize;",
            ">;",
            "Lcom/metamoji/ch/IChLinearScaleAxisSetting;",
            "Lkotlin/jvm/internal/Ref$DoubleRef;",
            ")V"
        }
    .end annotation

    .line 132
    new-instance v0, Lcom/metamoji/ch/internal/ChCleanGraphics;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, p0}, Lcom/metamoji/ch/internal/ChCleanGraphics;-><init>(Lcom/metamoji/df/sprite/Graphics;)V

    check-cast v0, Ljava/io/Closeable;

    :try_start_0
    move-object v1, v0

    check-cast v1, Lcom/metamoji/ch/internal/ChCleanGraphics;

    .line 133
    new-instance v1, Lcom/metamoji/df/sprite/PaintSolid;

    iget-object v2, p1, Lcom/metamoji/ch/radar/ChRadarChart;->setting:Lcom/metamoji/ch/radar/IChRadarChartSetting;

    invoke-interface {v2}, Lcom/metamoji/ch/radar/IChRadarChartSetting;->getValueScaleGrid()Lcom/metamoji/ch/IChScaleGridSetting;

    move-result-object v2

    invoke-interface {v2}, Lcom/metamoji/ch/IChScaleGridSetting;->getLabel()Lcom/metamoji/ch/IChLabelSetting;

    move-result-object v2

    invoke-interface {v2}, Lcom/metamoji/ch/IChLabelSetting;->getColor()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    check-cast v1, Lcom/metamoji/df/sprite/Paint;

    invoke-virtual {p0, v1}, Lcom/metamoji/df/sprite/Graphics;->setTextPaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 134
    iget-object v1, p1, Lcom/metamoji/ch/radar/ChRadarChart;->setting:Lcom/metamoji/ch/radar/IChRadarChartSetting;

    invoke-interface {v1}, Lcom/metamoji/ch/radar/IChRadarChartSetting;->getValueScaleGrid()Lcom/metamoji/ch/IChScaleGridSetting;

    move-result-object v1

    invoke-interface {v1}, Lcom/metamoji/ch/IChScaleGridSetting;->getLabel()Lcom/metamoji/ch/IChLabelSetting;

    move-result-object v1

    invoke-interface {v1}, Lcom/metamoji/ch/IChLabelSetting;->getFontName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/metamoji/df/sprite/Graphics;->setFontName(Ljava/lang/String;)V

    .line 135
    iget-object p1, p1, Lcom/metamoji/ch/radar/ChRadarChart;->setting:Lcom/metamoji/ch/radar/IChRadarChartSetting;

    invoke-interface {p1}, Lcom/metamoji/ch/radar/IChRadarChartSetting;->getValueScaleGrid()Lcom/metamoji/ch/IChScaleGridSetting;

    move-result-object p1

    invoke-interface {p1}, Lcom/metamoji/ch/IChScaleGridSetting;->getLabel()Lcom/metamoji/ch/IChLabelSetting;

    move-result-object p1

    invoke-interface {p1}, Lcom/metamoji/ch/IChLabelSetting;->getFontSize()D

    move-result-wide v1

    double-to-float p1, v1

    invoke-virtual {p0, p1}, Lcom/metamoji/df/sprite/Graphics;->setFontSize(F)V

    .line 136
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 138
    invoke-interface {p3}, Lcom/metamoji/ch/IChLinearScaleAxisSetting;->getMaxValue()D

    move-result-wide v1

    invoke-interface {p3}, Lcom/metamoji/ch/IChLinearScaleAxisSetting;->getMinValue()D

    move-result-wide v3

    sub-double/2addr v1, v3

    invoke-interface {p3}, Lcom/metamoji/ch/IChLinearScaleAxisSetting;->getTickSpacing()D

    move-result-wide v3

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int p1, v1

    .line 139
    new-instance v1, Lcom/metamoji/ch/internal/ChNumberFormatter;

    invoke-direct {v1}, Lcom/metamoji/ch/internal/ChNumberFormatter;-><init>()V

    .line 140
    invoke-interface {p3}, Lcom/metamoji/ch/IChLinearScaleAxisSetting;->getNumDecimal()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/metamoji/ch/internal/ChNumberFormatter;->setFractionDigits(I)V

    if-ltz p1, :cond_1

    const/4 v2, 0x0

    .line 144
    :goto_0
    invoke-interface {p3}, Lcom/metamoji/ch/IChLinearScaleAxisSetting;->getMinValue()D

    move-result-wide v3

    int-to-double v5, v2

    invoke-interface {p3}, Lcom/metamoji/ch/IChLinearScaleAxisSetting;->getTickSpacing()D

    move-result-wide v7

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    .line 146
    invoke-virtual {v1, v3, v4}, Lcom/metamoji/ch/internal/ChNumberFormatter;->stringFrom(D)Ljava/lang/String;

    move-result-object v3

    .line 147
    invoke-virtual {p0, v3}, Lcom/metamoji/df/sprite/Graphics;->rectOfString(Ljava/lang/String;)Landroid/graphics/RectF;

    move-result-object v4

    .line 148
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v4}, Lcom/metamoji/ch/ChRectKt;->getChSize(Landroid/graphics/RectF;)Lcom/metamoji/ch/ChSize;

    move-result-object v4

    .line 149
    new-instance v5, Lcom/metamoji/ch/internal/ChStringWithSize;

    invoke-direct {v5, v3, v4}, Lcom/metamoji/ch/internal/ChStringWithSize;-><init>(Ljava/lang/String;Lcom/metamoji/ch/ChSize;)V

    .line 151
    iget-wide v3, p4, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    invoke-virtual {v5}, Lcom/metamoji/ch/internal/ChStringWithSize;->getSize()Lcom/metamoji/ch/ChSize;

    move-result-object v6

    invoke-virtual {v6}, Lcom/metamoji/ch/ChSize;->getHeight()D

    move-result-wide v6

    cmpg-double v3, v3, v6

    if-gez v3, :cond_0

    .line 152
    invoke-virtual {v5}, Lcom/metamoji/ch/internal/ChStringWithSize;->getSize()Lcom/metamoji/ch/ChSize;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/ch/ChSize;->getHeight()D

    move-result-wide v3

    iput-wide v3, p4, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    .line 154
    :cond_0
    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eq v2, p1, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 156
    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    .line 132
    invoke-static {v0, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {v0, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static final update$positionOf(Lkotlin/jvm/internal/Ref$DoubleRef;Lcom/metamoji/ch/IChLinearScaleAxisSetting;D)D
    .locals 6

    .line 74
    iget-wide v0, p0, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    invoke-interface {p1}, Lcom/metamoji/ch/IChLinearScaleAxisSetting;->getMaxValue()D

    move-result-wide v2

    invoke-interface {p1}, Lcom/metamoji/ch/IChLinearScaleAxisSetting;->getMinValue()D

    move-result-wide v4

    sub-double/2addr v2, v4

    div-double/2addr v0, v2

    .line 75
    invoke-interface {p1}, Lcom/metamoji/ch/IChLinearScaleAxisSetting;->getMinValue()D

    move-result-wide p0

    neg-double p0, p0

    mul-double/2addr p0, v0

    mul-double/2addr p2, v0

    add-double/2addr p0, p2

    return-wide p0
.end method

.method private static final update$updateLegendItems(Lcom/metamoji/ch/radar/ChRadarChart;ILcom/metamoji/ch/IChDataSource;)V
    .locals 19

    move-object/from16 v0, p0

    const/4 v1, 0x0

    move/from16 v2, p1

    .line 59
    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 332
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 333
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

    .line 60
    invoke-interface {v4, v3}, Lcom/metamoji/ch/IChDataSource;->seriesTitle(I)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    const-string v5, ""

    :cond_0
    move-object v8, v5

    .line 61
    new-instance v6, Lcom/metamoji/ch/ChLegend$Item;

    .line 62
    sget-object v5, Lcom/metamoji/ch/ChLegend$Item$Element;->LINE:Lcom/metamoji/ch/ChLegend$Item$Element;

    check-cast v5, Ljava/lang/Enum;

    sget-object v7, Lcom/metamoji/ch/ChLegend$Item$Element;->MARKER:Lcom/metamoji/ch/ChLegend$Item$Element;

    check-cast v7, Ljava/lang/Enum;

    invoke-static {v5, v7}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v7

    const-string v5, "of(...)"

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iget-object v5, v0, Lcom/metamoji/ch/radar/ChRadarChart;->setting:Lcom/metamoji/ch/radar/IChRadarChartSetting;

    invoke-interface {v5, v3}, Lcom/metamoji/ch/radar/IChRadarChartSetting;->lineColor(I)I

    move-result v10

    .line 65
    iget-object v5, v0, Lcom/metamoji/ch/radar/ChRadarChart;->setting:Lcom/metamoji/ch/radar/IChRadarChartSetting;

    invoke-interface {v5, v3}, Lcom/metamoji/ch/radar/IChRadarChartSetting;->lineWidth(I)D

    move-result-wide v11

    .line 66
    iget-object v5, v0, Lcom/metamoji/ch/radar/ChRadarChart;->setting:Lcom/metamoji/ch/radar/IChRadarChartSetting;

    invoke-interface {v5, v3}, Lcom/metamoji/ch/radar/IChRadarChartSetting;->markerType(I)Lcom/metamoji/ch/ChMarker;

    move-result-object v13

    .line 67
    iget-object v5, v0, Lcom/metamoji/ch/radar/ChRadarChart;->setting:Lcom/metamoji/ch/radar/IChRadarChartSetting;

    invoke-interface {v5, v3}, Lcom/metamoji/ch/radar/IChRadarChartSetting;->markerSize(I)D

    move-result-wide v14

    .line 68
    iget-object v5, v0, Lcom/metamoji/ch/radar/ChRadarChart;->setting:Lcom/metamoji/ch/radar/IChRadarChartSetting;

    invoke-interface {v5, v3}, Lcom/metamoji/ch/radar/IChRadarChartSetting;->markerColor(I)I

    move-result v16

    const/16 v17, 0x4

    const/16 v18, 0x0

    const/4 v9, 0x0

    .line 61
    invoke-direct/range {v6 .. v18}, Lcom/metamoji/ch/ChLegend$Item;-><init>(Ljava/util/EnumSet;Ljava/lang/String;IIDLcom/metamoji/ch/ChMarker;DIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 334
    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 335
    :cond_1
    check-cast v2, Ljava/util/List;

    .line 59
    iput-object v2, v0, Lcom/metamoji/ch/radar/ChRadarChart;->legendItems:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final calcNiceValueScaleAxis()Lcom/metamoji/ch/IChLinearScaleAxisSetting;
    .locals 14

    .line 301
    invoke-virtual {p0}, Lcom/metamoji/ch/radar/ChRadarChart;->getDataSource()Lcom/metamoji/ch/IChDataSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/ch/IChDataSource;->getCategoryCount()I

    move-result v0

    .line 302
    invoke-virtual {p0}, Lcom/metamoji/ch/radar/ChRadarChart;->getDataSource()Lcom/metamoji/ch/IChDataSource;

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

    .line 308
    invoke-virtual {p0}, Lcom/metamoji/ch/radar/ChRadarChart;->getDataSource()Lcom/metamoji/ch/IChDataSource;

    move-result-object v11

    invoke-interface {v11, v5, v10}, Lcom/metamoji/ch/IChDataSource;->data(II)Ljava/lang/Double;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 309
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

    .line 310
    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    cmpg-double v12, v12, v6

    if-gez v12, :cond_0

    .line 311
    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 313
    :cond_0
    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    cmpl-double v12, v12, v8

    if-lez v12, :cond_1

    .line 314
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

    .line 328
    :cond_4
    new-instance v0, Lcom/metamoji/ch/internal/ChNiceScale;

    invoke-direct {v0, v6, v7, v8, v9}, Lcom/metamoji/ch/internal/ChNiceScale;-><init>(DD)V

    check-cast v0, Lcom/metamoji/ch/IChLinearScaleAxisSetting;

    return-object v0
.end method

.method public getChartSize()Lcom/metamoji/ch/ChSize;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/metamoji/ch/radar/ChRadarChart;->chartSize:Lcom/metamoji/ch/ChSize;

    return-object v0
.end method

.method public getDataSource()Lcom/metamoji/ch/IChDataSource;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/metamoji/ch/radar/ChRadarChart;->dataSource:Lcom/metamoji/ch/IChDataSource;

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
    iget-object v0, p0, Lcom/metamoji/ch/radar/ChRadarChart;->legendItems:Ljava/util/List;

    return-object v0
.end method

.method public final getSetting()Lcom/metamoji/ch/radar/IChRadarChartSetting;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/metamoji/ch/radar/ChRadarChart;->setting:Lcom/metamoji/ch/radar/IChRadarChartSetting;

    return-object v0
.end method

.method public getSprite()Lcom/metamoji/df/sprite/Sprite;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/metamoji/ch/radar/ChRadarChart;->sprite:Lcom/metamoji/df/sprite/Sprite;

    return-object v0
.end method

.method public update(Lcom/metamoji/ch/IChDataSource;Lcom/metamoji/ch/ChSize;)V
    .locals 18

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v0, p2

    const-string v1, "dataSource"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "chartSize"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iput-object v4, v2, Lcom/metamoji/ch/radar/ChRadarChart;->dataSource:Lcom/metamoji/ch/IChDataSource;

    .line 30
    iput-object v0, v2, Lcom/metamoji/ch/radar/ChRadarChart;->chartSize:Lcom/metamoji/ch/ChSize;

    .line 32
    invoke-virtual {v2}, Lcom/metamoji/ch/radar/ChRadarChart;->getSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v1

    invoke-virtual {v0}, Lcom/metamoji/ch/ChSize;->getWidth()D

    move-result-wide v5

    double-to-float v3, v5

    invoke-virtual {v1, v3}, Lcom/metamoji/df/sprite/Sprite;->setWidth(F)V

    .line 33
    invoke-virtual {v2}, Lcom/metamoji/ch/radar/ChRadarChart;->getSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v1

    invoke-virtual {v0}, Lcom/metamoji/ch/ChSize;->getHeight()D

    move-result-wide v5

    double-to-float v3, v5

    invoke-virtual {v1, v3}, Lcom/metamoji/df/sprite/Sprite;->setHeight(F)V

    .line 35
    invoke-virtual {v0}, Lcom/metamoji/ch/ChSize;->getWidth()D

    move-result-wide v5

    .line 36
    invoke-virtual {v0}, Lcom/metamoji/ch/ChSize;->getHeight()D

    move-result-wide v8

    .line 37
    invoke-interface {v4}, Lcom/metamoji/ch/IChDataSource;->getCategoryCount()I

    move-result v3

    .line 38
    invoke-interface {v4}, Lcom/metamoji/ch/IChDataSource;->getSeriesCount()I

    move-result v12

    .line 39
    iget-object v0, v2, Lcom/metamoji/ch/radar/ChRadarChart;->setting:Lcom/metamoji/ch/radar/IChRadarChartSetting;

    invoke-interface {v0}, Lcom/metamoji/ch/radar/IChRadarChartSetting;->getValueScaleAxis()Lcom/metamoji/ch/IChLinearScaleAxisSetting;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {v2}, Lcom/metamoji/ch/radar/ChRadarChart;->calcNiceValueScaleAxis()Lcom/metamoji/ch/IChLinearScaleAxisSetting;

    move-result-object v0

    :cond_0
    move-object v13, v0

    .line 40
    new-instance v14, Lcom/metamoji/ch/ChPoint;

    const/4 v0, 0x2

    int-to-double v0, v0

    div-double v10, v5, v0

    move-wide v15, v0

    div-double v0, v8, v15

    invoke-direct {v14, v10, v11, v0, v1}, Lcom/metamoji/ch/ChPoint;-><init>(DD)V

    .line 41
    new-instance v7, Lkotlin/jvm/internal/Ref$DoubleRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$DoubleRef;-><init>()V

    cmpl-double v17, v5, v8

    if-lez v17, :cond_1

    .line 43
    iput-wide v0, v7, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    goto :goto_0

    .line 46
    :cond_1
    iput-wide v10, v7, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    .line 48
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 49
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 50
    new-instance v10, Lkotlin/jvm/internal/Ref$DoubleRef;

    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$DoubleRef;-><init>()V

    move-object/from16 p2, v0

    move-object v11, v1

    iget-wide v0, v7, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    mul-double/2addr v0, v15

    iput-wide v0, v10, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v0

    check-cast v15, Ljava/util/List;

    .line 53
    new-instance v0, Lkotlin/jvm/internal/Ref$DoubleRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$DoubleRef;-><init>()V

    .line 55
    invoke-virtual {v2}, Lcom/metamoji/ch/radar/ChRadarChart;->getSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v1

    .line 56
    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Graphics;->clear()V

    .line 281
    invoke-static {v2, v12, v4}, Lcom/metamoji/ch/radar/ChRadarChart;->update$updateLegendItems(Lcom/metamoji/ch/radar/ChRadarChart;ILcom/metamoji/ch/IChDataSource;)V

    move-object/from16 v16, v11

    move-object v11, v7

    move-object/from16 v7, v16

    move/from16 v16, v12

    move-object v12, v0

    move-object v0, v1

    move-object v1, v2

    move-object/from16 v2, p2

    .line 284
    invoke-static/range {v0 .. v11}, Lcom/metamoji/ch/radar/ChRadarChart;->update$makeCategoryTickLabels(Lcom/metamoji/df/sprite/Graphics;Lcom/metamoji/ch/radar/ChRadarChart;Ljava/util/List;ILcom/metamoji/ch/IChDataSource;DLjava/util/List;DLkotlin/jvm/internal/Ref$DoubleRef;Lkotlin/jvm/internal/Ref$DoubleRef;)V

    move-object v4, v2

    move-object v5, v7

    move-object v6, v11

    move-object v2, v1

    move-object v1, v0

    .line 286
    invoke-static {v1, v2, v15, v13, v12}, Lcom/metamoji/ch/radar/ChRadarChart;->update$makeValueTickLabels(Lcom/metamoji/df/sprite/Graphics;Lcom/metamoji/ch/radar/ChRadarChart;Ljava/util/List;Lcom/metamoji/ch/IChLinearScaleAxisSetting;Lkotlin/jvm/internal/Ref$DoubleRef;)V

    move-object v0, v14

    .line 289
    invoke-static/range {v0 .. v5}, Lcom/metamoji/ch/radar/ChRadarChart;->update$drawCategoryLabel(Lcom/metamoji/ch/ChPoint;Lcom/metamoji/df/sprite/Graphics;Lcom/metamoji/ch/radar/ChRadarChart;ILjava/util/List;Ljava/util/List;)V

    move-object v5, v6

    move-object v4, v15

    move v6, v3

    move-object v3, v13

    .line 291
    invoke-static/range {v0 .. v5}, Lcom/metamoji/ch/radar/ChRadarChart;->update$drawValueScale(Lcom/metamoji/ch/ChPoint;Lcom/metamoji/df/sprite/Graphics;Lcom/metamoji/ch/radar/ChRadarChart;Lcom/metamoji/ch/IChLinearScaleAxisSetting;Ljava/util/List;Lkotlin/jvm/internal/Ref$DoubleRef;)V

    .line 293
    invoke-static {v0, v1, v2, v6, v5}, Lcom/metamoji/ch/radar/ChRadarChart;->update$drawCategoryScale(Lcom/metamoji/ch/ChPoint;Lcom/metamoji/df/sprite/Graphics;Lcom/metamoji/ch/radar/ChRadarChart;ILkotlin/jvm/internal/Ref$DoubleRef;)V

    move-object v4, v2

    move-object v7, v3

    move/from16 v3, v16

    move-object v2, v1

    move v1, v6

    move-object v6, v5

    move-object/from16 v5, p1

    .line 296
    invoke-static/range {v0 .. v7}, Lcom/metamoji/ch/radar/ChRadarChart;->update$drawDataPolygon(Lcom/metamoji/ch/ChPoint;ILcom/metamoji/df/sprite/Graphics;ILcom/metamoji/ch/radar/ChRadarChart;Lcom/metamoji/ch/IChDataSource;Lkotlin/jvm/internal/Ref$DoubleRef;Lcom/metamoji/ch/IChLinearScaleAxisSetting;)V

    return-void
.end method
