.class public Lcom/metamoji/pdf/core/PDFParser;
.super Ljava/lang/Object;
.source "PDFParser.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/pdf/core/PDFParser$Companion;,
        Lcom/metamoji/pdf/core/PDFParser$TokenInfo;,
        Lcom/metamoji/pdf/core/PDFParser$TokenType;,
        Lcom/metamoji/pdf/core/PDFParser$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008#\u0008\u0016\u0018\u0000 M2\u00020\u0001:\u0003KLMB\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0018\u0010\u001d\u001a\u0014\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00130\u001eJ\u0012\u0010 \u001a\u0004\u0018\u00010\u001f2\u0008\u0010!\u001a\u0004\u0018\u00010\"J\u001c\u0010 \u001a\u0004\u0018\u00010\u001f2\u0008\u0010!\u001a\u0004\u0018\u00010\"2\u0006\u0010#\u001a\u00020$H\u0002J\u001c\u0010 \u001a\u0004\u0018\u00010\u001f2\u0008\u0010!\u001a\u0004\u0018\u00010\"2\u0006\u0010#\u001a\u00020%H\u0002J\u0006\u0010&\u001a\u00020\u001fJ\u0006\u0010\'\u001a\u00020(J\u0010\u0010)\u001a\u00020\u00132\u0008\u0008\u0002\u0010*\u001a\u00020+J\u001e\u0010,\u001a\u00020\u00132\u0006\u0010-\u001a\u00020\"2\u0006\u0010.\u001a\u00020\u00132\u0006\u0010/\u001a\u00020\u0013J\u000e\u00100\u001a\u00020(2\u0006\u00101\u001a\u00020\rJ\u0008\u00102\u001a\u00020\u001aH\u0004J\u0010\u00103\u001a\u00020$2\u0006\u00104\u001a\u00020\"H\u0004J\u0008\u00105\u001a\u00020\u001aH\u0004J\u0012\u00106\u001a\u00020\"2\u0008\u0010!\u001a\u0004\u0018\u00010\"H\u0004J\u0012\u00107\u001a\u00020\"2\u0008\u0010!\u001a\u0004\u0018\u00010\"H\u0004J\u0008\u00108\u001a\u00020%H\u0004J\u001a\u00109\u001a\u00020\u001f2\u0006\u0010:\u001a\u00020\u001f2\u0008\u0010!\u001a\u0004\u0018\u00010\"H\u0004J\u0008\u0010;\u001a\u00020\u0013H\u0004J\u0010\u0010<\u001a\u00020\u001f2\u0006\u0010=\u001a\u00020\u0013H\u0004J\"\u0010>\u001a\u00020\u001f2\u0006\u0010?\u001a\u00020$2\u0006\u00104\u001a\u00020\"2\u0008\u0010!\u001a\u0004\u0018\u00010\"H\u0004J\u0008\u0010@\u001a\u00020\u0013H\u0004J\u0008\u0010A\u001a\u00020\u0013H\u0004J\u0010\u0010B\u001a\u00020(2\u0006\u0010C\u001a\u00020\u0013H\u0004J\u0008\u0010H\u001a\u00020(H\u0016J\u0008\u0010I\u001a\u00020+H\u0016J\u0008\u0010J\u001a\u00020+H\u0016R\u0014\u0010\u0002\u001a\u00020\u0003X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0014\u0010\u0004\u001a\u00020\u0005X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u001a\u0010\u000c\u001a\u00020\rX\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0013X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u0019X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR$\u0010E\u001a\u00020\r2\u0006\u0010D\u001a\u00020\r8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008F\u0010\u000f\"\u0004\u0008G\u0010\u0011\u00a8\u0006N"
    }
    d2 = {
        "Lcom/metamoji/pdf/core/PDFParser;",
        "",
        "_input",
        "Lcom/metamoji/pdf/core/PDFInputStream;",
        "_doc",
        "Lcom/metamoji/pdf/core/IPDFDocument;",
        "<init>",
        "(Lcom/metamoji/pdf/core/PDFInputStream;Lcom/metamoji/pdf/core/IPDFDocument;)V",
        "get_input",
        "()Lcom/metamoji/pdf/core/PDFInputStream;",
        "get_doc",
        "()Lcom/metamoji/pdf/core/IPDFDocument;",
        "_pos",
        "",
        "get_pos",
        "()J",
        "set_pos",
        "(J)V",
        "_unget",
        "",
        "get_unget",
        "()I",
        "set_unget",
        "(I)V",
        "_queue",
        "",
        "Lcom/metamoji/pdf/core/PDFParser$TokenInfo;",
        "get_queue",
        "()Ljava/util/List;",
        "readIndirectObject",
        "Lkotlin/Triple;",
        "Lcom/metamoji/pdf/core/PDFObj;",
        "readObject",
        "cryptoKey",
        "",
        "delimiter",
        "Lcom/metamoji/pdf/core/PDFParser$TokenType;",
        "",
        "readTrailer",
        "eatEOL",
        "",
        "eatInt",
        "inLine",
        "",
        "read",
        "buffer",
        "offset",
        "maxRead",
        "seekTo",
        "pos",
        "nextToken",
        "checkTokenType",
        "token",
        "getToken",
        "readLiteralString",
        "readHexString",
        "readName",
        "readStreamObject",
        "dic",
        "findEndStream",
        "checkAfterInt",
        "top",
        "tokenToObject",
        "type",
        "getChar",
        "eat",
        "back",
        "ch",
        "value",
        "rawPos",
        "getRawPos",
        "setRawPos",
        "handleEOF",
        "allowIndirectObject",
        "isPostScript",
        "TokenType",
        "TokenInfo",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/metamoji/pdf/core/PDFParser$Companion;

.field public static final EOF:I = -0x1


# instance fields
.field private final _doc:Lcom/metamoji/pdf/core/IPDFDocument;

.field private final _input:Lcom/metamoji/pdf/core/PDFInputStream;

.field private _pos:J

.field private final _queue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/pdf/core/PDFParser$TokenInfo;",
            ">;"
        }
    .end annotation
.end field

.field private _unget:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/pdf/core/PDFParser$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/pdf/core/PDFParser$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/pdf/core/PDFParser;->Companion:Lcom/metamoji/pdf/core/PDFParser$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/pdf/core/PDFInputStream;Lcom/metamoji/pdf/core/IPDFDocument;)V
    .locals 1

    const-string v0, "_input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_doc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/pdf/core/PDFParser;->_input:Lcom/metamoji/pdf/core/PDFInputStream;

    iput-object p2, p0, Lcom/metamoji/pdf/core/PDFParser;->_doc:Lcom/metamoji/pdf/core/IPDFDocument;

    const/4 p1, -0x1

    .line 134
    iput p1, p0, Lcom/metamoji/pdf/core/PDFParser;->_unget:I

    .line 135
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/metamoji/pdf/core/PDFParser;->_queue:Ljava/util/List;

    return-void
.end method

.method public static synthetic eatInt$default(Lcom/metamoji/pdf/core/PDFParser;ZILjava/lang/Object;)I
    .locals 0

    if-nez p3, :cond_1

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    .line 240
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/pdf/core/PDFParser;->eatInt(Z)I

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: eatInt"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final readObject([BLcom/metamoji/pdf/core/PDFParser$TokenType;)Lcom/metamoji/pdf/core/PDFObj;
    .locals 2

    .line 194
    invoke-virtual {p0}, Lcom/metamoji/pdf/core/PDFParser;->nextToken()Lcom/metamoji/pdf/core/PDFParser$TokenInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;->component1()Lcom/metamoji/pdf/core/PDFParser$TokenType;

    move-result-object v1

    invoke-virtual {v0}, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;->component2()[B

    move-result-object v0

    if-ne v1, p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 196
    :cond_0
    invoke-virtual {p0, v1, v0, p1}, Lcom/metamoji/pdf/core/PDFParser;->tokenToObject(Lcom/metamoji/pdf/core/PDFParser$TokenType;[B[B)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p1

    return-object p1
.end method

.method private final readObject([BLjava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;
    .locals 3

    .line 200
    invoke-virtual {p0}, Lcom/metamoji/pdf/core/PDFParser;->nextToken()Lcom/metamoji/pdf/core/PDFParser$TokenInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;->component1()Lcom/metamoji/pdf/core/PDFParser$TokenType;

    move-result-object v1

    invoke-virtual {v0}, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;->component2()[B

    move-result-object v0

    .line 201
    sget-object v2, Lcom/metamoji/pdf/core/PDFParser$TokenType;->ID:Lcom/metamoji/pdf/core/PDFParser$TokenType;

    if-ne v1, v2, :cond_0

    invoke-static {v0, p2}, Lcom/metamoji/pdf/core/PDFParserKt;->checkBytes([BLjava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 202
    :cond_0
    invoke-virtual {p0, v1, v0, p1}, Lcom/metamoji/pdf/core/PDFParser;->tokenToObject(Lcom/metamoji/pdf/core/PDFParser$TokenType;[B[B)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public allowIndirectObject()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected final back(I)V
    .locals 0

    .line 706
    iput p1, p0, Lcom/metamoji/pdf/core/PDFParser;->_unget:I

    return-void
.end method

.method protected final checkAfterInt(I)Lcom/metamoji/pdf/core/PDFObj;
    .locals 5

    if-ltz p1, :cond_3

    .line 593
    invoke-virtual {p0}, Lcom/metamoji/pdf/core/PDFParser;->allowIndirectObject()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 597
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 598
    invoke-virtual {p0}, Lcom/metamoji/pdf/core/PDFParser;->nextToken()Lcom/metamoji/pdf/core/PDFParser$TokenInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;->component1()Lcom/metamoji/pdf/core/PDFParser$TokenType;

    move-result-object v2

    invoke-virtual {v1}, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;->component2()[B

    move-result-object v1

    .line 599
    new-instance v3, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;

    invoke-direct {v3, v2, v1}, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;-><init>(Lcom/metamoji/pdf/core/PDFParser$TokenType;[B)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 600
    sget-object v3, Lcom/metamoji/pdf/core/PDFParser$TokenType;->INT:Lcom/metamoji/pdf/core/PDFParser$TokenType;

    const/4 v4, -0x1

    if-ne v2, v3, :cond_1

    invoke-static {v1}, Lcom/metamoji/pdf/core/PDFParserKt;->access$tryParseInt([B)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :cond_1
    if-ltz v4, :cond_2

    .line 603
    invoke-virtual {p0}, Lcom/metamoji/pdf/core/PDFParser;->nextToken()Lcom/metamoji/pdf/core/PDFParser$TokenInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;->component1()Lcom/metamoji/pdf/core/PDFParser$TokenType;

    move-result-object v2

    invoke-virtual {v1}, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;->component2()[B

    move-result-object v1

    .line 604
    new-instance v3, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;

    invoke-direct {v3, v2, v1}, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;-><init>(Lcom/metamoji/pdf/core/PDFParser$TokenType;[B)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 605
    sget-object v3, Lcom/metamoji/pdf/core/PDFParser$TokenType;->ID:Lcom/metamoji/pdf/core/PDFParser$TokenType;

    if-ne v2, v3, :cond_2

    const-string v2, "R"

    invoke-static {v1, v2}, Lcom/metamoji/pdf/core/PDFParserKt;->checkBytes([BLjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 606
    new-instance v0, Lcom/metamoji/pdf/core/PDFRef;

    iget-object v1, p0, Lcom/metamoji/pdf/core/PDFParser;->_doc:Lcom/metamoji/pdf/core/IPDFDocument;

    invoke-direct {v0, p1, v4, v1}, Lcom/metamoji/pdf/core/PDFRef;-><init>(IILcom/metamoji/pdf/core/IPDFDocument;)V

    check-cast v0, Lcom/metamoji/pdf/core/PDFObj;

    return-object v0

    .line 611
    :cond_2
    iget-object v1, p0, Lcom/metamoji/pdf/core/PDFParser;->_queue:Ljava/util/List;

    const/4 v2, 0x0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v1, v2, v0}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 613
    new-instance v0, Lcom/metamoji/pdf/core/PDFInt;

    invoke-direct {v0, p1}, Lcom/metamoji/pdf/core/PDFInt;-><init>(I)V

    check-cast v0, Lcom/metamoji/pdf/core/PDFObj;

    return-object v0

    .line 594
    :cond_3
    :goto_0
    new-instance v0, Lcom/metamoji/pdf/core/PDFInt;

    invoke-direct {v0, p1}, Lcom/metamoji/pdf/core/PDFInt;-><init>(I)V

    check-cast v0, Lcom/metamoji/pdf/core/PDFObj;

    return-object v0
.end method

.method protected final checkTokenType([B)Lcom/metamoji/pdf/core/PDFParser$TokenType;
    .locals 2

    const-string/jumbo v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 303
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result p1

    .line 304
    sget-object v1, Lcom/metamoji/pdf/core/CharType;->INSTANCE:Lcom/metamoji/pdf/core/CharType;

    invoke-virtual {v1, p1}, Lcom/metamoji/pdf/core/CharType;->isNum(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 305
    sget-object p1, Lcom/metamoji/pdf/core/PDFParser$TokenType;->ID:Lcom/metamoji/pdf/core/PDFParser$TokenType;

    return-object p1

    :cond_0
    const/16 v1, 0x2b

    if-eq p1, v1, :cond_1

    const/16 v1, 0x2d

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 309
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result p1

    :goto_0
    if-ltz p1, :cond_2

    .line 313
    sget-object v1, Lcom/metamoji/pdf/core/CharType;->INSTANCE:Lcom/metamoji/pdf/core/CharType;

    invoke-virtual {v1, p1}, Lcom/metamoji/pdf/core/CharType;->isDec(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 314
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result p1

    goto :goto_0

    :cond_2
    if-ltz p1, :cond_3

    .line 316
    sget-object p1, Lcom/metamoji/pdf/core/PDFParser$TokenType;->FLOAT:Lcom/metamoji/pdf/core/PDFParser$TokenType;

    return-object p1

    :cond_3
    sget-object p1, Lcom/metamoji/pdf/core/PDFParser$TokenType;->INT:Lcom/metamoji/pdf/core/PDFParser$TokenType;

    return-object p1
.end method

.method protected final eat()I
    .locals 1

    .line 698
    invoke-virtual {p0}, Lcom/metamoji/pdf/core/PDFParser;->getChar()I

    move-result v0

    if-gez v0, :cond_0

    .line 700
    invoke-virtual {p0}, Lcom/metamoji/pdf/core/PDFParser;->handleEOF()V

    :cond_0
    return v0
.end method

.method public final eatEOL()V
    .locals 3

    .line 222
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/pdf/core/PDFParser;->getChar()I

    move-result v0

    .line 223
    sget-object v1, Lcom/metamoji/pdf/core/CharType;->INSTANCE:Lcom/metamoji/pdf/core/CharType;

    invoke-virtual {v1, v0}, Lcom/metamoji/pdf/core/CharType;->isSpace(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    const/16 v2, 0xd

    if-ne v0, v2, :cond_1

    .line 227
    invoke-virtual {p0}, Lcom/metamoji/pdf/core/PDFParser;->getChar()I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 229
    invoke-virtual {p0, v0}, Lcom/metamoji/pdf/core/PDFParser;->back(I)V

    return-void

    .line 234
    :cond_1
    invoke-virtual {p0, v0}, Lcom/metamoji/pdf/core/PDFParser;->back(I)V

    .line 235
    const-string v0, "invalid char"

    invoke-static {v0}, Lcom/metamoji/pdf/core/PDFParserKt;->syntaxError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    :cond_2
    return-void
.end method

.method public final eatInt(Z)I
    .locals 3

    .line 242
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/pdf/core/PDFParser;->getToken()Lcom/metamoji/pdf/core/PDFParser$TokenInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;->component1()Lcom/metamoji/pdf/core/PDFParser$TokenType;

    move-result-object v1

    invoke-virtual {v0}, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;->component2()[B

    move-result-object v0

    .line 243
    sget-object v2, Lcom/metamoji/pdf/core/PDFParser$TokenType;->SPACE:Lcom/metamoji/pdf/core/PDFParser$TokenType;

    if-eq v1, v2, :cond_0

    if-nez p1, :cond_1

    sget-object v2, Lcom/metamoji/pdf/core/PDFParser$TokenType;->EOL:Lcom/metamoji/pdf/core/PDFParser$TokenType;

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 244
    :cond_1
    sget-object p1, Lcom/metamoji/pdf/core/PDFParser$TokenType;->ID:Lcom/metamoji/pdf/core/PDFParser$TokenType;

    const/4 v2, -0x1

    if-eq v1, p1, :cond_6

    sget-object p1, Lcom/metamoji/pdf/core/PDFParser$TokenType;->EOL:Lcom/metamoji/pdf/core/PDFParser$TokenType;

    if-ne v1, p1, :cond_2

    goto :goto_1

    .line 245
    :cond_2
    sget-object p1, Lcom/metamoji/pdf/core/PDFParser$TokenType;->INT:Lcom/metamoji/pdf/core/PDFParser$TokenType;

    if-ne v1, p1, :cond_5

    .line 246
    invoke-static {v0}, Lcom/metamoji/pdf/core/PDFParserKt;->access$tryParseInt([B)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_3
    if-ltz v2, :cond_4

    return v2

    .line 247
    :cond_4
    const-string p1, "bad number"

    invoke-static {p1}, Lcom/metamoji/pdf/core/PDFParserKt;->syntaxError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1

    .line 245
    :cond_5
    const-string p1, "invalid char"

    invoke-static {p1}, Lcom/metamoji/pdf/core/PDFParserKt;->syntaxError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1

    :cond_6
    :goto_1
    return v2
.end method

.method protected final findEndStream()I
    .locals 9

    const/16 v0, 0xa

    .line 558
    new-array v1, v0, [B

    const/4 v2, 0x0

    move v3, v0

    move v4, v2

    .line 562
    :goto_0
    iget-object v5, p0, Lcom/metamoji/pdf/core/PDFParser;->_input:Lcom/metamoji/pdf/core/PDFInputStream;

    rsub-int/lit8 v6, v3, 0xa

    invoke-virtual {v5, v1, v6, v3}, Lcom/metamoji/pdf/core/PDFInputStream;->read([BII)I

    move-result v5

    if-lt v5, v3, :cond_3

    .line 568
    invoke-static {v1}, Lkotlin/collections/ArraysKt;->last([B)B

    move-result v3

    invoke-static {v3, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v3

    .line 569
    sget-object v5, Lcom/metamoji/pdf/core/CharType;->INSTANCE:Lcom/metamoji/pdf/core/CharType;

    invoke-virtual {v5, v3}, Lcom/metamoji/pdf/core/CharType;->isSpace2(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 570
    invoke-static {}, Lcom/metamoji/pdf/core/PDFParserKt;->access$getES()[I

    move-result-object v5

    aget v3, v5, v3

    goto :goto_2

    .line 573
    :cond_0
    const-string v3, "endstream"

    move-object v5, v3

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_2

    .line 574
    aget-byte v7, v1, v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    int-to-byte v8, v8

    if-eq v7, v8, :cond_1

    move v3, v0

    .line 585
    :goto_2
    invoke-static {v1, v1, v2, v3, v0}, Lkotlin/collections/ArraysKt;->copyInto([B[BIII)[B

    add-int/2addr v4, v3

    goto :goto_0

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    return v4

    .line 564
    :cond_3
    const-string/jumbo v0, "unexpected EOF"

    invoke-static {v0}, Lcom/metamoji/pdf/core/PDFParserKt;->syntaxError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method protected final getChar()I
    .locals 5

    .line 685
    iget v0, p0, Lcom/metamoji/pdf/core/PDFParser;->_unget:I

    const/4 v1, -0x1

    if-ltz v0, :cond_0

    .line 687
    iput v1, p0, Lcom/metamoji/pdf/core/PDFParser;->_unget:I

    return v0

    .line 691
    :cond_0
    iget-object v0, p0, Lcom/metamoji/pdf/core/PDFParser;->_input:Lcom/metamoji/pdf/core/PDFInputStream;

    invoke-virtual {v0}, Lcom/metamoji/pdf/core/PDFInputStream;->read()I

    move-result v0

    if-gez v0, :cond_1

    return v1

    .line 693
    :cond_1
    iget-wide v1, p0, Lcom/metamoji/pdf/core/PDFParser;->_pos:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/metamoji/pdf/core/PDFParser;->_pos:J

    return v0
.end method

.method public final getRawPos()J
    .locals 4

    .line 711
    iget-object v0, p0, Lcom/metamoji/pdf/core/PDFParser;->_input:Lcom/metamoji/pdf/core/PDFInputStream;

    invoke-virtual {v0}, Lcom/metamoji/pdf/core/PDFInputStream;->getPos()J

    move-result-wide v0

    iget v2, p0, Lcom/metamoji/pdf/core/PDFParser;->_unget:I

    if-gez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    int-to-long v2, v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method protected final getToken()Lcom/metamoji/pdf/core/PDFParser$TokenInfo;
    .locals 8

    .line 320
    invoke-virtual {p0}, Lcom/metamoji/pdf/core/PDFParser;->eat()I

    move-result v0

    if-gez v0, :cond_0

    .line 321
    new-instance v0, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;

    sget-object v1, Lcom/metamoji/pdf/core/PDFParser$TokenType;->EOF:Lcom/metamoji/pdf/core/PDFParser$TokenType;

    invoke-static {}, Lcom/metamoji/pdf/core/PDFParserKt;->getEMPTY_BYTES()[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;-><init>(Lcom/metamoji/pdf/core/PDFParser$TokenType;[B)V

    return-object v0

    .line 323
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 324
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    int-to-char v2, v0

    .line 327
    const-string v3, " \t\u0000\u000c"

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v2, v6, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v3

    const-string/jumbo v4, "toByteArray(...)"

    if-eqz v3, :cond_3

    .line 329
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/pdf/core/PDFParser;->eat()I

    move-result v0

    if-ltz v0, :cond_2

    .line 330
    sget-object v2, Lcom/metamoji/pdf/core/CharType;->INSTANCE:Lcom/metamoji/pdf/core/CharType;

    invoke-virtual {v2, v0}, Lcom/metamoji/pdf/core/CharType;->isSpace(I)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 334
    :cond_1
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 331
    :cond_2
    :goto_1
    invoke-virtual {p0, v0}, Lcom/metamoji/pdf/core/PDFParser;->back(I)V

    .line 336
    new-instance v0, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;

    sget-object v2, Lcom/metamoji/pdf/core/PDFParser$TokenType;->SPACE:Lcom/metamoji/pdf/core/PDFParser$TokenType;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v2, v1}, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;-><init>(Lcom/metamoji/pdf/core/PDFParser$TokenType;[B)V

    return-object v0

    :cond_3
    const/16 v3, 0x25

    const/16 v5, 0xd

    const/16 v6, 0xa

    if-ne v2, v3, :cond_6

    .line 340
    :goto_2
    invoke-virtual {p0}, Lcom/metamoji/pdf/core/PDFParser;->eat()I

    move-result v0

    if-ltz v0, :cond_5

    if-eq v0, v5, :cond_5

    if-ne v0, v6, :cond_4

    goto :goto_3

    .line 346
    :cond_4
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    .line 343
    :cond_5
    :goto_3
    invoke-virtual {p0, v0}, Lcom/metamoji/pdf/core/PDFParser;->back(I)V

    .line 348
    new-instance v0, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;

    sget-object v2, Lcom/metamoji/pdf/core/PDFParser$TokenType;->SPACE:Lcom/metamoji/pdf/core/PDFParser$TokenType;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v2, v1}, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;-><init>(Lcom/metamoji/pdf/core/PDFParser$TokenType;[B)V

    return-object v0

    :cond_6
    const/16 v3, 0x3c

    if-ne v2, v3, :cond_8

    .line 351
    invoke-virtual {p0}, Lcom/metamoji/pdf/core/PDFParser;->eat()I

    move-result v0

    if-eq v0, v3, :cond_7

    .line 353
    invoke-virtual {p0, v0}, Lcom/metamoji/pdf/core/PDFParser;->back(I)V

    .line 354
    new-instance v0, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;

    sget-object v2, Lcom/metamoji/pdf/core/PDFParser$TokenType;->HEXSTR:Lcom/metamoji/pdf/core/PDFParser$TokenType;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v2, v1}, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;-><init>(Lcom/metamoji/pdf/core/PDFParser$TokenType;[B)V

    return-object v0

    .line 356
    :cond_7
    new-instance v0, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;

    sget-object v1, Lcom/metamoji/pdf/core/PDFParser$TokenType;->DIC:Lcom/metamoji/pdf/core/PDFParser$TokenType;

    invoke-static {}, Lcom/metamoji/pdf/core/PDFParserKt;->getEMPTY_BYTES()[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;-><init>(Lcom/metamoji/pdf/core/PDFParser$TokenType;[B)V

    return-object v0

    .line 358
    :cond_8
    const-string v3, "invalid char"

    const/16 v7, 0x3e

    if-ne v2, v7, :cond_a

    .line 359
    invoke-virtual {p0}, Lcom/metamoji/pdf/core/PDFParser;->eat()I

    move-result v0

    if-ne v0, v7, :cond_9

    .line 364
    new-instance v0, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;

    sget-object v1, Lcom/metamoji/pdf/core/PDFParser$TokenType;->ENDDIC:Lcom/metamoji/pdf/core/PDFParser$TokenType;

    invoke-static {}, Lcom/metamoji/pdf/core/PDFParserKt;->getEMPTY_BYTES()[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;-><init>(Lcom/metamoji/pdf/core/PDFParser$TokenType;[B)V

    return-object v0

    .line 361
    :cond_9
    invoke-virtual {p0, v0}, Lcom/metamoji/pdf/core/PDFParser;->back(I)V

    .line 362
    invoke-static {v3}, Lcom/metamoji/pdf/core/PDFParserKt;->syntaxError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    :cond_a
    const/16 v7, 0x2f

    if-ne v2, v7, :cond_b

    .line 366
    new-instance v0, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;

    sget-object v1, Lcom/metamoji/pdf/core/PDFParser$TokenType;->NAME:Lcom/metamoji/pdf/core/PDFParser$TokenType;

    invoke-static {}, Lcom/metamoji/pdf/core/PDFParserKt;->getEMPTY_BYTES()[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;-><init>(Lcom/metamoji/pdf/core/PDFParser$TokenType;[B)V

    return-object v0

    :cond_b
    const/16 v7, 0x28

    if-ne v2, v7, :cond_c

    .line 367
    new-instance v0, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;

    sget-object v1, Lcom/metamoji/pdf/core/PDFParser$TokenType;->STRING:Lcom/metamoji/pdf/core/PDFParser$TokenType;

    invoke-static {}, Lcom/metamoji/pdf/core/PDFParserKt;->getEMPTY_BYTES()[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;-><init>(Lcom/metamoji/pdf/core/PDFParser$TokenType;[B)V

    return-object v0

    :cond_c
    const/16 v7, 0x5b

    if-ne v2, v7, :cond_d

    .line 368
    new-instance v0, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;

    sget-object v1, Lcom/metamoji/pdf/core/PDFParser$TokenType;->ARRAY:Lcom/metamoji/pdf/core/PDFParser$TokenType;

    invoke-static {}, Lcom/metamoji/pdf/core/PDFParserKt;->getEMPTY_BYTES()[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;-><init>(Lcom/metamoji/pdf/core/PDFParser$TokenType;[B)V

    return-object v0

    :cond_d
    const/16 v7, 0x5d

    if-ne v2, v7, :cond_e

    .line 369
    new-instance v0, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;

    sget-object v1, Lcom/metamoji/pdf/core/PDFParser$TokenType;->ENDARRAY:Lcom/metamoji/pdf/core/PDFParser$TokenType;

    invoke-static {}, Lcom/metamoji/pdf/core/PDFParserKt;->getEMPTY_BYTES()[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;-><init>(Lcom/metamoji/pdf/core/PDFParser$TokenType;[B)V

    return-object v0

    :cond_e
    const/16 v7, 0x7b

    if-ne v2, v7, :cond_f

    .line 370
    new-instance v0, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;

    sget-object v1, Lcom/metamoji/pdf/core/PDFParser$TokenType;->FUNC:Lcom/metamoji/pdf/core/PDFParser$TokenType;

    invoke-static {}, Lcom/metamoji/pdf/core/PDFParserKt;->getEMPTY_BYTES()[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;-><init>(Lcom/metamoji/pdf/core/PDFParser$TokenType;[B)V

    return-object v0

    :cond_f
    const/16 v7, 0x7d

    if-ne v2, v7, :cond_10

    .line 371
    new-instance v0, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;

    sget-object v1, Lcom/metamoji/pdf/core/PDFParser$TokenType;->ENDFUNC:Lcom/metamoji/pdf/core/PDFParser$TokenType;

    invoke-static {}, Lcom/metamoji/pdf/core/PDFParserKt;->getEMPTY_BYTES()[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;-><init>(Lcom/metamoji/pdf/core/PDFParser$TokenType;[B)V

    return-object v0

    :cond_10
    if-ne v2, v5, :cond_12

    .line 373
    invoke-virtual {p0}, Lcom/metamoji/pdf/core/PDFParser;->eat()I

    move-result v0

    if-eq v0, v6, :cond_11

    .line 375
    invoke-virtual {p0, v0}, Lcom/metamoji/pdf/core/PDFParser;->back(I)V

    goto :goto_4

    .line 377
    :cond_11
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 379
    :goto_4
    new-instance v0, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;

    sget-object v2, Lcom/metamoji/pdf/core/PDFParser$TokenType;->EOL:Lcom/metamoji/pdf/core/PDFParser$TokenType;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v2, v1}, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;-><init>(Lcom/metamoji/pdf/core/PDFParser$TokenType;[B)V

    return-object v0

    :cond_12
    if-ne v2, v6, :cond_13

    .line 381
    new-instance v0, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;

    sget-object v2, Lcom/metamoji/pdf/core/PDFParser$TokenType;->EOL:Lcom/metamoji/pdf/core/PDFParser$TokenType;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v2, v1}, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;-><init>(Lcom/metamoji/pdf/core/PDFParser$TokenType;[B)V

    return-object v0

    .line 385
    :cond_13
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 386
    :goto_5
    sget-object v2, Lcom/metamoji/pdf/core/CharType;->INSTANCE:Lcom/metamoji/pdf/core/CharType;

    invoke-virtual {v2, v0}, Lcom/metamoji/pdf/core/CharType;->isRegular(I)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 387
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 388
    invoke-virtual {p0}, Lcom/metamoji/pdf/core/PDFParser;->eat()I

    move-result v0

    goto :goto_5

    .line 390
    :cond_14
    invoke-virtual {p0, v0}, Lcom/metamoji/pdf/core/PDFParser;->back(I)V

    .line 392
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-eqz v0, :cond_15

    .line 394
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 395
    new-instance v1, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/metamoji/pdf/core/PDFParser;->checkTokenType([B)Lcom/metamoji/pdf/core/PDFParser$TokenType;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;-><init>(Lcom/metamoji/pdf/core/PDFParser$TokenType;[B)V

    return-object v1

    .line 392
    :cond_15
    invoke-static {v3}, Lcom/metamoji/pdf/core/PDFParserKt;->syntaxError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method protected final get_doc()Lcom/metamoji/pdf/core/IPDFDocument;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/metamoji/pdf/core/PDFParser;->_doc:Lcom/metamoji/pdf/core/IPDFDocument;

    return-object v0
.end method

.method protected final get_input()Lcom/metamoji/pdf/core/PDFInputStream;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/metamoji/pdf/core/PDFParser;->_input:Lcom/metamoji/pdf/core/PDFInputStream;

    return-object v0
.end method

.method protected final get_pos()J
    .locals 2

    .line 133
    iget-wide v0, p0, Lcom/metamoji/pdf/core/PDFParser;->_pos:J

    return-wide v0
.end method

.method protected final get_queue()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/pdf/core/PDFParser$TokenInfo;",
            ">;"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/metamoji/pdf/core/PDFParser;->_queue:Ljava/util/List;

    return-object v0
.end method

.method protected final get_unget()I
    .locals 1

    .line 134
    iget v0, p0, Lcom/metamoji/pdf/core/PDFParser;->_unget:I

    return v0
.end method

.method public handleEOF()V
    .locals 0

    return-void
.end method

.method public isPostScript()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final nextToken()Lcom/metamoji/pdf/core/PDFParser$TokenInfo;
    .locals 3

    .line 280
    iget-object v0, p0, Lcom/metamoji/pdf/core/PDFParser;->_queue:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/metamoji/pdf/core/PDFParser;->_queue:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;

    .line 282
    iget-object v2, p0, Lcom/metamoji/pdf/core/PDFParser;->_queue:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object v0

    .line 287
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/pdf/core/PDFParser;->getToken()Lcom/metamoji/pdf/core/PDFParser$TokenInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;->component1()Lcom/metamoji/pdf/core/PDFParser$TokenType;

    move-result-object v1

    invoke-virtual {v0}, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;->component2()[B

    move-result-object v0

    .line 288
    sget-object v2, Lcom/metamoji/pdf/core/PDFParser$TokenType;->SPACE:Lcom/metamoji/pdf/core/PDFParser$TokenType;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/metamoji/pdf/core/PDFParser$TokenType;->EOL:Lcom/metamoji/pdf/core/PDFParser$TokenType;

    if-eq v1, v2, :cond_0

    .line 289
    new-instance v2, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;

    invoke-direct {v2, v1, v0}, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;-><init>(Lcom/metamoji/pdf/core/PDFParser$TokenType;[B)V

    return-object v2
.end method

.method public final read([BII)I
    .locals 5

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-lez p3, :cond_0

    .line 256
    iget v0, p0, Lcom/metamoji/pdf/core/PDFParser;->_unget:I

    if-ltz v0, :cond_0

    add-int/lit8 v0, p2, 0x1

    .line 257
    invoke-virtual {p0}, Lcom/metamoji/pdf/core/PDFParser;->getChar()I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_0
    move v0, p2

    .line 261
    :goto_0
    iget-object v1, p0, Lcom/metamoji/pdf/core/PDFParser;->_input:Lcom/metamoji/pdf/core/PDFInputStream;

    invoke-virtual {v1, p1, v0, p3}, Lcom/metamoji/pdf/core/PDFInputStream;->_read([BII)I

    move-result p1

    .line 262
    iget-wide v1, p0, Lcom/metamoji/pdf/core/PDFParser;->_pos:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/metamoji/pdf/core/PDFParser;->_pos:J

    add-int/2addr v0, p1

    sub-int/2addr v0, p2

    return v0
.end method

.method protected final readHexString([B)[B
    .locals 6

    .line 455
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 457
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/pdf/core/PDFParser;->eat()I

    move-result v1

    .line 458
    const-string/jumbo v2, "unexpected EOF"

    if-ltz v1, :cond_8

    .line 459
    :goto_1
    sget-object v3, Lcom/metamoji/pdf/core/CharType;->INSTANCE:Lcom/metamoji/pdf/core/CharType;

    invoke-virtual {v3, v1}, Lcom/metamoji/pdf/core/CharType;->isSpace2(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 460
    invoke-virtual {p0}, Lcom/metamoji/pdf/core/PDFParser;->eat()I

    move-result v1

    goto :goto_1

    :cond_0
    const/16 v3, 0x3e

    if-eq v1, v3, :cond_6

    .line 463
    sget-object v4, Lcom/metamoji/pdf/core/CharType;->INSTANCE:Lcom/metamoji/pdf/core/CharType;

    invoke-virtual {v4, v1}, Lcom/metamoji/pdf/core/CharType;->isHex(I)Z

    move-result v4

    const-string v5, "invalid char"

    if-eqz v4, :cond_5

    .line 467
    sget-object v4, Lcom/metamoji/pdf/core/CharType;->INSTANCE:Lcom/metamoji/pdf/core/CharType;

    invoke-virtual {v4, v1}, Lcom/metamoji/pdf/core/CharType;->hex(I)I

    move-result v1

    .line 469
    invoke-virtual {p0}, Lcom/metamoji/pdf/core/PDFParser;->eat()I

    move-result v4

    if-ltz v4, :cond_4

    .line 471
    :goto_2
    sget-object v2, Lcom/metamoji/pdf/core/CharType;->INSTANCE:Lcom/metamoji/pdf/core/CharType;

    invoke-virtual {v2, v4}, Lcom/metamoji/pdf/core/CharType;->isSpace2(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 472
    invoke-virtual {p0}, Lcom/metamoji/pdf/core/PDFParser;->eat()I

    move-result v4

    goto :goto_2

    :cond_1
    if-ne v4, v3, :cond_2

    mul-int/lit8 v1, v1, 0x10

    .line 475
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_3

    .line 478
    :cond_2
    sget-object v2, Lcom/metamoji/pdf/core/CharType;->INSTANCE:Lcom/metamoji/pdf/core/CharType;

    invoke-virtual {v2, v4}, Lcom/metamoji/pdf/core/CharType;->isHex(I)Z

    move-result v2

    if-eqz v2, :cond_3

    mul-int/lit8 v1, v1, 0x10

    .line 483
    sget-object v2, Lcom/metamoji/pdf/core/CharType;->INSTANCE:Lcom/metamoji/pdf/core/CharType;

    invoke-virtual {v2, v4}, Lcom/metamoji/pdf/core/CharType;->hex(I)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 479
    :cond_3
    invoke-virtual {p0, v4}, Lcom/metamoji/pdf/core/PDFParser;->back(I)V

    .line 480
    invoke-static {v5}, Lcom/metamoji/pdf/core/PDFParserKt;->syntaxError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1

    .line 470
    :cond_4
    invoke-static {v2}, Lcom/metamoji/pdf/core/PDFParserKt;->syntaxError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1

    .line 464
    :cond_5
    invoke-virtual {p0, v1}, Lcom/metamoji/pdf/core/PDFParser;->back(I)V

    .line 465
    invoke-static {v5}, Lcom/metamoji/pdf/core/PDFParserKt;->syntaxError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1

    .line 486
    :cond_6
    :goto_3
    const-string/jumbo v1, "toByteArray(...)"

    if-eqz p1, :cond_7

    iget-object v2, p0, Lcom/metamoji/pdf/core/PDFParser;->_doc:Lcom/metamoji/pdf/core/IPDFDocument;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v0, p1}, Lcom/metamoji/pdf/core/IPDFDocument;->decrypt([B[B)[B

    move-result-object p1

    return-object p1

    .line 487
    :cond_7
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 458
    :cond_8
    invoke-static {v2}, Lcom/metamoji/pdf/core/PDFParserKt;->syntaxError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method public final readIndirectObject()Lkotlin/Triple;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Triple<",
            "Lcom/metamoji/pdf/core/PDFObj;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 144
    invoke-virtual {p0}, Lcom/metamoji/pdf/core/PDFParser;->nextToken()Lcom/metamoji/pdf/core/PDFParser$TokenInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;->component1()Lcom/metamoji/pdf/core/PDFParser$TokenType;

    move-result-object v1

    invoke-virtual {v0}, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;->component2()[B

    move-result-object v0

    .line 145
    sget-object v2, Lcom/metamoji/pdf/core/PDFParser$TokenType;->INT:Lcom/metamoji/pdf/core/PDFParser$TokenType;

    const-string v3, "invalid char"

    const/4 v4, -0x1

    .line 148
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    if-eq v1, v2, :cond_1

    .line 146
    sget-object v2, Lcom/metamoji/pdf/core/PDFParser$TokenType;->ID:Lcom/metamoji/pdf/core/PDFParser$TokenType;

    if-ne v1, v2, :cond_0

    const-string/jumbo v1, "xref"

    invoke-static {v0, v1}, Lcom/metamoji/pdf/core/PDFParserKt;->checkBytes([BLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    new-instance v0, Lkotlin/Triple;

    sget-object v1, Lcom/metamoji/pdf/core/PDFObj;->Companion:Lcom/metamoji/pdf/core/PDFObj$Companion;

    invoke-virtual {v1}, Lcom/metamoji/pdf/core/PDFObj$Companion;->getNull()Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v1

    invoke-direct {v0, v1, v5, v5}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 150
    :cond_0
    invoke-static {v3}, Lcom/metamoji/pdf/core/PDFParserKt;->syntaxError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .line 152
    :cond_1
    invoke-static {v0}, Lcom/metamoji/pdf/core/PDFParserKt;->access$tryParseInt([B)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v4

    :goto_0
    if-lez v0, :cond_a

    .line 156
    invoke-virtual {p0}, Lcom/metamoji/pdf/core/PDFParser;->nextToken()Lcom/metamoji/pdf/core/PDFParser$TokenInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;->component1()Lcom/metamoji/pdf/core/PDFParser$TokenType;

    move-result-object v2

    invoke-virtual {v1}, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;->component2()[B

    move-result-object v1

    .line 157
    sget-object v5, Lcom/metamoji/pdf/core/PDFParser$TokenType;->INT:Lcom/metamoji/pdf/core/PDFParser$TokenType;

    if-ne v2, v5, :cond_9

    .line 158
    invoke-static {v1}, Lcom/metamoji/pdf/core/PDFParserKt;->access$tryParseInt([B)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :cond_3
    if-ltz v4, :cond_8

    .line 162
    invoke-virtual {p0}, Lcom/metamoji/pdf/core/PDFParser;->nextToken()Lcom/metamoji/pdf/core/PDFParser$TokenInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;->component1()Lcom/metamoji/pdf/core/PDFParser$TokenType;

    move-result-object v2

    invoke-virtual {v1}, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;->component2()[B

    move-result-object v1

    .line 163
    sget-object v5, Lcom/metamoji/pdf/core/PDFParser$TokenType;->ID:Lcom/metamoji/pdf/core/PDFParser$TokenType;

    if-ne v2, v5, :cond_7

    const-string v2, "obj"

    invoke-static {v1, v2}, Lcom/metamoji/pdf/core/PDFParserKt;->checkBytes([BLjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 168
    iget-object v1, p0, Lcom/metamoji/pdf/core/PDFParser;->_doc:Lcom/metamoji/pdf/core/IPDFDocument;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v4, v2}, Lcom/metamoji/pdf/core/IPDFDocument;->getCryptoKey(IIZ)[B

    move-result-object v1

    .line 170
    const-string v2, "endobj"

    invoke-direct {p0, v1, v2}, Lcom/metamoji/pdf/core/PDFParser;->readObject([BLjava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v1

    if-nez v1, :cond_4

    new-instance v1, Lkotlin/Triple;

    sget-object v2, Lcom/metamoji/pdf/core/PDFObj;->Companion:Lcom/metamoji/pdf/core/PDFObj$Companion;

    invoke-virtual {v2}, Lcom/metamoji/pdf/core/PDFObj$Companion;->getNull()Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 172
    :cond_4
    invoke-virtual {p0}, Lcom/metamoji/pdf/core/PDFParser;->nextToken()Lcom/metamoji/pdf/core/PDFParser$TokenInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;->component1()Lcom/metamoji/pdf/core/PDFParser$TokenType;

    move-result-object v6

    invoke-virtual {v5}, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;->component2()[B

    move-result-object v5

    .line 173
    invoke-virtual {v1}, Lcom/metamoji/pdf/core/PDFObj;->getType()Lcom/metamoji/pdf/core/PDFObj$Type;

    move-result-object v7

    sget-object v8, Lcom/metamoji/pdf/core/PDFObj$Type;->DICTIONARY:Lcom/metamoji/pdf/core/PDFObj$Type;

    if-ne v7, v8, :cond_5

    const-string/jumbo v7, "stream"

    invoke-static {v5, v7}, Lcom/metamoji/pdf/core/PDFParserKt;->checkBytes([BLjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 174
    iget-object v5, p0, Lcom/metamoji/pdf/core/PDFParser;->_doc:Lcom/metamoji/pdf/core/IPDFDocument;

    const/4 v6, 0x1

    invoke-interface {v5, v0, v4, v6}, Lcom/metamoji/pdf/core/IPDFDocument;->getCryptoKey(IIZ)[B

    move-result-object v5

    .line 175
    invoke-virtual {p0, v1, v5}, Lcom/metamoji/pdf/core/PDFParser;->readStreamObject(Lcom/metamoji/pdf/core/PDFObj;[B)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v1

    .line 176
    invoke-virtual {p0}, Lcom/metamoji/pdf/core/PDFParser;->nextToken()Lcom/metamoji/pdf/core/PDFParser$TokenInfo;

    move-result-object v5

    goto :goto_1

    .line 178
    :cond_5
    new-instance v7, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;

    invoke-direct {v7, v6, v5}, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;-><init>(Lcom/metamoji/pdf/core/PDFParser$TokenType;[B)V

    move-object v5, v7

    .line 180
    :goto_1
    invoke-virtual {v5}, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;->component1()Lcom/metamoji/pdf/core/PDFParser$TokenType;

    move-result-object v6

    invoke-virtual {v5}, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;->component2()[B

    move-result-object v5

    .line 181
    sget-object v7, Lcom/metamoji/pdf/core/PDFParser$TokenType;->ID:Lcom/metamoji/pdf/core/PDFParser$TokenType;

    if-ne v6, v7, :cond_6

    invoke-static {v5, v2}, Lcom/metamoji/pdf/core/PDFParserKt;->checkBytes([BLjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 186
    new-instance v2, Lkotlin/Triple;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v1, v0, v3}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 182
    :cond_6
    invoke-static {v3}, Lcom/metamoji/pdf/core/PDFParserKt;->syntaxError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .line 164
    :cond_7
    invoke-static {v3}, Lcom/metamoji/pdf/core/PDFParserKt;->syntaxError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .line 160
    :cond_8
    const-string v0, "bad object generation"

    invoke-static {v0}, Lcom/metamoji/pdf/core/PDFParserKt;->syntaxError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .line 157
    :cond_9
    invoke-static {v3}, Lcom/metamoji/pdf/core/PDFParserKt;->syntaxError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .line 154
    :cond_a
    const-string v0, "bad object number"

    invoke-static {v0}, Lcom/metamoji/pdf/core/PDFParserKt;->syntaxError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method protected final readLiteralString([B)[B
    .locals 8

    .line 400
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 403
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/pdf/core/PDFParser;->eat()I

    move-result v3

    .line 404
    const-string/jumbo v4, "unexpected EOF"

    if-ltz v3, :cond_f

    const/16 v5, 0x28

    if-eq v3, v5, :cond_d

    const/16 v5, 0x29

    if-eq v3, v5, :cond_a

    const/16 v5, 0x5c

    if-eq v3, v5, :cond_1

    goto/16 :goto_3

    .line 407
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/pdf/core/PDFParser;->eat()I

    move-result v3

    if-ltz v3, :cond_9

    int-to-char v4, v3

    const/16 v5, 0xa

    if-eq v4, v5, :cond_0

    const/16 v6, 0xd

    if-eq v4, v6, :cond_8

    const/16 v7, 0x62

    if-eq v4, v7, :cond_7

    const/16 v7, 0x66

    if-eq v4, v7, :cond_6

    const/16 v7, 0x6e

    if-eq v4, v7, :cond_5

    const/16 v5, 0x72

    if-eq v4, v5, :cond_4

    const/16 v5, 0x74

    if-eq v4, v5, :cond_3

    .line 424
    sget-object v4, Lcom/metamoji/pdf/core/CharType;->INSTANCE:Lcom/metamoji/pdf/core/CharType;

    invoke-virtual {v4, v3}, Lcom/metamoji/pdf/core/CharType;->isOct(I)Z

    move-result v4

    if-eqz v4, :cond_e

    move v4, v1

    move v5, v4

    :goto_1
    const/4 v6, 0x3

    if-ge v4, v6, :cond_5

    mul-int/lit8 v5, v5, 0x8

    add-int/lit8 v3, v3, -0x30

    add-int/2addr v5, v3

    const/4 v3, 0x2

    if-eq v4, v3, :cond_5

    .line 429
    invoke-virtual {p0}, Lcom/metamoji/pdf/core/PDFParser;->eat()I

    move-result v3

    .line 430
    sget-object v6, Lcom/metamoji/pdf/core/CharType;->INSTANCE:Lcom/metamoji/pdf/core/CharType;

    invoke-virtual {v6, v3}, Lcom/metamoji/pdf/core/CharType;->isOct(I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 431
    invoke-virtual {p0, v3}, Lcom/metamoji/pdf/core/PDFParser;->back(I)V

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    const/16 v3, 0x9

    goto :goto_3

    :cond_4
    move v3, v6

    goto :goto_3

    :cond_5
    :goto_2
    move v3, v5

    goto :goto_3

    :cond_6
    const/16 v3, 0xc

    goto :goto_3

    :cond_7
    const/16 v3, 0x8

    goto :goto_3

    .line 411
    :cond_8
    invoke-virtual {p0}, Lcom/metamoji/pdf/core/PDFParser;->eat()I

    move-result v3

    if-eq v3, v5, :cond_0

    .line 413
    invoke-virtual {p0, v3}, Lcom/metamoji/pdf/core/PDFParser;->back(I)V

    goto :goto_0

    .line 408
    :cond_9
    invoke-static {v4}, Lcom/metamoji/pdf/core/PDFParserKt;->syntaxError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1

    :cond_a
    if-eqz v2, :cond_b

    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 449
    :cond_b
    const-string/jumbo v1, "toByteArray(...)"

    if-eqz p1, :cond_c

    iget-object v2, p0, Lcom/metamoji/pdf/core/PDFParser;->_doc:Lcom/metamoji/pdf/core/IPDFDocument;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v0, p1}, Lcom/metamoji/pdf/core/IPDFDocument;->decrypt([B[B)[B

    move-result-object p1

    return-object p1

    .line 450
    :cond_c
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_d
    add-int/lit8 v2, v2, 0x1

    .line 446
    :cond_e
    :goto_3
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_0

    .line 404
    :cond_f
    invoke-static {v4}, Lcom/metamoji/pdf/core/PDFParserKt;->syntaxError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method protected final readName()Ljava/lang/String;
    .locals 5

    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 494
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/pdf/core/PDFParser;->eat()I

    move-result v1

    .line 495
    sget-object v2, Lcom/metamoji/pdf/core/CharType;->INSTANCE:Lcom/metamoji/pdf/core/CharType;

    invoke-virtual {v2, v1}, Lcom/metamoji/pdf/core/CharType;->isRegular(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 496
    invoke-virtual {p0, v1}, Lcom/metamoji/pdf/core/PDFParser;->back(I)V

    .line 523
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/16 v2, 0x23

    if-ne v1, v2, :cond_4

    .line 501
    invoke-virtual {p0}, Lcom/metamoji/pdf/core/PDFParser;->eat()I

    move-result v1

    if-ltz v1, :cond_3

    .line 502
    sget-object v3, Lcom/metamoji/pdf/core/CharType;->INSTANCE:Lcom/metamoji/pdf/core/CharType;

    invoke-virtual {v3, v1}, Lcom/metamoji/pdf/core/CharType;->isHex(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 503
    invoke-virtual {p0}, Lcom/metamoji/pdf/core/PDFParser;->eat()I

    move-result v3

    if-ltz v3, :cond_2

    .line 504
    sget-object v4, Lcom/metamoji/pdf/core/CharType;->INSTANCE:Lcom/metamoji/pdf/core/CharType;

    invoke-virtual {v4, v3}, Lcom/metamoji/pdf/core/CharType;->isHex(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 505
    sget-object v2, Lcom/metamoji/pdf/core/CharType;->INSTANCE:Lcom/metamoji/pdf/core/CharType;

    invoke-virtual {v2, v1}, Lcom/metamoji/pdf/core/CharType;->hex(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x10

    sget-object v2, Lcom/metamoji/pdf/core/CharType;->INSTANCE:Lcom/metamoji/pdf/core/CharType;

    invoke-virtual {v2, v3}, Lcom/metamoji/pdf/core/CharType;->hex(I)I

    move-result v2

    add-int/2addr v1, v2

    if-eqz v1, :cond_1

    goto :goto_1

    .line 507
    :cond_1
    const-string v0, "bad name char"

    invoke-static {v0}, Lcom/metamoji/pdf/core/PDFParserKt;->syntaxError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .line 511
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 512
    invoke-virtual {p0, v3}, Lcom/metamoji/pdf/core/PDFParser;->back(I)V

    goto :goto_1

    .line 516
    :cond_3
    invoke-virtual {p0, v1}, Lcom/metamoji/pdf/core/PDFParser;->back(I)V

    move v1, v2

    :cond_4
    :goto_1
    int-to-char v1, v1

    .line 521
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public final readObject([B)Lcom/metamoji/pdf/core/PDFObj;
    .locals 1

    .line 190
    sget-object v0, Lcom/metamoji/pdf/core/PDFParser$TokenType;->EOF:Lcom/metamoji/pdf/core/PDFParser$TokenType;

    invoke-direct {p0, p1, v0}, Lcom/metamoji/pdf/core/PDFParser;->readObject([BLcom/metamoji/pdf/core/PDFParser$TokenType;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p1

    return-object p1
.end method

.method protected final readStreamObject(Lcom/metamoji/pdf/core/PDFObj;[B)Lcom/metamoji/pdf/core/PDFObj;
    .locals 5

    const-string v0, "dic"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 528
    invoke-virtual {p1}, Lcom/metamoji/pdf/core/PDFObj;->getDic()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 529
    new-instance v0, Lcom/metamoji/pdf/core/PDFStream;

    iget-object v1, p0, Lcom/metamoji/pdf/core/PDFParser;->_doc:Lcom/metamoji/pdf/core/IPDFDocument;

    invoke-direct {v0, p1, v1, p2}, Lcom/metamoji/pdf/core/PDFStream;-><init>(Ljava/util/Map;Lcom/metamoji/pdf/core/IPDFDocument;[B)V

    .line 530
    invoke-virtual {p0}, Lcom/metamoji/pdf/core/PDFParser;->eatEOL()V

    .line 532
    invoke-virtual {p0}, Lcom/metamoji/pdf/core/PDFParser;->getRawPos()J

    move-result-wide p1

    .line 533
    const-string v1, "Length"

    invoke-virtual {v0, v1}, Lcom/metamoji/pdf/core/PDFStream;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 534
    invoke-virtual {v0, v1}, Lcom/metamoji/pdf/core/PDFStream;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/pdf/core/PDFObj;->intVal()I

    move-result v1

    int-to-long v2, v1

    .line 535
    invoke-virtual {v0, p1, p2, v2, v3}, Lcom/metamoji/pdf/core/PDFStream;->setRange(JJ)V

    .line 536
    iget v2, p0, Lcom/metamoji/pdf/core/PDFParser;->_unget:I

    if-gez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    sub-int/2addr v1, v2

    .line 537
    iget-object v2, p0, Lcom/metamoji/pdf/core/PDFParser;->_input:Lcom/metamoji/pdf/core/PDFInputStream;

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Lcom/metamoji/pdf/core/PDFInputStream;->skip(J)J

    .line 538
    iget-wide v1, p0, Lcom/metamoji/pdf/core/PDFParser;->_pos:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/metamoji/pdf/core/PDFParser;->_pos:J

    const/4 v1, -0x1

    .line 539
    iput v1, p0, Lcom/metamoji/pdf/core/PDFParser;->_unget:I

    .line 541
    invoke-virtual {p0}, Lcom/metamoji/pdf/core/PDFParser;->nextToken()Lcom/metamoji/pdf/core/PDFParser$TokenInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;->component1()Lcom/metamoji/pdf/core/PDFParser$TokenType;

    move-result-object v2

    invoke-virtual {v1}, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;->component2()[B

    move-result-object v1

    .line 542
    sget-object v3, Lcom/metamoji/pdf/core/PDFParser$TokenType;->ID:Lcom/metamoji/pdf/core/PDFParser$TokenType;

    if-ne v2, v3, :cond_1

    const-string v2, "endstream"

    invoke-static {v1, v2}, Lcom/metamoji/pdf/core/PDFParserKt;->checkBytes([BLjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 543
    check-cast v0, Lcom/metamoji/pdf/core/PDFObj;

    return-object v0

    .line 546
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/pdf/core/PDFParser;->setRawPos(J)V

    .line 549
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/pdf/core/PDFParser;->findEndStream()I

    move-result v1

    int-to-long v1, v1

    .line 551
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/metamoji/pdf/core/PDFStream;->setRange(JJ)V

    .line 552
    iget-wide p1, p0, Lcom/metamoji/pdf/core/PDFParser;->_pos:J

    add-long/2addr p1, v1

    iput-wide p1, p0, Lcom/metamoji/pdf/core/PDFParser;->_pos:J

    .line 554
    check-cast v0, Lcom/metamoji/pdf/core/PDFObj;

    return-object v0

    .line 528
    :cond_3
    new-instance p1, Lcom/metamoji/pdf/core/PDFException;

    const-string p2, "not a stream"

    invoke-direct {p1, p2}, Lcom/metamoji/pdf/core/PDFException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final readTrailer()Lcom/metamoji/pdf/core/PDFObj;
    .locals 3

    .line 207
    invoke-virtual {p0}, Lcom/metamoji/pdf/core/PDFParser;->nextToken()Lcom/metamoji/pdf/core/PDFParser$TokenInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;->component1()Lcom/metamoji/pdf/core/PDFParser$TokenType;

    move-result-object v1

    invoke-virtual {v0}, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;->component2()[B

    move-result-object v0

    .line 208
    sget-object v2, Lcom/metamoji/pdf/core/PDFParser$TokenType;->ID:Lcom/metamoji/pdf/core/PDFParser$TokenType;

    if-ne v1, v2, :cond_2

    const-string/jumbo v1, "trailer"

    invoke-static {v0, v1}, Lcom/metamoji/pdf/core/PDFParserKt;->checkBytes([BLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 212
    invoke-virtual {p0, v0}, Lcom/metamoji/pdf/core/PDFParser;->readObject([B)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 213
    invoke-virtual {v1}, Lcom/metamoji/pdf/core/PDFObj;->getType()Lcom/metamoji/pdf/core/PDFObj$Type;

    move-result-object v0

    :cond_0
    sget-object v2, Lcom/metamoji/pdf/core/PDFObj$Type;->DICTIONARY:Lcom/metamoji/pdf/core/PDFObj$Type;

    if-ne v0, v2, :cond_1

    return-object v1

    .line 214
    :cond_1
    const-string/jumbo v0, "trailer is not a dictionary"

    invoke-static {v0}, Lcom/metamoji/pdf/core/PDFParserKt;->syntaxError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .line 209
    :cond_2
    const-string/jumbo v0, "trailer doesn\'t exist"

    invoke-static {v0}, Lcom/metamoji/pdf/core/PDFParserKt;->syntaxError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method public final seekTo(J)V
    .locals 4

    .line 269
    iget-wide v0, p0, Lcom/metamoji/pdf/core/PDFParser;->_pos:J

    cmp-long v2, p1, v0

    if-gez v2, :cond_1

    .line 270
    iget v2, p0, Lcom/metamoji/pdf/core/PDFParser;->_unget:I

    if-ltz v2, :cond_0

    const-wide/16 v2, 0x1

    add-long/2addr p1, v2

    cmp-long p1, p1, v0

    if-nez p1, :cond_0

    return-void

    .line 271
    :cond_0
    const-string p1, "bad seek"

    invoke-static {p1}, Lcom/metamoji/pdf/core/PDFParserKt;->syntaxError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1

    .line 274
    :cond_1
    iget-object v2, p0, Lcom/metamoji/pdf/core/PDFParser;->_input:Lcom/metamoji/pdf/core/PDFInputStream;

    sub-long v0, p1, v0

    invoke-virtual {v2, v0, v1}, Lcom/metamoji/pdf/core/PDFInputStream;->skip(J)J

    .line 275
    iput-wide p1, p0, Lcom/metamoji/pdf/core/PDFParser;->_pos:J

    const/4 p1, -0x1

    .line 276
    iput p1, p0, Lcom/metamoji/pdf/core/PDFParser;->_unget:I

    return-void
.end method

.method public final setRawPos(J)V
    .locals 3

    .line 713
    iget-object v0, p0, Lcom/metamoji/pdf/core/PDFParser;->_input:Lcom/metamoji/pdf/core/PDFInputStream;

    invoke-virtual {v0}, Lcom/metamoji/pdf/core/PDFInputStream;->getPos()J

    move-result-wide v0

    sub-long v0, p1, v0

    .line 714
    iget-object v2, p0, Lcom/metamoji/pdf/core/PDFParser;->_input:Lcom/metamoji/pdf/core/PDFInputStream;

    invoke-virtual {v2, p1, p2}, Lcom/metamoji/pdf/core/PDFInputStream;->seek(J)V

    .line 715
    iget-wide p1, p0, Lcom/metamoji/pdf/core/PDFParser;->_pos:J

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/metamoji/pdf/core/PDFParser;->_pos:J

    const/4 p1, -0x1

    .line 716
    iput p1, p0, Lcom/metamoji/pdf/core/PDFParser;->_unget:I

    return-void
.end method

.method protected final set_pos(J)V
    .locals 0

    .line 133
    iput-wide p1, p0, Lcom/metamoji/pdf/core/PDFParser;->_pos:J

    return-void
.end method

.method protected final set_unget(I)V
    .locals 0

    .line 134
    iput p1, p0, Lcom/metamoji/pdf/core/PDFParser;->_unget:I

    return-void
.end method

.method protected final tokenToObject(Lcom/metamoji/pdf/core/PDFParser$TokenType;[B[B)Lcom/metamoji/pdf/core/PDFObj;
    .locals 2

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "token"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 617
    sget-object v0, Lcom/metamoji/pdf/core/PDFParser$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/metamoji/pdf/core/PDFParser$TokenType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    .line 654
    :pswitch_0
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    .line 656
    :cond_0
    :goto_0
    sget-object p2, Lcom/metamoji/pdf/core/PDFParser$TokenType;->ENDDIC:Lcom/metamoji/pdf/core/PDFParser$TokenType;

    invoke-direct {p0, p3, p2}, Lcom/metamoji/pdf/core/PDFParser;->readObject([BLcom/metamoji/pdf/core/PDFParser$TokenType;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p2

    if-nez p2, :cond_1

    .line 676
    new-instance p2, Lcom/metamoji/pdf/core/PDFDictionary;

    invoke-direct {p2, p1}, Lcom/metamoji/pdf/core/PDFDictionary;-><init>(Ljava/util/Map;)V

    check-cast p2, Lcom/metamoji/pdf/core/PDFObj;

    return-object p2

    .line 657
    :cond_1
    invoke-virtual {p2}, Lcom/metamoji/pdf/core/PDFObj;->getType()Lcom/metamoji/pdf/core/PDFObj$Type;

    move-result-object v0

    sget-object v1, Lcom/metamoji/pdf/core/PDFObj$Type;->NAME:Lcom/metamoji/pdf/core/PDFObj$Type;

    if-ne v0, v1, :cond_5

    .line 660
    invoke-virtual {p0, p3}, Lcom/metamoji/pdf/core/PDFParser;->readObject([B)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 661
    invoke-virtual {v0}, Lcom/metamoji/pdf/core/PDFObj;->isNull()Z

    move-result v1

    if-nez v1, :cond_2

    .line 662
    invoke-virtual {p2}, Lcom/metamoji/pdf/core/PDFObj;->name()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/pdf/core/PDFParser;->isPostScript()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 670
    invoke-virtual {p0}, Lcom/metamoji/pdf/core/PDFParser;->nextToken()Lcom/metamoji/pdf/core/PDFParser$TokenInfo;

    move-result-object p2

    .line 671
    invoke-virtual {p2}, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;->getType()Lcom/metamoji/pdf/core/PDFParser$TokenType;

    move-result-object v0

    sget-object v1, Lcom/metamoji/pdf/core/PDFParser$TokenType;->ID:Lcom/metamoji/pdf/core/PDFParser$TokenType;

    if-ne v0, v1, :cond_3

    invoke-virtual {p2}, Lcom/metamoji/pdf/core/PDFParser$TokenInfo;->getToken()[B

    move-result-object v0

    const-string v1, "def"

    invoke-static {v0, v1}, Lcom/metamoji/pdf/core/PDFParserKt;->checkBytes([BLjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 672
    :cond_3
    iget-object v0, p0, Lcom/metamoji/pdf/core/PDFParser;->_queue:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 660
    :cond_4
    const-string/jumbo p1, "unexpected EOF"

    invoke-static {p1}, Lcom/metamoji/pdf/core/PDFParserKt;->syntaxError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1

    .line 658
    :cond_5
    const-string p1, "key must be a name"

    invoke-static {p1}, Lcom/metamoji/pdf/core/PDFParserKt;->syntaxError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1

    .line 646
    :pswitch_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    .line 648
    :goto_1
    sget-object p2, Lcom/metamoji/pdf/core/PDFParser$TokenType;->ENDARRAY:Lcom/metamoji/pdf/core/PDFParser$TokenType;

    invoke-direct {p0, p3, p2}, Lcom/metamoji/pdf/core/PDFParser;->readObject([BLcom/metamoji/pdf/core/PDFParser$TokenType;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p2

    if-nez p2, :cond_6

    .line 651
    new-instance p2, Lcom/metamoji/pdf/core/PDFArray;

    invoke-direct {p2, p1}, Lcom/metamoji/pdf/core/PDFArray;-><init>(Ljava/util/List;)V

    check-cast p2, Lcom/metamoji/pdf/core/PDFObj;

    return-object p2

    .line 649
    :cond_6
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 644
    :pswitch_2
    new-instance p1, Lcom/metamoji/pdf/core/PDFNameObj;

    invoke-virtual {p0}, Lcom/metamoji/pdf/core/PDFParser;->readName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/metamoji/pdf/core/PDFNameObj;-><init>(Ljava/lang/String;)V

    check-cast p1, Lcom/metamoji/pdf/core/PDFObj;

    return-object p1

    .line 638
    :pswitch_3
    invoke-static {p3}, Lcom/metamoji/pdf/core/PDFParserKt;->access$isInvalidCryptoKey([B)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 639
    invoke-virtual {p0, v0}, Lcom/metamoji/pdf/core/PDFParser;->readLiteralString([B)[B

    .line 640
    new-instance p1, Lcom/metamoji/pdf/core/PDFEncryptString;

    invoke-direct {p1}, Lcom/metamoji/pdf/core/PDFEncryptString;-><init>()V

    check-cast p1, Lcom/metamoji/pdf/core/PDFObj;

    return-object p1

    .line 642
    :cond_7
    new-instance p1, Lcom/metamoji/pdf/core/PDFString;

    invoke-virtual {p0, p3}, Lcom/metamoji/pdf/core/PDFParser;->readHexString([B)[B

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/metamoji/pdf/core/PDFString;-><init>([B)V

    check-cast p1, Lcom/metamoji/pdf/core/PDFObj;

    return-object p1

    .line 631
    :pswitch_4
    invoke-static {p3}, Lcom/metamoji/pdf/core/PDFParserKt;->access$isInvalidCryptoKey([B)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 632
    invoke-virtual {p0, v0}, Lcom/metamoji/pdf/core/PDFParser;->readLiteralString([B)[B

    .line 633
    new-instance p1, Lcom/metamoji/pdf/core/PDFEncryptString;

    invoke-direct {p1}, Lcom/metamoji/pdf/core/PDFEncryptString;-><init>()V

    check-cast p1, Lcom/metamoji/pdf/core/PDFObj;

    return-object p1

    .line 635
    :cond_8
    new-instance p1, Lcom/metamoji/pdf/core/PDFString;

    invoke-virtual {p0, p3}, Lcom/metamoji/pdf/core/PDFParser;->readLiteralString([B)[B

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/metamoji/pdf/core/PDFString;-><init>([B)V

    check-cast p1, Lcom/metamoji/pdf/core/PDFObj;

    return-object p1

    .line 625
    :pswitch_5
    const-string p1, "null"

    invoke-static {p2, p1}, Lcom/metamoji/pdf/core/PDFParserKt;->checkBytes([BLjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    sget-object p1, Lcom/metamoji/pdf/core/PDFObj;->Companion:Lcom/metamoji/pdf/core/PDFObj$Companion;

    invoke-virtual {p1}, Lcom/metamoji/pdf/core/PDFObj$Companion;->getNull()Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p1

    return-object p1

    .line 626
    :cond_9
    const-string/jumbo p1, "true"

    invoke-static {p2, p1}, Lcom/metamoji/pdf/core/PDFParserKt;->checkBytes([BLjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    sget-object p1, Lcom/metamoji/pdf/core/PDFObj;->Companion:Lcom/metamoji/pdf/core/PDFObj$Companion;

    invoke-virtual {p1}, Lcom/metamoji/pdf/core/PDFObj$Companion;->getTrue()Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p1

    return-object p1

    .line 627
    :cond_a
    const-string p1, "false"

    invoke-static {p2, p1}, Lcom/metamoji/pdf/core/PDFParserKt;->checkBytes([BLjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    sget-object p1, Lcom/metamoji/pdf/core/PDFObj;->Companion:Lcom/metamoji/pdf/core/PDFObj$Companion;

    invoke-virtual {p1}, Lcom/metamoji/pdf/core/PDFObj$Companion;->getFalse()Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p1

    return-object p1

    .line 622
    :pswitch_6
    new-instance p1, Lcom/metamoji/pdf/core/PDFDouble;

    invoke-static {p2}, Lcom/metamoji/pdf/core/PDFParserKt;->access$parseDouble([B)D

    move-result-wide p2

    invoke-direct {p1, p2, p3}, Lcom/metamoji/pdf/core/PDFDouble;-><init>(D)V

    check-cast p1, Lcom/metamoji/pdf/core/PDFObj;

    return-object p1

    .line 619
    :pswitch_7
    invoke-static {p2}, Lcom/metamoji/pdf/core/PDFParserKt;->access$tryParseInt([B)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 620
    invoke-virtual {p0, p1}, Lcom/metamoji/pdf/core/PDFParser;->checkAfterInt(I)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p1

    return-object p1

    .line 619
    :cond_b
    new-instance p1, Lcom/metamoji/pdf/core/PDFDouble;

    invoke-static {p2}, Lcom/metamoji/pdf/core/PDFParserKt;->access$parseDouble([B)D

    move-result-wide p2

    invoke-direct {p1, p2, p3}, Lcom/metamoji/pdf/core/PDFDouble;-><init>(D)V

    check-cast p1, Lcom/metamoji/pdf/core/PDFObj;

    return-object p1

    .line 681
    :cond_c
    :goto_2
    const-string/jumbo p1, "unexpected token"

    invoke-static {p1}, Lcom/metamoji/pdf/core/PDFParserKt;->syntaxError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
