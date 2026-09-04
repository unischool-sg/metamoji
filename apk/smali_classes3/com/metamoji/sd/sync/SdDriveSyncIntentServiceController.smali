.class public Lcom/metamoji/sd/sync/SdDriveSyncIntentServiceController;
.super Lcom/metamoji/dm/fw/sync/DmIntentServiceController;
.source "SdDriveSyncIntentServiceController.java"


# static fields
.field private static _instance:Lcom/metamoji/sd/sync/SdDriveSyncIntentServiceController;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/metamoji/dm/fw/sync/DmIntentServiceController;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/metamoji/sd/sync/SdDriveSyncIntentServiceController;
    .locals 1

    .line 27
    sget-object v0, Lcom/metamoji/sd/sync/SdDriveSyncIntentServiceController;->_instance:Lcom/metamoji/sd/sync/SdDriveSyncIntentServiceController;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/metamoji/sd/sync/SdDriveSyncIntentServiceController;

    invoke-direct {v0}, Lcom/metamoji/sd/sync/SdDriveSyncIntentServiceController;-><init>()V

    sput-object v0, Lcom/metamoji/sd/sync/SdDriveSyncIntentServiceController;->_instance:Lcom/metamoji/sd/sync/SdDriveSyncIntentServiceController;

    .line 29
    :cond_0
    sget-object v0, Lcom/metamoji/sd/sync/SdDriveSyncIntentServiceController;->_instance:Lcom/metamoji/sd/sync/SdDriveSyncIntentServiceController;

    return-object v0
.end method


# virtual methods
.method public initIntentServices(Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;)V
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/sd/sync/SdDriveSyncIntentServiceController;->initIntentServices(Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;Ljava/lang/String;)V

    return-void
.end method

.method public initIntentServices(Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;Ljava/lang/String;)V
    .locals 2

    .line 42
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 43
    const-string v1, "mmjdm.sync.fw.extparam.key.userInfoBean"

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string p1, "mmjsd.sync.extparam.key.driveId"

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string p1, "SdDriveSyncIntentService"

    const-class p2, Lcom/metamoji/sd/sync/SdDriveSyncIntentService;

    invoke-virtual {p0, p1, p2, v0}, Lcom/metamoji/sd/sync/SdDriveSyncIntentServiceController;->pushService(Ljava/lang/String;Ljava/lang/Class;Ljava/util/concurrent/ConcurrentHashMap;)Lcom/metamoji/dm/fw/sync/DmIntentServiceController$PushServiceResult;

    return-void
.end method
