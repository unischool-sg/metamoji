.class public final Lcom/metamoji/nt/pdfsave/PdfSavePdfKt;
.super Ljava/lang/Object;
.source "PdfSavePdf.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "getFormat",
        "Ljava/text/DecimalFormat;",
        "format",
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
.method public static final synthetic access$getFormat(Ljava/lang/String;)Ljava/text/DecimalFormat;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/metamoji/nt/pdfsave/PdfSavePdfKt;->getFormat(Ljava/lang/String;)Ljava/text/DecimalFormat;

    move-result-object p0

    return-object p0
.end method

.method private static final getFormat(Ljava/lang/String;)Ljava/text/DecimalFormat;
    .locals 2

    .line 20
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    .line 21
    const-string v1, "null cannot be cast to non-null type java.text.DecimalFormat"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/text/DecimalFormat;

    .line 22
    invoke-virtual {v0, p0}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    return-object v0
.end method
