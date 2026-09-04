.class Lcom/metamoji/un/text/UnTextUnit$33;
.super Ljava/lang/Object;
.source "UnTextUnit.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/text/UnTextUnit;->commandTextUnitCombine()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/metamoji/nt/NtUnitController;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$minBoundRects:Landroid/util/SparseArray;

.field final synthetic val$verticalWriting:Z


# direct methods
.method constructor <init>(Landroid/util/SparseArray;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6761
    iput-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$33;->val$minBoundRects:Landroid/util/SparseArray;

    iput-boolean p2, p0, Lcom/metamoji/un/text/UnTextUnit$33;->val$verticalWriting:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/metamoji/nt/NtUnitController;Lcom/metamoji/nt/NtUnitController;)I
    .locals 5

    .line 6763
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$33;->val$minBoundRects:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtUnitController;->getModelID()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    if-nez v0, :cond_0

    .line 6765
    move-object v0, p1

    check-cast v0, Lcom/metamoji/un/text/UnTextUnit;

    invoke-static {v0}, Lcom/metamoji/un/text/UnTextUnit;->-$$Nest$mgetMinBoundRect(Lcom/metamoji/un/text/UnTextUnit;)Landroid/graphics/RectF;

    move-result-object v0

    .line 6766
    iget-object v1, p0, Lcom/metamoji/un/text/UnTextUnit$33;->val$minBoundRects:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtUnitController;->getModelID()I

    move-result p1

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6768
    :cond_0
    iget-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$33;->val$minBoundRects:Landroid/util/SparseArray;

    invoke-virtual {p2}, Lcom/metamoji/nt/NtUnitController;->getModelID()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/RectF;

    if-nez p1, :cond_1

    .line 6770
    move-object p1, p2

    check-cast p1, Lcom/metamoji/un/text/UnTextUnit;

    invoke-static {p1}, Lcom/metamoji/un/text/UnTextUnit;->-$$Nest$mgetMinBoundRect(Lcom/metamoji/un/text/UnTextUnit;)Landroid/graphics/RectF;

    move-result-object p1

    .line 6771
    iget-object v1, p0, Lcom/metamoji/un/text/UnTextUnit$33;->val$minBoundRects:Landroid/util/SparseArray;

    invoke-virtual {p2}, Lcom/metamoji/nt/NtUnitController;->getModelID()I

    move-result p2

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6773
    :cond_1
    iget-boolean p2, p0, Lcom/metamoji/un/text/UnTextUnit$33;->val$verticalWriting:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eqz p2, :cond_a

    .line 6775
    iget p2, v0, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->right:F

    cmpl-float p2, p2, v4

    if-lez p2, :cond_2

    return v3

    .line 6777
    :cond_2
    iget p2, p1, Landroid/graphics/RectF;->right:F

    iget v4, v0, Landroid/graphics/RectF;->right:F

    cmpl-float p2, p2, v4

    if-lez p2, :cond_3

    return v2

    .line 6780
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v4

    cmpg-float p2, p2, v4

    if-gez p2, :cond_4

    return v3

    .line 6782
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p2

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v4

    cmpg-float p2, p2, v4

    if-gez p2, :cond_5

    return v2

    .line 6785
    :cond_5
    iget p2, v0, Landroid/graphics/RectF;->top:F

    iget v4, p1, Landroid/graphics/RectF;->top:F

    cmpg-float p2, p2, v4

    if-gez p2, :cond_6

    return v3

    .line 6787
    :cond_6
    iget p2, p1, Landroid/graphics/RectF;->top:F

    iget v4, v0, Landroid/graphics/RectF;->top:F

    cmpg-float p2, p2, v4

    if-gez p2, :cond_7

    return v2

    .line 6790
    :cond_7
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v4

    cmpg-float p2, p2, v4

    if-gez p2, :cond_8

    return v3

    .line 6792
    :cond_8
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_9

    return v2

    :cond_9
    return v1

    .line 6798
    :cond_a
    iget p2, v0, Landroid/graphics/RectF;->top:F

    iget v4, p1, Landroid/graphics/RectF;->top:F

    cmpg-float p2, p2, v4

    if-gez p2, :cond_b

    return v3

    .line 6800
    :cond_b
    iget p2, p1, Landroid/graphics/RectF;->top:F

    iget v4, v0, Landroid/graphics/RectF;->top:F

    cmpg-float p2, p2, v4

    if-gez p2, :cond_c

    return v2

    .line 6803
    :cond_c
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v4

    cmpg-float p2, p2, v4

    if-gez p2, :cond_d

    return v3

    .line 6805
    :cond_d
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p2

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v4

    cmpg-float p2, p2, v4

    if-gez p2, :cond_e

    return v2

    .line 6808
    :cond_e
    iget p2, v0, Landroid/graphics/RectF;->left:F

    iget v4, p1, Landroid/graphics/RectF;->left:F

    cmpg-float p2, p2, v4

    if-gez p2, :cond_f

    return v3

    .line 6810
    :cond_f
    iget p2, p1, Landroid/graphics/RectF;->left:F

    iget v4, v0, Landroid/graphics/RectF;->left:F

    cmpg-float p2, p2, v4

    if-gez p2, :cond_10

    return v2

    .line 6813
    :cond_10
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v4

    cmpg-float p2, p2, v4

    if-gez p2, :cond_11

    return v3

    .line 6815
    :cond_11
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_12

    return v2

    :cond_12
    return v1
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

    .line 6761
    check-cast p1, Lcom/metamoji/nt/NtUnitController;

    check-cast p2, Lcom/metamoji/nt/NtUnitController;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/un/text/UnTextUnit$33;->compare(Lcom/metamoji/nt/NtUnitController;Lcom/metamoji/nt/NtUnitController;)I

    move-result p1

    return p1
.end method
