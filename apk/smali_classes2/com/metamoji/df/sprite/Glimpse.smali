.class public Lcom/metamoji/df/sprite/Glimpse;
.super Ljava/lang/Object;
.source "Glimpse.java"

# interfaces
.implements Lcom/metamoji/df/sprite/Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/df/sprite/Glimpse$Thumb;,
        Lcom/metamoji/df/sprite/Glimpse$Required;
    }
.end annotation


# static fields
.field static FIT_HEIGHT_MARGIN:F = 70.0f

.field static FIT_WIDTH_MARGIN:F = 20.0f

.field private static final white:Landroid/graphics/Paint;


# instance fields
.field private beginTx:F

.field private nextLeft:F

.field private nextThumb:Lcom/metamoji/df/sprite/Glimpse$Thumb;

.field private nextX:F

.field private owner:Lcom/metamoji/df/sprite/Layer;

.field private prevRight:F

.field private prevThumb:Lcom/metamoji/df/sprite/Glimpse$Thumb;

.field private prevX:F


# direct methods
.method static bridge synthetic -$$Nest$sfgetwhite()Landroid/graphics/Paint;
    .locals 1

    sget-object v0, Lcom/metamoji/df/sprite/Glimpse;->white:Landroid/graphics/Paint;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 72
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/metamoji/df/sprite/Glimpse;->white:Landroid/graphics/Paint;

    return-void
.end method

.method constructor <init>(Lcom/metamoji/df/sprite/TurnOverMediator;)V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    sget-object v0, Lcom/metamoji/df/sprite/Glimpse;->white:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 75
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 34
    new-instance v0, Lcom/metamoji/df/sprite/Glimpse$1;

    invoke-direct {v0, p0}, Lcom/metamoji/df/sprite/Glimpse$1;-><init>(Lcom/metamoji/df/sprite/Glimpse;)V

    .line 35
    invoke-interface {p1, v0}, Lcom/metamoji/df/sprite/TurnOverMediator;->requestThumbnail(Lcom/metamoji/df/sprite/ThumbnailRequest;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    iput-object v0, p0, Lcom/metamoji/df/sprite/Glimpse;->prevThumb:Lcom/metamoji/df/sprite/Glimpse$Thumb;

    .line 38
    :cond_0
    new-instance v0, Lcom/metamoji/df/sprite/Glimpse$2;

    invoke-direct {v0, p0}, Lcom/metamoji/df/sprite/Glimpse$2;-><init>(Lcom/metamoji/df/sprite/Glimpse;)V

    .line 39
    invoke-interface {p1, v0}, Lcom/metamoji/df/sprite/TurnOverMediator;->requestThumbnail(Lcom/metamoji/df/sprite/ThumbnailRequest;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 40
    iput-object v0, p0, Lcom/metamoji/df/sprite/Glimpse;->nextThumb:Lcom/metamoji/df/sprite/Glimpse$Thumb;

    :cond_1
    return-void
.end method

.method private connect()V
    .locals 7

    .line 88
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Glimpse;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/metamoji/df/sprite/Glimpse;->owner:Lcom/metamoji/df/sprite/Layer;

    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Layer;->getBounds()Landroid/graphics/RectF;

    move-result-object v1

    .line 92
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Viewport;->getScrollTranslate()Landroid/graphics/PointF;

    move-result-object v2

    .line 93
    iget v3, v2, Landroid/graphics/PointF;->x:F

    iput v3, p0, Lcom/metamoji/df/sprite/Glimpse;->beginTx:F

    .line 95
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Viewport;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v3

    .line 97
    invoke-virtual {v3}, Lcom/metamoji/df/sprite/Stage;->getWidth()F

    move-result v4

    .line 98
    invoke-virtual {v3}, Lcom/metamoji/df/sprite/Stage;->getHeight()F

    move-result v3

    .line 100
    new-instance v5, Landroid/graphics/RectF;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v6, v4, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 101
    iget v6, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v5, v6, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 103
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Viewport;->getScrollableMargin()Landroid/graphics/RectF;

    move-result-object v0

    .line 104
    invoke-static {v5, v0}, Lcom/metamoji/df/sprite/Geometry;->inflate(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    .line 107
    iget v2, v1, Landroid/graphics/RectF;->right:F

    iget v5, v0, Landroid/graphics/RectF;->right:F

    cmpg-float v2, v2, v5

    if-gez v2, :cond_0

    .line 109
    iget v2, v0, Landroid/graphics/RectF;->right:F

    iput v2, p0, Lcom/metamoji/df/sprite/Glimpse;->nextLeft:F

    goto :goto_0

    .line 112
    :cond_0
    iget v2, v1, Landroid/graphics/RectF;->right:F

    iput v2, p0, Lcom/metamoji/df/sprite/Glimpse;->nextLeft:F

    .line 114
    :goto_0
    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v5, v1, Landroid/graphics/RectF;->left:F

    cmpg-float v2, v2, v5

    if-gez v2, :cond_1

    .line 116
    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Lcom/metamoji/df/sprite/Glimpse;->prevRight:F

    goto :goto_1

    .line 119
    :cond_1
    iget v0, v1, Landroid/graphics/RectF;->left:F

    iput v0, p0, Lcom/metamoji/df/sprite/Glimpse;->prevRight:F

    .line 121
    :goto_1
    iget v0, p0, Lcom/metamoji/df/sprite/Glimpse;->prevRight:F

    iput v0, p0, Lcom/metamoji/df/sprite/Glimpse;->prevX:F

    .line 122
    iget v0, p0, Lcom/metamoji/df/sprite/Glimpse;->nextLeft:F

    iput v0, p0, Lcom/metamoji/df/sprite/Glimpse;->nextX:F

    .line 124
    iget-object v0, p0, Lcom/metamoji/df/sprite/Glimpse;->prevThumb:Lcom/metamoji/df/sprite/Glimpse$Thumb;

    if-eqz v0, :cond_2

    .line 125
    invoke-virtual {v0, v4, v3}, Lcom/metamoji/df/sprite/Glimpse$Thumb;->putSize(FF)V

    .line 127
    :cond_2
    iget-object v0, p0, Lcom/metamoji/df/sprite/Glimpse;->nextThumb:Lcom/metamoji/df/sprite/Glimpse$Thumb;

    if-eqz v0, :cond_3

    .line 128
    invoke-virtual {v0, v4, v3}, Lcom/metamoji/df/sprite/Glimpse$Thumb;->putSize(FF)V

    :cond_3
    return-void
.end method

.method private disconnect()V
    .locals 0

    return-void
.end method

.method private getViewport()Lcom/metamoji/df/sprite/Viewport;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/metamoji/df/sprite/Glimpse;->owner:Lcom/metamoji/df/sprite/Layer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Layer;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private paint(Landroid/graphics/Canvas;)V
    .locals 7

    .line 142
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Glimpse;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Viewport;->getScrollTranslate()Landroid/graphics/PointF;

    move-result-object v0

    .line 146
    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/metamoji/df/sprite/Glimpse;->beginTx:F

    sub-float/2addr v0, v1

    .line 147
    iget v1, p0, Lcom/metamoji/df/sprite/Glimpse;->nextLeft:F

    add-float/2addr v1, v0

    iput v1, p0, Lcom/metamoji/df/sprite/Glimpse;->nextX:F

    .line 148
    iget v1, p0, Lcom/metamoji/df/sprite/Glimpse;->prevRight:F

    add-float/2addr v1, v0

    iput v1, p0, Lcom/metamoji/df/sprite/Glimpse;->prevX:F

    .line 151
    iget-object v0, p0, Lcom/metamoji/df/sprite/Glimpse;->owner:Lcom/metamoji/df/sprite/Layer;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Layer;->getSize()Landroid/graphics/Point;

    move-result-object v0

    .line 152
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 153
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 156
    new-instance v2, Landroid/graphics/RectF;

    sget v3, Lcom/metamoji/df/sprite/Glimpse;->FIT_WIDTH_MARGIN:F

    sget v4, Lcom/metamoji/df/sprite/Glimpse;->FIT_HEIGHT_MARGIN:F

    invoke-direct {v2, v3, v4, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 157
    new-instance v3, Landroid/graphics/RectF;

    int-to-float v1, v1

    int-to-float v0, v0

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4, v1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {v3, v2}, Lcom/metamoji/df/sprite/Geometry;->deflate(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v2

    .line 160
    iget-object v3, p0, Lcom/metamoji/df/sprite/Glimpse;->prevThumb:Lcom/metamoji/df/sprite/Glimpse$Thumb;

    if-eqz v3, :cond_0

    .line 161
    new-instance v3, Landroid/graphics/RectF;

    iget v5, p0, Lcom/metamoji/df/sprite/Glimpse;->prevX:F

    sub-float v6, v5, v1

    invoke-direct {v3, v6, v4, v5, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 162
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 163
    iget v3, v3, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 164
    iget-object v3, p0, Lcom/metamoji/df/sprite/Glimpse;->prevThumb:Lcom/metamoji/df/sprite/Glimpse$Thumb;

    invoke-virtual {v3, p1, v2}, Lcom/metamoji/df/sprite/Glimpse$Thumb;->paint(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 165
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 168
    :cond_0
    iget-object v3, p0, Lcom/metamoji/df/sprite/Glimpse;->nextThumb:Lcom/metamoji/df/sprite/Glimpse$Thumb;

    if-eqz v3, :cond_1

    .line 169
    new-instance v3, Landroid/graphics/RectF;

    iget v5, p0, Lcom/metamoji/df/sprite/Glimpse;->nextX:F

    add-float/2addr v1, v5

    invoke-direct {v3, v5, v4, v1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 170
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 171
    iget v0, v3, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 172
    iget-object v0, p0, Lcom/metamoji/df/sprite/Glimpse;->nextThumb:Lcom/metamoji/df/sprite/Glimpse$Thumb;

    invoke-virtual {v0, p1, v2}, Lcom/metamoji/df/sprite/Glimpse$Thumb;->paint(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 173
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    return-void
.end method

.method public static setGlimpseMargin(FF)V
    .locals 0

    .line 27
    sput p0, Lcom/metamoji/df/sprite/Glimpse;->FIT_WIDTH_MARGIN:F

    .line 28
    sput p1, Lcom/metamoji/df/sprite/Glimpse;->FIT_HEIGHT_MARGIN:F

    return-void
.end method


# virtual methods
.method public paint(Lcom/metamoji/df/sprite/CanvasContext;)V
    .locals 0

    .line 295
    invoke-virtual {p1}, Lcom/metamoji/df/sprite/CanvasContext;->getCanvas()Landroid/graphics/Canvas;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/metamoji/df/sprite/Glimpse;->paint(Landroid/graphics/Canvas;)V

    return-void
.end method

.method required()Lcom/metamoji/df/sprite/Glimpse$Required;
    .locals 7

    .line 245
    iget-object v0, p0, Lcom/metamoji/df/sprite/Glimpse;->owner:Lcom/metamoji/df/sprite/Layer;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Layer;->getSize()Landroid/graphics/Point;

    move-result-object v0

    .line 246
    iget v1, v0, Landroid/graphics/Point;->x:I

    div-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    .line 247
    iget v2, v0, Landroid/graphics/Point;->x:I

    div-int/lit8 v2, v2, 0x4

    int-to-float v2, v2

    .line 248
    iget v3, p0, Lcom/metamoji/df/sprite/Glimpse;->nextX:F

    cmpg-float v1, v3, v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/metamoji/df/sprite/Glimpse;->nextThumb:Lcom/metamoji/df/sprite/Glimpse$Thumb;

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    .line 249
    :goto_0
    iget v5, p0, Lcom/metamoji/df/sprite/Glimpse;->prevX:F

    cmpg-float v2, v2, v5

    if-gez v2, :cond_1

    iget-object v2, p0, Lcom/metamoji/df/sprite/Glimpse;->prevThumb:Lcom/metamoji/df/sprite/Glimpse$Thumb;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    if-nez v1, :cond_3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    return-object v0

    .line 251
    :cond_3
    :goto_2
    new-instance v2, Lcom/metamoji/df/sprite/Glimpse$Required;

    invoke-direct {v2}, Lcom/metamoji/df/sprite/Glimpse$Required;-><init>()V

    .line 252
    iput-boolean v1, v2, Lcom/metamoji/df/sprite/Glimpse$Required;->next:Z

    .line 253
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Glimpse;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v3

    .line 254
    invoke-virtual {v3}, Lcom/metamoji/df/sprite/Viewport;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v4

    .line 255
    invoke-virtual {v4}, Lcom/metamoji/df/sprite/Stage;->getWidth()F

    move-result v4

    .line 256
    invoke-virtual {v3}, Lcom/metamoji/df/sprite/Viewport;->getScrollableMargin()Landroid/graphics/RectF;

    move-result-object v3

    if-eqz v1, :cond_4

    .line 258
    iget v3, v3, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v3

    neg-float v3, v4

    iput v3, v2, Lcom/metamoji/df/sprite/Glimpse$Required;->translate:F

    goto :goto_3

    .line 260
    :cond_4
    iget v4, v0, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v3

    iput v4, v2, Lcom/metamoji/df/sprite/Glimpse$Required;->translate:F

    :goto_3
    if-eqz v1, :cond_5

    .line 262
    iget-object v1, p0, Lcom/metamoji/df/sprite/Glimpse;->nextThumb:Lcom/metamoji/df/sprite/Glimpse$Thumb;

    goto :goto_4

    :cond_5
    iget-object v1, p0, Lcom/metamoji/df/sprite/Glimpse;->prevThumb:Lcom/metamoji/df/sprite/Glimpse$Thumb;

    :goto_4
    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Glimpse$Thumb;->getPaperRect()Landroid/graphics/RectF;

    move-result-object v1

    .line 263
    new-instance v3, Landroid/graphics/RectF;

    sget v4, Lcom/metamoji/df/sprite/Glimpse;->FIT_WIDTH_MARGIN:F

    sget v5, Lcom/metamoji/df/sprite/Glimpse;->FIT_HEIGHT_MARGIN:F

    invoke-direct {v3, v4, v5, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 264
    new-instance v4, Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    const/4 v6, 0x0

    invoke-direct {v4, v6, v6, v5, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {v4, v3}, Lcom/metamoji/df/sprite/Geometry;->deflate(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    .line 265
    sget-object v3, Lcom/metamoji/df/sprite/Geometry;->matrixPool:Lcom/metamoji/df/sprite/Geometry$MatrixPool;

    invoke-virtual {v3}, Lcom/metamoji/df/sprite/Geometry$MatrixPool;->withdraw()Landroid/graphics/Matrix;

    move-result-object v3

    .line 266
    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v3, v1, v0, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 267
    invoke-static {v3, v1}, Lcom/metamoji/df/sprite/Geometry;->transform(Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    iput-object v0, v2, Lcom/metamoji/df/sprite/Glimpse$Required;->rect:Landroid/graphics/RectF;

    .line 268
    sget-object v0, Lcom/metamoji/df/sprite/Geometry;->matrixPool:Lcom/metamoji/df/sprite/Geometry$MatrixPool;

    invoke-virtual {v0, v3}, Lcom/metamoji/df/sprite/Geometry$MatrixPool;->deposit(Landroid/graphics/Matrix;)V

    return-object v2
.end method

.method public setOwner(Lcom/metamoji/df/sprite/Layer;)V
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/metamoji/df/sprite/Glimpse;->owner:Lcom/metamoji/df/sprite/Layer;

    if-eqz v0, :cond_0

    .line 282
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Glimpse;->disconnect()V

    .line 284
    :cond_0
    iput-object p1, p0, Lcom/metamoji/df/sprite/Glimpse;->owner:Lcom/metamoji/df/sprite/Layer;

    if-eqz p1, :cond_1

    .line 286
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Glimpse;->connect()V

    :cond_1
    return-void
.end method
