.class public Lcom/metamoji/dm/impl/sync/library/item/contentsandmeta/DmServerLibraryItemContentsAndMetaDownloadIntentService;
.super Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmServerLibraryContentsAndMetaDownloadIntentService;
.source "DmServerLibraryItemContentsAndMetaDownloadIntentService.java"


# instance fields
.field private _docId:Ljava/lang/String;

.field _proxy:Lcom/metamoji/dm/impl/sync/library/item/contentsandmeta/DmSyncClientItemContentsAndMetaProxy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmServerLibraryContentsAndMetaDownloadIntentService;-><init>()V

    .line 15
    new-instance v0, Lcom/metamoji/dm/impl/sync/library/item/contentsandmeta/DmSyncClientItemContentsAndMetaProxy;

    invoke-direct {v0}, Lcom/metamoji/dm/impl/sync/library/item/contentsandmeta/DmSyncClientItemContentsAndMetaProxy;-><init>()V

    iput-object v0, p0, Lcom/metamoji/dm/impl/sync/library/item/contentsandmeta/DmServerLibraryItemContentsAndMetaDownloadIntentService;->_proxy:Lcom/metamoji/dm/impl/sync/library/item/contentsandmeta/DmSyncClientItemContentsAndMetaProxy;

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/metamoji/dm/impl/sync/library/item/contentsandmeta/DmServerLibraryItemContentsAndMetaDownloadIntentService;->_docId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getContentsProxy()Lcom/metamoji/dm/impl/sync/common/IDmSyncClientContentsCproxy;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/metamoji/dm/impl/sync/library/item/contentsandmeta/DmServerLibraryItemContentsAndMetaDownloadIntentService;->_proxy:Lcom/metamoji/dm/impl/sync/library/item/contentsandmeta/DmSyncClientItemContentsAndMetaProxy;

    return-object v0
.end method

.method protected sendServerContentDownloadEndMessage(Ljava/lang/String;)V
    .locals 3

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 40
    const-string v1, "entityId"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string p1, "onelibraryItemSyncEnd"

    const/4 v1, 0x0

    const-string v2, "ProcessOne"

    invoke-virtual {p0, v2, p1, v1, v0}, Lcom/metamoji/dm/impl/sync/library/item/contentsandmeta/DmServerLibraryItemContentsAndMetaDownloadIntentService;->sendBroadcast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method protected sendServerContentDownloadSkippedMessage(Ljava/lang/String;)V
    .locals 3

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 32
    const-string v1, "entityId"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-string p1, "onelibraryItemSyncSkipped"

    const/4 v1, 0x0

    const-string v2, "ProcessOne"

    invoke-virtual {p0, v2, p1, v1, v0}, Lcom/metamoji/dm/impl/sync/library/item/contentsandmeta/DmServerLibraryItemContentsAndMetaDownloadIntentService;->sendBroadcast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method protected sendServerContentDownloadStartMessage(Ljava/lang/String;)V
    .locals 3

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 23
    const-string v1, "entityId"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    const-string p1, "action"

    const-string v1, "download"

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    const-string p1, "onelibraryItemSyncStart"

    const/4 v1, 0x0

    const-string v2, "ProcessOne"

    invoke-virtual {p0, v2, p1, v1, v0}, Lcom/metamoji/dm/impl/sync/library/item/contentsandmeta/DmServerLibraryItemContentsAndMetaDownloadIntentService;->sendBroadcast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method
