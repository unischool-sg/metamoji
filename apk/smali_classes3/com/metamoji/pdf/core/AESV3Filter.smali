.class final Lcom/metamoji/pdf/core/AESV3Filter;
.super Lcom/metamoji/pdf/core/AESV2Filter;
.source "CryptFilter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/metamoji/pdf/core/AESV3Filter;",
        "Lcom/metamoji/pdf/core/AESV2Filter;",
        "obj",
        "Lcom/metamoji/pdf/core/PDFObj;",
        "<init>",
        "(Lcom/metamoji/pdf/core/PDFObj;)V",
        "getCryptoKey",
        "",
        "id",
        "",
        "gen",
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

    .line 116
    invoke-direct {p0, p1}, Lcom/metamoji/pdf/core/AESV2Filter;-><init>(Lcom/metamoji/pdf/core/PDFObj;)V

    return-void
.end method


# virtual methods
.method public getCryptoKey(II)[B
    .locals 0

    .line 117
    invoke-virtual {p0}, Lcom/metamoji/pdf/core/AESV3Filter;->get_key()[B

    move-result-object p1

    return-object p1
.end method
