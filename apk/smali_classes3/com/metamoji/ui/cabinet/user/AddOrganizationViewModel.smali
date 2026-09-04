.class public final Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;
.super Ljava/lang/Object;
.source "AddOrganizationDialogEx.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel$Companion;,
        Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel$Status;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000c\u0018\u0000 %2\u00020\u0001:\u0002$%B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018J\u0006\u0010!\u001a\u00020\u0016R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u0007\"\u0004\u0008\u000c\u0010\tR(\u0010\r\u001a\u0010\u0012\u000c\u0012\n \u0010*\u0004\u0018\u00010\u000f0\u000f0\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0019\u001a\u00020\u001aX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u0017\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010\u0012R\u0017\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010\u0012\u00a8\u0006&"
    }
    d2 = {
        "Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;",
        "",
        "<init>",
        "()V",
        "organizationId",
        "",
        "getOrganizationId",
        "()Ljava/lang/String;",
        "setOrganizationId",
        "(Ljava/lang/String;)V",
        "serverUrl",
        "getServerUrl",
        "setServerUrl",
        "status",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel$Status;",
        "kotlin.jvm.PlatformType",
        "getStatus",
        "()Landroidx/lifecycle/MutableLiveData;",
        "setStatus",
        "(Landroidx/lifecycle/MutableLiveData;)V",
        "registerObserver",
        "",
        "activity",
        "Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;",
        "busy",
        "",
        "getBusy",
        "()Z",
        "setBusy",
        "(Z)V",
        "checkingParams",
        "getCheckingParams",
        "checkParams",
        "closeMe",
        "getCloseMe",
        "Status",
        "Companion",
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
.field public static final Companion:Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel$Companion;


# instance fields
.field private busy:Z

.field private final checkingParams:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final closeMe:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private organizationId:Ljava/lang/String;

.field private serverUrl:Ljava/lang/String;

.field private status:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel$Status;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;->Companion:Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel$Status;->Init:Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel$Status;

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;->status:Landroidx/lifecycle/MutableLiveData;

    .line 76
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;->checkingParams:Landroidx/lifecycle/MutableLiveData;

    .line 115
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;->closeMe:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method static final checkParams$lambda$1(Lcom/metamoji/cm/CmTaskManager;Lcom/metamoji/cs/dc/params/CsGetClassRoomLoginInfoParam;Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;)V
    .locals 1

    .line 93
    invoke-virtual {p0}, Lcom/metamoji/cm/CmTaskManager;->invokeWaitScreenNow()V

    .line 95
    invoke-static {p1}, Lcom/metamoji/cs/dc/CsCloudService;->executeGetClassRoomLoginInfoWithParam(Lcom/metamoji/cs/dc/params/CsGetClassRoomLoginInfoParam;)Lcom/metamoji/cs/dc/response/CsGetClassRoomLoginInfoResponse;

    move-result-object p1

    .line 96
    new-instance v0, Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/cs/dc/response/CsGetClassRoomLoginInfoResponse;Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;)V

    invoke-virtual {p0, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static final checkParams$lambda$1$lambda$0(Lcom/metamoji/cs/dc/response/CsGetClassRoomLoginInfoResponse;Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 97
    iget v0, p0, Lcom/metamoji/cs/dc/response/CsGetClassRoomLoginInfoResponse;->errorCode:I

    if-nez v0, :cond_0

    .line 100
    iget-object p0, p1, Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;->checkingParams:Landroidx/lifecycle/MutableLiveData;

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void

    .line 103
    :cond_0
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v0, p0, Lcom/metamoji/cs/dc/response/CsGetClassRoomLoginInfoResponse;->errorCode:I

    const/16 v1, -0x66

    if-eq v0, v1, :cond_2

    const/16 v1, 0x67

    if-eq v0, v1, :cond_1

    .line 106
    check-cast p0, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    invoke-static {p0}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils;->analiseCabinetUserError(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V

    goto :goto_0

    .line 104
    :cond_1
    sget p0, Lcom/metamoji/noteanytime/R$string;->School_SimpleLogin_Msg_Invalid_Organization_Id:I

    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->showCabinetAlertDialog(Ljava/lang/String;)Z

    goto :goto_0

    .line 105
    :cond_2
    sget p0, Lcom/metamoji/noteanytime/R$string;->ForBiz_Add_Organization_Msg_Network_Error:I

    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->showCabinetAlertDialog(Ljava/lang/String;)Z

    .line 108
    :goto_0
    iget-object p0, p1, Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;->checkingParams:Landroidx/lifecycle/MutableLiveData;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 109
    iput-boolean v0, p1, Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;->busy:Z

    return-void
.end method


# virtual methods
.method public final checkParams()V
    .locals 3

    .line 79
    iget-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;->busy:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 82
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;->busy:Z

    .line 85
    new-instance v0, Lcom/metamoji/cs/dc/params/CsGetClassRoomLoginInfoParam;

    invoke-direct {v0}, Lcom/metamoji/cs/dc/params/CsGetClassRoomLoginInfoParam;-><init>()V

    .line 86
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;->organizationId:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/cs/dc/params/CsGetClassRoomLoginInfoParam;->coLoginId:Ljava/lang/String;

    .line 89
    invoke-static {}, Lcom/metamoji/cs/CsCloudServiceContext;->getInstance()Lcom/metamoji/cs/CsCloudServiceContext;

    move-result-object v1

    .line 90
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;->serverUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/metamoji/cs/CsCloudServiceContext;->setRootServer(Ljava/lang/String;)V

    .line 91
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    .line 92
    new-instance v2, Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, v0, p0}, Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/cm/CmTaskManager;Lcom/metamoji/cs/dc/params/CsGetClassRoomLoginInfoParam;Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v2, v0, v0}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void
.end method

.method public final getBusy()Z
    .locals 1

    .line 75
    iget-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;->busy:Z

    return v0
.end method

.method public final getCheckingParams()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;->checkingParams:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getCloseMe()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;->closeMe:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getOrganizationId()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;->organizationId:Ljava/lang/String;

    return-object v0
.end method

.method public final getServerUrl()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;->serverUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatus()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel$Status;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;->status:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final registerObserver(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)V
    .locals 4

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;->status:Landroidx/lifecycle/MutableLiveData;

    move-object v1, p1

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    new-instance v2, Lcom/metamoji/ui/cabinet/user/AddOrganizationObserver;

    move-object v3, p1

    check-cast v3, Lcom/metamoji/ui/cabinet/user/IAddOrganizationListener;

    invoke-direct {v2, p1, v3}, Lcom/metamoji/ui/cabinet/user/AddOrganizationObserver;-><init>(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;Lcom/metamoji/ui/cabinet/user/IAddOrganizationListener;)V

    check-cast v2, Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final setBusy(Z)V
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;->busy:Z

    return-void
.end method

.method public final setOrganizationId(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;->organizationId:Ljava/lang/String;

    return-void
.end method

.method public final setServerUrl(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;->serverUrl:Ljava/lang/String;

    return-void
.end method

.method public final setStatus(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel$Status;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;->status:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method
