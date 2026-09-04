.class Lcom/metamoji/ui/dialog/PDFImportOption$5$1;
.super Ljava/lang/Object;
.source "PDFImportOption.java"

# interfaces
.implements Lcom/metamoji/ui/dialog/PDFImportOption$IPdfOptResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/PDFImportOption$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/PDFImportOption$5;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/PDFImportOption$5;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 470
    iput-object p1, p0, Lcom/metamoji/ui/dialog/PDFImportOption$5$1;->this$0:Lcom/metamoji/ui/dialog/PDFImportOption$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/metamoji/nt/NtPDFImportOptions;)V
    .locals 1

    .line 473
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PDFImportOption$5$1;->this$0:Lcom/metamoji/ui/dialog/PDFImportOption$5;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/PDFImportOption$5;->val$syncPbe:Lcom/metamoji/ui/dialog/PDFImportOption$SyncPdfOpt;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/dialog/PDFImportOption$SyncPdfOpt;->setResult(Lcom/metamoji/nt/NtPDFImportOptions;)V

    return-void
.end method
