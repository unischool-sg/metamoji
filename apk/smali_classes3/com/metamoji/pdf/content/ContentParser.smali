.class public final Lcom/metamoji/pdf/content/ContentParser;
.super Lcom/metamoji/pdf/core/PDFParser;
.source "ContentParser.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/pdf/content/ContentParser$BI;,
        Lcom/metamoji/pdf/content/ContentParser$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001:\u0001\u0017B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\u0008\u0010\n\u001a\u00020\u000bH\u0002J\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\rJ\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u000fJ\u0008\u0010\u0010\u001a\u00020\u0011H\u0002J\n\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0002J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0002\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/metamoji/pdf/content/ContentParser;",
        "Lcom/metamoji/pdf/core/PDFParser;",
        "input",
        "Lcom/metamoji/pdf/core/PDFInputStream;",
        "doc",
        "Lcom/metamoji/pdf/core/IPDFDocument;",
        "<init>",
        "(Lcom/metamoji/pdf/core/PDFInputStream;Lcom/metamoji/pdf/core/IPDFDocument;)V",
        "allowIndirectObject",
        "",
        "readInstruction",
        "Lcom/metamoji/pdf/content/Instruction;",
        "getIterator",
        "Lkotlin/sequences/Sequence;",
        "load",
        "",
        "readBI",
        "Lcom/metamoji/pdf/core/PDFObj;",
        "readObject",
        "readIDLine",
        "",
        "buffer",
        "Ljava/io/OutputStream;",
        "BI",
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


# direct methods
.method public constructor <init>(Lcom/metamoji/pdf/core/PDFInputStream;Lcom/metamoji/pdf/core/IPDFDocument;)V
    .locals 1

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "doc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/metamoji/pdf/core/PDFParser;-><init>(Lcom/metamoji/pdf/core/PDFInputStream;Lcom/metamoji/pdf/core/IPDFDocument;)V

    return-void
.end method

.method public static final synthetic access$readInstruction(Lcom/metamoji/pdf/content/ContentParser;)Lcom/metamoji/pdf/content/Instruction;
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/metamoji/pdf/content/ContentParser;->readInstruction()Lcom/metamoji/pdf/content/Instruction;

    move-result-object p0

    return-object p0
.end method

.method private final readBI()Lcom/metamoji/pdf/core/PDFObj;
    .locals 4

    .line 52
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 54
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/metamoji/pdf/content/ContentParser;->readObject()Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v1

    if-nez v1, :cond_3

    .line 62
    invoke-virtual {p0}, Lcom/metamoji/pdf/content/ContentParser;->eat()I

    move-result v1

    .line 63
    invoke-static {v1}, Lcom/metamoji/pdf/core/PDFParserKt;->isWhiteSpace(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 65
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 66
    :cond_1
    move-object v2, v1

    check-cast v2, Ljava/io/OutputStream;

    invoke-direct {p0, v2}, Lcom/metamoji/pdf/content/ContentParser;->readIDLine(Ljava/io/OutputStream;)I

    move-result v2

    if-gtz v2, :cond_1

    .line 69
    new-instance v2, Lcom/metamoji/pdf/content/ContentParser$BI;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const-string/jumbo v3, "toByteArray(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v0, v1}, Lcom/metamoji/pdf/content/ContentParser$BI;-><init>(Ljava/util/Map;[B)V

    check-cast v2, Lcom/metamoji/pdf/core/PDFObj;

    return-object v2

    .line 63
    :cond_2
    const-string v0, "invalid char"

    invoke-static {v0}, Lcom/metamoji/pdf/core/PDFParserKt;->syntaxError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .line 55
    :cond_3
    invoke-virtual {v1}, Lcom/metamoji/pdf/core/PDFObj;->getType()Lcom/metamoji/pdf/core/PDFObj$Type;

    move-result-object v2

    sget-object v3, Lcom/metamoji/pdf/core/PDFObj$Type;->NAME:Lcom/metamoji/pdf/core/PDFObj$Type;

    if-ne v2, v3, :cond_5

    .line 56
    invoke-direct {p0}, Lcom/metamoji/pdf/content/ContentParser;->readObject()Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 57
    invoke-virtual {v2}, Lcom/metamoji/pdf/core/PDFObj;->isNull()Z

    move-result v3

    if-nez v3, :cond_0

    .line 58
    invoke-virtual {v1}, Lcom/metamoji/pdf/core/PDFObj;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 56
    :cond_4
    const-string/jumbo v0, "value expected"

    invoke-static {v0}, Lcom/metamoji/pdf/core/PDFParserKt;->syntaxError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .line 55
    :cond_5
    const-string v0, "key must be a name"

    invoke-static {v0}, Lcom/metamoji/pdf/core/PDFParserKt;->syntaxError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method private final readIDLine(Ljava/io/OutputStream;)I
    .locals 10

    const/4 v0, 0x2

    .line 79
    new-array v1, v0, [B

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    const/4 v3, 0x1

    move v4, v2

    move v5, v4

    .line 84
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/pdf/content/ContentParser;->eat()I

    move-result v6

    add-int/lit8 v7, v4, 0x1

    if-eqz v3, :cond_3

    if-ge v5, v0, :cond_1

    int-to-byte v8, v6

    .line 89
    aget-byte v9, v1, v5

    if-ne v8, v9, :cond_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    move v3, v2

    goto :goto_1

    :cond_1
    if-ltz v6, :cond_2

    .line 95
    invoke-static {v6}, Lcom/metamoji/pdf/core/PDFParserKt;->isWhiteSpace(I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    :goto_1
    if-nez v3, :cond_3

    .line 101
    invoke-virtual {p1, v1, v2, v5}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_3

    :cond_2
    :goto_2
    return v2

    :cond_3
    :goto_3
    if-ltz v6, :cond_8

    if-nez v3, :cond_4

    .line 108
    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write(I)V

    :cond_4
    const/16 v8, 0xa

    if-eq v6, v8, :cond_7

    const/16 v9, 0xd

    if-eq v6, v9, :cond_5

    const/16 v4, 0x20

    if-eq v6, v4, :cond_7

    move v4, v7

    goto :goto_0

    .line 115
    :cond_5
    invoke-virtual {p0}, Lcom/metamoji/pdf/content/ContentParser;->eat()I

    move-result v1

    if-eq v1, v8, :cond_6

    .line 117
    invoke-virtual {p0, v1}, Lcom/metamoji/pdf/content/ContentParser;->back(I)V

    return v7

    .line 119
    :cond_6
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    add-int/2addr v4, v0

    return v4

    :cond_7
    return v7

    .line 105
    :cond_8
    const-string p1, "read error"

    invoke-static {p1}, Lcom/metamoji/pdf/core/PDFParserKt;->syntaxError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1

    :array_0
    .array-data 1
        0x45t
        0x49t
    .end array-data
.end method

.method private final readInstruction()Lcom/metamoji/pdf/content/Instruction;
    .locals 7

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 14
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/pdf/content/ContentParser;->nextToken()Lcom/metamoji/pdf/core/PDFParser$TokenInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;->component1()Lcom/metamoji/pdf/core/PDFParser$TokenType;

    move-result-object v2

    invoke-virtual {v1}, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;->component2()[B

    move-result-object v1

    .line 15
    sget-object v3, Lcom/metamoji/pdf/content/ContentParser$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Lcom/metamoji/pdf/core/PDFParser$TokenType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eq v3, v4, :cond_2

    if-eq v3, v5, :cond_0

    .line 26
    invoke-virtual {p0, v2, v1, v6}, Lcom/metamoji/pdf/content/ContentParser;->tokenToObject(Lcom/metamoji/pdf/core/PDFParser$TokenType;[B[B)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 21
    :cond_0
    const-string v2, "BI"

    invoke-static {v1, v2}, Lcom/metamoji/pdf/core/PDFParserKt;->checkBytes([BLjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 22
    invoke-direct {p0}, Lcom/metamoji/pdf/content/ContentParser;->readBI()Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    :cond_1
    new-instance v2, Lcom/metamoji/pdf/content/Instruction;

    invoke-static {v1}, Lcom/metamoji/pdf/core/PDFParserKt;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lcom/metamoji/pdf/content/Instruction;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v2

    .line 17
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/metamoji/pdf/content/Instruction;

    const-string v1, ""

    invoke-direct {v0, v1, v6, v5, v6}, Lcom/metamoji/pdf/content/Instruction;-><init>(Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 18
    :cond_3
    const-string v0, "abnormal content termination"

    invoke-static {v0}, Lcom/metamoji/pdf/core/PDFParserKt;->syntaxError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method private final readObject()Lcom/metamoji/pdf/core/PDFObj;
    .locals 4

    .line 73
    invoke-virtual {p0}, Lcom/metamoji/pdf/content/ContentParser;->nextToken()Lcom/metamoji/pdf/core/PDFParser$TokenInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;->component1()Lcom/metamoji/pdf/core/PDFParser$TokenType;

    move-result-object v1

    invoke-virtual {v0}, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;->component2()[B

    move-result-object v0

    .line 74
    sget-object v2, Lcom/metamoji/pdf/core/PDFParser$TokenType;->ID:Lcom/metamoji/pdf/core/PDFParser$TokenType;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const-string v2, "ID"

    invoke-static {v0, v2}, Lcom/metamoji/pdf/core/PDFParserKt;->checkBytes([BLjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v3

    .line 75
    :cond_0
    invoke-virtual {p0, v1, v0, v3}, Lcom/metamoji/pdf/content/ContentParser;->tokenToObject(Lcom/metamoji/pdf/core/PDFParser$TokenType;[B[B)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public allowIndirectObject()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getIterator()Lkotlin/sequences/Sequence;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/sequences/Sequence<",
            "Lcom/metamoji/pdf/content/Instruction;",
            ">;"
        }
    .end annotation

    .line 31
    new-instance v0, Lcom/metamoji/pdf/content/ContentParser$getIterator$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/metamoji/pdf/content/ContentParser$getIterator$1;-><init>(Lcom/metamoji/pdf/content/ContentParser;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->sequence(Lkotlin/jvm/functions/Function2;)Lkotlin/sequences/Sequence;

    move-result-object v0

    return-object v0
.end method

.method public final load()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/pdf/content/Instruction;",
            ">;"
        }
    .end annotation

    .line 39
    invoke-virtual {p0}, Lcom/metamoji/pdf/content/ContentParser;->getIterator()Lkotlin/sequences/Sequence;

    move-result-object v0

    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
