.class public final Lcom/metamoji/un/pdf/text/PDFPageRef;
.super Ljava/lang/Object;
.source "UnPDFAttachmentsManager.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016R\u0016\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u000c\u001a\u00020\u000b8F\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/metamoji/un/pdf/text/PDFPageRef;",
        "Ljava/io/Closeable;",
        "doc",
        "Lcom/metamoji/cm/SharedReference;",
        "Lcom/metamoji/un/pdf/PdfDocumentRef;",
        "pageIndex",
        "",
        "<init>",
        "(Lcom/metamoji/cm/SharedReference;I)V",
        "_doc",
        "_page",
        "Lcom/metamoji/pdf/PDFPage;",
        "page",
        "getPage",
        "()Lcom/metamoji/pdf/PDFPage;",
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
.field private _doc:Lcom/metamoji/cm/SharedReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/cm/SharedReference<",
            "Lcom/metamoji/un/pdf/PdfDocumentRef;",
            ">;"
        }
    .end annotation
.end field

.field private _page:Lcom/metamoji/pdf/PDFPage;


# direct methods
.method public constructor <init>(Lcom/metamoji/cm/SharedReference;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/cm/SharedReference<",
            "Lcom/metamoji/un/pdf/PdfDocumentRef;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "doc"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-virtual {p1}, Lcom/metamoji/cm/SharedReference;->newRef()Lcom/metamoji/cm/SharedReference;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/pdf/text/PDFPageRef;->_doc:Lcom/metamoji/cm/SharedReference;

    .line 17
    invoke-virtual {p1}, Lcom/metamoji/cm/SharedReference;->get()Ljava/lang/AutoCloseable;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/pdf/PdfDocumentRef;

    invoke-virtual {p1}, Lcom/metamoji/un/pdf/PdfDocumentRef;->getDocument()Lcom/metamoji/df/sprite/pdf/PDFDocument;

    move-result-object p1

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Lcom/metamoji/df/sprite/pdf/PDFDocument;->getPageForTextSearch(I)Lcom/metamoji/pdf/PDFPage;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/un/pdf/text/PDFPageRef;->_page:Lcom/metamoji/pdf/PDFPage;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/metamoji/un/pdf/text/PDFPageRef;->_doc:Lcom/metamoji/cm/SharedReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/cm/SharedReference;->close()V

    :cond_0
    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/metamoji/un/pdf/text/PDFPageRef;->_doc:Lcom/metamoji/cm/SharedReference;

    .line 24
    iput-object v0, p0, Lcom/metamoji/un/pdf/text/PDFPageRef;->_page:Lcom/metamoji/pdf/PDFPage;

    return-void
.end method

.method public final getPage()Lcom/metamoji/pdf/PDFPage;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/metamoji/un/pdf/text/PDFPageRef;->_page:Lcom/metamoji/pdf/PDFPage;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
