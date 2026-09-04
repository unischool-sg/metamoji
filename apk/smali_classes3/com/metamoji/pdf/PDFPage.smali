.class public final Lcom/metamoji/pdf/PDFPage;
.super Ljava/lang/Object;
.source "PDFPage.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0018\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u0013H\u0002J\u0006\u0010%\u001a\u00020&J\u000e\u0010-\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u0005J\u0010\u0010.\u001a\u0004\u0018\u00010/2\u0006\u0010\u0004\u001a\u00020\u0005R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\n\u001a\u00020\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\r\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0014\u001a\u00020\u00158F\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0017R\u0011\u0010\u0018\u001a\u00020\u00158F\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u0017R\u0011\u0010\u001a\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u001cR\u0011\u0010\u001d\u001a\u00020\u001e8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010 R\u0011\u0010!\u001a\u00020\"8F\u00a2\u0006\u0006\u001a\u0004\u0008#\u0010$R\u0011\u0010\'\u001a\u00020\t8F\u00a2\u0006\u0006\u001a\u0004\u0008(\u0010\u000cR\u0011\u0010)\u001a\u00020\"8F\u00a2\u0006\u0006\u001a\u0004\u0008*\u0010$R\u0011\u0010+\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008,\u0010\u001cR\u0017\u00100\u001a\u0008\u0012\u0004\u0012\u00020/018F\u00a2\u0006\u0006\u001a\u0004\u00082\u00103\u00a8\u00064"
    }
    d2 = {
        "Lcom/metamoji/pdf/PDFPage;",
        "",
        "_doc",
        "Lcom/metamoji/pdf/PDFDocument;",
        "index",
        "",
        "<init>",
        "(Lcom/metamoji/pdf/PDFDocument;I)V",
        "_page",
        "Lcom/metamoji/pdf/core/PDFObj;",
        "obj",
        "getObj",
        "()Lcom/metamoji/pdf/core/PDFObj;",
        "document",
        "getDocument",
        "()Lcom/metamoji/pdf/PDFDocument;",
        "getInheritedAttribute",
        "page",
        "name",
        "",
        "mediaBox",
        "Landroid/graphics/RectF;",
        "getMediaBox",
        "()Landroid/graphics/RectF;",
        "cropBox",
        "getCropBox",
        "rotate",
        "getRotate",
        "()I",
        "size",
        "Landroid/util/SizeF;",
        "getSize",
        "()Landroid/util/SizeF;",
        "paperMatrix",
        "Landroid/graphics/Matrix;",
        "getPaperMatrix",
        "()Landroid/graphics/Matrix;",
        "openContents",
        "Lcom/metamoji/pdf/core/PDFInputStream;",
        "resources",
        "getResources",
        "renderCorrectionMatrix",
        "getRenderCorrectionMatrix",
        "annotationCount",
        "getAnnotationCount",
        "getAnnotationObj",
        "getAnnotation",
        "Lcom/metamoji/pdf/PDFAnnotation;",
        "annotations",
        "Lkotlin/sequences/Sequence;",
        "getAnnotations",
        "()Lkotlin/sequences/Sequence;",
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
.field private final _doc:Lcom/metamoji/pdf/PDFDocument;

.field private final _page:Lcom/metamoji/pdf/core/PDFObj;


# direct methods
.method public constructor <init>(Lcom/metamoji/pdf/PDFDocument;I)V
    .locals 1

    const-string v0, "_doc"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/pdf/PDFPage;->_doc:Lcom/metamoji/pdf/PDFDocument;

    .line 13
    invoke-virtual {p1, p2}, Lcom/metamoji/pdf/PDFDocument;->getPageObj(I)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/pdf/PDFPage;->_page:Lcom/metamoji/pdf/core/PDFObj;

    return-void
.end method

.method private final getInheritedAttribute(Lcom/metamoji/pdf/core/PDFObj;Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;
    .locals 2

    .line 20
    invoke-virtual {p1, p2}, Lcom/metamoji/pdf/core/PDFObj;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p1

    return-object p1

    .line 21
    :cond_0
    const-string v0, "Parent"

    invoke-virtual {p1, v0}, Lcom/metamoji/pdf/core/PDFObj;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object p1, Lcom/metamoji/pdf/core/PDFObj;->Companion:Lcom/metamoji/pdf/core/PDFObj$Companion;

    invoke-virtual {p1}, Lcom/metamoji/pdf/core/PDFObj$Companion;->getNull()Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p1

    return-object p1

    .line 22
    :cond_1
    invoke-virtual {p1, v0}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/metamoji/pdf/PDFPage;->getInheritedAttribute(Lcom/metamoji/pdf/core/PDFObj;Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final getAnnotation(I)Lcom/metamoji/pdf/PDFAnnotation;
    .locals 2

    .line 101
    invoke-virtual {p0, p1}, Lcom/metamoji/pdf/PDFPage;->getAnnotationObj(I)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p1

    .line 102
    invoke-virtual {p1}, Lcom/metamoji/pdf/core/PDFObj;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 103
    :cond_0
    new-instance v0, Lcom/metamoji/pdf/PDFAnnotation;

    iget-object v1, p0, Lcom/metamoji/pdf/PDFPage;->_doc:Lcom/metamoji/pdf/PDFDocument;

    invoke-direct {v0, v1, p1}, Lcom/metamoji/pdf/PDFAnnotation;-><init>(Lcom/metamoji/pdf/PDFDocument;Lcom/metamoji/pdf/core/PDFObj;)V

    return-object v0
.end method

.method public final getAnnotationCount()I
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/metamoji/pdf/PDFPage;->_page:Lcom/metamoji/pdf/core/PDFObj;

    const-string v1, "Annots"

    invoke-virtual {v0, v1}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/pdf/core/PDFObj;->getCount()I

    move-result v0

    return v0
.end method

.method public final getAnnotationObj(I)Lcom/metamoji/pdf/core/PDFObj;
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/metamoji/pdf/PDFPage;->_page:Lcom/metamoji/pdf/core/PDFObj;

    const-string v1, "Annots"

    invoke-virtual {v0, v1}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/pdf/core/PDFObj;->get(I)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p1

    return-object p1
.end method

.method public final getAnnotations()Lkotlin/sequences/Sequence;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/sequences/Sequence<",
            "Lcom/metamoji/pdf/PDFAnnotation;",
            ">;"
        }
    .end annotation

    .line 106
    new-instance v0, Lcom/metamoji/pdf/PDFPage$annotations$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/metamoji/pdf/PDFPage$annotations$1;-><init>(Lcom/metamoji/pdf/PDFPage;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->sequence(Lkotlin/jvm/functions/Function2;)Lkotlin/sequences/Sequence;

    move-result-object v0

    return-object v0
.end method

.method public final getCropBox()Landroid/graphics/RectF;
    .locals 3

    .line 29
    invoke-virtual {p0}, Lcom/metamoji/pdf/PDFPage;->getMediaBox()Landroid/graphics/RectF;

    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/metamoji/pdf/PDFPage;->_page:Lcom/metamoji/pdf/core/PDFObj;

    const-string v2, "CropBox"

    invoke-direct {p0, v1, v2}, Lcom/metamoji/pdf/PDFPage;->getInheritedAttribute(Lcom/metamoji/pdf/core/PDFObj;Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v1

    .line 31
    invoke-virtual {v1}, Lcom/metamoji/pdf/core/PDFObj;->isNull()Z

    move-result v2

    if-nez v2, :cond_0

    .line 32
    sget-object v2, Lcom/metamoji/pdf/PDFUtil;->INSTANCE:Lcom/metamoji/pdf/PDFUtil;

    invoke-virtual {v2, v1}, Lcom/metamoji/pdf/PDFUtil;->rectFromArray(Lcom/metamoji/pdf/core/PDFObj;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 33
    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    :cond_0
    return-object v0
.end method

.method public final getDocument()Lcom/metamoji/pdf/PDFDocument;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/metamoji/pdf/PDFPage;->_doc:Lcom/metamoji/pdf/PDFDocument;

    return-object v0
.end method

.method public final getMediaBox()Landroid/graphics/RectF;
    .locals 3

    .line 26
    sget-object v0, Lcom/metamoji/pdf/PDFUtil;->INSTANCE:Lcom/metamoji/pdf/PDFUtil;

    iget-object v1, p0, Lcom/metamoji/pdf/PDFPage;->_page:Lcom/metamoji/pdf/core/PDFObj;

    const-string v2, "MediaBox"

    invoke-direct {p0, v1, v2}, Lcom/metamoji/pdf/PDFPage;->getInheritedAttribute(Lcom/metamoji/pdf/core/PDFObj;Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/pdf/PDFUtil;->rectFromArray(Lcom/metamoji/pdf/core/PDFObj;)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public final getObj()Lcom/metamoji/pdf/core/PDFObj;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/metamoji/pdf/PDFPage;->_page:Lcom/metamoji/pdf/core/PDFObj;

    return-object v0
.end method

.method public final getPaperMatrix()Landroid/graphics/Matrix;
    .locals 3

    .line 51
    sget-object v0, Lcom/metamoji/pdf/core/MatrixUtil;->INSTANCE:Lcom/metamoji/pdf/core/MatrixUtil;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/pdf/core/MatrixUtil;->scale(FF)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/pdf/PDFPage;->getRotate()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v1, v2

    const/16 v2, 0xb4

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/metamoji/pdf/core/MatrixUtilKt;->rotate(Landroid/graphics/Matrix;F)Landroid/graphics/Matrix;

    move-result-object v0

    .line 52
    invoke-virtual {p0}, Lcom/metamoji/pdf/PDFPage;->getCropBox()Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/pdf/core/MatrixUtilKt;->transformBounds(Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    .line 53
    iget v2, v1, Landroid/graphics/RectF;->left:F

    neg-float v2, v2

    iget v1, v1, Landroid/graphics/RectF;->top:F

    neg-float v1, v1

    invoke-static {v0, v2, v1}, Lcom/metamoji/pdf/core/MatrixUtilKt;->translate(Landroid/graphics/Matrix;FF)Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public final getRenderCorrectionMatrix()Landroid/graphics/Matrix;
    .locals 1

    .line 66
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    return-object v0
.end method

.method public final getResources()Lcom/metamoji/pdf/core/PDFObj;
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/metamoji/pdf/PDFPage;->_page:Lcom/metamoji/pdf/core/PDFObj;

    const-string v1, "Resources"

    invoke-direct {p0, v0, v1}, Lcom/metamoji/pdf/PDFPage;->getInheritedAttribute(Lcom/metamoji/pdf/core/PDFObj;Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v0

    return-object v0
.end method

.method public final getRotate()I
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/metamoji/pdf/PDFPage;->_page:Lcom/metamoji/pdf/core/PDFObj;

    const-string v1, "Rotate"

    invoke-direct {p0, v0, v1}, Lcom/metamoji/pdf/PDFPage;->getInheritedAttribute(Lcom/metamoji/pdf/core/PDFObj;Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/pdf/core/PDFObj;->intVal(I)I

    move-result v0

    return v0
.end method

.method public final getSize()Landroid/util/SizeF;
    .locals 3

    .line 42
    invoke-virtual {p0}, Lcom/metamoji/pdf/PDFPage;->getCropBox()Landroid/graphics/RectF;

    move-result-object v0

    .line 43
    invoke-virtual {p0}, Lcom/metamoji/pdf/PDFPage;->getRotate()I

    move-result v1

    rem-int/lit16 v1, v1, 0xb4

    if-nez v1, :cond_0

    .line 44
    new-instance v1, Landroid/util/SizeF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-direct {v1, v2, v0}, Landroid/util/SizeF;-><init>(FF)V

    return-object v1

    .line 46
    :cond_0
    new-instance v1, Landroid/util/SizeF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-direct {v1, v2, v0}, Landroid/util/SizeF;-><init>(FF)V

    return-object v1
.end method

.method public final openContents()Lcom/metamoji/pdf/core/PDFInputStream;
    .locals 3

    .line 57
    new-instance v0, Lcom/metamoji/pdf/content/ContentStream;

    iget-object v1, p0, Lcom/metamoji/pdf/PDFPage;->_page:Lcom/metamoji/pdf/core/PDFObj;

    const-string v2, "Contents"

    invoke-virtual {v1, v2}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/metamoji/pdf/content/ContentStream;-><init>(Lcom/metamoji/pdf/core/PDFObj;)V

    check-cast v0, Lcom/metamoji/pdf/core/PDFInputStream;

    return-object v0
.end method
