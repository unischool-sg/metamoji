.class public Lcom/metamoji/df/sprite/Sprite;
.super Ljava/lang/Object;
.source "Sprite.java"


# static fields
.field private static final CLIPPING:I = 0x2

.field private static final ENABLED_BOUNDS:I = 0x8

.field private static final ENABLED_INVERSE_MATRIX:I = 0x20

.field private static final ENABLED_MATRIX:I = 0x10

.field private static final PDFVIEW:I = 0x100

.field private static final VISIBLE:I = 0x1


# instance fields
.field private alpha:F

.field private bounds:Landroid/graphics/RectF;

.field private children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/df/sprite/Sprite;",
            ">;"
        }
    .end annotation
.end field

.field private clippingPath:Landroid/graphics/Path;

.field private dropShadow:Lcom/metamoji/df/sprite/DropShadow;

.field private flags:I

.field private graphics:Lcom/metamoji/df/sprite/Graphics;

.field private height:F

.field private inverseMatrix:Landroid/graphics/Matrix;

.field private matrix:Landroid/graphics/Matrix;

.field public name:Ljava/lang/String;

.field private owner:Lcom/metamoji/df/sprite/SpriteOwner;

.field private parent:Lcom/metamoji/df/sprite/Sprite;

.field private rotation:F

.field private scaleX:F

.field private scaleY:F

.field private width:F

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/df/sprite/Sprite;->children:Ljava/util/List;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 32
    iput v0, p0, Lcom/metamoji/df/sprite/Sprite;->alpha:F

    .line 34
    iput v0, p0, Lcom/metamoji/df/sprite/Sprite;->scaleX:F

    .line 35
    iput v0, p0, Lcom/metamoji/df/sprite/Sprite;->scaleY:F

    const/4 v0, 0x1

    .line 46
    iput v0, p0, Lcom/metamoji/df/sprite/Sprite;->flags:I

    .line 98
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/df/sprite/Sprite;->bounds:Landroid/graphics/RectF;

    .line 99
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/metamoji/df/sprite/Sprite;->matrix:Landroid/graphics/Matrix;

    .line 100
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/metamoji/df/sprite/Sprite;->inverseMatrix:Landroid/graphics/Matrix;

    .line 106
    new-instance v0, Lcom/metamoji/df/sprite/Graphics;

    invoke-direct {v0, p0}, Lcom/metamoji/df/sprite/Graphics;-><init>(Lcom/metamoji/df/sprite/Sprite;)V

    iput-object v0, p0, Lcom/metamoji/df/sprite/Sprite;->graphics:Lcom/metamoji/df/sprite/Graphics;

    return-void
.end method

.method private IS_CLIPPING()Z
    .locals 1

    .line 57
    iget v0, p0, Lcom/metamoji/df/sprite/Sprite;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private IS_ENABLED_BOUNDS()Z
    .locals 1

    .line 75
    iget v0, p0, Lcom/metamoji/df/sprite/Sprite;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private IS_ENABLED_INVERSE_MATRIX()Z
    .locals 1

    .line 91
    iget v0, p0, Lcom/metamoji/df/sprite/Sprite;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private IS_ENABLED_MATRIX()Z
    .locals 1

    .line 83
    iget v0, p0, Lcom/metamoji/df/sprite/Sprite;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private IS_PDFVIEW()Z
    .locals 1

    .line 65
    iget v0, p0, Lcom/metamoji/df/sprite/Sprite;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private IS_VISIBLE()Z
    .locals 2

    .line 49
    iget v0, p0, Lcom/metamoji/df/sprite/Sprite;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private SET_CLIPPING(Z)I
    .locals 1

    .line 61
    iget v0, p0, Lcom/metamoji/df/sprite/Sprite;->flags:I

    if-eqz p1, :cond_0

    or-int/lit8 p1, v0, 0x2

    :goto_0
    iput p1, p0, Lcom/metamoji/df/sprite/Sprite;->flags:I

    return p1

    :cond_0
    and-int/lit8 p1, v0, -0x3

    goto :goto_0
.end method

.method private SET_ENABLED_BOUNDS(Z)I
    .locals 1

    .line 79
    iget v0, p0, Lcom/metamoji/df/sprite/Sprite;->flags:I

    if-eqz p1, :cond_0

    or-int/lit8 p1, v0, 0x8

    :goto_0
    iput p1, p0, Lcom/metamoji/df/sprite/Sprite;->flags:I

    return p1

    :cond_0
    and-int/lit8 p1, v0, -0x9

    goto :goto_0
.end method

.method private SET_ENABLED_INVERSE_MATRIX(Z)I
    .locals 1

    .line 95
    iget v0, p0, Lcom/metamoji/df/sprite/Sprite;->flags:I

    if-eqz p1, :cond_0

    or-int/lit8 p1, v0, 0x20

    :goto_0
    iput p1, p0, Lcom/metamoji/df/sprite/Sprite;->flags:I

    return p1

    :cond_0
    and-int/lit8 p1, v0, -0x21

    goto :goto_0
.end method

.method private SET_ENABLED_MATRIX(Z)I
    .locals 1

    .line 87
    iget v0, p0, Lcom/metamoji/df/sprite/Sprite;->flags:I

    if-eqz p1, :cond_0

    or-int/lit8 p1, v0, 0x10

    :goto_0
    iput p1, p0, Lcom/metamoji/df/sprite/Sprite;->flags:I

    return p1

    :cond_0
    and-int/lit8 p1, v0, -0x11

    goto :goto_0
.end method

.method private SET_PDFVIEW(Z)I
    .locals 1

    .line 69
    iget v0, p0, Lcom/metamoji/df/sprite/Sprite;->flags:I

    if-eqz p1, :cond_0

    or-int/lit16 p1, v0, 0x100

    :goto_0
    iput p1, p0, Lcom/metamoji/df/sprite/Sprite;->flags:I

    return p1

    :cond_0
    and-int/lit16 p1, v0, -0x101

    goto :goto_0
.end method

.method private SET_VISIBLE(Z)I
    .locals 1

    .line 53
    iget v0, p0, Lcom/metamoji/df/sprite/Sprite;->flags:I

    if-eqz p1, :cond_0

    or-int/lit8 p1, v0, 0x1

    :goto_0
    iput p1, p0, Lcom/metamoji/df/sprite/Sprite;->flags:I

    return p1

    :cond_0
    and-int/lit8 p1, v0, -0x2

    goto :goto_0
.end method

.method private boundsOfChildren(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 8

    .line 376
    iget-object v0, p0, Lcom/metamoji/df/sprite/Sprite;->children:Ljava/util/List;

    monitor-enter v0

    .line 377
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/df/sprite/Sprite;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_2

    .line 379
    sget-object v3, Lcom/metamoji/df/sprite/Geometry;->rectPool:Lcom/metamoji/df/sprite/Geometry$RectFPool;

    invoke-virtual {v3}, Lcom/metamoji/df/sprite/Geometry$RectFPool;->withdraw()Landroid/graphics/RectF;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v2

    :goto_0
    if-ge v4, v1, :cond_1

    .line 381
    iget-object v6, p0, Lcom/metamoji/df/sprite/Sprite;->children:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/metamoji/df/sprite/Sprite;

    .line 382
    invoke-direct {v6}, Lcom/metamoji/df/sprite/Sprite;->IS_VISIBLE()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 383
    invoke-direct {v6, v3}, Lcom/metamoji/df/sprite/Sprite;->getFrame(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v6

    invoke-static {v5, v6, p1}, Lcom/metamoji/df/sprite/Geometry;->union(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 386
    :cond_1
    sget-object v1, Lcom/metamoji/df/sprite/Geometry;->rectPool:Lcom/metamoji/df/sprite/Geometry$RectFPool;

    invoke-virtual {v1, v3}, Lcom/metamoji/df/sprite/Geometry$RectFPool;->deposit(Landroid/graphics/RectF;)V

    goto :goto_1

    :cond_2
    move-object v5, v2

    .line 388
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_3

    .line 390
    invoke-virtual {p1, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-object p1

    :cond_3
    return-object v2

    :catchall_0
    move-exception p1

    .line 388
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private buildMatrix(Landroid/graphics/Matrix;)V
    .locals 2

    .line 684
    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    .line 685
    iget v0, p0, Lcom/metamoji/df/sprite/Sprite;->x:F

    iget v1, p0, Lcom/metamoji/df/sprite/Sprite;->y:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 686
    iget v0, p0, Lcom/metamoji/df/sprite/Sprite;->scaleX:F

    iget v1, p0, Lcom/metamoji/df/sprite/Sprite;->scaleY:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 687
    iget v0, p0, Lcom/metamoji/df/sprite/Sprite;->rotation:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    return-void
.end method

.method private containsLocalPoint(Landroid/graphics/PointF;)Z
    .locals 2

    .line 322
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Sprite;->getBounds()Landroid/graphics/RectF;

    move-result-object v0

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    return p1
.end method

.method private getFrame(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 1

    .line 1018
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Sprite;->getBounds()Landroid/graphics/RectF;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/metamoji/df/sprite/Sprite;->localToParent(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    return-object p1
.end method

.method private getGlobalMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .locals 2

    .line 725
    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_0

    .line 727
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Sprite;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 726
    iget-object v0, v0, Lcom/metamoji/df/sprite/Sprite;->parent:Lcom/metamoji/df/sprite/Sprite;

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method private getInverseMatrix()Landroid/graphics/Matrix;
    .locals 3

    .line 706
    iget-object v0, p0, Lcom/metamoji/df/sprite/Sprite;->inverseMatrix:Landroid/graphics/Matrix;

    monitor-enter v0

    .line 707
    :try_start_0
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Sprite;->IS_ENABLED_INVERSE_MATRIX()Z

    move-result v1

    if-nez v1, :cond_0

    .line 708
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Sprite;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/df/sprite/Sprite;->inverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    const/4 v1, 0x1

    .line 709
    invoke-direct {p0, v1}, Lcom/metamoji/df/sprite/Sprite;->SET_ENABLED_INVERSE_MATRIX(Z)I

    .line 711
    :cond_0
    iget-object v1, p0, Lcom/metamoji/df/sprite/Sprite;->inverseMatrix:Landroid/graphics/Matrix;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 712
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private localToGlobal(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 1

    .line 780
    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 781
    sget-object p2, Lcom/metamoji/df/sprite/Geometry;->matrixPool:Lcom/metamoji/df/sprite/Geometry$MatrixPool;

    invoke-virtual {p2}, Lcom/metamoji/df/sprite/Geometry$MatrixPool;->withdraw()Landroid/graphics/Matrix;

    move-result-object p2

    .line 782
    invoke-direct {p0, p2}, Lcom/metamoji/df/sprite/Sprite;->getGlobalMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    .line 783
    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 784
    sget-object v0, Lcom/metamoji/df/sprite/Geometry;->matrixPool:Lcom/metamoji/df/sprite/Geometry$MatrixPool;

    invoke-virtual {v0, p2}, Lcom/metamoji/df/sprite/Geometry$MatrixPool;->deposit(Landroid/graphics/Matrix;)V

    return-object p1
.end method

.method private localToParent(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 0

    .line 829
    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 830
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Sprite;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    return-object p1
.end method

.method private matrixChanged()V
    .locals 3

    .line 666
    iget-object v0, p0, Lcom/metamoji/df/sprite/Sprite;->matrix:Landroid/graphics/Matrix;

    monitor-enter v0

    const/4 v1, 0x0

    .line 667
    :try_start_0
    invoke-direct {p0, v1}, Lcom/metamoji/df/sprite/Sprite;->SET_ENABLED_MATRIX(Z)I

    .line 668
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 669
    iget-object v2, p0, Lcom/metamoji/df/sprite/Sprite;->inverseMatrix:Landroid/graphics/Matrix;

    monitor-enter v2

    .line 670
    :try_start_1
    invoke-direct {p0, v1}, Lcom/metamoji/df/sprite/Sprite;->SET_ENABLED_INVERSE_MATRIX(Z)I

    .line 671
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 673
    iget-object v0, p0, Lcom/metamoji/df/sprite/Sprite;->parent:Lcom/metamoji/df/sprite/Sprite;

    if-eqz v0, :cond_0

    .line 674
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Sprite;->boundsChange()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 671
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 668
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method


# virtual methods
.method public addChild(Lcom/metamoji/df/sprite/Sprite;)V
    .locals 2

    .line 186
    iget-object v0, p1, Lcom/metamoji/df/sprite/Sprite;->parent:Lcom/metamoji/df/sprite/Sprite;

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/Sprite;->removeChild(Lcom/metamoji/df/sprite/Sprite;)V

    .line 189
    :cond_0
    iput-object p0, p1, Lcom/metamoji/df/sprite/Sprite;->parent:Lcom/metamoji/df/sprite/Sprite;

    .line 190
    iget-object v0, p0, Lcom/metamoji/df/sprite/Sprite;->children:Ljava/util/List;

    monitor-enter v0

    .line 191
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/df/sprite/Sprite;->children:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Sprite;->invalidate()V

    .line 194
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Sprite;->boundsChange()V

    return-void

    :catchall_0
    move-exception p1

    .line 192
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public addChildAt(Lcom/metamoji/df/sprite/Sprite;I)V
    .locals 2

    .line 204
    iget-object v0, p1, Lcom/metamoji/df/sprite/Sprite;->parent:Lcom/metamoji/df/sprite/Sprite;

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/Sprite;->removeChild(Lcom/metamoji/df/sprite/Sprite;)V

    .line 207
    :cond_0
    iput-object p0, p1, Lcom/metamoji/df/sprite/Sprite;->parent:Lcom/metamoji/df/sprite/Sprite;

    .line 208
    iget-object v0, p0, Lcom/metamoji/df/sprite/Sprite;->children:Ljava/util/List;

    monitor-enter v0

    .line 209
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/df/sprite/Sprite;->children:Ljava/util/List;

    invoke-interface {v1, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 210
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Sprite;->invalidate()V

    .line 212
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Sprite;->boundsChange()V

    return-void

    :catchall_0
    move-exception p1

    .line 210
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public bounds()Landroid/graphics/RectF;
    .locals 1

    .line 353
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    invoke-direct {p0, v0}, Lcom/metamoji/df/sprite/Sprite;->getFrame(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public boundsChange()V
    .locals 3

    .line 894
    iget-object v0, p0, Lcom/metamoji/df/sprite/Sprite;->bounds:Landroid/graphics/RectF;

    monitor-enter v0

    const/4 v1, 0x0

    .line 895
    :try_start_0
    invoke-direct {p0, v1}, Lcom/metamoji/df/sprite/Sprite;->SET_ENABLED_BOUNDS(Z)I

    .line 896
    iget-object v1, p0, Lcom/metamoji/df/sprite/Sprite;->bounds:Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 897
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 898
    iget-object v0, p0, Lcom/metamoji/df/sprite/Sprite;->parent:Lcom/metamoji/df/sprite/Sprite;

    if-eqz v0, :cond_0

    .line 899
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Sprite;->boundsChange()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 897
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public boundsOfChildren()Landroid/graphics/RectF;
    .locals 1

    .line 371
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    invoke-direct {p0, v0}, Lcom/metamoji/df/sprite/Sprite;->boundsOfChildren(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public buildBounds(Landroid/graphics/RectF;)Z
    .locals 4

    const/4 v0, 0x0

    .line 973
    invoke-direct {p0, p1}, Lcom/metamoji/df/sprite/Sprite;->boundsOfChildren(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/metamoji/df/sprite/Geometry;->union(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    .line 974
    iget-object v1, p0, Lcom/metamoji/df/sprite/Sprite;->graphics:Lcom/metamoji/df/sprite/Graphics;

    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Graphics;->getBounds()Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/metamoji/df/sprite/Geometry;->union(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    .line 975
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Sprite;->IS_CLIPPING()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 977
    iget v1, p0, Lcom/metamoji/df/sprite/Sprite;->width:F

    iget v2, p0, Lcom/metamoji/df/sprite/Sprite;->height:F

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->intersect(FFFF)Z

    .line 980
    :cond_0
    iget-object v1, p0, Lcom/metamoji/df/sprite/Sprite;->clippingPath:Landroid/graphics/Path;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 982
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 983
    iget-object v3, p0, Lcom/metamoji/df/sprite/Sprite;->clippingPath:Landroid/graphics/Path;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 984
    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    .line 987
    :cond_1
    iget-object v1, p0, Lcom/metamoji/df/sprite/Sprite;->dropShadow:Lcom/metamoji/df/sprite/DropShadow;

    if-eqz v1, :cond_2

    .line 988
    invoke-virtual {v1, v0}, Lcom/metamoji/df/sprite/DropShadow;->inflate(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_3

    .line 991
    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    const/4 p1, 0x1

    return p1

    :cond_3
    return v2
.end method

.method public clone()Lcom/metamoji/df/sprite/Sprite;
    .locals 1

    .line 407
    new-instance v0, Lcom/metamoji/df/sprite/Sprite;

    invoke-direct {v0}, Lcom/metamoji/df/sprite/Sprite;-><init>()V

    invoke-virtual {p0, v0}, Lcom/metamoji/df/sprite/Sprite;->copyTo(Lcom/metamoji/df/sprite/Sprite;)Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 14
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Sprite;->clone()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    return-object v0
.end method

.method public copyTo(Lcom/metamoji/df/sprite/Sprite;)Lcom/metamoji/df/sprite/Sprite;
    .locals 4

    .line 411
    iget-object v0, p0, Lcom/metamoji/df/sprite/Sprite;->name:Ljava/lang/String;

    iput-object v0, p1, Lcom/metamoji/df/sprite/Sprite;->name:Ljava/lang/String;

    .line 412
    iget v0, p0, Lcom/metamoji/df/sprite/Sprite;->x:F

    iput v0, p1, Lcom/metamoji/df/sprite/Sprite;->x:F

    .line 413
    iget v0, p0, Lcom/metamoji/df/sprite/Sprite;->y:F

    iput v0, p1, Lcom/metamoji/df/sprite/Sprite;->y:F

    .line 414
    iget v0, p0, Lcom/metamoji/df/sprite/Sprite;->width:F

    iput v0, p1, Lcom/metamoji/df/sprite/Sprite;->width:F

    .line 415
    iget v0, p0, Lcom/metamoji/df/sprite/Sprite;->height:F

    iput v0, p1, Lcom/metamoji/df/sprite/Sprite;->height:F

    .line 416
    iget v0, p0, Lcom/metamoji/df/sprite/Sprite;->alpha:F

    iput v0, p1, Lcom/metamoji/df/sprite/Sprite;->alpha:F

    .line 417
    iget v0, p0, Lcom/metamoji/df/sprite/Sprite;->scaleX:F

    iput v0, p1, Lcom/metamoji/df/sprite/Sprite;->scaleX:F

    .line 418
    iget v0, p0, Lcom/metamoji/df/sprite/Sprite;->scaleY:F

    iput v0, p1, Lcom/metamoji/df/sprite/Sprite;->scaleY:F

    .line 419
    iget v0, p0, Lcom/metamoji/df/sprite/Sprite;->rotation:F

    iput v0, p1, Lcom/metamoji/df/sprite/Sprite;->rotation:F

    .line 420
    iget-object v0, p0, Lcom/metamoji/df/sprite/Sprite;->dropShadow:Lcom/metamoji/df/sprite/DropShadow;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/DropShadow;->clone()Lcom/metamoji/df/sprite/DropShadow;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p1, Lcom/metamoji/df/sprite/Sprite;->dropShadow:Lcom/metamoji/df/sprite/DropShadow;

    .line 421
    iget-object v0, p0, Lcom/metamoji/df/sprite/Sprite;->clippingPath:Landroid/graphics/Path;

    if-eqz v0, :cond_1

    move-object v1, v0

    :cond_1
    iput-object v1, p1, Lcom/metamoji/df/sprite/Sprite;->clippingPath:Landroid/graphics/Path;

    .line 422
    iget-object v0, p0, Lcom/metamoji/df/sprite/Sprite;->children:Ljava/util/List;

    monitor-enter v0

    .line 423
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/df/sprite/Sprite;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    .line 425
    iget-object v3, p0, Lcom/metamoji/df/sprite/Sprite;->children:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/df/sprite/Sprite;

    .line 426
    invoke-virtual {v3}, Lcom/metamoji/df/sprite/Sprite;->clone()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/metamoji/df/sprite/Sprite;->addChild(Lcom/metamoji/df/sprite/Sprite;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 428
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    iget-object v0, p0, Lcom/metamoji/df/sprite/Sprite;->graphics:Lcom/metamoji/df/sprite/Graphics;

    iget-object v1, p1, Lcom/metamoji/df/sprite/Sprite;->graphics:Lcom/metamoji/df/sprite/Graphics;

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Graphics;->copyTo(Lcom/metamoji/df/sprite/Graphics;)V

    return-object p1

    :catchall_0
    move-exception p1

    .line 428
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getAlpha()F
    .locals 1

    .line 511
    iget v0, p0, Lcom/metamoji/df/sprite/Sprite;->alpha:F

    return v0
.end method

.method public getBounds()Landroid/graphics/RectF;
    .locals 2

    .line 1003
    iget-object v0, p0, Lcom/metamoji/df/sprite/Sprite;->bounds:Landroid/graphics/RectF;

    monitor-enter v0

    .line 1004
    :try_start_0
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Sprite;->IS_ENABLED_BOUNDS()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1005
    iget-object v1, p0, Lcom/metamoji/df/sprite/Sprite;->bounds:Landroid/graphics/RectF;

    invoke-virtual {p0, v1}, Lcom/metamoji/df/sprite/Sprite;->buildBounds(Landroid/graphics/RectF;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 1006
    invoke-direct {p0, v1}, Lcom/metamoji/df/sprite/Sprite;->SET_ENABLED_BOUNDS(Z)I

    .line 1009
    :cond_0
    iget-object v1, p0, Lcom/metamoji/df/sprite/Sprite;->bounds:Landroid/graphics/RectF;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 1010
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getChildAt(I)Lcom/metamoji/df/sprite/Sprite;
    .locals 1

    if-ltz p1, :cond_0

    .line 300
    iget-object v0, p0, Lcom/metamoji/df/sprite/Sprite;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/metamoji/df/sprite/Sprite;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/df/sprite/Sprite;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getChildIndex(Lcom/metamoji/df/sprite/Sprite;)I
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/metamoji/df/sprite/Sprite;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getChildren()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/df/sprite/Sprite;",
            ">;"
        }
    .end annotation

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/metamoji/df/sprite/Sprite;->children:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getClippingPath()Landroid/graphics/Path;
    .locals 1

    .line 630
    iget-object v0, p0, Lcom/metamoji/df/sprite/Sprite;->clippingPath:Landroid/graphics/Path;

    return-object v0
.end method

.method public getDropShadow()Lcom/metamoji/df/sprite/DropShadow;
    .locals 1

    .line 648
    iget-object v0, p0, Lcom/metamoji/df/sprite/Sprite;->dropShadow:Lcom/metamoji/df/sprite/DropShadow;

    return-object v0
.end method

.method public getGlobalMatrix()Landroid/graphics/Matrix;
    .locals 1

    .line 721
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-direct {p0, v0}, Lcom/metamoji/df/sprite/Sprite;->getGlobalMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public getGraphics()Lcom/metamoji/df/sprite/Graphics;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/metamoji/df/sprite/Sprite;->graphics:Lcom/metamoji/df/sprite/Graphics;

    return-object v0
.end method

.method public getHeight()F
    .locals 1

    .line 493
    iget v0, p0, Lcom/metamoji/df/sprite/Sprite;->height:F

    return v0
.end method

.method public getInvertGlobalMatrix()Landroid/graphics/Matrix;
    .locals 2

    .line 733
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 734
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Sprite;->getGlobalMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    return-object v0
.end method

.method public getMatrix()Landroid/graphics/Matrix;
    .locals 2

    .line 696
    iget-object v0, p0, Lcom/metamoji/df/sprite/Sprite;->matrix:Landroid/graphics/Matrix;

    monitor-enter v0

    .line 697
    :try_start_0
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Sprite;->IS_ENABLED_MATRIX()Z

    move-result v1

    if-nez v1, :cond_0

    .line 698
    iget-object v1, p0, Lcom/metamoji/df/sprite/Sprite;->matrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v1}, Lcom/metamoji/df/sprite/Sprite;->buildMatrix(Landroid/graphics/Matrix;)V

    const/4 v1, 0x1

    .line 699
    invoke-direct {p0, v1}, Lcom/metamoji/df/sprite/Sprite;->SET_ENABLED_MATRIX(Z)I

    .line 701
    :cond_0
    iget-object v1, p0, Lcom/metamoji/df/sprite/Sprite;->matrix:Landroid/graphics/Matrix;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 702
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/metamoji/df/sprite/Sprite;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumChildren()I
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/metamoji/df/sprite/Sprite;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getObjectsUnderPoint(Landroid/graphics/PointF;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/PointF;",
            ")",
            "Ljava/util/List<",
            "Lcom/metamoji/df/sprite/Sprite;",
            ">;"
        }
    .end annotation

    .line 333
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 334
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Sprite;->IS_VISIBLE()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/metamoji/df/sprite/Sprite;->containsLocalPoint(Landroid/graphics/PointF;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 336
    iget-object v1, p0, Lcom/metamoji/df/sprite/Sprite;->children:Ljava/util/List;

    monitor-enter v1

    .line 337
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/df/sprite/Sprite;->children:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_0

    .line 338
    iget-object v3, p0, Lcom/metamoji/df/sprite/Sprite;->children:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/df/sprite/Sprite;

    .line 340
    invoke-virtual {v3, p1}, Lcom/metamoji/df/sprite/Sprite;->parentToLocal(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/metamoji/df/sprite/Sprite;->getObjectsUnderPoint(Landroid/graphics/PointF;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 342
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :catchall_0
    move-exception p1

    .line 342
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    return-object v0
.end method

.method public getOwner()Lcom/metamoji/df/sprite/SpriteOwner;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/metamoji/df/sprite/Sprite;->owner:Lcom/metamoji/df/sprite/SpriteOwner;

    return-object v0
.end method

.method public getParent()Lcom/metamoji/df/sprite/Sprite;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/metamoji/df/sprite/Sprite;->parent:Lcom/metamoji/df/sprite/Sprite;

    return-object v0
.end method

.method public getRoot()Lcom/metamoji/df/sprite/Sprite;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/metamoji/df/sprite/Sprite;->parent:Lcom/metamoji/df/sprite/Sprite;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Sprite;->getRoot()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    return-object v0

    :cond_0
    return-object p0
.end method

.method public getRotation()F
    .locals 1

    .line 528
    iget v0, p0, Lcom/metamoji/df/sprite/Sprite;->rotation:F

    return v0
.end method

.method public getScaleX()F
    .locals 1

    .line 547
    iget v0, p0, Lcom/metamoji/df/sprite/Sprite;->scaleX:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    .line 566
    iget v0, p0, Lcom/metamoji/df/sprite/Sprite;->scaleY:F

    return v0
.end method

.method public getStage()Lcom/metamoji/df/sprite/Stage;
    .locals 1

    .line 162
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Sprite;->getRoot()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Sprite;->getOwner()Lcom/metamoji/df/sprite/SpriteOwner;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 163
    invoke-interface {v0}, Lcom/metamoji/df/sprite/SpriteOwner;->toStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWidth()F
    .locals 1

    .line 475
    iget v0, p0, Lcom/metamoji/df/sprite/Sprite;->width:F

    return v0
.end method

.method public getX()F
    .locals 1

    .line 437
    iget v0, p0, Lcom/metamoji/df/sprite/Sprite;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .line 456
    iget v0, p0, Lcom/metamoji/df/sprite/Sprite;->y:F

    return v0
.end method

.method public globalToLocal(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 1

    .line 766
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Sprite;->getGlobalMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/df/sprite/Geometry;->invert(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/metamoji/df/sprite/Geometry;->transform(Landroid/graphics/Matrix;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public globalToLocal(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 1

    .line 795
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Sprite;->getGlobalMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/df/sprite/Geometry;->invert(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/metamoji/df/sprite/Geometry;->transform(Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    return-object p1
.end method

.method public hitTestPoint(Landroid/graphics/PointF;)Z
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/metamoji/df/sprite/Sprite;->graphics:Lcom/metamoji/df/sprite/Graphics;

    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/Graphics;->containsPoint(Landroid/graphics/PointF;)Z

    move-result p1

    return p1
.end method

.method public invalidate()V
    .locals 1

    .line 848
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Sprite;->getBounds()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/df/sprite/Sprite;->invalidate(Landroid/graphics/RectF;)V

    return-void
.end method

.method public invalidate(Landroid/graphics/RectF;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 858
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Sprite;->getRoot()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Sprite;->getOwner()Lcom/metamoji/df/sprite/SpriteOwner;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 860
    sget-object v1, Lcom/metamoji/df/sprite/Geometry;->rectPool:Lcom/metamoji/df/sprite/Geometry$RectFPool;

    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Geometry$RectFPool;->withdraw()Landroid/graphics/RectF;

    move-result-object v1

    .line 861
    invoke-direct {p0, v1, p1}, Lcom/metamoji/df/sprite/Sprite;->localToGlobal(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/metamoji/df/sprite/SpriteOwner;->invalidateSpriteRect(Landroid/graphics/RectF;)V

    .line 862
    sget-object p1, Lcom/metamoji/df/sprite/Geometry;->rectPool:Lcom/metamoji/df/sprite/Geometry$RectFPool;

    invoke-virtual {p1, v1}, Lcom/metamoji/df/sprite/Geometry$RectFPool;->deposit(Landroid/graphics/RectF;)V

    :cond_0
    return-void
.end method

.method public isClipping()Z
    .locals 1

    .line 602
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Sprite;->IS_CLIPPING()Z

    move-result v0

    return v0
.end method

.method public isPdfView()Z
    .locals 1

    .line 616
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Sprite;->IS_PDFVIEW()Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 585
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Sprite;->IS_VISIBLE()Z

    move-result v0

    return v0
.end method

.method public localBounds()Landroid/graphics/RectF;
    .locals 1

    .line 362
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Sprite;->getBounds()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public localToGlobal(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 1

    .line 756
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Sprite;->getGlobalMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/metamoji/df/sprite/Geometry;->transform(Landroid/graphics/Matrix;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public localToGlobal(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 1

    .line 776
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Sprite;->getGlobalMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/metamoji/df/sprite/Geometry;->transform(Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    return-object p1
.end method

.method public localToParent(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 1

    .line 805
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Sprite;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/metamoji/df/sprite/Geometry;->transform(Landroid/graphics/Matrix;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public localToParent(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 1

    .line 825
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Sprite;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/metamoji/df/sprite/Geometry;->transform(Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    return-object p1
.end method

.method public paint(Lcom/metamoji/df/sprite/Context;)V
    .locals 10

    .line 909
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Sprite;->IS_VISIBLE()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 912
    :cond_0
    invoke-interface {p1}, Lcom/metamoji/df/sprite/Context;->save()V

    .line 913
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Sprite;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/metamoji/df/sprite/Context;->concat(Landroid/graphics/Matrix;)V

    .line 915
    invoke-interface {p1}, Lcom/metamoji/df/sprite/Context;->getDirtyRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 916
    iget v1, v0, Landroid/graphics/RectF;->left:F

    .line 917
    iget v2, v0, Landroid/graphics/RectF;->top:F

    .line 918
    iget v3, v0, Landroid/graphics/RectF;->right:F

    .line 919
    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    .line 921
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Sprite;->getInverseMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 922
    invoke-interface {p1}, Lcom/metamoji/df/sprite/Context;->getAlpha()F

    move-result v5

    .line 923
    invoke-interface {p1}, Lcom/metamoji/df/sprite/Context;->getAlpha()F

    move-result v6

    iget v7, p0, Lcom/metamoji/df/sprite/Sprite;->alpha:F

    mul-float/2addr v6, v7

    invoke-interface {p1, v6}, Lcom/metamoji/df/sprite/Context;->setAlpha(F)V

    .line 924
    invoke-interface {p1}, Lcom/metamoji/df/sprite/Context;->getDropShadow()Lcom/metamoji/df/sprite/DropShadow;

    move-result-object v6

    .line 925
    iget-object v7, p0, Lcom/metamoji/df/sprite/Sprite;->dropShadow:Lcom/metamoji/df/sprite/DropShadow;

    if-eqz v7, :cond_1

    .line 926
    invoke-interface {p1, v7}, Lcom/metamoji/df/sprite/Context;->setDropShadow(Lcom/metamoji/df/sprite/DropShadow;)V

    .line 928
    :cond_1
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Sprite;->IS_CLIPPING()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 929
    iget v7, p0, Lcom/metamoji/df/sprite/Sprite;->width:F

    iget v8, p0, Lcom/metamoji/df/sprite/Sprite;->height:F

    const/4 v9, 0x0

    invoke-interface {p1, v9, v9, v7, v8}, Lcom/metamoji/df/sprite/Context;->clipRect(FFFF)V

    .line 931
    :cond_2
    iget-object v7, p0, Lcom/metamoji/df/sprite/Sprite;->clippingPath:Landroid/graphics/Path;

    if-eqz v7, :cond_3

    .line 932
    invoke-interface {p1, v7}, Lcom/metamoji/df/sprite/Context;->clipPath(Landroid/graphics/Path;)V

    .line 934
    :cond_3
    invoke-virtual {p0, p1}, Lcom/metamoji/df/sprite/Sprite;->paintContent(Lcom/metamoji/df/sprite/Context;)V

    .line 935
    invoke-interface {p1, v6}, Lcom/metamoji/df/sprite/Context;->setDropShadow(Lcom/metamoji/df/sprite/DropShadow;)V

    .line 936
    invoke-interface {p1, v5}, Lcom/metamoji/df/sprite/Context;->setAlpha(F)V

    .line 938
    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 939
    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 940
    iput v3, v0, Landroid/graphics/RectF;->right:F

    .line 941
    iput v4, v0, Landroid/graphics/RectF;->bottom:F

    .line 942
    invoke-interface {p1}, Lcom/metamoji/df/sprite/Context;->restore()V

    return-void
.end method

.method protected paintContent(Lcom/metamoji/df/sprite/Context;)V
    .locals 4

    .line 951
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Sprite;->getBounds()Landroid/graphics/RectF;

    move-result-object v0

    invoke-interface {p1}, Lcom/metamoji/df/sprite/Context;->getDirtyRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/df/sprite/Geometry;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 955
    :cond_0
    iget-object v0, p0, Lcom/metamoji/df/sprite/Sprite;->graphics:Lcom/metamoji/df/sprite/Graphics;

    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/Graphics;->paint(Lcom/metamoji/df/sprite/Context;)V

    .line 956
    iget-object v0, p0, Lcom/metamoji/df/sprite/Sprite;->children:Ljava/util/List;

    monitor-enter v0

    .line 957
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/df/sprite/Sprite;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 959
    iget-object v3, p0, Lcom/metamoji/df/sprite/Sprite;->children:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/df/sprite/Sprite;

    .line 960
    invoke-virtual {v3, p1}, Lcom/metamoji/df/sprite/Sprite;->paint(Lcom/metamoji/df/sprite/Context;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 962
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public parentToLocal(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 1

    .line 815
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Sprite;->getInverseMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/metamoji/df/sprite/Geometry;->transform(Landroid/graphics/Matrix;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public parentToLocal(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 1

    .line 841
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Sprite;->getInverseMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/metamoji/df/sprite/Geometry;->transform(Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    return-object p1
.end method

.method public removeChild(Lcom/metamoji/df/sprite/Sprite;)V
    .locals 4

    .line 221
    iget-object v0, p1, Lcom/metamoji/df/sprite/Sprite;->parent:Lcom/metamoji/df/sprite/Sprite;

    if-ne v0, p0, :cond_1

    .line 223
    sget-object v0, Lcom/metamoji/df/sprite/Geometry;->rectPool:Lcom/metamoji/df/sprite/Geometry$RectFPool;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Geometry$RectFPool;->withdraw()Landroid/graphics/RectF;

    move-result-object v0

    .line 224
    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Sprite;->getBounds()Landroid/graphics/RectF;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/metamoji/df/sprite/Sprite;->localToGlobal(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    const/4 v2, 0x0

    .line 226
    iput-object v2, p1, Lcom/metamoji/df/sprite/Sprite;->parent:Lcom/metamoji/df/sprite/Sprite;

    .line 227
    iget-object v2, p0, Lcom/metamoji/df/sprite/Sprite;->children:Ljava/util/List;

    monitor-enter v2

    .line 228
    :try_start_0
    iget-object v3, p0, Lcom/metamoji/df/sprite/Sprite;->children:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 229
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Sprite;->getRoot()Lcom/metamoji/df/sprite/Sprite;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Sprite;->getOwner()Lcom/metamoji/df/sprite/SpriteOwner;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 233
    invoke-interface {p1, v1}, Lcom/metamoji/df/sprite/SpriteOwner;->invalidateSpriteRect(Landroid/graphics/RectF;)V

    .line 235
    :cond_0
    sget-object p1, Lcom/metamoji/df/sprite/Geometry;->rectPool:Lcom/metamoji/df/sprite/Geometry$RectFPool;

    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Geometry$RectFPool;->deposit(Landroid/graphics/RectF;)V

    .line 236
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Sprite;->boundsChange()V

    return-void

    :catchall_0
    move-exception p1

    .line 229
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    return-void
.end method

.method public removeChildAt(I)V
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/metamoji/df/sprite/Sprite;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {p0, p1}, Lcom/metamoji/df/sprite/Sprite;->removeChild(Lcom/metamoji/df/sprite/Sprite;)V

    return-void
.end method

.method public removeChildren()V
    .locals 6

    .line 254
    iget-object v0, p0, Lcom/metamoji/df/sprite/Sprite;->children:Ljava/util/List;

    monitor-enter v0

    .line 255
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/df/sprite/Sprite;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_1

    .line 257
    sget-object v3, Lcom/metamoji/df/sprite/Geometry;->rectPool:Lcom/metamoji/df/sprite/Geometry$RectFPool;

    invoke-virtual {v3}, Lcom/metamoji/df/sprite/Geometry$RectFPool;->withdraw()Landroid/graphics/RectF;

    move-result-object v3

    .line 258
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Sprite;->getBounds()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    .line 264
    :goto_0
    iget-object v5, p0, Lcom/metamoji/df/sprite/Sprite;->children:Ljava/util/List;

    if-ge v4, v1, :cond_0

    .line 261
    :try_start_1
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/df/sprite/Sprite;

    .line 262
    iput-object v2, v5, Lcom/metamoji/df/sprite/Sprite;->parent:Lcom/metamoji/df/sprite/Sprite;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 264
    :cond_0
    invoke-interface {v5}, Ljava/util/List;->clear()V

    move-object v2, v3

    .line 266
    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    .line 269
    invoke-virtual {p0, v2}, Lcom/metamoji/df/sprite/Sprite;->invalidate(Landroid/graphics/RectF;)V

    .line 270
    sget-object v0, Lcom/metamoji/df/sprite/Geometry;->rectPool:Lcom/metamoji/df/sprite/Geometry$RectFPool;

    invoke-virtual {v0, v2}, Lcom/metamoji/df/sprite/Geometry$RectFPool;->deposit(Landroid/graphics/RectF;)V

    .line 271
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Sprite;->boundsChange()V

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    .line 266
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setAlpha(F)V
    .locals 1

    .line 518
    iget v0, p0, Lcom/metamoji/df/sprite/Sprite;->alpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 519
    iput p1, p0, Lcom/metamoji/df/sprite/Sprite;->alpha:F

    .line 520
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Sprite;->invalidate()V

    :cond_0
    return-void
.end method

.method public setChildIndex(Lcom/metamoji/df/sprite/Sprite;I)V
    .locals 3

    .line 282
    iget-object v0, p0, Lcom/metamoji/df/sprite/Sprite;->children:Ljava/util/List;

    monitor-enter v0

    .line 283
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/df/sprite/Sprite;->children:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_1

    if-eq v1, p2, :cond_1

    .line 285
    iget-object v2, p0, Lcom/metamoji/df/sprite/Sprite;->children:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    if-ge v1, p2, :cond_0

    add-int/lit8 p2, p2, -0x1

    .line 287
    :cond_0
    iget-object v1, p0, Lcom/metamoji/df/sprite/Sprite;->children:Ljava/util/List;

    invoke-interface {v1, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 288
    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Sprite;->invalidate()V

    .line 290
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setClipping(Z)V
    .locals 1

    .line 609
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Sprite;->IS_CLIPPING()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 610
    invoke-direct {p0, p1}, Lcom/metamoji/df/sprite/Sprite;->SET_CLIPPING(Z)I

    .line 611
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Sprite;->invalidate()V

    :cond_0
    return-void
.end method

.method public setClippingPath(Landroid/graphics/Path;)V
    .locals 1

    .line 637
    iget-object v0, p0, Lcom/metamoji/df/sprite/Sprite;->clippingPath:Landroid/graphics/Path;

    if-eq v0, p1, :cond_0

    .line 638
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Sprite;->invalidate()V

    .line 639
    iput-object p1, p0, Lcom/metamoji/df/sprite/Sprite;->clippingPath:Landroid/graphics/Path;

    .line 640
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Sprite;->invalidate()V

    :cond_0
    return-void
.end method

.method public setDropShadow(Lcom/metamoji/df/sprite/DropShadow;)V
    .locals 1

    .line 655
    iget-object v0, p0, Lcom/metamoji/df/sprite/Sprite;->dropShadow:Lcom/metamoji/df/sprite/DropShadow;

    if-eq v0, p1, :cond_0

    .line 656
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Sprite;->invalidate()V

    .line 657
    iput-object p1, p0, Lcom/metamoji/df/sprite/Sprite;->dropShadow:Lcom/metamoji/df/sprite/DropShadow;

    .line 658
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Sprite;->invalidate()V

    :cond_0
    return-void
.end method

.method public setFrozen(Z)V
    .locals 1

    .line 881
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Sprite;->getRoot()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Sprite;->getOwner()Lcom/metamoji/df/sprite/SpriteOwner;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 883
    invoke-interface {v0, p1}, Lcom/metamoji/df/sprite/SpriteOwner;->setFrozen(Z)V

    :cond_0
    return-void
.end method

.method public setHeight(F)V
    .locals 1

    .line 500
    iget v0, p0, Lcom/metamoji/df/sprite/Sprite;->height:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 501
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Sprite;->invalidate()V

    .line 502
    iput p1, p0, Lcom/metamoji/df/sprite/Sprite;->height:F

    .line 503
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Sprite;->invalidate()V

    :cond_0
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/metamoji/df/sprite/Sprite;->name:Ljava/lang/String;

    return-void
.end method

.method public setOwner(Lcom/metamoji/df/sprite/SpriteOwner;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/metamoji/df/sprite/Sprite;->owner:Lcom/metamoji/df/sprite/SpriteOwner;

    return-void
.end method

.method public setPdfView(Z)V
    .locals 1

    .line 620
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Sprite;->IS_PDFVIEW()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 621
    invoke-direct {p0, p1}, Lcom/metamoji/df/sprite/Sprite;->SET_PDFVIEW(Z)I

    .line 622
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Sprite;->invalidate()V

    :cond_0
    return-void
.end method

.method public setQueueing(Z)V
    .locals 1

    .line 871
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Sprite;->getRoot()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Sprite;->getOwner()Lcom/metamoji/df/sprite/SpriteOwner;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 873
    invoke-interface {v0, p1}, Lcom/metamoji/df/sprite/SpriteOwner;->setQueueing(Z)V

    :cond_0
    return-void
.end method

.method public setRotation(F)V
    .locals 1

    .line 535
    iget v0, p0, Lcom/metamoji/df/sprite/Sprite;->rotation:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 536
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Sprite;->invalidate()V

    .line 537
    iput p1, p0, Lcom/metamoji/df/sprite/Sprite;->rotation:F

    .line 538
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Sprite;->matrixChanged()V

    .line 539
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Sprite;->invalidate()V

    :cond_0
    return-void
.end method

.method public setScaleX(F)V
    .locals 1

    .line 554
    iget v0, p0, Lcom/metamoji/df/sprite/Sprite;->scaleX:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 555
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Sprite;->invalidate()V

    .line 556
    iput p1, p0, Lcom/metamoji/df/sprite/Sprite;->scaleX:F

    .line 557
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Sprite;->matrixChanged()V

    .line 558
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Sprite;->invalidate()V

    :cond_0
    return-void
.end method

.method public setScaleY(F)V
    .locals 1

    .line 573
    iget v0, p0, Lcom/metamoji/df/sprite/Sprite;->scaleY:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 574
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Sprite;->invalidate()V

    .line 575
    iput p1, p0, Lcom/metamoji/df/sprite/Sprite;->scaleY:F

    .line 576
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Sprite;->matrixChanged()V

    .line 577
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Sprite;->invalidate()V

    :cond_0
    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    .line 592
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Sprite;->IS_VISIBLE()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 593
    invoke-direct {p0, p1}, Lcom/metamoji/df/sprite/Sprite;->SET_VISIBLE(Z)I

    .line 594
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Sprite;->invalidate()V

    :cond_0
    return-void
.end method

.method public setWidth(F)V
    .locals 1

    .line 482
    iget v0, p0, Lcom/metamoji/df/sprite/Sprite;->width:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 483
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Sprite;->invalidate()V

    .line 484
    iput p1, p0, Lcom/metamoji/df/sprite/Sprite;->width:F

    .line 485
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Sprite;->invalidate()V

    :cond_0
    return-void
.end method

.method public setX(F)V
    .locals 1

    .line 444
    iget v0, p0, Lcom/metamoji/df/sprite/Sprite;->x:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 445
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Sprite;->invalidate()V

    .line 446
    iput p1, p0, Lcom/metamoji/df/sprite/Sprite;->x:F

    .line 447
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Sprite;->matrixChanged()V

    .line 448
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Sprite;->invalidate()V

    :cond_0
    return-void
.end method

.method public setY(F)V
    .locals 1

    .line 463
    iget v0, p0, Lcom/metamoji/df/sprite/Sprite;->y:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 464
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Sprite;->invalidate()V

    .line 465
    iput p1, p0, Lcom/metamoji/df/sprite/Sprite;->y:F

    .line 466
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Sprite;->matrixChanged()V

    .line 467
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Sprite;->invalidate()V

    :cond_0
    return-void
.end method

.method public shortDescription()Ljava/lang/String;
    .locals 2

    .line 1027
    iget-object v0, p0, Lcom/metamoji/df/sprite/Sprite;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1028
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " name=\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/metamoji/df/sprite/Sprite;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1030
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1041
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{Sprite"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1043
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Sprite;->shortDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1044
    iget v1, p0, Lcom/metamoji/df/sprite/Sprite;->x:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 1045
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, " x="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/metamoji/df/sprite/Sprite;->x:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1047
    :cond_0
    iget v1, p0, Lcom/metamoji/df/sprite/Sprite;->y:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    .line 1048
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, " y="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/metamoji/df/sprite/Sprite;->y:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1050
    :cond_1
    iget v1, p0, Lcom/metamoji/df/sprite/Sprite;->width:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    .line 1051
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, " width="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/metamoji/df/sprite/Sprite;->width:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1053
    :cond_2
    iget v1, p0, Lcom/metamoji/df/sprite/Sprite;->height:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_3

    .line 1054
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, " height="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/metamoji/df/sprite/Sprite;->height:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1056
    :cond_3
    iget v1, p0, Lcom/metamoji/df/sprite/Sprite;->scaleX:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_4

    .line 1057
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, " scaleX="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/metamoji/df/sprite/Sprite;->scaleX:F

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1059
    :cond_4
    iget v1, p0, Lcom/metamoji/df/sprite/Sprite;->scaleY:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_5

    .line 1060
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, " scaleY="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/metamoji/df/sprite/Sprite;->scaleY:F

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1062
    :cond_5
    iget v1, p0, Lcom/metamoji/df/sprite/Sprite;->rotation:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_6

    .line 1063
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " rotation="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/metamoji/df/sprite/Sprite;->rotation:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1065
    :cond_6
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Sprite;->IS_VISIBLE()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1066
    const-string v1, " visible=false"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1068
    :cond_7
    iget v1, p0, Lcom/metamoji/df/sprite/Sprite;->alpha:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_8

    .line 1069
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " alpha="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/metamoji/df/sprite/Sprite;->alpha:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1071
    :cond_8
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Sprite;->IS_CLIPPING()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1072
    const-string v1, " clipping=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1074
    :cond_9
    iget-object v1, p0, Lcom/metamoji/df/sprite/Sprite;->clippingPath:Landroid/graphics/Path;

    if-eqz v1, :cond_a

    .line 1075
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " clippingPath="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/metamoji/df/sprite/Sprite;->clippingPath:Landroid/graphics/Path;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1080
    :cond_a
    iget-object v1, p0, Lcom/metamoji/df/sprite/Sprite;->dropShadow:Lcom/metamoji/df/sprite/DropShadow;

    if-eqz v1, :cond_b

    .line 1081
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " dropShadow="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/metamoji/df/sprite/Sprite;->dropShadow:Lcom/metamoji/df/sprite/DropShadow;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1083
    :cond_b
    iget-object v1, p0, Lcom/metamoji/df/sprite/Sprite;->graphics:Lcom/metamoji/df/sprite/Graphics;

    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Graphics;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    .line 1084
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " graphics="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/metamoji/df/sprite/Sprite;->graphics:Lcom/metamoji/df/sprite/Graphics;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1086
    :cond_c
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1087
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transformTo(Lcom/metamoji/df/sprite/Sprite;)Landroid/graphics/Matrix;
    .locals 1

    .line 743
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Sprite;->getGlobalMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 744
    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Sprite;->getGlobalMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/df/sprite/Geometry;->invert(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object p1

    .line 745
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    return-object v0
.end method
