.class final Lcom/metamoji/pdf/core/PredictorReader;
.super Lcom/metamoji/pdf/core/FilterStream;
.source "Filters.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0012\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0010\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u0005H\u0002J\u0010\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u0005H\u0002J\u0010\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u0005H\u0002J \u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u0005H\u0016J\u0008\u0010\u0017\u001a\u00020\u0018H\u0002R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/metamoji/pdf/core/PredictorReader;",
        "Lcom/metamoji/pdf/core/FilterStream;",
        "upper",
        "Lcom/metamoji/pdf/core/PDFInputStream;",
        "columns",
        "",
        "_colors",
        "<init>",
        "(Lcom/metamoji/pdf/core/PDFInputStream;II)V",
        "_rowSize",
        "_prev",
        "",
        "_row",
        "_ul",
        "_rest",
        "row",
        "i",
        "prev",
        "ul",
        "_read",
        "buffer",
        "offset",
        "maxRead",
        "fill",
        "",
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
.field private final _colors:I

.field private final _prev:[B

.field private _rest:I

.field private final _row:[B

.field private final _rowSize:I

.field private final _ul:[B


# direct methods
.method public constructor <init>(Lcom/metamoji/pdf/core/PDFInputStream;II)V
    .locals 1

    const-string/jumbo v0, "upper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    invoke-direct {p0, p1}, Lcom/metamoji/pdf/core/FilterStream;-><init>(Lcom/metamoji/pdf/core/PDFInputStream;)V

    iput p3, p0, Lcom/metamoji/pdf/core/PredictorReader;->_colors:I

    mul-int/2addr p2, p3

    .line 181
    iput p2, p0, Lcom/metamoji/pdf/core/PredictorReader;->_rowSize:I

    .line 182
    new-array p1, p2, [B

    iput-object p1, p0, Lcom/metamoji/pdf/core/PredictorReader;->_prev:[B

    add-int/2addr p2, p3

    .line 183
    new-array p1, p2, [B

    iput-object p1, p0, Lcom/metamoji/pdf/core/PredictorReader;->_row:[B

    .line 184
    new-array p1, p3, [B

    iput-object p1, p0, Lcom/metamoji/pdf/core/PredictorReader;->_ul:[B

    return-void
.end method

.method private final fill()Z
    .locals 10

    .line 208
    invoke-virtual {p0}, Lcom/metamoji/pdf/core/PredictorReader;->get_upper()Lcom/metamoji/pdf/core/PDFInputStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/pdf/core/PDFInputStream;->read()I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    .line 210
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/pdf/core/PredictorReader;->get_upper()Lcom/metamoji/pdf/core/PDFInputStream;

    move-result-object v2

    iget-object v3, p0, Lcom/metamoji/pdf/core/PredictorReader;->_row:[B

    iget v4, p0, Lcom/metamoji/pdf/core/PredictorReader;->_colors:I

    iget v5, p0, Lcom/metamoji/pdf/core/PredictorReader;->_rowSize:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/metamoji/pdf/core/PDFInputStream;->_read([BII)I

    move-result v2

    iget v3, p0, Lcom/metamoji/pdf/core/PredictorReader;->_rowSize:I

    if-ge v2, v3, :cond_1

    return v1

    .line 211
    :cond_1
    iget-object v4, p0, Lcom/metamoji/pdf/core/PredictorReader;->_ul:[B

    const/4 v8, 0x6

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lkotlin/collections/ArraysKt;->fill$default([BBIIILjava/lang/Object;)V

    .line 212
    iget v2, p0, Lcom/metamoji/pdf/core/PredictorReader;->_rowSize:I

    :goto_0
    const/4 v3, 0x1

    if-ge v1, v2, :cond_6

    .line 213
    iget v4, p0, Lcom/metamoji/pdf/core/PredictorReader;->_colors:I

    add-int/2addr v4, v1

    if-eq v0, v3, :cond_5

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/4 v5, 0x3

    if-eq v0, v5, :cond_3

    const/4 v3, 0x4

    if-eq v0, v3, :cond_2

    goto :goto_1

    .line 218
    :cond_2
    iget-object v3, p0, Lcom/metamoji/pdf/core/PredictorReader;->_row:[B

    invoke-direct {p0, v4}, Lcom/metamoji/pdf/core/PredictorReader;->row(I)I

    move-result v5

    invoke-direct {p0, v1}, Lcom/metamoji/pdf/core/PredictorReader;->row(I)I

    move-result v6

    invoke-direct {p0, v1}, Lcom/metamoji/pdf/core/PredictorReader;->prev(I)I

    move-result v7

    invoke-direct {p0, v1}, Lcom/metamoji/pdf/core/PredictorReader;->ul(I)I

    move-result v8

    invoke-static {v6, v7, v8}, Lcom/metamoji/pdf/core/FiltersKt;->access$paeth(III)I

    move-result v6

    add-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    goto :goto_1

    .line 217
    :cond_3
    iget-object v5, p0, Lcom/metamoji/pdf/core/PredictorReader;->_row:[B

    invoke-direct {p0, v4}, Lcom/metamoji/pdf/core/PredictorReader;->row(I)I

    move-result v6

    invoke-direct {p0, v1}, Lcom/metamoji/pdf/core/PredictorReader;->row(I)I

    move-result v7

    invoke-direct {p0, v1}, Lcom/metamoji/pdf/core/PredictorReader;->prev(I)I

    move-result v8

    add-int/2addr v7, v8

    div-int/2addr v7, v3

    add-int/2addr v6, v7

    int-to-byte v3, v6

    aput-byte v3, v5, v4

    goto :goto_1

    .line 216
    :cond_4
    iget-object v3, p0, Lcom/metamoji/pdf/core/PredictorReader;->_row:[B

    invoke-direct {p0, v4}, Lcom/metamoji/pdf/core/PredictorReader;->row(I)I

    move-result v5

    invoke-direct {p0, v1}, Lcom/metamoji/pdf/core/PredictorReader;->prev(I)I

    move-result v6

    add-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    goto :goto_1

    .line 215
    :cond_5
    iget-object v3, p0, Lcom/metamoji/pdf/core/PredictorReader;->_row:[B

    invoke-direct {p0, v4}, Lcom/metamoji/pdf/core/PredictorReader;->row(I)I

    move-result v5

    invoke-direct {p0, v1}, Lcom/metamoji/pdf/core/PredictorReader;->row(I)I

    move-result v6

    add-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 221
    :goto_1
    iget-object v3, p0, Lcom/metamoji/pdf/core/PredictorReader;->_ul:[B

    iget v5, p0, Lcom/metamoji/pdf/core/PredictorReader;->_colors:I

    rem-int v5, v1, v5

    iget-object v6, p0, Lcom/metamoji/pdf/core/PredictorReader;->_prev:[B

    aget-byte v7, v6, v1

    aput-byte v7, v3, v5

    .line 222
    iget-object v3, p0, Lcom/metamoji/pdf/core/PredictorReader;->_row:[B

    aget-byte v3, v3, v4

    aput-byte v3, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 224
    :cond_6
    iget v0, p0, Lcom/metamoji/pdf/core/PredictorReader;->_rowSize:I

    iput v0, p0, Lcom/metamoji/pdf/core/PredictorReader;->_rest:I

    return v3
.end method

.method private final prev(I)I
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/metamoji/pdf/core/PredictorReader;->_prev:[B

    aget-byte p1, v0, p1

    invoke-static {p1}, Lcom/metamoji/pdf/core/PDFObjKt;->ubyte(B)I

    move-result p1

    return p1
.end method

.method private final row(I)I
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/metamoji/pdf/core/PredictorReader;->_row:[B

    aget-byte p1, v0, p1

    invoke-static {p1}, Lcom/metamoji/pdf/core/PDFObjKt;->ubyte(B)I

    move-result p1

    return p1
.end method

.method private final ul(I)I
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/metamoji/pdf/core/PredictorReader;->_ul:[B

    iget v1, p0, Lcom/metamoji/pdf/core/PredictorReader;->_colors:I

    rem-int/2addr p1, v1

    aget-byte p1, v0, p1

    invoke-static {p1}, Lcom/metamoji/pdf/core/PDFObjKt;->ubyte(B)I

    move-result p1

    return p1
.end method


# virtual methods
.method public _read([BII)I
    .locals 5

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, p2

    :goto_0
    if-lez p3, :cond_1

    .line 195
    iget v1, p0, Lcom/metamoji/pdf/core/PredictorReader;->_rest:I

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/metamoji/pdf/core/PredictorReader;->fill()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 197
    :cond_0
    iget v1, p0, Lcom/metamoji/pdf/core/PredictorReader;->_rest:I

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 198
    iget-object v2, p0, Lcom/metamoji/pdf/core/PredictorReader;->_row:[B

    array-length v3, v2

    iget v4, p0, Lcom/metamoji/pdf/core/PredictorReader;->_rest:I

    sub-int/2addr v3, v4

    add-int v4, v3, v1

    .line 199
    invoke-static {v2, p1, v0, v3, v4}, Lkotlin/collections/ArraysKt;->copyInto([B[BIII)[B

    .line 200
    iget v2, p0, Lcom/metamoji/pdf/core/PredictorReader;->_rest:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/metamoji/pdf/core/PredictorReader;->_rest:I

    add-int/2addr v0, v1

    sub-int/2addr p3, v1

    goto :goto_0

    :cond_1
    sub-int/2addr v0, p2

    return v0
.end method
