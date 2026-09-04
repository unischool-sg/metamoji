.class Lcom/metamoji/ui/dialog/PDFImportOption$5;
.super Ljava/lang/Object;
.source "PDFImportOption.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/PDFImportOption;->setPdfImportOption(Lcom/metamoji/nt/NtPDFImportOptions;FFLandroid/graphics/Bitmap;)Lcom/metamoji/nt/NtPDFImportOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$height:F

.field final synthetic val$image:Landroid/graphics/Bitmap;

.field final synthetic val$options:Lcom/metamoji/nt/NtPDFImportOptions;

.field final synthetic val$syncPbe:Lcom/metamoji/ui/dialog/PDFImportOption$SyncPdfOpt;

.field final synthetic val$width:F


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/PDFImportOption$SyncPdfOpt;Lcom/metamoji/nt/NtPDFImportOptions;FFLandroid/graphics/Bitmap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 467
    iput-object p1, p0, Lcom/metamoji/ui/dialog/PDFImportOption$5;->val$syncPbe:Lcom/metamoji/ui/dialog/PDFImportOption$SyncPdfOpt;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/PDFImportOption$5;->val$options:Lcom/metamoji/nt/NtPDFImportOptions;

    iput p3, p0, Lcom/metamoji/ui/dialog/PDFImportOption$5;->val$width:F

    iput p4, p0, Lcom/metamoji/ui/dialog/PDFImportOption$5;->val$height:F

    iput-object p5, p0, Lcom/metamoji/ui/dialog/PDFImportOption$5;->val$image:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 470
    new-instance v0, Lcom/metamoji/ui/dialog/PDFImportOption$5$1;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/dialog/PDFImportOption$5$1;-><init>(Lcom/metamoji/ui/dialog/PDFImportOption$5;)V

    iget-object v1, p0, Lcom/metamoji/ui/dialog/PDFImportOption$5;->val$syncPbe:Lcom/metamoji/ui/dialog/PDFImportOption$SyncPdfOpt;

    iget-object v2, p0, Lcom/metamoji/ui/dialog/PDFImportOption$5;->val$options:Lcom/metamoji/nt/NtPDFImportOptions;

    iget v3, p0, Lcom/metamoji/ui/dialog/PDFImportOption$5;->val$width:F

    iget v4, p0, Lcom/metamoji/ui/dialog/PDFImportOption$5;->val$height:F

    iget-object v5, p0, Lcom/metamoji/ui/dialog/PDFImportOption$5;->val$image:Landroid/graphics/Bitmap;

    invoke-static/range {v0 .. v5}, Lcom/metamoji/ui/dialog/PDFImportOption;->-$$Nest$smasyncPdfImportOption(Lcom/metamoji/ui/dialog/PDFImportOption$IPdfOptResult;Lcom/metamoji/ui/dialog/PDFImportOption$SyncPdfOpt;Lcom/metamoji/nt/NtPDFImportOptions;FFLandroid/graphics/Bitmap;)V

    return-void
.end method
