.class Lcom/metamoji/nt/NtPrintPDF_19$PdfPrintAdapter;
.super Landroid/print/PrintDocumentAdapter;
.source "NtPrintPDF_19.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/NtPrintPDF_19;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PdfPrintAdapter"
.end annotation


# instance fields
.field _context:Landroid/content/Context;

.field _file:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .locals 0

    .line 711
    invoke-direct {p0}, Landroid/print/PrintDocumentAdapter;-><init>()V

    .line 712
    iput-object p1, p0, Lcom/metamoji/nt/NtPrintPDF_19$PdfPrintAdapter;->_context:Landroid/content/Context;

    .line 713
    iput-object p2, p0, Lcom/metamoji/nt/NtPrintPDF_19$PdfPrintAdapter;->_file:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public onLayout(Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;Landroid/os/Bundle;)V
    .locals 0

    .line 719
    invoke-virtual {p3}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 720
    invoke-virtual {p4}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutCancelled()V

    return-void

    .line 724
    :cond_0
    iget-object p1, p0, Lcom/metamoji/nt/NtPrintPDF_19$PdfPrintAdapter;->_file:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    .line 725
    new-instance p2, Landroid/print/PrintDocumentInfo$Builder;

    invoke-direct {p2, p1}, Landroid/print/PrintDocumentInfo$Builder;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 726
    invoke-virtual {p2, p1}, Landroid/print/PrintDocumentInfo$Builder;->setContentType(I)Landroid/print/PrintDocumentInfo$Builder;

    .line 727
    invoke-virtual {p2}, Landroid/print/PrintDocumentInfo$Builder;->build()Landroid/print/PrintDocumentInfo;

    move-result-object p1

    const/4 p2, 0x1

    .line 729
    invoke-virtual {p4, p1, p2}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutFinished(Landroid/print/PrintDocumentInfo;Z)V

    return-void
.end method

.method public onWrite([Landroid/print/PageRange;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
    .locals 2

    const/4 p1, 0x0

    .line 739
    :try_start_0
    new-instance p3, Ljava/io/FileInputStream;

    iget-object v0, p0, Lcom/metamoji/nt/NtPrintPDF_19$PdfPrintAdapter;->_file:Ljava/io/File;

    invoke-direct {p3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 740
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 p1, 0x400

    .line 742
    :try_start_2
    new-array p1, p1, [B

    .line 745
    :goto_0
    invoke-virtual {p3, p1}, Ljava/io/InputStream;->read([B)I

    move-result p2

    const/4 v1, 0x0

    if-lez p2, :cond_0

    .line 746
    invoke-virtual {v0, p1, v1, p2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 749
    new-array p1, p1, [Landroid/print/PageRange;

    sget-object p2, Landroid/print/PageRange;->ALL_PAGES:Landroid/print/PageRange;

    aput-object p2, p1, v1

    invoke-virtual {p4, p1}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFinished([Landroid/print/PageRange;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 756
    :try_start_3
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V

    .line 757
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :catchall_1
    move-exception p2

    move-object v0, p1

    goto :goto_1

    :catch_0
    move-object v0, p1

    :catch_1
    move-object p1, p3

    goto :goto_4

    :catch_2
    move-object v0, p1

    :catch_3
    move-object p1, p3

    goto :goto_6

    :catchall_2
    move-exception p2

    move-object p3, p1

    move-object v0, p3

    :goto_1
    move-object p1, p2

    .line 756
    :goto_2
    :try_start_4
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V

    .line 757
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_3

    :catch_4
    move-exception p2

    .line 759
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 761
    :goto_3
    throw p1

    :catch_5
    move-object v0, p1

    .line 756
    :goto_4
    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 757
    :goto_5
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    goto :goto_7

    :catch_6
    move-object v0, p1

    .line 756
    :goto_6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    goto :goto_5

    :catch_7
    move-exception p1

    .line 759
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_7
    return-void
.end method
