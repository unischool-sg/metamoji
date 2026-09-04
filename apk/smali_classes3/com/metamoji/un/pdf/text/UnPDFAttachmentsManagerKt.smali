.class public final Lcom/metamoji/un/pdf/text/UnPDFAttachmentsManagerKt;
.super Ljava/lang/Object;
.source "UnPDFAttachmentsManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u001a&\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003*\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0001\u001a\"\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0003*\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00012\u0006\u0010\n\u001a\u00020\u000b\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "CACHE_TYPE_SPRITE_PDF",
        "",
        "getPdfDocument",
        "Lcom/metamoji/cm/SharedReference;",
        "Lcom/metamoji/un/pdf/PdfDocumentRef;",
        "Lcom/metamoji/df/controller/AttachmentsManager;",
        "ticket",
        "password",
        "getPdfPage",
        "Lcom/metamoji/un/pdf/text/PDFPageRef;",
        "pageIndex",
        "",
        "app"
    }
    k = 0x2
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final CACHE_TYPE_SPRITE_PDF:Ljava/lang/String; = "pdfdocument"


# direct methods
.method public static final getPdfDocument(Lcom/metamoji/df/controller/AttachmentsManager;Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/cm/SharedReference;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/df/controller/AttachmentsManager;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/metamoji/cm/SharedReference<",
            "Lcom/metamoji/un/pdf/PdfDocumentRef;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "ticket"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    const-string v0, "pdfdocument"

    invoke-virtual {p0, v0}, Lcom/metamoji/df/controller/AttachmentsManager;->holdCache(Ljava/lang/String;)V

    .line 30
    new-instance v1, Lcom/metamoji/un/pdf/text/UnPDFAttachmentsManagerKt$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2, p1}, Lcom/metamoji/un/pdf/text/UnPDFAttachmentsManagerKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/metamoji/df/controller/AttachmentsManager;->getData(Ljava/lang/String;Ljava/lang/String;Landroidx/arch/core/util/Function;)Lcom/metamoji/cm/SharedReference;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getPdfDocument$default(Lcom/metamoji/df/controller/AttachmentsManager;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/metamoji/cm/SharedReference;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 28
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/metamoji/un/pdf/text/UnPDFAttachmentsManagerKt;->getPdfDocument(Lcom/metamoji/df/controller/AttachmentsManager;Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/cm/SharedReference;

    move-result-object p0

    return-object p0
.end method

.method static final getPdfDocument$lambda$0(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/cm/Blob;)Lcom/metamoji/un/pdf/PdfDocumentRef;
    .locals 2

    .line 32
    :try_start_0
    new-instance v0, Lcom/metamoji/un/pdf/PdfDocumentRef;

    invoke-virtual {p2}, Lcom/metamoji/cm/Blob;->getData()[B

    move-result-object p2

    const-string v1, "getData(...)"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p2, p0, p1}, Lcom/metamoji/un/pdf/PdfDocumentRef;-><init>([BLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 34
    check-cast p0, Ljava/lang/Throwable;

    const-string p1, "failed to load PDF"

    invoke-static {p0, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static final getPdfPage(Lcom/metamoji/df/controller/AttachmentsManager;Ljava/lang/String;I)Lcom/metamoji/cm/SharedReference;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/df/controller/AttachmentsManager;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/metamoji/cm/SharedReference<",
            "Lcom/metamoji/un/pdf/text/PDFPageRef;",
            ">;"
        }
    .end annotation

    const-string v0, "failed to read pdf page "

    const-string v1, "pdfpage:"

    .line 41
    const-string v2, "<this>"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "ticket"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p0, p1, v3, v2, v3}, Lcom/metamoji/un/pdf/text/UnPDFAttachmentsManagerKt;->getPdfDocument$default(Lcom/metamoji/df/controller/AttachmentsManager;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/metamoji/cm/SharedReference;

    move-result-object v2

    check-cast v2, Ljava/io/Closeable;

    :try_start_0
    move-object v4, v2

    check-cast v4, Lcom/metamoji/cm/SharedReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    .line 42
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v3

    .line 43
    :cond_0
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 44
    invoke-virtual {p0, p1, v1}, Lcom/metamoji/df/controller/AttachmentsManager;->getCache(Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/cm/SharedReference;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_1

    .line 45
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v5

    .line 47
    :cond_1
    :try_start_2
    new-instance v5, Lcom/metamoji/un/pdf/text/PDFPageRef;

    invoke-direct {v5, v4, p2}, Lcom/metamoji/un/pdf/text/PDFPageRef;-><init>(Lcom/metamoji/cm/SharedReference;I)V

    .line 48
    check-cast v5, Ljava/io/Closeable;

    invoke-virtual {p0, p1, v1, v5}, Lcom/metamoji/df/controller/AttachmentsManager;->setCache(Ljava/lang/String;Ljava/lang/String;Ljava/io/Closeable;)Lcom/metamoji/cm/SharedReference;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 50
    :try_start_3
    check-cast p0, Ljava/lang/Throwable;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object p0, v3

    .line 46
    :goto_0
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {v2, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method
