.class public final Lcom/metamoji/pdf/core/PDFParserKt;
.super Ljava/lang/Object;
.source "PDFParser.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0001\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0005\n\u0002\u0010\u0015\n\u0002\u0008\u0005\u001a\u0016\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\u0008\u001a\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0008\u001a\u000e\u0010\u000c\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000e\u001a\u000e\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u0001\u001a\u0017\u0010\u0011\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0010\u001a\u00020\u0001H\u0002\u00a2\u0006\u0002\u0010\u0012\u001a\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0010\u001a\u00020\u0001H\u0002\u001a\u0012\u0010\u0017\u001a\u00020\u00052\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0001H\u0002\"\u0011\u0010\u0000\u001a\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u0003\"\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0019\u001a\u00020\u0008X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u001a\u001a\u00020\u000eX\u0082T\u00a2\u0006\u0002\n\u0000\"\u001b\u0010\u001b\u001a\u00020\u001c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008\u001d\u0010\u001e\u00a8\u0006!"
    }
    d2 = {
        "EMPTY_BYTES",
        "",
        "getEMPTY_BYTES",
        "()[B",
        "checkBytes",
        "",
        "bin",
        "str",
        "",
        "syntaxError",
        "",
        "msg",
        "isWhiteSpace",
        "ch",
        "",
        "byteArrayToString",
        "token",
        "tryParseInt",
        "([B)Ljava/lang/Integer;",
        "NUMBER_PATTERN",
        "Lkotlin/text/Regex;",
        "parseDouble",
        "",
        "isInvalidCryptoKey",
        "cryptoKey",
        "TOKEN_ENDSTREAM",
        "ENDSTREAM_LEN",
        "ES",
        "",
        "getES",
        "()[I",
        "ES$delegate",
        "Lkotlin/Lazy;",
        "pdf"
    }
    k = 0x2
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final EMPTY_BYTES:[B

.field private static final ENDSTREAM_LEN:I = 0x9

.field private static final ES$delegate:Lkotlin/Lazy;

.field private static final NUMBER_PATTERN:Lkotlin/text/Regex;

.field private static final TOKEN_ENDSTREAM:Ljava/lang/String; = "endstream"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    .line 7
    new-array v0, v0, [B

    sput-object v0, Lcom/metamoji/pdf/core/PDFParserKt;->EMPTY_BYTES:[B

    .line 26
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "^[+-]?(?:\\d+\\.?\\d*|\\.\\d+)(?:[eE][+-]?\\d+)?"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/metamoji/pdf/core/PDFParserKt;->NUMBER_PATTERN:Lkotlin/text/Regex;

    .line 100
    new-instance v0, Lcom/metamoji/pdf/core/PDFParserKt$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/metamoji/pdf/core/PDFParserKt$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/metamoji/pdf/core/PDFParserKt;->ES$delegate:Lkotlin/Lazy;

    return-void
.end method

.method static final ES_delegate$lambda$1()[I
    .locals 7

    const/16 v0, 0x100

    .line 101
    new-array v1, v0, [I

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 102
    invoke-static/range {v1 .. v6}, Lkotlin/collections/ArraysKt;->fill$default([IIIIILjava/lang/Object;)V

    .line 103
    const-string v0, "endstream"

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    :goto_0
    if-ge v3, v2, :cond_0

    .line 104
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    rsub-int/lit8 v5, v3, 0x9

    aput v5, v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static final synthetic access$getES()[I
    .locals 1

    .line 1
    invoke-static {}, Lcom/metamoji/pdf/core/PDFParserKt;->getES()[I

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$isInvalidCryptoKey([B)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/metamoji/pdf/core/PDFParserKt;->isInvalidCryptoKey([B)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$parseDouble([B)D
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/metamoji/pdf/core/PDFParserKt;->parseDouble([B)D

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic access$tryParseInt([B)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/metamoji/pdf/core/PDFParserKt;->tryParseInt([B)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static final byteArrayToString([B)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "token"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    const-string v1, "US_ASCII"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

.method public static final checkBytes([BLjava/lang/String;)Z
    .locals 5

    const-string v0, "bin"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "str"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    array-length v0, p0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 11
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_2

    .line 12
    aget-byte v3, p0, v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-byte v4, v4

    if-eq v3, v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static final getEMPTY_BYTES()[B
    .locals 1

    .line 7
    sget-object v0, Lcom/metamoji/pdf/core/PDFParserKt;->EMPTY_BYTES:[B

    return-object v0
.end method

.method private static final getES()[I
    .locals 1

    .line 100
    sget-object v0, Lcom/metamoji/pdf/core/PDFParserKt;->ES$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method private static final isInvalidCryptoKey([B)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 34
    array-length p0, p0

    const/4 v0, 0x5

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final isWhiteSpace(I)Z
    .locals 1

    .line 19
    sget-object v0, Lcom/metamoji/pdf/core/CharType;->INSTANCE:Lcom/metamoji/pdf/core/CharType;

    invoke-virtual {v0, p0}, Lcom/metamoji/pdf/core/CharType;->isSpace2(I)Z

    move-result p0

    return p0
.end method

.method private static final parseDouble([B)D
    .locals 4

    .line 29
    invoke-static {p0}, Lcom/metamoji/pdf/core/PDFParserKt;->byteArrayToString([B)Ljava/lang/String;

    move-result-object p0

    .line 30
    sget-object v0, Lcom/metamoji/pdf/core/PDFParserKt;->NUMBER_PATTERN:Lkotlin/text/Regex;

    check-cast p0, Ljava/lang/CharSequence;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, p0, v3, v1, v2}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 31
    invoke-interface {p0}, Lkotlin/text/MatchResult;->getValue()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static final syntaxError(Ljava/lang/String;)Ljava/lang/Void;
    .locals 1

    const-string v0, "msg"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    new-instance v0, Lcom/metamoji/pdf/core/PDFException;

    invoke-direct {v0, p0}, Lcom/metamoji/pdf/core/PDFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final tryParseInt([B)Ljava/lang/Integer;
    .locals 0

    .line 24
    invoke-static {p0}, Lcom/metamoji/pdf/core/PDFParserKt;->byteArrayToString([B)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
