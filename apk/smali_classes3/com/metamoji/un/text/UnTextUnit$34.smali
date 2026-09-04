.class Lcom/metamoji/un/text/UnTextUnit$34;
.super Ljava/lang/Object;
.source "UnTextUnit.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/text/UnTextUnit;->extractTextInTextUnits(Ljava/util/List;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/metamoji/un/text/UnTextUnit;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 7030
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/metamoji/un/text/UnTextUnit;Lcom/metamoji/un/text/UnTextUnit;)I
    .locals 4

    .line 7032
    invoke-static {p1}, Lcom/metamoji/un/text/UnTextUnit;->-$$Nest$mgetMinBoundRect(Lcom/metamoji/un/text/UnTextUnit;)Landroid/graphics/RectF;

    move-result-object p1

    .line 7033
    invoke-static {p2}, Lcom/metamoji/un/text/UnTextUnit;->-$$Nest$mgetMinBoundRect(Lcom/metamoji/un/text/UnTextUnit;)Landroid/graphics/RectF;

    move-result-object p2

    .line 7036
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v1, p2, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, v1

    const/4 v1, -0x1

    if-gez v0, :cond_0

    return v1

    .line 7038
    :cond_0
    iget v0, p2, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, v2

    const/4 v2, 0x1

    if-gez v0, :cond_1

    return v2

    .line 7041
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_2

    return v1

    .line 7043
    :cond_2
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_3

    return v2

    .line 7046
    :cond_3
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v3, p2, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_4

    return v1

    .line 7048
    :cond_4
    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_5

    return v2

    .line 7051
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_6

    return v1

    .line 7053
    :cond_6
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    cmpg-float p1, p2, p1

    if-gez p1, :cond_7

    return v2

    :cond_7
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

    .line 7030
    check-cast p1, Lcom/metamoji/un/text/UnTextUnit;

    check-cast p2, Lcom/metamoji/un/text/UnTextUnit;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/un/text/UnTextUnit$34;->compare(Lcom/metamoji/un/text/UnTextUnit;Lcom/metamoji/un/text/UnTextUnit;)I

    move-result p1

    return p1
.end method
