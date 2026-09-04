.class public final Lcom/metamoji/pdf/core/PDFXRefKt;
.super Ljava/lang/Object;
.source "PDFXRef.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0002"
    }
    d2 = {
        "XREF_ENTRY",
        "Lkotlin/text/Regex;",
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
.field private static final XREF_ENTRY:Lkotlin/text/Regex;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 7
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "^(\\d{10}) (\\d{5}) (.)"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/metamoji/pdf/core/PDFXRefKt;->XREF_ENTRY:Lkotlin/text/Regex;

    return-void
.end method

.method public static final synthetic access$getXREF_ENTRY$p()Lkotlin/text/Regex;
    .locals 1

    .line 1
    sget-object v0, Lcom/metamoji/pdf/core/PDFXRefKt;->XREF_ENTRY:Lkotlin/text/Regex;

    return-object v0
.end method
