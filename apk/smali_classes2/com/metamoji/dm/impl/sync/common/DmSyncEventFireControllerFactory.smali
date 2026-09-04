.class public Lcom/metamoji/dm/impl/sync/common/DmSyncEventFireControllerFactory;
.super Ljava/lang/Object;
.source "DmSyncEventFireControllerFactory.java"


# static fields
.field private static _instance:Lcom/metamoji/dm/impl/sync/common/DmSyncEventFireControllerFactory;


# instance fields
.field private volatile _controllerMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/metamoji/dm/impl/sync/common/DmSyncEventFireIntentServiceController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lcom/metamoji/dm/impl/sync/common/DmSyncEventFireControllerFactory;

    invoke-direct {v0}, Lcom/metamoji/dm/impl/sync/common/DmSyncEventFireControllerFactory;-><init>()V

    sput-object v0, Lcom/metamoji/dm/impl/sync/common/DmSyncEventFireControllerFactory;->_instance:Lcom/metamoji/dm/impl/sync/common/DmSyncEventFireControllerFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/dm/impl/sync/common/DmSyncEventFireControllerFactory;->_controllerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static getInstance()Lcom/metamoji/dm/impl/sync/common/DmSyncEventFireControllerFactory;
    .locals 1

    .line 24
    sget-object v0, Lcom/metamoji/dm/impl/sync/common/DmSyncEventFireControllerFactory;->_instance:Lcom/metamoji/dm/impl/sync/common/DmSyncEventFireControllerFactory;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized createController(Ljava/lang/String;)Lcom/metamoji/dm/impl/sync/common/DmSyncEventFireIntentServiceController;
    .locals 2

    monitor-enter p0

    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/dm/impl/sync/common/DmSyncEventFireControllerFactory;->_controllerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/metamoji/dm/impl/sync/common/DmSyncEventFireControllerFactory;->_controllerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/dm/impl/sync/common/DmSyncEventFireIntentServiceController;

    goto :goto_0

    .line 44
    :cond_0
    new-instance v0, Lcom/metamoji/dm/impl/sync/common/DmSyncEventFireIntentServiceController;

    invoke-direct {v0}, Lcom/metamoji/dm/impl/sync/common/DmSyncEventFireIntentServiceController;-><init>()V

    .line 45
    iget-object v1, p0, Lcom/metamoji/dm/impl/sync/common/DmSyncEventFireControllerFactory;->_controllerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p1, v0

    .line 47
    :goto_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized init()V
    .locals 1

    monitor-enter p0

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/dm/impl/sync/common/DmSyncEventFireControllerFactory;->_controllerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
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
