.class Lcom/metamoji/cm/CmUtils$SyncObj;
.super Ljava/lang/Object;
.source "CmUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/cm/CmUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SyncObj"
.end annotation


# instance fields
.field private mLatch:Ljava/util/concurrent/CountDownLatch;

.field private mResult:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1321
    iput-boolean v0, p0, Lcom/metamoji/cm/CmUtils$SyncObj;->mResult:Z

    .line 1322
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/metamoji/cm/CmUtils$SyncObj;->mLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method getResult()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1331
    iget-object v0, p0, Lcom/metamoji/cm/CmUtils$SyncObj;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 1332
    iget-boolean v0, p0, Lcom/metamoji/cm/CmUtils$SyncObj;->mResult:Z

    return v0
.end method

.method setResult(Z)V
    .locals 0

    .line 1326
    iput-boolean p1, p0, Lcom/metamoji/cm/CmUtils$SyncObj;->mResult:Z

    .line 1327
    iget-object p1, p0, Lcom/metamoji/cm/CmUtils$SyncObj;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
