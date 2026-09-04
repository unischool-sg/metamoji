.class public final Lcom/metamoji/nt/pdfsave/PdfEncryptKey;
.super Ljava/lang/Object;
.source "PdfSaveEncrypt.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0003R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/metamoji/nt/pdfsave/PdfEncryptKey;",
        "",
        "_key",
        "",
        "<init>",
        "([B)V",
        "encrypt",
        "data",
        "app"
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
.field private final _key:[B


# direct methods
.method public constructor <init>([B)V
    .locals 1

    const-string v0, "_key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/nt/pdfsave/PdfEncryptKey;->_key:[B

    return-void
.end method


# virtual methods
.method public final encrypt([B)[B
    .locals 2

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    sget-object v0, Lcom/metamoji/pdf/core/RC4;->INSTANCE:Lcom/metamoji/pdf/core/RC4;

    iget-object v1, p0, Lcom/metamoji/nt/pdfsave/PdfEncryptKey;->_key:[B

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/pdf/core/RC4;->encrypt([B[B)[B

    move-result-object p1

    return-object p1
.end method
