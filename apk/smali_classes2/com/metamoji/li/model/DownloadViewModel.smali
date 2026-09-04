.class public final Lcom/metamoji/li/model/DownloadViewModel;
.super Ljava/lang/Object;
.source "DownloadViewModel.kt"

# interfaces
.implements Lcom/metamoji/nt/dl/INtDownloadProgressListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/li/model/DownloadViewModel$Companion;,
        Lcom/metamoji/li/model/DownloadViewModel$Status;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\r\u0018\u0000 /2\u00020\u0001:\u0002/0B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0006\u0010#\u001a\u00020$J\u0006\u0010%\u001a\u00020$J \u0010&\u001a\u00020$2\u0006\u0010\'\u001a\u00020\u00112\u0006\u0010(\u001a\u00020\u00112\u0006\u0010)\u001a\u00020\u0011H\u0016J\u0010\u0010*\u001a\u00020$2\u0006\u0010+\u001a\u00020\u0011H\u0016J\u0008\u0010,\u001a\u00020$H\u0016J\u0008\u0010-\u001a\u00020$H\u0016J\u0010\u0010.\u001a\u00020$2\u0006\u0010\u001d\u001a\u00020\u001eH\u0016R\u001c\u0010\u0006\u001a\u0010\u0012\u000c\u0012\n \u0008*\u0004\u0018\u00010\u00030\u00030\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0002\u001a\u0004\u0018\u00010\u00038BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u001f\u0010\u000b\u001a\u0010\u0012\u000c\u0012\n \u0008*\u0004\u0018\u00010\r0\r0\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u001f\u0010\u0010\u001a\u0010\u0012\u000c\u0012\n \u0008*\u0004\u0018\u00010\u00110\u00110\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u000fR\u001f\u0010\u0013\u001a\u0010\u0012\u000c\u0012\n \u0008*\u0004\u0018\u00010\u00140\u00140\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u000fR\u001f\u0010\u0016\u001a\u0010\u0012\u000c\u0012\n \u0008*\u0004\u0018\u00010\u00170\u00170\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u000fR\u0011\u0010\u0019\u001a\u00020\u001a\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR\u001c\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"\u00a8\u00061"
    }
    d2 = {
        "Lcom/metamoji/li/model/DownloadViewModel;",
        "Lcom/metamoji/nt/dl/INtDownloadProgressListener;",
        "rootModel",
        "Lcom/metamoji/li/model/LoginViewModel;",
        "<init>",
        "(Lcom/metamoji/li/model/LoginViewModel;)V",
        "rootModelRef",
        "Ljava/lang/ref/WeakReference;",
        "kotlin.jvm.PlatformType",
        "getRootModel",
        "()Lcom/metamoji/li/model/LoginViewModel;",
        "status",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/metamoji/li/model/DownloadViewModel$Status;",
        "getStatus",
        "()Landroidx/lifecycle/MutableLiveData;",
        "progress",
        "",
        "getProgress",
        "message",
        "",
        "getMessage",
        "cancellable",
        "",
        "getCancellable",
        "cancelCommand",
        "Lcom/metamoji/lib/utils/binding/impl/Command;",
        "getCancelCommand",
        "()Lcom/metamoji/lib/utils/binding/impl/Command;",
        "manager",
        "Lcom/metamoji/nt/dl/NtResourceDownloadManager;",
        "getManager",
        "()Lcom/metamoji/nt/dl/NtResourceDownloadManager;",
        "setManager",
        "(Lcom/metamoji/nt/dl/NtResourceDownloadManager;)V",
        "downloadResources",
        "",
        "cancel",
        "onDownloadBegin",
        "messageId",
        "count",
        "total",
        "onDownloadProgress",
        "percent",
        "onDownloadCancelEnabled",
        "onDownloadEnd",
        "connectManager",
        "Companion",
        "Status",
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


# static fields
.field public static final Companion:Lcom/metamoji/li/model/DownloadViewModel$Companion;

.field private static final logger:Lcom/metamoji/lib/utils/UtLog;


# instance fields
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

.field private manager:Lcom/metamoji/nt/dl/NtResourceDownloadManager;

.field private final message:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final progress:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final rootModelRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/metamoji/li/model/LoginViewModel;",
            ">;"
        }
    .end annotation
.end field

.field private final status:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/metamoji/li/model/DownloadViewModel$Status;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/li/model/DownloadViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/li/model/DownloadViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/li/model/DownloadViewModel;->Companion:Lcom/metamoji/li/model/DownloadViewModel$Companion;

    .line 18
    sget-object v0, Lcom/metamoji/li/LoginActivity;->Companion:Lcom/metamoji/li/LoginActivity$Companion;

    invoke-virtual {v0}, Lcom/metamoji/li/LoginActivity$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    sput-object v0, Lcom/metamoji/li/model/DownloadViewModel;->logger:Lcom/metamoji/lib/utils/UtLog;

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/li/model/LoginViewModel;)V
    .locals 2

    const-string v0, "rootModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/metamoji/li/model/DownloadViewModel;->rootModelRef:Ljava/lang/ref/WeakReference;

    .line 31
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Lcom/metamoji/li/model/DownloadViewModel$Status;->INIT:Lcom/metamoji/li/model/DownloadViewModel$Status;

    invoke-direct {p1, v0}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/metamoji/li/model/DownloadViewModel;->status:Landroidx/lifecycle/MutableLiveData;

    .line 32
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p1, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/metamoji/li/model/DownloadViewModel;->progress:Landroidx/lifecycle/MutableLiveData;

    .line 33
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    const-string v1, ""

    invoke-direct {p1, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/metamoji/li/model/DownloadViewModel;->message:Landroidx/lifecycle/MutableLiveData;

    .line 34
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/metamoji/li/model/DownloadViewModel;->cancellable:Landroidx/lifecycle/MutableLiveData;

    .line 35
    new-instance p1, Lcom/metamoji/lib/utils/binding/impl/Command;

    invoke-direct {p1}, Lcom/metamoji/lib/utils/binding/impl/Command;-><init>()V

    iput-object p1, p0, Lcom/metamoji/li/model/DownloadViewModel;->cancelCommand:Lcom/metamoji/lib/utils/binding/impl/Command;

    return-void
.end method

.method public static final synthetic access$getLogger$cp()Lcom/metamoji/lib/utils/UtLog;
    .locals 1

    .line 16
    sget-object v0, Lcom/metamoji/li/model/DownloadViewModel;->logger:Lcom/metamoji/lib/utils/UtLog;

    return-object v0
.end method

.method public static final synthetic access$getRootModel(Lcom/metamoji/li/model/DownloadViewModel;)Lcom/metamoji/li/model/LoginViewModel;
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/metamoji/li/model/DownloadViewModel;->getRootModel()Lcom/metamoji/li/model/LoginViewModel;

    move-result-object p0

    return-object p0
.end method

.method private final getRootModel()Lcom/metamoji/li/model/LoginViewModel;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/metamoji/li/model/DownloadViewModel;->rootModelRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/li/model/LoginViewModel;

    return-object v0
.end method


# virtual methods
.method public final cancel()V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/metamoji/li/model/DownloadViewModel;->cancellable:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/metamoji/li/model/DownloadViewModel;->manager:Lcom/metamoji/nt/dl/NtResourceDownloadManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/nt/dl/NtResourceDownloadManager;->cancel()V

    :cond_0
    return-void
.end method

.method public connectManager(Lcom/metamoji/nt/dl/NtResourceDownloadManager;)V
    .locals 1

    const-string v0, "manager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    iput-object p1, p0, Lcom/metamoji/li/model/DownloadViewModel;->manager:Lcom/metamoji/nt/dl/NtResourceDownloadManager;

    return-void
.end method

.method public final downloadResources()V
    .locals 7

    .line 47
    invoke-direct {p0}, Lcom/metamoji/li/model/DownloadViewModel;->getRootModel()Lcom/metamoji/li/model/LoginViewModel;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/metamoji/li/model/DownloadViewModel$downloadResources$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/metamoji/li/model/DownloadViewModel$downloadResources$1;-><init>(Lcom/metamoji/li/model/DownloadViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 57
    :cond_1
    :goto_0
    sget-object v0, Lcom/metamoji/li/model/DownloadViewModel;->logger:Lcom/metamoji/lib/utils/UtLog;

    const-string v1, "rootModel is null!!"

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/utils/UtLog;->error(Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-void
.end method

.method public final getCancelCommand()Lcom/metamoji/lib/utils/binding/impl/Command;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/metamoji/li/model/DownloadViewModel;->cancelCommand:Lcom/metamoji/lib/utils/binding/impl/Command;

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

    .line 34
    iget-object v0, p0, Lcom/metamoji/li/model/DownloadViewModel;->cancellable:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getManager()Lcom/metamoji/nt/dl/NtResourceDownloadManager;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/metamoji/li/model/DownloadViewModel;->manager:Lcom/metamoji/nt/dl/NtResourceDownloadManager;

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

    .line 33
    iget-object v0, p0, Lcom/metamoji/li/model/DownloadViewModel;->message:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getProgress()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/metamoji/li/model/DownloadViewModel;->progress:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getStatus()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/metamoji/li/model/DownloadViewModel$Status;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/metamoji/li/model/DownloadViewModel;->status:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public onDownloadBegin(III)V
    .locals 6

    .line 66
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-le p3, v0, :cond_1

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 72
    :cond_1
    invoke-direct {p0}, Lcom/metamoji/li/model/DownloadViewModel;->getRootModel()Lcom/metamoji/li/model/LoginViewModel;

    move-result-object p2

    if-eqz p2, :cond_2

    check-cast p2, Landroidx/lifecycle/ViewModel;

    invoke-static {p2}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance p2, Lcom/metamoji/li/model/DownloadViewModel$onDownloadBegin$1;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p1, p3}, Lcom/metamoji/li/model/DownloadViewModel$onDownloadBegin$1;-><init>(Lcom/metamoji/li/model/DownloadViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v3, p2

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_2
    :goto_0
    return-void
.end method

.method public onDownloadCancelEnabled()V
    .locals 7

    .line 85
    invoke-direct {p0}, Lcom/metamoji/li/model/DownloadViewModel;->getRootModel()Lcom/metamoji/li/model/LoginViewModel;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/metamoji/li/model/DownloadViewModel$onDownloadCancelEnabled$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/metamoji/li/model/DownloadViewModel$onDownloadCancelEnabled$1;-><init>(Lcom/metamoji/li/model/DownloadViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_0
    return-void
.end method

.method public onDownloadEnd()V
    .locals 7

    .line 91
    invoke-direct {p0}, Lcom/metamoji/li/model/DownloadViewModel;->getRootModel()Lcom/metamoji/li/model/LoginViewModel;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/metamoji/li/model/DownloadViewModel$onDownloadEnd$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/metamoji/li/model/DownloadViewModel$onDownloadEnd$1;-><init>(Lcom/metamoji/li/model/DownloadViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_0
    return-void
.end method

.method public onDownloadProgress(I)V
    .locals 7

    .line 79
    invoke-direct {p0}, Lcom/metamoji/li/model/DownloadViewModel;->getRootModel()Lcom/metamoji/li/model/LoginViewModel;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/metamoji/li/model/DownloadViewModel$onDownloadProgress$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lcom/metamoji/li/model/DownloadViewModel$onDownloadProgress$1;-><init>(Lcom/metamoji/li/model/DownloadViewModel;ILkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_0
    return-void
.end method

.method public final setManager(Lcom/metamoji/nt/dl/NtResourceDownloadManager;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/metamoji/li/model/DownloadViewModel;->manager:Lcom/metamoji/nt/dl/NtResourceDownloadManager;

    return-void
.end method
