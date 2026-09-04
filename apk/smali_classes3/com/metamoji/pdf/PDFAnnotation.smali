.class public final Lcom/metamoji/pdf/PDFAnnotation;
.super Ljava/lang/Object;
.source "PDFAnnotation.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/pdf/PDFAnnotation$Flag;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001:\u0001$B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0010\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aJ\u0010\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u001dH\u0002J\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0006\u0010\u001c\u001a\u00020\u001dJ\u000e\u0010 \u001a\u00020\t2\u0006\u0010\u001c\u001a\u00020\u001dJ\u001a\u0010!\u001a\u0004\u0018\u00010\"2\u0006\u0010\u001c\u001a\u00020\u001d2\u0008\u0008\u0002\u0010#\u001a\u00020\u0018R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\n\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\r\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0010\u001a\u00020\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0013\u001a\u00020\u0014\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006%"
    }
    d2 = {
        "Lcom/metamoji/pdf/PDFAnnotation;",
        "",
        "_doc",
        "Lcom/metamoji/pdf/PDFDocument;",
        "_annot",
        "Lcom/metamoji/pdf/core/PDFObj;",
        "<init>",
        "(Lcom/metamoji/pdf/PDFDocument;Lcom/metamoji/pdf/core/PDFObj;)V",
        "_rect",
        "Landroid/graphics/RectF;",
        "obj",
        "getObj",
        "()Lcom/metamoji/pdf/core/PDFObj;",
        "document",
        "getDocument",
        "()Lcom/metamoji/pdf/PDFDocument;",
        "rect",
        "getRect",
        "()Landroid/graphics/RectF;",
        "flags",
        "Lcom/metamoji/pdf/PDFAnnotation$Flag;",
        "getFlags",
        "()Lcom/metamoji/pdf/PDFAnnotation$Flag;",
        "isHidden",
        "",
        "ocgs",
        "Lcom/metamoji/pdf/content/OCGs;",
        "getAppearance",
        "appearance",
        "",
        "getAppearanceResource",
        "Lcom/metamoji/pdf/content/ResourceCache;",
        "getAppearanceBBox",
        "getAppearanceMatrix",
        "Landroid/graphics/Matrix;",
        "applyMatrix",
        "Flag",
        "pdf"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final _annot:Lcom/metamoji/pdf/core/PDFObj;

.field private final _doc:Lcom/metamoji/pdf/PDFDocument;

.field private final _rect:Landroid/graphics/RectF;

.field private final flags:Lcom/metamoji/pdf/PDFAnnotation$Flag;


# direct methods
.method public constructor <init>(Lcom/metamoji/pdf/PDFDocument;Lcom/metamoji/pdf/core/PDFObj;)V
    .locals 1

    const-string v0, "_doc"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_annot"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/pdf/PDFAnnotation;->_doc:Lcom/metamoji/pdf/PDFDocument;

    iput-object p2, p0, Lcom/metamoji/pdf/PDFAnnotation;->_annot:Lcom/metamoji/pdf/core/PDFObj;

    .line 13
    sget-object p1, Lcom/metamoji/pdf/PDFUtil;->INSTANCE:Lcom/metamoji/pdf/PDFUtil;

    const-string v0, "Rect"

    invoke-virtual {p2, v0}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/pdf/PDFUtil;->rectFromArray(Lcom/metamoji/pdf/core/PDFObj;)Landroid/graphics/RectF;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/pdf/PDFAnnotation;->_rect:Landroid/graphics/RectF;

    .line 36
    new-instance p1, Lcom/metamoji/pdf/PDFAnnotation$Flag;

    const-string v0, "F"

    invoke-virtual {p2, v0}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/metamoji/pdf/core/PDFObj;->intVal(I)I

    move-result p2

    invoke-direct {p1, p2}, Lcom/metamoji/pdf/PDFAnnotation$Flag;-><init>(I)V

    iput-object p1, p0, Lcom/metamoji/pdf/PDFAnnotation;->flags:Lcom/metamoji/pdf/PDFAnnotation$Flag;

    return-void
.end method

.method private final getAppearance(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/metamoji/pdf/PDFAnnotation;->_annot:Lcom/metamoji/pdf/core/PDFObj;

    const-string v1, "AP"

    invoke-virtual {v0, v1}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p1

    .line 48
    invoke-virtual {p1}, Lcom/metamoji/pdf/core/PDFObj;->getType()Lcom/metamoji/pdf/core/PDFObj$Type;

    move-result-object v0

    sget-object v1, Lcom/metamoji/pdf/core/PDFObj$Type;->DICTIONARY:Lcom/metamoji/pdf/core/PDFObj$Type;

    if-ne v0, v1, :cond_0

    .line 49
    iget-object v0, p0, Lcom/metamoji/pdf/PDFAnnotation;->_annot:Lcom/metamoji/pdf/core/PDFObj;

    const-string v1, "AS"

    invoke-virtual {v0, v1}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/pdf/core/PDFObj;->name()Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-virtual {p1, v0}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public static synthetic getAppearanceMatrix$default(Lcom/metamoji/pdf/PDFAnnotation;Ljava/lang/String;ZILjava/lang/Object;)Landroid/graphics/Matrix;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 66
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/pdf/PDFAnnotation;->getAppearanceMatrix(Ljava/lang/String;Z)Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getAppearanceBBox(Ljava/lang/String;)Landroid/graphics/RectF;
    .locals 2

    const-string v0, "appearance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-direct {p0, p1}, Lcom/metamoji/pdf/PDFAnnotation;->getAppearance(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p1

    .line 63
    sget-object v0, Lcom/metamoji/pdf/PDFUtil;->INSTANCE:Lcom/metamoji/pdf/PDFUtil;

    const-string v1, "BBox"

    invoke-virtual {p1, v1}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/pdf/PDFUtil;->rectFromArray(Lcom/metamoji/pdf/core/PDFObj;)Landroid/graphics/RectF;

    move-result-object p1

    return-object p1
.end method

.method public final getAppearanceMatrix(Ljava/lang/String;Z)Landroid/graphics/Matrix;
    .locals 8

    const-string v0, "appearance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-direct {p0, p1}, Lcom/metamoji/pdf/PDFAnnotation;->getAppearance(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p1

    .line 68
    sget-object v0, Lcom/metamoji/pdf/PDFUtil;->INSTANCE:Lcom/metamoji/pdf/PDFUtil;

    const-string v1, "BBox"

    invoke-virtual {p1, v1}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/pdf/PDFUtil;->rectFromArray(Lcom/metamoji/pdf/core/PDFObj;)Landroid/graphics/RectF;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 71
    :cond_0
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 72
    const-string v2, "Matrix"

    invoke-virtual {p1, v2}, Lcom/metamoji/pdf/core/PDFObj;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 73
    sget-object v1, Lcom/metamoji/pdf/PDFUtil;->INSTANCE:Lcom/metamoji/pdf/PDFUtil;

    invoke-virtual {p1, v2}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-virtual {v1, p1}, Lcom/metamoji/pdf/PDFUtil;->matrixFromArray(Ljava/lang/Iterable;)Landroid/graphics/Matrix;

    move-result-object v1

    .line 74
    invoke-static {v1, v0}, Lcom/metamoji/pdf/core/MatrixUtilKt;->transformBounds(Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    .line 77
    :cond_1
    iget-object p1, p0, Lcom/metamoji/pdf/PDFAnnotation;->_rect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr p1, v2

    .line 78
    iget-object v2, p0, Lcom/metamoji/pdf/PDFAnnotation;->_rect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v2, v3

    .line 79
    iget-object v3, p0, Lcom/metamoji/pdf/PDFAnnotation;->_rect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget v4, v0, Landroid/graphics/RectF;->left:F

    mul-float/2addr v4, p1

    sub-float/2addr v3, v4

    .line 80
    iget-object v4, p0, Lcom/metamoji/pdf/PDFAnnotation;->_rect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v0, v2

    sub-float/2addr v4, v0

    .line 81
    sget-object v0, Lcom/metamoji/pdf/core/MatrixUtil;->INSTANCE:Lcom/metamoji/pdf/core/MatrixUtil;

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Float;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v5, v6

    const/4 p1, 0x1

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, p1

    const/4 p1, 0x2

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, p1

    const/4 p1, 0x3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v5, p1

    const/4 p1, 0x4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v5, p1

    const/4 p1, 0x5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v5, p1

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/pdf/core/MatrixUtil;->matrix(Ljava/util/List;)Landroid/graphics/Matrix;

    move-result-object p1

    if-eqz p2, :cond_2

    .line 82
    invoke-static {p1, v1}, Lcom/metamoji/pdf/core/MatrixUtilKt;->times(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method public final getAppearanceResource(Ljava/lang/String;)Lcom/metamoji/pdf/content/ResourceCache;
    .locals 8

    const-string v0, "appearance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-direct {p0, p1}, Lcom/metamoji/pdf/PDFAnnotation;->getAppearance(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v3

    .line 57
    invoke-virtual {v3}, Lcom/metamoji/pdf/core/PDFObj;->isNull()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 58
    :cond_0
    new-instance v1, Lcom/metamoji/pdf/content/ResourceCache;

    iget-object p1, p0, Lcom/metamoji/pdf/PDFAnnotation;->_doc:Lcom/metamoji/pdf/PDFDocument;

    move-object v2, p1

    check-cast v2, Lcom/metamoji/pdf/core/IPDFDocument;

    const-string p1, "Resources"

    invoke-virtual {v3, p1}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v4

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/metamoji/pdf/content/ResourceCache;-><init>(Lcom/metamoji/pdf/core/IPDFDocument;Lcom/metamoji/pdf/core/PDFObj;Lcom/metamoji/pdf/core/PDFObj;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method public final getDocument()Lcom/metamoji/pdf/PDFDocument;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/metamoji/pdf/PDFAnnotation;->_doc:Lcom/metamoji/pdf/PDFDocument;

    return-object v0
.end method

.method public final getFlags()Lcom/metamoji/pdf/PDFAnnotation$Flag;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/metamoji/pdf/PDFAnnotation;->flags:Lcom/metamoji/pdf/PDFAnnotation$Flag;

    return-object v0
.end method

.method public final getObj()Lcom/metamoji/pdf/core/PDFObj;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/metamoji/pdf/PDFAnnotation;->_annot:Lcom/metamoji/pdf/core/PDFObj;

    return-object v0
.end method

.method public final getRect()Landroid/graphics/RectF;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/metamoji/pdf/PDFAnnotation;->_rect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public final isHidden(Lcom/metamoji/pdf/content/OCGs;)Z
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/metamoji/pdf/PDFAnnotation;->flags:Lcom/metamoji/pdf/PDFAnnotation$Flag;

    sget-object v1, Lcom/metamoji/pdf/PDFAnnotation$Flag;->Companion:Lcom/metamoji/pdf/PDFAnnotation$Flag$Companion;

    invoke-virtual {v1}, Lcom/metamoji/pdf/PDFAnnotation$Flag$Companion;->getHIDDEN()Lcom/metamoji/pdf/PDFAnnotation$Flag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/pdf/PDFAnnotation$Flag;->contains(Lcom/metamoji/pdf/PDFAnnotation$Flag;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/metamoji/pdf/PDFAnnotation;->flags:Lcom/metamoji/pdf/PDFAnnotation$Flag;

    sget-object v2, Lcom/metamoji/pdf/PDFAnnotation$Flag;->Companion:Lcom/metamoji/pdf/PDFAnnotation$Flag$Companion;

    invoke-virtual {v2}, Lcom/metamoji/pdf/PDFAnnotation$Flag$Companion;->getNOVIEW()Lcom/metamoji/pdf/PDFAnnotation$Flag;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/metamoji/pdf/PDFAnnotation$Flag;->contains(Lcom/metamoji/pdf/PDFAnnotation$Flag;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 41
    iget-object v0, p0, Lcom/metamoji/pdf/PDFAnnotation;->_annot:Lcom/metamoji/pdf/core/PDFObj;

    const-string v2, "OC"

    invoke-virtual {v0, v2}, Lcom/metamoji/pdf/core/PDFObj;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/metamoji/pdf/PDFAnnotation;->_annot:Lcom/metamoji/pdf/core/PDFObj;

    invoke-virtual {v0, v2}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/pdf/content/OCGs;->isVisible(Lcom/metamoji/pdf/core/PDFObj;)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    return v1
.end method
