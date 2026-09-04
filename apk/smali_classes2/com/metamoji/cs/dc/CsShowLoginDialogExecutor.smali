.class public Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;
.super Ljava/lang/Object;
.source "CsShowLoginDialogExecutor.java"

# interfaces
.implements Lcom/metamoji/cs/dc/ICsUISyncExecutor;


# static fields
.field public static final Key_Mailaddress:Ljava/lang/String; = "mailaddress"

.field public static final Key_Password:Ljava/lang/String; = "password"

.field public static final Key_SavePassword:Ljava/lang/String; = "savepassword"

.field private static _instance:Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;


# instance fields
.field private _notRecovery:Z

.field volatile autoLogin:Z

.field volatile coLoginId:Ljava/lang/String;

.field volatile email:Ljava/lang/String;

.field private loginActivityOpened:Ljava/lang/Boolean;

.field volatile loginName:Ljava/lang/String;

.field private volatile loginResponsee:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

.field private mDone:Z

.field private m_afterAction:Lcom/metamoji/ui/cabinet/user/ICabinetUserAction;

.field private m_startUpMode:Z

.field volatile password:Ljava/lang/String;

.field private ui:Lcom/metamoji/ui/cabinet/user/LoginUser;

.field private volatile waitForUICallback:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetloginActivityOpened(Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->loginActivityOpened:Ljava/lang/Boolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetloginResponsee(Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->loginResponsee:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputloginActivityOpened(Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->loginActivityOpened:Ljava/lang/Boolean;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputwaitForUICallback(Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->waitForUICallback:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mcloseUI(Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->closeUI()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;

    invoke-direct {v0}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;-><init>()V

    sput-object v0, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->_instance:Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->loginActivityOpened:Ljava/lang/Boolean;

    .line 44
    iput-boolean v0, p0, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->m_startUpMode:Z

    .line 45
    iput-boolean v0, p0, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->mDone:Z

    .line 46
    iput-boolean v0, p0, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->_notRecovery:Z

    .line 58
    iput-boolean v0, p0, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->waitForUICallback:Z

    return-void
.end method

.method private closeUI()V
    .locals 2

    .line 183
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor$2;

    invoke-direct {v1, p0}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor$2;-><init>(Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static getInstance()Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;
    .locals 1

    .line 49
    sget-object v0, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->_instance:Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v0, 0x0

    .line 296
    iput-object v0, p0, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->coLoginId:Ljava/lang/String;

    .line 297
    iput-object v0, p0, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->loginName:Ljava/lang/String;

    .line 298
    iput-object v0, p0, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->password:Ljava/lang/String;

    const/4 v1, 0x0

    .line 299
    iput-boolean v1, p0, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->waitForUICallback:Z

    .line 300
    iput-object v0, p0, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->loginResponsee:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    return-void
.end method

.method public closeDialog()V
    .locals 2

    .line 277
    new-instance v0, Lcom/metamoji/cs/dc/response/CsLoginResponse;

    invoke-direct {v0}, Lcom/metamoji/cs/dc/response/CsLoginResponse;-><init>()V

    .line 278
    const-string v1, ""

    iput-object v1, v0, Lcom/metamoji/cs/dc/response/CsLoginResponse;->errorMessage:Ljava/lang/String;

    const/16 v1, 0x1f4

    .line 279
    iput v1, v0, Lcom/metamoji/cs/dc/response/CsLoginResponse;->httpStatusCode:I

    const/16 v1, -0xc8

    .line 280
    iput v1, v0, Lcom/metamoji/cs/dc/response/CsLoginResponse;->errorCode:I

    .line 281
    iput-object v0, p0, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->loginResponsee:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    const/4 v0, 0x0

    .line 282
    iput-boolean v0, p0, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->waitForUICallback:Z

    return-void
.end method

.method public endProcess()V
    .locals 1

    const/4 v0, 0x0

    .line 85
    iput-boolean v0, p0, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->waitForUICallback:Z

    return-void
.end method

.method public executeSync()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 92
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor$1;

    invoke-direct {v1, p0}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor$1;-><init>(Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 176
    :goto_0
    iget-boolean v0, p0, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->waitForUICallback:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0xa

    .line 177
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getResponseState()Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->loginResponsee:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    return-object v0
.end method

.method public onCancelSubExecutor(Lcom/metamoji/cs/dc/ICsExecutor;)V
    .locals 1

    .line 396
    invoke-interface {p1}, Lcom/metamoji/cs/dc/ICsExecutor;->getResponseState()Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->loginResponsee:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    .line 397
    invoke-interface {p1}, Lcom/metamoji/cs/dc/ICsExecutor;->clear()V

    return-void
.end method

.method public onClickForgotPassButton(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 424
    const-string v0, "mailaddress"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 425
    invoke-virtual {p0, p1}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->onHandleResetPassword(Ljava/lang/String;)V

    return-void
.end method

.method public onClickLoginButton(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 418
    const-string v0, "mailaddress"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 419
    const-string v1, "password"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 420
    invoke-virtual {p0, v0, p1}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->onHandleLogin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCloseDialog(ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    const/4 p1, 0x1

    .line 410
    iput-boolean p1, p0, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->mDone:Z

    .line 411
    invoke-virtual {p0}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->onHandleRegister()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 401
    invoke-direct {p0}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->closeUI()V

    const/4 v0, 0x0

    .line 402
    iput-boolean v0, p0, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->waitForUICallback:Z

    return-void
.end method

.method public onDismiss()V
    .locals 2

    .line 433
    iget-boolean v0, p0, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->mDone:Z

    if-nez v0, :cond_0

    .line 434
    invoke-virtual {p0}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->onHandleCancelLogin()V

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->m_afterAction:Lcom/metamoji/ui/cabinet/user/ICabinetUserAction;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 437
    invoke-interface {v0, v1}, Lcom/metamoji/ui/cabinet/user/ICabinetUserAction;->action(Z)V

    .line 439
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->onDestroyView()V

    return-void
.end method

.method public onDone()V
    .locals 1

    const/4 v0, 0x1

    .line 429
    iput-boolean v0, p0, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->mDone:Z

    return-void
.end method

.method public onFailedSubExecutor(Lcom/metamoji/cs/dc/ICsExecutor;)V
    .locals 4

    .line 362
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->ui:Lcom/metamoji/ui/cabinet/user/LoginUser;

    if-nez v0, :cond_0

    return-void

    .line 366
    :cond_0
    instance-of v1, p1, Lcom/metamoji/cs/dc/CsReLoginExecutor;

    if-eqz v1, :cond_1

    .line 367
    move-object v1, p1

    check-cast v1, Lcom/metamoji/cs/dc/CsReLoginExecutor;

    .line 368
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v2

    new-instance v3, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor$5;

    invoke-direct {v3, p0, v0, v1}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor$5;-><init>(Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;Lcom/metamoji/ui/cabinet/user/LoginUser;Lcom/metamoji/cs/dc/CsReLoginExecutor;)V

    invoke-virtual {v2, v3}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 376
    :cond_1
    instance-of v1, p1, Lcom/metamoji/cs/dc/CsResetPasswordExecutor;

    if-eqz v1, :cond_2

    .line 377
    move-object v1, p1

    check-cast v1, Lcom/metamoji/cs/dc/CsResetPasswordExecutor;

    .line 378
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v2

    new-instance v3, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor$6;

    invoke-direct {v3, p0, v0, v1}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor$6;-><init>(Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;Lcom/metamoji/ui/cabinet/user/LoginUser;Lcom/metamoji/cs/dc/CsResetPasswordExecutor;)V

    invoke-virtual {v2, v3}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 390
    :cond_2
    :goto_0
    invoke-interface {p1}, Lcom/metamoji/cs/dc/ICsExecutor;->getResponseState()Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->loginResponsee:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    .line 391
    invoke-interface {p1}, Lcom/metamoji/cs/dc/ICsExecutor;->clear()V

    return-void
.end method

.method public onHandleCancelLogin()V
    .locals 2

    .line 245
    new-instance v0, Lcom/metamoji/cs/dc/response/CsLoginResponse;

    invoke-direct {v0}, Lcom/metamoji/cs/dc/response/CsLoginResponse;-><init>()V

    .line 246
    const-string v1, ""

    iput-object v1, v0, Lcom/metamoji/cs/dc/response/CsLoginResponse;->errorMessage:Ljava/lang/String;

    const/16 v1, 0x1f4

    .line 247
    iput v1, v0, Lcom/metamoji/cs/dc/response/CsLoginResponse;->httpStatusCode:I

    const/16 v1, -0xc8

    .line 248
    iput v1, v0, Lcom/metamoji/cs/dc/response/CsLoginResponse;->errorCode:I

    .line 249
    iput-object v0, p0, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->loginResponsee:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    return-void
.end method

.method public onHandleLogin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->email:Ljava/lang/String;

    .line 217
    iput-object p2, p0, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->password:Ljava/lang/String;

    const/4 p1, 0x1

    .line 218
    iput-boolean p1, p0, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->autoLogin:Z

    .line 220
    new-instance p1, Lcom/metamoji/cs/dc/response/CsLoginResponse;

    invoke-direct {p1}, Lcom/metamoji/cs/dc/response/CsLoginResponse;-><init>()V

    .line 221
    const-string p2, ""

    iput-object p2, p1, Lcom/metamoji/cs/dc/response/CsLoginResponse;->errorMessage:Ljava/lang/String;

    const/16 p2, 0x1f4

    .line 222
    iput p2, p1, Lcom/metamoji/cs/dc/response/CsLoginResponse;->httpStatusCode:I

    const/16 p2, -0x451

    .line 223
    iput p2, p1, Lcom/metamoji/cs/dc/response/CsLoginResponse;->errorCode:I

    .line 224
    iput-object p1, p0, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->loginResponsee:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    const/4 p1, 0x0

    .line 225
    iput-boolean p1, p0, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->waitForUICallback:Z

    return-void
.end method

.method public onHandleLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->coLoginId:Ljava/lang/String;

    .line 230
    iput-object p2, p0, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->loginName:Ljava/lang/String;

    .line 231
    iput-object p3, p0, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->password:Ljava/lang/String;

    .line 232
    new-instance p1, Lcom/metamoji/cs/dc/response/CsLoginResponse;

    invoke-direct {p1}, Lcom/metamoji/cs/dc/response/CsLoginResponse;-><init>()V

    .line 233
    const-string p2, ""

    iput-object p2, p1, Lcom/metamoji/cs/dc/response/CsLoginResponse;->errorMessage:Ljava/lang/String;

    const/16 p2, 0x1f4

    .line 234
    iput p2, p1, Lcom/metamoji/cs/dc/response/CsLoginResponse;->httpStatusCode:I

    const/16 p2, -0x451

    .line 235
    iput p2, p1, Lcom/metamoji/cs/dc/response/CsLoginResponse;->errorCode:I

    .line 236
    iput-object p1, p0, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->loginResponsee:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    const/4 p1, 0x0

    .line 237
    iput-boolean p1, p0, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->waitForUICallback:Z

    return-void
.end method

.method public onHandleRegister()V
    .locals 2

    .line 258
    new-instance v0, Lcom/metamoji/cs/dc/response/CsLoginResponse;

    invoke-direct {v0}, Lcom/metamoji/cs/dc/response/CsLoginResponse;-><init>()V

    .line 259
    const-string v1, ""

    iput-object v1, v0, Lcom/metamoji/cs/dc/response/CsLoginResponse;->errorMessage:Ljava/lang/String;

    const/16 v1, 0x1f4

    .line 260
    iput v1, v0, Lcom/metamoji/cs/dc/response/CsLoginResponse;->httpStatusCode:I

    const/16 v1, -0x44f

    .line 261
    iput v1, v0, Lcom/metamoji/cs/dc/response/CsLoginResponse;->errorCode:I

    .line 262
    iput-object v0, p0, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->loginResponsee:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    return-void
.end method

.method public onHandleResetPassword(Ljava/lang/String;)V
    .locals 1

    .line 266
    iput-object p1, p0, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->email:Ljava/lang/String;

    .line 267
    new-instance p1, Lcom/metamoji/cs/dc/response/CsLoginResponse;

    invoke-direct {p1}, Lcom/metamoji/cs/dc/response/CsLoginResponse;-><init>()V

    .line 268
    const-string v0, ""

    iput-object v0, p1, Lcom/metamoji/cs/dc/response/CsLoginResponse;->errorMessage:Ljava/lang/String;

    const/16 v0, 0x1f4

    .line 269
    iput v0, p1, Lcom/metamoji/cs/dc/response/CsLoginResponse;->httpStatusCode:I

    const/16 v0, -0xcb

    .line 270
    iput v0, p1, Lcom/metamoji/cs/dc/response/CsLoginResponse;->errorCode:I

    .line 271
    iput-object p1, p0, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->loginResponsee:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    const/4 p1, 0x0

    .line 272
    iput-boolean p1, p0, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->waitForUICallback:Z

    return-void
.end method

.method public onSuccessSubExecutor(Lcom/metamoji/cs/dc/ICsExecutor;)V
    .locals 4

    .line 323
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->ui:Lcom/metamoji/ui/cabinet/user/LoginUser;

    .line 324
    instance-of v1, p1, Lcom/metamoji/cs/dc/CsReLoginExecutor;

    if-eqz v1, :cond_1

    .line 325
    move-object v1, p1

    check-cast v1, Lcom/metamoji/cs/dc/CsReLoginExecutor;

    if-eqz v0, :cond_0

    .line 327
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v2

    new-instance v3, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor$3;

    invoke-direct {v3, p0, v0, v1}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor$3;-><init>(Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;Lcom/metamoji/ui/cabinet/user/LoginUser;Lcom/metamoji/cs/dc/CsReLoginExecutor;)V

    invoke-virtual {v2, v3}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 338
    :cond_0
    invoke-interface {p1}, Lcom/metamoji/cs/dc/ICsExecutor;->getResponseState()Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->loginResponsee:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    goto :goto_0

    .line 340
    :cond_1
    instance-of v1, p1, Lcom/metamoji/cs/dc/CsResetPasswordExecutor;

    if-eqz v1, :cond_3

    .line 341
    move-object v1, p1

    check-cast v1, Lcom/metamoji/cs/dc/CsResetPasswordExecutor;

    if-eqz v0, :cond_2

    .line 343
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v2

    new-instance v3, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor$4;

    invoke-direct {v3, p0, v0, v1}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor$4;-><init>(Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;Lcom/metamoji/ui/cabinet/user/LoginUser;Lcom/metamoji/cs/dc/CsResetPasswordExecutor;)V

    invoke-virtual {v2, v3}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    :cond_2
    const/4 v0, 0x0

    .line 353
    iput-object v0, p0, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->loginResponsee:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    .line 357
    :cond_3
    :goto_0
    invoke-interface {p1}, Lcom/metamoji/cs/dc/ICsExecutor;->clear()V

    return-void
.end method

.method public setAfterAction(Lcom/metamoji/ui/cabinet/user/ICabinetUserAction;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->m_afterAction:Lcom/metamoji/ui/cabinet/user/ICabinetUserAction;

    return-void
.end method

.method public setNotRecovery(Z)V
    .locals 0

    .line 443
    iput-boolean p1, p0, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->_notRecovery:Z

    return-void
.end method

.method public setStartupMode(Z)V
    .locals 0

    .line 81
    iput-boolean p1, p0, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->m_startUpMode:Z

    return-void
.end method
