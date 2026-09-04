.class Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmAfterProcessesIntentServiceController;
.super Lcom/metamoji/dm/fw/sync/DmIntentServiceController;
.source "DmDCSyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/dm/impl/sync/DmDCSyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DmAfterProcessesIntentServiceController"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/metamoji/dm/fw/sync/DmIntentServiceController;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/metamoji/dm/impl/sync/DmDCSyncManager-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmAfterProcessesIntentServiceController;-><init>()V

    return-void
.end method


# virtual methods
.method public initIntentServices(Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;)V
    .locals 3

    .line 92
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 93
    const-class v0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmAfterProcessesIntentService;

    const/4 v1, 0x1

    const-string v2, "DmAfterProcessesIntentService"

    invoke-virtual {p0, v2, v0, p1, v1}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmAfterProcessesIntentServiceController;->pushService(Ljava/lang/String;Ljava/lang/Class;Ljava/util/concurrent/ConcurrentHashMap;Z)Lcom/metamoji/dm/fw/sync/DmIntentServiceController$PushServiceResult;

    return-void
.end method
