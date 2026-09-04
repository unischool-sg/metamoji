.class public final Lcom/metamoji/ch/ChLegend;
.super Ljava/lang/Object;
.source "ChLegend.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ch/ChLegend$Item;,
        Lcom/metamoji/ch/ChLegend$ItemWithLayout;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChLegend.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChLegend.kt\ncom/metamoji/ch/ChLegend\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,223:1\n1869#2,2:224\n1563#2:226\n1634#2,3:227\n1573#2:230\n1604#2,4:231\n*S KotlinDebug\n*F\n+ 1 ChLegend.kt\ncom/metamoji/ch/ChLegend\n*L\n219#1:224,2\n123#1:226\n123#1:227,3\n146#1:230\n146#1:231,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001:\u0002\u0018\u0019B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001c\u0010\u0014\u001a\u00020\u00152\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u00122\u0006\u0010\u000e\u001a\u00020\rR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u001e\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\r@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/metamoji/ch/ChLegend;",
        "",
        "setting",
        "Lcom/metamoji/ch/IChLegendSetting;",
        "<init>",
        "(Lcom/metamoji/ch/IChLegendSetting;)V",
        "getSetting",
        "()Lcom/metamoji/ch/IChLegendSetting;",
        "sprite",
        "Lcom/metamoji/df/sprite/Sprite;",
        "getSprite",
        "()Lcom/metamoji/df/sprite/Sprite;",
        "value",
        "Lcom/metamoji/ch/ChSize;",
        "legendSize",
        "getLegendSize",
        "()Lcom/metamoji/ch/ChSize;",
        "itemWithLayouts",
        "",
        "Lcom/metamoji/ch/ChLegend$ItemWithLayout;",
        "update",
        "",
        "items",
        "Lcom/metamoji/ch/ChLegend$Item;",
        "Item",
        "ItemWithLayout",
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
.field private itemWithLayouts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/ch/ChLegend$ItemWithLayout;",
            ">;"
        }
    .end annotation
.end field

.field private legendSize:Lcom/metamoji/ch/ChSize;

.field private final setting:Lcom/metamoji/ch/IChLegendSetting;

.field private final sprite:Lcom/metamoji/df/sprite/Sprite;


# direct methods
.method public constructor <init>(Lcom/metamoji/ch/IChLegendSetting;)V
    .locals 2

    const-string v0, "setting"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ch/ChLegend;->setting:Lcom/metamoji/ch/IChLegendSetting;

    .line 15
    new-instance p1, Lcom/metamoji/df/sprite/Sprite;

    invoke-direct {p1}, Lcom/metamoji/df/sprite/Sprite;-><init>()V

    const/4 v0, 0x1

    .line 16
    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Sprite;->setClipping(Z)V

    .line 15
    iput-object p1, p0, Lcom/metamoji/ch/ChLegend;->sprite:Lcom/metamoji/df/sprite/Sprite;

    .line 19
    new-instance p1, Lcom/metamoji/ch/ChSize;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1, v0, v1}, Lcom/metamoji/ch/ChSize;-><init>(DD)V

    iput-object p1, p0, Lcom/metamoji/ch/ChLegend;->legendSize:Lcom/metamoji/ch/ChSize;

    .line 22
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ch/ChLegend;->itemWithLayouts:Ljava/util/List;

    return-void
.end method

.method private static final update$lambda$5$drawOneItem(Lcom/metamoji/df/sprite/Graphics;Lcom/metamoji/ch/ChLegend;Lcom/metamoji/ch/ChLegend$ItemWithLayout;)V
    .locals 13

    .line 163
    new-instance v0, Lcom/metamoji/ch/internal/ChCleanGraphics;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, p0}, Lcom/metamoji/ch/internal/ChCleanGraphics;-><init>(Lcom/metamoji/df/sprite/Graphics;)V

    move-object v1, v0

    check-cast v1, Ljava/io/Closeable;

    :try_start_0
    move-object v0, v1

    check-cast v0, Lcom/metamoji/ch/internal/ChCleanGraphics;

    .line 164
    invoke-virtual {p2}, Lcom/metamoji/ch/ChLegend$ItemWithLayout;->getItem()Lcom/metamoji/ch/ChLegend$Item;

    move-result-object v0

    .line 165
    invoke-virtual {p2}, Lcom/metamoji/ch/ChLegend$ItemWithLayout;->getRect()Lcom/metamoji/ch/ChRect;

    move-result-object v2

    .line 168
    invoke-virtual {v0}, Lcom/metamoji/ch/ChLegend$Item;->getElements()Ljava/util/EnumSet;

    move-result-object v3

    sget-object v4, Lcom/metamoji/ch/ChLegend$Item$Element;->BOX:Lcom/metamoji/ch/ChLegend$Item$Element;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    if-eqz v3, :cond_0

    .line 169
    new-instance v3, Lcom/metamoji/df/sprite/PaintSolid;

    invoke-virtual {v0}, Lcom/metamoji/ch/ChLegend$Item;->getFillColor()I

    move-result v6

    invoke-direct {v3, v6}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    check-cast v3, Lcom/metamoji/df/sprite/Paint;

    invoke-virtual {p0, v3}, Lcom/metamoji/df/sprite/Graphics;->setFillPaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 170
    new-instance v3, Lcom/metamoji/df/sprite/PaintSolid;

    invoke-virtual {v0}, Lcom/metamoji/ch/ChLegend$Item;->getLineColor()I

    move-result v6

    invoke-direct {v3, v6}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    check-cast v3, Lcom/metamoji/df/sprite/Paint;

    invoke-virtual {p0, v3}, Lcom/metamoji/df/sprite/Graphics;->setLinePaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 171
    invoke-virtual {v0}, Lcom/metamoji/ch/ChLegend$Item;->getLineWidth()D

    move-result-wide v6

    double-to-float v3, v6

    invoke-virtual {p0, v3}, Lcom/metamoji/df/sprite/Graphics;->setLineWidth(F)V

    .line 173
    invoke-virtual {v2}, Lcom/metamoji/ch/ChRect;->getX()D

    move-result-wide v6

    iget-object v3, p1, Lcom/metamoji/ch/ChLegend;->setting:Lcom/metamoji/ch/IChLegendSetting;

    invoke-interface {v3}, Lcom/metamoji/ch/IChLegendSetting;->getItemMargin()D

    move-result-wide v8

    add-double/2addr v6, v8

    double-to-float v3, v6

    .line 174
    invoke-virtual {v2}, Lcom/metamoji/ch/ChRect;->getY()D

    move-result-wide v6

    invoke-virtual {v2}, Lcom/metamoji/ch/ChRect;->getHeight()D

    move-result-wide v8

    iget-object v10, p1, Lcom/metamoji/ch/ChLegend;->setting:Lcom/metamoji/ch/IChLegendSetting;

    invoke-interface {v10}, Lcom/metamoji/ch/IChLegendSetting;->getBoxHeight()D

    move-result-wide v10

    sub-double/2addr v8, v10

    div-double/2addr v8, v4

    add-double/2addr v6, v8

    double-to-float v6, v6

    .line 175
    iget-object v7, p1, Lcom/metamoji/ch/ChLegend;->setting:Lcom/metamoji/ch/IChLegendSetting;

    invoke-interface {v7}, Lcom/metamoji/ch/IChLegendSetting;->getBoxWidth()D

    move-result-wide v7

    double-to-float v7, v7

    .line 176
    iget-object v8, p1, Lcom/metamoji/ch/ChLegend;->setting:Lcom/metamoji/ch/IChLegendSetting;

    invoke-interface {v8}, Lcom/metamoji/ch/IChLegendSetting;->getBoxHeight()D

    move-result-wide v8

    double-to-float v8, v8

    .line 172
    invoke-virtual {p0, v3, v6, v7, v8}, Lcom/metamoji/df/sprite/Graphics;->drawRect(FFFF)V

    .line 181
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/ch/ChLegend$Item;->getElements()Ljava/util/EnumSet;

    move-result-object v3

    sget-object v6, Lcom/metamoji/ch/ChLegend$Item$Element;->LINE:Lcom/metamoji/ch/ChLegend$Item$Element;

    invoke-virtual {v3, v6}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 182
    new-instance v3, Lcom/metamoji/df/sprite/PaintSolid;

    invoke-virtual {v0}, Lcom/metamoji/ch/ChLegend$Item;->getLineColor()I

    move-result v6

    invoke-direct {v3, v6}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    check-cast v3, Lcom/metamoji/df/sprite/Paint;

    invoke-virtual {p0, v3}, Lcom/metamoji/df/sprite/Graphics;->setLinePaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 183
    invoke-virtual {v0}, Lcom/metamoji/ch/ChLegend$Item;->getLineWidth()D

    move-result-wide v6

    double-to-float v3, v6

    invoke-virtual {p0, v3}, Lcom/metamoji/df/sprite/Graphics;->setLineWidth(F)V

    .line 185
    invoke-virtual {v2}, Lcom/metamoji/ch/ChRect;->getX()D

    move-result-wide v6

    iget-object v3, p1, Lcom/metamoji/ch/ChLegend;->setting:Lcom/metamoji/ch/IChLegendSetting;

    invoke-interface {v3}, Lcom/metamoji/ch/IChLegendSetting;->getItemMargin()D

    move-result-wide v8

    add-double/2addr v6, v8

    double-to-float v3, v6

    .line 186
    invoke-virtual {v2}, Lcom/metamoji/ch/ChRect;->getY()D

    move-result-wide v6

    invoke-virtual {v2}, Lcom/metamoji/ch/ChRect;->getHeight()D

    move-result-wide v8

    div-double/2addr v8, v4

    add-double/2addr v6, v8

    double-to-float v6, v6

    .line 184
    invoke-virtual {p0, v3, v6}, Lcom/metamoji/df/sprite/Graphics;->moveTo(FF)V

    .line 189
    invoke-virtual {v2}, Lcom/metamoji/ch/ChRect;->getX()D

    move-result-wide v6

    iget-object v3, p1, Lcom/metamoji/ch/ChLegend;->setting:Lcom/metamoji/ch/IChLegendSetting;

    invoke-interface {v3}, Lcom/metamoji/ch/IChLegendSetting;->getItemMargin()D

    move-result-wide v8

    add-double/2addr v6, v8

    iget-object v3, p1, Lcom/metamoji/ch/ChLegend;->setting:Lcom/metamoji/ch/IChLegendSetting;

    invoke-interface {v3}, Lcom/metamoji/ch/IChLegendSetting;->getBoxWidth()D

    move-result-wide v8

    add-double/2addr v6, v8

    double-to-float v3, v6

    .line 190
    invoke-virtual {v2}, Lcom/metamoji/ch/ChRect;->getY()D

    move-result-wide v6

    invoke-virtual {v2}, Lcom/metamoji/ch/ChRect;->getHeight()D

    move-result-wide v8

    div-double/2addr v8, v4

    add-double/2addr v6, v8

    double-to-float v6, v6

    .line 188
    invoke-virtual {p0, v3, v6}, Lcom/metamoji/df/sprite/Graphics;->lineTo(FF)V

    .line 192
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Graphics;->draw()V

    .line 196
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/ch/ChLegend$Item;->getElements()Ljava/util/EnumSet;

    move-result-object v3

    sget-object v6, Lcom/metamoji/ch/ChLegend$Item$Element;->MARKER:Lcom/metamoji/ch/ChLegend$Item$Element;

    invoke-virtual {v3, v6}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 197
    invoke-virtual {v0}, Lcom/metamoji/ch/ChLegend$Item;->getMarker()Lcom/metamoji/ch/ChMarker;

    move-result-object v6

    .line 199
    invoke-virtual {v2}, Lcom/metamoji/ch/ChRect;->getX()D

    move-result-wide v7

    iget-object v3, p1, Lcom/metamoji/ch/ChLegend;->setting:Lcom/metamoji/ch/IChLegendSetting;

    invoke-interface {v3}, Lcom/metamoji/ch/IChLegendSetting;->getItemMargin()D

    move-result-wide v9

    add-double/2addr v7, v9

    iget-object v3, p1, Lcom/metamoji/ch/ChLegend;->setting:Lcom/metamoji/ch/IChLegendSetting;

    invoke-interface {v3}, Lcom/metamoji/ch/IChLegendSetting;->getBoxWidth()D

    move-result-wide v9

    div-double/2addr v9, v4

    add-double/2addr v7, v9

    double-to-float v8, v7

    .line 200
    invoke-virtual {v2}, Lcom/metamoji/ch/ChRect;->getY()D

    move-result-wide v9

    invoke-virtual {v2}, Lcom/metamoji/ch/ChRect;->getHeight()D

    move-result-wide v11

    div-double/2addr v11, v4

    add-double/2addr v9, v11

    double-to-float v9, v9

    .line 201
    invoke-virtual {v0}, Lcom/metamoji/ch/ChLegend$Item;->getMarkerSize()D

    move-result-wide v3

    double-to-float v10, v3

    .line 202
    invoke-virtual {v0}, Lcom/metamoji/ch/ChLegend$Item;->getMarkerColor()I

    move-result v11

    move-object v7, p0

    .line 197
    invoke-virtual/range {v6 .. v11}, Lcom/metamoji/ch/ChMarker;->draw(Lcom/metamoji/df/sprite/Graphics;FFFI)V

    goto :goto_0

    :cond_2
    move-object v7, p0

    .line 207
    :goto_0
    new-instance p0, Lcom/metamoji/df/sprite/PaintSolid;

    iget-object v3, p1, Lcom/metamoji/ch/ChLegend;->setting:Lcom/metamoji/ch/IChLegendSetting;

    invoke-interface {v3}, Lcom/metamoji/ch/IChLegendSetting;->getLabel()Lcom/metamoji/ch/IChLabelSetting;

    move-result-object v3

    invoke-interface {v3}, Lcom/metamoji/ch/IChLabelSetting;->getColor()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    check-cast p0, Lcom/metamoji/df/sprite/Paint;

    invoke-virtual {v7, p0}, Lcom/metamoji/df/sprite/Graphics;->setTextPaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 208
    iget-object p0, p1, Lcom/metamoji/ch/ChLegend;->setting:Lcom/metamoji/ch/IChLegendSetting;

    invoke-interface {p0}, Lcom/metamoji/ch/IChLegendSetting;->getLabel()Lcom/metamoji/ch/IChLabelSetting;

    move-result-object p0

    invoke-interface {p0}, Lcom/metamoji/ch/IChLabelSetting;->getFontName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v7, p0}, Lcom/metamoji/df/sprite/Graphics;->setFontName(Ljava/lang/String;)V

    .line 209
    iget-object p0, p1, Lcom/metamoji/ch/ChLegend;->setting:Lcom/metamoji/ch/IChLegendSetting;

    invoke-interface {p0}, Lcom/metamoji/ch/IChLegendSetting;->getLabel()Lcom/metamoji/ch/IChLabelSetting;

    move-result-object p0

    invoke-interface {p0}, Lcom/metamoji/ch/IChLabelSetting;->getFontSize()D

    move-result-wide v3

    double-to-float p0, v3

    invoke-virtual {v7, p0}, Lcom/metamoji/df/sprite/Graphics;->setFontSize(F)V

    .line 211
    invoke-virtual {v2}, Lcom/metamoji/ch/ChRect;->getX()D

    move-result-wide v3

    iget-object p0, p1, Lcom/metamoji/ch/ChLegend;->setting:Lcom/metamoji/ch/IChLegendSetting;

    invoke-interface {p0}, Lcom/metamoji/ch/IChLegendSetting;->getItemMargin()D

    move-result-wide v5

    add-double/2addr v3, v5

    iget-object p0, p1, Lcom/metamoji/ch/ChLegend;->setting:Lcom/metamoji/ch/IChLegendSetting;

    invoke-interface {p0}, Lcom/metamoji/ch/IChLegendSetting;->getBoxWidth()D

    move-result-wide v5

    add-double/2addr v3, v5

    iget-object p0, p1, Lcom/metamoji/ch/ChLegend;->setting:Lcom/metamoji/ch/IChLegendSetting;

    invoke-interface {p0}, Lcom/metamoji/ch/IChLegendSetting;->getBoxMargin()D

    move-result-wide p0

    add-double/2addr v3, p0

    double-to-float p0, v3

    .line 212
    invoke-virtual {v2}, Lcom/metamoji/ch/ChRect;->getY()D

    move-result-wide v3

    invoke-virtual {v2}, Lcom/metamoji/ch/ChRect;->getHeight()D

    move-result-wide v5

    invoke-virtual {p2}, Lcom/metamoji/ch/ChLegend$ItemWithLayout;->getLabelSize()Lcom/metamoji/ch/ChSize;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/ch/ChSize;->getHeight()D

    move-result-wide p1

    sub-double/2addr v5, p1

    const/4 p1, 0x2

    int-to-double p1, p1

    div-double/2addr v5, p1

    add-double/2addr v3, v5

    double-to-float p1, v3

    .line 213
    invoke-virtual {v0}, Lcom/metamoji/ch/ChLegend$Item;->getLabel()Ljava/lang/String;

    move-result-object p2

    .line 210
    invoke-virtual {v7, p0, p1, p2}, Lcom/metamoji/df/sprite/Graphics;->drawString(FFLjava/lang/String;)V

    .line 215
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    .line 163
    invoke-static {v1, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

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

    move-object p1, v0

    invoke-static {v1, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static final update$lambda$5$performLayout(Ljava/util/List;Lcom/metamoji/df/sprite/Graphics;Lcom/metamoji/ch/ChLegend;Lcom/metamoji/ch/ChSize;)V
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/ch/ChLegend$Item;",
            ">;",
            "Lcom/metamoji/df/sprite/Graphics;",
            "Lcom/metamoji/ch/ChLegend;",
            "Lcom/metamoji/ch/ChSize;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 98
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    .line 99
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/List;

    .line 103
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v14, 0x0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    const/4 v12, 0x2

    if-eqz v11, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/metamoji/ch/ChLegend$Item;

    .line 104
    invoke-virtual {v11}, Lcom/metamoji/ch/ChLegend$Item;->getLabel()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v13, p1

    invoke-virtual {v13, v11}, Lcom/metamoji/df/sprite/Graphics;->rectOfString(Ljava/lang/String;)Landroid/graphics/RectF;

    move-result-object v11

    const-string v5, "rectOfString(...)"

    invoke-static {v11, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11}, Lcom/metamoji/ch/ChRectKt;->getChSize(Landroid/graphics/RectF;)Lcom/metamoji/ch/ChSize;

    move-result-object v5

    .line 105
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    new-instance v6, Lcom/metamoji/ch/ChSize;

    .line 108
    invoke-virtual {v5}, Lcom/metamoji/ch/ChSize;->getWidth()D

    move-result-wide v18

    iget-object v11, v1, Lcom/metamoji/ch/ChLegend;->setting:Lcom/metamoji/ch/IChLegendSetting;

    invoke-interface {v11}, Lcom/metamoji/ch/IChLegendSetting;->getBoxWidth()D

    move-result-wide v20

    add-double v18, v18, v20

    iget-object v11, v1, Lcom/metamoji/ch/ChLegend;->setting:Lcom/metamoji/ch/IChLegendSetting;

    invoke-interface {v11}, Lcom/metamoji/ch/IChLegendSetting;->getBoxMargin()D

    move-result-wide v20

    add-double v18, v18, v20

    iget-object v11, v1, Lcom/metamoji/ch/ChLegend;->setting:Lcom/metamoji/ch/IChLegendSetting;

    invoke-interface {v11}, Lcom/metamoji/ch/IChLegendSetting;->getItemMargin()D

    move-result-wide v20

    int-to-double v11, v12

    mul-double v20, v20, v11

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    add-double v4, v18, v20

    move-wide/from16 v18, v7

    .line 109
    invoke-virtual/range {v23 .. v23}, Lcom/metamoji/ch/ChSize;->getHeight()D

    move-result-wide v7

    move-wide/from16 v20, v11

    iget-object v11, v1, Lcom/metamoji/ch/ChLegend;->setting:Lcom/metamoji/ch/IChLegendSetting;

    invoke-interface {v11}, Lcom/metamoji/ch/IChLegendSetting;->getBoxHeight()D

    move-result-wide v11

    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v7

    iget-object v11, v1, Lcom/metamoji/ch/ChLegend;->setting:Lcom/metamoji/ch/IChLegendSetting;

    invoke-interface {v11}, Lcom/metamoji/ch/IChLegendSetting;->getItemMargin()D

    move-result-wide v11

    mul-double v11, v11, v20

    add-double/2addr v7, v11

    .line 107
    invoke-direct {v6, v4, v5, v7, v8}, Lcom/metamoji/ch/ChSize;-><init>(DD)V

    .line 111
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    invoke-virtual {v6}, Lcom/metamoji/ch/ChSize;->getWidth()D

    move-result-wide v4

    add-double v7, v18, v4

    .line 114
    invoke-virtual {v6}, Lcom/metamoji/ch/ChSize;->getWidth()D

    move-result-wide v4

    invoke-static {v14, v15, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v14

    .line 115
    invoke-virtual {v6}, Lcom/metamoji/ch/ChSize;->getHeight()D

    move-result-wide v4

    invoke-static {v9, v10, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v9

    move-object/from16 v4, v22

    goto/16 :goto_0

    :cond_0
    move-wide/from16 v18, v7

    .line 119
    invoke-virtual/range {p3 .. p3}, Lcom/metamoji/ch/ChSize;->getWidth()D

    move-result-wide v4

    cmpg-double v4, v18, v4

    const/4 v5, 0x0

    const/16 v6, 0xa

    if-gtz v4, :cond_2

    .line 120
    invoke-virtual/range {p3 .. p3}, Lcom/metamoji/ch/ChSize;->getHeight()D

    move-result-wide v7

    sub-double/2addr v7, v9

    int-to-double v11, v12

    div-double/2addr v7, v11

    const-wide/16 v11, 0x0

    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v7

    .line 121
    invoke-virtual/range {p3 .. p3}, Lcom/metamoji/ch/ChSize;->getWidth()D

    move-result-wide v13

    sub-double v13, v13, v18

    move-object v4, v0

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    int-to-float v15, v15

    float-to-double v11, v15

    div-double/2addr v13, v11

    .line 123
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-static {v5, v4}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 226
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v4, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v5, Ljava/util/Collection;

    .line 227
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const-wide/16 v16, 0x0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v4

    check-cast v6, Lkotlin/collections/IntIterator;

    invoke-virtual {v6}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v6

    .line 124
    new-instance v11, Lcom/metamoji/ch/ChPoint;

    move-wide/from16 v18, v13

    add-double v12, v16, v18

    invoke-direct {v11, v12, v13, v7, v8}, Lcom/metamoji/ch/ChPoint;-><init>(DD)V

    .line 125
    new-instance v12, Lcom/metamoji/ch/ChSize;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/metamoji/ch/ChSize;

    invoke-virtual {v13}, Lcom/metamoji/ch/ChSize;->getWidth()D

    move-result-wide v13

    invoke-direct {v12, v13, v14, v9, v10}, Lcom/metamoji/ch/ChSize;-><init>(DD)V

    .line 126
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/metamoji/ch/ChSize;

    .line 127
    invoke-virtual {v11}, Lcom/metamoji/ch/ChPoint;->getX()D

    move-result-wide v14

    invoke-virtual {v12}, Lcom/metamoji/ch/ChSize;->getWidth()D

    move-result-wide v16

    add-double v16, v14, v16

    .line 128
    new-instance v14, Lcom/metamoji/ch/ChLegend$ItemWithLayout;

    .line 129
    new-instance v20, Lcom/metamoji/ch/ChRect;

    invoke-virtual {v11}, Lcom/metamoji/ch/ChPoint;->getX()D

    move-result-wide v21

    invoke-virtual {v11}, Lcom/metamoji/ch/ChPoint;->getY()D

    move-result-wide v23

    invoke-virtual {v12}, Lcom/metamoji/ch/ChSize;->getWidth()D

    move-result-wide v25

    invoke-virtual {v12}, Lcom/metamoji/ch/ChSize;->getHeight()D

    move-result-wide v27

    invoke-direct/range {v20 .. v28}, Lcom/metamoji/ch/ChRect;-><init>(DDDD)V

    move-object/from16 v11, v20

    .line 131
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/metamoji/ch/ChLegend$Item;

    .line 128
    invoke-direct {v14, v11, v13, v6}, Lcom/metamoji/ch/ChLegend$ItemWithLayout;-><init>(Lcom/metamoji/ch/ChRect;Lcom/metamoji/ch/ChSize;Lcom/metamoji/ch/ChLegend$Item;)V

    .line 228
    invoke-interface {v5, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-wide/from16 v13, v18

    goto :goto_1

    .line 229
    :cond_1
    check-cast v5, Ljava/util/List;

    .line 123
    iput-object v5, v1, Lcom/metamoji/ch/ChLegend;->itemWithLayouts:Ljava/util/List;

    return-void

    .line 140
    :cond_2
    invoke-virtual/range {p3 .. p3}, Lcom/metamoji/ch/ChSize;->getWidth()D

    move-result-wide v3

    div-double/2addr v3, v14

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    double-to-int v3, v3

    .line 141
    invoke-virtual/range {p3 .. p3}, Lcom/metamoji/ch/ChSize;->getWidth()D

    move-result-wide v7

    int-to-float v4, v3

    float-to-double v5, v4

    div-double/2addr v7, v5

    invoke-static {v7, v8, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    sub-double v6, v4, v14

    int-to-double v12, v12

    div-double/2addr v6, v12

    .line 143
    move-object v8, v0

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    div-int/2addr v8, v3

    add-int/lit8 v8, v8, 0x1

    .line 144
    invoke-virtual/range {p3 .. p3}, Lcom/metamoji/ch/ChSize;->getHeight()D

    move-result-wide v16

    int-to-float v8, v8

    move-wide/from16 v19, v12

    float-to-double v11, v8

    div-double v11, v16, v11

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v21

    sub-double v11, v21, v9

    div-double v19, v11, v19

    .line 146
    check-cast v0, Ljava/lang/Iterable;

    .line 230
    new-instance v8, Ljava/util/ArrayList;

    const/16 v11, 0xa

    invoke-static {v0, v11}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v8, v11}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v8, Ljava/util/Collection;

    .line 232
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v11, 0x0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    add-int/lit8 v18, v11, 0x1

    if-gez v11, :cond_3

    .line 233
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_3
    check-cast v12, Lcom/metamoji/ch/ChLegend$Item;

    .line 147
    rem-int v13, v11, v3

    int-to-float v13, v13

    move/from16 v23, v3

    move-wide/from16 v24, v4

    float-to-double v3, v13

    mul-double v4, v24, v3

    add-double/2addr v4, v6

    .line 148
    div-int v3, v11, v23

    int-to-float v3, v3

    move-wide/from16 p0, v4

    float-to-double v3, v3

    mul-double v3, v3, v21

    add-double v3, v3, v19

    .line 149
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/ch/ChSize;

    .line 150
    new-instance v11, Lcom/metamoji/ch/ChLegend$ItemWithLayout;

    move-wide/from16 v16, v9

    .line 151
    new-instance v9, Lcom/metamoji/ch/ChRect;

    move-wide/from16 v29, v3

    move-object v3, v12

    move-wide/from16 v12, v29

    move-object v4, v11

    move-wide/from16 v10, p0

    invoke-direct/range {v9 .. v17}, Lcom/metamoji/ch/ChRect;-><init>(DDDD)V

    .line 150
    invoke-direct {v4, v9, v5, v3}, Lcom/metamoji/ch/ChLegend$ItemWithLayout;-><init>(Lcom/metamoji/ch/ChRect;Lcom/metamoji/ch/ChSize;Lcom/metamoji/ch/ChLegend$Item;)V

    .line 233
    invoke-interface {v8, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-wide/from16 v9, v16

    move/from16 v11, v18

    move/from16 v3, v23

    move-wide/from16 v4, v24

    goto :goto_2

    .line 234
    :cond_4
    check-cast v8, Ljava/util/List;

    .line 146
    iput-object v8, v1, Lcom/metamoji/ch/ChLegend;->itemWithLayouts:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getLegendSize()Lcom/metamoji/ch/ChSize;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/metamoji/ch/ChLegend;->legendSize:Lcom/metamoji/ch/ChSize;

    return-object v0
.end method

.method public final getSetting()Lcom/metamoji/ch/IChLegendSetting;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/metamoji/ch/ChLegend;->setting:Lcom/metamoji/ch/IChLegendSetting;

    return-object v0
.end method

.method public final getSprite()Lcom/metamoji/df/sprite/Sprite;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/metamoji/ch/ChLegend;->sprite:Lcom/metamoji/df/sprite/Sprite;

    return-object v0
.end method

.method public final update(Ljava/util/List;Lcom/metamoji/ch/ChSize;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/ch/ChLegend$Item;",
            ">;",
            "Lcom/metamoji/ch/ChSize;",
            ")V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "legendSize"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iput-object p2, p0, Lcom/metamoji/ch/ChLegend;->legendSize:Lcom/metamoji/ch/ChSize;

    .line 61
    iget-object v0, p0, Lcom/metamoji/ch/ChLegend;->sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {p2}, Lcom/metamoji/ch/ChSize;->getWidth()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Sprite;->setWidth(F)V

    .line 62
    iget-object v0, p0, Lcom/metamoji/ch/ChLegend;->sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {p2}, Lcom/metamoji/ch/ChSize;->getHeight()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Sprite;->setHeight(F)V

    .line 64
    iget-object v0, p0, Lcom/metamoji/ch/ChLegend;->sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Graphics;->clear()V

    .line 67
    new-instance v1, Lcom/metamoji/ch/internal/ChCleanGraphics;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v1, v0}, Lcom/metamoji/ch/internal/ChCleanGraphics;-><init>(Lcom/metamoji/df/sprite/Graphics;)V

    check-cast v1, Ljava/io/Closeable;

    :try_start_0
    move-object v2, v1

    check-cast v2, Lcom/metamoji/ch/internal/ChCleanGraphics;

    .line 68
    iget-object v2, p0, Lcom/metamoji/ch/ChLegend;->setting:Lcom/metamoji/ch/IChLegendSetting;

    invoke-interface {v2}, Lcom/metamoji/ch/IChLegendSetting;->getLabel()Lcom/metamoji/ch/IChLabelSetting;

    move-result-object v2

    invoke-interface {v2}, Lcom/metamoji/ch/IChLabelSetting;->getFontName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/metamoji/df/sprite/Graphics;->setFontName(Ljava/lang/String;)V

    .line 69
    iget-object v2, p0, Lcom/metamoji/ch/ChLegend;->setting:Lcom/metamoji/ch/IChLegendSetting;

    invoke-interface {v2}, Lcom/metamoji/ch/IChLegendSetting;->getLabel()Lcom/metamoji/ch/IChLabelSetting;

    move-result-object v2

    invoke-interface {v2}, Lcom/metamoji/ch/IChLabelSetting;->getFontSize()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/metamoji/df/sprite/Graphics;->setFontSize(F)V

    .line 218
    invoke-static {p1, v0, p0, p2}, Lcom/metamoji/ch/ChLegend;->update$lambda$5$performLayout(Ljava/util/List;Lcom/metamoji/df/sprite/Graphics;Lcom/metamoji/ch/ChLegend;Lcom/metamoji/ch/ChSize;)V

    .line 219
    iget-object p1, p0, Lcom/metamoji/ch/ChLegend;->itemWithLayouts:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    .line 224
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ch/ChLegend$ItemWithLayout;

    .line 219
    invoke-static {v0, p0, p2}, Lcom/metamoji/ch/ChLegend;->update$lambda$5$drawOneItem(Lcom/metamoji/df/sprite/Graphics;Lcom/metamoji/ch/ChLegend;Lcom/metamoji/ch/ChLegend$ItemWithLayout;)V

    goto :goto_0

    .line 220
    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 67
    invoke-static {v1, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    invoke-static {v1, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
.end method
