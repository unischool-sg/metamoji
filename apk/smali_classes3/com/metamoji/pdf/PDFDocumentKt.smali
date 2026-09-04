.class public final Lcom/metamoji/pdf/PDFDocumentKt;
.super Ljava/lang/Object;
.source "PDFDocument.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u001a\u0018\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00012\u0006\u0010\t\u001a\u00020\u0001H\u0002\u001a \u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u0001H\u0002\u001a \u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u00012\u0006\u0010\u000e\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u0004H\u0002\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0005\u001a\u00020\u0006X\u0082D\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "FF4",
        "",
        "EmptyString",
        "HEADER_IN",
        "",
        "HEADER",
        "",
        "compareNames",
        "a",
        "b",
        "checkBytes",
        "",
        "b1",
        "offset",
        "b2",
        "len",
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
.field private static final EmptyString:[B

.field private static final FF4:[B

.field private static final HEADER:Ljava/lang/String;

.field private static final HEADER_IN:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    .line 21
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/metamoji/pdf/PDFDocumentKt;->FF4:[B

    const/4 v0, 0x0

    .line 23
    new-array v0, v0, [B

    sput-object v0, Lcom/metamoji/pdf/PDFDocumentKt;->EmptyString:[B

    const/16 v0, 0x400

    .line 25
    sput v0, Lcom/metamoji/pdf/PDFDocumentKt;->HEADER_IN:I

    .line 26
    const-string v0, "%PDF-"

    sput-object v0, Lcom/metamoji/pdf/PDFDocumentKt;->HEADER:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data
.end method

.method public static final synthetic access$checkBytes([BI[B)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/metamoji/pdf/PDFDocumentKt;->checkBytes([BI[B)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$checkBytes([B[BI)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/metamoji/pdf/PDFDocumentKt;->checkBytes([B[BI)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$compareNames([B[B)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/metamoji/pdf/PDFDocumentKt;->compareNames([B[B)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getEmptyString$p()[B
    .locals 1

    .line 1
    sget-object v0, Lcom/metamoji/pdf/PDFDocumentKt;->EmptyString:[B

    return-object v0
.end method

.method public static final synthetic access$getFF4$p()[B
    .locals 1

    .line 1
    sget-object v0, Lcom/metamoji/pdf/PDFDocumentKt;->FF4:[B

    return-object v0
.end method

.method public static final synthetic access$getHEADER$p()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/metamoji/pdf/PDFDocumentKt;->HEADER:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getHEADER_IN$p()I
    .locals 1

    .line 1
    sget v0, Lcom/metamoji/pdf/PDFDocumentKt;->HEADER_IN:I

    return v0
.end method

.method private static final checkBytes([BI[B)Z
    .locals 5

    .line 42
    array-length v0, p0

    array-length v1, p2

    add-int/2addr v1, p1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    .line 45
    :cond_0
    array-length v0, p2

    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_2

    add-int v3, p1, v1

    .line 46
    aget-byte v3, p0, v3

    aget-byte v4, p2, v1

    if-eq v3, v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private static final checkBytes([B[BI)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_1

    .line 55
    aget-byte v2, p0, v1

    aget-byte v3, p1, v1

    if-eq v2, v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private static final compareNames([B[B)I
    .locals 6

    .line 29
    array-length v0, p0

    .line 30
    array-length v1, p1

    .line 31
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 34
    aget-byte v4, p0, v3

    aget-byte v5, p1, v3

    if-le v4, v5, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-ge v4, v5, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    sub-int/2addr v0, v1

    return v0
.end method
