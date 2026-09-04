.class final Lcom/metamoji/pdf/core/ASCII85Reader;
.super Lcom/metamoji/pdf/core/FilterStream;
.source "Filters.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J \u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000bH\u0016J\u0008\u0010\u0010\u001a\u00020\u0007H\u0002R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/metamoji/pdf/core/ASCII85Reader;",
        "Lcom/metamoji/pdf/core/FilterStream;",
        "upper",
        "Lcom/metamoji/pdf/core/PDFInputStream;",
        "<init>",
        "(Lcom/metamoji/pdf/core/PDFInputStream;)V",
        "_eod",
        "",
        "_buffer",
        "",
        "_rest",
        "",
        "_read",
        "buffer",
        "offset",
        "maxRead",
        "fill",
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
.field private final _buffer:[B

.field private _eod:Z

.field private _rest:I


# direct methods
.method public constructor <init>(Lcom/metamoji/pdf/core/PDFInputStream;)V
    .locals 1

    const-string/jumbo v0, "upper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    invoke-direct {p0, p1}, Lcom/metamoji/pdf/core/FilterStream;-><init>(Lcom/metamoji/pdf/core/PDFInputStream;)V

    const/4 p1, 0x4

    .line 231
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/metamoji/pdf/core/ASCII85Reader;->_buffer:[B

    return-void
.end method

.method private final fill()Z
    .locals 11

    .line 251
    iget-boolean v0, p0, Lcom/metamoji/pdf/core/ASCII85Reader;->_eod:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x5

    .line 253
    new-array v2, v0, [B

    move v3, v1

    .line 255
    :cond_1
    :goto_0
    const-string v4, "invalid ASCII85 stream"

    const/4 v5, 0x1

    if-ge v3, v0, :cond_8

    .line 256
    invoke-virtual {p0}, Lcom/metamoji/pdf/core/ASCII85Reader;->get_upper()Lcom/metamoji/pdf/core/PDFInputStream;

    move-result-object v6

    invoke-virtual {v6}, Lcom/metamoji/pdf/core/PDFInputStream;->read()I

    move-result v6

    if-ltz v6, :cond_7

    .line 258
    invoke-static {v6}, Lcom/metamoji/pdf/core/PDFParserKt;->isWhiteSpace(I)Z

    move-result v7

    if-nez v7, :cond_1

    const/16 v7, 0x7e

    if-ne v6, v7, :cond_3

    .line 262
    invoke-virtual {p0}, Lcom/metamoji/pdf/core/ASCII85Reader;->get_upper()Lcom/metamoji/pdf/core/PDFInputStream;

    move-result-object v6

    invoke-virtual {v6}, Lcom/metamoji/pdf/core/PDFInputStream;->read()I

    move-result v6

    const/16 v7, 0x3e

    if-ne v6, v7, :cond_2

    .line 263
    iput-boolean v5, p0, Lcom/metamoji/pdf/core/ASCII85Reader;->_eod:Z

    goto :goto_2

    .line 262
    :cond_2
    new-instance v0, Lcom/metamoji/pdf/core/PDFException;

    invoke-direct {v0, v4}, Lcom/metamoji/pdf/core/PDFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/16 v7, 0x7a

    if-ne v6, v7, :cond_5

    if-nez v3, :cond_4

    :goto_1
    if-ge v3, v0, :cond_8

    add-int/lit8 v6, v3, 0x1

    .line 269
    aput-byte v1, v2, v3

    move v3, v6

    goto :goto_1

    .line 267
    :cond_4
    new-instance v0, Lcom/metamoji/pdf/core/PDFException;

    invoke-direct {v0, v4}, Lcom/metamoji/pdf/core/PDFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const/16 v5, 0x21

    if-gt v5, v6, :cond_6

    const/16 v5, 0x76

    if-ge v6, v5, :cond_6

    add-int/lit8 v4, v3, 0x1

    add-int/lit8 v6, v6, -0x21

    int-to-byte v5, v6

    .line 274
    aput-byte v5, v2, v3

    move v3, v4

    goto :goto_0

    .line 276
    :cond_6
    new-instance v0, Lcom/metamoji/pdf/core/PDFException;

    invoke-direct {v0, v4}, Lcom/metamoji/pdf/core/PDFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_7
    new-instance v0, Lcom/metamoji/pdf/core/PDFException;

    invoke-direct {v0, v4}, Lcom/metamoji/pdf/core/PDFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_2
    if-eq v3, v5, :cond_e

    if-nez v3, :cond_a

    .line 281
    iget-boolean v0, p0, Lcom/metamoji/pdf/core/ASCII85Reader;->_eod:Z

    if-eqz v0, :cond_9

    return v1

    :cond_9
    new-instance v0, Lcom/metamoji/pdf/core/PDFException;

    invoke-direct {v0, v4}, Lcom/metamoji/pdf/core/PDFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    add-int/lit8 v4, v3, -0x1

    .line 284
    iput v4, p0, Lcom/metamoji/pdf/core/ASCII85Reader;->_rest:I

    :goto_3
    if-ge v3, v0, :cond_b

    add-int/lit8 v4, v3, 0x1

    const/16 v6, 0x54

    .line 287
    aput-byte v6, v2, v3

    move v3, v4

    goto :goto_3

    :cond_b
    const-wide/16 v3, 0x0

    move v6, v1

    :goto_4
    if-ge v6, v0, :cond_c

    const/16 v7, 0x55

    int-to-long v7, v7

    mul-long/2addr v3, v7

    .line 292
    aget-byte v7, v2, v6

    int-to-long v7, v7

    add-long/2addr v3, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 294
    :cond_c
    iget v0, p0, Lcom/metamoji/pdf/core/ASCII85Reader;->_rest:I

    rsub-int/lit8 v2, v0, 0x4

    const/16 v6, 0x8

    mul-int/2addr v2, v6

    shr-long v2, v3, v2

    .line 296
    iget-object v4, p0, Lcom/metamoji/pdf/core/ASCII85Reader;->_buffer:[B

    array-length v4, v4

    sub-int/2addr v4, v5

    :goto_5
    if-ge v1, v0, :cond_d

    .line 298
    iget-object v7, p0, Lcom/metamoji/pdf/core/ASCII85Reader;->_buffer:[B

    add-int/lit8 v8, v4, -0x1

    const-wide/16 v9, 0xff

    and-long/2addr v9, v2

    long-to-int v9, v9

    int-to-byte v9, v9

    aput-byte v9, v7, v4

    shr-long/2addr v2, v6

    add-int/lit8 v1, v1, 0x1

    move v4, v8

    goto :goto_5

    :cond_d
    return v5

    .line 279
    :cond_e
    new-instance v0, Lcom/metamoji/pdf/core/PDFException;

    invoke-direct {v0, v4}, Lcom/metamoji/pdf/core/PDFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public _read([BII)I
    .locals 5

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, p2

    :goto_0
    if-lez p3, :cond_1

    .line 238
    iget v1, p0, Lcom/metamoji/pdf/core/ASCII85Reader;->_rest:I

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/metamoji/pdf/core/ASCII85Reader;->fill()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 240
    :cond_0
    iget v1, p0, Lcom/metamoji/pdf/core/ASCII85Reader;->_rest:I

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 241
    iget-object v2, p0, Lcom/metamoji/pdf/core/ASCII85Reader;->_buffer:[B

    array-length v3, v2

    iget v4, p0, Lcom/metamoji/pdf/core/ASCII85Reader;->_rest:I

    sub-int/2addr v3, v4

    add-int v4, v3, v1

    .line 242
    invoke-static {v2, p1, v0, v3, v4}, Lkotlin/collections/ArraysKt;->copyInto([B[BIII)[B

    .line 243
    iget v2, p0, Lcom/metamoji/pdf/core/ASCII85Reader;->_rest:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/metamoji/pdf/core/ASCII85Reader;->_rest:I

    add-int/2addr v0, v1

    sub-int/2addr p3, v1

    goto :goto_0

    :cond_1
    sub-int/2addr v0, p2

    return v0
.end method
