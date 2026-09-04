.class public Lcom/metamoji/dm/fw/sync/DmIntentServiceBroadcastReceiver;
.super Lcom/metamoji/dm/fw/sync/DmBroadcastReceiver;
.source "DmIntentServiceBroadcastReceiver.java"


# static fields
.field public static final ATTRIBUTE_NAME_ACTION:Ljava/lang/String; = "DmIntentServiceBroadcastReceiver.action"

.field public static final ATTRIBUTE_NAME_EVENT_KEY:Ljava/lang/String; = "DmIntentServiceBroadcastReceiver.eventKey"

.field public static final ATTRIBUTE_NAME_KIND_KEY:Ljava/lang/String; = "DmIntentServiceBroadcastReceiver.kindKey"

.field public static final ATTRIBUTE_NAME_MESSAGE_KEY:Ljava/lang/String; = "DmIntentServiceBroadcastReceiver.messageKey"

.field public static final ATTRIBUTE_NAME_SERVICE_LIST_KEY:Ljava/lang/String; = "DmIntentServiceBroadcastReceiver.servicelistKey"


# instance fields
.field private _ctrl:Lcom/metamoji/dm/fw/sync/DmIntentServiceController;


# direct methods
.method public constructor <init>(Lcom/metamoji/dm/fw/sync/DmIntentServiceController;)V
    .locals 1

    .line 50
    invoke-virtual {p1}, Lcom/metamoji/dm/fw/sync/DmIntentServiceController;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/metamoji/dm/fw/sync/DmBroadcastReceiver;-><init>(Ljava/lang/String;)V

    .line 51
    iput-object p1, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceBroadcastReceiver;->_ctrl:Lcom/metamoji/dm/fw/sync/DmIntentServiceController;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    .line 64
    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 67
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 68
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 69
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-string v0, ""

    move-object v3, v0

    move-object v4, v3

    move-object v6, v4

    move-object v7, v1

    move-object v1, v6

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    .line 70
    const-string v0, "DmIntentServiceBroadcastReceiver.servicelistKey"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 72
    :cond_0
    const-string v0, "DmIntentServiceBroadcastReceiver.kindKey"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    .line 74
    :cond_1
    const-string v0, "DmIntentServiceBroadcastReceiver.eventKey"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 75
    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    .line 76
    :cond_2
    const-string v0, "DmIntentServiceBroadcastReceiver.messageKey"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 77
    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_0

    .line 81
    :cond_3
    :try_start_0
    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    invoke-virtual {v5, v8, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 83
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "error occurred key:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_9

    if-eqz v4, :cond_9

    .line 90
    const-string v0, "dm.system"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    if-eqz v6, :cond_9

    const-string v0, "dm.start"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 91
    const-string v0, "BeforeProcess"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 93
    iget-object v0, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceBroadcastReceiver;->_ctrl:Lcom/metamoji/dm/fw/sync/DmIntentServiceController;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/dm/fw/sync/DmIntentServiceController;->onReceiveDmIntentServiceBeforeProcess(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 94
    :cond_5
    const-string v0, "ProcessOne"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 96
    iget-object v0, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceBroadcastReceiver;->_ctrl:Lcom/metamoji/dm/fw/sync/DmIntentServiceController;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/dm/fw/sync/DmIntentServiceController;->onReceiveDmIntentServiceProcessOne(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 98
    :cond_6
    const-string v0, "AfterProcess"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 100
    iget-object v0, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceBroadcastReceiver;->_ctrl:Lcom/metamoji/dm/fw/sync/DmIntentServiceController;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/dm/fw/sync/DmIntentServiceController;->onReceiveDmIntentServiceAfterProcess(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 105
    :cond_7
    const-string v0, "Destoroy"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 107
    iget-object v0, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceBroadcastReceiver;->_ctrl:Lcom/metamoji/dm/fw/sync/DmIntentServiceController;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/dm/fw/sync/DmIntentServiceController;->onReceiveDmIntentServiceDestoroy(Landroid/content/Context;Landroid/content/Intent;)V

    .line 114
    :cond_8
    :goto_1
    iget-object p1, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceBroadcastReceiver;->_ctrl:Lcom/metamoji/dm/fw/sync/DmIntentServiceController;

    iget-object v0, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceBroadcastReceiver;->_action:Ljava/lang/String;

    move-object v2, v3

    move-object v3, v4

    move-object v4, v6

    invoke-static/range {v0 .. v5}, Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;->newDmBackgroundContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;)Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/metamoji/dm/fw/sync/DmIntentServiceController;->fireEvent(Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;)V

    return-void

    :cond_9
    move-object v2, v3

    move-object v3, v4

    move-object v4, v6

    .line 119
    iget-object v0, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceBroadcastReceiver;->_ctrl:Lcom/metamoji/dm/fw/sync/DmIntentServiceController;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/dm/fw/sync/DmIntentServiceController;->onReceiveDmIntentService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 120
    iget-object p1, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceBroadcastReceiver;->_ctrl:Lcom/metamoji/dm/fw/sync/DmIntentServiceController;

    iget-object v0, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceBroadcastReceiver;->_action:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;->newDmBackgroundContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;)Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/metamoji/dm/fw/sync/DmIntentServiceController;->fireEvent(Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;)V

    return-void
.end method

.method protected setDmIntentServiceController(Lcom/metamoji/dm/fw/sync/DmIntentServiceController;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceBroadcastReceiver;->_ctrl:Lcom/metamoji/dm/fw/sync/DmIntentServiceController;

    return-void
.end method
