.class Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;
.super Landroid/print/PrintDocumentAdapter;
.source "NtPrintPDF_19.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/NtPrintPDF_19;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AtdocPrintAdapter"
.end annotation


# instance fields
.field _baseIndex:I

.field _basePageNo:I

.field _context:Landroid/content/Context;

.field _doc:Lcom/metamoji/nt/NtDocument;

.field _footerFormat:Ljava/lang/String;

.field _formatter:Lcom/metamoji/nt/NtPrintFormatter;

.field _headerFormat:Ljava/lang/String;

.field _pageCount:I

.field _pdf:Landroid/graphics/pdf/PdfDocument;

.field _pdfOutputInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/df/sprite/pdf/PDFOutputInfo;",
            ">;"
        }
    .end annotation
.end field

.field _sheet:Lcom/metamoji/nt/NtNoteController;


# direct methods
.method public constructor <init>(Lcom/metamoji/nt/NtDocument;Landroid/content/Context;)V
    .locals 2

    .line 206
    invoke-direct {p0}, Landroid/print/PrintDocumentAdapter;-><init>()V

    const/4 v0, 0x0

    .line 182
    iput-object v0, p0, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->_sheet:Lcom/metamoji/nt/NtNoteController;

    const/4 v1, 0x0

    .line 183
    iput v1, p0, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->_pageCount:I

    .line 185
    iput-object v0, p0, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->_pdf:Landroid/graphics/pdf/PdfDocument;

    .line 187
    iput-object v0, p0, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->_pdfOutputInfo:Ljava/util/List;

    .line 194
    iput v1, p0, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->_baseIndex:I

    const/4 v1, 0x1

    .line 195
    iput v1, p0, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->_basePageNo:I

    .line 201
    iput-object v0, p0, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->_headerFormat:Ljava/lang/String;

    .line 202
    iput-object v0, p0, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->_footerFormat:Ljava/lang/String;

    .line 203
    iput-object v0, p0, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->_formatter:Lcom/metamoji/nt/NtPrintFormatter;

    .line 207
    iput-object p2, p0, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->_context:Landroid/content/Context;

    .line 208
    iput-object p1, p0, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->_doc:Lcom/metamoji/nt/NtDocument;

    .line 209
    invoke-virtual {p1}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->_sheet:Lcom/metamoji/nt/NtNoteController;

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/nt/NtDocument;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/nt/NtDocument;",
            "Ljava/util/List<",
            "Lcom/metamoji/df/sprite/pdf/PDFOutputInfo;",
            ">;)V"
        }
    .end annotation

    .line 213
    invoke-direct {p0}, Landroid/print/PrintDocumentAdapter;-><init>()V

    const/4 v0, 0x0

    .line 182
    iput-object v0, p0, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->_sheet:Lcom/metamoji/nt/NtNoteController;

    const/4 v1, 0x0

    .line 183
    iput v1, p0, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->_pageCount:I

    .line 185
    iput-object v0, p0, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->_pdf:Landroid/graphics/pdf/PdfDocument;

    .line 187
    iput-object v0, p0, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->_pdfOutputInfo:Ljava/util/List;

    .line 194
    iput v1, p0, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->_baseIndex:I

    const/4 v1, 0x1

    .line 195
    iput v1, p0, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->_basePageNo:I

    .line 201
    iput-object v0, p0, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->_headerFormat:Ljava/lang/String;

    .line 202
    iput-object v0, p0, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->_footerFormat:Ljava/lang/String;

    .line 203
    iput-object v0, p0, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->_formatter:Lcom/metamoji/nt/NtPrintFormatter;

    .line 214
    iput-object v0, p0, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->_context:Landroid/content/Context;

    .line 215
    iput-object p1, p0, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->_doc:Lcom/metamoji/nt/NtDocument;

    .line 216
    invoke-virtual {p1}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->_sheet:Lcom/metamoji/nt/NtNoteController;

    .line 218
    new-instance p1, Landroid/graphics/pdf/PdfDocument;

    invoke-direct {p1}, Landroid/graphics/pdf/PdfDocument;-><init>()V

    iput-object p1, p0, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->_pdf:Landroid/graphics/pdf/PdfDocument;

    .line 219
    iput-object p2, p0, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->_pdfOutputInfo:Ljava/util/List;

    .line 220
    invoke-direct {p0}, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->initFormatInfo()V

    return-void
.end method

.method static changeMediaType(Lcom/metamoji/nt/NtPageController;Lcom/metamoji/df/controller/ControllerContext$MediaType;)V
    .locals 1

    .line 701
    new-instance v0, Lcom/metamoji/df/controller/MediaChangedBroadcastContext;

    invoke-direct {v0, p1}, Lcom/metamoji/df/controller/MediaChangedBroadcastContext;-><init>(Lcom/metamoji/df/controller/ControllerContext$MediaType;)V

    const/4 p1, 0x1

    .line 702
    invoke-virtual {p0, v0, p1}, Lcom/metamoji/nt/NtPageController;->broadcastEventToDescendent(Lcom/metamoji/df/controller/BroadcastContext;Z)V

    return-void
.end method

.method private convertPageRange([I)[Landroid/print/PageRange;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 256
    new-array p1, v1, [Landroid/print/PageRange;

    sget-object v1, Landroid/print/PageRange;->ALL_PAGES:Landroid/print/PageRange;

    aput-object v1, p1, v0

    return-object p1

    .line 259
    :cond_0
    array-length v2, p1

    div-int/lit8 v2, v2, 0x2

    .line 260
    new-array v3, v2, [Landroid/print/PageRange;

    :goto_0
    if-ge v0, v2, :cond_1

    mul-int/lit8 v4, v0, 0x2

    .line 262
    aget v5, p1, v4

    invoke-direct {p0, v5}, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->iu2ir(I)I

    move-result v5

    add-int/2addr v4, v1

    .line 263
    aget v4, p1, v4

    invoke-direct {p0, v4}, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->iu2ir(I)I

    move-result v4

    .line 264
    new-instance v6, Landroid/print/PageRange;

    invoke-direct {v6, v5, v4}, Landroid/print/PageRange;-><init>(II)V

    aput-object v6, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method private initFormatInfo()V
    .locals 6

    .line 227
    iget-object v0, p0, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->_formatter:Lcom/metamoji/nt/NtPrintFormatter;

    if-eqz v0, :cond_0

    return-void

    .line 231
    :cond_0
    new-instance v0, Lcom/metamoji/nt/NtPrintFormatter;

    invoke-direct {v0}, Lcom/metamoji/nt/NtPrintFormatter;-><init>()V

    iput-object v0, p0, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->_formatter:Lcom/metamoji/nt/NtPrintFormatter;

    .line 232
    iget-object v1, p0, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->_doc:Lcom/metamoji/nt/NtDocument;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtDocument;->getDocumentTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtPrintFormatter;->setTitle(Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->_formatter:Lcom/metamoji/nt/NtPrintFormatter;

    iget-object v1, p0, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->_doc:Lcom/metamoji/nt/NtDocument;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtDocument;->getDocumentUpdateTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtPrintFormatter;->setUpdated(Ljava/util/Date;)V

    .line 235
    iget-object v0, p0, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->_doc:Lcom/metamoji/nt/NtDocument;

    const-string v1, "MMJNtDocumentSettings"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtDocument;->getDocumentSettingsForType(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtDocumentSettings;

    .line 237
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocumentSettings;->hasFrontCover()Z

    move-result v1

    .line 238
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocumentSettings;->getNoFrontCoverOnPrinting()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    move v5, v4

    goto :goto_0

    :cond_1
    move v5, v3

    .line 239
    :goto_0
    iput v5, p0, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->_baseIndex:I

    if-eqz v1, :cond_2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    .line 240
    :goto_1
    iput v3, p0, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->_basePageNo:I

    .line 241
    iget-object v2, p0, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->_sheet:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v2}, Lcom/metamoji/nt/NtNoteController;->getNumberOfPages()I

    move-result v2

    .line 242
    iget v3, p0, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->_baseIndex:I

    sub-int v3, v2, v3

    iput v3, p0, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->_pageCount:I

    .line 243
    iget-object v3, p0, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->_formatter:Lcom/metamoji/nt/NtPrintFormatter;

    if-eqz v1, :cond_3

    add-int/lit8 v2, v2, -0x1

    :cond_3
    invoke-virtual {v3, v2}, Lcom/metamoji/nt/NtPrintFormatter;->setPageCount(I)V

    .line 245
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocumentSettings;->getHeader()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->_headerFormat:Ljava/lang/String;

    .line 246
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocumentSettings;->getFooter()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->_footerFormat:Ljava/lang/String;

    return-void
.end method

.method private iu2ir(I)I
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 272
    iget-object p1, p0, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->_doc:Lcom/metamoji/nt/NtDocument;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/nt/NtNoteController;->getCurrentPageIndex()I

    move-result p1

    iget v0, p0, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->_baseIndex:I

    :goto_0
    sub-int/2addr p1, v0

    return p1

    .line 274
    :cond_0
    iget v0, p0, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->_basePageNo:I

    goto :goto_0
.end method


# virtual methods
.method finishWrite([ILandroid/print/PrintDocumentAdapter$WriteResultCallback;)V
    .locals 1

    .line 428
    iget-object v0, p0, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->_pdf:Landroid/graphics/pdf/PdfDocument;

    invoke-virtual {v0}, Landroid/graphics/pdf/PdfDocument;->close()V

    const/4 v0, 0x0

    .line 429
    iput-object v0, p0, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->_pdf:Landroid/graphics/pdf/PdfDocument;

    .line 431
    iget-object v0, p0, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->_doc:Lcom/metamoji/nt/NtDocument;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getAttachmentManager()Lcom/metamoji/df/controller/AttachmentsManager;

    move-result-object v0

    .line 432
    invoke-virtual {v0}, Lcom/metamoji/df/controller/AttachmentsManager;->unlockBitmaps()V

    if-eqz p2, :cond_0

    .line 435
    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->convertPageRange([I)[Landroid/print/PageRange;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFinished([Landroid/print/PageRange;)V

    :cond_0
    return-void
.end method

.method public onLayout(Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;Landroid/os/Bundle;)V
    .locals 0

    .line 281
    new-instance p1, Landroid/print/pdf/PrintedPdfDocument;

    iget-object p5, p0, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->_context:Landroid/content/Context;

    invoke-direct {p1, p5, p2}, Landroid/print/pdf/PrintedPdfDocument;-><init>(Landroid/content/Context;Landroid/print/PrintAttributes;)V

    iput-object p1, p0, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->_pdf:Landroid/graphics/pdf/PdfDocument;

    .line 283
    invoke-virtual {p3}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 284
    invoke-virtual {p4}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutCancelled()V

    return-void

    .line 288
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->initFormatInfo()V

    .line 289
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->_doc:Lcom/metamoji/nt/NtDocument;

    invoke-virtual {p2}, Lcom/metamoji/nt/NtDocument;->getDocumentTitleForFileName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ".pdf"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 291
    new-instance p2, Landroid/print/PrintDocumentInfo$Builder;

    invoke-direct {p2, p1}, Landroid/print/PrintDocumentInfo$Builder;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 292
    invoke-virtual {p2, p1}, Landroid/print/PrintDocumentInfo$Builder;->setContentType(I)Landroid/print/PrintDocumentInfo$Builder;

    .line 293
    iget p1, p0, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->_pageCount:I

    invoke-virtual {p2, p1}, Landroid/print/PrintDocumentInfo$Builder;->setPageCount(I)Landroid/print/PrintDocumentInfo$Builder;

    .line 294
    invoke-virtual {p2}, Landroid/print/PrintDocumentInfo$Builder;->build()Landroid/print/PrintDocumentInfo;

    move-result-object p1

    const/4 p2, 0x1

    .line 295
    invoke-virtual {p4, p1, p2}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutFinished(Landroid/print/PrintDocumentInfo;Z)V

    return-void
.end method

.method public onWrite([Landroid/print/PageRange;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
    .locals 6

    .line 301
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p2

    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->write([Landroid/print/PageRange;ZLjava/io/OutputStream;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V

    return-void
.end method

.method printPage(IZLjava/util/Map;)V
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    .line 444
    const-string/jumbo v4, "visibleCommonLayer"

    const-string/jumbo v5, "visibleTeacherPersonalLayer"

    const-string/jumbo v6, "system:private"

    .line 0
    const-string v7, "PDF begin print page #"

    .line 452
    :try_start_0
    iget-object v10, v1, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->_sheet:Lcom/metamoji/nt/NtNoteController;

    iget v11, v1, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->_baseIndex:I

    add-int/2addr v11, v0

    invoke-virtual {v10, v11}, Lcom/metamoji/nt/NtNoteController;->getPage(I)Lcom/metamoji/nt/NtPageController;

    move-result-object v10

    .line 453
    invoke-virtual {v10, v10}, Lcom/metamoji/nt/NtPageController;->createControllerContext(Lcom/metamoji/df/controller/DfController;)Lcom/metamoji/df/controller/ControllerContext;

    move-result-object v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_10

    .line 454
    :try_start_1
    sget-object v12, Lcom/metamoji/df/controller/ControllerContext$MediaType;->MEDIATYPE_PRINT:Lcom/metamoji/df/controller/ControllerContext$MediaType;

    iput-object v12, v11, Lcom/metamoji/df/controller/ControllerContext;->mediaType:Lcom/metamoji/df/controller/ControllerContext$MediaType;

    .line 455
    invoke-virtual {v10, v11}, Lcom/metamoji/nt/NtPageController;->restoreTemporary(Lcom/metamoji/df/controller/ControllerContext;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_f

    .line 458
    :try_start_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v1, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->_baseIndex:I

    add-int/2addr v7, v0

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 460
    iget-object v7, v1, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->_sheet:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v7}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_e

    if-ne v7, v10, :cond_0

    .line 462
    :try_start_3
    iget-object v7, v1, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->_sheet:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v7}, Lcom/metamoji/nt/NtNoteController;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v7

    .line 463
    new-instance v12, Lcom/metamoji/df/controller/StageFrozenDisposer;

    invoke-direct {v12, v7}, Lcom/metamoji/df/controller/StageFrozenDisposer;-><init>(Lcom/metamoji/df/sprite/Stage;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v4, v11

    const/4 v2, 0x0

    goto/16 :goto_1a

    :cond_0
    const/4 v12, 0x0

    .line 472
    :goto_0
    :try_start_4
    invoke-virtual {v10, v6}, Lcom/metamoji/nt/NtPageController;->layerIndexForType(Ljava/lang/String;)I

    move-result v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_d

    if-ltz v7, :cond_1

    .line 474
    :try_start_5
    invoke-virtual {v10, v7}, Lcom/metamoji/nt/NtPageController;->getLayer(I)Lcom/metamoji/nt/NtLayerController;

    move-result-object v7

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v4, v11

    move-object/from16 v20, v12

    :goto_1
    const/4 v2, 0x0

    goto/16 :goto_17

    :cond_1
    const/4 v7, 0x0

    :goto_2
    if-eqz v3, :cond_4

    .line 487
    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 488
    invoke-static {v3, v5}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    goto :goto_3

    :cond_2
    const/4 v5, 0x1

    .line 490
    :goto_3
    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 491
    invoke-static {v3, v4}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    goto :goto_4

    :cond_3
    const/4 v4, 0x0

    .line 493
    :goto_4
    const-string/jumbo v14, "visiblePersonalLayerIdSuffixDic"

    invoke-static {v3, v14}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map;

    .line 494
    const-string/jumbo v15, "visibleTeacherPersonalLayerIdSuffixDic"

    invoke-static {v3, v15}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_5

    :cond_4
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 501
    :goto_5
    :try_start_6
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 502
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 503
    invoke-virtual {v10}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result v17

    .line 504
    invoke-virtual {v10}, Lcom/metamoji/nt/NtPageController;->getNumberOfLayers()I

    move-result v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_d

    move/from16 v19, v5

    move-object/from16 v20, v12

    const/4 v5, 0x0

    const/4 v12, 0x0

    :goto_6
    if-ge v5, v13, :cond_c

    move/from16 v21, v13

    .line 505
    :try_start_7
    invoke-virtual {v10, v5}, Lcom/metamoji/nt/NtPageController;->getLayer(I)Lcom/metamoji/nt/NtLayerController;

    move-result-object v13

    move/from16 v22, v5

    .line 506
    invoke-virtual {v13}, Lcom/metamoji/nt/NtLayerController;->getLayerId()Ljava/lang/String;

    move-result-object v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-object/from16 v23, v11

    .line 507
    :try_start_8
    const-string/jumbo v11, "system:common"

    move-object/from16 v24, v12

    invoke-virtual {v13}, Lcom/metamoji/nt/NtLayerController;->getLayerType()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 510
    invoke-virtual {v13}, Lcom/metamoji/nt/NtLayerController;->getVisible()Z

    move-result v5

    if-eq v4, v5, :cond_b

    .line 511
    invoke-virtual {v13, v4}, Lcom/metamoji/nt/NtLayerController;->setVisible(Z)V

    move-object v12, v13

    goto :goto_a

    .line 514
    :cond_5
    const-string/jumbo v11, "system:teacher_personal"

    invoke-virtual {v13}, Lcom/metamoji/nt/NtLayerController;->getLayerType()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 516
    invoke-virtual {v13}, Lcom/metamoji/nt/NtLayerController;->getLayerId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v15}, Lcom/metamoji/forSchool/ScSchoolUtils;->isOutputTargetTeacherPersonalLayerId(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v5

    if-eqz v19, :cond_6

    if-eqz v5, :cond_6

    const/4 v11, 0x1

    goto :goto_7

    :cond_6
    const/4 v11, 0x0

    .line 518
    :goto_7
    invoke-virtual {v13}, Lcom/metamoji/nt/NtLayerController;->getVisible()Z

    move-result v12

    if-eq v11, v12, :cond_b

    if-eqz v19, :cond_7

    if-eqz v5, :cond_7

    const/4 v11, 0x1

    goto :goto_8

    :cond_7
    const/4 v11, 0x0

    .line 519
    :goto_8
    invoke-virtual {v13, v11}, Lcom/metamoji/nt/NtLayerController;->setVisible(Z)V

    if-eqz v19, :cond_8

    if-eqz v5, :cond_8

    .line 521
    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 523
    :cond_8
    invoke-interface {v8, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 526
    :cond_9
    const-string/jumbo v11, "system:personal"

    invoke-virtual {v13}, Lcom/metamoji/nt/NtLayerController;->getLayerType()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 529
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v5, v11, v14}, Lcom/metamoji/forSchool/ScSchoolUtils;->isOutputTargetPersonalLayerId(Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Map;)Z

    move-result v5

    .line 530
    invoke-virtual {v13}, Lcom/metamoji/nt/NtLayerController;->getVisible()Z

    move-result v11

    if-eq v5, v11, :cond_b

    .line 531
    invoke-virtual {v13, v5}, Lcom/metamoji/nt/NtLayerController;->setVisible(Z)V

    if-eqz v5, :cond_a

    .line 533
    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 535
    :cond_a
    invoke-interface {v8, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    :goto_9
    move-object/from16 v12, v24

    :goto_a
    add-int/lit8 v5, v22, 0x1

    move/from16 v13, v21

    move-object/from16 v11, v23

    goto/16 :goto_6

    :catchall_2
    move-exception v0

    move-object/from16 v23, v11

    :goto_b
    move-object/from16 v4, v23

    goto/16 :goto_1

    :cond_c
    move-object/from16 v23, v11

    move-object/from16 v24, v12

    if-eqz v7, :cond_d

    .line 544
    invoke-virtual {v7}, Lcom/metamoji/nt/NtLayerController;->getVisible()Z

    move-result v5

    .line 545
    invoke-virtual {v7, v2}, Lcom/metamoji/nt/NtLayerController;->setVisible(Z)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_c

    :catchall_3
    move-exception v0

    goto :goto_b

    :cond_d
    const/4 v5, 0x0

    .line 551
    :goto_c
    :try_start_9
    invoke-virtual {v10}, Lcom/metamoji/nt/NtPageController;->getCurrentLayer()Lcom/metamoji/nt/NtLayerController;

    move-result-object v11
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_c

    if-eqz v11, :cond_e

    .line 553
    :try_start_a
    invoke-virtual {v11}, Lcom/metamoji/nt/NtLayerController;->getLayerType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_d

    :cond_e
    const/4 v6, 0x0

    :goto_d
    if-eq v6, v2, :cond_f

    .line 559
    invoke-virtual {v10, v2}, Lcom/metamoji/nt/NtPageController;->setLayersColorFaint(Z)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 564
    :cond_f
    :try_start_b
    invoke-virtual {v10, v3}, Lcom/metamoji/nt/NtPageController;->takeSnapshotBeforeProcessForPersonalTemplateLayer(Ljava/util/Map;)V

    .line 568
    sget-object v3, Lcom/metamoji/df/controller/ControllerContext$MediaType;->MEDIATYPE_PRINT:Lcom/metamoji/df/controller/ControllerContext$MediaType;

    invoke-static {v10, v3}, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->changeMediaType(Lcom/metamoji/nt/NtPageController;Lcom/metamoji/df/controller/ControllerContext$MediaType;)V

    .line 570
    invoke-virtual {v10}, Lcom/metamoji/nt/NtPageController;->getPaperSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v3

    .line 571
    invoke-virtual {v3}, Lcom/metamoji/df/sprite/Sprite;->isClipping()Z

    move-result v11
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_c

    const/4 v12, 0x1

    .line 572
    :try_start_c
    invoke-virtual {v3, v12}, Lcom/metamoji/df/sprite/Sprite;->setClipping(Z)V

    .line 574
    invoke-virtual {v1, v0, v10}, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->startPage(ILcom/metamoji/nt/NtPageController;)Landroid/graphics/pdf/PdfDocument$Page;

    move-result-object v12
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_b

    .line 575
    :try_start_d
    invoke-virtual {v12}, Landroid/graphics/pdf/PdfDocument$Page;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v13

    .line 577
    invoke-virtual {v10}, Lcom/metamoji/nt/NtPageController;->getPaperWidth()F

    move-result v14

    .line 578
    invoke-virtual {v10}, Lcom/metamoji/nt/NtPageController;->getPaperHeight()F

    move-result v15

    .line 579
    invoke-virtual {v13}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    move/from16 v17, v4

    .line 580
    invoke-virtual {v13}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v19, v8

    div-float v8, v0, v14

    move-object/from16 v21, v9

    div-float v9, v4, v15

    .line 583
    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    mul-float v9, v14, v8

    sub-float v9, v0, v9

    const/high16 v22, 0x40000000    # 2.0f

    div-float v9, v9, v22

    mul-float v25, v15, v8

    sub-float v25, v4, v25

    move/from16 p3, v14

    div-float v14, v25, v22

    move/from16 v25, v15

    .line 588
    new-instance v15, Lcom/metamoji/df/sprite/CanvasContext;

    invoke-direct {v15}, Lcom/metamoji/df/sprite/CanvasContext;-><init>()V

    .line 589
    invoke-virtual {v15, v13}, Lcom/metamoji/df/sprite/CanvasContext;->setCanvas(Landroid/graphics/Canvas;)V

    move-object/from16 v26, v13

    .line 590
    iget-object v13, v1, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->_pdfOutputInfo:Ljava/util/List;

    invoke-virtual {v15, v13}, Lcom/metamoji/df/sprite/CanvasContext;->setPDFOutputInfo(Ljava/util/List;)V

    .line 591
    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Canvas;->getWidth()I

    move-result v13
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_a

    move/from16 v27, v11

    :try_start_e
    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Canvas;->getHeight()I

    move-result v11

    invoke-virtual {v15, v13, v11}, Lcom/metamoji/df/sprite/CanvasContext;->setSize(II)V

    .line 592
    new-instance v11, Landroid/graphics/RectF;

    const/4 v13, 0x0

    invoke-direct {v11, v13, v13, v0, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v15, v11}, Lcom/metamoji/df/sprite/CanvasContext;->setDirtyRect(Landroid/graphics/RectF;)V

    .line 594
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 595
    invoke-virtual {v15, v0}, Lcom/metamoji/df/sprite/CanvasContext;->getMatrix(Landroid/graphics/Matrix;)V

    .line 596
    invoke-virtual {v0, v9, v14}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 597
    invoke-virtual {v0, v8, v8}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 598
    invoke-virtual {v15, v0}, Lcom/metamoji/df/sprite/CanvasContext;->setMatrix(Landroid/graphics/Matrix;)V

    .line 600
    iget-object v0, v1, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->_formatter:Lcom/metamoji/nt/NtPrintFormatter;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    if-eqz v0, :cond_12

    const/high16 v4, 0x3f800000    # 1.0f

    div-float/2addr v4, v8

    .line 603
    :try_start_f
    iget v8, v1, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->_basePageNo:I

    add-int v8, p1, v8

    invoke-virtual {v0, v8}, Lcom/metamoji/nt/NtPrintFormatter;->setPageNo(I)V

    .line 604
    iget-object v0, v1, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->_formatter:Lcom/metamoji/nt/NtPrintFormatter;

    iget-object v8, v1, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->_headerFormat:Ljava/lang/String;

    invoke-virtual {v0, v8}, Lcom/metamoji/nt/NtPrintFormatter;->formatHeaderFooter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v8, 0x42100000    # 36.0f

    if-eqz v0, :cond_10

    .line 606
    new-instance v9, Lcom/metamoji/df/sprite/Sprite;

    invoke-direct {v9}, Lcom/metamoji/df/sprite/Sprite;-><init>()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 607
    :try_start_10
    invoke-virtual {v9}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v11

    invoke-virtual {v11}, Lcom/metamoji/df/sprite/Graphics;->clear()V

    .line 608
    invoke-virtual {v9}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v11

    invoke-virtual {v11, v0}, Lcom/metamoji/df/sprite/Graphics;->rectOfString(Ljava/lang/String;)Landroid/graphics/RectF;

    move-result-object v11

    .line 609
    invoke-virtual {v9, v4}, Lcom/metamoji/df/sprite/Sprite;->setScaleX(F)V

    .line 610
    invoke-virtual {v9, v4}, Lcom/metamoji/df/sprite/Sprite;->setScaleY(F)V

    .line 611
    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v14

    mul-float/2addr v14, v4

    invoke-virtual {v9, v14}, Lcom/metamoji/df/sprite/Sprite;->setWidth(F)V

    .line 612
    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v14

    mul-float/2addr v14, v4

    invoke-virtual {v9, v14}, Lcom/metamoji/df/sprite/Sprite;->setHeight(F)V

    .line 613
    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v14

    sub-float v14, v8, v14

    mul-float/2addr v14, v4

    div-float v14, v14, v22

    invoke-virtual {v9, v14}, Lcom/metamoji/df/sprite/Sprite;->setY(F)V

    .line 614
    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v11

    mul-float/2addr v11, v4

    sub-float v14, p3, v11

    div-float v14, v14, v22

    invoke-virtual {v9, v14}, Lcom/metamoji/df/sprite/Sprite;->setX(F)V

    .line 615
    invoke-virtual {v3, v9}, Lcom/metamoji/df/sprite/Sprite;->addChild(Lcom/metamoji/df/sprite/Sprite;)V

    .line 616
    invoke-virtual {v9}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v11

    invoke-virtual {v11, v13, v13, v0}, Lcom/metamoji/df/sprite/Graphics;->drawString(FFLjava/lang/String;)V

    goto :goto_e

    :cond_10
    const/4 v9, 0x0

    .line 618
    :goto_e
    iget-object v0, v1, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->_formatter:Lcom/metamoji/nt/NtPrintFormatter;

    iget-object v11, v1, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->_footerFormat:Ljava/lang/String;

    invoke-virtual {v0, v11}, Lcom/metamoji/nt/NtPrintFormatter;->formatHeaderFooter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 620
    new-instance v11, Lcom/metamoji/df/sprite/Sprite;

    invoke-direct {v11}, Lcom/metamoji/df/sprite/Sprite;-><init>()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    .line 621
    :try_start_11
    invoke-virtual {v11}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v14

    invoke-virtual {v14}, Lcom/metamoji/df/sprite/Graphics;->clear()V

    .line 622
    invoke-virtual {v11}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v14

    invoke-virtual {v14, v0}, Lcom/metamoji/df/sprite/Graphics;->rectOfString(Ljava/lang/String;)Landroid/graphics/RectF;

    move-result-object v14

    .line 623
    invoke-virtual {v11, v4}, Lcom/metamoji/df/sprite/Sprite;->setScaleX(F)V

    .line 624
    invoke-virtual {v11, v4}, Lcom/metamoji/df/sprite/Sprite;->setScaleY(F)V

    .line 625
    invoke-virtual {v14}, Landroid/graphics/RectF;->width()F

    move-result v16

    move/from16 p1, v8

    mul-float v8, v16, v4

    invoke-virtual {v11, v8}, Lcom/metamoji/df/sprite/Sprite;->setWidth(F)V

    .line 626
    invoke-virtual {v14}, Landroid/graphics/RectF;->height()F

    move-result v8

    mul-float/2addr v8, v4

    invoke-virtual {v11, v8}, Lcom/metamoji/df/sprite/Sprite;->setHeight(F)V

    .line 627
    invoke-virtual {v14}, Landroid/graphics/RectF;->height()F

    move-result v8

    add-float v8, v8, p1

    mul-float/2addr v8, v4

    div-float v8, v8, v22

    sub-float v8, v25, v8

    invoke-virtual {v11, v8}, Lcom/metamoji/df/sprite/Sprite;->setY(F)V

    .line 628
    invoke-virtual {v14}, Landroid/graphics/RectF;->width()F

    move-result v8

    mul-float/2addr v8, v4

    sub-float v14, p3, v8

    div-float v14, v14, v22

    invoke-virtual {v11, v14}, Lcom/metamoji/df/sprite/Sprite;->setX(F)V

    .line 629
    invoke-virtual {v3, v11}, Lcom/metamoji/df/sprite/Sprite;->addChild(Lcom/metamoji/df/sprite/Sprite;)V

    .line 630
    invoke-virtual {v11}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v4

    invoke-virtual {v4, v13, v13, v0}, Lcom/metamoji/df/sprite/Graphics;->drawString(FFLjava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    move-object v8, v9

    goto :goto_10

    :catchall_4
    move-exception v0

    goto :goto_11

    :cond_11
    move-object v8, v9

    goto :goto_f

    :catchall_5
    move-exception v0

    move-object v8, v12

    move-object/from16 v4, v23

    move/from16 v2, v27

    goto/16 :goto_19

    :catchall_6
    move-exception v0

    move-object v8, v12

    move-object/from16 v4, v23

    move/from16 v2, v27

    goto/16 :goto_18

    :cond_12
    const/4 v8, 0x0

    :goto_f
    const/4 v11, 0x0

    .line 634
    :goto_10
    :try_start_12
    invoke-virtual {v3, v15}, Lcom/metamoji/df/sprite/Sprite;->paint(Lcom/metamoji/df/sprite/Context;)V

    .line 637
    sget-object v0, Lcom/metamoji/df/controller/ControllerContext$MediaType;->MEDIATYPE_NONE:Lcom/metamoji/df/controller/ControllerContext$MediaType;

    invoke-static {v10, v0}, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->changeMediaType(Lcom/metamoji/nt/NtPageController;Lcom/metamoji/df/controller/ControllerContext$MediaType;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    if-eq v6, v2, :cond_13

    .line 641
    :try_start_13
    invoke-virtual {v10, v6}, Lcom/metamoji/nt/NtPageController;->setLayersColorFaint(Z)V

    goto :goto_12

    :catchall_7
    move-exception v0

    move-object v9, v8

    :goto_11
    move-object v8, v12

    move-object/from16 v4, v23

    move/from16 v2, v27

    goto/16 :goto_1d

    :cond_13
    :goto_12
    if-eqz v7, :cond_14

    .line 644
    invoke-virtual {v7, v5}, Lcom/metamoji/nt/NtLayerController;->setVisible(Z)V

    :cond_14
    if-eqz v24, :cond_15

    const/16 v18, 0x1

    xor-int/lit8 v0, v17, 0x1

    move-object/from16 v2, v24

    .line 650
    invoke-virtual {v2, v0}, Lcom/metamoji/nt/NtLayerController;->setVisible(Z)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    .line 654
    :cond_15
    :try_start_14
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    if-eqz v2, :cond_16

    :try_start_15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/nt/NtLayerController;

    const/4 v3, 0x1

    .line 655
    invoke-virtual {v2, v3}, Lcom/metamoji/nt/NtLayerController;->setVisible(Z)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    goto :goto_13

    .line 659
    :cond_16
    :try_start_16
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_8

    if-eqz v2, :cond_17

    :try_start_17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/nt/NtLayerController;

    const/4 v3, 0x0

    .line 660
    invoke-virtual {v2, v3}, Lcom/metamoji/nt/NtLayerController;->setVisible(Z)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    goto :goto_14

    .line 664
    :cond_17
    :try_start_18
    invoke-virtual {v10}, Lcom/metamoji/nt/NtPageController;->takeSnapshotAfterProcessForPersonalTemplateLayer()V

    .line 667
    const-string v0, "PDF end print page"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    if-eqz v12, :cond_18

    .line 670
    iget-object v0, v1, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->_pdf:Landroid/graphics/pdf/PdfDocument;

    invoke-virtual {v0, v12}, Landroid/graphics/pdf/PdfDocument;->finishPage(Landroid/graphics/pdf/PdfDocument$Page;)V

    :cond_18
    if-eqz v10, :cond_1b

    .line 673
    invoke-virtual {v10}, Lcom/metamoji/nt/NtPageController;->getPaperSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    if-eqz v8, :cond_19

    .line 675
    invoke-virtual {v0, v8}, Lcom/metamoji/df/sprite/Sprite;->removeChild(Lcom/metamoji/df/sprite/Sprite;)V

    :cond_19
    if-eqz v11, :cond_1a

    .line 678
    invoke-virtual {v0, v11}, Lcom/metamoji/df/sprite/Sprite;->removeChild(Lcom/metamoji/df/sprite/Sprite;)V

    :cond_1a
    move/from16 v2, v27

    .line 680
    invoke-virtual {v0, v2}, Lcom/metamoji/df/sprite/Sprite;->setClipping(Z)V

    move-object/from16 v4, v23

    .line 681
    invoke-virtual {v10, v4}, Lcom/metamoji/nt/NtPageController;->turnInTemporary(Lcom/metamoji/df/controller/ControllerContext;)V

    :cond_1b
    if-eqz v20, :cond_1c

    .line 684
    invoke-virtual/range {v20 .. v20}, Lcom/metamoji/df/controller/StageFrozenDisposer;->dispose()V

    :cond_1c
    return-void

    :catchall_8
    move-exception v0

    move-object/from16 v4, v23

    move/from16 v2, v27

    move-object v9, v8

    move-object v8, v12

    goto :goto_1d

    :catchall_9
    move-exception v0

    move-object/from16 v4, v23

    move/from16 v2, v27

    goto :goto_15

    :catchall_a
    move-exception v0

    move v2, v11

    move-object/from16 v4, v23

    :goto_15
    move-object v8, v12

    goto :goto_18

    :catchall_b
    move-exception v0

    move v2, v11

    move-object/from16 v4, v23

    goto :goto_17

    :catchall_c
    move-exception v0

    move-object/from16 v4, v23

    goto :goto_16

    :catchall_d
    move-exception v0

    move-object v4, v11

    move-object/from16 v20, v12

    :goto_16
    const/4 v3, 0x0

    move v2, v3

    :goto_17
    const/4 v8, 0x0

    :goto_18
    const/4 v9, 0x0

    :goto_19
    const/4 v11, 0x0

    goto :goto_1d

    :catchall_e
    move-exception v0

    move-object v4, v11

    const/4 v3, 0x0

    move v2, v3

    :goto_1a
    const/4 v8, 0x0

    const/4 v9, 0x0

    goto :goto_1c

    :catchall_f
    move-exception v0

    move-object v4, v11

    const/4 v3, 0x0

    move v2, v3

    goto :goto_1b

    :catchall_10
    move-exception v0

    const/4 v3, 0x0

    move v2, v3

    const/4 v4, 0x0

    :goto_1b
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_1c
    const/4 v11, 0x0

    const/16 v20, 0x0

    :goto_1d
    if-eqz v8, :cond_1d

    .line 670
    iget-object v3, v1, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->_pdf:Landroid/graphics/pdf/PdfDocument;

    invoke-virtual {v3, v8}, Landroid/graphics/pdf/PdfDocument;->finishPage(Landroid/graphics/pdf/PdfDocument$Page;)V

    :cond_1d
    if-eqz v10, :cond_20

    .line 673
    invoke-virtual {v10}, Lcom/metamoji/nt/NtPageController;->getPaperSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v3

    if-eqz v9, :cond_1e

    .line 675
    invoke-virtual {v3, v9}, Lcom/metamoji/df/sprite/Sprite;->removeChild(Lcom/metamoji/df/sprite/Sprite;)V

    :cond_1e
    if-eqz v11, :cond_1f

    .line 678
    invoke-virtual {v3, v11}, Lcom/metamoji/df/sprite/Sprite;->removeChild(Lcom/metamoji/df/sprite/Sprite;)V

    .line 680
    :cond_1f
    invoke-virtual {v3, v2}, Lcom/metamoji/df/sprite/Sprite;->setClipping(Z)V

    .line 681
    invoke-virtual {v10, v4}, Lcom/metamoji/nt/NtPageController;->turnInTemporary(Lcom/metamoji/df/controller/ControllerContext;)V

    :cond_20
    if-eqz v20, :cond_21

    .line 684
    invoke-virtual/range {v20 .. v20}, Lcom/metamoji/df/controller/StageFrozenDisposer;->dispose()V

    .line 686
    :cond_21
    throw v0
.end method

.method startPage(ILcom/metamoji/nt/NtPageController;)Landroid/graphics/pdf/PdfDocument$Page;
    .locals 2

    .line 690
    iget-object v0, p0, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->_pdf:Landroid/graphics/pdf/PdfDocument;

    instance-of v1, v0, Landroid/print/pdf/PrintedPdfDocument;

    if-eqz v1, :cond_0

    .line 692
    check-cast v0, Landroid/print/pdf/PrintedPdfDocument;

    invoke-virtual {v0, p1}, Landroid/print/pdf/PrintedPdfDocument;->startPage(I)Landroid/graphics/pdf/PdfDocument$Page;

    move-result-object p1

    return-object p1

    .line 695
    :cond_0
    new-instance v0, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;

    .line 696
    invoke-virtual {p2}, Lcom/metamoji/nt/NtPageController;->getPrintWidth()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Lcom/metamoji/nt/NtPageController;->getPrintHeight()F

    move-result p2

    float-to-int p2, p2

    invoke-direct {v0, v1, p2, p1}, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;-><init>(III)V

    .line 697
    iget-object p1, p0, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->_pdf:Landroid/graphics/pdf/PdfDocument;

    invoke-virtual {v0}, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->create()Landroid/graphics/pdf/PdfDocument$PageInfo;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/pdf/PdfDocument;->startPage(Landroid/graphics/pdf/PdfDocument$PageInfo;)Landroid/graphics/pdf/PdfDocument$Page;

    move-result-object p1

    return-object p1
.end method

.method startWrite(Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
    .locals 0

    .line 380
    iget-object p1, p0, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->_doc:Lcom/metamoji/nt/NtDocument;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtDocument;->getAttachmentManager()Lcom/metamoji/df/controller/AttachmentsManager;

    move-result-object p1

    .line 381
    invoke-virtual {p1}, Lcom/metamoji/df/controller/AttachmentsManager;->lockBitmaps()V

    return-void
.end method

.method write(Lcom/metamoji/nt/NtPDFExportTargetContext;Ljava/io/OutputStream;)V
    .locals 9

    .line 385
    iget-object v0, p1, Lcom/metamoji/nt/NtPDFExportTargetContext;->userName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->_formatter:Lcom/metamoji/nt/NtPrintFormatter;

    iget-object v1, p1, Lcom/metamoji/nt/NtPDFExportTargetContext;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtPrintFormatter;->setUserName(Ljava/lang/String;)V

    .line 388
    :cond_0
    iget-object v0, p1, Lcom/metamoji/nt/NtPDFExportTargetContext;->pages:[I

    invoke-direct {p0, v0}, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->convertPageRange([I)[Landroid/print/PageRange;

    move-result-object v2

    iget-boolean v3, p1, Lcom/metamoji/nt/NtPDFExportTargetContext;->isPrivate:Z

    iget-boolean v4, p1, Lcom/metamoji/nt/NtPDFExportTargetContext;->doWrite:Z

    iget-object v5, p1, Lcom/metamoji/nt/NtPDFExportTargetContext;->outputTargetSchoolLayerInfo:Ljava/util/Map;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v6, p2

    invoke-virtual/range {v1 .. v8}, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->write([Landroid/print/PageRange;ZZLjava/util/Map;Ljava/io/OutputStream;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V

    return-void
.end method

.method write([IZLjava/io/OutputStream;)V
    .locals 6

    .line 305
    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->convertPageRange([I)[Landroid/print/PageRange;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->write([Landroid/print/PageRange;ZLjava/io/OutputStream;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V

    return-void
.end method

.method write([Landroid/print/PageRange;ZLjava/io/OutputStream;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
    .locals 10

    .line 310
    iget-object v0, p0, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->_pdf:Landroid/graphics/pdf/PdfDocument;

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->_doc:Lcom/metamoji/nt/NtDocument;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getAttachmentManager()Lcom/metamoji/df/controller/AttachmentsManager;

    move-result-object v0

    .line 316
    invoke-virtual {v0}, Lcom/metamoji/df/controller/AttachmentsManager;->lockBitmaps()V

    .line 321
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    .line 322
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isPersonalMode()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isFeaturedPersonalMode()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 325
    :cond_1
    iget-object v2, p0, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->_formatter:Lcom/metamoji/nt/NtPrintFormatter;

    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->getUserName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/metamoji/nt/NtPrintFormatter;->setUserName(Ljava/lang/String;)V

    goto :goto_1

    .line 323
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->_formatter:Lcom/metamoji/nt/NtPrintFormatter;

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->personalNameForPersonalModeInfoView()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/metamoji/nt/NtPrintFormatter;->setUserName(Ljava/lang/String;)V

    .line 328
    :goto_1
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    .line 330
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->getUserId()Ljava/lang/String;

    move-result-object v2

    .line 331
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isPersonalMode()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isFeaturedPersonalMode()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    move-object v2, v3

    .line 335
    :cond_4
    invoke-static {v2}, Lcom/metamoji/forSchool/ScSchoolUtils;->outputTargetSchoolLayerInfo(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    goto :goto_2

    .line 336
    :cond_5
    iget-object v1, p0, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->_doc:Lcom/metamoji/nt/NtDocument;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 337
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->outputTargetSchoolLayerInfo()Ljava/util/Map;

    move-result-object v1

    goto :goto_2

    :cond_6
    move-object v1, v3

    .line 341
    :goto_2
    :try_start_0
    array-length v2, p1

    const/4 v4, 0x0

    move v5, v4

    :goto_3
    if-ge v5, v2, :cond_b

    aget-object v6, p1, v5

    .line 342
    invoke-virtual {v6}, Landroid/print/PageRange;->getStart()I

    move-result v7

    .line 343
    invoke-virtual {v6}, Landroid/print/PageRange;->getEnd()I

    move-result v8

    .line 344
    sget-object v9, Landroid/print/PageRange;->ALL_PAGES:Landroid/print/PageRange;

    invoke-virtual {v6, v9}, Landroid/print/PageRange;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 346
    iget v6, p0, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->_pageCount:I

    add-int/lit8 v8, v6, -0x1

    move v7, v4

    :cond_7
    :goto_4
    if-gt v7, v8, :cond_a

    if-eqz p4, :cond_9

    .line 349
    invoke-virtual {p4}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v6

    if-eqz v6, :cond_9

    if-eqz p5, :cond_8

    .line 351
    invoke-virtual {p5}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteCancelled()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    :cond_8
    :goto_5
    iget-object p1, p0, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->_pdf:Landroid/graphics/pdf/PdfDocument;

    invoke-virtual {p1}, Landroid/graphics/pdf/PdfDocument;->close()V

    .line 368
    iput-object v3, p0, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->_pdf:Landroid/graphics/pdf/PdfDocument;

    .line 370
    invoke-virtual {v0}, Lcom/metamoji/df/controller/AttachmentsManager;->unlockBitmaps()V

    return-void

    .line 356
    :cond_9
    :try_start_1
    invoke-virtual {p0, v7, p2, v1}, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->printPage(IZLjava/util/Map;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 360
    :cond_b
    iget-object p2, p0, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->_pdf:Landroid/graphics/pdf/PdfDocument;

    invoke-virtual {p2, p3}, Landroid/graphics/pdf/PdfDocument;->writeTo(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 367
    iget-object p2, p0, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->_pdf:Landroid/graphics/pdf/PdfDocument;

    invoke-virtual {p2}, Landroid/graphics/pdf/PdfDocument;->close()V

    .line 368
    iput-object v3, p0, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->_pdf:Landroid/graphics/pdf/PdfDocument;

    .line 370
    invoke-virtual {v0}, Lcom/metamoji/df/controller/AttachmentsManager;->unlockBitmaps()V

    if-eqz p5, :cond_c

    .line 374
    invoke-virtual {p5, p1}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFinished([Landroid/print/PageRange;)V

    :cond_c
    :goto_6
    return-void

    :catchall_0
    move-exception p1

    goto :goto_7

    :catch_0
    move-exception p1

    if-eqz p5, :cond_8

    .line 363
    :try_start_2
    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFailed(Ljava/lang/CharSequence;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    .line 367
    :goto_7
    iget-object p2, p0, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->_pdf:Landroid/graphics/pdf/PdfDocument;

    invoke-virtual {p2}, Landroid/graphics/pdf/PdfDocument;->close()V

    .line 368
    iput-object v3, p0, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->_pdf:Landroid/graphics/pdf/PdfDocument;

    .line 370
    invoke-virtual {v0}, Lcom/metamoji/df/controller/AttachmentsManager;->unlockBitmaps()V

    .line 371
    throw p1
.end method

.method write([Landroid/print/PageRange;ZZLjava/util/Map;Ljava/io/OutputStream;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/print/PageRange;",
            "ZZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/io/OutputStream;",
            "Landroid/os/CancellationSignal;",
            "Landroid/print/PrintDocumentAdapter$WriteResultCallback;",
            ")V"
        }
    .end annotation

    .line 393
    iget-object v0, p0, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->_pdf:Landroid/graphics/pdf/PdfDocument;

    if-nez v0, :cond_0

    goto :goto_2

    .line 398
    :cond_0
    :try_start_0
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_4

    aget-object v3, p1, v2

    .line 399
    invoke-virtual {v3}, Landroid/print/PageRange;->getStart()I

    move-result v4

    .line 400
    invoke-virtual {v3}, Landroid/print/PageRange;->getEnd()I

    move-result v5

    .line 401
    sget-object v6, Landroid/print/PageRange;->ALL_PAGES:Landroid/print/PageRange;

    invoke-virtual {v3, v6}, Landroid/print/PageRange;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 403
    iget v3, p0, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->_pageCount:I

    add-int/lit8 v5, v3, -0x1

    move v4, v1

    :cond_1
    :goto_1
    if-gt v4, v5, :cond_3

    if-eqz p6, :cond_2

    .line 406
    invoke-virtual {p6}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz p7, :cond_5

    .line 408
    invoke-virtual {p7}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteCancelled()V

    return-void

    .line 413
    :cond_2
    invoke-virtual {p0, v4, p2, p4}, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->printPage(IZLjava/util/Map;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    if-eqz p3, :cond_5

    .line 418
    iget-object p1, p0, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->_pdf:Landroid/graphics/pdf/PdfDocument;

    invoke-virtual {p1, p5}, Landroid/graphics/pdf/PdfDocument;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    if-eqz p7, :cond_5

    .line 422
    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p7, p1}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFailed(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_2
    return-void
.end method
