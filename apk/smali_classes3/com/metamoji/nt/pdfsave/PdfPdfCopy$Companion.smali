.class public final Lcom/metamoji/nt/pdfsave/PdfPdfCopy$Companion;
.super Ljava/lang/Object;
.source "PdfSavePdf.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/pdfsave/PdfPdfCopy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0018\u0010\u0008\u001a\n \n*\u0004\u0018\u00010\t0\t2\u0006\u0010\u000b\u001a\u00020\u000cH\u0002J\u0018\u0010\r\u001a\n \n*\u0004\u0018\u00010\t0\t2\u0006\u0010\u000b\u001a\u00020\u000cH\u0002J\u0018\u0010\u000e\u001a\n \n*\u0004\u0018\u00010\t0\t2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/metamoji/nt/pdfsave/PdfPdfCopy$Companion;",
        "",
        "<init>",
        "()V",
        "F3",
        "Ljava/text/DecimalFormat;",
        "F5",
        "F8",
        "COORD",
        "",
        "kotlin.jvm.PlatformType",
        "d",
        "",
        "MATRIX",
        "COLORCOMP",
        "c",
        "Lcom/metamoji/pdf/core/PDFObj;",
        "EXCLUDE_FOR_RESOURCES",
        "",
        "EXCLUDE_LENGTH",
        "F_PATTERN",
        "Lkotlin/text/Regex;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$Companion;-><init>()V

    return-void
.end method

.method private final COLORCOMP(Lcom/metamoji/pdf/core/PDFObj;)Ljava/lang/String;
    .locals 3

    .line 109
    invoke-static {}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->access$getF3$cp()Ljava/text/DecimalFormat;

    move-result-object v0

    invoke-virtual {p1}, Lcom/metamoji/pdf/core/PDFObj;->doubleVal()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final COORD(F)Ljava/lang/String;
    .locals 1

    .line 106
    invoke-static {}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->access$getF5$cp()Ljava/text/DecimalFormat;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final MATRIX(F)Ljava/lang/String;
    .locals 1

    .line 107
    invoke-static {}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->access$getF8$cp()Ljava/text/DecimalFormat;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static final synthetic access$COLORCOMP(Lcom/metamoji/nt/pdfsave/PdfPdfCopy$Companion;Lcom/metamoji/pdf/core/PDFObj;)Ljava/lang/String;
    .locals 0

    .line 101
    invoke-direct {p0, p1}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$Companion;->COLORCOMP(Lcom/metamoji/pdf/core/PDFObj;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$COORD(Lcom/metamoji/nt/pdfsave/PdfPdfCopy$Companion;F)Ljava/lang/String;
    .locals 0

    .line 101
    invoke-direct {p0, p1}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$Companion;->COORD(F)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$MATRIX(Lcom/metamoji/nt/pdfsave/PdfPdfCopy$Companion;F)Ljava/lang/String;
    .locals 0

    .line 101
    invoke-direct {p0, p1}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$Companion;->MATRIX(F)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
