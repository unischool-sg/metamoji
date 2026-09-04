.class Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;
.super Ljava/lang/Object;
.source "CsShowRegisterDialogExecutor.java"

# interfaces
.implements Lcom/metamoji/cs/dc/ICsUISyncExecutor;


# static fields
.field private static _instance:Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;


# instance fields
.field email:Ljava/lang/String;

.field private volatile endAfterProc:Z

.field nickName:Ljava/lang/String;

.field password:Ljava/lang/String;

.field private volatile registerResponse:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

.field private ui:Lcom/metamoji/ui/cabinet/user/EntryUser;

.field private volatile waitForUICallback:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetendAfterProc(Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;->endAfterProc:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetregisterResponse(Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;->registerResponse:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetui(Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;)Lcom/metamoji/ui/cabinet/user/EntryUser;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;->ui:Lcom/metamoji/ui/cabinet/user/EntryUser;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputui(Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;Lcom/metamoji/ui/cabinet/user/EntryUser;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;->ui:Lcom/metamoji/ui/cabinet/user/EntryUser;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputwaitForUICallback(Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;->waitForUICallback:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mcloseUI(Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;->closeUI()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;

    invoke-direct {v0}, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;-><init>()V

    sput-object v0, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;->_instance:Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;->waitForUICallback:Z

    .line 31
    iput-boolean v0, p0, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;->endAfterProc:Z

    return-void
.end method

.method private closeUI()V
    .locals 2

    .line 198
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor$4;

    invoke-direct {v1, p0}, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor$4;-><init>(Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static getInstance()Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;
    .locals 1

    .line 24
    sget-object v0, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;->_instance:Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 127
    iput-object v0, p0, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;->ui:Lcom/metamoji/ui/cabinet/user/EntryUser;

    .line 128
    iput-object v0, p0, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;->registerResponse:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    const/4 v0, 0x0

    .line 129
    iput-boolean v0, p0, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;->waitForUICallback:Z

    .line 130
    iput-boolean v0, p0, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;->endAfterProc:Z

    return-void
.end method

.method public executeSync()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 44
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor$1;

    invoke-direct {v1, p0}, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor$1;-><init>(Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 86
    :goto_0
    iget-boolean v0, p0, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;->waitForUICallback:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0xa

    .line 87
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getResponseState()Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;->registerResponse:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    return-object v0
.end method

.method public onCancelSubExecutor(Lcom/metamoji/cs/dc/ICsExecutor;)V
    .locals 1

    .line 193
    invoke-interface {p1}, Lcom/metamoji/cs/dc/ICsExecutor;->getResponseState()Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;->registerResponse:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    .line 194
    invoke-interface {p1}, Lcom/metamoji/cs/dc/ICsExecutor;->clear()V

    return-void
.end method

.method public onDismiss()V
    .locals 1

    .line 221
    invoke-direct {p0}, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;->closeUI()V

    const/4 v0, 0x1

    .line 222
    iput-boolean v0, p0, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;->endAfterProc:Z

    const/4 v0, 0x0

    .line 223
    iput-boolean v0, p0, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;->waitForUICallback:Z

    return-void
.end method

.method public onFailedSubExecutor(Lcom/metamoji/cs/dc/ICsExecutor;)V
    .locals 3

    .line 146
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;->ui:Lcom/metamoji/ui/cabinet/user/EntryUser;

    .line 147
    invoke-interface {p1}, Lcom/metamoji/cs/dc/ICsExecutor;->getResponseState()Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object v1

    check-cast v1, Lcom/metamoji/cs/dc/response/CsRegisterResponse;

    if-nez v0, :cond_0

    return-void

    .line 151
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v2, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor$2;

    invoke-direct {v2, p0, v1}, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor$2;-><init>(Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;Lcom/metamoji/cs/dc/response/CsRegisterResponse;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 159
    iput-object v1, p0, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;->registerResponse:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    .line 160
    invoke-interface {p1}, Lcom/metamoji/cs/dc/ICsExecutor;->clear()V

    return-void
.end method

.method public onHandleCancelRegister()V
    .locals 2

    .line 117
    new-instance v0, Lcom/metamoji/cs/dc/response/CsRegisterResponse;

    invoke-direct {v0}, Lcom/metamoji/cs/dc/response/CsRegisterResponse;-><init>()V

    .line 118
    const-string v1, ""

    iput-object v1, v0, Lcom/metamoji/cs/dc/response/CsRegisterResponse;->errorMessage:Ljava/lang/String;

    const/16 v1, 0x1f4

    .line 119
    iput v1, v0, Lcom/metamoji/cs/dc/response/CsRegisterResponse;->httpStatusCode:I

    const/16 v1, -0xce

    .line 120
    iput v1, v0, Lcom/metamoji/cs/dc/response/CsRegisterResponse;->errorCode:I

    .line 121
    iput-object v0, p0, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;->registerResponse:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    return-void
.end method

.method public onHandleRegister(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 100
    iput-object p2, p0, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;->email:Ljava/lang/String;

    .line 101
    iput-object p1, p0, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;->nickName:Ljava/lang/String;

    .line 102
    iput-object p3, p0, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;->password:Ljava/lang/String;

    .line 104
    new-instance p1, Lcom/metamoji/cs/dc/response/CsRegisterResponse;

    invoke-direct {p1}, Lcom/metamoji/cs/dc/response/CsRegisterResponse;-><init>()V

    .line 105
    const-string p2, ""

    iput-object p2, p1, Lcom/metamoji/cs/dc/response/CsRegisterResponse;->errorMessage:Ljava/lang/String;

    const/16 p2, 0x1f4

    .line 106
    iput p2, p1, Lcom/metamoji/cs/dc/response/CsRegisterResponse;->httpStatusCode:I

    const/16 p2, -0xc9

    .line 107
    iput p2, p1, Lcom/metamoji/cs/dc/response/CsRegisterResponse;->errorCode:I

    .line 108
    iput-object p1, p0, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;->registerResponse:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    const/4 p1, 0x0

    .line 109
    iput-boolean p1, p0, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;->waitForUICallback:Z

    return-void
.end method

.method public onSuccessSubExecutor(Lcom/metamoji/cs/dc/ICsExecutor;)V
    .locals 3

    .line 167
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;->ui:Lcom/metamoji/ui/cabinet/user/EntryUser;

    .line 168
    invoke-interface {p1}, Lcom/metamoji/cs/dc/ICsExecutor;->getResponseState()Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object v1

    check-cast v1, Lcom/metamoji/cs/dc/response/CsRegisterResponse;

    if-eqz v0, :cond_0

    .line 170
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v2, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor$3;

    invoke-direct {v2, p0, v1}, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor$3;-><init>(Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;Lcom/metamoji/cs/dc/response/CsRegisterResponse;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 179
    :cond_0
    iput-object v1, p0, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;->registerResponse:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    .line 187
    invoke-interface {p1}, Lcom/metamoji/cs/dc/ICsExecutor;->clear()V

    return-void
.end method
