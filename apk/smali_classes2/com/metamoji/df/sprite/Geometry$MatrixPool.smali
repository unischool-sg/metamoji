.class Lcom/metamoji/df/sprite/Geometry$MatrixPool;
.super Ljava/lang/Object;
.source "Geometry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/df/sprite/Geometry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MatrixPool"
.end annotation


# instance fields
.field private a:[Landroid/graphics/Matrix;

.field private n:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    new-array p1, p1, [Landroid/graphics/Matrix;

    iput-object p1, p0, Lcom/metamoji/df/sprite/Geometry$MatrixPool;->a:[Landroid/graphics/Matrix;

    const/4 p1, 0x0

    .line 283
    iput p1, p0, Lcom/metamoji/df/sprite/Geometry$MatrixPool;->n:I

    return-void
.end method


# virtual methods
.method deposit(Landroid/graphics/Matrix;)V
    .locals 3

    .line 297
    monitor-enter p0

    .line 298
    :try_start_0
    iget v0, p0, Lcom/metamoji/df/sprite/Geometry$MatrixPool;->n:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/metamoji/df/sprite/Geometry$MatrixPool;->a:[Landroid/graphics/Matrix;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    .line 299
    iput v2, p0, Lcom/metamoji/df/sprite/Geometry$MatrixPool;->n:I

    aput-object p1, v1, v0

    goto :goto_0

    .line 301
    :cond_0
    iget-object p1, p0, Lcom/metamoji/df/sprite/Geometry$MatrixPool;->a:[Landroid/graphics/Matrix;

    array-length p1, p1

    if-gt p1, v0, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 302
    iput v0, p0, Lcom/metamoji/df/sprite/Geometry$MatrixPool;->n:I

    .line 305
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method withdraw()Landroid/graphics/Matrix;
    .locals 3

    .line 286
    monitor-enter p0

    .line 287
    :try_start_0
    iget v0, p0, Lcom/metamoji/df/sprite/Geometry$MatrixPool;->n:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/metamoji/df/sprite/Geometry$MatrixPool;->a:[Landroid/graphics/Matrix;

    array-length v2, v1

    if-gt v0, v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 288
    iput v0, p0, Lcom/metamoji/df/sprite/Geometry$MatrixPool;->n:I

    aget-object v0, v1, v0

    monitor-exit p0

    return-object v0

    .line 289
    :cond_0
    iget-object v1, p0, Lcom/metamoji/df/sprite/Geometry$MatrixPool;->a:[Landroid/graphics/Matrix;

    array-length v1, v1

    if-ge v1, v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 290
    iput v0, p0, Lcom/metamoji/df/sprite/Geometry$MatrixPool;->n:I

    .line 293
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    return-object v0

    :catchall_0
    move-exception v0

    .line 293
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
