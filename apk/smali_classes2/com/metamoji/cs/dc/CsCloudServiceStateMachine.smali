.class public Lcom/metamoji/cs/dc/CsCloudServiceStateMachine;
.super Ljava/lang/Object;
.source "CsCloudServiceStateMachine.java"


# instance fields
.field private executeMethodStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/metamoji/cs/dc/ICsExecutor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/metamoji/cs/dc/CsCloudServiceStateMachine;->executeMethodStack:Ljava/util/Stack;

    return-void
.end method

.method private afterProcess(Lcom/metamoji/cs/dc/ICsExecutor;ZZ)V
    .locals 6

    .line 82
    invoke-interface {p1}, Lcom/metamoji/cs/dc/ICsExecutor;->getResponseState()Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object v0

    .line 84
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v1

    .line 85
    invoke-virtual {v1}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v1

    const/16 v2, 0x8e

    if-eqz v0, :cond_0

    .line 90
    iget v3, v0, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorCode:I

    if-ne v3, v2, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0x64

    :cond_1
    :goto_0
    if-eqz v3, :cond_11

    const/16 v4, 0x6a

    const/4 v5, 0x1

    if-eq v3, v4, :cond_a

    const/16 v1, 0x83

    if-eq v3, v1, :cond_8

    if-eq v3, v2, :cond_6

    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    .line 369
    iget-object p1, p0, Lcom/metamoji/cs/dc/CsCloudServiceStateMachine;->executeMethodStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/cs/dc/ICsExecutor;

    .line 370
    iget-object p2, p0, Lcom/metamoji/cs/dc/CsCloudServiceStateMachine;->executeMethodStack:Ljava/util/Stack;

    invoke-virtual {p2}, Ljava/util/Stack;->size()I

    move-result p2

    if-lez p2, :cond_12

    .line 371
    iget-object p2, p0, Lcom/metamoji/cs/dc/CsCloudServiceStateMachine;->executeMethodStack:Ljava/util/Stack;

    invoke-virtual {p2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/cs/dc/ICsExecutor;

    if-eqz p2, :cond_12

    .line 373
    invoke-interface {p2, p1}, Lcom/metamoji/cs/dc/ICsExecutor;->onFailedSubExecutor(Lcom/metamoji/cs/dc/ICsExecutor;)V

    return-void

    .line 355
    :pswitch_0
    iget-object p1, p0, Lcom/metamoji/cs/dc/CsCloudServiceStateMachine;->executeMethodStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/cs/dc/ICsExecutor;

    .line 356
    iget-object p2, p0, Lcom/metamoji/cs/dc/CsCloudServiceStateMachine;->executeMethodStack:Ljava/util/Stack;

    invoke-virtual {p2}, Ljava/util/Stack;->size()I

    move-result p2

    if-lez p2, :cond_12

    .line 357
    iget-object p2, p0, Lcom/metamoji/cs/dc/CsCloudServiceStateMachine;->executeMethodStack:Ljava/util/Stack;

    invoke-virtual {p2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/cs/dc/ICsExecutor;

    if-eqz p2, :cond_12

    .line 359
    invoke-interface {p2, p1}, Lcom/metamoji/cs/dc/ICsExecutor;->onCancelSubExecutor(Lcom/metamoji/cs/dc/ICsExecutor;)V

    return-void

    .line 241
    :pswitch_1
    new-instance p2, Lcom/metamoji/cs/dc/CsRegisterExecutor;

    invoke-direct {p2}, Lcom/metamoji/cs/dc/CsRegisterExecutor;-><init>()V

    .line 242
    check-cast p1, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;

    .line 243
    iget-object p3, p1, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;->email:Ljava/lang/String;

    iput-object p3, p2, Lcom/metamoji/cs/dc/CsRegisterExecutor;->email:Ljava/lang/String;

    .line 244
    iget-object p3, p1, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;->nickName:Ljava/lang/String;

    iput-object p3, p2, Lcom/metamoji/cs/dc/CsRegisterExecutor;->nickname:Ljava/lang/String;

    .line 245
    iget-object p1, p1, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;->password:Ljava/lang/String;

    iput-object p1, p2, Lcom/metamoji/cs/dc/CsRegisterExecutor;->password:Ljava/lang/String;

    .line 246
    iget-object p1, p0, Lcom/metamoji/cs/dc/CsCloudServiceStateMachine;->executeMethodStack:Ljava/util/Stack;

    invoke-virtual {p1, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 153
    :pswitch_2
    iget-object p1, p0, Lcom/metamoji/cs/dc/CsCloudServiceStateMachine;->executeMethodStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/cs/dc/ICsExecutor;

    .line 154
    iget-object p2, p0, Lcom/metamoji/cs/dc/CsCloudServiceStateMachine;->executeMethodStack:Ljava/util/Stack;

    invoke-virtual {p2}, Ljava/util/Stack;->size()I

    move-result p2

    if-lez p2, :cond_12

    .line 155
    iget-object p2, p0, Lcom/metamoji/cs/dc/CsCloudServiceStateMachine;->executeMethodStack:Ljava/util/Stack;

    invoke-virtual {p2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/cs/dc/ICsExecutor;

    if-eqz p2, :cond_12

    .line 157
    invoke-interface {p2, p1}, Lcom/metamoji/cs/dc/ICsExecutor;->onFailedSubExecutor(Lcom/metamoji/cs/dc/ICsExecutor;)V

    return-void

    .line 231
    :pswitch_3
    check-cast p1, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;

    .line 232
    new-instance p2, Lcom/metamoji/cs/dc/CsResetPasswordExecutor;

    invoke-direct {p2}, Lcom/metamoji/cs/dc/CsResetPasswordExecutor;-><init>()V

    .line 233
    iget-object p1, p1, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->email:Ljava/lang/String;

    iput-object p1, p2, Lcom/metamoji/cs/dc/CsResetPasswordExecutor;->email:Ljava/lang/String;

    .line 234
    iget-object p1, p0, Lcom/metamoji/cs/dc/CsCloudServiceStateMachine;->executeMethodStack:Ljava/util/Stack;

    invoke-virtual {p1, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 273
    :pswitch_4
    new-instance p1, Lcom/metamoji/cs/dc/CsAgreeEULAExecutor;

    invoke-direct {p1}, Lcom/metamoji/cs/dc/CsAgreeEULAExecutor;-><init>()V

    .line 274
    iget p2, v0, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->requiredEULAVersion:I

    iput p2, p1, Lcom/metamoji/cs/dc/CsAgreeEULAExecutor;->eulaAgreeVersion:I

    .line 275
    iget-object p2, p0, Lcom/metamoji/cs/dc/CsCloudServiceStateMachine;->executeMethodStack:Ljava/util/Stack;

    invoke-virtual {p2, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 180
    :pswitch_5
    iget-object p1, p0, Lcom/metamoji/cs/dc/CsCloudServiceStateMachine;->executeMethodStack:Ljava/util/Stack;

    if-nez p2, :cond_2

    .line 168
    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/cs/dc/ICsExecutor;

    .line 169
    iget-object p2, p0, Lcom/metamoji/cs/dc/CsCloudServiceStateMachine;->executeMethodStack:Ljava/util/Stack;

    invoke-virtual {p2}, Ljava/util/Stack;->size()I

    move-result p2

    if-lez p2, :cond_12

    .line 170
    iget-object p2, p0, Lcom/metamoji/cs/dc/CsCloudServiceStateMachine;->executeMethodStack:Ljava/util/Stack;

    invoke-virtual {p2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/cs/dc/ICsExecutor;

    if-eqz p2, :cond_12

    .line 172
    invoke-interface {p2, p1}, Lcom/metamoji/cs/dc/ICsExecutor;->onFailedSubExecutor(Lcom/metamoji/cs/dc/ICsExecutor;)V

    return-void

    .line 180
    :cond_2
    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 181
    invoke-static {}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->getInstance()Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;

    move-result-object p1

    .line 182
    invoke-virtual {p1, p3}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->setNotRecovery(Z)V

    .line 183
    iget-object p2, p0, Lcom/metamoji/cs/dc/CsCloudServiceStateMachine;->executeMethodStack:Ljava/util/Stack;

    invoke-virtual {p2, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 332
    :pswitch_6
    iget-object p1, p0, Lcom/metamoji/cs/dc/CsCloudServiceStateMachine;->executeMethodStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/cs/dc/ICsExecutor;

    .line 333
    iget-object p2, p0, Lcom/metamoji/cs/dc/CsCloudServiceStateMachine;->executeMethodStack:Ljava/util/Stack;

    invoke-virtual {p2}, Ljava/util/Stack;->size()I

    move-result p2

    if-gtz p2, :cond_3

    goto/16 :goto_3

    .line 336
    :cond_3
    iget-object p2, p0, Lcom/metamoji/cs/dc/CsCloudServiceStateMachine;->executeMethodStack:Ljava/util/Stack;

    invoke-virtual {p2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/cs/dc/ICsExecutor;

    if-eqz p2, :cond_4

    .line 338
    invoke-interface {p2, p1}, Lcom/metamoji/cs/dc/ICsExecutor;->onSuccessSubExecutor(Lcom/metamoji/cs/dc/ICsExecutor;)V

    .line 340
    :cond_4
    instance-of p1, p2, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;

    if-eqz p1, :cond_12

    .line 341
    iget-object p1, p0, Lcom/metamoji/cs/dc/CsCloudServiceStateMachine;->executeMethodStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/cs/dc/ICsExecutor;

    if-eqz p1, :cond_5

    .line 343
    invoke-interface {p1, p2}, Lcom/metamoji/cs/dc/ICsExecutor;->onSuccessSubExecutor(Lcom/metamoji/cs/dc/ICsExecutor;)V

    .line 345
    :cond_5
    new-instance p1, Lcom/metamoji/cs/dc/CsShowUserRegistoryProcedureExecutor;

    invoke-direct {p1}, Lcom/metamoji/cs/dc/CsShowUserRegistoryProcedureExecutor;-><init>()V

    .line 346
    iget-object p2, p0, Lcom/metamoji/cs/dc/CsCloudServiceStateMachine;->executeMethodStack:Ljava/util/Stack;

    invoke-virtual {p2, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 199
    :pswitch_7
    invoke-static {}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->getInstance()Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;

    move-result-object p1

    .line 200
    invoke-virtual {p1, p3}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->setNotRecovery(Z)V

    .line 201
    iget-object p2, p0, Lcom/metamoji/cs/dc/CsCloudServiceStateMachine;->executeMethodStack:Ljava/util/Stack;

    invoke-virtual {p2, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 190
    :pswitch_8
    invoke-static {}, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;->getInstance()Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;

    move-result-object p1

    .line 191
    iget-object p2, p0, Lcom/metamoji/cs/dc/CsCloudServiceStateMachine;->executeMethodStack:Ljava/util/Stack;

    invoke-virtual {p2, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 305
    :pswitch_9
    iget-object p1, p0, Lcom/metamoji/cs/dc/CsCloudServiceStateMachine;->executeMethodStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/cs/dc/ICsExecutor;

    .line 306
    iget-object p2, p0, Lcom/metamoji/cs/dc/CsCloudServiceStateMachine;->executeMethodStack:Ljava/util/Stack;

    invoke-virtual {p2}, Ljava/util/Stack;->size()I

    move-result p2

    if-lez p2, :cond_12

    .line 307
    iget-object p2, p0, Lcom/metamoji/cs/dc/CsCloudServiceStateMachine;->executeMethodStack:Ljava/util/Stack;

    invoke-virtual {p2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/cs/dc/ICsExecutor;

    if-eqz p2, :cond_12

    .line 309
    invoke-interface {p2, p1}, Lcom/metamoji/cs/dc/ICsExecutor;->onSuccessSubExecutor(Lcom/metamoji/cs/dc/ICsExecutor;)V

    return-void

    .line 217
    :pswitch_a
    new-instance p2, Lcom/metamoji/cs/dc/CsReLoginExecutor;

    invoke-direct {p2}, Lcom/metamoji/cs/dc/CsReLoginExecutor;-><init>()V

    .line 218
    check-cast p1, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;

    .line 219
    iget-object p3, p1, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->coLoginId:Ljava/lang/String;

    iput-object p3, p2, Lcom/metamoji/cs/dc/CsReLoginExecutor;->coLoginId:Ljava/lang/String;

    .line 220
    iget-object p3, p1, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->loginName:Ljava/lang/String;

    iput-object p3, p2, Lcom/metamoji/cs/dc/CsReLoginExecutor;->loginName:Ljava/lang/String;

    .line 221
    iget-object p1, p1, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->password:Ljava/lang/String;

    iput-object p1, p2, Lcom/metamoji/cs/dc/CsReLoginExecutor;->password:Ljava/lang/String;

    .line 222
    iput-boolean v5, p2, Lcom/metamoji/cs/dc/CsReLoginExecutor;->doAutoLogin:Z

    .line 223
    iget-object p1, p0, Lcom/metamoji/cs/dc/CsCloudServiceStateMachine;->executeMethodStack:Ljava/util/Stack;

    invoke-virtual {p1, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_6
    if-nez p2, :cond_7

    .line 283
    iget-object p1, p0, Lcom/metamoji/cs/dc/CsCloudServiceStateMachine;->executeMethodStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/cs/dc/ICsExecutor;

    .line 285
    invoke-interface {p1}, Lcom/metamoji/cs/dc/ICsExecutor;->getResponseState()Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object p2

    const/16 p3, -0xc8

    iput p3, p2, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorCode:I

    .line 286
    iget-object p2, p0, Lcom/metamoji/cs/dc/CsCloudServiceStateMachine;->executeMethodStack:Ljava/util/Stack;

    invoke-virtual {p2}, Ljava/util/Stack;->size()I

    move-result p2

    if-lez p2, :cond_12

    .line 287
    iget-object p2, p0, Lcom/metamoji/cs/dc/CsCloudServiceStateMachine;->executeMethodStack:Ljava/util/Stack;

    invoke-virtual {p2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/cs/dc/ICsExecutor;

    if-eqz p2, :cond_12

    .line 289
    invoke-interface {p2, p1}, Lcom/metamoji/cs/dc/ICsExecutor;->onCancelSubExecutor(Lcom/metamoji/cs/dc/ICsExecutor;)V

    return-void

    .line 297
    :cond_7
    new-instance p1, Lcom/metamoji/cs/dc/CsShowSyncConflictAlertDialogExecutor;

    invoke-direct {p1}, Lcom/metamoji/cs/dc/CsShowSyncConflictAlertDialogExecutor;-><init>()V

    .line 298
    iget-object p2, p0, Lcom/metamoji/cs/dc/CsCloudServiceStateMachine;->executeMethodStack:Ljava/util/Stack;

    invoke-virtual {p2, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_8
    if-nez p2, :cond_9

    .line 254
    iget-object p1, p0, Lcom/metamoji/cs/dc/CsCloudServiceStateMachine;->executeMethodStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/cs/dc/ICsExecutor;

    .line 255
    iget-object p2, p0, Lcom/metamoji/cs/dc/CsCloudServiceStateMachine;->executeMethodStack:Ljava/util/Stack;

    invoke-virtual {p2}, Ljava/util/Stack;->size()I

    move-result p2

    if-lez p2, :cond_12

    .line 256
    iget-object p2, p0, Lcom/metamoji/cs/dc/CsCloudServiceStateMachine;->executeMethodStack:Ljava/util/Stack;

    invoke-virtual {p2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/cs/dc/ICsExecutor;

    if-eqz p2, :cond_12

    .line 258
    invoke-interface {p2, p1}, Lcom/metamoji/cs/dc/ICsExecutor;->onFailedSubExecutor(Lcom/metamoji/cs/dc/ICsExecutor;)V

    return-void

    .line 265
    :cond_9
    invoke-static {}, Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;->getInstance()Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;

    move-result-object p1

    .line 266
    iget p2, v0, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->requiredEULAVersion:I

    iput p2, p1, Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;->requiredEulaVersion:I

    .line 267
    iget-object p2, p0, Lcom/metamoji/cs/dc/CsCloudServiceStateMachine;->executeMethodStack:Ljava/util/Stack;

    invoke-virtual {p2, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 104
    :cond_a
    iget-boolean p1, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->alreadyLogined:Z

    if-nez p1, :cond_b

    iget-boolean p1, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->autologin:Z

    if-eqz p1, :cond_e

    :cond_b
    iget p1, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userType:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_e

    .line 105
    new-instance p1, Lcom/metamoji/cs/dc/CsAutoLoginExecutor;

    invoke-direct {p1}, Lcom/metamoji/cs/dc/CsAutoLoginExecutor;-><init>()V

    .line 108
    iget-object p2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->coLoginId:Ljava/lang/String;

    iput-object p2, p1, Lcom/metamoji/cs/dc/CsAutoLoginExecutor;->coLoginId:Ljava/lang/String;

    .line 109
    iget-object p2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginName:Ljava/lang/String;

    iput-object p2, p1, Lcom/metamoji/cs/dc/CsAutoLoginExecutor;->loginName:Ljava/lang/String;

    .line 111
    iget-object p2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->email:Ljava/lang/String;

    iput-object p2, p1, Lcom/metamoji/cs/dc/CsAutoLoginExecutor;->email:Ljava/lang/String;

    .line 112
    iget-object p2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedPassword:Ljava/lang/String;

    if-eqz p2, :cond_c

    iget-object p2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedPassword:Ljava/lang/String;

    goto :goto_1

    :cond_c
    iget-object p2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->password:Ljava/lang/String;

    :goto_1
    iput-object p2, p1, Lcom/metamoji/cs/dc/CsAutoLoginExecutor;->password:Ljava/lang/String;

    .line 113
    iget-object p2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedQwd:Ljava/lang/String;

    if-eqz p2, :cond_d

    iget-object p2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedQwd:Ljava/lang/String;

    goto :goto_2

    :cond_d
    iget-object p2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->qwd:Ljava/lang/String;

    :goto_2
    iput-object p2, p1, Lcom/metamoji/cs/dc/CsAutoLoginExecutor;->qwd:Ljava/lang/String;

    .line 114
    iget-object p2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    iput-object p2, p1, Lcom/metamoji/cs/dc/CsAutoLoginExecutor;->userId:Ljava/lang/String;

    .line 115
    iget-boolean p2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->autologin:Z

    iput-boolean p2, p1, Lcom/metamoji/cs/dc/CsAutoLoginExecutor;->doAutoLogin:Z

    .line 117
    iget-object p2, p0, Lcom/metamoji/cs/dc/CsCloudServiceStateMachine;->executeMethodStack:Ljava/util/Stack;

    invoke-virtual {p2, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_e
    if-nez p2, :cond_f

    .line 123
    iget-object p1, p0, Lcom/metamoji/cs/dc/CsCloudServiceStateMachine;->executeMethodStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/cs/dc/ICsExecutor;

    .line 124
    iget-object p2, p0, Lcom/metamoji/cs/dc/CsCloudServiceStateMachine;->executeMethodStack:Ljava/util/Stack;

    invoke-virtual {p2}, Ljava/util/Stack;->size()I

    move-result p2

    if-lez p2, :cond_12

    .line 125
    iget-object p2, p0, Lcom/metamoji/cs/dc/CsCloudServiceStateMachine;->executeMethodStack:Ljava/util/Stack;

    invoke-virtual {p2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/cs/dc/ICsExecutor;

    if-eqz p2, :cond_12

    .line 127
    invoke-interface {p2, p1}, Lcom/metamoji/cs/dc/ICsExecutor;->onFailedSubExecutor(Lcom/metamoji/cs/dc/ICsExecutor;)V

    return-void

    .line 135
    :cond_f
    iget p1, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userType:I

    if-ne p1, v5, :cond_10

    .line 137
    invoke-static {}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->getInstance()Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;

    move-result-object p1

    .line 138
    invoke-virtual {p1, p3}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->setNotRecovery(Z)V

    .line 139
    iget-object p2, p0, Lcom/metamoji/cs/dc/CsCloudServiceStateMachine;->executeMethodStack:Ljava/util/Stack;

    invoke-virtual {p2, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 144
    :cond_10
    invoke-static {}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->getInstance()Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;

    move-result-object p1

    .line 145
    invoke-virtual {p1, p3}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->setNotRecovery(Z)V

    .line 146
    iget-object p2, p0, Lcom/metamoji/cs/dc/CsCloudServiceStateMachine;->executeMethodStack:Ljava/util/Stack;

    invoke-virtual {p2, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 320
    :cond_11
    :pswitch_b
    iget-object p1, p0, Lcom/metamoji/cs/dc/CsCloudServiceStateMachine;->executeMethodStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/cs/dc/ICsExecutor;

    .line 321
    iget-object p2, p0, Lcom/metamoji/cs/dc/CsCloudServiceStateMachine;->executeMethodStack:Ljava/util/Stack;

    invoke-virtual {p2}, Ljava/util/Stack;->size()I

    move-result p2

    if-lez p2, :cond_12

    .line 322
    iget-object p2, p0, Lcom/metamoji/cs/dc/CsCloudServiceStateMachine;->executeMethodStack:Ljava/util/Stack;

    invoke-virtual {p2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/cs/dc/ICsExecutor;

    if-eqz p2, :cond_12

    .line 324
    invoke-interface {p2, p1}, Lcom/metamoji/cs/dc/ICsExecutor;->onSuccessSubExecutor(Lcom/metamoji/cs/dc/ICsExecutor;)V

    :cond_12
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch -0x451
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0xcf
        :pswitch_6
        :pswitch_b
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    .line 31
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsCloudServiceStateMachine;->executeMethodStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public executeWithState(ILcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 38
    sget-object p1, Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;->WithLoginDialogIfRegisterd:Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;

    if-eq p2, p1, :cond_1

    sget-object p1, Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;->WithLoginDialogIfRegisterdAndRotateClose:Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;

    if-ne p2, p1, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    sget-object p1, Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;->WithoutLoginDialog:Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;

    if-ne p2, p1, :cond_2

    :cond_1
    :goto_0
    move p1, v1

    goto :goto_1

    :cond_2
    move p1, v0

    .line 44
    :goto_1
    sget-object v2, Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;->WithLoginDialogIfRegisterdAndRotateClose:Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;

    if-ne p2, v2, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    .line 47
    :goto_2
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/cs/dc/CsCloudServiceStateMachine;->executeWithState(ZZ)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object p1

    return-object p1
.end method

.method public executeWithState(ZZ)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;
    .locals 2

    const/4 v0, 0x0

    .line 58
    :goto_0
    iget-object v1, p0, Lcom/metamoji/cs/dc/CsCloudServiceStateMachine;->executeMethodStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 59
    iget-object v1, p0, Lcom/metamoji/cs/dc/CsCloudServiceStateMachine;->executeMethodStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/cs/dc/ICsExecutor;

    .line 62
    :try_start_0
    invoke-interface {v1}, Lcom/metamoji/cs/dc/ICsExecutor;->executeSync()V

    .line 63
    invoke-interface {v1}, Lcom/metamoji/cs/dc/ICsExecutor;->getResponseState()Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object v0

    .line 64
    invoke-direct {p0, v1, p1, p2}, Lcom/metamoji/cs/dc/CsCloudServiceStateMachine;->afterProcess(Lcom/metamoji/cs/dc/ICsExecutor;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 67
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    .line 69
    iget-object p1, p0, Lcom/metamoji/cs/dc/CsCloudServiceStateMachine;->executeMethodStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->removeAllElements()V

    :cond_0
    return-object v0
.end method

.method public declared-synchronized pushExecutor(Lcom/metamoji/cs/dc/ICsExecutor;)V
    .locals 1

    monitor-enter p0

    .line 18
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsCloudServiceStateMachine;->executeMethodStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
