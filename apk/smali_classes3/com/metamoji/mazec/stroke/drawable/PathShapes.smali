.class public Lcom/metamoji/mazec/stroke/drawable/PathShapes;
.super Ljava/lang/Object;
.source "PathShapes.java"

# interfaces
.implements Lcom/metamoji/mazec/stroke/drawable/Drawable;


# instance fields
.field private mPaint:Landroid/graphics/Paint;

.field private mShapes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/metamoji/mazec/stroke/drawable/PathShapes;->mPaint:Landroid/graphics/Paint;

    .line 24
    invoke-direct {p0}, Lcom/metamoji/mazec/stroke/drawable/PathShapes;->initPaint()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/mazec/stroke/drawable/PathShapes;->mShapes:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Path;",
            ">;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/metamoji/mazec/stroke/drawable/PathShapes;->mPaint:Landroid/graphics/Paint;

    .line 28
    invoke-direct {p0}, Lcom/metamoji/mazec/stroke/drawable/PathShapes;->initPaint()V

    .line 29
    iput-object p1, p0, Lcom/metamoji/mazec/stroke/drawable/PathShapes;->mShapes:Ljava/util/List;

    return-void
.end method

.method private initPaint()V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/drawable/PathShapes;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 33
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/drawable/PathShapes;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 34
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/drawable/PathShapes;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 35
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/drawable/PathShapes;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    return-void
.end method


# virtual methods
.method public addShape(Landroid/graphics/Path;)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/drawable/PathShapes;->mShapes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clone()Lcom/metamoji/mazec/stroke/drawable/Drawable;
    .locals 3

    .line 66
    new-instance v0, Lcom/metamoji/mazec/stroke/drawable/PathShapes;

    invoke-direct {v0}, Lcom/metamoji/mazec/stroke/drawable/PathShapes;-><init>()V

    .line 67
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/metamoji/mazec/stroke/drawable/PathShapes;->mShapes:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/metamoji/mazec/stroke/drawable/PathShapes;->mShapes:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 18
    invoke-virtual {p0}, Lcom/metamoji/mazec/stroke/drawable/PathShapes;->clone()Lcom/metamoji/mazec/stroke/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;Lcom/metamoji/mazec/stroke/StrokeStyle;Lcom/metamoji/mazec/stroke/StrokeStyleResolver;Z)V
    .locals 3

    .line 39
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/drawable/PathShapes;->mShapes:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_1

    .line 42
    :cond_0
    invoke-interface {p3, p2, p4}, Lcom/metamoji/mazec/stroke/StrokeStyleResolver;->getLineColor(Lcom/metamoji/mazec/stroke/StrokeStyle;Z)I

    move-result p4

    .line 43
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/drawable/PathShapes;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 44
    iget-object p4, p0, Lcom/metamoji/mazec/stroke/drawable/PathShapes;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 45
    iget-object p4, p0, Lcom/metamoji/mazec/stroke/drawable/PathShapes;->mShapes:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Path;

    .line 46
    invoke-interface {p3, p2, v0}, Lcom/metamoji/mazec/stroke/StrokeStyleResolver;->getGradient(Lcom/metamoji/mazec/stroke/StrokeStyle;Landroid/graphics/Path;)Landroid/graphics/Shader;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 48
    iget-object v2, p0, Lcom/metamoji/mazec/stroke/drawable/PathShapes;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 50
    :cond_1
    iget-object v1, p0, Lcom/metamoji/mazec/stroke/drawable/PathShapes;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;)V
    .locals 4

    .line 75
    invoke-virtual {p1}, Landroid/graphics/RectF;->setEmpty()V

    .line 76
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/drawable/PathShapes;->mShapes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Path;

    .line 77
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    const/4 v3, 0x0

    .line 78
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 79
    invoke-virtual {p1, v2}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/drawable/PathShapes;->mShapes:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public transform(Landroid/graphics/Matrix;)Lcom/metamoji/mazec/stroke/drawable/Drawable;
    .locals 4

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    iget-object v1, p0, Lcom/metamoji/mazec/stroke/drawable/PathShapes;->mShapes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Path;

    .line 58
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 59
    invoke-virtual {v2, p1, v3}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 60
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 62
    :cond_0
    new-instance p1, Lcom/metamoji/mazec/stroke/drawable/PathShapes;

    invoke-direct {p1, v0}, Lcom/metamoji/mazec/stroke/drawable/PathShapes;-><init>(Ljava/util/List;)V

    return-object p1
.end method
