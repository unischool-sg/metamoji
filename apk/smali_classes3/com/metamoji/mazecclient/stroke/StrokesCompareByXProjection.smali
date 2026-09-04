.class Lcom/metamoji/mazecclient/stroke/StrokesCompareByXProjection;
.super Ljava/lang/Object;
.source "HandwriteStrokes.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;)I
    .locals 4

    .line 1338
    invoke-virtual {p1}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->getInnerBounds()Landroid/graphics/RectF;

    move-result-object p1

    .line 1339
    invoke-virtual {p2}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->getInnerBounds()Landroid/graphics/RectF;

    move-result-object p2

    .line 1340
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, v1

    const/4 v1, -0x1

    if-gez v0, :cond_0

    return v1

    .line 1344
    :cond_0
    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, v2

    const/4 v2, 0x1

    if-gez v0, :cond_1

    return v2

    .line 1348
    :cond_1
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v3, p2, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_2

    return v1

    .line 1351
    :cond_2
    iget p2, p2, Landroid/graphics/RectF;->right:F

    iget p1, p1, Landroid/graphics/RectF;->right:F

    cmpg-float p1, p2, p1

    if-gez p1, :cond_3

    return v2

    :cond_3
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

    .line 1335
    check-cast p1, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;

    check-cast p2, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/mazecclient/stroke/StrokesCompareByXProjection;->compare(Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;)I

    move-result p1

    return p1
.end method
