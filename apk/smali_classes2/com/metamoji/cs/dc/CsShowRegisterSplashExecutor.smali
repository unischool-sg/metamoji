.class Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;
.super Ljava/lang/Object;
.source "CsShowRegisterSplashExecutor.java"

# interfaces
.implements Lcom/metamoji/cs/dc/ICsUISyncExecutor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor$CsShowSplashDialogResponseToDoRegister;,
        Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor$CsShowSplashDialogResponseCancel;,
        Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor$CsShowSplashDialogResponseToDoLogin;
    }
.end annotation


# static fields
.field private static _instance:Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;


# instance fields
.field private volatile showUIResponse:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

.field private volatile waitForUICallback:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetshowUIResponse(Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;->showUIResponse:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputwaitForUICallback(Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;->waitForUICallback:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mcloseUI(Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;->closeUI()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;

    invoke-direct {v0}, Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;-><init>()V

    sput-object v0, Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;->_instance:Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;->waitForUICallback:Z

    return-void
.end method

.method private closeUI()V
    .locals 2

    .line 104
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor$2;

    invoke-direct {v1, p0}, Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor$2;-><init>(Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static getInstance()Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;
    .locals 1

    .line 25
    sget-object v0, Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;->_instance:Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;->showUIResponse:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;->waitForUICallback:Z

    return-void
.end method

.method public executeSync()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 59
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor$1;

    invoke-direct {v1, p0}, Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor$1;-><init>(Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 96
    :goto_0
    iget-boolean v0, p0, Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;->waitForUICallback:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0xa

    .line 97
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getResponseState()Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;->showUIResponse:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    return-object v0
.end method

.method public onCancelSubExecutor(Lcom/metamoji/cs/dc/ICsExecutor;)V
    .locals 1

    .line 189
    invoke-interface {p1}, Lcom/metamoji/cs/dc/ICsExecutor;->getResponseState()Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;->showUIResponse:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    .line 190
    invoke-interface {p1}, Lcom/metamoji/cs/dc/ICsExecutor;->clear()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 157
    const-string v0, "splash ondestroy"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 158
    iput-boolean v0, p0, Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;->waitForUICallback:Z

    return-void
.end method

.method public onFailedSubExecutor(Lcom/metamoji/cs/dc/ICsExecutor;)V
    .locals 1

    .line 176
    invoke-interface {p1}, Lcom/metamoji/cs/dc/ICsExecutor;->getResponseState()Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;->showUIResponse:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    .line 177
    invoke-interface {p1}, Lcom/metamoji/cs/dc/ICsExecutor;->clear()V

    return-void
.end method

.method public onHandleCancelRegister()V
    .locals 2

    .line 139
    const-string v0, "splash canceld"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    .line 140
    new-instance v0, Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor$CsShowSplashDialogResponseCancel;

    invoke-direct {v0}, Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor$CsShowSplashDialogResponseCancel;-><init>()V

    iput-object v0, p0, Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;->showUIResponse:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    .line 141
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;->showUIResponse:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    const/16 v1, -0xc8

    iput v1, v0, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorCode:I

    const/4 v0, 0x0

    .line 142
    iput-boolean v0, p0, Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;->waitForUICallback:Z

    return-void
.end method

.method public onHandleDoLogin()V
    .locals 1

    .line 150
    new-instance v0, Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor$CsShowSplashDialogResponseToDoLogin;

    invoke-direct {v0}, Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor$CsShowSplashDialogResponseToDoLogin;-><init>()V

    iput-object v0, p0, Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;->showUIResponse:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    const/4 v0, 0x0

    .line 152
    iput-boolean v0, p0, Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;->waitForUICallback:Z

    return-void
.end method

.method public onHandleShowRegisterDialog()V
    .locals 1

    .line 131
    new-instance v0, Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor$CsShowSplashDialogResponseToDoRegister;

    invoke-direct {v0}, Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor$CsShowSplashDialogResponseToDoRegister;-><init>()V

    iput-object v0, p0, Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;->showUIResponse:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    const/4 v0, 0x0

    .line 132
    iput-boolean v0, p0, Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;->waitForUICallback:Z

    return-void
.end method

.method public onSuccessSubExecutor(Lcom/metamoji/cs/dc/ICsExecutor;)V
    .locals 1

    .line 184
    invoke-interface {p1}, Lcom/metamoji/cs/dc/ICsExecutor;->getResponseState()Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;->showUIResponse:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    .line 185
    invoke-interface {p1}, Lcom/metamoji/cs/dc/ICsExecutor;->clear()V

    return-void
.end method
