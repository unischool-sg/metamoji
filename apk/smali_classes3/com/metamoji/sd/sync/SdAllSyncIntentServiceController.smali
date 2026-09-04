.class public Lcom/metamoji/sd/sync/SdAllSyncIntentServiceController;
.super Lcom/metamoji/dm/fw/sync/DmIntentServiceController;
.source "SdAllSyncIntentServiceController.java"


# static fields
.field private static _instance:Lcom/metamoji/sd/sync/SdAllSyncIntentServiceController;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/metamoji/dm/fw/sync/DmIntentServiceController;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/metamoji/sd/sync/SdAllSyncIntentServiceController;
    .locals 1

    .line 28
    sget-object v0, Lcom/metamoji/sd/sync/SdAllSyncIntentServiceController;->_instance:Lcom/metamoji/sd/sync/SdAllSyncIntentServiceController;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/metamoji/sd/sync/SdAllSyncIntentServiceController;

    invoke-direct {v0}, Lcom/metamoji/sd/sync/SdAllSyncIntentServiceController;-><init>()V

    sput-object v0, Lcom/metamoji/sd/sync/SdAllSyncIntentServiceController;->_instance:Lcom/metamoji/sd/sync/SdAllSyncIntentServiceController;

    .line 30
    :cond_0
    sget-object v0, Lcom/metamoji/sd/sync/SdAllSyncIntentServiceController;->_instance:Lcom/metamoji/sd/sync/SdAllSyncIntentServiceController;

    return-object v0
.end method


# virtual methods
.method public initIntentServices(Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/sd/sync/SdAllSyncIntentServiceController;->initIntentServices(Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmSyncOptionParams;)V

    return-void
.end method

.method public initIntentServices(Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmSyncOptionParams;)V
    .locals 2

    .line 44
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 45
    const-string v1, "mmjdm.sync.fw.extparam.key.userInfoBean"

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    .line 47
    iget p1, p2, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmSyncOptionParams;->driveEntrySyncMode:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "mmjsd.sync.extparam.key.driveEntrySyncMode"

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object p1, p2, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmSyncOptionParams;->specifiedIds:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 49
    const-string p1, "mmjsd.sync.extparam.key.specifiedIds"

    iget-object v1, p2, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmSyncOptionParams;->specifiedIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :cond_0
    iget-object p1, p2, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmSyncOptionParams;->groupIds:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    .line 52
    const-string p1, "mmjsd.sync.extparam.key.groupIds"

    iget-object p2, p2, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmSyncOptionParams;->groupIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :cond_1
    const-string p1, "SdAllSyncIntentService"

    const-class p2, Lcom/metamoji/sd/sync/SdAllSyncIntentService;

    invoke-virtual {p0, p1, p2, v0}, Lcom/metamoji/sd/sync/SdAllSyncIntentServiceController;->pushService(Ljava/lang/String;Ljava/lang/Class;Ljava/util/concurrent/ConcurrentHashMap;)Lcom/metamoji/dm/fw/sync/DmIntentServiceController$PushServiceResult;

    return-void
.end method
