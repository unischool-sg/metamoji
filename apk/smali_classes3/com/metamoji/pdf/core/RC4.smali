.class public final Lcom/metamoji/pdf/core/RC4;
.super Ljava/lang/Object;
.source "Crypto.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0008J\u0016\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u0008J\u0016\u0010\u000c\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0008J\u0016\u0010\u000e\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0008J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0007\u001a\u00020\u0008H\u0002\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/metamoji/pdf/core/RC4;",
        "",
        "<init>",
        "()V",
        "getReader",
        "Lcom/metamoji/pdf/core/PDFInputStream;",
        "upper",
        "key",
        "",
        "getWriter",
        "Ljava/io/OutputStream;",
        "downstream",
        "decrypt",
        "data",
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
.field public static final INSTANCE:Lcom/metamoji/pdf/core/RC4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/metamoji/pdf/core/RC4;

    invoke-direct {v0}, Lcom/metamoji/pdf/core/RC4;-><init>()V

    sput-object v0, Lcom/metamoji/pdf/core/RC4;->INSTANCE:Lcom/metamoji/pdf/core/RC4;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final createCipher([B)Ljavax/crypto/Cipher;
    .locals 3

    .line 62
    const-string v0, "RC4"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 63
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v2, p1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 p1, 0x2

    .line 64
    check-cast v2, Ljava/security/Key;

    invoke-virtual {v1, p1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 62
    const-string p1, "apply(...)"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public final decrypt([B[B)[B
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-direct {p0, p2}, Lcom/metamoji/pdf/core/RC4;->createCipher([B)Ljavax/crypto/Cipher;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    const-string p2, "doFinal(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final encrypt([B[B)[B
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/pdf/core/RC4;->decrypt([B[B)[B

    move-result-object p1

    return-object p1
.end method

.method public final getReader(Lcom/metamoji/pdf/core/PDFInputStream;[B)Lcom/metamoji/pdf/core/PDFInputStream;
    .locals 1

    const-string/jumbo v0, "upper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    new-instance v0, Lcom/metamoji/pdf/core/CryptoStream;

    invoke-direct {p0, p2}, Lcom/metamoji/pdf/core/RC4;->createCipher([B)Ljavax/crypto/Cipher;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/metamoji/pdf/core/CryptoStream;-><init>(Lcom/metamoji/pdf/core/PDFInputStream;Ljavax/crypto/Cipher;)V

    check-cast v0, Lcom/metamoji/pdf/core/PDFInputStream;

    return-object v0
.end method

.method public final getWriter(Ljava/io/OutputStream;[B)Ljava/io/OutputStream;
    .locals 1

    const-string v0, "downstream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    new-instance v0, Ljavax/crypto/CipherOutputStream;

    invoke-direct {p0, p2}, Lcom/metamoji/pdf/core/RC4;->createCipher([B)Ljavax/crypto/Cipher;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    check-cast v0, Ljava/io/OutputStream;

    return-object v0
.end method
