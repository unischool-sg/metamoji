.class Lcom/metamoji/ui/dialog/UiPasswordDialog$SyncPbe;
.super Ljava/lang/Object;
.source "UiPasswordDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/dialog/UiPasswordDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SyncPbe"
.end annotation


# instance fields
.field private mCancelling:Z

.field private mLatch:Ljava/util/concurrent/CountDownLatch;

.field private mPbe:Lcom/metamoji/cm/PBE;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/metamoji/ui/dialog/UiPasswordDialog$SyncPbe;->mLatch:Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x0

    .line 185
    iput-object v0, p0, Lcom/metamoji/ui/dialog/UiPasswordDialog$SyncPbe;->mPbe:Lcom/metamoji/cm/PBE;

    const/4 v0, 0x0

    .line 186
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/UiPasswordDialog$SyncPbe;->mCancelling:Z

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 203
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/UiPasswordDialog$SyncPbe;->mCancelling:Z

    return-void
.end method

.method public isCancelling()Z
    .locals 1

    .line 207
    iget-boolean v0, p0, Lcom/metamoji/ui/dialog/UiPasswordDialog$SyncPbe;->mCancelling:Z

    return v0
.end method

.method public result()Lcom/metamoji/cm/PBE;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/metamoji/ui/dialog/UiPasswordDialog$SyncPbe;->mPbe:Lcom/metamoji/cm/PBE;

    return-object v0
.end method

.method public setResult(Lcom/metamoji/cm/PBE;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/metamoji/ui/dialog/UiPasswordDialog$SyncPbe;->mPbe:Lcom/metamoji/cm/PBE;

    .line 191
    iget-object p1, p0, Lcom/metamoji/ui/dialog/UiPasswordDialog$SyncPbe;->mLatch:Ljava/util/concurrent/CountDownLatch;

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

    .line 195
    iget-object v0, p0, Lcom/metamoji/ui/dialog/UiPasswordDialog$SyncPbe;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    return-void
.end method
