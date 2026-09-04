.class final Lcom/metamoji/pdf/core/IdentityFilter;
.super Lcom/metamoji/pdf/core/CryptFilter;
.source "CryptFilter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0018\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0010H\u0016J\u0018\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u001a\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00152\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0016R\u0014\u0010\u0006\u001a\u00020\u00078VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/metamoji/pdf/core/IdentityFilter;",
        "Lcom/metamoji/pdf/core/CryptFilter;",
        "obj",
        "Lcom/metamoji/pdf/core/PDFObj;",
        "<init>",
        "(Lcom/metamoji/pdf/core/PDFObj;)V",
        "locked",
        "",
        "getLocked",
        "()Z",
        "setKey",
        "",
        "key",
        "",
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


# direct methods
.method public constructor <init>(Lcom/metamoji/pdf/core/PDFObj;)V
    .locals 1

    const-string v0, "obj"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-direct {p0, p1}, Lcom/metamoji/pdf/core/CryptFilter;-><init>(Lcom/metamoji/pdf/core/PDFObj;)V

    return-void
.end method


# virtual methods
.method public decrypt([B[B)[B
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public filter(Lcom/metamoji/pdf/core/PDFInputStream;[B)Lcom/metamoji/pdf/core/PDFInputStream;
    .locals 0

    const-string/jumbo p2, "upper"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getCryptoKey(II)[B
    .locals 0

    .line 75
    invoke-static {}, Lcom/metamoji/pdf/core/PDFParserKt;->getEMPTY_BYTES()[B

    move-result-object p1

    return-object p1
.end method

.method public getLocked()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setKey([B)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
