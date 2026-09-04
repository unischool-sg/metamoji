.class public Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager;
.super Ljava/lang/Object;
.source "DmIntentServiceRunManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager$DmIntent;
    }
.end annotation


# static fields
.field private static _mgr:Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager;


# instance fields
.field private volatile _inService:Z

.field private _recieverMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/metamoji/dm/fw/sync/DmIntentServiceBroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private volatile _runtimeContext:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private volatile _startedIntents:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager$DmIntent;",
            ">;"
        }
    .end annotation
.end field

.field private volatile eventListenerStore:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/metamoji/cm/ICmEventHandler<",
            "Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager;

    invoke-direct {v0}, Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager;-><init>()V

    sput-object v0, Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager;->_mgr:Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager;->_inService:Z

    .line 35
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager;->_runtimeContext:Ljava/util/concurrent/ConcurrentHashMap;

    .line 49
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager;->_recieverMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 54
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager;->eventListenerStore:Ljava/util/concurrent/ConcurrentHashMap;

    .line 135
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager;->_startedIntents:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static getInstance()Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager;
    .locals 1

    .line 60
    sget-object v0, Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager;->_mgr:Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager;

    return-object v0
.end method

.method private declared-synchronized terminate()V
    .locals 1

    monitor-enter p0

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager;->_recieverMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 79
    iget-object v0, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager;->_runtimeContext:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
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


# virtual methods
.method public clearEventHandler()V
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager;->eventListenerStore:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method protected declared-synchronized createAndPustReceiver(Lcom/metamoji/dm/fw/sync/DmIntentServiceController;Z)Lcom/metamoji/dm/fw/sync/DmIntentServiceBroadcastReceiver;
    .locals 3

    monitor-enter p0

    .line 107
    :try_start_0
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 108
    invoke-virtual {p1}, Lcom/metamoji/dm/fw/sync/DmIntentServiceController;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 109
    iget-object v2, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager;->_recieverMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    if-nez p2, :cond_0

    .line 111
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    .line 113
    :cond_0
    :try_start_1
    iget-object p2, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager;->_recieverMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/dm/fw/sync/DmIntentServiceBroadcastReceiver;

    .line 114
    invoke-virtual {v0, p2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 115
    iget-object p2, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager;->_recieverMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    :cond_1
    new-instance p2, Lcom/metamoji/dm/fw/sync/DmIntentServiceBroadcastReceiver;

    invoke-direct {p2, p1}, Lcom/metamoji/dm/fw/sync/DmIntentServiceBroadcastReceiver;-><init>(Lcom/metamoji/dm/fw/sync/DmIntentServiceController;)V

    .line 120
    iget-object p1, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager;->_recieverMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt p1, v1, :cond_2

    .line 123
    invoke-virtual {p2}, Lcom/metamoji/dm/fw/sync/DmIntentServiceBroadcastReceiver;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p1

    const/4 v1, 0x2

    invoke-virtual {v0, p2, p1, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    .line 125
    :cond_2
    invoke-virtual {p2}, Lcom/metamoji/dm/fw/sync/DmIntentServiceBroadcastReceiver;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    :goto_0
    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public createIntentForIntentService(Ljava/lang/Class;)Landroid/content/Intent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/metamoji/dm/fw/sync/DmIntentService;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 219
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 222
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/metamoji/dm/fw/sync/DmIntentServiceRunner;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 223
    const-string v0, "DmIntentService"

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 227
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager;->terminate()V

    .line 66
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getEventHandler(Ljava/lang/String;)Lcom/metamoji/cm/ICmEventHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/metamoji/cm/ICmEventHandler<",
            "Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;",
            ">;"
        }
    .end annotation

    .line 358
    iget-object v0, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager;->eventListenerStore:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/cm/ICmEventHandler;

    return-object p1
.end method

.method public getReadOnlyContext()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager;->_runtimeContext:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager;->_runtimeContext:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public inService()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager;->_inService:Z

    return v0
.end method

.method public declared-synchronized init()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 272
    :try_start_0
    iput-boolean v0, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager;->_inService:Z

    .line 273
    const-string v0, "DmIntentServiceRunManager : ----- INIT SERVICE !! -----"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
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

.method public isForce(Ljava/lang/String;)Z
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager;->_startedIntents:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager$DmIntent;

    if-eqz p1, :cond_0

    .line 174
    iget-object p1, p1, Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager$DmIntent;->_isForce:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isRunning(Ljava/lang/String;)Z
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager;->_startedIntents:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isRunningAny()Z
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager;->_startedIntents:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method pushAndStartIntentService(Ljava/lang/String;Landroid/content/Intent;Lcom/metamoji/dm/fw/sync/DmIntentServiceController;)V
    .locals 1

    const/4 v0, 0x0

    .line 185
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager;->pushAndStartIntentService(Ljava/lang/String;Landroid/content/Intent;Lcom/metamoji/dm/fw/sync/DmIntentServiceController;Z)V

    return-void
.end method

.method pushAndStartIntentService(Ljava/lang/String;Landroid/content/Intent;Lcom/metamoji/dm/fw/sync/DmIntentServiceController;Z)V
    .locals 1

    .line 198
    const-string v0, "DmIntentServiceBroadcastReceiver.action"

    invoke-virtual {p3}, Lcom/metamoji/dm/fw/sync/DmIntentServiceController;->getAction()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    const-string p3, "DmIntentServiceBroadcastReceiver.servicelistKey"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    new-instance p3, Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager$DmIntent;

    invoke-direct {p3, p0, p2, p4}, Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager$DmIntent;-><init>(Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager;Landroid/content/Intent;Z)V

    .line 205
    iget-object p4, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager;->_startedIntents:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p4, p1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 209
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public putEventHandler(Ljava/lang/String;Lcom/metamoji/cm/ICmEventHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/metamoji/cm/ICmEventHandler<",
            "Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;",
            ">;)V"
        }
    .end annotation

    .line 334
    iget-object v0, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager;->eventListenerStore:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager;->_runtimeContext:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeEventHandler(Ljava/lang/String;)V
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager;->eventListenerStore:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public declared-synchronized stopServices()V
    .locals 4

    monitor-enter p0

    .line 287
    :try_start_0
    iget-boolean v0, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager;->_inService:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 288
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 292
    :try_start_1
    iput-boolean v0, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager;->_inService:Z

    .line 293
    const-string v0, "DmIntentServiceRunManager : ----- STOP SERVICE !! -----"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager;->_startedIntents:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 297
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 298
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 299
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 300
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 302
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager$DmIntent;

    .line 303
    iget-object v3, v1, Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager$DmIntent;->_intent:Landroid/content/Intent;

    .line 304
    iget-object v1, v1, Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager$DmIntent;->_isForce:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 310
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 311
    iget-object v1, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager;->_startedIntents:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 312
    iget-object v1, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager;->_startedIntents:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 315
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method declared-synchronized unregistStartedIntent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 323
    :try_start_0
    iget-object p1, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager;->_startedIntents:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 324
    iget-object p1, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager;->_startedIntents:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    :cond_0
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

.method protected declared-synchronized unregisterReceiver(Lcom/metamoji/dm/fw/sync/DmIntentServiceController;)V
    .locals 2

    monitor-enter p0

    .line 90
    :try_start_0
    invoke-virtual {p1}, Lcom/metamoji/dm/fw/sync/DmIntentServiceController;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 91
    iget-object v0, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager;->_recieverMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager;->_recieverMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/dm/fw/sync/DmIntentServiceBroadcastReceiver;

    .line 93
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 94
    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 95
    iget-object v0, p0, Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager;->_recieverMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :cond_0
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
