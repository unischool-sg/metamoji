.class public final Lcom/metamoji/ns/ui/NsCollaboWaitView2$Model;
.super Landroidx/lifecycle/ViewModel;
.source "NsCollaboWaitView2.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ns/ui/NsCollaboWaitView2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Model"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0006\u0010\u001f\u001a\u00020 R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0017\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0017\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000cR\u0017\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000cR\u0017\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00130\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u000cR\u0017\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u000cR\u0011\u0010\u0017\u001a\u00020\u0018\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u0017\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u001c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\u00a8\u0006!"
    }
    d2 = {
        "Lcom/metamoji/ns/ui/NsCollaboWaitView2$Model;",
        "Landroidx/lifecycle/ViewModel;",
        "savedStateHandle",
        "Landroidx/lifecycle/SavedStateHandle;",
        "<init>",
        "(Landroidx/lifecycle/SavedStateHandle;)V",
        "getSavedStateHandle",
        "()Landroidx/lifecycle/SavedStateHandle;",
        "message",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "getMessage",
        "()Landroidx/lifecycle/MutableLiveData;",
        "uiGuard",
        "",
        "getUiGuard",
        "displayView",
        "getDisplayView",
        "taskId",
        "",
        "getTaskId",
        "cancellable",
        "getCancellable",
        "cancelCommand",
        "Lcom/metamoji/lib/utils/binding/impl/Command;",
        "getCancelCommand",
        "()Lcom/metamoji/lib/utils/binding/impl/Command;",
        "cancelButtonVisible",
        "Landroidx/lifecycle/LiveData;",
        "getCancelButtonVisible",
        "()Landroidx/lifecycle/LiveData;",
        "cancel",
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
.field private final cancelButtonVisible:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final cancelCommand:Lcom/metamoji/lib/utils/binding/impl/Command;

.field private final cancellable:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final displayView:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final message:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final savedStateHandle:Landroidx/lifecycle/SavedStateHandle;

.field private final taskId:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final uiGuard:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/lifecycle/SavedStateHandle;)V
    .locals 3

    const-string/jumbo v0, "savedStateHandle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboWaitView2$Model;->savedStateHandle:Landroidx/lifecycle/SavedStateHandle;

    .line 21
    const-string v0, "message"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/SavedStateHandle;->getLiveData(Ljava/lang/String;Ljava/lang/Object;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboWaitView2$Model;->message:Landroidx/lifecycle/MutableLiveData;

    const/4 v0, 0x1

    .line 22
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "uiGuard"

    invoke-virtual {p1, v1, v0}, Landroidx/lifecycle/SavedStateHandle;->getLiveData(Ljava/lang/String;Ljava/lang/Object;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboWaitView2$Model;->uiGuard:Landroidx/lifecycle/MutableLiveData;

    .line 23
    const-string v1, "displayView"

    invoke-virtual {p1, v1, v0}, Landroidx/lifecycle/SavedStateHandle;->getLiveData(Ljava/lang/String;Ljava/lang/Object;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboWaitView2$Model;->displayView:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "taskId"

    invoke-virtual {p1, v2, v1}, Landroidx/lifecycle/SavedStateHandle;->getLiveData(Ljava/lang/String;Ljava/lang/Object;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboWaitView2$Model;->taskId:Landroidx/lifecycle/MutableLiveData;

    .line 25
    const-string v2, "cancellable"

    invoke-virtual {p1, v2, v0}, Landroidx/lifecycle/SavedStateHandle;->getLiveData(Ljava/lang/String;Ljava/lang/Object;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboWaitView2$Model;->cancellable:Landroidx/lifecycle/MutableLiveData;

    .line 26
    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/Command;

    invoke-direct {v0}, Lcom/metamoji/lib/utils/binding/impl/Command;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboWaitView2$Model;->cancelCommand:Lcom/metamoji/lib/utils/binding/impl/Command;

    .line 27
    check-cast v1, Landroidx/lifecycle/LiveData;

    check-cast p1, Landroidx/lifecycle/LiveData;

    new-instance v0, Lcom/metamoji/ns/ui/NsCollaboWaitView2$Model$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/metamoji/ns/ui/NsCollaboWaitView2$Model$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1, p1, v0}, Lcom/metamoji/lib/utils/LiveDataExtKt;->combineLatest(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function2;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboWaitView2$Model;->cancelButtonVisible:Landroidx/lifecycle/LiveData;

    return-void
.end method

.method static final cancelButtonVisible$lambda$0(Ljava/lang/Integer;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    if-nez p0, :cond_0

    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    .line 29
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    return-object p1
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboWaitView2$Model;->taskId:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;->getTask(I)Lcom/metamoji/ns/task/NsCollaboBgTaskBase;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 36
    invoke-virtual {v0}, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;->cancel()Z

    :cond_1
    return-void
.end method

.method public final getCancelButtonVisible()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboWaitView2$Model;->cancelButtonVisible:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getCancelCommand()Lcom/metamoji/lib/utils/binding/impl/Command;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboWaitView2$Model;->cancelCommand:Lcom/metamoji/lib/utils/binding/impl/Command;

    return-object v0
.end method

.method public final getCancellable()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboWaitView2$Model;->cancellable:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getDisplayView()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboWaitView2$Model;->displayView:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getMessage()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboWaitView2$Model;->message:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getSavedStateHandle()Landroidx/lifecycle/SavedStateHandle;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboWaitView2$Model;->savedStateHandle:Landroidx/lifecycle/SavedStateHandle;

    return-object v0
.end method

.method public final getTaskId()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboWaitView2$Model;->taskId:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getUiGuard()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboWaitView2$Model;->uiGuard:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method
