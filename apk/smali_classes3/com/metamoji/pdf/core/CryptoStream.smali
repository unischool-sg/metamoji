.class public final Lcom/metamoji/pdf/core/CryptoStream;
.super Lcom/metamoji/pdf/core/PDFInputStream;
.source "Crypto.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0008\u0010\t\u001a\u00020\nH\u0016J \u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u000cH\u0016R\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/metamoji/pdf/core/CryptoStream;",
        "Lcom/metamoji/pdf/core/PDFInputStream;",
        "_upper",
        "cipher",
        "Ljavax/crypto/Cipher;",
        "<init>",
        "(Lcom/metamoji/pdf/core/PDFInputStream;Ljavax/crypto/Cipher;)V",
        "_stream",
        "Ljavax/crypto/CipherInputStream;",
        "close",
        "",
        "_read",
        "",
        "buffer",
        "",
        "offset",
        "maxRead",
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
.field private final _stream:Ljavax/crypto/CipherInputStream;

.field private final _upper:Lcom/metamoji/pdf/core/PDFInputStream;


# direct methods
.method public constructor <init>(Lcom/metamoji/pdf/core/PDFInputStream;Ljavax/crypto/Cipher;)V
    .locals 1

    const-string v0, "_upper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cipher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Lcom/metamoji/pdf/core/PDFInputStream;-><init>()V

    iput-object p1, p0, Lcom/metamoji/pdf/core/CryptoStream;->_upper:Lcom/metamoji/pdf/core/PDFInputStream;

    .line 33
    new-instance v0, Ljavax/crypto/CipherInputStream;

    check-cast p1, Ljava/io/InputStream;

    invoke-direct {v0, p1, p2}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    iput-object v0, p0, Lcom/metamoji/pdf/core/CryptoStream;->_stream:Ljavax/crypto/CipherInputStream;

    return-void
.end method


# virtual methods
.method public _read([BII)I
    .locals 1

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/metamoji/pdf/core/CryptoStream;->_stream:Ljavax/crypto/CipherInputStream;

    check-cast v0, Ljava/io/InputStream;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/metamoji/pdf/core/CryptoStream;->readFromStream(Ljava/io/InputStream;[BII)I

    move-result p1

    return p1
.end method

.method public close()V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/metamoji/pdf/core/CryptoStream;->_stream:Ljavax/crypto/CipherInputStream;

    invoke-virtual {v0}, Ljavax/crypto/CipherInputStream;->close()V

    .line 37
    iget-object v0, p0, Lcom/metamoji/pdf/core/CryptoStream;->_upper:Lcom/metamoji/pdf/core/PDFInputStream;

    invoke-virtual {v0}, Lcom/metamoji/pdf/core/PDFInputStream;->close()V

    .line 38
    invoke-super {p0}, Lcom/metamoji/pdf/core/PDFInputStream;->close()V

    return-void
.end method
