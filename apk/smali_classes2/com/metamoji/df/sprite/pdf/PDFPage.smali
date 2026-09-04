.class public Lcom/metamoji/df/sprite/pdf/PDFPage;
.super Ljava/lang/Object;
.source "PDFPage.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PDFPage"


# instance fields
.field private correction:Landroid/graphics/Matrix;

.field private doc:Lcom/metamoji/df/sprite/pdf/PDFDocument;

.field private height:F

.field private index:I

.field private owner:Lcom/metamoji/df/sprite/pdf/PDFDocument;

.field private pageRenderer:Landroid/graphics/pdf/PdfRenderer$Page;

.field private ticket:Ljava/lang/String;

.field private width:F

.field private workCtm:Landroid/graphics/Matrix;


# direct methods
.method constructor <init>(Lcom/metamoji/df/sprite/pdf/PDFDocument;ILandroid/graphics/pdf/PdfRenderer$Page;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/metamoji/df/sprite/pdf/PDFPage;->correction:Landroid/graphics/Matrix;

    .line 137
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/metamoji/df/sprite/pdf/PDFPage;->workCtm:Landroid/graphics/Matrix;

    .line 47
    iput-object p1, p0, Lcom/metamoji/df/sprite/pdf/PDFPage;->owner:Lcom/metamoji/df/sprite/pdf/PDFDocument;

    .line 48
    invoke-virtual {p1}, Lcom/metamoji/df/sprite/pdf/PDFDocument;->getTicket()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/df/sprite/pdf/PDFPage;->ticket:Ljava/lang/String;

    .line 49
    iput p2, p0, Lcom/metamoji/df/sprite/pdf/PDFPage;->index:I

    .line 50
    iput-object p3, p0, Lcom/metamoji/df/sprite/pdf/PDFPage;->pageRenderer:Landroid/graphics/pdf/PdfRenderer$Page;

    .line 51
    invoke-virtual {p3}, Landroid/graphics/pdf/PdfRenderer$Page;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/metamoji/df/sprite/pdf/PDFPage;->width:F

    .line 52
    invoke-virtual {p3}, Landroid/graphics/pdf/PdfRenderer$Page;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/metamoji/df/sprite/pdf/PDFPage;->height:F

    return-void
.end method

.method constructor <init>(Lcom/metamoji/df/sprite/pdf/PDFDocument;ILandroid/graphics/pdf/PdfRenderer$Page;Lcom/metamoji/df/sprite/pdf/PDFDocument;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/df/sprite/pdf/PDFPage;-><init>(Lcom/metamoji/df/sprite/pdf/PDFDocument;ILandroid/graphics/pdf/PdfRenderer$Page;)V

    .line 66
    iput-object p4, p0, Lcom/metamoji/df/sprite/pdf/PDFPage;->doc:Lcom/metamoji/df/sprite/pdf/PDFDocument;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/metamoji/df/sprite/pdf/PDFPage;->owner:Lcom/metamoji/df/sprite/pdf/PDFDocument;

    invoke-virtual {v0, p0}, Lcom/metamoji/df/sprite/pdf/PDFDocument;->closeFromPage(Lcom/metamoji/df/sprite/pdf/PDFPage;)V

    return-void
.end method

.method public correctRenderPos(Landroid/graphics/Matrix;)V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/metamoji/df/sprite/pdf/PDFPage;->correction:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 71
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/pdf/PDFPage;->internalClose()V

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcom/metamoji/df/sprite/pdf/PDFPage;->owner:Lcom/metamoji/df/sprite/pdf/PDFDocument;

    .line 73
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getHeight()F
    .locals 1

    .line 126
    iget v0, p0, Lcom/metamoji/df/sprite/pdf/PDFPage;->height:F

    return v0
.end method

.method public getIndex()I
    .locals 1

    .line 105
    iget v0, p0, Lcom/metamoji/df/sprite/pdf/PDFPage;->index:I

    return v0
.end method

.method public getSize()Landroid/graphics/PointF;
    .locals 3

    .line 133
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Lcom/metamoji/df/sprite/pdf/PDFPage;->width:F

    iget v2, p0, Lcom/metamoji/df/sprite/pdf/PDFPage;->height:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public getTicket()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/metamoji/df/sprite/pdf/PDFPage;->ticket:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()F
    .locals 1

    .line 119
    iget v0, p0, Lcom/metamoji/df/sprite/pdf/PDFPage;->width:F

    return v0
.end method

.method internalClose()V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/metamoji/df/sprite/pdf/PDFPage;->pageRenderer:Landroid/graphics/pdf/PdfRenderer$Page;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Landroid/graphics/pdf/PdfRenderer$Page;->close()V

    .line 85
    iput-object v1, p0, Lcom/metamoji/df/sprite/pdf/PDFPage;->pageRenderer:Landroid/graphics/pdf/PdfRenderer$Page;

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/metamoji/df/sprite/pdf/PDFPage;->doc:Lcom/metamoji/df/sprite/pdf/PDFDocument;

    if-eqz v0, :cond_1

    .line 88
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/pdf/PDFDocument;->close()V

    .line 89
    iput-object v1, p0, Lcom/metamoji/df/sprite/pdf/PDFPage;->doc:Lcom/metamoji/df/sprite/pdf/PDFDocument;

    :cond_1
    return-void
.end method

.method public isOpened()Z
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/metamoji/df/sprite/pdf/PDFPage;->pageRenderer:Landroid/graphics/pdf/PdfRenderer$Page;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public renderToBitmap(Landroid/graphics/Bitmap;ILandroid/graphics/Matrix;)V
    .locals 2

    .line 147
    iget-object p2, p0, Lcom/metamoji/df/sprite/pdf/PDFPage;->pageRenderer:Landroid/graphics/pdf/PdfRenderer$Page;

    if-nez p2, :cond_0

    .line 148
    iget-object p2, p0, Lcom/metamoji/df/sprite/pdf/PDFPage;->owner:Lcom/metamoji/df/sprite/pdf/PDFDocument;

    iget v0, p0, Lcom/metamoji/df/sprite/pdf/PDFPage;->index:I

    invoke-virtual {p2, p0, v0}, Lcom/metamoji/df/sprite/pdf/PDFDocument;->reopenFromPage(Lcom/metamoji/df/sprite/pdf/PDFPage;I)Lkotlin/Pair;

    move-result-object p2

    .line 149
    invoke-virtual {p2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/pdf/PdfRenderer$Page;

    iput-object v0, p0, Lcom/metamoji/df/sprite/pdf/PDFPage;->pageRenderer:Landroid/graphics/pdf/PdfRenderer$Page;

    .line 150
    invoke-virtual {p2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/df/sprite/pdf/PDFDocument;

    iput-object p2, p0, Lcom/metamoji/df/sprite/pdf/PDFPage;->doc:Lcom/metamoji/df/sprite/pdf/PDFDocument;

    .line 152
    :cond_0
    iget-object p2, p0, Lcom/metamoji/df/sprite/pdf/PDFPage;->pageRenderer:Landroid/graphics/pdf/PdfRenderer$Page;

    if-eqz p2, :cond_1

    .line 153
    iget-object p2, p0, Lcom/metamoji/df/sprite/pdf/PDFPage;->workCtm:Landroid/graphics/Matrix;

    invoke-virtual {p2, p3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 154
    iget-object p2, p0, Lcom/metamoji/df/sprite/pdf/PDFPage;->workCtm:Landroid/graphics/Matrix;

    iget-object p3, p0, Lcom/metamoji/df/sprite/pdf/PDFPage;->correction:Landroid/graphics/Matrix;

    invoke-virtual {p2, p3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 155
    iget-object p2, p0, Lcom/metamoji/df/sprite/pdf/PDFPage;->pageRenderer:Landroid/graphics/pdf/PdfRenderer$Page;

    iget-object p3, p0, Lcom/metamoji/df/sprite/pdf/PDFPage;->workCtm:Landroid/graphics/Matrix;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1, p3, v0}, Landroid/graphics/pdf/PdfRenderer$Page;->render(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Matrix;I)V

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{PDFPage isOpened="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/metamoji/df/sprite/pdf/PDFPage;->isOpened()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/metamoji/df/sprite/pdf/PDFPage;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/metamoji/df/sprite/pdf/PDFPage;->width:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/metamoji/df/sprite/pdf/PDFPage;->height:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
