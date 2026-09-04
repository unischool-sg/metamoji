.class public Lcom/metamoji/dm/impl/sync/library/item/contentsandmeta/DmNotEditLibraryItemContentsAndMetaDownloadIntentService;
.super Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmNotEditLibraryContentsAndMetaUploadIntentService;
.source "DmNotEditLibraryItemContentsAndMetaDownloadIntentService.java"


# instance fields
.field _proxy:Lcom/metamoji/dm/impl/sync/library/item/contentsandmeta/DmSyncClientItemContentsAndMetaProxy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmNotEditLibraryContentsAndMetaUploadIntentService;-><init>()V

    .line 15
    new-instance v0, Lcom/metamoji/dm/impl/sync/library/item/contentsandmeta/DmSyncClientItemContentsAndMetaProxy;

    invoke-direct {v0}, Lcom/metamoji/dm/impl/sync/library/item/contentsandmeta/DmSyncClientItemContentsAndMetaProxy;-><init>()V

    iput-object v0, p0, Lcom/metamoji/dm/impl/sync/library/item/contentsandmeta/DmNotEditLibraryItemContentsAndMetaDownloadIntentService;->_proxy:Lcom/metamoji/dm/impl/sync/library/item/contentsandmeta/DmSyncClientItemContentsAndMetaProxy;

    return-void
.end method


# virtual methods
.method protected getContentsProxy()Lcom/metamoji/dm/impl/sync/common/IDmSyncClientContentsCproxy;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/metamoji/dm/impl/sync/library/item/contentsandmeta/DmNotEditLibraryItemContentsAndMetaDownloadIntentService;->_proxy:Lcom/metamoji/dm/impl/sync/library/item/contentsandmeta/DmSyncClientItemContentsAndMetaProxy;

    return-object v0
.end method

.method protected sendNotEditContentUploadEndMessage(Ljava/lang/String;)V
    .locals 3

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 36
    const-string v1, "entityId"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string p1, "action"

    const-string v1, "delete"

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string p1, "onelibraryItemSyncEnd"

    const/4 v1, 0x0

    const-string v2, "ProcessOne"

    invoke-virtual {p0, v2, p1, v1, v0}, Lcom/metamoji/dm/impl/sync/library/item/contentsandmeta/DmNotEditLibraryItemContentsAndMetaDownloadIntentService;->sendBroadcast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method protected sendNotEditContentUploadRemovedMessage(Ljava/lang/String;)V
    .locals 3

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 45
    const-string v1, "entityId"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string p1, "action"

    const-string v1, "delete"

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string p1, "onelibraryItemSyncEnd"

    const/4 v1, 0x0

    const-string v2, "ProcessOne"

    invoke-virtual {p0, v2, p1, v1, v0}, Lcom/metamoji/dm/impl/sync/library/item/contentsandmeta/DmNotEditLibraryItemContentsAndMetaDownloadIntentService;->sendBroadcast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method protected sendNotEditContentUploadSkippedMessage(Ljava/lang/String;)V
    .locals 3

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 27
    const-string v1, "entityId"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const-string p1, "action"

    const-string v1, "delete"

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const-string p1, "onelibraryItemSyncSkipped"

    const/4 v1, 0x0

    const-string v2, "ProcessOne"

    invoke-virtual {p0, v2, p1, v1, v0}, Lcom/metamoji/dm/impl/sync/library/item/contentsandmeta/DmNotEditLibraryItemContentsAndMetaDownloadIntentService;->sendBroadcast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method protected sendNotEditContentUploadStartMessage(Ljava/lang/String;)V
    .locals 3

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 19
    const-string v1, "entityId"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    const-string p1, "action"

    const-string v1, "delete"

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    const-string p1, "onelibraryItemSyncStart"

    const/4 v1, 0x0

    const-string v2, "ProcessOne"

    invoke-virtual {p0, v2, p1, v1, v0}, Lcom/metamoji/dm/impl/sync/library/item/contentsandmeta/DmNotEditLibraryItemContentsAndMetaDownloadIntentService;->sendBroadcast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method protected sendOneContentUploadEndMessage(Ljava/lang/String;)V
    .locals 3

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 74
    const-string v1, "entityId"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string p1, "action"

    const-string v1, "upload"

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string p1, "onelibraryItemSyncEnd"

    const/4 v1, 0x0

    const-string v2, "ProcessOne"

    invoke-virtual {p0, v2, p1, v1, v0}, Lcom/metamoji/dm/impl/sync/library/item/contentsandmeta/DmNotEditLibraryItemContentsAndMetaDownloadIntentService;->sendBroadcast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method protected sendOneContentUploadSkippedMessage(Ljava/lang/String;)V
    .locals 3

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 64
    const-string v1, "entityId"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string p1, "action"

    const-string v1, "upload"

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string p1, "onelibraryItemSyncSkipped"

    const/4 v1, 0x0

    const-string v2, "ProcessOne"

    invoke-virtual {p0, v2, p1, v1, v0}, Lcom/metamoji/dm/impl/sync/library/item/contentsandmeta/DmNotEditLibraryItemContentsAndMetaDownloadIntentService;->sendBroadcast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method protected sendOneContentUploadStartMessage(Ljava/lang/String;)V
    .locals 3

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 54
    const-string v1, "entityId"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string p1, "action"

    const-string v1, "upload"

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string p1, "onelibraryItemSyncStart"

    const/4 v1, 0x0

    const-string v2, "ProcessOne"

    invoke-virtual {p0, v2, p1, v1, v0}, Lcom/metamoji/dm/impl/sync/library/item/contentsandmeta/DmNotEditLibraryItemContentsAndMetaDownloadIntentService;->sendBroadcast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method
