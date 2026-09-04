.class public Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateUniqueID;
.super Lcom/metamoji/ns/task/NsCollaboBgTaskBase;
.source "NsCollaboBgTaskForCreateUniqueID.java"


# instance fields
.field public startupMsgRollbackAction:Lcom/metamoji/ns/INsCollaboAction;


# direct methods
.method public constructor <init>(Lcom/metamoji/ns/INsCollaboAction;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;-><init>(Lcom/metamoji/ns/INsCollaboAction;)V

    return-void
.end method


# virtual methods
.method protected onCompleted(ZLjava/lang/Throwable;)V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateUniqueID;->startupMsgRollbackAction:Lcom/metamoji/ns/INsCollaboAction;

    if-eqz v0, :cond_0

    .line 109
    invoke-interface {v0, p1}, Lcom/metamoji/ns/INsCollaboAction;->action(Z)V

    .line 112
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;->onCompleted(ZLjava/lang/Throwable;)V

    return-void
.end method

.method protected taskExec()V
    .locals 4

    .line 42
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateUniqueID;->getWaitView()Lcom/metamoji/ns/ui/NsCollaboWaitView;

    move-result-object v0

    .line 43
    sget v1, Lcom/metamoji/noteanytime/R$string;->CreateUniqueId_Requesting:I

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->setMessage(I)V

    const/4 v1, 0x1

    .line 46
    invoke-virtual {v0, v1}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->cancelable(Z)V

    .line 49
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateUniqueID;->isMaintenanceDCServer()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateUniqueID;->cancel()Z

    return-void

    :cond_0
    const/4 v2, 0x0

    .line 55
    invoke-virtual {v0, v2}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->cancelable(Z)V

    .line 58
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    .line 59
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    if-gez v0, :cond_1

    mul-int/lit8 v0, v0, -0x1

    .line 63
    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 66
    new-instance v2, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateUniqueID;

    invoke-direct {v2, p0}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateUniqueID;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskBase;)V

    .line 67
    iput-object v0, v2, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateUniqueID;->deviceCode:Ljava/lang/String;

    .line 70
    :try_start_0
    invoke-virtual {v2}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateUniqueID;->responseJsonFromRequest()Ljava/util/Map;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_2

    .line 91
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateUniqueID;->cancel()Z

    return-void

    .line 96
    :cond_2
    invoke-static {}, Lcom/metamoji/ns/NsCollaboDeviceInfo;->getInstance()Lcom/metamoji/ns/NsCollaboDeviceInfo;

    move-result-object v2

    .line 97
    const-string v3, "deviceID"

    invoke-static {v1, v3}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/metamoji/ns/NsCollaboDeviceInfo;->setDeviceId(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v2, v0}, Lcom/metamoji/ns/NsCollaboDeviceInfo;->setDeviceCode(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    .line 72
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateUniqueID;->cancel()Z

    .line 73
    const-string v2, "NsCollaboBgTaskForCreateUniqueID"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 76
    sget v1, Lcom/metamoji/noteanytime/R$string;->CreateUniqueId_Msg_Failed:I

    invoke-static {v0, v1}, Lcom/metamoji/ns/service/NsCollaboServiceUtil;->messageWithException(Ljava/lang/Exception;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateUniqueID$1;

    invoke-direct {v1, p0, v2}, Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateUniqueID$1;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskForCreateUniqueID;Ljava/util/concurrent/CountDownLatch;)V

    invoke-static {v0, v1}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(Ljava/lang/String;Lcom/metamoji/ns/INsCollaboAction;)V

    .line 84
    :try_start_1
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
