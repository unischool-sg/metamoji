.class public final Lcom/metamoji/nt/NtPrintPDF;
.super Ljava/lang/Object;
.source "NtPrintPDF.java"


# static fields
.field public static final CURRENT_PAGE:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canPrint()Z
    .locals 1

    const/16 v0, 0x13

    .line 23
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->checkOsVersion(I)Z

    move-result v0

    return v0
.end method

.method public static export2(Lcom/metamoji/nt/NtDocument;Ljava/io/File;Lcom/metamoji/nt/NtPDFExportRangeTargetPages;Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 43
    invoke-static {p0, p1, p2, p3}, Lcom/metamoji/nt/NtPrintPDF_19;->export2(Lcom/metamoji/nt/NtDocument;Ljava/io/File;Lcom/metamoji/nt/NtPDFExportRangeTargetPages;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static export2(Lcom/metamoji/nt/NtDocument;Ljava/io/File;[ILjava/lang/String;)Ljava/io/File;
    .locals 0

    .line 40
    invoke-static {p0, p1, p2, p3}, Lcom/metamoji/nt/NtPrintPDF_19;->export2(Lcom/metamoji/nt/NtDocument;Ljava/io/File;[ILjava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static print(Landroid/content/Context;Lcom/metamoji/nt/NtDocument;)V
    .locals 0

    .line 48
    invoke-static {p0, p1}, Lcom/metamoji/nt/NtPrintPDF_19;->print(Landroid/content/Context;Lcom/metamoji/nt/NtDocument;)V

    return-void
.end method

.method public static print(Landroid/content/Context;Ljava/io/File;)V
    .locals 0

    .line 51
    invoke-static {p0, p1}, Lcom/metamoji/nt/NtPrintPDF_19;->print(Landroid/content/Context;Ljava/io/File;)V

    return-void
.end method
