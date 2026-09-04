.class public Lcom/metamoji/dm/impl/sync/common/DmSyncEventFireIntentServiceController;
.super Lcom/metamoji/dm/fw/sync/DmIntentServiceController;
.source "DmSyncEventFireIntentServiceController.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/metamoji/dm/fw/sync/DmIntentServiceController;-><init>()V

    return-void
.end method


# virtual methods
.method public initEventFireIntentService(Ljava/lang/String;Ljava/util/HashMap;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;Z)V"
        }
    .end annotation

    .line 34
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 35
    const-string v1, "dm.event.key"

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    .line 37
    const-string v1, "dm.event.param.key"

    invoke-virtual {v0, v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    :cond_0
    const-class p2, Lcom/metamoji/dm/impl/sync/common/DmSyncEventFireIntentService;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/metamoji/dm/impl/sync/common/DmSyncEventFireIntentServiceController;->pushService(Ljava/lang/String;Ljava/lang/Class;Ljava/util/concurrent/ConcurrentHashMap;Z)Lcom/metamoji/dm/fw/sync/DmIntentServiceController$PushServiceResult;

    return-void
.end method

.method public initIntentServices(Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;)V
    .locals 0

    return-void
.end method
