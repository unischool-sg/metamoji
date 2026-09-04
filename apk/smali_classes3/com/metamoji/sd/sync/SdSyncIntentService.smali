.class public abstract Lcom/metamoji/sd/sync/SdSyncIntentService;
.super Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService;
.source "SdSyncIntentService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService;-><init>()V

    return-void
.end method


# virtual methods
.method public afterProcess()Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;
    .locals 1

    .line 59
    sget-object v0, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->Success:Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    return-object v0
.end method

.method public beforeProcess()Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;
    .locals 1

    .line 29
    sget-object v0, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->Success:Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    return-object v0
.end method

.method protected abstract createSyncProcess()Lcom/metamoji/sd/sync/SdSyncProcess;
.end method

.method public fireEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 70
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/sd/sync/SdSyncIntentService;->sendBroadcast(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;)V"
        }
    .end annotation

    .line 74
    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/sd/sync/SdSyncIntentService;->sendBroadcast(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method protected getContentsProxy()Lcom/metamoji/dm/impl/sync/common/IDmSyncClientContentsCproxy;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public notifyMessage(Ljava/lang/String;)V
    .locals 6

    .line 79
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 80
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 81
    invoke-virtual {p0}, Lcom/metamoji/sd/sync/SdSyncIntentService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 82
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Lcom/metamoji/sd/sync/SdSyncIntentService;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    sget v4, Lcom/metamoji/noteanytime/R$drawable;->ic_launcher:I

    .line 83
    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 84
    invoke-virtual {v2, p1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v2

    sget v4, Lcom/metamoji/noteanytime/R$string;->app_name:I

    .line 86
    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 87
    invoke-virtual {v2, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 88
    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    const/4 v1, 0x1

    .line 89
    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 90
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object p1

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sdnm_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method public processOne()Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;
    .locals 4

    .line 38
    invoke-static {}, Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager;->getInstance()Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager;

    move-result-object v0

    .line 39
    invoke-virtual {p0}, Lcom/metamoji/sd/sync/SdSyncIntentService;->createSyncProcess()Lcom/metamoji/sd/sync/SdSyncProcess;

    move-result-object v1

    .line 40
    invoke-virtual {v1}, Lcom/metamoji/sd/sync/SdSyncProcess;->beforeProcesses()V

    .line 42
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Lcom/metamoji/sd/sync/SdSyncProcess;->hasMoreNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager;->inService()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 43
    invoke-virtual {v1}, Lcom/metamoji/sd/sync/SdSyncProcess;->processOne()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 48
    :cond_1
    invoke-virtual {v1}, Lcom/metamoji/sd/sync/SdSyncProcess;->afterProcesses()V

    .line 51
    sget-object v0, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->Success:Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    return-object v0

    :catchall_0
    move-exception v0

    .line 48
    invoke-virtual {v1}, Lcom/metamoji/sd/sync/SdSyncProcess;->afterProcesses()V

    .line 49
    throw v0
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method
