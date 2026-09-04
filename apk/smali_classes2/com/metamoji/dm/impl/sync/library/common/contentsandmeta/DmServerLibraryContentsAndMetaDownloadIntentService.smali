.class public abstract Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmServerLibraryContentsAndMetaDownloadIntentService;
.super Lcom/metamoji/dm/impl/sync/common/DmServerContentsDownloadIntentService;
.source "DmServerLibraryContentsAndMetaDownloadIntentService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/metamoji/dm/impl/sync/common/DmServerContentsDownloadIntentService;-><init>()V

    return-void
.end method


# virtual methods
.method protected generateClientId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 18
    const-string v0, "mmjdm.sync.fw.extparam.key.userInfoBean"

    invoke-virtual {p0, v0}, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmServerLibraryContentsAndMetaDownloadIntentService;->getDmSyncUserInfoBean(Ljava/lang/String;)Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;->getUserHomeUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/metamoji/dm/impl/sync/library/common/DmLibrarySyncUtils;->getClientIdFromResourceId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getClientIdFromServerId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmServerLibraryContentsAndMetaDownloadIntentService;->getAccessUtils()Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->getResourceIdFromServerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 28
    const-string v0, "mmjdm.sync.fw.extparam.key.userInfoBean"

    invoke-virtual {p0, v0}, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmServerLibraryContentsAndMetaDownloadIntentService;->getDmSyncUserInfoBean(Ljava/lang/String;)Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;->getUserHomeUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/metamoji/dm/impl/sync/library/common/DmLibrarySyncUtils;->getClientIdFromResourceId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected isSyncTargetClient(Ljava/lang/String;)Z
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmServerLibraryContentsAndMetaDownloadIntentService;->getContentsProxy()Lcom/metamoji/dm/impl/sync/common/IDmSyncClientContentsCproxy;

    move-result-object v0

    check-cast v0, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;

    invoke-virtual {v0, p1}, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->isTrialClientContents(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
