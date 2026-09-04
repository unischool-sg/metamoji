.class public final Lcom/metamoji/nt/pdfsave/PdfPdf;
.super Ljava/lang/Object;
.source "PdfSavePdf.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPdfSavePdf.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PdfSavePdf.kt\ncom/metamoji/nt/pdfsave/PdfPdf\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,660:1\n1#2:661\n1068#3:662\n*S KotlinDebug\n*F\n+ 1 PdfSavePdf.kt\ncom/metamoji/nt/pdfsave/PdfPdf\n*L\n62#1:662\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000e\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u000eJ\u0018\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u0018\u001a\u00020\u00142\u0006\u0010\u0019\u001a\u00020\u000eH\u0002J\u000e\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u000f\u001a\u00020\u000e8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R&\u0010\u0012\u001a\u001a\u0012\u0004\u0012\u00020\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000e0\u00130\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/metamoji/nt/pdfsave/PdfPdf;",
        "",
        "_xref",
        "Lcom/metamoji/nt/pdfsave/PdfXref;",
        "_encrypt",
        "Lcom/metamoji/nt/pdfsave/PdfEncrypt;",
        "_info",
        "",
        "Lcom/metamoji/df/sprite/pdf/PDFOutputInfo;",
        "_attachments",
        "Lcom/metamoji/df/controller/AttachmentsManager;",
        "<init>",
        "(Lcom/metamoji/nt/pdfsave/PdfXref;Lcom/metamoji/nt/pdfsave/PdfEncrypt;Ljava/util/List;Lcom/metamoji/df/controller/AttachmentsManager;)V",
        "_maxVer",
        "",
        "maxVer",
        "getMaxVer",
        "()I",
        "_refmap",
        "",
        "",
        "register",
        "tag",
        "_register",
        "ticket",
        "pageIndex",
        "save",
        "",
        "writer",
        "Lcom/metamoji/nt/pdfsave/PdfWriter;",
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
.field private final _attachments:Lcom/metamoji/df/controller/AttachmentsManager;

.field private final _encrypt:Lcom/metamoji/nt/pdfsave/PdfEncrypt;

.field private final _info:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/df/sprite/pdf/PDFOutputInfo;",
            ">;"
        }
    .end annotation
.end field

.field private _maxVer:I

.field private final _refmap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final _xref:Lcom/metamoji/nt/pdfsave/PdfXref;


# direct methods
.method public constructor <init>(Lcom/metamoji/nt/pdfsave/PdfXref;Lcom/metamoji/nt/pdfsave/PdfEncrypt;Ljava/util/List;Lcom/metamoji/df/controller/AttachmentsManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/nt/pdfsave/PdfXref;",
            "Lcom/metamoji/nt/pdfsave/PdfEncrypt;",
            "Ljava/util/List<",
            "Lcom/metamoji/df/sprite/pdf/PDFOutputInfo;",
            ">;",
            "Lcom/metamoji/df/controller/AttachmentsManager;",
            ")V"
        }
    .end annotation

    const-string v0, "_xref"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_info"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_attachments"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/metamoji/nt/pdfsave/PdfPdf;->_xref:Lcom/metamoji/nt/pdfsave/PdfXref;

    .line 28
    iput-object p2, p0, Lcom/metamoji/nt/pdfsave/PdfPdf;->_encrypt:Lcom/metamoji/nt/pdfsave/PdfEncrypt;

    .line 29
    iput-object p3, p0, Lcom/metamoji/nt/pdfsave/PdfPdf;->_info:Ljava/util/List;

    .line 30
    iput-object p4, p0, Lcom/metamoji/nt/pdfsave/PdfPdf;->_attachments:Lcom/metamoji/df/controller/AttachmentsManager;

    const/4 p1, 0x4

    .line 32
    iput p1, p0, Lcom/metamoji/nt/pdfsave/PdfPdf;->_maxVer:I

    .line 38
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/metamoji/nt/pdfsave/PdfPdf;->_refmap:Ljava/util/Map;

    return-void
.end method

.method private final _register(Ljava/lang/String;I)I
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/metamoji/nt/pdfsave/PdfPdf;->_refmap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lcom/metamoji/nt/pdfsave/PdfPdf;->_refmap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_1
    iget-object p1, p0, Lcom/metamoji/nt/pdfsave/PdfPdf;->_xref:Lcom/metamoji/nt/pdfsave/PdfXref;

    invoke-virtual {p1}, Lcom/metamoji/nt/pdfsave/PdfXref;->addObject()I

    move-result p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return p1
.end method


# virtual methods
.method public final getMaxVer()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/metamoji/nt/pdfsave/PdfPdf;->_maxVer:I

    return v0
.end method

.method public final register(I)I
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/metamoji/nt/pdfsave/PdfPdf;->_info:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/df/sprite/pdf/PDFOutputInfo;

    .line 42
    invoke-virtual {p1}, Lcom/metamoji/df/sprite/pdf/PDFOutputInfo;->getTicket()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/metamoji/df/sprite/pdf/PDFOutputInfo;->getPageIndex()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/metamoji/nt/pdfsave/PdfPdf;->_register(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public final save(Lcom/metamoji/nt/pdfsave/PdfWriter;)V
    .locals 17

    move-object/from16 v1, p0

    const-string/jumbo v0, "writer"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 54
    iget-object v0, v1, Lcom/metamoji/nt/pdfsave/PdfPdf;->_refmap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 55
    iget-object v7, v1, Lcom/metamoji/nt/pdfsave/PdfPdf;->_attachments:Lcom/metamoji/df/controller/AttachmentsManager;

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static {v7, v6, v9, v8, v9}, Lcom/metamoji/un/pdf/text/UnPDFAttachmentsManagerKt;->getPdfDocument$default(Lcom/metamoji/df/controller/AttachmentsManager;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/metamoji/cm/SharedReference;

    move-result-object v6

    check-cast v6, Ljava/io/Closeable;

    :try_start_0
    move-object v7, v6

    check-cast v7, Lcom/metamoji/cm/SharedReference;

    if-eqz v7, :cond_0

    .line 57
    invoke-virtual {v7}, Lcom/metamoji/cm/SharedReference;->get()Ljava/lang/AutoCloseable;

    move-result-object v7

    check-cast v7, Lcom/metamoji/un/pdf/PdfDocumentRef;

    invoke-virtual {v7}, Lcom/metamoji/un/pdf/PdfDocumentRef;->getDocument()Lcom/metamoji/df/sprite/pdf/PDFDocument;

    move-result-object v7

    invoke-virtual {v7}, Lcom/metamoji/df/sprite/pdf/PDFDocument;->getDocForTextSearch()Lcom/metamoji/pdf/PDFDocument;

    move-result-object v7

    .line 58
    iget v8, v1, Lcom/metamoji/nt/pdfsave/PdfPdf;->_maxVer:I

    invoke-virtual {v7}, Lcom/metamoji/pdf/PDFDocument;->getVersion()I

    move-result v10

    invoke-static {v8, v10}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v8

    iput v8, v1, Lcom/metamoji/nt/pdfsave/PdfPdf;->_maxVer:I

    .line 59
    new-instance v10, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;

    iget-object v8, v1, Lcom/metamoji/nt/pdfsave/PdfPdf;->_xref:Lcom/metamoji/nt/pdfsave/PdfXref;

    invoke-virtual {v2}, Lcom/metamoji/nt/pdfsave/PdfWriter;->getStream()Ljava/io/OutputStream;

    move-result-object v11

    iget-object v12, v1, Lcom/metamoji/nt/pdfsave/PdfPdf;->_encrypt:Lcom/metamoji/nt/pdfsave/PdfEncrypt;

    invoke-direct {v10, v7, v8, v11, v12}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;-><init>(Lcom/metamoji/pdf/PDFDocument;Lcom/metamoji/nt/pdfsave/PdfXref;Ljava/io/OutputStream;Lcom/metamoji/nt/pdfsave/PdfEncrypt;)V

    .line 62
    invoke-static {v5}, Lkotlin/collections/MapsKt;->toList(Ljava/util/Map;)Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    .line 662
    new-instance v7, Lcom/metamoji/nt/pdfsave/PdfPdf$save$lambda$3$$inlined$sortedBy$1;

    invoke-direct {v7}, Lcom/metamoji/nt/pdfsave/PdfPdf$save$lambda$3$$inlined$sortedBy$1;-><init>()V

    check-cast v7, Ljava/util/Comparator;

    invoke-static {v5, v7}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v5

    .line 62
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkotlin/Pair;

    invoke-virtual {v7}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v12

    invoke-virtual {v7}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v11

    const/16 v15, 0xc

    const/16 v16, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 63
    invoke-static/range {v10 .. v16}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->savePage$default(Lcom/metamoji/nt/pdfsave/PdfPdfCopy;IIILcom/metamoji/nt/pdfsave/PdfPdf;ILjava/lang/Object;)V

    goto :goto_1

    .line 66
    :cond_0
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    invoke-static {v6, v9}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v0

    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v6, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 69
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "copy PDF in PDF : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "msec"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    return-void
.end method
