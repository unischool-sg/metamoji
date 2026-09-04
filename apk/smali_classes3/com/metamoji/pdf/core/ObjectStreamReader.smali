.class final Lcom/metamoji/pdf/core/ObjectStreamReader;
.super Lcom/metamoji/pdf/core/PDFInputStream;
.source "PDFXRef.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0006\u0010\u0012\u001a\u00020\nJ\u0008\u0010\u0013\u001a\u00020\u0014H\u0016J\u0008\u0010\u0015\u001a\u00020\u0014H\u0002J \u0010\u0016\u001a\u00020\n2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\nH\u0016J\u0006\u0010\u001b\u001a\u00020\u001cR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R \u0010\u000e\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\u00100\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/metamoji/pdf/core/ObjectStreamReader;",
        "Lcom/metamoji/pdf/core/PDFInputStream;",
        "obj",
        "Lcom/metamoji/pdf/core/PDFObj;",
        "_doc",
        "Lcom/metamoji/pdf/core/IPDFDocument;",
        "<init>",
        "(Lcom/metamoji/pdf/core/PDFObj;Lcom/metamoji/pdf/core/IPDFDocument;)V",
        "_upper",
        "_first",
        "",
        "_n",
        "_pos",
        "_next",
        "_index",
        "",
        "Lkotlin/Pair;",
        "_i",
        "getId",
        "close",
        "",
        "initIndex",
        "_read",
        "buffer",
        "",
        "offset",
        "maxRead",
        "next",
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
.field private final _doc:Lcom/metamoji/pdf/core/IPDFDocument;

.field private final _first:I

.field private _i:I

.field private final _index:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final _n:I

.field private _next:I

.field private _pos:I

.field private final _upper:Lcom/metamoji/pdf/core/PDFInputStream;


# direct methods
.method public constructor <init>(Lcom/metamoji/pdf/core/PDFObj;Lcom/metamoji/pdf/core/IPDFDocument;)V
    .locals 2

    const-string v0, "obj"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_doc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    invoke-direct {p0}, Lcom/metamoji/pdf/core/PDFInputStream;-><init>()V

    iput-object p2, p0, Lcom/metamoji/pdf/core/ObjectStreamReader;->_doc:Lcom/metamoji/pdf/core/IPDFDocument;

    const/4 p2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 280
    invoke-static {p1, v1, p2, v0}, Lcom/metamoji/pdf/core/PDFObj;->openStream$default(Lcom/metamoji/pdf/core/PDFObj;IILjava/lang/Object;)Lcom/metamoji/pdf/core/PDFInputStream;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/pdf/core/ObjectStreamReader;->_upper:Lcom/metamoji/pdf/core/PDFInputStream;

    .line 281
    const-string p2, "First"

    invoke-virtual {p1, p2}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/pdf/core/PDFObj;->intVal()I

    move-result p2

    iput p2, p0, Lcom/metamoji/pdf/core/ObjectStreamReader;->_first:I

    .line 282
    const-string v0, "N"

    invoke-virtual {p1, v0}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/pdf/core/PDFObj;->intVal()I

    move-result p1

    iput p1, p0, Lcom/metamoji/pdf/core/ObjectStreamReader;->_n:I

    .line 287
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/metamoji/pdf/core/ObjectStreamReader;->_index:Ljava/util/List;

    const/4 p1, -0x1

    .line 288
    iput p1, p0, Lcom/metamoji/pdf/core/ObjectStreamReader;->_i:I

    .line 293
    iput p2, p0, Lcom/metamoji/pdf/core/ObjectStreamReader;->_next:I

    .line 295
    invoke-direct {p0}, Lcom/metamoji/pdf/core/ObjectStreamReader;->initIndex()V

    return-void
.end method

.method private final initIndex()V
    .locals 8

    .line 303
    new-instance v0, Lcom/metamoji/pdf/core/PDFParser;

    move-object v1, p0

    check-cast v1, Lcom/metamoji/pdf/core/PDFInputStream;

    iget-object v2, p0, Lcom/metamoji/pdf/core/ObjectStreamReader;->_doc:Lcom/metamoji/pdf/core/IPDFDocument;

    invoke-direct {v0, v1, v2}, Lcom/metamoji/pdf/core/PDFParser;-><init>(Lcom/metamoji/pdf/core/PDFInputStream;Lcom/metamoji/pdf/core/IPDFDocument;)V

    .line 304
    iget v1, p0, Lcom/metamoji/pdf/core/ObjectStreamReader;->_n:I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    .line 305
    invoke-virtual {v0, v2}, Lcom/metamoji/pdf/core/PDFParser;->eatInt(Z)I

    move-result v4

    .line 306
    invoke-virtual {v0, v2}, Lcom/metamoji/pdf/core/PDFParser;->eatInt(Z)I

    move-result v5

    .line 307
    iget-object v6, p0, Lcom/metamoji/pdf/core/ObjectStreamReader;->_index:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v7, p0, Lcom/metamoji/pdf/core/ObjectStreamReader;->_first:I

    add-int/2addr v7, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/metamoji/pdf/core/ObjectStreamReader;->_index:Ljava/util/List;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7fffffff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public _read([BII)I
    .locals 2

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 313
    iget v0, p0, Lcom/metamoji/pdf/core/ObjectStreamReader;->_next:I

    iget v1, p0, Lcom/metamoji/pdf/core/ObjectStreamReader;->_pos:I

    sub-int/2addr v0, v1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 314
    iget-object v0, p0, Lcom/metamoji/pdf/core/ObjectStreamReader;->_upper:Lcom/metamoji/pdf/core/PDFInputStream;

    invoke-virtual {v0, p1, p2, p3}, Lcom/metamoji/pdf/core/PDFInputStream;->_read([BII)I

    move-result p1

    .line 315
    iget p2, p0, Lcom/metamoji/pdf/core/ObjectStreamReader;->_pos:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/metamoji/pdf/core/ObjectStreamReader;->_pos:I

    return p1
.end method

.method public close()V
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/metamoji/pdf/core/ObjectStreamReader;->_upper:Lcom/metamoji/pdf/core/PDFInputStream;

    invoke-virtual {v0}, Lcom/metamoji/pdf/core/PDFInputStream;->close()V

    return-void
.end method

.method public final getId()I
    .locals 2

    .line 290
    iget-object v0, p0, Lcom/metamoji/pdf/core/ObjectStreamReader;->_index:Ljava/util/List;

    iget v1, p0, Lcom/metamoji/pdf/core/ObjectStreamReader;->_i:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final next()Z
    .locals 6

    .line 320
    iget v0, p0, Lcom/metamoji/pdf/core/ObjectStreamReader;->_i:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/metamoji/pdf/core/ObjectStreamReader;->_i:I

    iget v2, p0, Lcom/metamoji/pdf/core/ObjectStreamReader;->_n:I

    if-lt v0, v2, :cond_0

    const/4 v0, 0x0

    return v0

    .line 322
    :cond_0
    iget-object v2, p0, Lcom/metamoji/pdf/core/ObjectStreamReader;->_index:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 323
    iget v2, p0, Lcom/metamoji/pdf/core/ObjectStreamReader;->_pos:I

    if-lt v0, v2, :cond_1

    .line 324
    iget-object v3, p0, Lcom/metamoji/pdf/core/ObjectStreamReader;->_upper:Lcom/metamoji/pdf/core/PDFInputStream;

    sub-int v2, v0, v2

    int-to-long v4, v2

    invoke-virtual {v3, v4, v5}, Lcom/metamoji/pdf/core/PDFInputStream;->skip(J)J

    .line 325
    iput v0, p0, Lcom/metamoji/pdf/core/ObjectStreamReader;->_pos:I

    .line 326
    iget-object v0, p0, Lcom/metamoji/pdf/core/ObjectStreamReader;->_index:Ljava/util/List;

    iget v2, p0, Lcom/metamoji/pdf/core/ObjectStreamReader;->_i:I

    add-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iput v0, p0, Lcom/metamoji/pdf/core/ObjectStreamReader;->_next:I

    return v1

    .line 323
    :cond_1
    new-instance v0, Lcom/metamoji/pdf/core/PDFException;

    const-string v1, "invalid object stream"

    invoke-direct {v0, v1}, Lcom/metamoji/pdf/core/PDFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
