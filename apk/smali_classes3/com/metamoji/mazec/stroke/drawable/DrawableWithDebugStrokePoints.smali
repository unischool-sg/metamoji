.class public Lcom/metamoji/mazec/stroke/drawable/DrawableWithDebugStrokePoints;
.super Ljava/lang/Object;
.source "DrawableWithDebugStrokePoints.java"

# interfaces
.implements Lcom/metamoji/mazec/stroke/drawable/Drawable;


# instance fields
.field private mColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDrawable:Lcom/metamoji/mazec/stroke/drawable/Drawable;

.field private mPaint:Landroid/graphics/Paint;

.field private mPointsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/metamoji/mazec/stroke/drawable/DrawableWithDebugStrokePoints;->mPaint:Landroid/graphics/Paint;

    .line 24
    invoke-direct {p0}, Lcom/metamoji/mazec/stroke/drawable/DrawableWithDebugStrokePoints;->initPaint()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/mazec/stroke/drawable/DrawableWithDebugStrokePoints;->mPointsList:Ljava/util/List;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/mazec/stroke/drawable/DrawableWithDebugStrokePoints;->mColors:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/mazec/stroke/drawable/Drawable;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/metamoji/mazec/stroke/drawable/DrawableWithDebugStrokePoints;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/metamoji/mazec/stroke/drawable/DrawableWithDebugStrokePoints;->mDrawable:Lcom/metamoji/mazec/stroke/drawable/Drawable;

    return-void
.end method

.method private initPaint()V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/drawable/DrawableWithDebugStrokePoints;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 34
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/drawable/DrawableWithDebugStrokePoints;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 35
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/drawable/DrawableWithDebugStrokePoints;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 36
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/drawable/DrawableWithDebugStrokePoints;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    return-void
.end method


# virtual methods
.method public addPoints(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;I)V"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/drawable/DrawableWithDebugStrokePoints;->mPointsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object p1, p0, Lcom/metamoji/mazec/stroke/drawable/DrawableWithDebugStrokePoints;->mColors:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clone()Lcom/metamoji/mazec/stroke/drawable/Drawable;
    .locals 5

    .line 92
    new-instance v0, Lcom/metamoji/mazec/stroke/drawable/DrawableWithDebugStrokePoints;

    invoke-direct {v0}, Lcom/metamoji/mazec/stroke/drawable/DrawableWithDebugStrokePoints;-><init>()V

    .line 93
    iget-object v1, p0, Lcom/metamoji/mazec/stroke/drawable/DrawableWithDebugStrokePoints;->mDrawable:Lcom/metamoji/mazec/stroke/drawable/Drawable;

    invoke-interface {v1}, Lcom/metamoji/mazec/stroke/drawable/Drawable;->clone()Lcom/metamoji/mazec/stroke/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/mazec/stroke/drawable/DrawableWithDebugStrokePoints;->mDrawable:Lcom/metamoji/mazec/stroke/drawable/Drawable;

    .line 94
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/metamoji/mazec/stroke/drawable/DrawableWithDebugStrokePoints;->mPointsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 95
    iget-object v2, p0, Lcom/metamoji/mazec/stroke/drawable/DrawableWithDebugStrokePoints;->mPointsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 96
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 97
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 99
    :cond_0
    iput-object v1, v0, Lcom/metamoji/mazec/stroke/drawable/DrawableWithDebugStrokePoints;->mPointsList:Ljava/util/List;

    .line 100
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/metamoji/mazec/stroke/drawable/DrawableWithDebugStrokePoints;->mColors:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/metamoji/mazec/stroke/drawable/DrawableWithDebugStrokePoints;->mColors:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 16
    invoke-virtual {p0}, Lcom/metamoji/mazec/stroke/drawable/DrawableWithDebugStrokePoints;->clone()Lcom/metamoji/mazec/stroke/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;Lcom/metamoji/mazec/stroke/StrokeStyle;Lcom/metamoji/mazec/stroke/StrokeStyleResolver;Z)V
    .locals 4

    .line 43
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/drawable/DrawableWithDebugStrokePoints;->mDrawable:Lcom/metamoji/mazec/stroke/drawable/Drawable;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/metamoji/mazec/stroke/drawable/Drawable;->draw(Landroid/graphics/Canvas;Lcom/metamoji/mazec/stroke/StrokeStyle;Lcom/metamoji/mazec/stroke/StrokeStyleResolver;Z)V

    if-nez p4, :cond_1

    .line 46
    iget-object p2, p0, Lcom/metamoji/mazec/stroke/drawable/DrawableWithDebugStrokePoints;->mPointsList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 p3, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/List;

    .line 47
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/drawable/DrawableWithDebugStrokePoints;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/metamoji/mazec/stroke/drawable/DrawableWithDebugStrokePoints;->mColors:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 49
    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    const/high16 v2, 0x40000000    # 2.0f

    iget-object v3, p0, Lcom/metamoji/mazec/stroke/drawable/DrawableWithDebugStrokePoints;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/drawable/DrawableWithDebugStrokePoints;->mDrawable:Lcom/metamoji/mazec/stroke/drawable/Drawable;

    invoke-interface {v0, p1}, Lcom/metamoji/mazec/stroke/drawable/Drawable;->getBounds(Landroid/graphics/RectF;)V

    return-void
.end method

.method public setPathShapes(Lcom/metamoji/mazec/stroke/drawable/PathShapes;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/metamoji/mazec/stroke/drawable/DrawableWithDebugStrokePoints;->mDrawable:Lcom/metamoji/mazec/stroke/drawable/Drawable;

    return-void
.end method

.method public transform(Landroid/graphics/Matrix;)Lcom/metamoji/mazec/stroke/drawable/Drawable;
    .locals 10

    .line 58
    new-instance v0, Lcom/metamoji/mazec/stroke/drawable/DrawableWithDebugStrokePoints;

    invoke-direct {v0, p0}, Lcom/metamoji/mazec/stroke/drawable/DrawableWithDebugStrokePoints;-><init>(Lcom/metamoji/mazec/stroke/drawable/Drawable;)V

    .line 59
    iget-object v1, v0, Lcom/metamoji/mazec/stroke/drawable/DrawableWithDebugStrokePoints;->mDrawable:Lcom/metamoji/mazec/stroke/drawable/Drawable;

    invoke-interface {v1, p1}, Lcom/metamoji/mazec/stroke/drawable/Drawable;->transform(Landroid/graphics/Matrix;)Lcom/metamoji/mazec/stroke/drawable/Drawable;

    .line 60
    iget-object v1, v0, Lcom/metamoji/mazec/stroke/drawable/DrawableWithDebugStrokePoints;->mPointsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 61
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v4, v3, 0x2

    .line 62
    new-array v4, v4, [F

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v3, :cond_1

    .line 64
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/PointF;

    mul-int/lit8 v8, v6, 0x2

    .line 65
    iget v9, v7, Landroid/graphics/PointF;->x:F

    aput v9, v4, v8

    add-int/lit8 v8, v8, 0x1

    .line 66
    iget v7, v7, Landroid/graphics/PointF;->y:F

    aput v7, v4, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 68
    :cond_1
    invoke-virtual {p1, v4}, Landroid/graphics/Matrix;->mapPoints([F)V

    :goto_1
    if-ge v5, v3, :cond_0

    .line 70
    new-instance v6, Landroid/graphics/PointF;

    mul-int/lit8 v7, v5, 0x2

    aget v8, v4, v7

    add-int/lit8 v7, v7, 0x1

    aget v7, v4, v7

    invoke-direct {v6, v8, v7}, Landroid/graphics/PointF;-><init>(FF)V

    .line 71
    invoke-interface {v2, v5, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method
