.class final Lcom/metamoji/pdf/core/FlateReader;
.super Lcom/metamoji/pdf/core/FilterStream;
.source "Filters.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0003\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u0008\u001a\u00020\tH\u0016J \u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000bH\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/metamoji/pdf/core/FlateReader;",
        "Lcom/metamoji/pdf/core/FilterStream;",
        "upper",
        "Lcom/metamoji/pdf/core/PDFInputStream;",
        "<init>",
        "(Lcom/metamoji/pdf/core/PDFInputStream;)V",
        "_decoder",
        "Ljava/io/BufferedInputStream;",
        "close",
        "",
        "_read",
        "",
        "buffer",
        "",
        "offset",
        "maxRead",
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
.field private final _decoder:Ljava/io/BufferedInputStream;


# direct methods
.method public constructor <init>(Lcom/metamoji/pdf/core/PDFInputStream;)V
    .locals 2

    const-string/jumbo v0, "upper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-direct {p0, p1}, Lcom/metamoji/pdf/core/FilterStream;-><init>(Lcom/metamoji/pdf/core/PDFInputStream;)V

    .line 60
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/util/zip/InflaterInputStream;

    check-cast p1, Ljava/io/InputStream;

    invoke-direct {v1, p1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    check-cast v1, Ljava/io/InputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/metamoji/pdf/core/FlateReader;->_decoder:Ljava/io/BufferedInputStream;

    return-void
.end method


# virtual methods
.method public _read([BII)I
    .locals 1

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/metamoji/pdf/core/FlateReader;->_decoder:Ljava/io/BufferedInputStream;

    check-cast v0, Ljava/io/InputStream;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/metamoji/pdf/core/FlateReader;->readFromStream(Ljava/io/InputStream;[BII)I

    move-result p1

    return p1
.end method

.method public close()V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/metamoji/pdf/core/FlateReader;->_decoder:Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    return-void
.end method
