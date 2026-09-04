.class final Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;
.super Ljava/lang/Object;
.source "ChHorizontalAxisLabels.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ch/internal/ChHorizontalAxisLabels;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u0002\u0018\u00002\u00020\u0001Be\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00110\u0010\u0012\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u000c0\u0010\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0006\u0010\'\u001a\u00020(J\u0008\u0010)\u001a\u00020*H\u0002J\u0008\u0010+\u001a\u00020*H\u0002J\u0008\u0010,\u001a\u00020*H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00110\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u000c0\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020!X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006-"
    }
    d2 = {
        "Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;",
        "",
        "sprite",
        "Lcom/metamoji/df/sprite/Sprite;",
        "texts",
        "",
        "",
        "chartSize",
        "Lcom/metamoji/ch/ChSize;",
        "truncationStrategy",
        "Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$TruncationStrategy;",
        "labelMargin",
        "",
        "initialDataAreaRect",
        "Lcom/metamoji/ch/ChRect;",
        "updateDataAreaRect",
        "Lkotlin/Function1;",
        "",
        "positionAt",
        "",
        "<init>",
        "(Lcom/metamoji/df/sprite/Sprite;Ljava/util/List;Lcom/metamoji/ch/ChSize;Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$TruncationStrategy;DLcom/metamoji/ch/ChRect;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V",
        "dataAreaRect",
        "labels",
        "",
        "Lcom/metamoji/ch/internal/ChStringWithSize;",
        "labelPoints",
        "Lcom/metamoji/ch/ChPoint;",
        "labelSpriteRotation",
        "labelSpriteY",
        "transformer",
        "Lcom/metamoji/ch/internal/transformer/IChCoordinateTransformer;",
        "gr",
        "Lcom/metamoji/df/sprite/Graphics;",
        "dataAreaRectX",
        "dataAreaRectWidth",
        "leftLimit",
        "rightLimit",
        "maxHeight",
        "build",
        "Lcom/metamoji/ch/internal/ChHorizontalAxisLabels;",
        "makeLabelsAngle0",
        "",
        "makeLabelsAngle45",
        "makeLabelsAngle90",
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
.field private final chartSize:Lcom/metamoji/ch/ChSize;

.field private dataAreaRect:Lcom/metamoji/ch/ChRect;

.field private final dataAreaRectWidth:D

.field private final dataAreaRectX:D

.field private final gr:Lcom/metamoji/df/sprite/Graphics;

.field private final labelMargin:D

.field private labelPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/ch/ChPoint;",
            ">;"
        }
    .end annotation
.end field

.field private labelSpriteRotation:D

.field private labelSpriteY:D

.field private labels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/ch/internal/ChStringWithSize;",
            ">;"
        }
    .end annotation
.end field

.field private final leftLimit:D

.field private maxHeight:D

.field private final positionAt:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private final rightLimit:D

.field private final sprite:Lcom/metamoji/df/sprite/Sprite;

.field private final texts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final transformer:Lcom/metamoji/ch/internal/transformer/IChCoordinateTransformer;

.field private final truncationStrategy:Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$TruncationStrategy;

.field private final updateDataAreaRect:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/metamoji/ch/ChRect;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/metamoji/df/sprite/Sprite;Ljava/util/List;Lcom/metamoji/ch/ChSize;Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$TruncationStrategy;DLcom/metamoji/ch/ChRect;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/df/sprite/Sprite;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/metamoji/ch/ChSize;",
            "Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$TruncationStrategy;",
            "D",
            "Lcom/metamoji/ch/ChRect;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/metamoji/ch/ChRect;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    const-string v0, "sprite"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "texts"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chartSize"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "truncationStrategy"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initialDataAreaRect"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updateDataAreaRect"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "positionAt"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->sprite:Lcom/metamoji/df/sprite/Sprite;

    .line 82
    iput-object p2, p0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->texts:Ljava/util/List;

    .line 83
    iput-object p3, p0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->chartSize:Lcom/metamoji/ch/ChSize;

    .line 84
    iput-object p4, p0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->truncationStrategy:Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$TruncationStrategy;

    .line 85
    iput-wide p5, p0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->labelMargin:D

    .line 87
    iput-object p8, p0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->updateDataAreaRect:Lkotlin/jvm/functions/Function1;

    .line 88
    iput-object p9, p0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->positionAt:Lkotlin/jvm/functions/Function1;

    .line 90
    iput-object p7, p0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->dataAreaRect:Lcom/metamoji/ch/ChRect;

    .line 92
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->labels:Ljava/util/List;

    .line 93
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->labelPoints:Ljava/util/List;

    .line 97
    new-instance p2, Lcom/metamoji/ch/internal/transformer/ChFlipVerticalTransformer;

    invoke-virtual {p3}, Lcom/metamoji/ch/ChSize;->getHeight()D

    move-result-wide p3

    invoke-direct {p2, p3, p4}, Lcom/metamoji/ch/internal/transformer/ChFlipVerticalTransformer;-><init>(D)V

    check-cast p2, Lcom/metamoji/ch/internal/transformer/IChCoordinateTransformer;

    iput-object p2, p0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->transformer:Lcom/metamoji/ch/internal/transformer/IChCoordinateTransformer;

    .line 98
    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object p1

    const-string p2, "getGraphics(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->gr:Lcom/metamoji/df/sprite/Graphics;

    .line 99
    iget-object p1, p0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->dataAreaRect:Lcom/metamoji/ch/ChRect;

    invoke-virtual {p1}, Lcom/metamoji/ch/ChRect;->getX()D

    move-result-wide p1

    iput-wide p1, p0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->dataAreaRectX:D

    .line 100
    iget-object p1, p0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->dataAreaRect:Lcom/metamoji/ch/ChRect;

    invoke-virtual {p1}, Lcom/metamoji/ch/ChRect;->getWidth()D

    move-result-wide p1

    iput-wide p1, p0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->dataAreaRectWidth:D

    .line 101
    iget-object p1, p0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->dataAreaRect:Lcom/metamoji/ch/ChRect;

    invoke-virtual {p1}, Lcom/metamoji/ch/ChRect;->getX()D

    move-result-wide p1

    neg-double p1, p1

    iput-wide p1, p0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->leftLimit:D

    .line 102
    iget-object p1, p0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->dataAreaRect:Lcom/metamoji/ch/ChRect;

    invoke-virtual {p1}, Lcom/metamoji/ch/ChRect;->getWidth()D

    move-result-wide p1

    iput-wide p1, p0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->rightLimit:D

    return-void
.end method

.method private final makeLabelsAngle0()Z
    .locals 26

    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    .line 139
    iput-wide v1, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->maxHeight:D

    .line 140
    iget-object v3, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->labels:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 141
    iget-object v3, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->labelPoints:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 142
    iput-wide v1, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->labelSpriteRotation:D

    .line 145
    iget-object v1, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->texts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 146
    iget-object v3, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->gr:Lcom/metamoji/df/sprite/Graphics;

    invoke-virtual {v3, v2}, Lcom/metamoji/df/sprite/Graphics;->rectOfString(Ljava/lang/String;)Landroid/graphics/RectF;

    move-result-object v3

    .line 147
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/metamoji/ch/ChRectKt;->getChSize(Landroid/graphics/RectF;)Lcom/metamoji/ch/ChSize;

    move-result-object v3

    .line 148
    new-instance v4, Lcom/metamoji/ch/internal/ChStringWithSize;

    invoke-direct {v4, v2, v3}, Lcom/metamoji/ch/internal/ChStringWithSize;-><init>(Ljava/lang/String;Lcom/metamoji/ch/ChSize;)V

    .line 149
    iget-object v2, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->labels:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 153
    :cond_0
    iget-object v1, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->truncationStrategy:Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$TruncationStrategy;

    sget-object v2, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$TruncationStrategy;->NONE:Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$TruncationStrategy;

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ne v1, v2, :cond_2

    iget-object v1, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->labels:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 155
    iget-object v1, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->labels:Ljava/util/List;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ch/internal/ChStringWithSize;

    .line 156
    iget-object v2, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->positionAt:Lkotlin/jvm/functions/Function1;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v1}, Lcom/metamoji/ch/internal/ChStringWithSize;->getSize()Lcom/metamoji/ch/ChSize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ch/ChSize;->getWidth()D

    move-result-wide v1

    int-to-double v8, v4

    div-double/2addr v1, v8

    sub-double/2addr v6, v1

    .line 157
    iget-wide v1, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->leftLimit:D

    cmpg-double v1, v6, v1

    if-gez v1, :cond_1

    .line 158
    iget-object v1, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->dataAreaRect:Lcom/metamoji/ch/ChRect;

    invoke-virtual {v1}, Lcom/metamoji/ch/ChRect;->getWidth()D

    move-result-wide v10

    add-double/2addr v10, v6

    invoke-virtual {v1, v10, v11}, Lcom/metamoji/ch/ChRect;->setWidth(D)V

    .line 159
    iget-object v1, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->dataAreaRect:Lcom/metamoji/ch/ChRect;

    invoke-virtual {v1}, Lcom/metamoji/ch/ChRect;->getX()D

    move-result-wide v10

    sub-double/2addr v10, v6

    invoke-virtual {v1, v10, v11}, Lcom/metamoji/ch/ChRect;->setX(D)V

    .line 160
    iget-object v1, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->updateDataAreaRect:Lkotlin/jvm/functions/Function1;

    iget-object v2, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->dataAreaRect:Lcom/metamoji/ch/ChRect;

    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    :cond_1
    iget-object v1, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->labels:Ljava/util/List;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ch/internal/ChStringWithSize;

    .line 164
    iget-object v2, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->positionAt:Lkotlin/jvm/functions/Function1;

    iget-object v6, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->labels:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    .line 165
    invoke-virtual {v1}, Lcom/metamoji/ch/internal/ChStringWithSize;->getSize()Lcom/metamoji/ch/ChSize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ch/ChSize;->getWidth()D

    move-result-wide v1

    div-double/2addr v1, v8

    add-double/2addr v1, v6

    .line 166
    iget-wide v8, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->rightLimit:D

    cmpl-double v8, v1, v8

    if-lez v8, :cond_2

    .line 167
    iget-object v8, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->dataAreaRect:Lcom/metamoji/ch/ChRect;

    invoke-virtual {v8}, Lcom/metamoji/ch/ChRect;->getWidth()D

    move-result-wide v9

    iget-object v11, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->dataAreaRect:Lcom/metamoji/ch/ChRect;

    invoke-virtual {v11}, Lcom/metamoji/ch/ChRect;->getWidth()D

    move-result-wide v11

    sub-double/2addr v1, v11

    sub-double v1, v6, v1

    div-double/2addr v1, v6

    mul-double/2addr v9, v1

    invoke-virtual {v8, v9, v10}, Lcom/metamoji/ch/ChRect;->setWidth(D)V

    .line 168
    iget-object v1, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->updateDataAreaRect:Lkotlin/jvm/functions/Function1;

    iget-object v2, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->dataAreaRect:Lcom/metamoji/ch/ChRect;

    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    :cond_2
    new-instance v1, Lcom/metamoji/ch/internal/transformer/ChCompositeTransformer;

    .line 173
    new-array v2, v4, [Lcom/metamoji/ch/internal/transformer/IChCoordinateTransformer;

    new-instance v6, Lcom/metamoji/ch/internal/transformer/ChOffsetTransformer;

    iget-object v7, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->dataAreaRect:Lcom/metamoji/ch/ChRect;

    invoke-virtual {v7}, Lcom/metamoji/ch/ChRect;->getX()D

    move-result-wide v7

    iget-object v9, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->dataAreaRect:Lcom/metamoji/ch/ChRect;

    invoke-virtual {v9}, Lcom/metamoji/ch/ChRect;->getY()D

    move-result-wide v9

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/metamoji/ch/internal/transformer/ChOffsetTransformer;-><init>(DD)V

    aput-object v6, v2, v5

    .line 174
    iget-object v6, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->transformer:Lcom/metamoji/ch/internal/transformer/IChCoordinateTransformer;

    aput-object v6, v2, v3

    .line 172
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/metamoji/ch/internal/transformer/ChCompositeTransformer;-><init>(Ljava/util/List;)V

    .line 179
    iget-object v2, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->labels:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v6, 0x0

    move v7, v5

    :goto_1
    if-ge v7, v2, :cond_7

    .line 180
    iget-object v8, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->labels:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/metamoji/ch/internal/ChStringWithSize;

    .line 181
    iget-object v9, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->positionAt:Lkotlin/jvm/functions/Function1;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v9

    .line 185
    iget-object v11, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->truncationStrategy:Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$TruncationStrategy;

    sget-object v12, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$TruncationStrategy;->TAIL:Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$TruncationStrategy;

    if-ne v11, v12, :cond_4

    int-to-double v11, v4

    .line 186
    iget-wide v13, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->leftLimit:D

    sub-double v13, v9, v13

    move v15, v5

    move-object/from16 v16, v6

    iget-wide v5, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->rightLimit:D

    sub-double/2addr v5, v9

    invoke-static {v13, v14, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    mul-double/2addr v11, v5

    .line 187
    invoke-virtual {v8}, Lcom/metamoji/ch/internal/ChStringWithSize;->getSize()Lcom/metamoji/ch/ChSize;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/ch/ChSize;->getWidth()D

    move-result-wide v5

    cmpg-double v5, v11, v5

    if-gez v5, :cond_5

    .line 188
    iget-object v5, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->chartSize:Lcom/metamoji/ch/ChSize;

    invoke-virtual {v5}, Lcom/metamoji/ch/ChSize;->getHeight()D

    move-result-wide v5

    const/4 v13, 0x3

    int-to-double v13, v13

    div-double/2addr v5, v13

    cmpg-double v5, v11, v5

    if-gez v5, :cond_3

    return v15

    .line 191
    :cond_3
    sget-object v5, Lcom/metamoji/ch/internal/ChUtils;->INSTANCE:Lcom/metamoji/ch/internal/ChUtils;

    iget-object v6, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->gr:Lcom/metamoji/df/sprite/Graphics;

    invoke-virtual {v8}, Lcom/metamoji/ch/internal/ChStringWithSize;->getString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v8, v11, v12}, Lcom/metamoji/ch/internal/ChUtils;->truncateTail(Lcom/metamoji/df/sprite/Graphics;Ljava/lang/String;D)Lcom/metamoji/ch/internal/ChStringWithSize;

    move-result-object v8

    .line 192
    iget-object v5, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->labels:Ljava/util/List;

    invoke-interface {v5, v7, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    move v15, v5

    move-object/from16 v16, v6

    .line 196
    :cond_5
    :goto_2
    new-instance v5, Lcom/metamoji/ch/ChPoint;

    invoke-virtual {v8}, Lcom/metamoji/ch/internal/ChStringWithSize;->getSize()Lcom/metamoji/ch/ChSize;

    move-result-object v6

    invoke-virtual {v6}, Lcom/metamoji/ch/ChSize;->getWidth()D

    move-result-wide v11

    int-to-double v13, v4

    div-double/2addr v11, v13

    sub-double/2addr v9, v11

    iget-wide v11, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->labelMargin:D

    neg-double v11, v11

    invoke-direct {v5, v9, v10, v11, v12}, Lcom/metamoji/ch/ChPoint;-><init>(DD)V

    .line 197
    iget-wide v9, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->maxHeight:D

    invoke-virtual {v8}, Lcom/metamoji/ch/internal/ChStringWithSize;->getSize()Lcom/metamoji/ch/ChSize;

    move-result-object v6

    invoke-virtual {v6}, Lcom/metamoji/ch/ChSize;->getHeight()D

    move-result-wide v11

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v9

    iput-wide v9, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->maxHeight:D

    .line 199
    iget-object v6, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->labelPoints:Ljava/util/List;

    invoke-virtual {v1, v5}, Lcom/metamoji/ch/internal/transformer/ChCompositeTransformer;->point(Lcom/metamoji/ch/ChPoint;)Lcom/metamoji/ch/ChPoint;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    new-instance v17, Lcom/metamoji/ch/ChRect;

    invoke-virtual {v5}, Lcom/metamoji/ch/ChPoint;->getX()D

    move-result-wide v18

    invoke-virtual {v5}, Lcom/metamoji/ch/ChPoint;->getY()D

    move-result-wide v20

    invoke-virtual {v8}, Lcom/metamoji/ch/internal/ChStringWithSize;->getSize()Lcom/metamoji/ch/ChSize;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/ch/ChSize;->getWidth()D

    move-result-wide v22

    invoke-virtual {v8}, Lcom/metamoji/ch/internal/ChStringWithSize;->getSize()Lcom/metamoji/ch/ChSize;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/ch/ChSize;->getHeight()D

    move-result-wide v24

    invoke-direct/range {v17 .. v25}, Lcom/metamoji/ch/ChRect;-><init>(DDDD)V

    move-object/from16 v6, v17

    if-eqz v16, :cond_6

    move-object/from16 v5, v16

    .line 203
    invoke-virtual {v6, v5}, Lcom/metamoji/ch/ChRect;->intersects(Lcom/metamoji/ch/ChRect;)Z

    move-result v5

    if-eqz v5, :cond_6

    return v15

    :cond_6
    add-int/lit8 v7, v7, 0x1

    move v5, v15

    goto/16 :goto_1

    :cond_7
    return v3
.end method

.method private final makeLabelsAngle45()Z
    .locals 21

    move-object/from16 v0, p0

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    .line 218
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    const-wide/16 v3, 0x0

    .line 219
    iput-wide v3, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->maxHeight:D

    .line 220
    iget-object v3, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->labels:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 221
    iget-object v3, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->labelPoints:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    const-wide v3, -0x4016de04abbbd2e8L    # -0.7853981633974483

    .line 222
    iput-wide v3, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->labelSpriteRotation:D

    .line 225
    iget-object v3, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->texts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x3

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 226
    iget-object v6, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->truncationStrategy:Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$TruncationStrategy;

    sget-object v7, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$TruncationStrategy;->TAIL:Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$TruncationStrategy;

    if-ne v6, v7, :cond_0

    .line 229
    sget-object v6, Lcom/metamoji/ch/internal/ChUtils;->INSTANCE:Lcom/metamoji/ch/internal/ChUtils;

    iget-object v7, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->gr:Lcom/metamoji/df/sprite/Graphics;

    iget-object v8, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->chartSize:Lcom/metamoji/ch/ChSize;

    invoke-virtual {v8}, Lcom/metamoji/ch/ChSize;->getHeight()D

    move-result-wide v8

    int-to-double v10, v5

    div-double/2addr v8, v10

    invoke-virtual {v6, v7, v4, v8, v9}, Lcom/metamoji/ch/internal/ChUtils;->truncateTail(Lcom/metamoji/df/sprite/Graphics;Ljava/lang/String;D)Lcom/metamoji/ch/internal/ChStringWithSize;

    move-result-object v4

    goto :goto_1

    .line 231
    :cond_0
    iget-object v5, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->gr:Lcom/metamoji/df/sprite/Graphics;

    invoke-virtual {v5, v4}, Lcom/metamoji/df/sprite/Graphics;->rectOfString(Ljava/lang/String;)Landroid/graphics/RectF;

    move-result-object v5

    .line 232
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v5}, Lcom/metamoji/ch/ChRectKt;->getChSize(Landroid/graphics/RectF;)Lcom/metamoji/ch/ChSize;

    move-result-object v5

    .line 233
    new-instance v6, Lcom/metamoji/ch/internal/ChStringWithSize;

    invoke-direct {v6, v4, v5}, Lcom/metamoji/ch/internal/ChStringWithSize;-><init>(Ljava/lang/String;Lcom/metamoji/ch/ChSize;)V

    move-object v4, v6

    .line 235
    :goto_1
    iget-object v5, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->labels:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 239
    :cond_1
    iget-object v3, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->truncationStrategy:Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$TruncationStrategy;

    sget-object v4, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$TruncationStrategy;->NONE:Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$TruncationStrategy;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne v3, v4, :cond_3

    .line 240
    iget-object v3, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->dataAreaRect:Lcom/metamoji/ch/ChRect;

    iget-wide v8, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->dataAreaRectX:D

    invoke-virtual {v3, v8, v9}, Lcom/metamoji/ch/ChRect;->setX(D)V

    .line 241
    iget-object v3, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->dataAreaRect:Lcom/metamoji/ch/ChRect;

    iget-wide v8, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->dataAreaRectWidth:D

    invoke-virtual {v3, v8, v9}, Lcom/metamoji/ch/ChRect;->setWidth(D)V

    .line 242
    iget-object v3, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->updateDataAreaRect:Lkotlin/jvm/functions/Function1;

    iget-object v4, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->dataAreaRect:Lcom/metamoji/ch/ChRect;

    invoke-interface {v3, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    iget-object v3, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->labels:Ljava/util/List;

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 246
    iget-object v3, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->labels:Ljava/util/List;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/ch/internal/ChStringWithSize;

    .line 247
    iget-object v4, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->positionAt:Lkotlin/jvm/functions/Function1;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v3}, Lcom/metamoji/ch/internal/ChStringWithSize;->getSize()Lcom/metamoji/ch/ChSize;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/ch/ChSize;->getWidth()D

    move-result-wide v3

    div-double/2addr v3, v1

    sub-double/2addr v8, v3

    .line 248
    iget-wide v3, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->leftLimit:D

    cmpg-double v3, v8, v3

    if-gez v3, :cond_2

    .line 249
    iget-object v3, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->dataAreaRect:Lcom/metamoji/ch/ChRect;

    invoke-virtual {v3}, Lcom/metamoji/ch/ChRect;->getWidth()D

    move-result-wide v10

    add-double/2addr v10, v8

    invoke-virtual {v3, v10, v11}, Lcom/metamoji/ch/ChRect;->setWidth(D)V

    .line 250
    iget-object v3, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->dataAreaRect:Lcom/metamoji/ch/ChRect;

    invoke-virtual {v3}, Lcom/metamoji/ch/ChRect;->getX()D

    move-result-wide v10

    sub-double/2addr v10, v8

    invoke-virtual {v3, v10, v11}, Lcom/metamoji/ch/ChRect;->setX(D)V

    .line 251
    iget-object v3, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->updateDataAreaRect:Lkotlin/jvm/functions/Function1;

    iget-object v4, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->dataAreaRect:Lcom/metamoji/ch/ChRect;

    invoke-interface {v3, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    :cond_2
    iget-object v3, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->labels:Ljava/util/List;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/ch/internal/ChStringWithSize;

    .line 255
    iget-object v4, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->positionAt:Lkotlin/jvm/functions/Function1;

    iget-object v8, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->labels:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    .line 256
    invoke-virtual {v3}, Lcom/metamoji/ch/internal/ChStringWithSize;->getSize()Lcom/metamoji/ch/ChSize;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/ch/ChSize;->getHeight()D

    move-result-wide v3

    div-double/2addr v3, v1

    add-double/2addr v3, v8

    .line 257
    iget-wide v10, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->rightLimit:D

    cmpl-double v10, v3, v10

    if-lez v10, :cond_3

    .line 258
    iget-object v10, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->dataAreaRect:Lcom/metamoji/ch/ChRect;

    invoke-virtual {v10}, Lcom/metamoji/ch/ChRect;->getWidth()D

    move-result-wide v11

    iget-object v13, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->dataAreaRect:Lcom/metamoji/ch/ChRect;

    invoke-virtual {v13}, Lcom/metamoji/ch/ChRect;->getWidth()D

    move-result-wide v13

    sub-double/2addr v3, v13

    sub-double v3, v8, v3

    div-double/2addr v3, v8

    mul-double/2addr v11, v3

    invoke-virtual {v10, v11, v12}, Lcom/metamoji/ch/ChRect;->setWidth(D)V

    .line 259
    iget-object v3, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->updateDataAreaRect:Lkotlin/jvm/functions/Function1;

    iget-object v4, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->dataAreaRect:Lcom/metamoji/ch/ChRect;

    invoke-interface {v3, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    :cond_3
    new-instance v3, Lcom/metamoji/ch/internal/transformer/ChCompositeTransformer;

    .line 265
    new-array v4, v5, [Lcom/metamoji/ch/internal/transformer/IChCoordinateTransformer;

    new-instance v5, Lcom/metamoji/ch/internal/transformer/ChOffsetTransformer;

    iget-object v8, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->dataAreaRect:Lcom/metamoji/ch/ChRect;

    invoke-virtual {v8}, Lcom/metamoji/ch/ChRect;->getX()D

    move-result-wide v8

    iget-object v10, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->dataAreaRect:Lcom/metamoji/ch/ChRect;

    invoke-virtual {v10}, Lcom/metamoji/ch/ChRect;->getY()D

    move-result-wide v10

    invoke-direct {v5, v8, v9, v10, v11}, Lcom/metamoji/ch/internal/transformer/ChOffsetTransformer;-><init>(DD)V

    aput-object v5, v4, v7

    .line 266
    iget-object v5, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->transformer:Lcom/metamoji/ch/internal/transformer/IChCoordinateTransformer;

    aput-object v5, v4, v6

    .line 267
    new-instance v5, Lcom/metamoji/ch/internal/transformer/ChRotateTransformer;

    const-wide v8, 0x3fe921fb54442d18L    # 0.7853981633974483

    invoke-direct {v5, v8, v9}, Lcom/metamoji/ch/internal/transformer/ChRotateTransformer;-><init>(D)V

    const/4 v8, 0x2

    aput-object v5, v4, v8

    .line 264
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/metamoji/ch/internal/transformer/ChCompositeTransformer;-><init>(Ljava/util/List;)V

    .line 272
    iget-object v4, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->labels:Ljava/util/List;

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    move v8, v7

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    add-int/lit8 v9, v8, 0x1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/metamoji/ch/internal/ChStringWithSize;

    .line 273
    new-instance v11, Lcom/metamoji/ch/ChPoint;

    iget-object v12, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->positionAt:Lkotlin/jvm/functions/Function1;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v12, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v12

    iget-wide v14, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->labelMargin:D

    neg-double v14, v14

    invoke-direct {v11, v12, v13, v14, v15}, Lcom/metamoji/ch/ChPoint;-><init>(DD)V

    .line 274
    iget-object v8, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->truncationStrategy:Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$TruncationStrategy;

    sget-object v12, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$TruncationStrategy;->TAIL:Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$TruncationStrategy;

    if-ne v8, v12, :cond_5

    .line 276
    invoke-virtual {v11}, Lcom/metamoji/ch/ChPoint;->getX()D

    move-result-wide v12

    invoke-virtual {v10}, Lcom/metamoji/ch/internal/ChStringWithSize;->getSize()Lcom/metamoji/ch/ChSize;

    move-result-object v8

    invoke-virtual {v8}, Lcom/metamoji/ch/ChSize;->getWidth()D

    move-result-wide v14

    div-double/2addr v14, v1

    sub-double/2addr v12, v14

    iget-wide v14, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->leftLimit:D

    cmpg-double v8, v12, v14

    if-ltz v8, :cond_4

    .line 277
    invoke-virtual {v11}, Lcom/metamoji/ch/ChPoint;->getX()D

    move-result-wide v12

    invoke-virtual {v10}, Lcom/metamoji/ch/internal/ChStringWithSize;->getSize()Lcom/metamoji/ch/ChSize;

    move-result-object v8

    invoke-virtual {v8}, Lcom/metamoji/ch/ChSize;->getHeight()D

    move-result-wide v14

    div-double/2addr v14, v1

    add-double/2addr v12, v14

    iget-wide v14, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->rightLimit:D

    cmpl-double v8, v12, v14

    if-lez v8, :cond_5

    :cond_4
    return v7

    .line 281
    :cond_5
    invoke-virtual {v3, v11}, Lcom/metamoji/ch/internal/transformer/ChCompositeTransformer;->point(Lcom/metamoji/ch/ChPoint;)Lcom/metamoji/ch/ChPoint;

    move-result-object v8

    .line 282
    invoke-virtual {v8}, Lcom/metamoji/ch/ChPoint;->getX()D

    move-result-wide v11

    invoke-virtual {v10}, Lcom/metamoji/ch/internal/ChStringWithSize;->getSize()Lcom/metamoji/ch/ChSize;

    move-result-object v13

    invoke-virtual {v13}, Lcom/metamoji/ch/ChSize;->getWidth()D

    move-result-wide v13

    sub-double/2addr v11, v13

    invoke-virtual {v8, v11, v12}, Lcom/metamoji/ch/ChPoint;->setX(D)V

    .line 283
    iget-wide v11, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->maxHeight:D

    invoke-virtual {v10}, Lcom/metamoji/ch/internal/ChStringWithSize;->getSize()Lcom/metamoji/ch/ChSize;

    move-result-object v13

    invoke-virtual {v13}, Lcom/metamoji/ch/ChSize;->getWidth()D

    move-result-wide v13

    invoke-virtual {v10}, Lcom/metamoji/ch/internal/ChStringWithSize;->getSize()Lcom/metamoji/ch/ChSize;

    move-result-object v15

    invoke-virtual {v15}, Lcom/metamoji/ch/ChSize;->getHeight()D

    move-result-wide v15

    add-double/2addr v13, v15

    div-double/2addr v13, v1

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->max(DD)D

    move-result-wide v11

    iput-wide v11, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->maxHeight:D

    .line 285
    iget-object v11, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->labelPoints:Ljava/util/List;

    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    new-instance v12, Lcom/metamoji/ch/ChRect;

    invoke-virtual {v8}, Lcom/metamoji/ch/ChPoint;->getX()D

    move-result-wide v13

    invoke-virtual {v8}, Lcom/metamoji/ch/ChPoint;->getY()D

    move-result-wide v15

    invoke-virtual {v10}, Lcom/metamoji/ch/internal/ChStringWithSize;->getSize()Lcom/metamoji/ch/ChSize;

    move-result-object v8

    invoke-virtual {v8}, Lcom/metamoji/ch/ChSize;->getWidth()D

    move-result-wide v17

    invoke-virtual {v10}, Lcom/metamoji/ch/internal/ChStringWithSize;->getSize()Lcom/metamoji/ch/ChSize;

    move-result-object v8

    invoke-virtual {v8}, Lcom/metamoji/ch/ChSize;->getHeight()D

    move-result-wide v19

    invoke-direct/range {v12 .. v20}, Lcom/metamoji/ch/ChRect;-><init>(DDDD)V

    if-eqz v5, :cond_6

    .line 289
    invoke-virtual {v12, v5}, Lcom/metamoji/ch/ChRect;->intersects(Lcom/metamoji/ch/ChRect;)Z

    move-result v5

    if-eqz v5, :cond_6

    return v7

    :cond_6
    move v8, v9

    move-object v5, v12

    goto/16 :goto_2

    :cond_7
    return v6
.end method

.method private final makeLabelsAngle90()Z
    .locals 25

    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    .line 304
    iput-wide v1, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->maxHeight:D

    .line 305
    iget-object v1, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->labels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 306
    iget-object v1, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->labelPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const-wide v1, -0x4006de04abbbd2e8L    # -1.5707963267948966

    .line 307
    iput-wide v1, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->labelSpriteRotation:D

    .line 310
    iget-object v1, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->texts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x3

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 311
    iget-object v4, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->truncationStrategy:Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$TruncationStrategy;

    sget-object v5, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$TruncationStrategy;->TAIL:Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$TruncationStrategy;

    if-ne v4, v5, :cond_0

    .line 314
    sget-object v4, Lcom/metamoji/ch/internal/ChUtils;->INSTANCE:Lcom/metamoji/ch/internal/ChUtils;

    iget-object v5, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->gr:Lcom/metamoji/df/sprite/Graphics;

    iget-object v6, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->chartSize:Lcom/metamoji/ch/ChSize;

    invoke-virtual {v6}, Lcom/metamoji/ch/ChSize;->getHeight()D

    move-result-wide v6

    int-to-double v8, v3

    div-double/2addr v6, v8

    invoke-virtual {v4, v5, v2, v6, v7}, Lcom/metamoji/ch/internal/ChUtils;->truncateTail(Lcom/metamoji/df/sprite/Graphics;Ljava/lang/String;D)Lcom/metamoji/ch/internal/ChStringWithSize;

    move-result-object v2

    goto :goto_1

    .line 316
    :cond_0
    iget-object v3, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->gr:Lcom/metamoji/df/sprite/Graphics;

    invoke-virtual {v3, v2}, Lcom/metamoji/df/sprite/Graphics;->rectOfString(Ljava/lang/String;)Landroid/graphics/RectF;

    move-result-object v3

    .line 317
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/metamoji/ch/ChRectKt;->getChSize(Landroid/graphics/RectF;)Lcom/metamoji/ch/ChSize;

    move-result-object v3

    .line 318
    new-instance v4, Lcom/metamoji/ch/internal/ChStringWithSize;

    invoke-direct {v4, v2, v3}, Lcom/metamoji/ch/internal/ChStringWithSize;-><init>(Ljava/lang/String;Lcom/metamoji/ch/ChSize;)V

    move-object v2, v4

    .line 320
    :goto_1
    iget-object v3, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->labels:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 324
    :cond_1
    iget-object v1, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->truncationStrategy:Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$TruncationStrategy;

    sget-object v2, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$TruncationStrategy;->NONE:Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$TruncationStrategy;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v1, v2, :cond_3

    .line 325
    iget-object v1, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->dataAreaRect:Lcom/metamoji/ch/ChRect;

    iget-wide v6, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->dataAreaRectX:D

    invoke-virtual {v1, v6, v7}, Lcom/metamoji/ch/ChRect;->setX(D)V

    .line 326
    iget-object v1, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->dataAreaRect:Lcom/metamoji/ch/ChRect;

    iget-wide v6, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->dataAreaRectWidth:D

    invoke-virtual {v1, v6, v7}, Lcom/metamoji/ch/ChRect;->setWidth(D)V

    .line 327
    iget-object v1, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->updateDataAreaRect:Lkotlin/jvm/functions/Function1;

    iget-object v2, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->dataAreaRect:Lcom/metamoji/ch/ChRect;

    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    iget-object v1, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->labels:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 331
    iget-object v1, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->labels:Ljava/util/List;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ch/internal/ChStringWithSize;

    .line 332
    iget-object v2, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->positionAt:Lkotlin/jvm/functions/Function1;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v1}, Lcom/metamoji/ch/internal/ChStringWithSize;->getSize()Lcom/metamoji/ch/ChSize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ch/ChSize;->getHeight()D

    move-result-wide v1

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v1, v8

    sub-double/2addr v6, v1

    .line 333
    iget-wide v1, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->leftLimit:D

    cmpg-double v1, v6, v1

    if-gez v1, :cond_2

    .line 334
    iget-object v1, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->dataAreaRect:Lcom/metamoji/ch/ChRect;

    invoke-virtual {v1}, Lcom/metamoji/ch/ChRect;->getWidth()D

    move-result-wide v10

    add-double/2addr v10, v6

    invoke-virtual {v1, v10, v11}, Lcom/metamoji/ch/ChRect;->setWidth(D)V

    .line 335
    iget-object v1, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->dataAreaRect:Lcom/metamoji/ch/ChRect;

    invoke-virtual {v1}, Lcom/metamoji/ch/ChRect;->getX()D

    move-result-wide v10

    sub-double/2addr v10, v6

    invoke-virtual {v1, v10, v11}, Lcom/metamoji/ch/ChRect;->setX(D)V

    .line 336
    iget-object v1, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->updateDataAreaRect:Lkotlin/jvm/functions/Function1;

    iget-object v2, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->dataAreaRect:Lcom/metamoji/ch/ChRect;

    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    :cond_2
    iget-object v1, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->labels:Ljava/util/List;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ch/internal/ChStringWithSize;

    .line 340
    iget-object v2, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->positionAt:Lkotlin/jvm/functions/Function1;

    iget-object v6, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->labels:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    .line 341
    invoke-virtual {v1}, Lcom/metamoji/ch/internal/ChStringWithSize;->getSize()Lcom/metamoji/ch/ChSize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ch/ChSize;->getHeight()D

    move-result-wide v1

    div-double/2addr v1, v8

    add-double/2addr v1, v6

    .line 342
    iget-wide v8, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->rightLimit:D

    cmpl-double v8, v1, v8

    if-lez v8, :cond_3

    .line 343
    iget-object v8, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->dataAreaRect:Lcom/metamoji/ch/ChRect;

    invoke-virtual {v8}, Lcom/metamoji/ch/ChRect;->getWidth()D

    move-result-wide v9

    iget-object v11, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->dataAreaRect:Lcom/metamoji/ch/ChRect;

    invoke-virtual {v11}, Lcom/metamoji/ch/ChRect;->getWidth()D

    move-result-wide v11

    sub-double/2addr v1, v11

    sub-double v1, v6, v1

    div-double/2addr v1, v6

    mul-double/2addr v9, v1

    invoke-virtual {v8, v9, v10}, Lcom/metamoji/ch/ChRect;->setWidth(D)V

    .line 344
    iget-object v1, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->updateDataAreaRect:Lkotlin/jvm/functions/Function1;

    iget-object v2, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->dataAreaRect:Lcom/metamoji/ch/ChRect;

    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    :cond_3
    new-instance v1, Lcom/metamoji/ch/internal/transformer/ChCompositeTransformer;

    .line 350
    new-array v2, v3, [Lcom/metamoji/ch/internal/transformer/IChCoordinateTransformer;

    new-instance v3, Lcom/metamoji/ch/internal/transformer/ChOffsetTransformer;

    iget-object v6, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->dataAreaRect:Lcom/metamoji/ch/ChRect;

    invoke-virtual {v6}, Lcom/metamoji/ch/ChRect;->getX()D

    move-result-wide v6

    iget-object v8, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->dataAreaRect:Lcom/metamoji/ch/ChRect;

    invoke-virtual {v8}, Lcom/metamoji/ch/ChRect;->getY()D

    move-result-wide v8

    invoke-direct {v3, v6, v7, v8, v9}, Lcom/metamoji/ch/internal/transformer/ChOffsetTransformer;-><init>(DD)V

    aput-object v3, v2, v5

    .line 351
    iget-object v3, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->transformer:Lcom/metamoji/ch/internal/transformer/IChCoordinateTransformer;

    aput-object v3, v2, v4

    .line 352
    new-instance v3, Lcom/metamoji/ch/internal/transformer/ChRotateTransformer;

    const-wide v6, 0x3ff921fb54442d18L    # 1.5707963267948966

    invoke-direct {v3, v6, v7}, Lcom/metamoji/ch/internal/transformer/ChRotateTransformer;-><init>(D)V

    const/4 v6, 0x2

    aput-object v3, v2, v6

    .line 349
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/metamoji/ch/internal/transformer/ChCompositeTransformer;-><init>(Ljava/util/List;)V

    .line 358
    iget-object v2, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->labels:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v7, v5

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    add-int/lit8 v8, v7, 0x1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/metamoji/ch/internal/ChStringWithSize;

    .line 359
    new-instance v10, Lcom/metamoji/ch/ChPoint;

    iget-object v11, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->positionAt:Lkotlin/jvm/functions/Function1;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v11, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v11

    invoke-virtual {v9}, Lcom/metamoji/ch/internal/ChStringWithSize;->getSize()Lcom/metamoji/ch/ChSize;

    move-result-object v7

    invoke-virtual {v7}, Lcom/metamoji/ch/ChSize;->getHeight()D

    move-result-wide v13

    move v15, v4

    int-to-double v4, v6

    div-double/2addr v13, v4

    sub-double/2addr v11, v13

    iget-wide v4, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->labelMargin:D

    neg-double v4, v4

    invoke-direct {v10, v11, v12, v4, v5}, Lcom/metamoji/ch/ChPoint;-><init>(DD)V

    .line 360
    invoke-virtual {v1, v10}, Lcom/metamoji/ch/internal/transformer/ChCompositeTransformer;->point(Lcom/metamoji/ch/ChPoint;)Lcom/metamoji/ch/ChPoint;

    move-result-object v4

    .line 361
    invoke-virtual {v4}, Lcom/metamoji/ch/ChPoint;->getX()D

    move-result-wide v10

    invoke-virtual {v9}, Lcom/metamoji/ch/internal/ChStringWithSize;->getSize()Lcom/metamoji/ch/ChSize;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/ch/ChSize;->getWidth()D

    move-result-wide v12

    sub-double/2addr v10, v12

    invoke-virtual {v4, v10, v11}, Lcom/metamoji/ch/ChPoint;->setX(D)V

    .line 362
    iget-wide v10, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->maxHeight:D

    invoke-virtual {v9}, Lcom/metamoji/ch/internal/ChStringWithSize;->getSize()Lcom/metamoji/ch/ChSize;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/ch/ChSize;->getWidth()D

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    iput-wide v10, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->maxHeight:D

    .line 364
    iget-object v5, v0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->labelPoints:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    new-instance v16, Lcom/metamoji/ch/ChRect;

    invoke-virtual {v4}, Lcom/metamoji/ch/ChPoint;->getX()D

    move-result-wide v17

    invoke-virtual {v4}, Lcom/metamoji/ch/ChPoint;->getY()D

    move-result-wide v19

    invoke-virtual {v9}, Lcom/metamoji/ch/internal/ChStringWithSize;->getSize()Lcom/metamoji/ch/ChSize;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/ch/ChSize;->getWidth()D

    move-result-wide v21

    invoke-virtual {v9}, Lcom/metamoji/ch/internal/ChStringWithSize;->getSize()Lcom/metamoji/ch/ChSize;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/ch/ChSize;->getHeight()D

    move-result-wide v23

    invoke-direct/range {v16 .. v24}, Lcom/metamoji/ch/ChRect;-><init>(DDDD)V

    move-object/from16 v4, v16

    if-eqz v3, :cond_4

    .line 368
    invoke-virtual {v4, v3}, Lcom/metamoji/ch/ChRect;->intersects(Lcom/metamoji/ch/ChRect;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v15, 0x0

    :cond_4
    move-object v3, v4

    move v7, v8

    move v4, v15

    const/4 v5, 0x0

    goto/16 :goto_2

    :cond_5
    move v15, v4

    return v15
.end method


# virtual methods
.method public final build()Lcom/metamoji/ch/internal/ChHorizontalAxisLabels;
    .locals 8

    .line 110
    invoke-direct {p0}, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->makeLabelsAngle0()Z

    move-result v0

    if-nez v0, :cond_1

    .line 111
    invoke-direct {p0}, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->makeLabelsAngle45()Z

    move-result v0

    if-nez v0, :cond_1

    .line 112
    invoke-direct {p0}, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->makeLabelsAngle90()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 115
    :goto_1
    iget-wide v1, p0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->maxHeight:D

    iget-wide v3, p0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->labelMargin:D

    add-double/2addr v1, v3

    .line 116
    iget-object v3, p0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->dataAreaRect:Lcom/metamoji/ch/ChRect;

    invoke-virtual {v3}, Lcom/metamoji/ch/ChRect;->getY()D

    move-result-wide v4

    add-double/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Lcom/metamoji/ch/ChRect;->setY(D)V

    .line 117
    iget-object v3, p0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->dataAreaRect:Lcom/metamoji/ch/ChRect;

    invoke-virtual {v3}, Lcom/metamoji/ch/ChRect;->getHeight()D

    move-result-wide v4

    sub-double/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Lcom/metamoji/ch/ChRect;->setHeight(D)V

    .line 118
    iget-object v3, p0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->updateDataAreaRect:Lkotlin/jvm/functions/Function1;

    iget-object v4, p0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->dataAreaRect:Lcom/metamoji/ch/ChRect;

    invoke-interface {v3, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    neg-double v1, v1

    .line 119
    iput-wide v1, p0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->labelSpriteY:D

    if-nez v0, :cond_2

    .line 123
    iget-object v0, p0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->labelPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 126
    :cond_2
    new-instance v1, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels;

    .line 127
    iget-object v2, p0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->labels:Ljava/util/List;

    .line 128
    iget-object v3, p0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->labelPoints:Ljava/util/List;

    .line 129
    iget-wide v4, p0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->labelSpriteRotation:D

    .line 130
    iget-wide v6, p0, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels$Builder;->labelSpriteY:D

    .line 126
    invoke-direct/range {v1 .. v7}, Lcom/metamoji/ch/internal/ChHorizontalAxisLabels;-><init>(Ljava/util/List;Ljava/util/List;DD)V

    return-object v1
.end method
