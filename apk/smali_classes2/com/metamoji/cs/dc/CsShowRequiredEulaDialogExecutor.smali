.class Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;
.super Ljava/lang/Object;
.source "CsShowRequiredEulaDialogExecutor.java"

# interfaces
.implements Lcom/metamoji/cs/dc/ICsUISyncExecutor;


# static fields
.field private static _instance:Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;


# instance fields
.field private volatile agreeEULAResponsee:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

.field private volatile endAfterProc:Z

.field requiredEulaVersion:I

.field private ui:Lcom/metamoji/ui/cabinet/user/RequiredEula;

.field private volatile waitForUICallback:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetagreeEULAResponsee(Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;->agreeEULAResponsee:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetendAfterProc(Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;->endAfterProc:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetui(Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;)Lcom/metamoji/ui/cabinet/user/RequiredEula;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;->ui:Lcom/metamoji/ui/cabinet/user/RequiredEula;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputui(Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;Lcom/metamoji/ui/cabinet/user/RequiredEula;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;->ui:Lcom/metamoji/ui/cabinet/user/RequiredEula;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputwaitForUICallback(Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;->waitForUICallback:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mcloseUI(Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;->closeUI()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;

    invoke-direct {v0}, Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;-><init>()V

    sput-object v0, Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;->_instance:Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;->requiredEulaVersion:I

    .line 20
    iput-boolean v0, p0, Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;->waitForUICallback:Z

    .line 24
    iput-boolean v0, p0, Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;->endAfterProc:Z

    return-void
.end method

.method private closeUI()V
    .locals 2

    .line 138
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor$4;

    invoke-direct {v1, p0}, Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor$4;-><init>(Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static getInstance()Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;
    .locals 1

    .line 33
    sget-object v0, Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;->_instance:Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 186
    iput-object v0, p0, Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;->agreeEULAResponsee:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    const/4 v0, 0x0

    .line 187
    iput v0, p0, Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;->requiredEulaVersion:I

    .line 188
    iput-boolean v0, p0, Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;->waitForUICallback:Z

    return-void
.end method

.method public executeSync()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 39
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor$1;

    invoke-direct {v1, p0}, Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor$1;-><init>(Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 83
    :goto_0
    iget-boolean v0, p0, Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;->waitForUICallback:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0xa

    .line 84
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getResponseState()Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;->agreeEULAResponsee:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    return-object v0
.end method

.method public onCancelSubExecutor(Lcom/metamoji/cs/dc/ICsExecutor;)V
    .locals 1

    .line 133
    invoke-interface {p1}, Lcom/metamoji/cs/dc/ICsExecutor;->getResponseState()Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;->agreeEULAResponsee:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    .line 134
    invoke-interface {p1}, Lcom/metamoji/cs/dc/ICsExecutor;->clear()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 152
    invoke-direct {p0}, Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;->closeUI()V

    const/4 v0, 0x1

    .line 153
    iput-boolean v0, p0, Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;->endAfterProc:Z

    const/4 v0, 0x0

    .line 154
    iput-boolean v0, p0, Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;->waitForUICallback:Z

    return-void
.end method

.method public onFailedSubExecutor(Lcom/metamoji/cs/dc/ICsExecutor;)V
    .locals 3

    .line 92
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;->ui:Lcom/metamoji/ui/cabinet/user/RequiredEula;

    .line 93
    invoke-interface {p1}, Lcom/metamoji/cs/dc/ICsExecutor;->getResponseState()Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object v1

    check-cast v1, Lcom/metamoji/cs/dc/response/CsAgreeEulaResponse;

    if-nez v0, :cond_0

    return-void

    .line 97
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v2, Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor$2;

    invoke-direct {v2, p0, v1}, Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor$2;-><init>(Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;Lcom/metamoji/cs/dc/response/CsAgreeEulaResponse;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 105
    iput-object v1, p0, Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;->agreeEULAResponsee:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    .line 106
    invoke-interface {p1}, Lcom/metamoji/cs/dc/ICsExecutor;->clear()V

    return-void
.end method

.method public onHandeAgree()V
    .locals 2

    .line 162
    new-instance v0, Lcom/metamoji/cs/dc/response/CsAgreeEulaResponse;

    invoke-direct {v0}, Lcom/metamoji/cs/dc/response/CsAgreeEulaResponse;-><init>()V

    .line 163
    const-string v1, ""

    iput-object v1, v0, Lcom/metamoji/cs/dc/response/CsAgreeEulaResponse;->errorMessage:Ljava/lang/String;

    const/16 v1, 0x1f4

    .line 164
    iput v1, v0, Lcom/metamoji/cs/dc/response/CsAgreeEulaResponse;->httpStatusCode:I

    .line 165
    iget v1, p0, Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;->requiredEulaVersion:I

    iput v1, v0, Lcom/metamoji/cs/dc/response/CsAgreeEulaResponse;->requiredEULAVersion:I

    const/16 v1, -0xcc

    .line 166
    iput v1, v0, Lcom/metamoji/cs/dc/response/CsAgreeEulaResponse;->errorCode:I

    .line 167
    iput-object v0, p0, Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;->agreeEULAResponsee:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    const/4 v0, 0x0

    .line 168
    iput-boolean v0, p0, Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;->waitForUICallback:Z

    return-void
.end method

.method public onHandleCancel()V
    .locals 2

    .line 175
    new-instance v0, Lcom/metamoji/cs/dc/response/CsAgreeEulaResponse;

    invoke-direct {v0}, Lcom/metamoji/cs/dc/response/CsAgreeEulaResponse;-><init>()V

    .line 176
    const-string v1, ""

    iput-object v1, v0, Lcom/metamoji/cs/dc/response/CsAgreeEulaResponse;->errorMessage:Ljava/lang/String;

    const/16 v1, 0x1f4

    .line 177
    iput v1, v0, Lcom/metamoji/cs/dc/response/CsAgreeEulaResponse;->httpStatusCode:I

    const/16 v1, -0xc8

    .line 178
    iput v1, v0, Lcom/metamoji/cs/dc/response/CsAgreeEulaResponse;->errorCode:I

    .line 179
    iput-object v0, p0, Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;->agreeEULAResponsee:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    const/4 v0, 0x0

    .line 180
    iput-boolean v0, p0, Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;->waitForUICallback:Z

    return-void
.end method

.method public onSuccessSubExecutor(Lcom/metamoji/cs/dc/ICsExecutor;)V
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;->ui:Lcom/metamoji/ui/cabinet/user/RequiredEula;

    .line 114
    invoke-interface {p1}, Lcom/metamoji/cs/dc/ICsExecutor;->getResponseState()Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object v1

    check-cast v1, Lcom/metamoji/cs/dc/response/CsAgreeEulaResponse;

    if-nez v0, :cond_0

    return-void

    .line 118
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v2, Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor$3;

    invoke-direct {v2, p0, v1}, Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor$3;-><init>(Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;Lcom/metamoji/cs/dc/response/CsAgreeEulaResponse;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 126
    invoke-interface {p1}, Lcom/metamoji/cs/dc/ICsExecutor;->getResponseState()Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;->agreeEULAResponsee:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    .line 127
    invoke-interface {p1}, Lcom/metamoji/cs/dc/ICsExecutor;->clear()V

    return-void
.end method
