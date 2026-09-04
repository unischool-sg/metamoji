.class public Lcom/metamoji/dm/impl/sync/library/item/indexxml/DmNotEditLibraryItemIndexXMLDownloadIntentService;
.super Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmNotEditLibraryIndexXMLUploadIntentService;
.source "DmNotEditLibraryItemIndexXMLDownloadIntentService.java"


# instance fields
.field _proxy:Lcom/metamoji/dm/impl/sync/library/item/indexxml/DmSyncClientItemIndexXMLProxy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Lcom/metamoji/dm/impl/sync/library/common/indexxml/DmNotEditLibraryIndexXMLUploadIntentService;-><init>()V

    .line 13
    new-instance v0, Lcom/metamoji/dm/impl/sync/library/item/indexxml/DmSyncClientItemIndexXMLProxy;

    invoke-direct {v0}, Lcom/metamoji/dm/impl/sync/library/item/indexxml/DmSyncClientItemIndexXMLProxy;-><init>()V

    iput-object v0, p0, Lcom/metamoji/dm/impl/sync/library/item/indexxml/DmNotEditLibraryItemIndexXMLDownloadIntentService;->_proxy:Lcom/metamoji/dm/impl/sync/library/item/indexxml/DmSyncClientItemIndexXMLProxy;

    return-void
.end method


# virtual methods
.method protected getContentsProxy()Lcom/metamoji/dm/impl/sync/common/IDmSyncClientContentsCproxy;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/metamoji/dm/impl/sync/library/item/indexxml/DmNotEditLibraryItemIndexXMLDownloadIntentService;->_proxy:Lcom/metamoji/dm/impl/sync/library/item/indexxml/DmSyncClientItemIndexXMLProxy;

    return-object v0
.end method

.method protected sendNotEditContentUploadEndMessage(Ljava/lang/String;)V
    .locals 3

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 39
    const-string v1, "entityId"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string p1, "action"

    const-string v1, "delete"

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string p1, "onelibraryItemSyncEnd"

    const/4 v1, 0x0

    const-string v2, "ProcessOne"

    invoke-virtual {p0, v2, p1, v1, v0}, Lcom/metamoji/dm/impl/sync/library/item/indexxml/DmNotEditLibraryItemIndexXMLDownloadIntentService;->sendBroadcast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method protected sendNotEditContentUploadRemovedMessage(Ljava/lang/String;)V
    .locals 3

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 50
    const-string v1, "entityId"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string p1, "action"

    const-string v1, "delete"

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string p1, "onelibraryItemSyncEnd"

    const/4 v1, 0x0

    const-string v2, "ProcessOne"

    invoke-virtual {p0, v2, p1, v1, v0}, Lcom/metamoji/dm/impl/sync/library/item/indexxml/DmNotEditLibraryItemIndexXMLDownloadIntentService;->sendBroadcast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method protected sendNotEditContentUploadSkippedMessage(Ljava/lang/String;)V
    .locals 3

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 28
    const-string v1, "entityId"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const-string p1, "action"

    const-string v1, "delete"

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    const-string p1, "onelibraryItemSyncSkipped"

    const/4 v1, 0x0

    const-string v2, "ProcessOne"

    invoke-virtual {p0, v2, p1, v1, v0}, Lcom/metamoji/dm/impl/sync/library/item/indexxml/DmNotEditLibraryItemIndexXMLDownloadIntentService;->sendBroadcast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method protected sendNotEditContentUploadStartMessage(Ljava/lang/String;)V
    .locals 3

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 18
    const-string v1, "entityId"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    const-string p1, "action"

    const-string v1, "delete"

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    const-string p1, "onelibraryItemSyncStart"

    const/4 v1, 0x0

    const-string v2, "ProcessOne"

    invoke-virtual {p0, v2, p1, v1, v0}, Lcom/metamoji/dm/impl/sync/library/item/indexxml/DmNotEditLibraryItemIndexXMLDownloadIntentService;->sendBroadcast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method protected sendOneContentUploadEndMessage(Ljava/lang/String;)V
    .locals 3

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 84
    const-string v1, "entityId"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string p1, "action"

    const-string v1, "upload"

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string p1, "onelibraryItemSyncEnd"

    const/4 v1, 0x0

    const-string v2, "ProcessOne"

    invoke-virtual {p0, v2, p1, v1, v0}, Lcom/metamoji/dm/impl/sync/library/item/indexxml/DmNotEditLibraryItemIndexXMLDownloadIntentService;->sendBroadcast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method protected sendOneContentUploadSkippedMessage(Ljava/lang/String;)V
    .locals 3

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 71
    const-string v1, "entityId"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string p1, "action"

    const-string v1, "upload"

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string p1, "onelibraryItemSyncSkipped"

    const/4 v1, 0x0

    const-string v2, "ProcessOne"

    invoke-virtual {p0, v2, p1, v1, v0}, Lcom/metamoji/dm/impl/sync/library/item/indexxml/DmNotEditLibraryItemIndexXMLDownloadIntentService;->sendBroadcast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method protected sendOneContentUploadStartMessage(Ljava/lang/String;)V
    .locals 3

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 60
    const-string v1, "entityId"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string p1, "action"

    const-string v1, "upload"

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string p1, "onelibraryItemSyncStart"

    const/4 v1, 0x0

    const-string v2, "ProcessOne"

    invoke-virtual {p0, v2, p1, v1, v0}, Lcom/metamoji/dm/impl/sync/library/item/indexxml/DmNotEditLibraryItemIndexXMLDownloadIntentService;->sendBroadcast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method
