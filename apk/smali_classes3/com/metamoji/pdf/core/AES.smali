.class public final Lcom/metamoji/pdf/core/AES;
.super Ljava/lang/Object;
.source "Crypto.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\nJ\u001e\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\nJ\u0016\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\nJ&\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u0012J&\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u0012J,\u0010\u0014\u001a\u00020\u00152\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\n2\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00122\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0012H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/metamoji/pdf/core/AES;",
        "",
        "<init>",
        "()V",
        "IV_LENGTH",
        "",
        "getReader",
        "Lcom/metamoji/pdf/core/PDFInputStream;",
        "upper",
        "key",
        "",
        "getWriter",
        "Ljava/io/OutputStream;",
        "downstream",
        "iv",
        "decrypt",
        "data",
        "padding",
        "",
        "encrypt",
        "createCipher",
        "Ljavax/crypto/Cipher;",
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
.field public static final INSTANCE:Lcom/metamoji/pdf/core/AES;

.field private static final IV_LENGTH:I = 0x10


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/metamoji/pdf/core/AES;

    invoke-direct {v0}, Lcom/metamoji/pdf/core/AES;-><init>()V

    sput-object v0, Lcom/metamoji/pdf/core/AES;->INSTANCE:Lcom/metamoji/pdf/core/AES;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final createCipher([B[BZZ)Ljavax/crypto/Cipher;
    .locals 2

    if-eqz p4, :cond_0

    .line 98
    const-string p4, "AES/CBC/PKCS5Padding"

    goto :goto_0

    :cond_0
    const-string p4, "AES/CBC/NoPadding"

    :goto_0
    if-eqz p3, :cond_1

    const/4 p3, 0x1

    goto :goto_1

    :cond_1
    const/4 p3, 0x2

    .line 100
    :goto_1
    invoke-static {p4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p4

    .line 101
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v0, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 102
    new-instance p2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {p2, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 103
    check-cast p2, Ljava/security/Key;

    check-cast v0, Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {p4, p3, p2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 100
    const-string p1, "apply(...)"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p4
.end method

.method static synthetic createCipher$default(Lcom/metamoji/pdf/core/AES;[B[BZZILjava/lang/Object;)Ljavax/crypto/Cipher;
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x1

    .line 97
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/metamoji/pdf/core/AES;->createCipher([B[BZZ)Ljavax/crypto/Cipher;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final decrypt([B[B)[B
    .locals 9

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/16 v1, 0x10

    .line 84
    invoke-static {p1, v0, v1}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object v4

    .line 85
    array-length v0, p1

    invoke-static {p1, v1, v0}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object p1

    const/16 v7, 0xc

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p2

    .line 86
    invoke-static/range {v2 .. v8}, Lcom/metamoji/pdf/core/AES;->createCipher$default(Lcom/metamoji/pdf/core/AES;[B[BZZILjava/lang/Object;)Ljavax/crypto/Cipher;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    const-string p2, "doFinal(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final decrypt([B[B[BZ)[B
    .locals 8

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iv"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    .line 90
    invoke-static/range {v1 .. v7}, Lcom/metamoji/pdf/core/AES;->createCipher$default(Lcom/metamoji/pdf/core/AES;[B[BZZILjava/lang/Object;)Ljavax/crypto/Cipher;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    const-string p2, "doFinal(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final encrypt([B[B[BZ)[B
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iv"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 94
    invoke-direct {p0, p2, p3, v0, p4}, Lcom/metamoji/pdf/core/AES;->createCipher([B[BZZ)Ljavax/crypto/Cipher;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    const-string p2, "doFinal(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getReader(Lcom/metamoji/pdf/core/PDFInputStream;[B)Lcom/metamoji/pdf/core/PDFInputStream;
    .locals 8

    const-string/jumbo v0, "upper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x10

    .line 73
    new-array v3, v0, [B

    .line 74
    invoke-virtual {p1, v3}, Lcom/metamoji/pdf/core/PDFInputStream;->read([B)I

    .line 75
    new-instance v0, Lcom/metamoji/pdf/core/CryptoStream;

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p2

    invoke-static/range {v1 .. v7}, Lcom/metamoji/pdf/core/AES;->createCipher$default(Lcom/metamoji/pdf/core/AES;[B[BZZILjava/lang/Object;)Ljavax/crypto/Cipher;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/metamoji/pdf/core/CryptoStream;-><init>(Lcom/metamoji/pdf/core/PDFInputStream;Ljavax/crypto/Cipher;)V

    check-cast v0, Lcom/metamoji/pdf/core/PDFInputStream;

    return-object v0
.end method

.method public final getWriter(Ljava/io/OutputStream;[B[B)Ljava/io/OutputStream;
    .locals 8

    const-string v0, "downstream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iv"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p1, p3}, Ljava/io/OutputStream;->write([B)V

    .line 80
    new-instance v0, Ljavax/crypto/CipherOutputStream;

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v1 .. v7}, Lcom/metamoji/pdf/core/AES;->createCipher$default(Lcom/metamoji/pdf/core/AES;[B[BZZILjava/lang/Object;)Ljavax/crypto/Cipher;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    check-cast v0, Ljava/io/OutputStream;

    return-object v0
.end method
