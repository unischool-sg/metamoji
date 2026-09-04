.class public Lcom/metamoji/dm/impl/sync/library/item/indexxml/DmNotEditLibraryItemIndexXMLDownloadIntentServiceController;
.super Lcom/metamoji/dm/fw/sync/DmIntentServiceController;
.source "DmNotEditLibraryItemIndexXMLDownloadIntentServiceController.java"


# static fields
.field private static _instance:Lcom/metamoji/dm/impl/sync/library/item/indexxml/DmNotEditLibraryItemIndexXMLDownloadIntentServiceController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lcom/metamoji/dm/impl/sync/library/item/indexxml/DmNotEditLibraryItemIndexXMLDownloadIntentServiceController;

    invoke-direct {v0}, Lcom/metamoji/dm/impl/sync/library/item/indexxml/DmNotEditLibraryItemIndexXMLDownloadIntentServiceController;-><init>()V

    sput-object v0, Lcom/metamoji/dm/impl/sync/library/item/indexxml/DmNotEditLibraryItemIndexXMLDownloadIntentServiceController;->_instance:Lcom/metamoji/dm/impl/sync/library/item/indexxml/DmNotEditLibraryItemIndexXMLDownloadIntentServiceController;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/metamoji/dm/fw/sync/DmIntentServiceController;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/metamoji/dm/impl/sync/library/item/indexxml/DmNotEditLibraryItemIndexXMLDownloadIntentServiceController;
    .locals 1

    .line 30
    sget-object v0, Lcom/metamoji/dm/impl/sync/library/item/indexxml/DmNotEditLibraryItemIndexXMLDownloadIntentServiceController;->_instance:Lcom/metamoji/dm/impl/sync/library/item/indexxml/DmNotEditLibraryItemIndexXMLDownloadIntentServiceController;

    return-object v0
.end method


# virtual methods
.method public initIntentServices(Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;)V
    .locals 6

    .line 39
    new-instance v0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;

    invoke-direct {v0}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;-><init>()V

    .line 41
    invoke-virtual {v0, p1}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->init(Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;)V

    .line 43
    invoke-virtual {v0}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->getUserHomeUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->getServerResourceDeadProperties(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 45
    new-instance v2, Lcom/metamoji/dm/impl/sync/library/item/indexxml/DmSyncClientItemIndexXMLProxy;

    invoke-direct {v2}, Lcom/metamoji/dm/impl/sync/library/item/indexxml/DmSyncClientItemIndexXMLProxy;-><init>()V

    .line 46
    invoke-virtual {v2}, Lcom/metamoji/dm/impl/sync/library/item/indexxml/DmSyncClientItemIndexXMLProxy;->getNoEditList()Ljava/util/ArrayList;

    move-result-object v3

    .line 47
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 49
    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 52
    :cond_1
    invoke-virtual {v0, v4}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->isTemporaryServerId(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    .line 56
    :cond_2
    invoke-virtual {v0}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->getServerUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 57
    invoke-virtual {v2, v4}, Lcom/metamoji/dm/impl/sync/library/item/indexxml/DmSyncClientItemIndexXMLProxy;->getClientIdFromServerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_0

    .line 61
    :cond_3
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 62
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 66
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 67
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 68
    const-string v3, "mmjdm.sync.fw.extparam.key.userInfoBean"

    invoke-virtual {v2, v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-class v3, Lcom/metamoji/dm/impl/sync/library/item/indexxml/DmNotEditLibraryItemIndexXMLDownloadIntentService;

    invoke-virtual {p0, v1, v3, v2}, Lcom/metamoji/dm/impl/sync/library/item/indexxml/DmNotEditLibraryItemIndexXMLDownloadIntentServiceController;->pushService(Ljava/lang/String;Ljava/lang/Class;Ljava/util/concurrent/ConcurrentHashMap;)Lcom/metamoji/dm/fw/sync/DmIntentServiceController$PushServiceResult;

    goto :goto_1

    :cond_5
    return-void
.end method
