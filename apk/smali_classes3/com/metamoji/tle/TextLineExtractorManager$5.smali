.class Lcom/metamoji/tle/TextLineExtractorManager$5;
.super Ljava/lang/Object;
.source "TextLineExtractorManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/tle/TextLineExtractorManager;->reorderExtractResult()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/metamoji/tle/TextLineExtractorManager$LineResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/tle/TextLineExtractorManager;


# direct methods
.method constructor <init>(Lcom/metamoji/tle/TextLineExtractorManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2299
    iput-object p1, p0, Lcom/metamoji/tle/TextLineExtractorManager$5;->this$0:Lcom/metamoji/tle/TextLineExtractorManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/metamoji/tle/TextLineExtractorManager$LineResult;Lcom/metamoji/tle/TextLineExtractorManager$LineResult;)I
    .locals 9

    .line 2301
    iget-object v0, p1, Lcom/metamoji/tle/TextLineExtractorManager$LineResult;->bound:Ljava/util/List;

    .line 2302
    iget-object v1, p2, Lcom/metamoji/tle/TextLineExtractorManager$LineResult;->bound:Ljava/util/List;

    .line 2304
    iget-object p1, p1, Lcom/metamoji/tle/TextLineExtractorManager$LineResult;->baseline:Ljava/util/List;

    .line 2305
    iget-object p2, p2, Lcom/metamoji/tle/TextLineExtractorManager$LineResult;->baseline:Ljava/util/List;

    .line 2307
    invoke-static {v0, p1}, Lcom/metamoji/tle/TextLineExtractUtil;->getTextLineRotateInfo(Ljava/util/List;Ljava/util/List;)Lcom/metamoji/tle/TextLineRotateInfo;

    move-result-object p1

    .line 2308
    invoke-static {v1, p2}, Lcom/metamoji/tle/TextLineExtractUtil;->getTextLineRotateInfo(Ljava/util/List;Ljava/util/List;)Lcom/metamoji/tle/TextLineRotateInfo;

    move-result-object p2

    .line 2310
    iget-wide v2, p1, Lcom/metamoji/tle/TextLineRotateInfo;->radian:D

    iget v4, p1, Lcom/metamoji/tle/TextLineRotateInfo;->cx:F

    iget p1, p1, Lcom/metamoji/tle/TextLineRotateInfo;->cy:F

    invoke-static {v0, v2, v3, v4, p1}, Lcom/metamoji/tle/TextLineExtractUtil;->rotateBound(Ljava/util/List;DFF)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/tle/TextLineExtractUtil;->boundToRect(Ljava/util/List;)Landroid/graphics/RectF;

    move-result-object p1

    .line 2311
    iget-wide v2, p2, Lcom/metamoji/tle/TextLineRotateInfo;->radian:D

    iget v0, p2, Lcom/metamoji/tle/TextLineRotateInfo;->cx:F

    iget p2, p2, Lcom/metamoji/tle/TextLineRotateInfo;->cy:F

    invoke-static {v1, v2, v3, v0, p2}, Lcom/metamoji/tle/TextLineExtractUtil;->rotateBound(Ljava/util/List;DFF)Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lcom/metamoji/tle/TextLineExtractUtil;->boundToRect(Ljava/util/List;)Landroid/graphics/RectF;

    move-result-object p2

    .line 2314
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget v1, p2, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, v1

    const/4 v1, -0x1

    if-gez v0, :cond_0

    return v1

    .line 2319
    :cond_0
    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, v2

    const/4 v2, 0x1

    if-gez v0, :cond_1

    return v2

    .line 2325
    :cond_1
    invoke-static {p1, p2}, Lcom/metamoji/cm/RectUtils;->intersection(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    .line 2327
    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v3

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    if-nez v3, :cond_4

    .line 2329
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v6

    div-float/2addr v3, v6

    float-to-double v6, v3

    cmpg-double v3, v6, v4

    if-ltz v3, :cond_2

    .line 2330
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v0, v3

    float-to-double v6, v0

    cmpg-double v0, v6, v4

    if-gez v0, :cond_4

    .line 2332
    :cond_2
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v3, p2, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_3

    return v1

    .line 2335
    :cond_3
    iget v0, p2, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_4

    return v2

    .line 2341
    :cond_4
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 2342
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    const/4 v6, 0x0

    .line 2343
    iput v6, v3, Landroid/graphics/RectF;->left:F

    iput v6, v0, Landroid/graphics/RectF;->left:F

    const/high16 v6, 0x41200000    # 10.0f

    .line 2344
    iput v6, v3, Landroid/graphics/RectF;->right:F

    iput v6, v0, Landroid/graphics/RectF;->right:F

    .line 2345
    invoke-static {v0, v3}, Lcom/metamoji/cm/RectUtils;->intersection(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v6

    .line 2348
    invoke-virtual {v6}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    .line 2349
    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v7, v0

    float-to-double v7, v7

    cmpg-double v0, v7, v4

    if-ltz v0, :cond_5

    .line 2350
    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v0, v3

    float-to-double v6, v0

    cmpg-double v0, v6, v4

    if-gez v0, :cond_7

    .line 2352
    :cond_5
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v3, p2, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_6

    return v1

    .line 2355
    :cond_6
    iget v0, p2, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_7

    return v2

    .line 2361
    :cond_7
    sget-object v0, Lcom/metamoji/tle/TextLineExtractorManager$BoundSortType;->Left:Lcom/metamoji/tle/TextLineExtractorManager$BoundSortType;

    iget-object v3, p0, Lcom/metamoji/tle/TextLineExtractorManager$5;->this$0:Lcom/metamoji/tle/TextLineExtractorManager;

    invoke-static {v3}, Lcom/metamoji/tle/TextLineExtractorManager;->-$$Nest$fget_boundSortType(Lcom/metamoji/tle/TextLineExtractorManager;)Lcom/metamoji/tle/TextLineExtractorManager$BoundSortType;

    move-result-object v3

    if-ne v0, v3, :cond_9

    .line 2363
    iget p1, p1, Landroid/graphics/RectF;->left:F

    iget p2, p2, Landroid/graphics/RectF;->left:F

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_8

    return v1

    :cond_8
    return v2

    .line 2370
    :cond_9
    sget-object v0, Lcom/metamoji/tle/TextLineExtractorManager$BoundSortType;->Right:Lcom/metamoji/tle/TextLineExtractorManager$BoundSortType;

    iget-object v3, p0, Lcom/metamoji/tle/TextLineExtractorManager$5;->this$0:Lcom/metamoji/tle/TextLineExtractorManager;

    invoke-static {v3}, Lcom/metamoji/tle/TextLineExtractorManager;->-$$Nest$fget_boundSortType(Lcom/metamoji/tle/TextLineExtractorManager;)Lcom/metamoji/tle/TextLineExtractorManager$BoundSortType;

    move-result-object v3

    if-ne v0, v3, :cond_b

    .line 2372
    iget p1, p1, Landroid/graphics/RectF;->left:F

    iget p2, p2, Landroid/graphics/RectF;->left:F

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_a

    return v2

    :cond_a
    return v1

    :cond_b
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 2299
    check-cast p1, Lcom/metamoji/tle/TextLineExtractorManager$LineResult;

    check-cast p2, Lcom/metamoji/tle/TextLineExtractorManager$LineResult;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/tle/TextLineExtractorManager$5;->compare(Lcom/metamoji/tle/TextLineExtractorManager$LineResult;Lcom/metamoji/tle/TextLineExtractorManager$LineResult;)I

    move-result p1

    return p1
.end method
