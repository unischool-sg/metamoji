.class final Lcom/metamoji/pdf/core/ASCIIHexReader;
.super Lcom/metamoji/pdf/core/FilterStream;
.source "Filters.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0004\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J \u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\tH\u0016J\u0008\u0010\u000e\u001a\u00020\tH\u0002R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/metamoji/pdf/core/ASCIIHexReader;",
        "Lcom/metamoji/pdf/core/FilterStream;",
        "upper",
        "Lcom/metamoji/pdf/core/PDFInputStream;",
        "<init>",
        "(Lcom/metamoji/pdf/core/PDFInputStream;)V",
        "_eod",
        "",
        "_read",
        "",
        "buffer",
        "",
        "offset",
        "maxRead",
        "getHex",
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
.field private _eod:Z


# direct methods
.method public constructor <init>(Lcom/metamoji/pdf/core/PDFInputStream;)V
    .locals 1

    const-string/jumbo v0, "upper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    invoke-direct {p0, p1}, Lcom/metamoji/pdf/core/FilterStream;-><init>(Lcom/metamoji/pdf/core/PDFInputStream;)V

    return-void
.end method

.method private final getHex()I
    .locals 5

    .line 323
    iget-boolean v0, p0, Lcom/metamoji/pdf/core/ASCIIHexReader;->_eod:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    .line 326
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/pdf/core/ASCIIHexReader;->get_upper()Lcom/metamoji/pdf/core/PDFInputStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/pdf/core/PDFInputStream;->read()I

    move-result v0

    .line 327
    const-string v2, "invalid ASCIIHex stream"

    if-ltz v0, :cond_5

    .line 328
    invoke-static {v0}, Lcom/metamoji/pdf/core/PDFParserKt;->isWhiteSpace(I)Z

    move-result v3

    if-nez v3, :cond_0

    int-to-char v3, v0

    const/16 v4, 0x3e

    if-ne v3, v4, :cond_1

    const/4 v0, 0x1

    .line 332
    iput-boolean v0, p0, Lcom/metamoji/pdf/core/ASCIIHexReader;->_eod:Z

    return v1

    :cond_1
    const/16 v1, 0x30

    if-gt v1, v3, :cond_2

    const/16 v4, 0x3a

    if-ge v3, v4, :cond_2

    sub-int/2addr v0, v1

    return v0

    :cond_2
    const/16 v1, 0x41

    if-gt v1, v3, :cond_3

    const/16 v1, 0x47

    if-ge v3, v1, :cond_3

    add-int/lit8 v0, v0, -0x37

    return v0

    :cond_3
    const/16 v1, 0x61

    if-gt v1, v3, :cond_4

    const/16 v1, 0x67

    if-ge v3, v1, :cond_4

    add-int/lit8 v0, v0, -0x57

    return v0

    .line 338
    :cond_4
    new-instance v0, Lcom/metamoji/pdf/core/PDFException;

    invoke-direct {v0, v2}, Lcom/metamoji/pdf/core/PDFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 327
    :cond_5
    new-instance v0, Lcom/metamoji/pdf/core/PDFException;

    invoke-direct {v0, v2}, Lcom/metamoji/pdf/core/PDFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public _read([BII)I
    .locals 4

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, p2

    :goto_0
    if-lez p3, :cond_0

    .line 313
    invoke-direct {p0}, Lcom/metamoji/pdf/core/ASCIIHexReader;->getHex()I

    move-result v1

    if-ltz v1, :cond_0

    .line 315
    invoke-direct {p0}, Lcom/metamoji/pdf/core/ASCIIHexReader;->getHex()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v3, v0, 0x1

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v1, v2

    int-to-byte v1, v1

    .line 316
    aput-byte v1, p1, v0

    add-int/lit8 p3, p3, -0x1

    move v0, v3

    goto :goto_0

    :cond_0
    sub-int/2addr v0, p2

    return v0
.end method
