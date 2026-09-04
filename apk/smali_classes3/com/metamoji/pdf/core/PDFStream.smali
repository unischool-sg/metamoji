.class public final Lcom/metamoji/pdf/core/PDFStream;
.super Lcom/metamoji/pdf/core/PDFDictionary;
.source "PDFObj.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B-\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0010\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J\u0016\u0010 \u001a\u00020!2\u0006\u0010\u0017\u001a\u00020\u00112\u0006\u0010\u001a\u001a\u00020\u0011R\u0014\u0010\u0006\u001a\u00020\u0007X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0016\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u00020\u00148VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016R\u0011\u0010\u0017\u001a\u00020\u00118F\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0019R\u0011\u0010\u001a\u001a\u00020\u00118F\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u0019\u00a8\u0006\""
    }
    d2 = {
        "Lcom/metamoji/pdf/core/PDFStream;",
        "Lcom/metamoji/pdf/core/PDFDictionary;",
        "dic",
        "",
        "",
        "Lcom/metamoji/pdf/core/PDFObj;",
        "_doc",
        "Lcom/metamoji/pdf/core/IPDFDocument;",
        "_cryptoKey",
        "",
        "<init>",
        "(Ljava/util/Map;Lcom/metamoji/pdf/core/IPDFDocument;[B)V",
        "get_doc",
        "()Lcom/metamoji/pdf/core/IPDFDocument;",
        "get_cryptoKey",
        "()[B",
        "_offset",
        "",
        "_length",
        "type",
        "Lcom/metamoji/pdf/core/PDFObj$Type;",
        "getType",
        "()Lcom/metamoji/pdf/core/PDFObj$Type;",
        "offset",
        "getOffset",
        "()J",
        "length",
        "getLength",
        "openStream",
        "Lcom/metamoji/pdf/core/PDFInputStream;",
        "exclude",
        "",
        "setRange",
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
.field private final _cryptoKey:[B

.field private final _doc:Lcom/metamoji/pdf/core/IPDFDocument;

.field private _length:J

.field private _offset:J


# direct methods
.method public constructor <init>(Ljava/util/Map;Lcom/metamoji/pdf/core/IPDFDocument;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/metamoji/pdf/core/PDFObj;",
            ">;",
            "Lcom/metamoji/pdf/core/IPDFDocument;",
            "[B)V"
        }
    .end annotation

    const-string v0, "dic"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_doc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    invoke-direct {p0, p1}, Lcom/metamoji/pdf/core/PDFDictionary;-><init>(Ljava/util/Map;)V

    iput-object p2, p0, Lcom/metamoji/pdf/core/PDFStream;->_doc:Lcom/metamoji/pdf/core/IPDFDocument;

    iput-object p3, p0, Lcom/metamoji/pdf/core/PDFStream;->_cryptoKey:[B

    return-void
.end method


# virtual methods
.method public final getLength()J
    .locals 2

    .line 248
    iget-wide v0, p0, Lcom/metamoji/pdf/core/PDFStream;->_length:J

    return-wide v0
.end method

.method public final getOffset()J
    .locals 2

    .line 247
    iget-wide v0, p0, Lcom/metamoji/pdf/core/PDFStream;->_offset:J

    return-wide v0
.end method

.method public getType()Lcom/metamoji/pdf/core/PDFObj$Type;
    .locals 1

    .line 245
    sget-object v0, Lcom/metamoji/pdf/core/PDFObj$Type;->STREAM:Lcom/metamoji/pdf/core/PDFObj$Type;

    return-object v0
.end method

.method protected final get_cryptoKey()[B
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/metamoji/pdf/core/PDFStream;->_cryptoKey:[B

    return-object v0
.end method

.method protected final get_doc()Lcom/metamoji/pdf/core/IPDFDocument;
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/metamoji/pdf/core/PDFStream;->_doc:Lcom/metamoji/pdf/core/IPDFDocument;

    return-object v0
.end method

.method public openStream(I)Lcom/metamoji/pdf/core/PDFInputStream;
    .locals 11

    .line 251
    const-string v0, "F"

    invoke-virtual {p0, v0}, Lcom/metamoji/pdf/core/PDFStream;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/metamoji/pdf/core/PDFStream;->_doc:Lcom/metamoji/pdf/core/IPDFDocument;

    iget-wide v1, p0, Lcom/metamoji/pdf/core/PDFStream;->_offset:J

    iget-wide v3, p0, Lcom/metamoji/pdf/core/PDFStream;->_length:J

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/metamoji/pdf/core/IPDFDocument;->openStream(JJ)Lcom/metamoji/pdf/core/PDFInputStream;

    move-result-object v6

    .line 254
    iget-object v9, p0, Lcom/metamoji/pdf/core/PDFStream;->_doc:Lcom/metamoji/pdf/core/IPDFDocument;

    iget-object v10, p0, Lcom/metamoji/pdf/core/PDFStream;->_cryptoKey:[B

    const/4 v8, 0x0

    move-object v5, p0

    move v7, p1

    invoke-virtual/range {v5 .. v10}, Lcom/metamoji/pdf/core/PDFStream;->filterStream(Lcom/metamoji/pdf/core/PDFInputStream;IZLcom/metamoji/pdf/core/IPDFDocument;[B)Lcom/metamoji/pdf/core/PDFInputStream;

    move-result-object p1

    return-object p1

    .line 251
    :cond_0
    new-instance p1, Lcom/metamoji/pdf/core/PDFException;

    const-string v0, "external file stream is not supported"

    invoke-direct {p1, v0}, Lcom/metamoji/pdf/core/PDFException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setRange(JJ)V
    .locals 0

    .line 258
    iput-wide p1, p0, Lcom/metamoji/pdf/core/PDFStream;->_offset:J

    .line 259
    iput-wide p3, p0, Lcom/metamoji/pdf/core/PDFStream;->_length:J

    return-void
.end method
