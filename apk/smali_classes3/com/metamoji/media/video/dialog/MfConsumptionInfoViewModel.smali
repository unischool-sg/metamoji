.class public abstract Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "MfFileListDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel$EditMode;,
        Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel$SelectedItem;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\n\u0008&\u0018\u00002\u00020\u0001:\u0002!\"B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u001e\u001a\u00020\u0019J\u0008\u0010\u001f\u001a\u00020\u0019H\u0016J\u0008\u0010 \u001a\u00020\u0019H$R\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0017\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0008R\u0017\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u0008R\u0017\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0008R\u0019\u0010\u0011\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0008R\u0012\u0010\u0014\u001a\u00020\u000fX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016R\"\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0019\u0018\u00010\u0018X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001d\u00a8\u0006#"
    }
    d2 = {
        "Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "<init>",
        "()V",
        "consumptionA",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "getConsumptionA",
        "()Landroidx/lifecycle/MutableLiveData;",
        "consumptionB",
        "getConsumptionB",
        "editMode",
        "Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel$EditMode;",
        "getEditMode",
        "busy",
        "",
        "getBusy",
        "selectedItem",
        "Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel$SelectedItem;",
        "getSelectedItem",
        "forDrive",
        "getForDrive",
        "()Z",
        "mTask",
        "Lkotlinx/coroutines/Deferred;",
        "",
        "getMTask",
        "()Lkotlinx/coroutines/Deferred;",
        "setMTask",
        "(Lkotlinx/coroutines/Deferred;)V",
        "initialize",
        "update",
        "beginTask",
        "EditMode",
        "SelectedItem",
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
.field private final busy:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final consumptionA:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final consumptionB:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final editMode:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel$EditMode;",
            ">;"
        }
    .end annotation
.end field

.field private mTask:Lkotlinx/coroutines/Deferred;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/Deferred<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final selectedItem:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel$SelectedItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 38
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel;->consumptionA:Landroidx/lifecycle/MutableLiveData;

    .line 39
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel;->consumptionB:Landroidx/lifecycle/MutableLiveData;

    .line 40
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel;->editMode:Landroidx/lifecycle/MutableLiveData;

    .line 41
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel;->busy:Landroidx/lifecycle/MutableLiveData;

    .line 42
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel;->selectedItem:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method


# virtual methods
.method protected abstract beginTask()V
.end method

.method public final getBusy()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel;->busy:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getConsumptionA()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel;->consumptionA:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getConsumptionB()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel;->consumptionB:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getEditMode()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel$EditMode;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel;->editMode:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public abstract getForDrive()Z
.end method

.method protected final getMTask()Lkotlinx/coroutines/Deferred;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/Deferred<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel;->mTask:Lkotlinx/coroutines/Deferred;

    return-object v0
.end method

.method public final getSelectedItem()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel$SelectedItem;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel;->selectedItem:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final initialize()V
    .locals 5

    .line 48
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel;->mTask:Lkotlinx/coroutines/Deferred;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast v0, Lkotlinx/coroutines/Job;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel;->consumptionA:Landroidx/lifecycle/MutableLiveData;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 50
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel;->consumptionB:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 51
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel;->editMode:Landroidx/lifecycle/MutableLiveData;

    sget-object v2, Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel$EditMode;->NONE:Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel$EditMode;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 52
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel;->busy:Landroidx/lifecycle/MutableLiveData;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 53
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel;->selectedItem:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 54
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel;->beginTask()V

    return-void
.end method

.method protected final setMTask(Lkotlinx/coroutines/Deferred;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/Deferred<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 45
    iput-object p1, p0, Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel;->mTask:Lkotlinx/coroutines/Deferred;

    return-void
.end method

.method public update()V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel;->mTask:Lkotlinx/coroutines/Deferred;

    if-eqz v0, :cond_0

    return-void

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel;->beginTask()V

    return-void
.end method
