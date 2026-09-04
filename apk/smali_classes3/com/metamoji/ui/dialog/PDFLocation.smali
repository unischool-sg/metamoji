.class public Lcom/metamoji/ui/dialog/PDFLocation;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "PDFLocation.java"


# instance fields
.field _pdfLocationView:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

.field public offsetX:F

.field public offsetY:F

.field public orientation:I

.field public paperSize:Lcom/metamoji/cm/SizeF;

.field public pdfImage:Landroid/graphics/Bitmap;

.field public pdfSize:Lcom/metamoji/cm/SizeF;

.field public scale:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    if-eqz p3, :cond_0

    .line 35
    const-string v0, "PDFLocation"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v0

    const/4 v1, 0x0

    .line 36
    aget v1, v0, v1

    iput v1, p0, Lcom/metamoji/ui/dialog/PDFLocation;->offsetX:F

    const/4 v1, 0x1

    .line 37
    aget v1, v0, v1

    iput v1, p0, Lcom/metamoji/ui/dialog/PDFLocation;->offsetY:F

    const/4 v1, 0x2

    .line 38
    aget v1, v0, v1

    iput v1, p0, Lcom/metamoji/ui/dialog/PDFLocation;->scale:F

    .line 39
    new-instance v1, Lcom/metamoji/cm/SizeF;

    const/4 v2, 0x3

    aget v2, v0, v2

    const/4 v3, 0x4

    aget v3, v0, v3

    invoke-direct {v1, v2, v3}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    iput-object v1, p0, Lcom/metamoji/ui/dialog/PDFLocation;->pdfSize:Lcom/metamoji/cm/SizeF;

    .line 40
    new-instance v1, Lcom/metamoji/cm/SizeF;

    const/4 v2, 0x5

    aget v2, v0, v2

    const/4 v3, 0x6

    aget v0, v0, v3

    invoke-direct {v1, v2, v0}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    iput-object v1, p0, Lcom/metamoji/ui/dialog/PDFLocation;->paperSize:Lcom/metamoji/cm/SizeF;

    .line 42
    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_pdf_location:I

    iput v0, p0, Lcom/metamoji/ui/dialog/PDFLocation;->mViewId:I

    .line 43
    sget v0, Lcom/metamoji/noteanytime/R$string;->Pdf_Location_Title:I

    iput v0, p0, Lcom/metamoji/ui/dialog/PDFLocation;->mTitleId:I

    .line 45
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 46
    sget p2, Lcom/metamoji/noteanytime/R$id;->dlg_pdflocation:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/PDFLocation;->_pdfLocationView:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    .line 47
    invoke-virtual {p2, p0}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->setParentInfo(Lcom/metamoji/ui/dialog/PDFLocation;)V

    .line 49
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/dialog/PDFLocation;->restoreInstanceStateIfAvailable(Landroid/view/View;)Z

    return-object p1
.end method

.method public onDone(Landroid/view/View;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PDFLocation;->_pdfLocationView:Lcom/metamoji/un/pdf/UnPDFLocationContentView;

    invoke-virtual {v0}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->setResult()V

    .line 73
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onDone(Landroid/view/View;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 9

    .line 55
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    .line 59
    iget v0, p0, Lcom/metamoji/ui/dialog/PDFLocation;->offsetX:F

    .line 60
    iget v1, p0, Lcom/metamoji/ui/dialog/PDFLocation;->offsetY:F

    .line 61
    iget v2, p0, Lcom/metamoji/ui/dialog/PDFLocation;->scale:F

    .line 62
    iget-object v3, p0, Lcom/metamoji/ui/dialog/PDFLocation;->pdfSize:Lcom/metamoji/cm/SizeF;

    iget v3, v3, Lcom/metamoji/cm/SizeF;->width:F

    .line 63
    iget-object v4, p0, Lcom/metamoji/ui/dialog/PDFLocation;->pdfSize:Lcom/metamoji/cm/SizeF;

    iget v4, v4, Lcom/metamoji/cm/SizeF;->height:F

    .line 64
    iget-object v5, p0, Lcom/metamoji/ui/dialog/PDFLocation;->paperSize:Lcom/metamoji/cm/SizeF;

    iget v5, v5, Lcom/metamoji/cm/SizeF;->width:F

    .line 65
    iget-object v6, p0, Lcom/metamoji/ui/dialog/PDFLocation;->paperSize:Lcom/metamoji/cm/SizeF;

    iget v6, v6, Lcom/metamoji/cm/SizeF;->height:F

    const/4 v7, 0x7

    new-array v7, v7, [F

    const/4 v8, 0x0

    aput v0, v7, v8

    const/4 v0, 0x1

    aput v1, v7, v0

    const/4 v0, 0x2

    aput v2, v7, v0

    const/4 v0, 0x3

    aput v3, v7, v0

    const/4 v0, 0x4

    aput v4, v7, v0

    const/4 v0, 0x5

    aput v5, v7, v0

    const/4 v0, 0x6

    aput v6, v7, v0

    .line 66
    const-string v0, "PDFLocation"

    invoke-virtual {p1, v0, v7}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    :cond_0
    return-void
.end method

.method public setOffset(FF)V
    .locals 0

    .line 91
    iput p1, p0, Lcom/metamoji/ui/dialog/PDFLocation;->offsetX:F

    .line 92
    iput p2, p0, Lcom/metamoji/ui/dialog/PDFLocation;->offsetY:F

    return-void
.end method

.method public setOrientation(F)V
    .locals 2

    float-to-int p1, p1

    .line 100
    iput p1, p0, Lcom/metamoji/ui/dialog/PDFLocation;->orientation:I

    const/16 v0, 0x2d

    const/16 v1, 0x87

    if-lt p1, v0, :cond_0

    if-ge p1, v1, :cond_0

    const/16 p1, 0x5a

    .line 102
    iput p1, p0, Lcom/metamoji/ui/dialog/PDFLocation;->orientation:I

    return-void

    :cond_0
    const/16 v0, 0xe1

    if-lt p1, v1, :cond_1

    if-ge p1, v0, :cond_1

    const/16 p1, 0xb4

    .line 104
    iput p1, p0, Lcom/metamoji/ui/dialog/PDFLocation;->orientation:I

    return-void

    :cond_1
    if-lt p1, v0, :cond_2

    const/16 v0, 0x13b

    if-ge p1, v0, :cond_2

    const/16 p1, 0x10e

    .line 106
    iput p1, p0, Lcom/metamoji/ui/dialog/PDFLocation;->orientation:I

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 108
    iput p1, p0, Lcom/metamoji/ui/dialog/PDFLocation;->orientation:I

    return-void
.end method

.method public setPaperSize(FF)V
    .locals 1

    .line 78
    new-instance v0, Lcom/metamoji/cm/SizeF;

    invoke-direct {v0, p1, p2}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    iput-object v0, p0, Lcom/metamoji/ui/dialog/PDFLocation;->paperSize:Lcom/metamoji/cm/SizeF;

    return-void
.end method

.method public setPdfImage(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/metamoji/ui/dialog/PDFLocation;->pdfImage:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setPdfSize(Lcom/metamoji/cm/SizeF;)V
    .locals 1

    .line 82
    new-instance v0, Lcom/metamoji/cm/SizeF;

    invoke-direct {v0, p1}, Lcom/metamoji/cm/SizeF;-><init>(Lcom/metamoji/cm/SizeF;)V

    iput-object v0, p0, Lcom/metamoji/ui/dialog/PDFLocation;->pdfSize:Lcom/metamoji/cm/SizeF;

    return-void
.end method

.method public setScale(F)V
    .locals 0

    .line 96
    iput p1, p0, Lcom/metamoji/ui/dialog/PDFLocation;->scale:F

    return-void
.end method
