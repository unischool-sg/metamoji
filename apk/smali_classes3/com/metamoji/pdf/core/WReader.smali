.class final Lcom/metamoji/pdf/core/WReader;
.super Ljava/lang/Object;
.source "PDFXRef.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u0006\u0010\u000e\u001a\u00020\u000fJ\u0016\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0013J\u0011\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0086\u0002R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/metamoji/pdf/core/WReader;",
        "Ljava/io/Closeable;",
        "stream",
        "Lcom/metamoji/pdf/core/PDFObj;",
        "<init>",
        "(Lcom/metamoji/pdf/core/PDFObj;)V",
        "_reader",
        "Lcom/metamoji/pdf/core/PDFInputStream;",
        "_w",
        "",
        "_buf",
        "",
        "close",
        "",
        "next",
        "",
        "value",
        "",
        "n",
        "",
        "def",
        "get",
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
.field private final _buf:[B

.field private final _reader:Lcom/metamoji/pdf/core/PDFInputStream;

.field private final _w:[I


# direct methods
.method public constructor <init>(Lcom/metamoji/pdf/core/PDFObj;)V
    .locals 6

    const-string/jumbo v0, "stream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 226
    invoke-static {p1, v1, v2, v0}, Lcom/metamoji/pdf/core/PDFObj;->openStream$default(Lcom/metamoji/pdf/core/PDFObj;IILjava/lang/Object;)Lcom/metamoji/pdf/core/PDFInputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/pdf/core/WReader;->_reader:Lcom/metamoji/pdf/core/PDFInputStream;

    const/4 v0, 0x4

    .line 227
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/metamoji/pdf/core/WReader;->_w:[I

    .line 231
    const-string v0, "W"

    invoke-virtual {p1, v0}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p1

    .line 232
    invoke-virtual {p1}, Lcom/metamoji/pdf/core/PDFObj;->getType()Lcom/metamoji/pdf/core/PDFObj$Type;

    move-result-object v0

    sget-object v3, Lcom/metamoji/pdf/core/PDFObj$Type;->ARRAY:Lcom/metamoji/pdf/core/PDFObj$Type;

    if-ne v0, v3, :cond_1

    invoke-virtual {p1}, Lcom/metamoji/pdf/core/PDFObj;->getCount()I

    move-result v0

    const/4 v3, 0x3

    if-lt v0, v3, :cond_1

    .line 237
    invoke-virtual {p1}, Lcom/metamoji/pdf/core/PDFObj;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v4, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/pdf/core/PDFObj;

    .line 238
    invoke-virtual {v5}, Lcom/metamoji/pdf/core/PDFObj;->intVal()I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_0

    .line 240
    :cond_0
    new-array v0, v4, [B

    iput-object v0, p0, Lcom/metamoji/pdf/core/WReader;->_buf:[B

    .line 242
    iget-object v0, p0, Lcom/metamoji/pdf/core/WReader;->_w:[I

    aput v1, v0, v1

    .line 243
    invoke-virtual {p1, v1}, Lcom/metamoji/pdf/core/PDFObj;->get(I)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/pdf/core/PDFObj;->intVal()I

    move-result v1

    aput v1, v0, v2

    .line 244
    iget-object v0, p0, Lcom/metamoji/pdf/core/WReader;->_w:[I

    invoke-virtual {p1, v2}, Lcom/metamoji/pdf/core/PDFObj;->get(I)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/pdf/core/PDFObj;->intVal()I

    move-result v1

    iget-object v4, p0, Lcom/metamoji/pdf/core/WReader;->_w:[I

    aget v2, v4, v2

    add-int/2addr v1, v2

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 245
    invoke-virtual {p1, v2}, Lcom/metamoji/pdf/core/PDFObj;->get(I)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/pdf/core/PDFObj;->intVal()I

    move-result p1

    iget-object v0, p0, Lcom/metamoji/pdf/core/WReader;->_w:[I

    aget v0, v0, v2

    add-int/2addr p1, v0

    aput p1, v4, v3

    return-void

    .line 233
    :cond_1
    new-instance p1, Lcom/metamoji/pdf/core/PDFException;

    const-string v0, "bad xref W"

    invoke-direct {p1, v0}, Lcom/metamoji/pdf/core/PDFException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/metamoji/pdf/core/WReader;->_reader:Lcom/metamoji/pdf/core/PDFInputStream;

    invoke-virtual {v0}, Lcom/metamoji/pdf/core/PDFInputStream;->close()V

    return-void
.end method

.method public final get(I)J
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 268
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/pdf/core/WReader;->value(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public final next()Z
    .locals 4

    .line 253
    iget-object v0, p0, Lcom/metamoji/pdf/core/WReader;->_buf:[B

    array-length v1, v0

    .line 254
    iget-object v2, p0, Lcom/metamoji/pdf/core/WReader;->_reader:Lcom/metamoji/pdf/core/PDFInputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Lcom/metamoji/pdf/core/PDFInputStream;->_read([BII)I

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v3
.end method

.method public final value(II)J
    .locals 6

    .line 258
    iget-object v0, p0, Lcom/metamoji/pdf/core/WReader;->_w:[I

    aget v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    .line 259
    aget p1, v0, p1

    if-ne v1, p1, :cond_0

    int-to-long p1, p2

    return-wide p1

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    const/16 p2, 0x100

    int-to-long v4, p2

    mul-long/2addr v4, v2

    .line 263
    iget-object p2, p0, Lcom/metamoji/pdf/core/WReader;->_buf:[B

    aget-byte p2, p2, v1

    invoke-static {p2}, Lcom/metamoji/pdf/core/PDFObjKt;->ubyte(B)I

    move-result p2

    int-to-long v2, p2

    add-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-wide v2
.end method
