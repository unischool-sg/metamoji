.class public Lcom/metamoji/dm/impl/sync/common/DmSyncDeleteTempFolderIntentServiceController;
.super Lcom/metamoji/dm/fw/sync/DmIntentServiceController;
.source "DmSyncDeleteTempFolderIntentServiceController.java"


# static fields
.field private static _instance:Lcom/metamoji/dm/impl/sync/common/DmSyncDeleteTempFolderIntentServiceController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lcom/metamoji/dm/impl/sync/common/DmSyncDeleteTempFolderIntentServiceController;

    invoke-direct {v0}, Lcom/metamoji/dm/impl/sync/common/DmSyncDeleteTempFolderIntentServiceController;-><init>()V

    sput-object v0, Lcom/metamoji/dm/impl/sync/common/DmSyncDeleteTempFolderIntentServiceController;->_instance:Lcom/metamoji/dm/impl/sync/common/DmSyncDeleteTempFolderIntentServiceController;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/metamoji/dm/fw/sync/DmIntentServiceController;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/metamoji/dm/impl/sync/common/DmSyncDeleteTempFolderIntentServiceController;
    .locals 1

    .line 21
    sget-object v0, Lcom/metamoji/dm/impl/sync/common/DmSyncDeleteTempFolderIntentServiceController;->_instance:Lcom/metamoji/dm/impl/sync/common/DmSyncDeleteTempFolderIntentServiceController;

    return-object v0
.end method


# virtual methods
.method public initIntentServices(Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;)V
    .locals 3

    .line 27
    const-class p1, Lcom/metamoji/dm/impl/sync/common/DmSyncDeleteTempFolderIntentService;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "DmSyncDeleteTempFolderIntentService"

    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/metamoji/dm/impl/sync/common/DmSyncDeleteTempFolderIntentServiceController;->pushService(Ljava/lang/String;Ljava/lang/Class;Ljava/util/concurrent/ConcurrentHashMap;Z)Lcom/metamoji/dm/fw/sync/DmIntentServiceController$PushServiceResult;

    return-void
.end method
