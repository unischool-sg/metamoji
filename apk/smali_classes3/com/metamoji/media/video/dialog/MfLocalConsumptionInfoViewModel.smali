.class public final Lcom/metamoji/media/video/dialog/MfLocalConsumptionInfoViewModel;
.super Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel;
.source "MfFileListDialog.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u000f\u001a\u00020\u0010H\u0014R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0017\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\n0\t8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000c\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/metamoji/media/video/dialog/MfLocalConsumptionInfoViewModel;",
        "Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel;",
        "<init>",
        "()V",
        "forDrive",
        "",
        "getForDrive",
        "()Z",
        "offlineConsumption",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "getOfflineConsumption",
        "()Landroidx/lifecycle/MutableLiveData;",
        "cacheConsumption",
        "getCacheConsumption",
        "beginTask",
        "",
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


# instance fields
.field private final forDrive:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 90
    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel;-><init>()V

    const/4 v0, 0x1

    .line 91
    iput-boolean v0, p0, Lcom/metamoji/media/video/dialog/MfLocalConsumptionInfoViewModel;->forDrive:Z

    return-void
.end method

.method private final getCacheConsumption()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 96
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfLocalConsumptionInfoViewModel;->getConsumptionB()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected beginTask()V
    .locals 4

    .line 99
    sget-object v0, Lcom/metamoji/video/AmvCacheManager;->INSTANCE:Lcom/metamoji/video/AmvCacheManager;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvCacheManager;->getCacheStatistics()Lcom/metamoji/video/AmvCacheManager$Statistics;

    move-result-object v0

    .line 100
    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfLocalConsumptionInfoViewModel;->getCacheConsumption()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v0}, Lcom/metamoji/video/AmvCacheManager$Statistics;->getTotalSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public getForDrive()Z
    .locals 1

    .line 91
    iget-boolean v0, p0, Lcom/metamoji/media/video/dialog/MfLocalConsumptionInfoViewModel;->forDrive:Z

    return v0
.end method

.method public final getOfflineConsumption()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 94
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfLocalConsumptionInfoViewModel;->getConsumptionA()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    return-object v0
.end method
