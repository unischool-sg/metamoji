.class Lcom/metamoji/ui/dialog/PDFImportOption$SyncPdfOpt;
.super Ljava/lang/Object;
.source "PDFImportOption.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/dialog/PDFImportOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SyncPdfOpt"
.end annotation


# instance fields
.field private mCancelling:Z

.field private mLatch:Ljava/util/concurrent/CountDownLatch;

.field private mPdfOpt:Lcom/metamoji/nt/NtPDFImportOptions;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 381
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/metamoji/ui/dialog/PDFImportOption$SyncPdfOpt;->mLatch:Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x0

    .line 382
    iput-object v0, p0, Lcom/metamoji/ui/dialog/PDFImportOption$SyncPdfOpt;->mPdfOpt:Lcom/metamoji/nt/NtPDFImportOptions;

    const/4 v0, 0x0

    .line 383
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/PDFImportOption$SyncPdfOpt;->mCancelling:Z

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 400
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/PDFImportOption$SyncPdfOpt;->mCancelling:Z

    return-void
.end method

.method public isCancelling()Z
    .locals 1

    .line 404
    iget-boolean v0, p0, Lcom/metamoji/ui/dialog/PDFImportOption$SyncPdfOpt;->mCancelling:Z

    return v0
.end method

.method public result()Lcom/metamoji/nt/NtPDFImportOptions;
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PDFImportOption$SyncPdfOpt;->mPdfOpt:Lcom/metamoji/nt/NtPDFImportOptions;

    return-object v0
.end method

.method public setResult(Lcom/metamoji/nt/NtPDFImportOptions;)V
    .locals 0

    .line 387
    iput-object p1, p0, Lcom/metamoji/ui/dialog/PDFImportOption$SyncPdfOpt;->mPdfOpt:Lcom/metamoji/nt/NtPDFImportOptions;

    .line 388
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PDFImportOption$SyncPdfOpt;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public waitFor()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 392
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PDFImportOption$SyncPdfOpt;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    return-void
.end method
