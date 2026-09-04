.class public final Lcom/metamoji/media/video/dialog/MfServerConsumptionInfoViewModel;
.super Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel;
.source "MfFileListDialog.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u000f\u001a\u00020\u0010H\u0014R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u001a\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\n0\t8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000c\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/metamoji/media/video/dialog/MfServerConsumptionInfoViewModel;",
        "Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel;",
        "<init>",
        "()V",
        "forDrive",
        "",
        "getForDrive",
        "()Z",
        "personalConsumed",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "getPersonalConsumed",
        "()Landroidx/lifecycle/MutableLiveData;",
        "companyConsumed",
        "getCompanyConsumed",
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
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel;-><init>()V

    return-void
.end method

.method public static final synthetic access$getCompanyConsumed(Lcom/metamoji/media/video/dialog/MfServerConsumptionInfoViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfServerConsumptionInfoViewModel;->getCompanyConsumed()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getPersonalConsumed(Lcom/metamoji/media/video/dialog/MfServerConsumptionInfoViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfServerConsumptionInfoViewModel;->getPersonalConsumed()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    return-object p0
.end method

.method private final getCompanyConsumed()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 76
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfServerConsumptionInfoViewModel;->getConsumptionB()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    return-object v0
.end method

.method private final getPersonalConsumed()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 74
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfServerConsumptionInfoViewModel;->getConsumptionA()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected beginTask()V
    .locals 7

    .line 79
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/metamoji/media/video/dialog/MfServerConsumptionInfoViewModel$beginTask$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/metamoji/media/video/dialog/MfServerConsumptionInfoViewModel$beginTask$1;-><init>(Lcom/metamoji/media/video/dialog/MfServerConsumptionInfoViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/media/video/dialog/MfServerConsumptionInfoViewModel;->setMTask(Lkotlinx/coroutines/Deferred;)V

    return-void
.end method

.method public getForDrive()Z
    .locals 1

    .line 71
    iget-boolean v0, p0, Lcom/metamoji/media/video/dialog/MfServerConsumptionInfoViewModel;->forDrive:Z

    return v0
.end method
