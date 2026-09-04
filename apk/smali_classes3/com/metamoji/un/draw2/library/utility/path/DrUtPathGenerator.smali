.class public Lcom/metamoji/un/draw2/library/utility/path/DrUtPathGenerator;
.super Lcom/metamoji/un/draw2/jni/library/fill/PathGenerator;
.source "DrUtPathGenerator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/metamoji/un/draw2/jni/library/fill/PathGenerator;-><init>()V

    return-void
.end method

.method public static mergeBezierPointArray(Lcom/metamoji/cm/PointArray;Lcom/metamoji/cm/PointArray;Z)Lcom/metamoji/cm/PointArray;
    .locals 1

    .line 49
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathGenerator;->toFloatArray(Lcom/metamoji/cm/PointArray;)[F

    move-result-object v0

    .line 50
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathGenerator;->toFloatArray(Lcom/metamoji/cm/PointArray;)[F

    move-result-object p1

    .line 51
    invoke-static {v0, p1, p2}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathGenerator;->native_merge([F[FZ)[F

    move-result-object p1

    if-eqz p1, :cond_0

    .line 53
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathGenerator;->toPointArray([F)Lcom/metamoji/cm/PointArray;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static simplifyBezierPointArray(Lcom/metamoji/cm/PointArray;)Lcom/metamoji/cm/PointArray;
    .locals 1

    .line 28
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathGenerator;->toFloatArray(Lcom/metamoji/cm/PointArray;)[F

    move-result-object v0

    .line 29
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathGenerator;->native_simplify([F)[F

    move-result-object v0

    if-eqz v0, :cond_0

    .line 31
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathGenerator;->toPointArray([F)Lcom/metamoji/cm/PointArray;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private static toFloatArray(Lcom/metamoji/cm/PointArray;)[F
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/cm/PointArray;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    .line 66
    new-array v0, v0, [F

    .line 68
    invoke-virtual {p0}, Lcom/metamoji/cm/PointArray;->getBackingStoreList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    add-int/lit8 v3, v1, 0x1

    .line 69
    iget v4, v2, Landroid/graphics/PointF;->x:F

    aput v4, v0, v1

    add-int/lit8 v1, v1, 0x2

    .line 70
    iget v2, v2, Landroid/graphics/PointF;->y:F

    aput v2, v0, v3

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static toPointArray([F)Lcom/metamoji/cm/PointArray;
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 81
    :cond_0
    array-length v0, p0

    .line 85
    new-instance v1, Ljava/util/ArrayList;

    div-int/lit8 v2, v0, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 87
    new-instance v3, Landroid/graphics/PointF;

    aget v4, p0, v2

    add-int/lit8 v5, v2, 0x1

    aget v5, p0, v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 89
    :cond_1
    new-instance p0, Lcom/metamoji/cm/PointArray;

    invoke-direct {p0, v1}, Lcom/metamoji/cm/PointArray;-><init>(Ljava/util/List;)V

    return-object p0
.end method
