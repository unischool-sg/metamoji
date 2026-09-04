.class public final Lcom/metamoji/nt/NtPrintPDF_19;
.super Ljava/lang/Object;
.source "NtPrintPDF_19.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;,
        Lcom/metamoji/nt/NtPrintPDF_19$PdfPrintAdapter;
    }
.end annotation


# static fields
.field private static final HEADER_FOOTER_HEIGHT:F = 36.0f


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static export2(Lcom/metamoji/nt/NtDocument;Ljava/io/File;Lcom/metamoji/nt/NtPDFExportRangeTargetPages;Ljava/lang/String;)Ljava/io/File;
    .locals 7

    .line 60
    const-string v0, ".pdf"

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->getDocumentTitleForFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 61
    :goto_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 63
    :try_start_0
    new-instance p3, Lcom/metamoji/cm/TempFileRef;

    const-string v1, "_pdf"

    invoke-direct {p3, v1, v0}, Lcom/metamoji/cm/TempFileRef;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :try_start_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 66
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {p3}, Lcom/metamoji/cm/TempFileRef;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 67
    :try_start_2
    new-instance v0, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;

    invoke-direct {v0, p0, v5}, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;-><init>(Lcom/metamoji/nt/NtDocument;Ljava/util/List;)V

    .line 68
    invoke-virtual {v0, p1}, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->startWrite(Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V

    .line 70
    new-instance v2, Lcom/metamoji/nt/NtPrintPDF_19$1;

    invoke-direct {v2, v0, v1}, Lcom/metamoji/nt/NtPrintPDF_19$1;-><init>(Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;Ljava/io/OutputStream;)V

    invoke-virtual {p2, p0, v2}, Lcom/metamoji/nt/NtPDFExportRangeTargetPages;->exportEachPageInDocument(Lcom/metamoji/nt/NtDocument;Lcom/metamoji/nt/NtPDFExportRangeTargetPages$INtPDFExportPageProc;)V

    .line 77
    invoke-virtual {p2}, Lcom/metamoji/nt/NtPDFExportRangeTargetPages;->getPages()[I

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->finishWrite([ILandroid/print/PrintDocumentAdapter$WriteResultCallback;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 78
    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 80
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 84
    invoke-virtual {p3}, Lcom/metamoji/cm/TempFileRef;->getFile()Ljava/io/File;

    move-result-object p0

    invoke-static {p0, v4}, Lcom/metamoji/cm/CmUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    goto :goto_1

    .line 86
    :cond_1
    new-instance v1, Lcom/metamoji/nt/pdfsave/PdfSave;

    invoke-virtual {p3}, Lcom/metamoji/cm/TempFileRef;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->getAttachmentManager()Lcom/metamoji/df/controller/AttachmentsManager;

    move-result-object v6

    const/4 v3, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/nt/pdfsave/PdfSave;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/io/File;Ljava/util/List;Lcom/metamoji/df/controller/AttachmentsManager;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 88
    :try_start_4
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->getDocumentTitle()Ljava/lang/String;

    move-result-object p0

    .line 89
    invoke-virtual {v1, p0}, Lcom/metamoji/nt/pdfsave/PdfSave;->save(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 90
    :try_start_5
    invoke-virtual {v1}, Lcom/metamoji/nt/pdfsave/PdfSave;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 92
    :goto_1
    :try_start_6
    invoke-virtual {p3}, Lcom/metamoji/cm/TempFileRef;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    return-object v4

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 86
    :try_start_7
    invoke-virtual {v1}, Lcom/metamoji/nt/pdfsave/PdfSave;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object p2, v0

    :try_start_8
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_2
    move-exception v0

    move-object p0, v0

    .line 66
    :try_start_9
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object p2, v0

    :try_start_a
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception v0

    move-object p0, v0

    .line 63
    :try_start_b
    invoke-virtual {p3}, Lcom/metamoji/cm/TempFileRef;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception v0

    move-object p2, v0

    :try_start_c
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0

    :catch_0
    return-object p1
.end method

.method public static export2(Lcom/metamoji/nt/NtDocument;Ljava/io/File;[ILjava/lang/String;)Ljava/io/File;
    .locals 9

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 101
    const-string v2, ".pdf"

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->getDocumentTitleForFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 102
    :goto_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 104
    :try_start_0
    new-instance p1, Lcom/metamoji/cm/TempFileRef;

    const-string p3, "_pdf"

    invoke-direct {p1, p3, v2}, Lcom/metamoji/cm/TempFileRef;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :try_start_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 107
    new-instance p3, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Lcom/metamoji/cm/TempFileRef;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p3, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 108
    :try_start_2
    new-instance v2, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;

    invoke-direct {v2, p0, v7}, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;-><init>(Lcom/metamoji/nt/NtDocument;Ljava/util/List;)V

    const/4 v3, 0x0

    .line 109
    invoke-virtual {v2, p2, v3, p3}, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;->write([IZLjava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 110
    :try_start_3
    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V

    .line 112
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 116
    invoke-virtual {p1}, Lcom/metamoji/cm/TempFileRef;->getFile()Ljava/io/File;

    move-result-object p0

    invoke-static {p0, v6}, Lcom/metamoji/cm/CmUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    goto :goto_1

    .line 118
    :cond_1
    new-instance v3, Lcom/metamoji/nt/pdfsave/PdfSave;

    invoke-virtual {p1}, Lcom/metamoji/cm/TempFileRef;->getFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->getAttachmentManager()Lcom/metamoji/df/controller/AttachmentsManager;

    move-result-object v8

    const/4 v5, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/metamoji/nt/pdfsave/PdfSave;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/io/File;Ljava/util/List;Lcom/metamoji/df/controller/AttachmentsManager;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 120
    :try_start_4
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->getDocumentTitle()Ljava/lang/String;

    move-result-object p0

    .line 121
    invoke-virtual {v3, p0}, Lcom/metamoji/nt/pdfsave/PdfSave;->save(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 122
    :try_start_5
    invoke-virtual {v3}, Lcom/metamoji/nt/pdfsave/PdfSave;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 124
    :goto_1
    :try_start_6
    invoke-virtual {p1}, Lcom/metamoji/cm/TempFileRef;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sub-long/2addr p0, v0

    .line 142
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo p1, "save PDF : %dmsec"

    invoke-static {p1, p0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v6

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 118
    :try_start_7
    invoke-virtual {v3}, Lcom/metamoji/nt/pdfsave/PdfSave;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object p2, v0

    :try_start_8
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_2
    move-exception v0

    move-object p0, v0

    .line 107
    :try_start_9
    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object p2, v0

    :try_start_a
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception v0

    move-object p0, v0

    .line 104
    :try_start_b
    invoke-virtual {p1}, Lcom/metamoji/cm/TempFileRef;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception v0

    move-object p1, v0

    :try_start_c
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 125
    const-string/jumbo p1, "save pdf failed"

    invoke-static {p0, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static print(Landroid/content/Context;Lcom/metamoji/nt/NtDocument;)V
    .locals 7

    .line 148
    new-instance v0, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;

    invoke-direct {v0, p1, p0}, Lcom/metamoji/nt/NtPrintPDF_19$AtdocPrintAdapter;-><init>(Lcom/metamoji/nt/NtDocument;Landroid/content/Context;)V

    .line 151
    invoke-virtual {p1}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtNoteController;->getPage(I)Lcom/metamoji/nt/NtPageController;

    move-result-object v1

    .line 152
    new-instance v2, Landroid/print/PrintAttributes$Builder;

    invoke-direct {v2}, Landroid/print/PrintAttributes$Builder;-><init>()V

    .line 153
    new-instance v3, Landroid/print/PrintAttributes$MediaSize;

    .line 154
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getPrintWidth()F

    move-result v4

    const/high16 v5, 0x447a0000    # 1000.0f

    mul-float/2addr v4, v5

    const/high16 v6, 0x42900000    # 72.0f

    div-float/2addr v4, v6

    float-to-int v4, v4

    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getPrintHeight()F

    move-result v1

    mul-float/2addr v1, v5

    div-float/2addr v1, v6

    float-to-int v1, v1

    const-string v5, "custom"

    const-string v6, "*\u30ab\u30b9\u30bf\u30e0"

    invoke-direct {v3, v5, v6, v4, v1}, Landroid/print/PrintAttributes$MediaSize;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 153
    invoke-virtual {v2, v3}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    .line 155
    invoke-virtual {v2}, Landroid/print/PrintAttributes$Builder;->build()Landroid/print/PrintAttributes;

    move-result-object v1

    .line 157
    const-string v2, "print"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/print/PrintManager;

    .line 158
    invoke-virtual {p1}, Lcom/metamoji/nt/NtDocument;->getDocumentTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0, v1}, Landroid/print/PrintManager;->print(Ljava/lang/String;Landroid/print/PrintDocumentAdapter;Landroid/print/PrintAttributes;)Landroid/print/PrintJob;

    return-void
.end method

.method public static print(Landroid/content/Context;Ljava/io/File;)V
    .locals 7

    .line 162
    instance-of v0, p0, Lcom/metamoji/noteanytime/EditorActivity;

    if-nez v0, :cond_0

    return-void

    .line 165
    :cond_0
    move-object v0, p0

    check-cast v0, Lcom/metamoji/noteanytime/EditorActivity;

    .line 166
    new-instance v1, Lcom/metamoji/nt/NtPrintPDF_19$PdfPrintAdapter;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/nt/NtPrintPDF_19$PdfPrintAdapter;-><init>(Landroid/content/Context;Ljava/io/File;)V

    .line 168
    invoke-virtual {v0}, Lcom/metamoji/noteanytime/EditorActivity;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object p1

    .line 169
    invoke-virtual {p1}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/metamoji/nt/NtNoteController;->getPage(I)Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    .line 170
    new-instance v2, Landroid/print/PrintAttributes$Builder;

    invoke-direct {v2}, Landroid/print/PrintAttributes$Builder;-><init>()V

    .line 171
    new-instance v3, Landroid/print/PrintAttributes$MediaSize;

    .line 172
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getPrintWidth()F

    move-result v4

    const/high16 v5, 0x447a0000    # 1000.0f

    mul-float/2addr v4, v5

    const/high16 v6, 0x42900000    # 72.0f

    div-float/2addr v4, v6

    float-to-int v4, v4

    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getPrintHeight()F

    move-result v0

    mul-float/2addr v0, v5

    div-float/2addr v0, v6

    float-to-int v0, v0

    const-string v5, "custom"

    const-string v6, "*\u30ab\u30b9\u30bf\u30e0"

    invoke-direct {v3, v5, v6, v4, v0}, Landroid/print/PrintAttributes$MediaSize;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 171
    invoke-virtual {v2, v3}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    .line 173
    invoke-virtual {v2}, Landroid/print/PrintAttributes$Builder;->build()Landroid/print/PrintAttributes;

    move-result-object v0

    .line 175
    const-string v2, "print"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/print/PrintManager;

    .line 176
    invoke-virtual {p1}, Lcom/metamoji/nt/NtDocument;->getDocumentTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1, v0}, Landroid/print/PrintManager;->print(Ljava/lang/String;Landroid/print/PrintDocumentAdapter;Landroid/print/PrintAttributes;)Landroid/print/PrintJob;

    return-void
.end method
