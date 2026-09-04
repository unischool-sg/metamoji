.class public abstract Lcom/metamoji/dm/fw/sync/DmIntentServiceController;
.super Ljava/lang/Object;
.source "DmIntentServiceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/dm/fw/sync/DmIntentServiceController$PushServiceResult;
    }
.end annotation


# static fields
.field private static final INTENTSERVICE_ISFORCE:Ljava/lang/String; = "intentservice.isforce"


# instance fields
.field private _action:Ljava/lang/String;

.field private volatile _eventListener:Lcom/metamoji/cm/CmEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/cm/CmEventListener<",
            "Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;",
            ">;"
        }
    .end annotation
.end field

.field protected _runMgr:Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager;

.field private volatile _serviceList:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/metamoji/dm/fw/sync/DmIntentService;",
            ">;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceController;->_serviceList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 39
    new-instance v0, Lcom/metamoji/cm/CmEventListener;

    invoke-direct {v0}, Lcom/metamoji/cm/CmEventListener;-><init>()V

    iput-object v0, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceController;->_eventListener:Lcom/metamoji/cm/CmEventListener;

    .line 55
    invoke-static {}, Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager;->getInstance()Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceController;->_runMgr:Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager;

    .line 66
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceController;->_action:Ljava/lang/String;

    .line 75
    new-instance v0, Lcom/metamoji/dm/fw/sync/DmIntentServiceController$1;

    invoke-direct {v0, p0}, Lcom/metamoji/dm/fw/sync/DmIntentServiceController$1;-><init>(Lcom/metamoji/dm/fw/sync/DmIntentServiceController;)V

    .line 81
    iget-object v1, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceController;->_eventListener:Lcom/metamoji/cm/CmEventListener;

    invoke-virtual {v1, v0}, Lcom/metamoji/cm/CmEventListener;->add(Lcom/metamoji/cm/ICmEventHandler;)V

    .line 82
    iget-object v0, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceController;->_runMgr:Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager;->createAndPustReceiver(Lcom/metamoji/dm/fw/sync/DmIntentServiceController;Z)Lcom/metamoji/dm/fw/sync/DmIntentServiceBroadcastReceiver;

    return-void
.end method


# virtual methods
.method dispatchEvent(Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;)V
    .locals 2

    .line 250
    invoke-virtual {p1}, Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;->getEventKey()Ljava/lang/String;

    move-result-object v0

    .line 252
    iget-object v1, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceController;->_runMgr:Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager;

    invoke-virtual {v1, v0}, Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager;->getEventHandler(Ljava/lang/String;)Lcom/metamoji/cm/ICmEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 255
    invoke-interface {v0, p1}, Lcom/metamoji/cm/ICmEventHandler;->invoke(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method fireEvent(Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;)V
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceController;->_eventListener:Lcom/metamoji/cm/CmEventListener;

    invoke-virtual {v0, p1}, Lcom/metamoji/cm/CmEventListener;->fire(Ljava/lang/Object;)V

    return-void
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceController;->_action:Ljava/lang/String;

    return-object v0
.end method

.method public abstract initIntentServices(Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;)V
.end method

.method protected onReceiveDmIntentService(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method protected onReceiveDmIntentServiceAfterProcess(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method protected onReceiveDmIntentServiceBeforeProcess(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method protected final onReceiveDmIntentServiceDestoroy(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method protected onReceiveDmIntentServiceProcessOne(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method protected final pushService(Ljava/lang/String;Ljava/lang/Class;Ljava/util/concurrent/ConcurrentHashMap;)Lcom/metamoji/dm/fw/sync/DmIntentServiceController$PushServiceResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/metamoji/dm/fw/sync/DmIntentService;",
            ">;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;)",
            "Lcom/metamoji/dm/fw/sync/DmIntentServiceController$PushServiceResult;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 102
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/metamoji/dm/fw/sync/DmIntentServiceController;->pushService(Ljava/lang/String;Ljava/lang/Class;Ljava/util/concurrent/ConcurrentHashMap;Z)Lcom/metamoji/dm/fw/sync/DmIntentServiceController$PushServiceResult;

    move-result-object p1

    return-object p1
.end method

.method protected final pushService(Ljava/lang/String;Ljava/lang/Class;Ljava/util/concurrent/ConcurrentHashMap;Z)Lcom/metamoji/dm/fw/sync/DmIntentServiceController$PushServiceResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/metamoji/dm/fw/sync/DmIntentService;",
            ">;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;Z)",
            "Lcom/metamoji/dm/fw/sync/DmIntentServiceController$PushServiceResult;"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceController;->_serviceList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    sget-object p1, Lcom/metamoji/dm/fw/sync/DmIntentServiceController$PushServiceResult;->DuplicateEntry:Lcom/metamoji/dm/fw/sync/DmIntentServiceController$PushServiceResult;

    return-object p1

    .line 136
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    if-nez p3, :cond_1

    .line 138
    new-instance p3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    :cond_1
    if-eqz p4, :cond_2

    const/4 p4, 0x1

    .line 143
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    const-string v1, "intentservice.isforce"

    invoke-virtual {p3, v1, p4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    :cond_2
    invoke-virtual {v0, p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object p2, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceController;->_serviceList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object p1, Lcom/metamoji/dm/fw/sync/DmIntentServiceController$PushServiceResult;->Success:Lcom/metamoji/dm/fw/sync/DmIntentServiceController$PushServiceResult;

    return-object p1
.end method

.method public startServices()V
    .locals 8

    .line 158
    iget-object v0, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceController;->_serviceList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 159
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 160
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 161
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 162
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 164
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 165
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 166
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 169
    iget-object v4, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceController;->_runMgr:Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager;

    invoke-virtual {v4, v3}, Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager;->createIntentForIntentService(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v4

    .line 175
    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 177
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 178
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 179
    const-string v7, "intentservice.isforce"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 181
    invoke-virtual {v1, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_1

    .line 183
    :cond_1
    invoke-virtual {v1, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/Serializable;

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_1

    .line 189
    :cond_2
    iget-object v1, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceController;->_runMgr:Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager;

    invoke-virtual {v1, v2, v4, p0, v3}, Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager;->pushAndStartIntentService(Ljava/lang/String;Landroid/content/Intent;Lcom/metamoji/dm/fw/sync/DmIntentServiceController;Z)V

    .line 191
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 193
    iget-object v1, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceController;->_serviceList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    iget-object v1, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceController;->_serviceList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-void
.end method
