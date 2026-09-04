.class public Lcom/metamoji/dm/impl/sync/library/item/contentsandmeta/DmSyncClientItemContentsAndMetaProxy;
.super Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;
.source "DmSyncClientItemContentsAndMetaProxy.java"


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 16
    sget-object v0, Lcom/metamoji/dm/DmLibraryType;->LibraryTypeItem:Lcom/metamoji/dm/DmLibraryType;

    .line 18
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;

    move-result-object v1

    const-string v2, "item"

    .line 20
    invoke-static {}, Lcom/metamoji/dm/impl/contents/DmLibraryItemContentsManager;->getInstance()Lcom/metamoji/dm/impl/contents/DmLibraryItemContentsManager;

    move-result-object v3

    .line 16
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;-><init>(Lcom/metamoji/dm/DmLibraryType;Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;Ljava/lang/String;Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;)V

    return-void
.end method


# virtual methods
.method public getClientMetaDictionaryForJson(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/metamoji/dm/impl/sync/library/item/contentsandmeta/DmSyncClientItemContentsAndMetaProxy;->metaDataManager:Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;

    invoke-virtual {v0, p1}, Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;->getMetaData(Ljava/lang/String;)Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;

    move-result-object p1

    check-cast p1, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 40
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->dictionaryForSync()Ljava/util/HashMap;

    move-result-object p1

    return-object p1
.end method

.method public isTrialClientContents(Ljava/lang/String;)Z
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/metamoji/dm/impl/sync/library/item/contentsandmeta/DmSyncClientItemContentsAndMetaProxy;->metaDataManager:Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;

    invoke-virtual {v0, p1}, Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;->getMetaData(Ljava/lang/String;)Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;

    move-result-object p1

    check-cast p1, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 29
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->isTrial()Z

    move-result p1

    return p1
.end method

.method public newMutableObject(Ljava/lang/String;)Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/metamoji/dm/impl/sync/library/item/contentsandmeta/DmSyncClientItemContentsAndMetaProxy;->metaDataManager:Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;

    invoke-virtual {v0}, Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;->newMutableDataObject()Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;

    move-result-object v0

    check-cast v0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;

    .line 47
    invoke-virtual {v0, p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->setEntityId(Ljava/lang/String;)V

    return-object v0
.end method

.method public putJsonDictionaryForMetaData(Ljava/util/HashMap;Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;)Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;",
            ")",
            "Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;"
        }
    .end annotation

    .line 54
    check-cast p2, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;

    .line 55
    invoke-virtual {p2, p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->setValuesForSync(Ljava/util/HashMap;)V

    return-object p2
.end method
