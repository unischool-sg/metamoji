.class final Lcom/metamoji/pdf/core/RLEReader;
.super Lcom/metamoji/pdf/core/FilterStream;
.source "Filters.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0002\u0008\u0004\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J \u0010\u000b\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\tH\u0016J\u0008\u0010\u0010\u001a\u00020\u0007H\u0002R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/metamoji/pdf/core/RLEReader;",
        "Lcom/metamoji/pdf/core/FilterStream;",
        "upper",
        "Lcom/metamoji/pdf/core/PDFInputStream;",
        "<init>",
        "(Lcom/metamoji/pdf/core/PDFInputStream;)V",
        "_eod",
        "",
        "_rest",
        "",
        "_repeat",
        "_read",
        "buffer",
        "",
        "offset",
        "maxRead",
        "readPreByte",
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

.field private _repeat:I

.field private _rest:I


# direct methods
.method public constructor <init>(Lcom/metamoji/pdf/core/PDFInputStream;)V
    .locals 1

    const-string/jumbo v0, "upper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 344
    invoke-direct {p0, p1}, Lcom/metamoji/pdf/core/FilterStream;-><init>(Lcom/metamoji/pdf/core/PDFInputStream;)V

    return-void
.end method

.method private final readPreByte()Z
    .locals 5

    .line 373
    iget-boolean v0, p0, Lcom/metamoji/pdf/core/RLEReader;->_eod:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 375
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/pdf/core/RLEReader;->get_upper()Lcom/metamoji/pdf/core/PDFInputStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/pdf/core/PDFInputStream;->read()I

    move-result v0

    .line 377
    const-string v2, "invalid RLE stream"

    if-ltz v0, :cond_4

    const/16 v3, 0x80

    const/4 v4, 0x1

    if-ne v0, v3, :cond_1

    .line 379
    iput-boolean v4, p0, Lcom/metamoji/pdf/core/RLEReader;->_eod:Z

    return v1

    :cond_1
    if-ge v0, v3, :cond_2

    add-int/2addr v0, v4

    .line 383
    iput v0, p0, Lcom/metamoji/pdf/core/RLEReader;->_rest:I

    const/4 v0, -0x1

    .line 384
    iput v0, p0, Lcom/metamoji/pdf/core/RLEReader;->_repeat:I

    goto :goto_0

    :cond_2
    rsub-int v0, v0, 0x101

    .line 387
    iput v0, p0, Lcom/metamoji/pdf/core/RLEReader;->_rest:I

    .line 388
    invoke-virtual {p0}, Lcom/metamoji/pdf/core/RLEReader;->get_upper()Lcom/metamoji/pdf/core/PDFInputStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/pdf/core/PDFInputStream;->read()I

    move-result v0

    iput v0, p0, Lcom/metamoji/pdf/core/RLEReader;->_repeat:I

    if-ltz v0, :cond_3

    :goto_0
    return v4

    .line 389
    :cond_3
    new-instance v0, Lcom/metamoji/pdf/core/PDFException;

    invoke-direct {v0, v2}, Lcom/metamoji/pdf/core/PDFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 377
    :cond_4
    new-instance v0, Lcom/metamoji/pdf/core/PDFException;

    invoke-direct {v0, v2}, Lcom/metamoji/pdf/core/PDFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public _read([BII)I
    .locals 5

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, p2

    :goto_0
    if-lez p3, :cond_4

    .line 353
    iget v1, p0, Lcom/metamoji/pdf/core/RLEReader;->_rest:I

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/metamoji/pdf/core/RLEReader;->readPreByte()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 355
    :cond_0
    iget v1, p0, Lcom/metamoji/pdf/core/RLEReader;->_rest:I

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 356
    iget v2, p0, Lcom/metamoji/pdf/core/RLEReader;->_repeat:I

    if-gez v2, :cond_2

    .line 357
    invoke-virtual {p0}, Lcom/metamoji/pdf/core/RLEReader;->get_upper()Lcom/metamoji/pdf/core/PDFInputStream;

    move-result-object v2

    invoke-virtual {v2, p1, v0, v1}, Lcom/metamoji/pdf/core/PDFInputStream;->_read([BII)I

    move-result v2

    if-lt v2, v1, :cond_1

    goto :goto_2

    .line 358
    :cond_1
    new-instance p1, Lcom/metamoji/pdf/core/PDFException;

    const-string p2, "invalid RLE stream"

    invoke-direct {p1, p2}, Lcom/metamoji/pdf/core/PDFException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_3

    add-int v3, v0, v2

    .line 362
    iget v4, p0, Lcom/metamoji/pdf/core/RLEReader;->_repeat:I

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/2addr v0, v1

    .line 366
    iget v2, p0, Lcom/metamoji/pdf/core/RLEReader;->_rest:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/metamoji/pdf/core/RLEReader;->_rest:I

    sub-int/2addr p3, v1

    goto :goto_0

    :cond_4
    sub-int/2addr v0, p2

    return v0
.end method
