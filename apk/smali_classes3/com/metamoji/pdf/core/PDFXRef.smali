.class public final Lcom/metamoji/pdf/core/PDFXRef;
.super Ljava/lang/Object;
.source "PDFXRef.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/pdf/core/PDFXRef$Entry;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001:\u0001*B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J \u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u0017\u001a\u00020\tJ\u000e\u0010\u0018\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014J\u001e\u0010\u0019\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u001a\u001a\u00020\r2\u0006\u0010\u001b\u001a\u00020\rJ\u0018\u0010\u001c\u001a\u00020\u00122\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J \u0010\u001f\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010 \u001a\u00020\u00122\u0006\u0010!\u001a\u00020\tH\u0002J \u0010\"\u001a\u00020#2\u0006\u0010\u001a\u001a\u00020\r2\u0006\u0010\u001b\u001a\u00020\r2\u0006\u0010$\u001a\u00020\u0016H\u0002J \u0010%\u001a\u00020#2\u0006\u0010\u001a\u001a\u00020\r2\u0006\u0010&\u001a\u00020\r2\u0006\u0010\'\u001a\u00020\rH\u0002J\u0018\u0010(\u001a\u00020#2\u0006\u0010&\u001a\u00020\r2\u0006\u0010)\u001a\u00020\u0012H\u0002R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R&\u0010\n\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\r0\u000c\u0012\u0004\u0012\u00020\u000e0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u000f\u001a\u00020\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006+"
    }
    d2 = {
        "Lcom/metamoji/pdf/core/PDFXRef;",
        "",
        "_doc",
        "Lcom/metamoji/pdf/core/IPDFDocument;",
        "<init>",
        "(Lcom/metamoji/pdf/core/IPDFDocument;)V",
        "get_doc",
        "()Lcom/metamoji/pdf/core/IPDFDocument;",
        "_init",
        "",
        "_table",
        "",
        "Lkotlin/Pair;",
        "",
        "Lcom/metamoji/pdf/core/PDFXRef$Entry;",
        "isInit",
        "()Z",
        "read",
        "Lcom/metamoji/pdf/core/PDFObj;",
        "file",
        "Lcom/metamoji/pdf/IPDFFile;",
        "pos",
        "",
        "xrefstm",
        "readSequential",
        "getObj",
        "id",
        "gen",
        "readTable",
        "parser",
        "Lcom/metamoji/pdf/core/PDFParser;",
        "readStream",
        "xref",
        "noprev",
        "add",
        "",
        "offset",
        "addCompressed",
        "strm",
        "index",
        "decodeObjectStream",
        "objStrm",
        "Entry",
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

.field private _init:Z

.field private final _table:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/metamoji/pdf/core/PDFXRef$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/metamoji/pdf/core/IPDFDocument;)V
    .locals 1

    const-string v0, "_doc"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/pdf/core/PDFXRef;->_doc:Lcom/metamoji/pdf/core/IPDFDocument;

    .line 13
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/metamoji/pdf/core/PDFXRef;->_table:Ljava/util/Map;

    return-void
.end method

.method private final add(IIJ)V
    .locals 8

    .line 181
    iget-object v0, p0, Lcom/metamoji/pdf/core/PDFXRef;->_table:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/metamoji/pdf/core/PDFXRef;->_table:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    new-instance v1, Lcom/metamoji/pdf/core/PDFXRef$Entry;

    const/4 v6, 0x5

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-wide v3, p3

    invoke-direct/range {v1 .. v7}, Lcom/metamoji/pdf/core/PDFXRef$Entry;-><init>(IJLcom/metamoji/pdf/core/PDFObj;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private final addCompressed(III)V
    .locals 8

    .line 187
    iget-object v0, p0, Lcom/metamoji/pdf/core/PDFXRef;->_table:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/metamoji/pdf/core/PDFXRef;->_table:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    new-instance v1, Lcom/metamoji/pdf/core/PDFXRef$Entry;

    int-to-long v3, p3

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    move v2, p2

    invoke-direct/range {v1 .. v7}, Lcom/metamoji/pdf/core/PDFXRef$Entry;-><init>(IJLcom/metamoji/pdf/core/PDFObj;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private final decodeObjectStream(ILcom/metamoji/pdf/core/PDFObj;)V
    .locals 5

    .line 193
    new-instance v0, Lcom/metamoji/pdf/core/ObjectStreamReader;

    iget-object v1, p0, Lcom/metamoji/pdf/core/PDFXRef;->_doc:Lcom/metamoji/pdf/core/IPDFDocument;

    invoke-direct {v0, p2, v1}, Lcom/metamoji/pdf/core/ObjectStreamReader;-><init>(Lcom/metamoji/pdf/core/PDFObj;Lcom/metamoji/pdf/core/IPDFDocument;)V

    check-cast v0, Ljava/io/Closeable;

    :try_start_0
    move-object p2, v0

    check-cast p2, Lcom/metamoji/pdf/core/ObjectStreamReader;

    .line 194
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/metamoji/pdf/core/ObjectStreamReader;->next()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 195
    new-instance v1, Lcom/metamoji/pdf/core/PDFParser;

    move-object v3, p2

    check-cast v3, Lcom/metamoji/pdf/core/PDFInputStream;

    iget-object v4, p0, Lcom/metamoji/pdf/core/PDFXRef;->_doc:Lcom/metamoji/pdf/core/IPDFDocument;

    invoke-direct {v1, v3, v4}, Lcom/metamoji/pdf/core/PDFParser;-><init>(Lcom/metamoji/pdf/core/PDFInputStream;Lcom/metamoji/pdf/core/IPDFDocument;)V

    .line 196
    invoke-virtual {v1, v2}, Lcom/metamoji/pdf/core/PDFParser;->readObject([B)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/metamoji/pdf/core/PDFObj;->Companion:Lcom/metamoji/pdf/core/PDFObj$Companion;

    invoke-virtual {v1}, Lcom/metamoji/pdf/core/PDFObj$Companion;->getNull()Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v1

    .line 198
    :cond_1
    iget-object v2, p0, Lcom/metamoji/pdf/core/PDFXRef;->_table:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/metamoji/pdf/core/ObjectStreamReader;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/pdf/core/PDFXRef$Entry;

    if-nez v2, :cond_2

    goto :goto_0

    .line 199
    :cond_2
    invoke-virtual {v2}, Lcom/metamoji/pdf/core/PDFXRef$Entry;->getStrm()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 201
    invoke-virtual {v2, v1}, Lcom/metamoji/pdf/core/PDFXRef$Entry;->setObj(Lcom/metamoji/pdf/core/PDFObj;)V

    goto :goto_0

    .line 203
    :cond_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    invoke-static {v0, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public static synthetic read$default(Lcom/metamoji/pdf/core/PDFXRef;Lcom/metamoji/pdf/IPDFFile;JZILjava/lang/Object;)Lcom/metamoji/pdf/core/PDFObj;
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 17
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/metamoji/pdf/core/PDFXRef;->read(Lcom/metamoji/pdf/IPDFFile;JZ)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p0

    return-object p0
.end method

.method private final readStream(Lcom/metamoji/pdf/IPDFFile;Lcom/metamoji/pdf/core/PDFObj;Z)Lcom/metamoji/pdf/core/PDFObj;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 133
    const-string v2, "Prev"

    const-string v3, "Index"

    new-instance v4, Lcom/metamoji/pdf/core/WReader;

    invoke-direct {v4, v0}, Lcom/metamoji/pdf/core/WReader;-><init>(Lcom/metamoji/pdf/core/PDFObj;)V

    move-object v8, v4

    check-cast v8, Ljava/io/Closeable;

    :try_start_0
    move-object v4, v8

    check-cast v4, Lcom/metamoji/pdf/core/WReader;

    .line 134
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/List;

    .line 135
    invoke-virtual {v0, v3}, Lcom/metamoji/pdf/core/PDFObj;->contains(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x0

    const/4 v9, 0x2

    if-nez v6, :cond_0

    .line 136
    const-string v3, "Size"

    invoke-virtual {v0, v3}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/pdf/core/PDFObj;->intVal()I

    move-result v3

    .line 137
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v6, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 139
    :cond_0
    invoke-virtual {v0, v3}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v3

    .line 140
    invoke-virtual {v3}, Lcom/metamoji/pdf/core/PDFObj;->getCount()I

    move-result v6

    div-int/2addr v6, v9

    move v10, v7

    :goto_0
    if-ge v10, v6, :cond_1

    mul-int/lit8 v11, v10, 0x2

    .line 142
    invoke-virtual {v3, v11}, Lcom/metamoji/pdf/core/PDFObj;->get(I)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v12

    invoke-virtual {v12}, Lcom/metamoji/pdf/core/PDFObj;->intVal()I

    move-result v12

    add-int/lit8 v11, v11, 0x1

    .line 143
    invoke-virtual {v3, v11}, Lcom/metamoji/pdf/core/PDFObj;->get(I)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v11

    invoke-virtual {v11}, Lcom/metamoji/pdf/core/PDFObj;->intVal()I

    move-result v11

    .line 144
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v12, v11}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 148
    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/Pair;

    invoke-virtual {v5}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-virtual {v5}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    move v10, v7

    :goto_2
    if-ge v10, v5, :cond_2

    .line 150
    invoke-virtual {v4}, Lcom/metamoji/pdf/core/WReader;->next()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 154
    invoke-virtual {v4, v7}, Lcom/metamoji/pdf/core/WReader;->get(I)J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v13, v11, v13

    if-eqz v13, :cond_4

    const-wide/16 v13, 0x1

    cmp-long v13, v11, v13

    const/4 v14, 0x1

    if-nez v13, :cond_3

    .line 157
    invoke-virtual {v4, v14}, Lcom/metamoji/pdf/core/WReader;->get(I)J

    move-result-wide v11

    .line 158
    invoke-virtual {v4, v9}, Lcom/metamoji/pdf/core/WReader;->get(I)J

    move-result-wide v13

    long-to-int v13, v13

    add-int v14, v6, v10

    .line 159
    invoke-direct {v1, v14, v13, v11, v12}, Lcom/metamoji/pdf/core/PDFXRef;->add(IIJ)V

    goto :goto_3

    :cond_3
    const-wide/16 v15, 0x2

    cmp-long v11, v11, v15

    if-nez v11, :cond_4

    .line 162
    invoke-virtual {v4, v14}, Lcom/metamoji/pdf/core/WReader;->get(I)J

    move-result-wide v11

    long-to-int v11, v11

    .line 163
    invoke-virtual {v4, v9}, Lcom/metamoji/pdf/core/WReader;->get(I)J

    move-result-wide v12

    long-to-int v12, v12

    add-int v13, v6, v10

    .line 164
    invoke-direct {v1, v13, v11, v12}, Lcom/metamoji/pdf/core/PDFXRef;->addCompressed(III)V

    :cond_4
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 151
    :cond_5
    new-instance v0, Lcom/metamoji/pdf/core/PDFException;

    const-string/jumbo v2, "stream is unexpectedly end"

    invoke-direct {v0, v2}, Lcom/metamoji/pdf/core/PDFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    if-nez p3, :cond_7

    .line 171
    invoke-virtual {v0, v2}, Lcom/metamoji/pdf/core/PDFObj;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 172
    invoke-virtual {v0, v2}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/pdf/core/PDFObj;->longVal()J

    move-result-wide v3

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object/from16 v2, p1

    .line 173
    invoke-static/range {v1 .. v7}, Lcom/metamoji/pdf/core/PDFXRef;->read$default(Lcom/metamoji/pdf/core/PDFXRef;Lcom/metamoji/pdf/IPDFFile;JZILjava/lang/Object;)Lcom/metamoji/pdf/core/PDFObj;

    .line 175
    :cond_7
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    .line 133
    invoke-static {v8, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :catchall_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v8, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private final readTable(Lcom/metamoji/pdf/core/PDFParser;Lcom/metamoji/pdf/IPDFFile;)Lcom/metamoji/pdf/core/PDFObj;
    .locals 12

    .line 90
    invoke-virtual {p1}, Lcom/metamoji/pdf/core/PDFParser;->eatEOL()V

    .line 92
    invoke-virtual {p1}, Lcom/metamoji/pdf/core/PDFParser;->getRawPos()J

    move-result-wide v0

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 94
    invoke-static {p1, v2, v3, v4}, Lcom/metamoji/pdf/core/PDFParser;->eatInt$default(Lcom/metamoji/pdf/core/PDFParser;ZILjava/lang/Object;)I

    move-result v5

    if-ltz v5, :cond_4

    .line 96
    invoke-static {p1, v2, v3, v4}, Lcom/metamoji/pdf/core/PDFParser;->eatInt$default(Lcom/metamoji/pdf/core/PDFParser;ZILjava/lang/Object;)I

    move-result v0

    .line 97
    invoke-virtual {p1}, Lcom/metamoji/pdf/core/PDFParser;->eatEOL()V

    const/16 v1, 0x14

    .line 99
    new-array v6, v1, [B

    move v7, v2

    :goto_1
    if-ge v7, v0, :cond_3

    .line 101
    invoke-virtual {p1, v6, v2, v1}, Lcom/metamoji/pdf/core/PDFParser;->read([BII)I

    move-result v8

    const-string v9, "failed to read xref table"

    if-lt v8, v1, :cond_2

    .line 104
    invoke-static {v6}, Lcom/metamoji/pdf/core/PDFParserKt;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v8

    .line 105
    invoke-static {}, Lcom/metamoji/pdf/core/PDFXRefKt;->access$getXREF_ENTRY$p()Lkotlin/text/Regex;

    move-result-object v10

    check-cast v8, Ljava/lang/CharSequence;

    const/4 v11, 0x2

    invoke-static {v10, v8, v2, v11, v4}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 106
    invoke-interface {v8}, Lkotlin/text/MatchResult;->getGroups()Lkotlin/text/MatchGroupCollection;

    move-result-object v9

    const/4 v10, 0x3

    invoke-interface {v9, v10}, Lkotlin/text/MatchGroupCollection;->get(I)Lkotlin/text/MatchGroup;

    move-result-object v9

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v9}, Lkotlin/text/MatchGroup;->getValue()Ljava/lang/String;

    move-result-object v9

    const-string v10, "n"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 107
    invoke-interface {v8}, Lkotlin/text/MatchResult;->getGroups()Lkotlin/text/MatchGroupCollection;

    move-result-object v9

    invoke-interface {v9, v3}, Lkotlin/text/MatchGroupCollection;->get(I)Lkotlin/text/MatchGroup;

    move-result-object v9

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v9}, Lkotlin/text/MatchGroup;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 108
    invoke-interface {v8}, Lkotlin/text/MatchResult;->getGroups()Lkotlin/text/MatchGroupCollection;

    move-result-object v8

    invoke-interface {v8, v11}, Lkotlin/text/MatchGroupCollection;->get(I)Lkotlin/text/MatchGroup;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v8}, Lkotlin/text/MatchGroup;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    add-int v11, v5, v7

    .line 109
    invoke-direct {p0, v11, v8, v9, v10}, Lcom/metamoji/pdf/core/PDFXRef;->add(IIJ)V

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 105
    :cond_1
    new-instance p1, Lcom/metamoji/pdf/core/PDFException;

    invoke-direct {p1, v9}, Lcom/metamoji/pdf/core/PDFException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 102
    :cond_2
    new-instance p1, Lcom/metamoji/pdf/core/PDFException;

    invoke-direct {p1, v9}, Lcom/metamoji/pdf/core/PDFException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 113
    :cond_3
    invoke-virtual {p1}, Lcom/metamoji/pdf/core/PDFParser;->getRawPos()J

    move-result-wide v0

    goto/16 :goto_0

    .line 115
    :cond_4
    invoke-virtual {p1, v0, v1}, Lcom/metamoji/pdf/core/PDFParser;->setRawPos(J)V

    .line 117
    iput-boolean v3, p0, Lcom/metamoji/pdf/core/PDFXRef;->_init:Z

    .line 119
    invoke-virtual {p1}, Lcom/metamoji/pdf/core/PDFParser;->readTrailer()Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p1

    .line 120
    const-string v0, "XRefStm"

    invoke-virtual {p1, v0}, Lcom/metamoji/pdf/core/PDFObj;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 121
    invoke-virtual {p1, v0}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/pdf/core/PDFObj;->longVal()J

    move-result-wide v0

    .line 122
    invoke-virtual {p0, p2, v0, v1, v3}, Lcom/metamoji/pdf/core/PDFXRef;->read(Lcom/metamoji/pdf/IPDFFile;JZ)Lcom/metamoji/pdf/core/PDFObj;

    .line 124
    :cond_5
    const-string v0, "Prev"

    invoke-virtual {p1, v0}, Lcom/metamoji/pdf/core/PDFObj;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 125
    invoke-virtual {p1, v0}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/pdf/core/PDFObj;->longVal()J

    move-result-wide v3

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p2

    .line 126
    invoke-static/range {v1 .. v7}, Lcom/metamoji/pdf/core/PDFXRef;->read$default(Lcom/metamoji/pdf/core/PDFXRef;Lcom/metamoji/pdf/IPDFFile;JZILjava/lang/Object;)Lcom/metamoji/pdf/core/PDFObj;

    :cond_6
    return-object p1
.end method


# virtual methods
.method public final getObj(Lcom/metamoji/pdf/IPDFFile;II)Lcom/metamoji/pdf/core/PDFObj;
    .locals 6

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/metamoji/pdf/core/PDFXRef;->_table:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/pdf/core/PDFXRef$Entry;

    if-nez v0, :cond_0

    sget-object p1, Lcom/metamoji/pdf/core/PDFObj;->Companion:Lcom/metamoji/pdf/core/PDFObj$Companion;

    invoke-virtual {p1}, Lcom/metamoji/pdf/core/PDFObj$Companion;->getNull()Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p1

    return-object p1

    .line 55
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/pdf/core/PDFXRef$Entry;->getObj()Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v1

    if-nez v1, :cond_6

    .line 56
    new-instance v1, Lcom/metamoji/pdf/core/SaveFilePos;

    invoke-direct {v1, p1}, Lcom/metamoji/pdf/core/SaveFilePos;-><init>(Lcom/metamoji/pdf/IPDFFile;)V

    check-cast v1, Ljava/io/Closeable;

    :try_start_0
    move-object v2, v1

    check-cast v2, Lcom/metamoji/pdf/core/SaveFilePos;

    .line 57
    invoke-virtual {v0}, Lcom/metamoji/pdf/core/PDFXRef$Entry;->getStrm()I

    move-result v2

    const/4 v3, 0x0

    if-gez v2, :cond_2

    .line 58
    invoke-virtual {v0}, Lcom/metamoji/pdf/core/PDFXRef$Entry;->getOffset()J

    move-result-wide v4

    invoke-interface {p1, v4, v5}, Lcom/metamoji/pdf/IPDFFile;->seek(J)V

    .line 59
    new-instance v2, Lcom/metamoji/pdf/core/FileInputStream;

    invoke-direct {v2, p1}, Lcom/metamoji/pdf/core/FileInputStream;-><init>(Lcom/metamoji/pdf/IPDFFile;)V

    check-cast v2, Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    move-object p1, v2

    check-cast p1, Lcom/metamoji/pdf/core/FileInputStream;

    .line 60
    new-instance v4, Lcom/metamoji/pdf/core/PDFParser;

    check-cast p1, Lcom/metamoji/pdf/core/PDFInputStream;

    iget-object v5, p0, Lcom/metamoji/pdf/core/PDFXRef;->_doc:Lcom/metamoji/pdf/core/IPDFDocument;

    invoke-direct {v4, p1, v5}, Lcom/metamoji/pdf/core/PDFParser;-><init>(Lcom/metamoji/pdf/core/PDFInputStream;Lcom/metamoji/pdf/core/IPDFDocument;)V

    .line 61
    invoke-virtual {v4}, Lcom/metamoji/pdf/core/PDFParser;->readIndirectObject()Lkotlin/Triple;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/Triple;->component1()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/pdf/core/PDFObj;

    invoke-virtual {p1}, Lkotlin/Triple;->component2()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-virtual {p1}, Lkotlin/Triple;->component3()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-ne p2, v5, :cond_1

    if-ne p3, p1, :cond_1

    .line 63
    invoke-virtual {v0, v4}, Lcom/metamoji/pdf/core/PDFXRef$Entry;->setObj(Lcom/metamoji/pdf/core/PDFObj;)V

    .line 64
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    :try_start_2
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 62
    :cond_1
    :try_start_3
    new-instance p1, Lcom/metamoji/pdf/core/PDFException;

    const-string p2, "bad xref"

    invoke-direct {p1, p2}, Lcom/metamoji/pdf/core/PDFException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    .line 59
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p2

    :try_start_5
    invoke-static {v2, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2

    :cond_2
    if-nez p3, :cond_5

    .line 72
    invoke-virtual {v0}, Lcom/metamoji/pdf/core/PDFXRef$Entry;->getStrm()I

    move-result p2

    const/4 p3, 0x0

    .line 73
    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/pdf/core/PDFXRef;->getObj(Lcom/metamoji/pdf/IPDFFile;II)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p1

    .line 74
    invoke-virtual {p1}, Lcom/metamoji/pdf/core/PDFObj;->getType()Lcom/metamoji/pdf/core/PDFObj$Type;

    move-result-object p3

    sget-object v2, Lcom/metamoji/pdf/core/PDFObj$Type;->STREAM:Lcom/metamoji/pdf/core/PDFObj$Type;

    if-ne p3, v2, :cond_4

    .line 77
    invoke-direct {p0, p2, p1}, Lcom/metamoji/pdf/core/PDFXRef;->decodeObjectStream(ILcom/metamoji/pdf/core/PDFObj;)V

    .line 78
    invoke-virtual {v0}, Lcom/metamoji/pdf/core/PDFXRef$Entry;->getObj()Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 82
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 56
    invoke-static {v1, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 79
    :cond_3
    :try_start_6
    new-instance p1, Lcom/metamoji/pdf/core/PDFException;

    const-string p2, "object stream is broken"

    invoke-direct {p1, p2}, Lcom/metamoji/pdf/core/PDFException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 75
    :cond_4
    new-instance p1, Lcom/metamoji/pdf/core/PDFException;

    const-string p2, "bad object stream"

    invoke-direct {p1, p2}, Lcom/metamoji/pdf/core/PDFException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 69
    :cond_5
    new-instance p1, Lcom/metamoji/pdf/core/PDFException;

    const-string p2, "object generation in object stream must be 0"

    invoke-direct {p1, p2}, Lcom/metamoji/pdf/core/PDFException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    .line 56
    :try_start_7
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception p2

    invoke-static {v1, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2

    .line 84
    :cond_6
    :goto_1
    invoke-virtual {v0}, Lcom/metamoji/pdf/core/PDFXRef$Entry;->getObj()Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/metamoji/pdf/core/PDFObj;->resolve()Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p1

    return-object p1
.end method

.method public final get_doc()Lcom/metamoji/pdf/core/IPDFDocument;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/metamoji/pdf/core/PDFXRef;->_doc:Lcom/metamoji/pdf/core/IPDFDocument;

    return-object v0
.end method

.method public final isInit()Z
    .locals 1

    .line 15
    iget-boolean v0, p0, Lcom/metamoji/pdf/core/PDFXRef;->_init:Z

    return v0
.end method

.method public final read(Lcom/metamoji/pdf/IPDFFile;JZ)Lcom/metamoji/pdf/core/PDFObj;
    .locals 1

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-interface {p1, p2, p3}, Lcom/metamoji/pdf/IPDFFile;->seek(J)V

    .line 20
    new-instance p2, Lcom/metamoji/pdf/core/FileInputStream;

    invoke-direct {p2, p1}, Lcom/metamoji/pdf/core/FileInputStream;-><init>(Lcom/metamoji/pdf/IPDFFile;)V

    .line 21
    new-instance p3, Lcom/metamoji/pdf/core/PDFParser;

    check-cast p2, Lcom/metamoji/pdf/core/PDFInputStream;

    iget-object v0, p0, Lcom/metamoji/pdf/core/PDFXRef;->_doc:Lcom/metamoji/pdf/core/IPDFDocument;

    invoke-direct {p3, p2, v0}, Lcom/metamoji/pdf/core/PDFParser;-><init>(Lcom/metamoji/pdf/core/PDFInputStream;Lcom/metamoji/pdf/core/IPDFDocument;)V

    .line 23
    invoke-virtual {p3}, Lcom/metamoji/pdf/core/PDFParser;->readIndirectObject()Lkotlin/Triple;

    move-result-object p2

    invoke-virtual {p2}, Lkotlin/Triple;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/pdf/core/PDFObj;

    invoke-virtual {p2}, Lkotlin/Triple;->component2()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    if-gez p2, :cond_1

    if-nez p4, :cond_0

    .line 28
    invoke-direct {p0, p3, p1}, Lcom/metamoji/pdf/core/PDFXRef;->readTable(Lcom/metamoji/pdf/core/PDFParser;Lcom/metamoji/pdf/IPDFFile;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p1

    return-object p1

    .line 26
    :cond_0
    new-instance p1, Lcom/metamoji/pdf/core/PDFException;

    const-string p2, "invalid xref stream"

    invoke-direct {p1, p2}, Lcom/metamoji/pdf/core/PDFException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 30
    :cond_1
    invoke-direct {p0, p1, v0, p4}, Lcom/metamoji/pdf/core/PDFXRef;->readStream(Lcom/metamoji/pdf/IPDFFile;Lcom/metamoji/pdf/core/PDFObj;Z)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p1

    return-object p1
.end method

.method public final readSequential(Lcom/metamoji/pdf/IPDFFile;)Lcom/metamoji/pdf/core/PDFObj;
    .locals 11

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 35
    invoke-interface {p1, v0, v1}, Lcom/metamoji/pdf/IPDFFile;->seek(J)V

    .line 36
    new-instance v0, Lcom/metamoji/pdf/core/FileInputStream;

    invoke-direct {v0, p1}, Lcom/metamoji/pdf/core/FileInputStream;-><init>(Lcom/metamoji/pdf/IPDFFile;)V

    move-object p1, v0

    check-cast p1, Ljava/io/Closeable;

    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/metamoji/pdf/core/FileInputStream;

    .line 37
    new-instance v1, Lcom/metamoji/pdf/core/PDFParser;

    check-cast v0, Lcom/metamoji/pdf/core/PDFInputStream;

    iget-object v2, p0, Lcom/metamoji/pdf/core/PDFXRef;->_doc:Lcom/metamoji/pdf/core/IPDFDocument;

    invoke-direct {v1, v0, v2}, Lcom/metamoji/pdf/core/PDFParser;-><init>(Lcom/metamoji/pdf/core/PDFInputStream;Lcom/metamoji/pdf/core/IPDFDocument;)V

    .line 40
    :goto_0
    invoke-virtual {v1}, Lcom/metamoji/pdf/core/PDFParser;->readIndirectObject()Lkotlin/Triple;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Triple;->component1()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/metamoji/pdf/core/PDFObj;

    invoke-virtual {v0}, Lkotlin/Triple;->component2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v0}, Lkotlin/Triple;->component3()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-lez v2, :cond_0

    .line 42
    iget-object v10, p0, Lcom/metamoji/pdf/core/PDFXRef;->_table:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    new-instance v3, Lcom/metamoji/pdf/core/PDFXRef$Entry;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/metamoji/pdf/core/PDFXRef$Entry;-><init>(IJLcom/metamoji/pdf/core/PDFObj;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v10, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lcom/metamoji/pdf/core/PDFXRef;->_init:Z

    .line 49
    invoke-virtual {v1}, Lcom/metamoji/pdf/core/PDFParser;->readTrailer()Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :catchall_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {p1, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method
