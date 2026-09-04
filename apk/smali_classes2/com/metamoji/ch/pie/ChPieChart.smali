.class public final Lcom/metamoji/ch/pie/ChPieChart;
.super Ljava/lang/Object;
.source "ChPieChart.kt"

# interfaces
.implements Lcom/metamoji/ch/IChChart;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChPieChart.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChPieChart.kt\ncom/metamoji/ch/pie/ChPieChart\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,365:1\n1617#2,9:366\n1869#2:375\n1870#2:377\n1626#2:378\n1021#2,2:379\n1011#2,2:381\n1#3:376\n*S KotlinDebug\n*F\n+ 1 ChPieChart.kt\ncom/metamoji/ch/pie/ChPieChart\n*L\n69#1:366,9\n69#1:375\n69#1:377\n69#1:378\n86#1:379,2\n133#1:381,2\n69#1:376\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0018\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\tH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u001e\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\t@RX\u0096\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u001e\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0008\u001a\u00020\r@RX\u0096\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R*\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00112\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011@RX\u0096\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u0016\u001a\u00020\u0017X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/metamoji/ch/pie/ChPieChart;",
        "Lcom/metamoji/ch/IChChart;",
        "setting",
        "Lcom/metamoji/ch/pie/IChPieChartSetting;",
        "<init>",
        "(Lcom/metamoji/ch/pie/IChPieChartSetting;)V",
        "getSetting",
        "()Lcom/metamoji/ch/pie/IChPieChartSetting;",
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

.field private final setting:Lcom/metamoji/ch/pie/IChPieChartSetting;

.field private final sprite:Lcom/metamoji/df/sprite/Sprite;


# direct methods
.method public constructor <init>(Lcom/metamoji/ch/pie/IChPieChartSetting;)V
    .locals 1

    const-string v0, "setting"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ch/pie/ChPieChart;->setting:Lcom/metamoji/ch/pie/IChPieChartSetting;

    .line 20
    sget-object p1, Lcom/metamoji/ch/ChSize;->Companion:Lcom/metamoji/ch/ChSize$Companion;

    invoke-virtual {p1}, Lcom/metamoji/ch/ChSize$Companion;->getZero()Lcom/metamoji/ch/ChSize;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ch/pie/ChPieChart;->chartSize:Lcom/metamoji/ch/ChSize;

    .line 23
    new-instance p1, Lcom/metamoji/ch/ChNullDataSource;

    invoke-direct {p1}, Lcom/metamoji/ch/ChNullDataSource;-><init>()V

    check-cast p1, Lcom/metamoji/ch/IChDataSource;

    iput-object p1, p0, Lcom/metamoji/ch/pie/ChPieChart;->dataSource:Lcom/metamoji/ch/IChDataSource;

    .line 26
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ch/pie/ChPieChart;->legendItems:Ljava/util/List;

    .line 29
    new-instance p1, Lcom/metamoji/df/sprite/Sprite;

    invoke-direct {p1}, Lcom/metamoji/df/sprite/Sprite;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ch/pie/ChPieChart;->sprite:Lcom/metamoji/df/sprite/Sprite;

    return-void
.end method

.method private static final update$drawDataLabels(Ljava/util/List;Lcom/metamoji/ch/pie/ChPieChart;Lcom/metamoji/ch/internal/transformer/ChOffsetTransformer;DLcom/metamoji/df/sprite/Graphics;)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/ch/pie/ChPieChart$update$ChPieDataLabelItem;",
            ">;",
            "Lcom/metamoji/ch/pie/ChPieChart;",
            "Lcom/metamoji/ch/internal/transformer/ChOffsetTransformer;",
            "D",
            "Lcom/metamoji/df/sprite/Graphics;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    .line 192
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/ch/pie/ChPieChart$update$ChPieDataLabelItem;

    move-object/from16 v4, p1

    .line 193
    iget-object v5, v4, Lcom/metamoji/ch/pie/ChPieChart;->setting:Lcom/metamoji/ch/pie/IChPieChartSetting;

    invoke-virtual {v3}, Lcom/metamoji/ch/pie/ChPieChart$update$ChPieDataLabelItem;->getCategoryIndex()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/metamoji/ch/pie/IChPieChartSetting;->dataLabel(I)Lcom/metamoji/ch/pie/IChPieDataLabelSetting;

    move-result-object v5

    if-nez v5, :cond_0

    goto :goto_0

    .line 195
    :cond_0
    invoke-virtual {v3}, Lcom/metamoji/ch/pie/ChPieChart$update$ChPieDataLabelItem;->getCategoryPercentageRect()Lcom/metamoji/ch/ChRect;

    move-result-object v6

    .line 196
    invoke-virtual {v3}, Lcom/metamoji/ch/pie/ChPieChart$update$ChPieDataLabelItem;->getSwsCategory()Lcom/metamoji/ch/internal/ChStringWithSize;

    move-result-object v7

    .line 197
    invoke-virtual {v3}, Lcom/metamoji/ch/pie/ChPieChart$update$ChPieDataLabelItem;->getSwsPercentage()Lcom/metamoji/ch/internal/ChStringWithSize;

    move-result-object v8

    .line 198
    invoke-interface {v5}, Lcom/metamoji/ch/pie/IChPieDataLabelSetting;->getLeaderLineWidth()D

    move-result-wide v9

    .line 199
    invoke-virtual {v3}, Lcom/metamoji/ch/pie/ChPieChart$update$ChPieDataLabelItem;->getMiddlePiePercentagePoint()Lcom/metamoji/ch/ChPoint;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/metamoji/ch/internal/transformer/ChOffsetTransformer;->point(Lcom/metamoji/ch/ChPoint;)Lcom/metamoji/ch/ChPoint;

    move-result-object v11

    .line 204
    invoke-virtual {v3}, Lcom/metamoji/ch/pie/ChPieChart$update$ChPieDataLabelItem;->getMiddleAngle()D

    move-result-wide v12

    const-wide v14, -0x4006de04abbbd2e8L    # -1.5707963267948966

    cmpl-double v12, v12, v14

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    const-wide v18, 0x3ff921fb54442d18L    # 1.5707963267948966

    if-ltz v12, :cond_1

    invoke-virtual {v3}, Lcom/metamoji/ch/pie/ChPieChart$update$ChPieDataLabelItem;->getMiddleAngle()D

    move-result-wide v12

    cmpg-double v12, v12, v18

    if-gez v12, :cond_1

    .line 205
    new-instance v12, Lcom/metamoji/ch/ChPoint;

    move-wide/from16 v20, v14

    invoke-virtual {v6}, Lcom/metamoji/ch/ChRect;->getMinX()D

    move-result-wide v14

    invoke-virtual {v6}, Lcom/metamoji/ch/ChRect;->getMinY()D

    move-result-wide v22

    invoke-virtual {v7}, Lcom/metamoji/ch/internal/ChStringWithSize;->getSize()Lcom/metamoji/ch/ChSize;

    move-result-object v13

    invoke-virtual {v13}, Lcom/metamoji/ch/ChSize;->getHeight()D

    move-result-wide v24

    add-double v22, v22, v24

    div-double v16, v9, v16

    move-object/from16 p0, v2

    move-object v13, v3

    add-double v2, v22, v16

    invoke-direct {v12, v14, v15, v2, v3}, Lcom/metamoji/ch/ChPoint;-><init>(DD)V

    .line 206
    new-instance v2, Lcom/metamoji/ch/ChPoint;

    invoke-virtual {v6}, Lcom/metamoji/ch/ChRect;->getMinY()D

    move-result-wide v14

    invoke-virtual {v7}, Lcom/metamoji/ch/internal/ChStringWithSize;->getSize()Lcom/metamoji/ch/ChSize;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/ch/ChSize;->getHeight()D

    move-result-wide v22

    add-double v14, v14, v22

    add-double v14, v14, v16

    move-wide/from16 v3, p3

    invoke-direct {v2, v3, v4, v14, v15}, Lcom/metamoji/ch/ChPoint;-><init>(DD)V

    goto :goto_1

    :cond_1
    move-object/from16 p0, v2

    move-object v13, v3

    move-wide/from16 v20, v14

    move-wide/from16 v3, p3

    .line 208
    new-instance v12, Lcom/metamoji/ch/ChPoint;

    invoke-virtual {v6}, Lcom/metamoji/ch/ChRect;->getMaxX()D

    move-result-wide v14

    invoke-virtual {v6}, Lcom/metamoji/ch/ChRect;->getMinY()D

    move-result-wide v22

    invoke-virtual {v7}, Lcom/metamoji/ch/internal/ChStringWithSize;->getSize()Lcom/metamoji/ch/ChSize;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/ch/ChSize;->getHeight()D

    move-result-wide v24

    add-double v22, v22, v24

    div-double v16, v9, v16

    add-double v2, v22, v16

    invoke-direct {v12, v14, v15, v2, v3}, Lcom/metamoji/ch/ChPoint;-><init>(DD)V

    .line 209
    new-instance v2, Lcom/metamoji/ch/ChPoint;

    invoke-virtual {v6}, Lcom/metamoji/ch/ChRect;->getMinY()D

    move-result-wide v3

    invoke-virtual {v7}, Lcom/metamoji/ch/internal/ChStringWithSize;->getSize()Lcom/metamoji/ch/ChSize;

    move-result-object v14

    invoke-virtual {v14}, Lcom/metamoji/ch/ChSize;->getHeight()D

    move-result-wide v14

    add-double/2addr v3, v14

    add-double v3, v3, v16

    const-wide/16 v14, 0x0

    invoke-direct {v2, v14, v15, v3, v4}, Lcom/metamoji/ch/ChPoint;-><init>(DD)V

    .line 213
    :goto_1
    new-instance v3, Lcom/metamoji/df/sprite/PaintSolid;

    invoke-interface {v5}, Lcom/metamoji/ch/pie/IChPieDataLabelSetting;->getLeaderLineColor()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    check-cast v3, Lcom/metamoji/df/sprite/Paint;

    invoke-virtual {v1, v3}, Lcom/metamoji/df/sprite/Graphics;->setLinePaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 214
    new-instance v3, Lcom/metamoji/df/sprite/PaintSolid;

    invoke-interface {v5}, Lcom/metamoji/ch/pie/IChPieDataLabelSetting;->getLeaderLineColor()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    check-cast v3, Lcom/metamoji/df/sprite/Paint;

    invoke-virtual {v1, v3}, Lcom/metamoji/df/sprite/Graphics;->setFillPaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 215
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v13}, Lcom/metamoji/ch/pie/ChPieChart$update$ChPieDataLabelItem;->getMiddlePiePercentagePoint()Lcom/metamoji/ch/ChPoint;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/metamoji/ch/internal/transformer/ChOffsetTransformer;->point(Lcom/metamoji/ch/ChPoint;)Lcom/metamoji/ch/ChPoint;

    move-result-object v3

    invoke-interface {v5}, Lcom/metamoji/ch/pie/IChPieDataLabelSetting;->getLeaderLineWidth()D

    move-result-wide v14

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    add-double v14, v14, v16

    invoke-static {v1, v3, v14, v15}, Lcom/metamoji/ch/ChPointKt;->drawCircle(Lcom/metamoji/df/sprite/Graphics;Lcom/metamoji/ch/ChPoint;D)V

    .line 217
    invoke-interface {v5}, Lcom/metamoji/ch/pie/IChPieDataLabelSetting;->getLeaderLineWidth()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-virtual {v1, v3}, Lcom/metamoji/df/sprite/Graphics;->setLineWidth(F)V

    .line 218
    invoke-static {v1, v11}, Lcom/metamoji/ch/ChPointKt;->moveTo(Lcom/metamoji/df/sprite/Graphics;Lcom/metamoji/ch/ChPoint;)V

    .line 219
    invoke-static {v1, v12}, Lcom/metamoji/ch/ChPointKt;->lineTo(Lcom/metamoji/df/sprite/Graphics;Lcom/metamoji/ch/ChPoint;)V

    .line 220
    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Graphics;->draw()V

    .line 221
    invoke-static {v1, v12}, Lcom/metamoji/ch/ChPointKt;->moveTo(Lcom/metamoji/df/sprite/Graphics;Lcom/metamoji/ch/ChPoint;)V

    .line 222
    invoke-static {v1, v2}, Lcom/metamoji/ch/ChPointKt;->lineTo(Lcom/metamoji/df/sprite/Graphics;Lcom/metamoji/ch/ChPoint;)V

    .line 223
    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Graphics;->draw()V

    .line 225
    invoke-interface {v5}, Lcom/metamoji/ch/pie/IChPieDataLabelSetting;->getCategoryLabel()Lcom/metamoji/ch/IChLabelSetting;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 226
    new-instance v4, Lcom/metamoji/ch/internal/ChCleanGraphics;

    invoke-direct {v4, v1}, Lcom/metamoji/ch/internal/ChCleanGraphics;-><init>(Lcom/metamoji/df/sprite/Graphics;)V

    check-cast v4, Ljava/io/Closeable;

    :try_start_0
    move-object v11, v4

    check-cast v11, Lcom/metamoji/ch/internal/ChCleanGraphics;

    .line 227
    new-instance v11, Lcom/metamoji/df/sprite/PaintSolid;

    invoke-interface {v2}, Lcom/metamoji/ch/IChLabelSetting;->getColor()I

    move-result v12

    invoke-direct {v11, v12}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    check-cast v11, Lcom/metamoji/df/sprite/Paint;

    invoke-virtual {v1, v11}, Lcom/metamoji/df/sprite/Graphics;->setTextPaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 228
    invoke-interface {v2}, Lcom/metamoji/ch/IChLabelSetting;->getFontName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/metamoji/df/sprite/Graphics;->setFontName(Ljava/lang/String;)V

    .line 229
    invoke-interface {v2}, Lcom/metamoji/ch/IChLabelSetting;->getFontSize()D

    move-result-wide v11

    double-to-float v2, v11

    invoke-virtual {v1, v2}, Lcom/metamoji/df/sprite/Graphics;->setFontSize(F)V

    .line 230
    invoke-virtual {v13}, Lcom/metamoji/ch/pie/ChPieChart$update$ChPieDataLabelItem;->getMiddleAngle()D

    move-result-wide v11

    cmpl-double v2, v11, v20

    if-ltz v2, :cond_2

    invoke-virtual {v13}, Lcom/metamoji/ch/pie/ChPieChart$update$ChPieDataLabelItem;->getMiddleAngle()D

    move-result-wide v11

    cmpg-double v2, v11, v18

    if-gez v2, :cond_2

    .line 232
    invoke-virtual {v6}, Lcom/metamoji/ch/ChRect;->getMaxX()D

    move-result-wide v11

    invoke-virtual {v7}, Lcom/metamoji/ch/internal/ChStringWithSize;->getSize()Lcom/metamoji/ch/ChSize;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/ch/ChSize;->getWidth()D

    move-result-wide v14

    sub-double/2addr v11, v14

    double-to-float v2, v11

    .line 233
    invoke-virtual {v6}, Lcom/metamoji/ch/ChRect;->getMinY()D

    move-result-wide v11

    double-to-float v11, v11

    .line 234
    invoke-virtual {v7}, Lcom/metamoji/ch/internal/ChStringWithSize;->getString()Ljava/lang/String;

    move-result-object v12

    .line 231
    invoke-virtual {v1, v2, v11, v12}, Lcom/metamoji/df/sprite/Graphics;->drawString(FFLjava/lang/String;)V

    goto :goto_2

    .line 238
    :cond_2
    invoke-virtual {v6}, Lcom/metamoji/ch/ChRect;->getMinX()D

    move-result-wide v11

    double-to-float v2, v11

    .line 239
    invoke-virtual {v6}, Lcom/metamoji/ch/ChRect;->getMinY()D

    move-result-wide v11

    double-to-float v11, v11

    .line 240
    invoke-virtual {v7}, Lcom/metamoji/ch/internal/ChStringWithSize;->getString()Ljava/lang/String;

    move-result-object v12

    .line 237
    invoke-virtual {v1, v2, v11, v12}, Lcom/metamoji/df/sprite/Graphics;->drawString(FFLjava/lang/String;)V

    .line 243
    :goto_2
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    invoke-static {v4, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_3

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

    .line 245
    :cond_3
    :goto_3
    invoke-interface {v5}, Lcom/metamoji/ch/pie/IChPieDataLabelSetting;->getPercentageLabel()Lcom/metamoji/ch/IChDecimalLabelSetting;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 246
    new-instance v4, Lcom/metamoji/ch/internal/ChCleanGraphics;

    invoke-direct {v4, v1}, Lcom/metamoji/ch/internal/ChCleanGraphics;-><init>(Lcom/metamoji/df/sprite/Graphics;)V

    check-cast v4, Ljava/io/Closeable;

    :try_start_2
    move-object v5, v4

    check-cast v5, Lcom/metamoji/ch/internal/ChCleanGraphics;

    .line 247
    new-instance v5, Lcom/metamoji/df/sprite/PaintSolid;

    invoke-interface {v2}, Lcom/metamoji/ch/IChDecimalLabelSetting;->getColor()I

    move-result v11

    invoke-direct {v5, v11}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    check-cast v5, Lcom/metamoji/df/sprite/Paint;

    invoke-virtual {v1, v5}, Lcom/metamoji/df/sprite/Graphics;->setTextPaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 248
    invoke-interface {v2}, Lcom/metamoji/ch/IChDecimalLabelSetting;->getFontName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/metamoji/df/sprite/Graphics;->setFontName(Ljava/lang/String;)V

    .line 249
    invoke-interface {v2}, Lcom/metamoji/ch/IChDecimalLabelSetting;->getFontSize()D

    move-result-wide v11

    double-to-float v2, v11

    invoke-virtual {v1, v2}, Lcom/metamoji/df/sprite/Graphics;->setFontSize(F)V

    .line 250
    invoke-virtual {v13}, Lcom/metamoji/ch/pie/ChPieChart$update$ChPieDataLabelItem;->getMiddleAngle()D

    move-result-wide v11

    cmpl-double v2, v11, v20

    if-ltz v2, :cond_4

    invoke-virtual {v13}, Lcom/metamoji/ch/pie/ChPieChart$update$ChPieDataLabelItem;->getMiddleAngle()D

    move-result-wide v11

    cmpg-double v2, v11, v18

    if-gez v2, :cond_4

    .line 252
    invoke-virtual {v6}, Lcom/metamoji/ch/ChRect;->getMaxX()D

    move-result-wide v11

    invoke-virtual {v8}, Lcom/metamoji/ch/internal/ChStringWithSize;->getSize()Lcom/metamoji/ch/ChSize;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/ch/ChSize;->getWidth()D

    move-result-wide v13

    sub-double/2addr v11, v13

    double-to-float v2, v11

    .line 253
    invoke-virtual {v6}, Lcom/metamoji/ch/ChRect;->getMinY()D

    move-result-wide v5

    invoke-virtual {v7}, Lcom/metamoji/ch/internal/ChStringWithSize;->getSize()Lcom/metamoji/ch/ChSize;

    move-result-object v7

    invoke-virtual {v7}, Lcom/metamoji/ch/ChSize;->getHeight()D

    move-result-wide v11

    add-double/2addr v5, v11

    add-double/2addr v5, v9

    double-to-float v5, v5

    .line 254
    invoke-virtual {v8}, Lcom/metamoji/ch/internal/ChStringWithSize;->getString()Ljava/lang/String;

    move-result-object v6

    .line 251
    invoke-virtual {v1, v2, v5, v6}, Lcom/metamoji/df/sprite/Graphics;->drawString(FFLjava/lang/String;)V

    goto :goto_4

    .line 258
    :cond_4
    invoke-virtual {v6}, Lcom/metamoji/ch/ChRect;->getMinX()D

    move-result-wide v11

    double-to-float v2, v11

    .line 259
    invoke-virtual {v6}, Lcom/metamoji/ch/ChRect;->getMinY()D

    move-result-wide v5

    invoke-virtual {v7}, Lcom/metamoji/ch/internal/ChStringWithSize;->getSize()Lcom/metamoji/ch/ChSize;

    move-result-object v7

    invoke-virtual {v7}, Lcom/metamoji/ch/ChSize;->getHeight()D

    move-result-wide v11

    add-double/2addr v5, v11

    add-double/2addr v5, v9

    double-to-float v5, v5

    .line 260
    invoke-virtual {v8}, Lcom/metamoji/ch/internal/ChStringWithSize;->getString()Ljava/lang/String;

    move-result-object v6

    .line 257
    invoke-virtual {v1, v2, v5, v6}, Lcom/metamoji/df/sprite/Graphics;->drawString(FFLjava/lang/String;)V

    .line 263
    :goto_4
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 246
    invoke-static {v4, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v1, v0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception v0

    invoke-static {v4, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_5
    :goto_5
    move-object/from16 v2, p0

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method private static final update$drawPies(IILcom/metamoji/ch/internal/transformer/ChOffsetTransformer;ILcom/metamoji/ch/IChDataSource;Lkotlin/jvm/internal/Ref$DoubleRef;Lcom/metamoji/ch/pie/ChPieChart;Lkotlin/jvm/internal/Ref$DoubleRef;Lcom/metamoji/df/sprite/Graphics;Ljava/util/List;)V
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/metamoji/ch/internal/transformer/ChOffsetTransformer;",
            "I",
            "Lcom/metamoji/ch/IChDataSource;",
            "Lkotlin/jvm/internal/Ref$DoubleRef;",
            "Lcom/metamoji/ch/pie/ChPieChart;",
            "Lkotlin/jvm/internal/Ref$DoubleRef;",
            "Lcom/metamoji/df/sprite/Graphics;",
            "Ljava/util/List<",
            "Lcom/metamoji/ch/pie/ChPieChart$update$ChPieDataLabelItem;",
            ">;)V"
        }
    .end annotation

    move/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    if-ltz v0, :cond_6

    move/from16 v8, p1

    if-ge v0, v8, :cond_6

    .line 271
    sget-object v8, Lcom/metamoji/ch/ChPoint;->Companion:Lcom/metamoji/ch/ChPoint$Companion;

    invoke-virtual {v8}, Lcom/metamoji/ch/ChPoint$Companion;->getZero()Lcom/metamoji/ch/ChPoint;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/metamoji/ch/internal/transformer/ChOffsetTransformer;->point(Lcom/metamoji/ch/ChPoint;)Lcom/metamoji/ch/ChPoint;

    move-result-object v15

    const/4 v8, 0x0

    const-wide/16 v16, 0x0

    move v9, v8

    move-wide/from16 v10, v16

    :goto_0
    if-ge v9, v2, :cond_1

    .line 276
    invoke-interface {v3, v9, v0}, Lcom/metamoji/ch/IChDataSource;->data(II)Ljava/lang/Double;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 277
    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    move-result v13

    if-nez v13, :cond_0

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v13

    if-nez v13, :cond_0

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    cmpl-double v13, v13, v16

    if-lez v13, :cond_0

    .line 278
    iget-wide v13, v4, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    add-double v13, v13, v18

    iput-wide v13, v4, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    .line 279
    iget-object v12, v5, Lcom/metamoji/ch/pie/ChPieChart;->setting:Lcom/metamoji/ch/pie/IChPieChartSetting;

    invoke-interface {v12, v9}, Lcom/metamoji/ch/pie/IChPieChartSetting;->piePopoutRatio(I)D

    move-result-wide v12

    cmpl-double v12, v12, v10

    if-lez v12, :cond_0

    .line 280
    iget-object v10, v5, Lcom/metamoji/ch/pie/ChPieChart;->setting:Lcom/metamoji/ch/pie/IChPieChartSetting;

    invoke-interface {v10, v9}, Lcom/metamoji/ch/pie/IChPieChartSetting;->piePopoutRatio(I)D

    move-result-wide v10

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 284
    :cond_1
    iget-wide v12, v6, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    add-double v10, v10, v18

    div-double/2addr v12, v10

    iput-wide v12, v6, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    .line 288
    new-instance v9, Lcom/metamoji/ch/internal/ChNumberFormatter;

    invoke-direct {v9}, Lcom/metamoji/ch/internal/ChNumberFormatter;-><init>()V

    const-wide v10, -0x4006de04abbbd2e8L    # -1.5707963267948966

    move-wide v11, v10

    :goto_1
    if-ge v8, v2, :cond_6

    .line 291
    invoke-interface {v3, v8, v0}, Lcom/metamoji/ch/IChDataSource;->data(II)Ljava/lang/Double;

    move-result-object v18

    if-eqz v18, :cond_5

    .line 292
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    move-result v10

    if-nez v10, :cond_5

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v10

    if-nez v10, :cond_5

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    cmpl-double v10, v13, v16

    if-lez v10, :cond_5

    .line 294
    sget-object v10, Lcom/metamoji/df/sprite/LineJoin;->BEVEL:Lcom/metamoji/df/sprite/LineJoin;

    invoke-virtual {v7, v10}, Lcom/metamoji/df/sprite/Graphics;->setLineJoin(Lcom/metamoji/df/sprite/LineJoin;)V

    .line 295
    iget-object v10, v5, Lcom/metamoji/ch/pie/ChPieChart;->setting:Lcom/metamoji/ch/pie/IChPieChartSetting;

    invoke-interface {v10, v8}, Lcom/metamoji/ch/pie/IChPieChartSetting;->lineWidth(I)D

    move-result-wide v13

    double-to-float v10, v13

    invoke-virtual {v7, v10}, Lcom/metamoji/df/sprite/Graphics;->setLineWidth(F)V

    .line 296
    new-instance v10, Lcom/metamoji/df/sprite/PaintSolid;

    iget-object v13, v5, Lcom/metamoji/ch/pie/ChPieChart;->setting:Lcom/metamoji/ch/pie/IChPieChartSetting;

    invoke-interface {v13, v8}, Lcom/metamoji/ch/pie/IChPieChartSetting;->lineColor(I)I

    move-result v13

    invoke-direct {v10, v13}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    check-cast v10, Lcom/metamoji/df/sprite/Paint;

    invoke-virtual {v7, v10}, Lcom/metamoji/df/sprite/Graphics;->setLinePaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 297
    new-instance v10, Lcom/metamoji/df/sprite/PaintSolid;

    iget-object v13, v5, Lcom/metamoji/ch/pie/ChPieChart;->setting:Lcom/metamoji/ch/pie/IChPieChartSetting;

    invoke-interface {v13, v8}, Lcom/metamoji/ch/pie/IChPieChartSetting;->fillColor(I)I

    move-result v13

    invoke-direct {v10, v13}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    check-cast v10, Lcom/metamoji/df/sprite/Paint;

    invoke-virtual {v7, v10}, Lcom/metamoji/df/sprite/Graphics;->setFillPaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 298
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    move-object/from16 p1, v9

    iget-wide v9, v4, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    div-double/2addr v13, v9

    const/4 v9, 0x2

    int-to-double v9, v9

    mul-double/2addr v13, v9

    const-wide v19, 0x400921fb54442d18L    # Math.PI

    mul-double v13, v13, v19

    mul-double v19, v11, v9

    add-double v19, v13, v19

    const-wide/high16 v21, 0x4000000000000000L    # 2.0

    div-double v2, v19, v21

    .line 300
    iget-object v0, v5, Lcom/metamoji/ch/pie/ChPieChart;->setting:Lcom/metamoji/ch/pie/IChPieChartSetting;

    invoke-interface {v0}, Lcom/metamoji/ch/pie/IChPieChartSetting;->getDonutHoleRatio()D

    move-result-wide v19

    .line 301
    iget-object v0, v5, Lcom/metamoji/ch/pie/ChPieChart;->setting:Lcom/metamoji/ch/pie/IChPieChartSetting;

    invoke-interface {v0, v8}, Lcom/metamoji/ch/pie/IChPieChartSetting;->piePopoutRatio(I)D

    move-result-wide v21

    .line 304
    new-instance v0, Lcom/metamoji/ch/ChPoint;

    move/from16 v23, v8

    move-wide/from16 v24, v9

    .line 305
    iget-wide v8, v6, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    mul-double v8, v8, v21

    move-wide/from16 v26, v8

    neg-double v8, v2

    const-wide v28, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double v30, v8, v28

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double v8, v8, v26

    move-wide/from16 v26, v2

    .line 306
    iget-wide v2, v6, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    mul-double v2, v2, v21

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->cos(D)D

    move-result-wide v21

    mul-double v2, v2, v21

    .line 304
    invoke-direct {v0, v8, v9, v2, v3}, Lcom/metamoji/ch/ChPoint;-><init>(DD)V

    .line 309
    new-instance v8, Lcom/metamoji/ch/ChPoint;

    invoke-virtual {v15}, Lcom/metamoji/ch/ChPoint;->getX()D

    move-result-wide v2

    invoke-virtual {v0}, Lcom/metamoji/ch/ChPoint;->getX()D

    move-result-wide v9

    add-double/2addr v2, v9

    invoke-virtual {v15}, Lcom/metamoji/ch/ChPoint;->getY()D

    move-result-wide v9

    invoke-virtual {v0}, Lcom/metamoji/ch/ChPoint;->getY()D

    move-result-wide v21

    add-double v9, v9, v21

    invoke-direct {v8, v2, v3, v9, v10}, Lcom/metamoji/ch/ChPoint;-><init>(DD)V

    .line 312
    new-instance v2, Lcom/metamoji/ch/ChPoint;

    .line 313
    invoke-virtual {v8}, Lcom/metamoji/ch/ChPoint;->getX()D

    move-result-wide v9

    iget-wide v3, v6, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    mul-double v3, v3, v19

    move-wide/from16 v21, v3

    neg-double v3, v11

    add-double v3, v3, v28

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    mul-double v21, v21, v28

    add-double v9, v9, v21

    .line 314
    invoke-virtual {v8}, Lcom/metamoji/ch/ChPoint;->getY()D

    move-result-wide v21

    move-wide/from16 v28, v3

    iget-wide v3, v6, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    mul-double v3, v3, v19

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    mul-double v3, v3, v28

    add-double v3, v21, v3

    .line 312
    invoke-direct {v2, v9, v10, v3, v4}, Lcom/metamoji/ch/ChPoint;-><init>(DD)V

    .line 317
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v7, v2}, Lcom/metamoji/ch/ChPointKt;->moveTo(Lcom/metamoji/df/sprite/Graphics;Lcom/metamoji/ch/ChPoint;)V

    .line 318
    iget-wide v9, v6, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    move-object/from16 v2, p1

    move/from16 v3, v23

    invoke-static/range {v7 .. v14}, Lcom/metamoji/ch/ChPointKt;->arcTo(Lcom/metamoji/df/sprite/Graphics;Lcom/metamoji/ch/ChPoint;DDD)V

    move-object v4, v8

    move-wide/from16 v28, v11

    move-wide v7, v13

    cmpl-double v9, v19, v16

    if-lez v9, :cond_2

    .line 320
    iget-wide v9, v6, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    mul-double v9, v9, v19

    add-double v11, v28, v7

    neg-double v13, v7

    move-wide/from16 v32, v7

    move-object/from16 v7, p8

    move-object v8, v4

    invoke-static/range {v7 .. v14}, Lcom/metamoji/ch/ChPointKt;->arcTo(Lcom/metamoji/df/sprite/Graphics;Lcom/metamoji/ch/ChPoint;DDD)V

    goto :goto_2

    :cond_2
    move-wide/from16 v32, v7

    move-object/from16 v7, p8

    .line 322
    :goto_2
    invoke-virtual {v7}, Lcom/metamoji/df/sprite/Graphics;->closePath()V

    .line 325
    new-instance v4, Lcom/metamoji/ch/internal/ChCleanGraphics;

    invoke-direct {v4, v7}, Lcom/metamoji/ch/internal/ChCleanGraphics;-><init>(Lcom/metamoji/df/sprite/Graphics;)V

    check-cast v4, Ljava/io/Closeable;

    :try_start_0
    move-object v8, v4

    check-cast v8, Lcom/metamoji/ch/internal/ChCleanGraphics;

    .line 326
    iget-object v8, v5, Lcom/metamoji/ch/pie/ChPieChart;->setting:Lcom/metamoji/ch/pie/IChPieChartSetting;

    invoke-interface {v8, v3}, Lcom/metamoji/ch/pie/IChPieChartSetting;->valueLabel(I)Lcom/metamoji/ch/IChDecimalLabelSetting;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 327
    new-instance v9, Lcom/metamoji/df/sprite/PaintSolid;

    invoke-interface {v8}, Lcom/metamoji/ch/IChDecimalLabelSetting;->getColor()I

    move-result v10

    invoke-direct {v9, v10}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    check-cast v9, Lcom/metamoji/df/sprite/Paint;

    invoke-virtual {v7, v9}, Lcom/metamoji/df/sprite/Graphics;->setTextPaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 328
    invoke-interface {v8}, Lcom/metamoji/ch/IChDecimalLabelSetting;->getFontName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/metamoji/df/sprite/Graphics;->setFontName(Ljava/lang/String;)V

    .line 329
    invoke-interface {v8}, Lcom/metamoji/ch/IChDecimalLabelSetting;->getFontSize()D

    move-result-wide v9

    double-to-float v9, v9

    invoke-virtual {v7, v9}, Lcom/metamoji/df/sprite/Graphics;->setFontSize(F)V

    .line 331
    invoke-interface {v8}, Lcom/metamoji/ch/IChDecimalLabelSetting;->getNumDecimal()I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/metamoji/ch/internal/ChNumberFormatter;->setFractionDigits(I)V

    .line 332
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Lcom/metamoji/ch/internal/ChNumberFormatter;->stringFrom(D)Ljava/lang/String;

    move-result-object v8

    .line 333
    invoke-virtual {v7, v8}, Lcom/metamoji/df/sprite/Graphics;->rectOfString(Ljava/lang/String;)Landroid/graphics/RectF;

    move-result-object v9

    .line 334
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v9}, Lcom/metamoji/ch/ChRectKt;->getChSize(Landroid/graphics/RectF;)Lcom/metamoji/ch/ChSize;

    move-result-object v9

    .line 335
    new-instance v10, Lcom/metamoji/ch/internal/ChStringWithSize;

    invoke-direct {v10, v8, v9}, Lcom/metamoji/ch/internal/ChStringWithSize;-><init>(Ljava/lang/String;Lcom/metamoji/ch/ChSize;)V

    .line 336
    new-instance v8, Lcom/metamoji/ch/ChPoint;

    iget-wide v11, v6, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    iget-wide v13, v6, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    mul-double v13, v13, v19

    div-double v13, v13, v24

    add-double/2addr v11, v13

    const-wide v13, 0x3fe4cccccccccccdL    # 0.65

    mul-double/2addr v11, v13

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->sin(D)D

    move-result-wide v21

    mul-double v11, v11, v21

    invoke-virtual {v0}, Lcom/metamoji/ch/ChPoint;->getX()D

    move-result-wide v21

    add-double v11, v11, v21

    move-wide/from16 v21, v13

    iget-wide v13, v6, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    move-object/from16 p1, v10

    iget-wide v9, v6, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    mul-double v9, v9, v19

    div-double v9, v9, v24

    add-double/2addr v13, v9

    mul-double v13, v13, v21

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double/2addr v13, v9

    invoke-virtual {v0}, Lcom/metamoji/ch/ChPoint;->getY()D

    move-result-wide v9

    add-double/2addr v13, v9

    invoke-direct {v8, v11, v12, v13, v14}, Lcom/metamoji/ch/ChPoint;-><init>(DD)V

    .line 337
    new-instance v0, Lcom/metamoji/ch/ChPoint;

    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/ch/internal/ChStringWithSize;->getSize()Lcom/metamoji/ch/ChSize;

    move-result-object v9

    invoke-virtual {v9}, Lcom/metamoji/ch/ChSize;->getWidth()D

    move-result-wide v9

    div-double v9, v9, v24

    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/ch/internal/ChStringWithSize;->getSize()Lcom/metamoji/ch/ChSize;

    move-result-object v11

    invoke-virtual {v11}, Lcom/metamoji/ch/ChSize;->getHeight()D

    move-result-wide v11

    div-double v11, v11, v24

    invoke-direct {v0, v9, v10, v11, v12}, Lcom/metamoji/ch/ChPoint;-><init>(DD)V

    .line 338
    new-instance v9, Lcom/metamoji/ch/ChPoint;

    invoke-virtual {v8}, Lcom/metamoji/ch/ChPoint;->getX()D

    move-result-wide v10

    invoke-virtual {v0}, Lcom/metamoji/ch/ChPoint;->getX()D

    move-result-wide v12

    sub-double/2addr v10, v12

    invoke-virtual {v8}, Lcom/metamoji/ch/ChPoint;->getY()D

    move-result-wide v12

    invoke-virtual {v0}, Lcom/metamoji/ch/ChPoint;->getY()D

    move-result-wide v19

    sub-double v12, v12, v19

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/metamoji/ch/ChPoint;-><init>(DD)V

    .line 339
    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/ch/internal/ChStringWithSize;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v9}, Lcom/metamoji/ch/internal/transformer/ChOffsetTransformer;->point(Lcom/metamoji/ch/ChPoint;)Lcom/metamoji/ch/ChPoint;

    move-result-object v8

    invoke-static {v7, v0, v8}, Lcom/metamoji/ch/ChPointKt;->drawString(Lcom/metamoji/df/sprite/Graphics;Ljava/lang/String;Lcom/metamoji/ch/ChPoint;)V

    .line 343
    :cond_3
    new-instance v0, Lcom/metamoji/ch/ChPoint;

    iget-wide v8, v6, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    const-wide v10, 0x3fee666666666666L    # 0.95

    mul-double/2addr v8, v10

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v8, v12

    iget-wide v12, v6, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    mul-double/2addr v12, v10

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v12, v10

    invoke-direct {v0, v8, v9, v12, v13}, Lcom/metamoji/ch/ChPoint;-><init>(DD)V

    move-object/from16 v8, p4

    .line 344
    invoke-interface {v8, v3}, Lcom/metamoji/ch/IChDataSource;->categoryTitle(I)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_4

    const-string v9, ""

    :cond_4
    move-object/from16 v20, v9

    move-object/from16 v9, v18

    .line 346
    new-instance v18, Lcom/metamoji/ch/pie/ChPieChart$update$ChPieDataLabelItem;

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    move-object/from16 v19, v0

    move/from16 v21, v3

    move-wide/from16 v24, v26

    invoke-direct/range {v18 .. v25}, Lcom/metamoji/ch/pie/ChPieChart$update$ChPieDataLabelItem;-><init>(Lcom/metamoji/ch/ChPoint;Ljava/lang/String;IDD)V

    move-object/from16 v0, v18

    move/from16 v23, v21

    move-object/from16 v3, p9

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-double v11, v28, v32

    .line 349
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 325
    invoke-static {v4, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_3

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

    :cond_5
    move/from16 v23, v8

    move-object v2, v9

    move-wide/from16 v28, v11

    move-object v8, v3

    move-object/from16 v3, p9

    move-wide/from16 v11, v28

    :goto_3
    add-int/lit8 v0, v23, 0x1

    move-object/from16 v4, p5

    move-object v9, v2

    move-object v3, v8

    move/from16 v2, p3

    move v8, v0

    move/from16 v0, p0

    goto/16 :goto_1

    :cond_6
    return-void
.end method

.method private static final update$makeDataLabels(Ljava/util/List;Lcom/metamoji/ch/ChSize;Lcom/metamoji/ch/pie/ChPieChart;Lcom/metamoji/ch/internal/transformer/ChOffsetTransformer;DDLcom/metamoji/df/sprite/Graphics;Lkotlin/jvm/internal/Ref$DoubleRef;)V
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/ch/pie/ChPieChart$update$ChPieDataLabelItem;",
            ">;",
            "Lcom/metamoji/ch/ChSize;",
            "Lcom/metamoji/ch/pie/ChPieChart;",
            "Lcom/metamoji/ch/internal/transformer/ChOffsetTransformer;",
            "DD",
            "Lcom/metamoji/df/sprite/Graphics;",
            "Lkotlin/jvm/internal/Ref$DoubleRef;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p8

    .line 379
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    new-instance v3, Lcom/metamoji/ch/pie/ChPieChart$update$makeDataLabels$$inlined$sortByDescending$1;

    invoke-direct {v3}, Lcom/metamoji/ch/pie/ChPieChart$update$makeDataLabels$$inlined$sortByDescending$1;-><init>()V

    check-cast v3, Ljava/util/Comparator;

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 87
    :cond_0
    new-instance v3, Lcom/metamoji/ch/internal/ChNumberFormatter;

    invoke-direct {v3}, Lcom/metamoji/ch/internal/ChNumberFormatter;-><init>()V

    .line 88
    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/ch/ChSize;->getHeight()D

    move-result-wide v5

    .line 89
    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/ch/ChSize;->getHeight()D

    move-result-wide v7

    .line 91
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/metamoji/ch/pie/ChPieChart$update$ChPieDataLabelItem;

    const-wide v16, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 92
    iget-object v11, v1, Lcom/metamoji/ch/pie/ChPieChart;->setting:Lcom/metamoji/ch/pie/IChPieChartSetting;

    invoke-virtual {v10}, Lcom/metamoji/ch/pie/ChPieChart$update$ChPieDataLabelItem;->getCategoryIndex()I

    move-result v12

    invoke-interface {v11, v12}, Lcom/metamoji/ch/pie/IChPieChartSetting;->dataLabel(I)Lcom/metamoji/ch/pie/IChPieDataLabelSetting;

    move-result-object v11

    if-nez v11, :cond_1

    goto :goto_0

    .line 94
    :cond_1
    invoke-interface {v11}, Lcom/metamoji/ch/pie/IChPieDataLabelSetting;->getCategoryLabel()Lcom/metamoji/ch/IChLabelSetting;

    move-result-object v12

    const-wide v18, -0x4006de04abbbd2e8L    # -1.5707963267948966

    if-eqz v12, :cond_2

    .line 95
    new-instance v14, Lcom/metamoji/ch/internal/ChCleanGraphics;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v14, v2}, Lcom/metamoji/ch/internal/ChCleanGraphics;-><init>(Lcom/metamoji/df/sprite/Graphics;)V

    check-cast v14, Ljava/io/Closeable;

    :try_start_0
    move-object/from16 v20, v14

    check-cast v20, Lcom/metamoji/ch/internal/ChCleanGraphics;

    const-wide/16 v20, 0x0

    .line 96
    new-instance v15, Lcom/metamoji/df/sprite/PaintSolid;

    invoke-interface {v12}, Lcom/metamoji/ch/IChLabelSetting;->getColor()I

    move-result v4

    invoke-direct {v15, v4}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    check-cast v15, Lcom/metamoji/df/sprite/Paint;

    invoke-virtual {v2, v15}, Lcom/metamoji/df/sprite/Graphics;->setTextPaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 97
    invoke-interface {v12}, Lcom/metamoji/ch/IChLabelSetting;->getFontName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/metamoji/df/sprite/Graphics;->setFontName(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v15, v14

    .line 98
    :try_start_1
    invoke-interface {v12}, Lcom/metamoji/ch/IChLabelSetting;->getFontSize()D

    move-result-wide v13

    double-to-float v12, v13

    invoke-virtual {v2, v12}, Lcom/metamoji/df/sprite/Graphics;->setFontSize(F)V

    .line 99
    sget-object v12, Lcom/metamoji/ch/internal/ChUtils;->INSTANCE:Lcom/metamoji/ch/internal/ChUtils;

    invoke-virtual {v10}, Lcom/metamoji/ch/pie/ChPieChart$update$ChPieDataLabelItem;->getCategoryLabel()Ljava/lang/String;

    move-result-object v13

    move-wide/from16 v22, v5

    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/ch/ChSize;->getWidth()D

    move-result-wide v4

    invoke-virtual {v12, v2, v13, v4, v5}, Lcom/metamoji/ch/internal/ChUtils;->truncateTail(Lcom/metamoji/df/sprite/Graphics;Ljava/lang/String;D)Lcom/metamoji/ch/internal/ChStringWithSize;

    move-result-object v4

    invoke-virtual {v10, v4}, Lcom/metamoji/ch/pie/ChPieChart$update$ChPieDataLabelItem;->setSwsCategory(Lcom/metamoji/ch/internal/ChStringWithSize;)V

    .line 100
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v4, 0x0

    .line 95
    invoke-static {v15, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v15, v14

    :goto_1
    move-object v1, v0

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception v0

    invoke-static {v15, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    move-wide/from16 v22, v5

    const-wide/16 v20, 0x0

    .line 104
    :goto_2
    invoke-interface {v11}, Lcom/metamoji/ch/pie/IChPieDataLabelSetting;->getPercentageLabel()Lcom/metamoji/ch/IChDecimalLabelSetting;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 105
    invoke-interface {v5}, Lcom/metamoji/ch/IChDecimalLabelSetting;->getNumDecimal()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/metamoji/ch/internal/ChNumberFormatter;->setFractionDigits(I)V

    .line 106
    invoke-virtual {v10}, Lcom/metamoji/ch/pie/ChPieChart$update$ChPieDataLabelItem;->getValue()D

    move-result-wide v12

    move-object/from16 v6, p9

    iget-wide v14, v6, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    div-double/2addr v12, v14

    const/16 v14, 0x64

    int-to-double v14, v14

    mul-double/2addr v12, v14

    invoke-virtual {v3, v12, v13}, Lcom/metamoji/ch/internal/ChNumberFormatter;->stringFrom(D)Ljava/lang/String;

    move-result-object v12

    .line 107
    move-object v13, v12

    check-cast v13, Ljava/lang/CharSequence;

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v13

    if-lez v13, :cond_3

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "%"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 108
    :cond_3
    new-instance v13, Lcom/metamoji/ch/internal/ChCleanGraphics;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v13, v2}, Lcom/metamoji/ch/internal/ChCleanGraphics;-><init>(Lcom/metamoji/df/sprite/Graphics;)V

    check-cast v13, Ljava/io/Closeable;

    :try_start_3
    move-object v14, v13

    check-cast v14, Lcom/metamoji/ch/internal/ChCleanGraphics;

    .line 109
    new-instance v14, Lcom/metamoji/df/sprite/PaintSolid;

    invoke-interface {v5}, Lcom/metamoji/ch/IChDecimalLabelSetting;->getColor()I

    move-result v15

    invoke-direct {v14, v15}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    check-cast v14, Lcom/metamoji/df/sprite/Paint;

    invoke-virtual {v2, v14}, Lcom/metamoji/df/sprite/Graphics;->setTextPaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 110
    invoke-interface {v5}, Lcom/metamoji/ch/IChDecimalLabelSetting;->getFontName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Lcom/metamoji/df/sprite/Graphics;->setFontName(Ljava/lang/String;)V

    .line 111
    invoke-interface {v5}, Lcom/metamoji/ch/IChDecimalLabelSetting;->getFontSize()D

    move-result-wide v14

    double-to-float v5, v14

    invoke-virtual {v2, v5}, Lcom/metamoji/df/sprite/Graphics;->setFontSize(F)V

    .line 112
    sget-object v5, Lcom/metamoji/ch/internal/ChUtils;->INSTANCE:Lcom/metamoji/ch/internal/ChUtils;

    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/ch/ChSize;->getWidth()D

    move-result-wide v14

    invoke-virtual {v5, v2, v12, v14, v15}, Lcom/metamoji/ch/internal/ChUtils;->truncateTail(Lcom/metamoji/df/sprite/Graphics;Ljava/lang/String;D)Lcom/metamoji/ch/internal/ChStringWithSize;

    move-result-object v5

    invoke-virtual {v10, v5}, Lcom/metamoji/ch/pie/ChPieChart$update$ChPieDataLabelItem;->setSwsPercentage(Lcom/metamoji/ch/internal/ChStringWithSize;)V

    .line 113
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    const/4 v4, 0x0

    .line 108
    invoke-static {v13, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v1, v0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :catchall_4
    move-exception v0

    invoke-static {v13, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_4
    move-object/from16 v6, p9

    .line 117
    :goto_3
    invoke-interface {v11}, Lcom/metamoji/ch/pie/IChPieDataLabelSetting;->getLeaderLineWidth()D

    move-result-wide v4

    .line 118
    invoke-virtual {v10}, Lcom/metamoji/ch/pie/ChPieChart$update$ChPieDataLabelItem;->getSwsCategory()Lcom/metamoji/ch/internal/ChStringWithSize;

    move-result-object v11

    invoke-virtual {v11}, Lcom/metamoji/ch/internal/ChStringWithSize;->getSize()Lcom/metamoji/ch/ChSize;

    move-result-object v11

    invoke-virtual {v11}, Lcom/metamoji/ch/ChSize;->getHeight()D

    move-result-wide v11

    invoke-virtual {v10}, Lcom/metamoji/ch/pie/ChPieChart$update$ChPieDataLabelItem;->getSwsPercentage()Lcom/metamoji/ch/internal/ChStringWithSize;

    move-result-object v13

    invoke-virtual {v13}, Lcom/metamoji/ch/internal/ChStringWithSize;->getSize()Lcom/metamoji/ch/ChSize;

    move-result-object v13

    invoke-virtual {v13}, Lcom/metamoji/ch/ChSize;->getHeight()D

    move-result-wide v13

    add-double/2addr v11, v13

    add-double/2addr v11, v4

    .line 121
    invoke-virtual {v10}, Lcom/metamoji/ch/pie/ChPieChart$update$ChPieDataLabelItem;->getMiddleAngle()D

    move-result-wide v4

    cmpl-double v4, v4, v18

    if-ltz v4, :cond_5

    invoke-virtual {v10}, Lcom/metamoji/ch/pie/ChPieChart$update$ChPieDataLabelItem;->getMiddleAngle()D

    move-result-wide v4

    cmpg-double v4, v4, v16

    if-gez v4, :cond_5

    sub-double/2addr v7, v11

    cmpg-double v4, v7, v20

    if-gez v4, :cond_6

    move-wide/from16 v5, v22

    goto :goto_4

    :cond_5
    sub-double v4, v22, v11

    cmpg-double v11, v4, v20

    if-ltz v11, :cond_7

    move-wide/from16 v22, v4

    :cond_6
    const/4 v11, 0x1

    .line 128
    invoke-virtual {v10, v11}, Lcom/metamoji/ch/pie/ChPieChart$update$ChPieDataLabelItem;->setVisible(Z)V

    move v4, v11

    move-wide/from16 v5, v22

    goto/16 :goto_0

    :cond_7
    move-wide v5, v4

    :goto_4
    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_8
    move v11, v4

    const-wide v16, 0x3ff921fb54442d18L    # 1.5707963267948966

    const-wide v18, -0x4006de04abbbd2e8L    # -1.5707963267948966

    const-wide/16 v20, 0x0

    .line 132
    new-instance v2, Lcom/metamoji/ch/pie/ChPieChart$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/metamoji/ch/pie/ChPieChart$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->removeAll(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    .line 381
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v11, :cond_9

    new-instance v2, Lcom/metamoji/ch/pie/ChPieChart$update$makeDataLabels$$inlined$sortBy$1;

    invoke-direct {v2}, Lcom/metamoji/ch/pie/ChPieChart$update$makeDataLabels$$inlined$sortBy$1;-><init>()V

    check-cast v2, Ljava/util/Comparator;

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 136
    :cond_9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-wide/from16 v3, v20

    move-wide v5, v3

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x2

    if-eqz v7, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/metamoji/ch/pie/ChPieChart$update$ChPieDataLabelItem;

    .line 137
    iget-object v9, v1, Lcom/metamoji/ch/pie/ChPieChart;->setting:Lcom/metamoji/ch/pie/IChPieChartSetting;

    invoke-virtual {v7}, Lcom/metamoji/ch/pie/ChPieChart$update$ChPieDataLabelItem;->getCategoryIndex()I

    move-result v10

    invoke-interface {v9, v10}, Lcom/metamoji/ch/pie/IChPieChartSetting;->dataLabel(I)Lcom/metamoji/ch/pie/IChPieDataLabelSetting;

    move-result-object v9

    if-nez v9, :cond_a

    goto :goto_5

    .line 138
    :cond_a
    invoke-virtual {v7}, Lcom/metamoji/ch/pie/ChPieChart$update$ChPieDataLabelItem;->getSwsCategory()Lcom/metamoji/ch/internal/ChStringWithSize;

    move-result-object v10

    .line 139
    invoke-virtual {v7}, Lcom/metamoji/ch/pie/ChPieChart$update$ChPieDataLabelItem;->getSwsPercentage()Lcom/metamoji/ch/internal/ChStringWithSize;

    move-result-object v11

    .line 141
    invoke-interface {v9}, Lcom/metamoji/ch/pie/IChPieDataLabelSetting;->getLeaderLineWidth()D

    move-result-wide v12

    .line 142
    invoke-virtual {v10}, Lcom/metamoji/ch/internal/ChStringWithSize;->getSize()Lcom/metamoji/ch/ChSize;

    move-result-object v9

    invoke-virtual {v9}, Lcom/metamoji/ch/ChSize;->getWidth()D

    move-result-wide v14

    invoke-virtual {v11}, Lcom/metamoji/ch/internal/ChStringWithSize;->getSize()Lcom/metamoji/ch/ChSize;

    move-result-object v9

    invoke-virtual {v9}, Lcom/metamoji/ch/ChSize;->getWidth()D

    move-result-wide v22

    cmpl-double v9, v14, v22

    if-lez v9, :cond_b

    invoke-virtual {v10}, Lcom/metamoji/ch/internal/ChStringWithSize;->getSize()Lcom/metamoji/ch/ChSize;

    move-result-object v9

    goto :goto_6

    :cond_b
    invoke-virtual {v11}, Lcom/metamoji/ch/internal/ChStringWithSize;->getSize()Lcom/metamoji/ch/ChSize;

    move-result-object v9

    :goto_6
    invoke-virtual {v9}, Lcom/metamoji/ch/ChSize;->getWidth()D

    move-result-wide v14

    move-wide/from16 v27, v14

    .line 143
    invoke-virtual {v10}, Lcom/metamoji/ch/internal/ChStringWithSize;->getSize()Lcom/metamoji/ch/ChSize;

    move-result-object v9

    invoke-virtual {v9}, Lcom/metamoji/ch/ChSize;->getHeight()D

    move-result-wide v14

    invoke-virtual {v11}, Lcom/metamoji/ch/internal/ChStringWithSize;->getSize()Lcom/metamoji/ch/ChSize;

    move-result-object v9

    invoke-virtual {v9}, Lcom/metamoji/ch/ChSize;->getHeight()D

    move-result-wide v22

    add-double v14, v14, v22

    add-double v29, v14, v12

    .line 144
    invoke-virtual {v7}, Lcom/metamoji/ch/pie/ChPieChart$update$ChPieDataLabelItem;->getMiddlePiePercentagePoint()Lcom/metamoji/ch/ChPoint;

    move-result-object v9

    move-object/from16 v11, p3

    invoke-virtual {v11, v9}, Lcom/metamoji/ch/internal/transformer/ChOffsetTransformer;->point(Lcom/metamoji/ch/ChPoint;)Lcom/metamoji/ch/ChPoint;

    move-result-object v9

    .line 146
    invoke-virtual {v7}, Lcom/metamoji/ch/pie/ChPieChart$update$ChPieDataLabelItem;->getMiddleAngle()D

    move-result-wide v14

    cmpl-double v14, v14, v18

    if-ltz v14, :cond_c

    invoke-virtual {v7}, Lcom/metamoji/ch/pie/ChPieChart$update$ChPieDataLabelItem;->getMiddleAngle()D

    move-result-wide v14

    cmpg-double v14, v14, v16

    if-gez v14, :cond_c

    .line 147
    new-instance v22, Lcom/metamoji/ch/ChRect;

    sub-double v23, p4, v27

    invoke-virtual {v9}, Lcom/metamoji/ch/ChPoint;->getY()D

    move-result-wide v14

    invoke-virtual {v10}, Lcom/metamoji/ch/internal/ChStringWithSize;->getSize()Lcom/metamoji/ch/ChSize;

    move-result-object v9

    invoke-virtual {v9}, Lcom/metamoji/ch/ChSize;->getHeight()D

    move-result-wide v9

    int-to-double v0, v8

    div-double/2addr v12, v0

    add-double/2addr v9, v12

    sub-double v25, v14, v9

    invoke-direct/range {v22 .. v30}, Lcom/metamoji/ch/ChRect;-><init>(DDDD)V

    goto :goto_7

    .line 149
    :cond_c
    new-instance v22, Lcom/metamoji/ch/ChRect;

    invoke-virtual {v9}, Lcom/metamoji/ch/ChPoint;->getY()D

    move-result-wide v0

    invoke-virtual {v10}, Lcom/metamoji/ch/internal/ChStringWithSize;->getSize()Lcom/metamoji/ch/ChSize;

    move-result-object v9

    invoke-virtual {v9}, Lcom/metamoji/ch/ChSize;->getHeight()D

    move-result-wide v9

    int-to-double v14, v8

    div-double/2addr v12, v14

    add-double/2addr v9, v12

    sub-double v25, v0, v9

    const-wide/16 v23, 0x0

    invoke-direct/range {v22 .. v30}, Lcom/metamoji/ch/ChRect;-><init>(DDDD)V

    :goto_7
    move-object/from16 v0, v22

    .line 152
    invoke-virtual {v0}, Lcom/metamoji/ch/ChRect;->getMaxY()D

    move-result-wide v8

    cmpl-double v1, v8, p6

    if-lez v1, :cond_d

    .line 153
    invoke-virtual {v0}, Lcom/metamoji/ch/ChRect;->getY()D

    move-result-wide v8

    invoke-virtual {v0}, Lcom/metamoji/ch/ChRect;->getMaxY()D

    move-result-wide v12

    sub-double v12, p6, v12

    add-double/2addr v8, v12

    invoke-virtual {v0, v8, v9}, Lcom/metamoji/ch/ChRect;->setY(D)V

    goto :goto_8

    .line 154
    :cond_d
    invoke-virtual {v0}, Lcom/metamoji/ch/ChRect;->getMinY()D

    move-result-wide v8

    cmpg-double v1, v8, v20

    if-gez v1, :cond_e

    .line 155
    invoke-virtual {v0}, Lcom/metamoji/ch/ChRect;->getY()D

    move-result-wide v8

    invoke-virtual {v0}, Lcom/metamoji/ch/ChRect;->getMinY()D

    move-result-wide v12

    neg-double v12, v12

    add-double/2addr v8, v12

    invoke-virtual {v0, v8, v9}, Lcom/metamoji/ch/ChRect;->setY(D)V

    .line 158
    :cond_e
    :goto_8
    invoke-virtual {v7}, Lcom/metamoji/ch/pie/ChPieChart$update$ChPieDataLabelItem;->getMiddleAngle()D

    move-result-wide v8

    cmpl-double v1, v8, v18

    if-ltz v1, :cond_10

    invoke-virtual {v7}, Lcom/metamoji/ch/pie/ChPieChart$update$ChPieDataLabelItem;->getMiddleAngle()D

    move-result-wide v8

    cmpg-double v1, v8, v16

    if-gez v1, :cond_10

    .line 159
    invoke-virtual {v0}, Lcom/metamoji/ch/ChRect;->getMinY()D

    move-result-wide v8

    cmpl-double v1, v5, v8

    if-lez v1, :cond_f

    invoke-virtual {v0}, Lcom/metamoji/ch/ChRect;->getY()D

    move-result-wide v8

    invoke-virtual {v0}, Lcom/metamoji/ch/ChRect;->getMinY()D

    move-result-wide v12

    sub-double v12, v5, v12

    add-double/2addr v8, v12

    invoke-virtual {v0, v8, v9}, Lcom/metamoji/ch/ChRect;->setY(D)V

    .line 160
    :cond_f
    invoke-virtual {v0}, Lcom/metamoji/ch/ChRect;->getMaxY()D

    move-result-wide v8

    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    goto :goto_9

    .line 162
    :cond_10
    invoke-virtual {v0}, Lcom/metamoji/ch/ChRect;->getMinY()D

    move-result-wide v8

    cmpl-double v1, v3, v8

    if-lez v1, :cond_11

    invoke-virtual {v0}, Lcom/metamoji/ch/ChRect;->getY()D

    move-result-wide v8

    invoke-virtual {v0}, Lcom/metamoji/ch/ChRect;->getMinY()D

    move-result-wide v12

    sub-double v12, v3, v12

    add-double/2addr v8, v12

    invoke-virtual {v0, v8, v9}, Lcom/metamoji/ch/ChRect;->setY(D)V

    .line 163
    :cond_11
    invoke-virtual {v0}, Lcom/metamoji/ch/ChRect;->getMaxY()D

    move-result-wide v8

    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    .line 165
    :goto_9
    invoke-virtual {v7, v0}, Lcom/metamoji/ch/pie/ChPieChart$update$ChPieDataLabelItem;->setCategoryPercentageRect(Lcom/metamoji/ch/ChRect;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    goto/16 :goto_5

    .line 171
    :cond_12
    move-object/from16 v0, p0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->reversed(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-wide/from16 v1, p6

    move-wide v3, v1

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/ch/pie/ChPieChart$update$ChPieDataLabelItem;

    .line 172
    invoke-virtual {v5}, Lcom/metamoji/ch/pie/ChPieChart$update$ChPieDataLabelItem;->getCategoryPercentageRect()Lcom/metamoji/ch/ChRect;

    move-result-object v6

    .line 173
    invoke-virtual {v6}, Lcom/metamoji/ch/ChRect;->getMaxY()D

    move-result-wide v9

    cmpl-double v7, v9, p6

    if-lez v7, :cond_13

    .line 174
    invoke-virtual {v6}, Lcom/metamoji/ch/ChRect;->getY()D

    move-result-wide v9

    invoke-virtual {v6}, Lcom/metamoji/ch/ChRect;->getMaxY()D

    move-result-wide v11

    sub-double v11, p6, v11

    add-double/2addr v9, v11

    invoke-virtual {v6, v9, v10}, Lcom/metamoji/ch/ChRect;->setY(D)V

    goto :goto_b

    .line 175
    :cond_13
    invoke-virtual {v6}, Lcom/metamoji/ch/ChRect;->getMinY()D

    move-result-wide v9

    cmpg-double v7, v9, v20

    if-gez v7, :cond_14

    .line 176
    invoke-virtual {v6}, Lcom/metamoji/ch/ChRect;->getY()D

    move-result-wide v9

    invoke-virtual {v6}, Lcom/metamoji/ch/ChRect;->getMinY()D

    move-result-wide v11

    neg-double v11, v11

    add-double/2addr v9, v11

    invoke-virtual {v6, v9, v10}, Lcom/metamoji/ch/ChRect;->setY(D)V

    :cond_14
    :goto_b
    int-to-double v9, v8

    div-double v9, p4, v9

    .line 179
    invoke-virtual {v6}, Lcom/metamoji/ch/ChRect;->getMinX()D

    move-result-wide v11

    cmpl-double v7, v9, v11

    if-lez v7, :cond_16

    .line 180
    invoke-virtual {v6}, Lcom/metamoji/ch/ChRect;->getMaxY()D

    move-result-wide v9

    cmpg-double v7, v3, v9

    if-gez v7, :cond_15

    invoke-virtual {v6}, Lcom/metamoji/ch/ChRect;->getY()D

    move-result-wide v9

    invoke-virtual {v6}, Lcom/metamoji/ch/ChRect;->getMaxY()D

    move-result-wide v11

    sub-double v11, v3, v11

    add-double/2addr v9, v11

    invoke-virtual {v6, v9, v10}, Lcom/metamoji/ch/ChRect;->setY(D)V

    .line 181
    :cond_15
    invoke-virtual {v6}, Lcom/metamoji/ch/ChRect;->getMinY()D

    move-result-wide v9

    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    goto :goto_c

    .line 183
    :cond_16
    invoke-virtual {v6}, Lcom/metamoji/ch/ChRect;->getMaxY()D

    move-result-wide v9

    cmpg-double v7, v1, v9

    if-gez v7, :cond_17

    invoke-virtual {v6}, Lcom/metamoji/ch/ChRect;->getY()D

    move-result-wide v9

    invoke-virtual {v6}, Lcom/metamoji/ch/ChRect;->getMaxY()D

    move-result-wide v11

    sub-double v11, v1, v11

    add-double/2addr v9, v11

    invoke-virtual {v6, v9, v10}, Lcom/metamoji/ch/ChRect;->setY(D)V

    .line 184
    :cond_17
    invoke-virtual {v6}, Lcom/metamoji/ch/ChRect;->getMinY()D

    move-result-wide v9

    invoke-static {v1, v2, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    .line 186
    :goto_c
    invoke-virtual {v5, v6}, Lcom/metamoji/ch/pie/ChPieChart$update$ChPieDataLabelItem;->setCategoryPercentageRect(Lcom/metamoji/ch/ChRect;)V

    goto/16 :goto_a

    :cond_18
    return-void
.end method

.method static final update$makeDataLabels$lambda$6(Lcom/metamoji/ch/pie/ChPieChart$update$ChPieDataLabelItem;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lcom/metamoji/ch/pie/ChPieChart$update$ChPieDataLabelItem;->isVisible()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static final update$updateLegendItems(Lcom/metamoji/ch/pie/ChPieChart;ILcom/metamoji/ch/IChDataSource;I)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x0

    move/from16 v3, p1

    .line 69
    invoke-static {v2, v3}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 366
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .line 375
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v4, v2

    check-cast v4, Lkotlin/collections/IntIterator;

    invoke-virtual {v4}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v4

    .line 70
    invoke-interface {v1, v4}, Lcom/metamoji/ch/IChDataSource;->categoryTitle(I)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    const-string v5, ""

    :cond_1
    move-object v8, v5

    move/from16 v5, p3

    .line 71
    invoke-interface {v1, v4, v5}, Lcom/metamoji/ch/IChDataSource;->data(II)Ljava/lang/Double;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 72
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const-wide/16 v9, 0x0

    cmpl-double v6, v6, v9

    if-lez v6, :cond_2

    .line 73
    new-instance v6, Lcom/metamoji/ch/ChLegend$Item;

    .line 74
    sget-object v7, Lcom/metamoji/ch/ChLegend$Item$Element;->BOX:Lcom/metamoji/ch/ChLegend$Item$Element;

    check-cast v7, Ljava/lang/Enum;

    invoke-static {v7}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v7

    const-string v9, "of(...)"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iget-object v9, v0, Lcom/metamoji/ch/pie/ChPieChart;->setting:Lcom/metamoji/ch/pie/IChPieChartSetting;

    invoke-interface {v9, v4}, Lcom/metamoji/ch/pie/IChPieChartSetting;->fillColor(I)I

    move-result v9

    .line 77
    iget-object v10, v0, Lcom/metamoji/ch/pie/ChPieChart;->setting:Lcom/metamoji/ch/pie/IChPieChartSetting;

    invoke-interface {v10, v4}, Lcom/metamoji/ch/pie/IChPieChartSetting;->lineColor(I)I

    move-result v10

    .line 78
    iget-object v11, v0, Lcom/metamoji/ch/pie/ChPieChart;->setting:Lcom/metamoji/ch/pie/IChPieChartSetting;

    invoke-interface {v11, v4}, Lcom/metamoji/ch/pie/IChPieChartSetting;->lineWidth(I)D

    move-result-wide v11

    const/16 v17, 0xe0

    const/16 v18, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    .line 73
    invoke-direct/range {v6 .. v18}, Lcom/metamoji/ch/ChLegend$Item;-><init>(Ljava/util/EnumSet;Ljava/lang/String;IIDLcom/metamoji/ch/ChMarker;DIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_0

    .line 374
    invoke-interface {v3, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 378
    :cond_3
    check-cast v3, Ljava/util/List;

    .line 69
    iput-object v3, v0, Lcom/metamoji/ch/pie/ChPieChart;->legendItems:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getChartSize()Lcom/metamoji/ch/ChSize;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/metamoji/ch/pie/ChPieChart;->chartSize:Lcom/metamoji/ch/ChSize;

    return-object v0
.end method

.method public getDataSource()Lcom/metamoji/ch/IChDataSource;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/metamoji/ch/pie/ChPieChart;->dataSource:Lcom/metamoji/ch/IChDataSource;

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

    .line 26
    iget-object v0, p0, Lcom/metamoji/ch/pie/ChPieChart;->legendItems:Ljava/util/List;

    return-object v0
.end method

.method public final getSetting()Lcom/metamoji/ch/pie/IChPieChartSetting;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/metamoji/ch/pie/ChPieChart;->setting:Lcom/metamoji/ch/pie/IChPieChartSetting;

    return-object v0
.end method

.method public getSprite()Lcom/metamoji/df/sprite/Sprite;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/metamoji/ch/pie/ChPieChart;->sprite:Lcom/metamoji/df/sprite/Sprite;

    return-object v0
.end method

.method public update(Lcom/metamoji/ch/IChDataSource;Lcom/metamoji/ch/ChSize;)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object/from16 v0, p2

    const-string v2, "dataSource"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "chartSize"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iput-object v4, v1, Lcom/metamoji/ch/pie/ChPieChart;->dataSource:Lcom/metamoji/ch/IChDataSource;

    .line 33
    iput-object v0, v1, Lcom/metamoji/ch/pie/ChPieChart;->chartSize:Lcom/metamoji/ch/ChSize;

    .line 35
    invoke-virtual {v1}, Lcom/metamoji/ch/pie/ChPieChart;->getSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v2

    invoke-virtual {v0}, Lcom/metamoji/ch/ChSize;->getWidth()D

    move-result-wide v5

    double-to-float v3, v5

    invoke-virtual {v2, v3}, Lcom/metamoji/df/sprite/Sprite;->setWidth(F)V

    .line 36
    invoke-virtual {v1}, Lcom/metamoji/ch/pie/ChPieChart;->getSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v2

    invoke-virtual {v0}, Lcom/metamoji/ch/ChSize;->getHeight()D

    move-result-wide v5

    double-to-float v3, v5

    invoke-virtual {v2, v3}, Lcom/metamoji/df/sprite/Sprite;->setHeight(F)V

    .line 38
    invoke-virtual {v0}, Lcom/metamoji/ch/ChSize;->getWidth()D

    move-result-wide v10

    .line 39
    invoke-virtual {v0}, Lcom/metamoji/ch/ChSize;->getHeight()D

    move-result-wide v12

    .line 41
    invoke-interface {v4}, Lcom/metamoji/ch/IChDataSource;->getCategoryCount()I

    move-result v3

    .line 42
    invoke-interface {v4}, Lcom/metamoji/ch/IChDataSource;->getSeriesCount()I

    move-result v0

    .line 56
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v2

    check-cast v9, Ljava/util/List;

    .line 58
    invoke-virtual {v1}, Lcom/metamoji/ch/pie/ChPieChart;->getSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v8

    .line 59
    invoke-virtual {v8}, Lcom/metamoji/df/sprite/Graphics;->clear()V

    .line 61
    iget-object v2, v1, Lcom/metamoji/ch/pie/ChPieChart;->setting:Lcom/metamoji/ch/pie/IChPieChartSetting;

    invoke-interface {v2}, Lcom/metamoji/ch/pie/IChPieChartSetting;->getValueSelectSeries()I

    move-result v2

    .line 62
    iget-object v5, v1, Lcom/metamoji/ch/pie/ChPieChart;->setting:Lcom/metamoji/ch/pie/IChPieChartSetting;

    invoke-interface {v5}, Lcom/metamoji/ch/pie/IChPieChartSetting;->getChartWidthRatio()D

    move-result-wide v5

    .line 63
    new-instance v7, Lkotlin/jvm/internal/Ref$DoubleRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$DoubleRef;-><init>()V

    const/4 v14, 0x2

    int-to-double v14, v14

    move/from16 p2, v0

    div-double v0, v10, v14

    mul-double/2addr v5, v0

    move/from16 v17, v2

    move/from16 v16, v3

    div-double v2, v12, v14

    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    iput-wide v5, v7, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    .line 64
    new-instance v5, Lcom/metamoji/ch/ChSize;

    move-object/from16 v18, v8

    move-object v6, v9

    iget-wide v8, v7, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    mul-double/2addr v8, v14

    sub-double v8, v10, v8

    div-double/2addr v8, v14

    invoke-direct {v5, v8, v9, v12, v13}, Lcom/metamoji/ch/ChSize;-><init>(DD)V

    .line 65
    new-instance v8, Lcom/metamoji/ch/internal/transformer/ChOffsetTransformer;

    invoke-direct {v8, v0, v1, v2, v3}, Lcom/metamoji/ch/internal/transformer/ChOffsetTransformer;-><init>(DD)V

    .line 66
    new-instance v9, Lkotlin/jvm/internal/Ref$DoubleRef;

    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$DoubleRef;-><init>()V

    move/from16 v1, p2

    move-object v14, v5

    move-object v2, v8

    move-object v5, v9

    move/from16 v3, v16

    move/from16 v0, v17

    move-object/from16 v8, v18

    move-object v9, v6

    move-object/from16 v6, p0

    .line 356
    invoke-static/range {v0 .. v9}, Lcom/metamoji/ch/pie/ChPieChart;->update$drawPies(IILcom/metamoji/ch/internal/transformer/ChOffsetTransformer;ILcom/metamoji/ch/IChDataSource;Lkotlin/jvm/internal/Ref$DoubleRef;Lcom/metamoji/ch/pie/ChPieChart;Lkotlin/jvm/internal/Ref$DoubleRef;Lcom/metamoji/df/sprite/Graphics;Ljava/util/List;)V

    move-object v1, v14

    move-wide/from16 v19, v12

    move v12, v0

    move-object v0, v9

    move-object v9, v5

    move/from16 v21, v3

    move-object v3, v2

    move-object v2, v6

    move-wide/from16 v6, v19

    move-wide/from16 v19, v10

    move/from16 v11, v21

    move-object v10, v4

    move-wide/from16 v4, v19

    .line 358
    invoke-static/range {v0 .. v9}, Lcom/metamoji/ch/pie/ChPieChart;->update$makeDataLabels(Ljava/util/List;Lcom/metamoji/ch/ChSize;Lcom/metamoji/ch/pie/ChPieChart;Lcom/metamoji/ch/internal/transformer/ChOffsetTransformer;DDLcom/metamoji/df/sprite/Graphics;Lkotlin/jvm/internal/Ref$DoubleRef;)V

    move-object v1, v2

    move-object v2, v3

    move-wide v3, v4

    move-object v5, v8

    .line 360
    invoke-static/range {v0 .. v5}, Lcom/metamoji/ch/pie/ChPieChart;->update$drawDataLabels(Ljava/util/List;Lcom/metamoji/ch/pie/ChPieChart;Lcom/metamoji/ch/internal/transformer/ChOffsetTransformer;DLcom/metamoji/df/sprite/Graphics;)V

    .line 362
    invoke-static {v1, v11, v10, v12}, Lcom/metamoji/ch/pie/ChPieChart;->update$updateLegendItems(Lcom/metamoji/ch/pie/ChPieChart;ILcom/metamoji/ch/IChDataSource;I)V

    return-void
.end method
