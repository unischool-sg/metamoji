.class public abstract Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmNotEditLibraryContentsAndMetaUploadIntentService;
.super Lcom/metamoji/dm/impl/sync/common/DmNotEditContentsUploadIntentService;
.source "DmNotEditLibraryContentsAndMetaUploadIntentService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/metamoji/dm/impl/sync/common/DmNotEditContentsUploadIntentService;-><init>()V

    return-void
.end method


# virtual methods
.method protected isSyncTargetClient(Ljava/lang/String;)Z
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmNotEditLibraryContentsAndMetaUploadIntentService;->getContentsProxy()Lcom/metamoji/dm/impl/sync/common/IDmSyncClientContentsCproxy;

    move-result-object v0

    check-cast v0, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;

    invoke-virtual {v0, p1}, Lcom/metamoji/dm/impl/sync/library/common/contentsandmeta/DmSyncClientLibraryContentsAndMetaProxy;->isTrialClientContents(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
