.class Lcom/metamoji/ui/dialog/PDFImportOption$4;
.super Ljava/lang/Object;
.source "PDFImportOption.java"

# interfaces
.implements Lcom/metamoji/ui/dialog/PDFImportOption$IOnResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/PDFImportOption;->asyncPdfImportOption(Lcom/metamoji/ui/dialog/PDFImportOption$IPdfOptResult;Lcom/metamoji/ui/dialog/PDFImportOption$SyncPdfOpt;Lcom/metamoji/nt/NtPDFImportOptions;FFLandroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$onResult:Lcom/metamoji/ui/dialog/PDFImportOption$IPdfOptResult;

.field final synthetic val$syncPbe:Lcom/metamoji/ui/dialog/PDFImportOption$SyncPdfOpt;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/PDFImportOption$SyncPdfOpt;Lcom/metamoji/ui/dialog/PDFImportOption$IPdfOptResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 424
    iput-object p1, p0, Lcom/metamoji/ui/dialog/PDFImportOption$4;->val$syncPbe:Lcom/metamoji/ui/dialog/PDFImportOption$SyncPdfOpt;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/PDFImportOption$4;->val$onResult:Lcom/metamoji/ui/dialog/PDFImportOption$IPdfOptResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/metamoji/nt/NtPDFImportOptions;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 427
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PDFImportOption$4;->val$syncPbe:Lcom/metamoji/ui/dialog/PDFImportOption$SyncPdfOpt;

    invoke-virtual {v0}, Lcom/metamoji/ui/dialog/PDFImportOption$SyncPdfOpt;->isCancelling()Z

    move-result v0

    if-nez v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PDFImportOption$4;->val$onResult:Lcom/metamoji/ui/dialog/PDFImportOption$IPdfOptResult;

    invoke-interface {v0, p1}, Lcom/metamoji/ui/dialog/PDFImportOption$IPdfOptResult;->onResult(Lcom/metamoji/nt/NtPDFImportOptions;)V

    return-void

    .line 432
    :cond_0
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PDFImportOption$4;->val$onResult:Lcom/metamoji/ui/dialog/PDFImportOption$IPdfOptResult;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/metamoji/ui/dialog/PDFImportOption$IPdfOptResult;->onResult(Lcom/metamoji/nt/NtPDFImportOptions;)V

    return-void
.end method
