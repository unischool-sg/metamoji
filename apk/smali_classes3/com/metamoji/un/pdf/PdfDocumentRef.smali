.class public final Lcom/metamoji/un/pdf/PdfDocumentRef;
.super Ljava/lang/Object;
.source "PdfDocumentRef.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0010\u001a\u00020\u000f8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/metamoji/un/pdf/PdfDocumentRef;",
        "Ljava/io/Closeable;",
        "data",
        "",
        "password",
        "",
        "ticket",
        "<init>",
        "([BLjava/lang/String;Ljava/lang/String;)V",
        "_reader",
        "Lcom/metamoji/df/sprite/pdf/PDFReader;",
        "_fileRef",
        "Lcom/metamoji/cm/SharedReference;",
        "Lcom/metamoji/cm/TempFileRef;",
        "_doc",
        "Lcom/metamoji/df/sprite/pdf/PDFDocument;",
        "document",
        "getDocument",
        "()Lcom/metamoji/df/sprite/pdf/PDFDocument;",
        "close",
        "",
        "app"
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
.field private _doc:Lcom/metamoji/df/sprite/pdf/PDFDocument;

.field private _fileRef:Lcom/metamoji/cm/SharedReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/cm/SharedReference<",
            "Lcom/metamoji/cm/TempFileRef;",
            ">;"
        }
    .end annotation
.end field

.field private _reader:Lcom/metamoji/df/sprite/pdf/PDFReader;


# direct methods
.method public constructor <init>([BLjava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/metamoji/df/sprite/pdf/PDFReader;

    invoke-direct {v0}, Lcom/metamoji/df/sprite/pdf/PDFReader;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/pdf/PdfDocumentRef;->_reader:Lcom/metamoji/df/sprite/pdf/PDFReader;

    .line 20
    new-instance v0, Lcom/metamoji/cm/SharedReference;

    new-instance v1, Lcom/metamoji/cm/TempFileRef;

    const-string v2, "_pdf"

    const-string v3, ".pdf"

    invoke-direct {v1, v2, v3}, Lcom/metamoji/cm/TempFileRef;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/AutoCloseable;

    invoke-direct {v0, v1}, Lcom/metamoji/cm/SharedReference;-><init>(Ljava/lang/AutoCloseable;)V

    check-cast v0, Ljava/io/Closeable;

    :try_start_0
    move-object v1, v0

    check-cast v1, Lcom/metamoji/cm/SharedReference;

    .line 21
    invoke-virtual {v1}, Lcom/metamoji/cm/SharedReference;->get()Ljava/lang/AutoCloseable;

    move-result-object v2

    check-cast v2, Lcom/metamoji/cm/TempFileRef;

    invoke-virtual {v2}, Lcom/metamoji/cm/TempFileRef;->getFile()Ljava/io/File;

    move-result-object v2

    .line 23
    invoke-static {v2, p1}, Lcom/metamoji/cm/CmUtils;->saveBufferToFile(Ljava/io/File;[B)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "load pdf failed"

    if-eqz p1, :cond_1

    .line 27
    :try_start_1
    iget-object p1, p0, Lcom/metamoji/un/pdf/PdfDocumentRef;->_reader:Lcom/metamoji/df/sprite/pdf/PDFReader;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v2, p2, p3}, Lcom/metamoji/df/sprite/pdf/PDFReader;->createDocument(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/df/sprite/pdf/PDFDocument;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 32
    iput-object p1, p0, Lcom/metamoji/un/pdf/PdfDocumentRef;->_doc:Lcom/metamoji/df/sprite/pdf/PDFDocument;

    .line 33
    invoke-virtual {v1}, Lcom/metamoji/cm/SharedReference;->newRef()Lcom/metamoji/cm/SharedReference;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/un/pdf/PdfDocumentRef;->_fileRef:Lcom/metamoji/cm/SharedReference;

    .line 34
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 20
    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    .line 29
    :cond_0
    :try_start_2
    invoke-virtual {p0}, Lcom/metamoji/un/pdf/PdfDocumentRef;->close()V

    .line 30
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    .line 20
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p2

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public synthetic constructor <init>([BLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    .line 14
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/un/pdf/PdfDocumentRef;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/metamoji/un/pdf/PdfDocumentRef;->_reader:Lcom/metamoji/df/sprite/pdf/PDFReader;

    if-nez v0, :cond_0

    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/pdf/PdfDocumentRef;->_doc:Lcom/metamoji/df/sprite/pdf/PDFDocument;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/pdf/PDFDocument;->close()V

    :cond_1
    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/metamoji/un/pdf/PdfDocumentRef;->_doc:Lcom/metamoji/df/sprite/pdf/PDFDocument;

    .line 43
    iget-object v1, p0, Lcom/metamoji/un/pdf/PdfDocumentRef;->_reader:Lcom/metamoji/df/sprite/pdf/PDFReader;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/metamoji/df/sprite/pdf/PDFReader;->release()V

    .line 44
    :cond_2
    iput-object v0, p0, Lcom/metamoji/un/pdf/PdfDocumentRef;->_reader:Lcom/metamoji/df/sprite/pdf/PDFReader;

    .line 45
    iget-object v1, p0, Lcom/metamoji/un/pdf/PdfDocumentRef;->_fileRef:Lcom/metamoji/cm/SharedReference;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/metamoji/cm/SharedReference;->close()V

    .line 46
    :cond_3
    iput-object v0, p0, Lcom/metamoji/un/pdf/PdfDocumentRef;->_fileRef:Lcom/metamoji/cm/SharedReference;

    return-void
.end method

.method public final getDocument()Lcom/metamoji/df/sprite/pdf/PDFDocument;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/metamoji/un/pdf/PdfDocumentRef;->_doc:Lcom/metamoji/df/sprite/pdf/PDFDocument;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
