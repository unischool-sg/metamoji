.class final Lcom/metamoji/pdf/core/LZWReader;
.super Lcom/metamoji/pdf/core/FilterStream;
.source "Filters.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/pdf/core/LZWReader$Prev;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0010\u0005\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0002\u0018\u00002\u00020\u0001:\u0001\u001dB\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J \u0010\u0013\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\n2\u0006\u0010\u0017\u001a\u00020\nH\u0016J\u0008\u0010\u0018\u001a\u00020\u0005H\u0002J\u0008\u0010\u0019\u001a\u00020\u001aH\u0002J\u0010\u0010\u001b\u001a\u00020\n2\u0006\u0010\u001c\u001a\u00020\nH\u0002R\u000e\u0010\u0008\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/metamoji/pdf/core/LZWReader;",
        "Lcom/metamoji/pdf/core/FilterStream;",
        "upper",
        "Lcom/metamoji/pdf/core/PDFInputStream;",
        "earlyChange",
        "",
        "<init>",
        "(Lcom/metamoji/pdf/core/PDFInputStream;Z)V",
        "_eod",
        "_bits",
        "",
        "_restBits",
        "_codeBits",
        "_buffer",
        "",
        "",
        "_rest",
        "_dic",
        "Lcom/metamoji/pdf/core/LZWReader$Prev;",
        "_read",
        "buffer",
        "",
        "offset",
        "maxRead",
        "fill",
        "clearTable",
        "",
        "getBits",
        "n",
        "Prev",
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
.field private _bits:I

.field private final _buffer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private _codeBits:I

.field private final _dic:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/pdf/core/LZWReader$Prev;",
            ">;"
        }
    .end annotation
.end field

.field private _eod:Z

.field private _rest:I

.field private _restBits:I


# direct methods
.method public constructor <init>(Lcom/metamoji/pdf/core/PDFInputStream;Z)V
    .locals 1

    const-string/jumbo v0, "upper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-direct {p0, p1}, Lcom/metamoji/pdf/core/FilterStream;-><init>(Lcom/metamoji/pdf/core/PDFInputStream;)V

    const/16 p1, 0x9

    .line 81
    iput p1, p0, Lcom/metamoji/pdf/core/LZWReader;->_codeBits:I

    .line 84
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/metamoji/pdf/core/LZWReader;->_buffer:Ljava/util/List;

    .line 89
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/metamoji/pdf/core/LZWReader;->_dic:Ljava/util/List;

    if-eqz p2, :cond_0

    return-void

    .line 92
    :cond_0
    new-instance p1, Lcom/metamoji/pdf/core/PDFException;

    const-string/jumbo p2, "unsupported LZW"

    invoke-direct {p1, p2}, Lcom/metamoji/pdf/core/PDFException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final clearTable()V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/metamoji/pdf/core/LZWReader;->_dic:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 149
    iget-object v0, p0, Lcom/metamoji/pdf/core/LZWReader;->_buffer:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/16 v0, 0x9

    .line 150
    iput v0, p0, Lcom/metamoji/pdf/core/LZWReader;->_codeBits:I

    return-void
.end method

.method private final fill()Z
    .locals 7

    .line 113
    iget-boolean v0, p0, Lcom/metamoji/pdf/core/LZWReader;->_eod:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 115
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/pdf/core/LZWReader;->clearTable()V

    .line 117
    :cond_1
    :goto_0
    iget v0, p0, Lcom/metamoji/pdf/core/LZWReader;->_codeBits:I

    invoke-direct {p0, v0}, Lcom/metamoji/pdf/core/LZWReader;->getBits(I)I

    move-result v0

    .line 118
    const-string v1, "invalid LZW stream"

    if-ltz v0, :cond_8

    const/16 v2, 0x101

    const/16 v3, 0x100

    const/4 v4, 0x1

    if-eq v0, v3, :cond_6

    if-eq v0, v2, :cond_6

    .line 127
    iget-object v2, p0, Lcom/metamoji/pdf/core/LZWReader;->_buffer:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v3, :cond_2

    .line 129
    iget-object v1, p0, Lcom/metamoji/pdf/core/LZWReader;->_buffer:Ljava/util/List;

    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x2

    goto :goto_2

    :cond_2
    add-int/lit16 v0, v0, -0x102

    .line 132
    iget-object v3, p0, Lcom/metamoji/pdf/core/LZWReader;->_dic:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 133
    iget-object v1, p0, Lcom/metamoji/pdf/core/LZWReader;->_dic:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/pdf/core/LZWReader$Prev;

    .line 134
    invoke-virtual {v0}, Lcom/metamoji/pdf/core/LZWReader$Prev;->getPos()I

    move-result v1

    invoke-virtual {v0}, Lcom/metamoji/pdf/core/LZWReader$Prev;->getPos()I

    move-result v3

    invoke-virtual {v0}, Lcom/metamoji/pdf/core/LZWReader$Prev;->getLen()I

    move-result v5

    add-int/2addr v3, v5

    :goto_1
    if-ge v1, v3, :cond_3

    .line 135
    iget-object v5, p0, Lcom/metamoji/pdf/core/LZWReader;->_buffer:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 137
    :cond_3
    invoke-virtual {v0}, Lcom/metamoji/pdf/core/LZWReader$Prev;->getLen()I

    move-result v0

    add-int/2addr v0, v4

    .line 139
    :goto_2
    iget-object v1, p0, Lcom/metamoji/pdf/core/LZWReader;->_dic:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit16 v1, v1, 0x103

    iget v3, p0, Lcom/metamoji/pdf/core/LZWReader;->_codeBits:I

    shl-int/2addr v4, v3

    if-lt v1, v4, :cond_4

    const/16 v1, 0xc

    if-eq v3, v1, :cond_1

    add-int/lit8 v3, v3, 0x1

    .line 141
    iput v3, p0, Lcom/metamoji/pdf/core/LZWReader;->_codeBits:I

    .line 143
    :cond_4
    iget-object v1, p0, Lcom/metamoji/pdf/core/LZWReader;->_dic:Ljava/util/List;

    new-instance v3, Lcom/metamoji/pdf/core/LZWReader$Prev;

    invoke-direct {v3, v2, v0}, Lcom/metamoji/pdf/core/LZWReader$Prev;-><init>(II)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 132
    :cond_5
    new-instance v0, Lcom/metamoji/pdf/core/PDFException;

    invoke-direct {v0, v1}, Lcom/metamoji/pdf/core/PDFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_6
    iget-object v1, p0, Lcom/metamoji/pdf/core/LZWReader;->_buffer:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/metamoji/pdf/core/LZWReader;->_rest:I

    if-ne v0, v2, :cond_7

    .line 122
    iput-boolean v4, p0, Lcom/metamoji/pdf/core/LZWReader;->_eod:Z

    :cond_7
    return v4

    .line 118
    :cond_8
    new-instance v0, Lcom/metamoji/pdf/core/PDFException;

    invoke-direct {v0, v1}, Lcom/metamoji/pdf/core/PDFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final getBits(I)I
    .locals 4

    .line 154
    :goto_0
    iget v0, p0, Lcom/metamoji/pdf/core/LZWReader;->_restBits:I

    .line 162
    iget v1, p0, Lcom/metamoji/pdf/core/LZWReader;->_bits:I

    if-le p1, v0, :cond_1

    shl-int/lit8 v0, v1, 0x8

    .line 155
    iput v0, p0, Lcom/metamoji/pdf/core/LZWReader;->_bits:I

    .line 156
    invoke-virtual {p0}, Lcom/metamoji/pdf/core/LZWReader;->get_upper()Lcom/metamoji/pdf/core/PDFInputStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/pdf/core/PDFInputStream;->read()I

    move-result v0

    if-gez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 158
    :cond_0
    iget v1, p0, Lcom/metamoji/pdf/core/LZWReader;->_bits:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/metamoji/pdf/core/LZWReader;->_bits:I

    .line 159
    iget v0, p0, Lcom/metamoji/pdf/core/LZWReader;->_restBits:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/metamoji/pdf/core/LZWReader;->_restBits:I

    goto :goto_0

    :cond_1
    sub-int v2, v0, p1

    shr-int/2addr v1, v2

    const/4 v2, 0x1

    shl-int v3, v2, p1

    sub-int/2addr v3, v2

    and-int/2addr v1, v3

    sub-int/2addr v0, p1

    .line 163
    iput v0, p0, Lcom/metamoji/pdf/core/LZWReader;->_restBits:I

    return v1
.end method


# virtual methods
.method public _read([BII)I
    .locals 7

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, p2

    :goto_0
    if-lez p3, :cond_2

    .line 99
    iget v1, p0, Lcom/metamoji/pdf/core/LZWReader;->_rest:I

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/metamoji/pdf/core/LZWReader;->fill()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 101
    :cond_0
    iget v1, p0, Lcom/metamoji/pdf/core/LZWReader;->_rest:I

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 102
    iget-object v2, p0, Lcom/metamoji/pdf/core/LZWReader;->_buffer:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lcom/metamoji/pdf/core/LZWReader;->_rest:I

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_1

    add-int/lit8 v4, v0, 0x1

    .line 104
    iget-object v5, p0, Lcom/metamoji/pdf/core/LZWReader;->_buffer:Ljava/util/List;

    add-int/lit8 v6, v2, 0x1

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->byteValue()B

    move-result v2

    aput-byte v2, p1, v0

    add-int/lit8 v3, v3, 0x1

    move v0, v4

    move v2, v6

    goto :goto_1

    .line 106
    :cond_1
    iget v2, p0, Lcom/metamoji/pdf/core/LZWReader;->_rest:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/metamoji/pdf/core/LZWReader;->_rest:I

    sub-int/2addr p3, v1

    goto :goto_0

    :cond_2
    sub-int/2addr v0, p2

    return v0
.end method
