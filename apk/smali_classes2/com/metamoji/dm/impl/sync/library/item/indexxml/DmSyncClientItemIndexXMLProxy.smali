.class public Lcom/metamoji/dm/impl/sync/library/item/indexxml/DmSyncClientItemIndexXMLProxy;
.super Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;
.source "DmSyncClientItemIndexXMLProxy.java"


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 12
    sget-object v0, Lcom/metamoji/dm/DmLibraryType;->LibraryTypeItem:Lcom/metamoji/dm/DmLibraryType;

    .line 14
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;

    move-result-object v1

    const-string v2, "index"

    .line 16
    invoke-static {}, Lcom/metamoji/dm/impl/contents/DmLibraryItemContentsManager;->getInstance()Lcom/metamoji/dm/impl/contents/DmLibraryItemContentsManager;

    move-result-object v3

    .line 12
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmSyncClientLibraryIndexXMLProxy;-><init>(Lcom/metamoji/dm/DmLibraryType;Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;Ljava/lang/String;Lcom/metamoji/dm/fw/contents/DmContentsManagerBaseAbstract;)V

    return-void
.end method
