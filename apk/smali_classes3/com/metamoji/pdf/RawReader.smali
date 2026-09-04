.class final Lcom/metamoji/pdf/RawReader;
.super Lcom/metamoji/pdf/core/PDFInputStream;
.source "PDFDocument.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0008\u0002\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0008\u0010\u000e\u001a\u00020\u000cH\u0016J \u0010\u000f\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u000c2\u0006\u0010\u0012\u001a\u00020\u000cH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/metamoji/pdf/RawReader;",
        "Lcom/metamoji/pdf/core/PDFInputStream;",
        "_file",
        "Lcom/metamoji/pdf/IPDFFile;",
        "_pos",
        "",
        "_size",
        "<init>",
        "(Lcom/metamoji/pdf/IPDFFile;JJ)V",
        "_window",
        "",
        "_cur",
        "",
        "_rest",
        "read",
        "_read",
        "buffer",
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
.field private _cur:I

.field private final _file:Lcom/metamoji/pdf/IPDFFile;

.field private _pos:J

.field private _rest:I

.field private _size:J

.field private final _window:[B


# direct methods
.method public constructor <init>(Lcom/metamoji/pdf/IPDFFile;JJ)V
    .locals 1

    const-string v0, "_file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 769
    invoke-direct {p0}, Lcom/metamoji/pdf/core/PDFInputStream;-><init>()V

    .line 766
    iput-object p1, p0, Lcom/metamoji/pdf/RawReader;->_file:Lcom/metamoji/pdf/IPDFFile;

    .line 767
    iput-wide p2, p0, Lcom/metamoji/pdf/RawReader;->_pos:J

    .line 768
    iput-wide p4, p0, Lcom/metamoji/pdf/RawReader;->_size:J

    const/16 p1, 0x1000

    .line 770
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/metamoji/pdf/RawReader;->_window:[B

    return-void
.end method


# virtual methods
.method public _read([BII)I
    .locals 8

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 787
    iget v0, p0, Lcom/metamoji/pdf/RawReader;->_rest:I

    if-lez v0, :cond_0

    .line 788
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 789
    iget-object v1, p0, Lcom/metamoji/pdf/RawReader;->_window:[B

    iget v2, p0, Lcom/metamoji/pdf/RawReader;->_cur:I

    add-int v3, v2, v0

    invoke-static {v1, p1, p2, v2, v3}, Lkotlin/collections/ArraysKt;->copyInto([B[BIII)[B

    sub-int/2addr p3, v0

    .line 791
    iget v1, p0, Lcom/metamoji/pdf/RawReader;->_rest:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/metamoji/pdf/RawReader;->_rest:I

    .line 792
    iget v1, p0, Lcom/metamoji/pdf/RawReader;->_cur:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/metamoji/pdf/RawReader;->_cur:I

    add-int/2addr v0, p2

    if-nez p3, :cond_1

    sub-int/2addr v0, p2

    return v0

    :cond_0
    move v0, p2

    .line 797
    :cond_1
    iget-object v1, p0, Lcom/metamoji/pdf/RawReader;->_file:Lcom/metamoji/pdf/IPDFFile;

    iget-wide v2, p0, Lcom/metamoji/pdf/RawReader;->_pos:J

    invoke-interface {v1, v2, v3}, Lcom/metamoji/pdf/IPDFFile;->seek(J)V

    .line 798
    iget-object v1, p0, Lcom/metamoji/pdf/RawReader;->_window:[B

    array-length v2, v1

    const-string v3, "read error"

    if-lt p3, v2, :cond_3

    int-to-long v1, p3

    .line 800
    iget-wide v4, p0, Lcom/metamoji/pdf/RawReader;->_size:J

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int p3, v1

    .line 801
    iget-object v1, p0, Lcom/metamoji/pdf/RawReader;->_file:Lcom/metamoji/pdf/IPDFFile;

    invoke-interface {v1, p1, v0, p3}, Lcom/metamoji/pdf/IPDFFile;->read([BII)I

    move-result p1

    if-lt p1, p3, :cond_2

    .line 802
    iget-wide v1, p0, Lcom/metamoji/pdf/RawReader;->_pos:J

    int-to-long v3, p3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/metamoji/pdf/RawReader;->_pos:J

    .line 803
    iget-wide v1, p0, Lcom/metamoji/pdf/RawReader;->_size:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/metamoji/pdf/RawReader;->_size:J

    goto :goto_0

    .line 801
    :cond_2
    new-instance p1, Lcom/metamoji/pdf/core/PDFException;

    invoke-direct {p1, v3}, Lcom/metamoji/pdf/core/PDFException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 807
    :cond_3
    array-length v1, v1

    int-to-long v1, v1

    iget-wide v4, p0, Lcom/metamoji/pdf/RawReader;->_size:J

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    .line 808
    iget-object v2, p0, Lcom/metamoji/pdf/RawReader;->_file:Lcom/metamoji/pdf/IPDFFile;

    iget-object v4, p0, Lcom/metamoji/pdf/RawReader;->_window:[B

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5, v1}, Lcom/metamoji/pdf/IPDFFile;->read([BII)I

    move-result v2

    if-lt v2, v1, :cond_4

    .line 809
    iget-wide v2, p0, Lcom/metamoji/pdf/RawReader;->_pos:J

    int-to-long v6, v1

    add-long/2addr v2, v6

    iput-wide v2, p0, Lcom/metamoji/pdf/RawReader;->_pos:J

    .line 810
    iget-wide v2, p0, Lcom/metamoji/pdf/RawReader;->_size:J

    sub-long/2addr v2, v6

    iput-wide v2, p0, Lcom/metamoji/pdf/RawReader;->_size:J

    .line 812
    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 813
    iget-object v2, p0, Lcom/metamoji/pdf/RawReader;->_window:[B

    invoke-static {v2, p1, v0, v5, p3}, Lkotlin/collections/ArraysKt;->copyInto([B[BIII)[B

    sub-int/2addr v1, p3

    .line 814
    iput v1, p0, Lcom/metamoji/pdf/RawReader;->_rest:I

    .line 815
    iput p3, p0, Lcom/metamoji/pdf/RawReader;->_cur:I

    :goto_0
    add-int/2addr v0, p3

    sub-int/2addr v0, p2

    return v0

    .line 808
    :cond_4
    new-instance p1, Lcom/metamoji/pdf/core/PDFException;

    invoke-direct {p1, v3}, Lcom/metamoji/pdf/core/PDFException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public read()I
    .locals 3

    .line 775
    iget v0, p0, Lcom/metamoji/pdf/RawReader;->_rest:I

    if-lez v0, :cond_0

    .line 776
    iget-object v0, p0, Lcom/metamoji/pdf/RawReader;->_window:[B

    iget v1, p0, Lcom/metamoji/pdf/RawReader;->_cur:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/metamoji/pdf/RawReader;->_cur:I

    aget-byte v0, v0, v1

    invoke-static {v0}, Lcom/metamoji/pdf/core/PDFObjKt;->ubyte(B)I

    move-result v0

    .line 777
    iget v1, p0, Lcom/metamoji/pdf/RawReader;->_rest:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/metamoji/pdf/RawReader;->_rest:I

    return v0

    .line 780
    :cond_0
    invoke-super {p0}, Lcom/metamoji/pdf/core/PDFInputStream;->read()I

    move-result v0

    return v0
.end method
