.class public Lcom/metamoji/pdf/core/PDFDictionary;
.super Lcom/metamoji/pdf/core/PDFObj;
.source "PDFObj.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\u0008\u0016\u0018\u00002\u00020\u0001B\u001b\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0010\u0010\u000b\u001a\u00020\u00012\u0006\u0010\u000c\u001a\u00020\u0004H\u0016J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000c\u001a\u00020\u0004H\u0016J2\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u000e2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bR\u001a\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u00020\u00088VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR \u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/metamoji/pdf/core/PDFDictionary;",
        "Lcom/metamoji/pdf/core/PDFObj;",
        "_dic",
        "",
        "",
        "<init>",
        "(Ljava/util/Map;)V",
        "type",
        "Lcom/metamoji/pdf/core/PDFObj$Type;",
        "getType",
        "()Lcom/metamoji/pdf/core/PDFObj$Type;",
        "getUnresolved",
        "key",
        "contains",
        "",
        "dic",
        "getDic",
        "()Ljava/util/Map;",
        "filterStream",
        "Lcom/metamoji/pdf/core/PDFInputStream;",
        "reader_",
        "exclude",
        "",
        "abbr",
        "doc",
        "Lcom/metamoji/pdf/core/IPDFDocument;",
        "cryptoKey",
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
.field private final _dic:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/metamoji/pdf/core/PDFObj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/metamoji/pdf/core/PDFObj;",
            ">;)V"
        }
    .end annotation

    const-string v0, "_dic"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    invoke-direct {p0}, Lcom/metamoji/pdf/core/PDFObj;-><init>()V

    iput-object p1, p0, Lcom/metamoji/pdf/core/PDFDictionary;->_dic:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0, p1}, Lcom/metamoji/pdf/core/PDFDictionary;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/pdf/core/PDFObj;->isNull()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final filterStream(Lcom/metamoji/pdf/core/PDFInputStream;IZLcom/metamoji/pdf/core/IPDFDocument;[B)Lcom/metamoji/pdf/core/PDFInputStream;
    .locals 6

    const-string v0, "reader_"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 171
    const-string v1, "Filter"

    invoke-virtual {p0, v1}, Lcom/metamoji/pdf/core/PDFDictionary;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v1

    .line 173
    invoke-virtual {v1}, Lcom/metamoji/pdf/core/PDFObj;->getType()Lcom/metamoji/pdf/core/PDFObj$Type;

    move-result-object v2

    sget-object v3, Lcom/metamoji/pdf/core/PDFObj$Type;->NAME:Lcom/metamoji/pdf/core/PDFObj$Type;

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/metamoji/pdf/core/PDFObj;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 174
    :cond_0
    invoke-virtual {v1}, Lcom/metamoji/pdf/core/PDFObj;->getType()Lcom/metamoji/pdf/core/PDFObj$Type;

    move-result-object v2

    sget-object v3, Lcom/metamoji/pdf/core/PDFObj$Type;->ARRAY:Lcom/metamoji/pdf/core/PDFObj$Type;

    if-ne v2, v3, :cond_1

    .line 175
    invoke-virtual {v1}, Lcom/metamoji/pdf/core/PDFObj;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/pdf/core/PDFObj;

    .line 176
    invoke-virtual {v2}, Lcom/metamoji/pdf/core/PDFObj;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 179
    :cond_1
    invoke-virtual {v1}, Lcom/metamoji/pdf/core/PDFObj;->isNull()Z

    move-result v1

    if-eqz v1, :cond_10

    :cond_2
    :goto_1
    const/4 v1, -0x2

    .line 182
    const-string v2, "Crypt"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq p2, v1, :cond_6

    const/4 v1, -0x1

    if-eq p2, v1, :cond_4

    .line 205
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, p2, :cond_3

    if-lez p2, :cond_8

    .line 209
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, p2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    invoke-interface {v0, v1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    goto :goto_2

    .line 206
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bad exclude param"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 193
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_8

    .line 194
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 195
    const-string v1, "DCTDecode"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 196
    const-string v1, "JPXDecode"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 197
    const-string v1, "CCITTFaxDecode"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    if-eqz p3, :cond_8

    .line 198
    const-string v1, "DCT"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "CCF"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 200
    :cond_5
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->removeLastOrNull(Ljava/util/List;)Ljava/lang/Object;

    goto :goto_2

    .line 184
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_8

    .line 185
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 186
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    invoke-interface {v0, v3, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    goto :goto_2

    .line 188
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 215
    :cond_8
    :goto_2
    const-string p2, "DecodeParms"

    invoke-virtual {p0, p2}, Lcom/metamoji/pdf/core/PDFDictionary;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p2

    .line 216
    invoke-virtual {p2}, Lcom/metamoji/pdf/core/PDFObj;->getType()Lcom/metamoji/pdf/core/PDFObj$Type;

    move-result-object v1

    sget-object v5, Lcom/metamoji/pdf/core/PDFObj$Type;->ARRAY:Lcom/metamoji/pdf/core/PDFObj$Type;

    if-ne v1, v5, :cond_9

    move v1, v3

    goto :goto_3

    :cond_9
    move v1, v4

    :goto_3
    if-eqz p4, :cond_d

    .line 220
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_5

    .line 225
    :cond_a
    invoke-interface {v0, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    if-eqz v1, :cond_b

    .line 226
    invoke-virtual {p2, v4}, Lcom/metamoji/pdf/core/PDFObj;->get(I)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v2

    goto :goto_4

    :cond_b
    move-object v2, p2

    move v3, v4

    .line 227
    :goto_4
    const-string v4, "Identity"

    invoke-virtual {v2, v4}, Lcom/metamoji/pdf/core/PDFObj;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 228
    invoke-interface {p4, v2}, Lcom/metamoji/pdf/core/IPDFDocument;->getCryptFilter(Ljava/lang/String;)Lcom/metamoji/pdf/core/CryptFilter;

    move-result-object p4

    invoke-virtual {p4, p1, p5}, Lcom/metamoji/pdf/core/CryptFilter;->filter(Lcom/metamoji/pdf/core/PDFInputStream;[B)Lcom/metamoji/pdf/core/PDFInputStream;

    move-result-object p1

    move v4, v3

    goto :goto_6

    :cond_c
    :goto_5
    if-eqz p5, :cond_d

    .line 222
    invoke-interface {p4}, Lcom/metamoji/pdf/core/IPDFDocument;->getStmF()Lcom/metamoji/pdf/core/CryptFilter;

    move-result-object p4

    invoke-virtual {p4, p1, p5}, Lcom/metamoji/pdf/core/CryptFilter;->filter(Lcom/metamoji/pdf/core/PDFInputStream;[B)Lcom/metamoji/pdf/core/PDFInputStream;

    move-result-object p1

    .line 232
    :cond_d
    :goto_6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_7
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_f

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    if-eqz v1, :cond_e

    add-int/lit8 v0, v4, 0x1

    .line 233
    invoke-virtual {p2, v4}, Lcom/metamoji/pdf/core/PDFObj;->get(I)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v2

    move v4, v0

    goto :goto_8

    :cond_e
    move-object v2, p2

    .line 234
    :goto_8
    invoke-static {p1, p5, v2, p3}, Lcom/metamoji/pdf/core/FiltersKt;->connectFilter(Lcom/metamoji/pdf/core/PDFInputStream;Ljava/lang/String;Lcom/metamoji/pdf/core/PDFObj;Z)Lcom/metamoji/pdf/core/PDFInputStream;

    move-result-object p1

    goto :goto_7

    :cond_f
    return-object p1

    .line 179
    :cond_10
    new-instance p1, Lcom/metamoji/pdf/core/PDFException;

    const-string/jumbo p2, "unsupported stream filter"

    invoke-direct {p1, p2}, Lcom/metamoji/pdf/core/PDFException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDic()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/metamoji/pdf/core/PDFObj;",
            ">;"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/metamoji/pdf/core/PDFDictionary;->_dic:Ljava/util/Map;

    return-object v0
.end method

.method public getType()Lcom/metamoji/pdf/core/PDFObj$Type;
    .locals 1

    .line 159
    sget-object v0, Lcom/metamoji/pdf/core/PDFObj$Type;->DICTIONARY:Lcom/metamoji/pdf/core/PDFObj$Type;

    return-object v0
.end method

.method public getUnresolved(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/metamoji/pdf/core/PDFDictionary;->_dic:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/pdf/core/PDFObj;

    if-nez p1, :cond_0

    sget-object p1, Lcom/metamoji/pdf/core/PDFObj;->Companion:Lcom/metamoji/pdf/core/PDFObj$Companion;

    invoke-virtual {p1}, Lcom/metamoji/pdf/core/PDFObj$Companion;->getNull()Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p1

    :cond_0
    return-object p1
.end method
