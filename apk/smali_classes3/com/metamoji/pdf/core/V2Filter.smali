.class final Lcom/metamoji/pdf/core/V2Filter;
.super Lcom/metamoji/pdf/core/CryptFilter;
.source "CryptFilter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0007H\u0016J\u0018\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011H\u0016J\u0018\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0007H\u0016J\u001a\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00162\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0007H\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u00020\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/metamoji/pdf/core/V2Filter;",
        "Lcom/metamoji/pdf/core/CryptFilter;",
        "obj",
        "Lcom/metamoji/pdf/core/PDFObj;",
        "<init>",
        "(Lcom/metamoji/pdf/core/PDFObj;)V",
        "_key",
        "",
        "locked",
        "",
        "getLocked",
        "()Z",
        "setKey",
        "",
        "key",
        "getCryptoKey",
        "id",
        "",
        "gen",
        "decrypt",
        "data",
        "filter",
        "Lcom/metamoji/pdf/core/PDFInputStream;",
        "upper",
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
.field private _key:[B


# direct methods
.method public constructor <init>(Lcom/metamoji/pdf/core/PDFObj;)V
    .locals 1

    const-string v0, "obj"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-direct {p0, p1}, Lcom/metamoji/pdf/core/CryptFilter;-><init>(Lcom/metamoji/pdf/core/PDFObj;)V

    .line 83
    invoke-static {}, Lcom/metamoji/pdf/core/PDFParserKt;->getEMPTY_BYTES()[B

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/pdf/core/V2Filter;->_key:[B

    return-void
.end method


# virtual methods
.method public decrypt([B[B)[B
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    sget-object v0, Lcom/metamoji/pdf/core/RC4;->INSTANCE:Lcom/metamoji/pdf/core/RC4;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/pdf/core/RC4;->decrypt([B[B)[B

    move-result-object p1

    return-object p1
.end method

.method public filter(Lcom/metamoji/pdf/core/PDFInputStream;[B)Lcom/metamoji/pdf/core/PDFInputStream;
    .locals 1

    const-string/jumbo v0, "upper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 95
    sget-object v0, Lcom/metamoji/pdf/core/RC4;->INSTANCE:Lcom/metamoji/pdf/core/RC4;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/pdf/core/RC4;->getReader(Lcom/metamoji/pdf/core/PDFInputStream;[B)Lcom/metamoji/pdf/core/PDFInputStream;

    move-result-object p1

    return-object p1

    .line 94
    :cond_0
    new-instance p1, Lcom/metamoji/pdf/core/PDFException;

    const-string p2, "cryption key must be set"

    invoke-direct {p1, p2}, Lcom/metamoji/pdf/core/PDFException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getCryptoKey(II)[B
    .locals 3

    .line 89
    sget-object v0, Lcom/metamoji/pdf/core/CryptFilter;->Companion:Lcom/metamoji/pdf/core/CryptFilter$Companion;

    iget-object v1, p0, Lcom/metamoji/pdf/core/V2Filter;->_key:[B

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/metamoji/pdf/core/CryptFilter$Companion;->cryptoKey([BIIZ)[B

    move-result-object p1

    return-object p1
.end method

.method public getLocked()Z
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/metamoji/pdf/core/V2Filter;->_key:[B

    array-length v0, v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setKey([B)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    iput-object p1, p0, Lcom/metamoji/pdf/core/V2Filter;->_key:[B

    return-void
.end method
