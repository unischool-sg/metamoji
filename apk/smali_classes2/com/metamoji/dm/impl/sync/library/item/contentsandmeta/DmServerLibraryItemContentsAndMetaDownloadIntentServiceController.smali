.class public Lcom/metamoji/dm/impl/sync/library/item/contentsandmeta/DmServerLibraryItemContentsAndMetaDownloadIntentServiceController;
.super Lcom/metamoji/dm/fw/sync/DmIntentServiceController;
.source "DmServerLibraryItemContentsAndMetaDownloadIntentServiceController.java"


# static fields
.field private static _instance:Lcom/metamoji/dm/impl/sync/library/item/contentsandmeta/DmServerLibraryItemContentsAndMetaDownloadIntentServiceController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lcom/metamoji/dm/impl/sync/library/item/contentsandmeta/DmServerLibraryItemContentsAndMetaDownloadIntentServiceController;

    invoke-direct {v0}, Lcom/metamoji/dm/impl/sync/library/item/contentsandmeta/DmServerLibraryItemContentsAndMetaDownloadIntentServiceController;-><init>()V

    sput-object v0, Lcom/metamoji/dm/impl/sync/library/item/contentsandmeta/DmServerLibraryItemContentsAndMetaDownloadIntentServiceController;->_instance:Lcom/metamoji/dm/impl/sync/library/item/contentsandmeta/DmServerLibraryItemContentsAndMetaDownloadIntentServiceController;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/metamoji/dm/fw/sync/DmIntentServiceController;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/metamoji/dm/impl/sync/library/item/contentsandmeta/DmServerLibraryItemContentsAndMetaDownloadIntentServiceController;
    .locals 1

    .line 34
    sget-object v0, Lcom/metamoji/dm/impl/sync/library/item/contentsandmeta/DmServerLibraryItemContentsAndMetaDownloadIntentServiceController;->_instance:Lcom/metamoji/dm/impl/sync/library/item/contentsandmeta/DmServerLibraryItemContentsAndMetaDownloadIntentServiceController;

    return-object v0
.end method


# virtual methods
.method public initIntentServices(Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;)V
    .locals 8

    .line 44
    new-instance v0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;

    invoke-direct {v0}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;-><init>()V

    .line 46
    invoke-virtual {v0, p1}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->init(Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;)V

    .line 49
    invoke-virtual {v0}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->getUserHomeUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->getServerResourceDeadProperties(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 51
    new-instance v2, Lcom/metamoji/dm/impl/sync/library/item/contentsandmeta/DmSyncClientItemContentsAndMetaProxy;

    invoke-direct {v2}, Lcom/metamoji/dm/impl/sync/library/item/contentsandmeta/DmSyncClientItemContentsAndMetaProxy;-><init>()V

    .line 52
    invoke-virtual {v2}, Lcom/metamoji/dm/impl/sync/library/item/contentsandmeta/DmSyncClientItemContentsAndMetaProxy;->getAllClientDeadPropertiesDictWityServerIdKey()Ljava/util/Map;

    move-result-object v2

    .line 54
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 57
    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {v0, v4}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->isTemporaryServerId(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    .line 65
    invoke-virtual {v0, v4, v6}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->isTemporaryServerId(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 67
    const-string v6, "%s is temporary Id delete."

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_1

    add-int/lit8 v5, v5, 0x1

    .line 72
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 73
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->getUserHomeUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->deleteFromServer(Ljava/lang/String;)Z

    goto :goto_0

    .line 78
    :cond_2
    const-string v5, "%s is temporary Id skipped."

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 84
    :cond_3
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 86
    const-string v5, "serverId"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 87
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->getServerUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 90
    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 92
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_5

    .line 96
    const-string v7, "lastSyncedRevision"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 97
    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 99
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto/16 :goto_0

    .line 105
    :cond_5
    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 106
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-string v4, "mmjdm.sync.fw.extparam.key.deadProperties"

    invoke-virtual {v5, v4, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v4, "mmjdm.sync.fw.extparam.key.userInfoBean"

    invoke-virtual {v5, v4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-class v4, Lcom/metamoji/dm/impl/sync/library/item/contentsandmeta/DmServerLibraryItemContentsAndMetaDownloadIntentService;

    invoke-virtual {p0, v6, v4, v5}, Lcom/metamoji/dm/impl/sync/library/item/contentsandmeta/DmServerLibraryItemContentsAndMetaDownloadIntentServiceController;->pushService(Ljava/lang/String;Ljava/lang/Class;Ljava/util/concurrent/ConcurrentHashMap;)Lcom/metamoji/dm/fw/sync/DmIntentServiceController$PushServiceResult;

    goto/16 :goto_0

    :cond_6
    return-void
.end method
