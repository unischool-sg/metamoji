.class public abstract Lcom/metamoji/dm/fw/sync/DmIntentService;
.super Ljava/lang/Object;
.source "DmIntentService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;
    }
.end annotation


# instance fields
.field private _action:Ljava/lang/String;

.field private _baseContext:Landroid/content/Context;

.field private _servicelistKey:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/metamoji/dm/fw/sync/DmIntentService;->_action:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/metamoji/dm/fw/sync/DmIntentService;->_servicelistKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract afterProcess(Landroid/content/Intent;)Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;
.end method

.method public abstract beforeProcess(Landroid/content/Intent;)Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;
.end method

.method protected getActionName()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/metamoji/dm/fw/sync/DmIntentService;->_action:Ljava/lang/String;

    return-object v0
.end method

.method protected getBaseContext()Landroid/content/Context;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/metamoji/dm/fw/sync/DmIntentService;->_baseContext:Landroid/content/Context;

    return-object v0
.end method

.method protected getServiceKey()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/metamoji/dm/fw/sync/DmIntentService;->_servicelistKey:Ljava/lang/String;

    return-object v0
.end method

.method public onDestroy()V
    .locals 4

    .line 172
    const-string v0, "dm.start"

    const/4 v1, 0x0

    const-string v2, "Destoroy"

    const-string v3, "dm.system"

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/metamoji/dm/fw/sync/DmIntentService;->sendBroadcast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method protected final onHandleIntent(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 8

    .line 84
    iput-object p2, p0, Lcom/metamoji/dm/fw/sync/DmIntentService;->_baseContext:Landroid/content/Context;

    .line 89
    const-string p2, "DmIntentServiceBroadcastReceiver.action"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/dm/fw/sync/DmIntentService;->_action:Ljava/lang/String;

    .line 92
    const-string p2, "DmIntentServiceBroadcastReceiver.servicelistKey"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/dm/fw/sync/DmIntentService;->_servicelistKey:Ljava/lang/String;

    .line 97
    invoke-static {}, Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager;->getInstance()Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager;

    move-result-object p2

    .line 98
    iget-object v0, p0, Lcom/metamoji/dm/fw/sync/DmIntentService;->_servicelistKey:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager;->isForce(Ljava/lang/String;)Z

    move-result v0

    .line 101
    invoke-virtual {p2}, Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager;->inService()Z

    move-result v1

    const-string v2, "DmIntentService : %s : %s : %s"

    if-eqz v1, :cond_1

    .line 105
    iget-object v1, p0, Lcom/metamoji/dm/fw/sync/DmIntentService;->_action:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 103
    iget-object v3, p0, Lcom/metamoji/dm/fw/sync/DmIntentService;->_servicelistKey:Ljava/lang/String;

    const-string v4, "(FORCE) START"

    filled-new-array {v1, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 105
    :cond_0
    iget-object v3, p0, Lcom/metamoji/dm/fw/sync/DmIntentService;->_servicelistKey:Ljava/lang/String;

    const-string v4, "START"

    filled-new-array {v1, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_6

    .line 112
    iget-object v1, p0, Lcom/metamoji/dm/fw/sync/DmIntentService;->_action:Ljava/lang/String;

    iget-object v3, p0, Lcom/metamoji/dm/fw/sync/DmIntentService;->_servicelistKey:Ljava/lang/String;

    const-string v4, "(FORCE) START <Stop instruction is normal service...>"

    filled-new-array {v1, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    :goto_0
    const-string v1, "BeforeProcess"

    const-string v3, "dm.system"

    const-string v4, "dm.start"

    const/4 v5, 0x0

    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/metamoji/dm/fw/sync/DmIntentService;->sendBroadcast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 124
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/fw/sync/DmIntentService;->beforeProcess(Landroid/content/Intent;)Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    .line 127
    const-string v1, "ProcessOne"

    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/metamoji/dm/fw/sync/DmIntentService;->sendBroadcast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 128
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/fw/sync/DmIntentService;->processOne(Landroid/content/Intent;)Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 131
    invoke-virtual {v1}, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->ordinal()I

    move-result v1

    const/4 v6, 0x1

    if-eq v1, v6, :cond_3

    const/4 v7, 0x2

    if-eq v1, v7, :cond_2

    goto :goto_1

    .line 142
    :cond_2
    invoke-virtual {p2}, Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager;->stopServices()V

    .line 143
    sput-boolean v6, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->_errorOccurred:Z

    .line 144
    iget-object v1, p0, Lcom/metamoji/dm/fw/sync/DmIntentService;->_action:Ljava/lang/String;

    iget-object v6, p0, Lcom/metamoji/dm/fw/sync/DmIntentService;->_servicelistKey:Ljava/lang/String;

    filled-new-array {v1, v6}, [Ljava/lang/Object;

    move-result-object v1

    const-string v6, "DmIntentService : FatalStopError !! : %s : %s"

    invoke-static {v6, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 137
    :cond_3
    sput-boolean v6, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->_errorOccurred:Z

    .line 138
    iget-object v1, p0, Lcom/metamoji/dm/fw/sync/DmIntentService;->_action:Ljava/lang/String;

    iget-object v6, p0, Lcom/metamoji/dm/fw/sync/DmIntentService;->_servicelistKey:Ljava/lang/String;

    filled-new-array {v1, v6}, [Ljava/lang/Object;

    move-result-object v1

    const-string v6, "DmIntentService : FailSkipNext !! : %s : %s"

    invoke-static {v6, v1}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    :cond_4
    :goto_1
    const-string v1, "AfterProcess"

    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/metamoji/dm/fw/sync/DmIntentService;->sendBroadcast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 153
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/fw/sync/DmIntentService;->afterProcess(Landroid/content/Intent;)Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    .line 157
    iget-object p1, p0, Lcom/metamoji/dm/fw/sync/DmIntentService;->_action:Ljava/lang/String;

    iget-object v1, p0, Lcom/metamoji/dm/fw/sync/DmIntentService;->_servicelistKey:Ljava/lang/String;

    invoke-virtual {p2, p1, v1}, Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager;->unregistStartedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object p1, p0, Lcom/metamoji/dm/fw/sync/DmIntentService;->_action:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 161
    iget-object p2, p0, Lcom/metamoji/dm/fw/sync/DmIntentService;->_servicelistKey:Ljava/lang/String;

    const-string v0, "(FORCE) END"

    filled-new-array {p1, p2, v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 163
    :cond_5
    iget-object p2, p0, Lcom/metamoji/dm/fw/sync/DmIntentService;->_servicelistKey:Ljava/lang/String;

    const-string v0, "END"

    filled-new-array {p1, p2, v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    return-void
.end method

.method public abstract processOne(Landroid/content/Intent;)Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;
.end method

.method protected sendBroadcast(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 184
    invoke-virtual {p0, v0, p1, p2, v0}, Lcom/metamoji/dm/fw/sync/DmIntentService;->sendBroadcast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method protected sendBroadcast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;)V"
        }
    .end annotation

    .line 209
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 210
    iget-object v1, p0, Lcom/metamoji/dm/fw/sync/DmIntentService;->_action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    const-string v1, "DmIntentServiceBroadcastReceiver.servicelistKey"

    iget-object v2, p0, Lcom/metamoji/dm/fw/sync/DmIntentService;->_servicelistKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    const-string v1, "DmIntentServiceBroadcastReceiver.kindKey"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    const-string p1, "DmIntentServiceBroadcastReceiver.eventKey"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    const-string p1, "DmIntentServiceBroadcastReceiver.messageKey"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p4, :cond_0

    .line 218
    invoke-virtual {p4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 219
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 220
    invoke-virtual {p4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/io/Serializable;

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0

    .line 223
    :cond_0
    iget-object p1, p0, Lcom/metamoji/dm/fw/sync/DmIntentService;->_baseContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method protected sendBroadcast(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 1
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

    const/4 v0, 0x0

    .line 196
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/metamoji/dm/fw/sync/DmIntentService;->sendBroadcast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method
