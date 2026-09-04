.class public final Lcom/metamoji/nt/pdfsave/PdfSaveEncryptKt;
.super Ljava/lang/Object;
.source "PdfSaveEncrypt.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0008\n\u0000\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "resize",
        "",
        "size",
        "",
        "app"
    }
    k = 0x2
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final synthetic access$resize([BI)[B
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/metamoji/nt/pdfsave/PdfSaveEncryptKt;->resize([BI)[B

    move-result-object p0

    return-object p0
.end method

.method private static final resize([BI)[B
    .locals 4

    .line 12
    new-array v0, p1, [B

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_1

    array-length v3, p0

    if-ge v2, v3, :cond_0

    aget-byte v3, p0, v2

    goto :goto_1

    :cond_0
    move v3, v1

    :goto_1
    aput-byte v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
