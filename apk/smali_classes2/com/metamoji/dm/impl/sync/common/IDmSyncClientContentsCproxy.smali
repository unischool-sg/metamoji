.class public interface abstract Lcom/metamoji/dm/impl/sync/common/IDmSyncClientContentsCproxy;
.super Ljava/lang/Object;
.source "IDmSyncClientContentsCproxy.java"


# virtual methods
.method public abstract containsDeleteSyncInfo(Ljava/lang/String;)Z
.end method

.method public abstract containsNewSyncInfo(Ljava/lang/String;)Z
.end method

.method public abstract containsUpdateSyncInfo(Ljava/lang/String;)Z
.end method

.method public abstract deleteDuplicatedDocument(Ljava/lang/String;)Z
.end method

.method public abstract deleteSyncStatus(Ljava/lang/String;)V
.end method

.method public abstract disconnectAndResetAllSyncInfo()Z
.end method

.method public abstract disconnectFromServer(Ljava/lang/String;)Z
.end method

.method public abstract duplicateConflictedDocument(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract executeTrans(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract generateClientId()Ljava/lang/String;
.end method

.method public abstract getAllClientDeadPropertiesDictWityServerIdKey()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getAllClientSyncList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getClientIdFromServerId(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getClientIdFromServerId(Ljava/lang/String;Z)Ljava/lang/String;
.end method

.method public abstract getContentsFilePathFromStorage(Ljava/lang/String;)Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getDeleteSyncClientIdFromServerId(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getDeleteSyncList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDeleteSyncServerId(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getDeletedTime(Ljava/lang/String;)D
.end method

.method public abstract getEntitySyncStatus(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getExportFolderPath(Ljava/lang/String;)Ljava/io/File;
.end method

.method public abstract getLastSyncedRevisionFromClient(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getLastSyncedRevisionFromServerDeadProperties(Ljava/util/Map;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract getLastupdateTime(Ljava/lang/String;)D
.end method

.method public abstract getNewSyncList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNoEditList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getServerId(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getSyncInfoMetaData(Ljava/lang/String;)Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSyncInfoMetaData(Ljava/lang/String;Z)Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTemporaryFolderPath(Ljava/lang/String;)Ljava/io/File;
.end method

.method public abstract getUpdateSyncList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasContentsData(Ljava/lang/String;)Z
.end method

.method public abstract initSyncStatus()Z
.end method

.method public abstract isDeleteSyncServerId(Ljava/lang/String;)Z
.end method

.method public abstract putDeleteSyncInfo(Ljava/lang/String;Ljava/util/HashMap;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract putNewSyncInfo(Ljava/lang/String;)Z
.end method

.method public abstract putSyncInfoMetaData(Ljava/lang/String;Ljava/util/Map;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract putUpdateSyncInfo(Ljava/lang/String;Ljava/util/HashMap;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract removeClientResource(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract removeDeleteSyncInfo(Ljava/lang/String;)Z
.end method

.method public abstract removeNewSyncInfo(Ljava/lang/String;)Z
.end method

.method public abstract removeUpdateSyncInfo(Ljava/lang/String;)Z
.end method

.method public abstract saveTemporaryToStorage(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setEndToDeleteSyncStatus(Ljava/lang/String;)V
.end method

.method public abstract setEndToDownloadDeleteSyncStatus(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setEndToNewSyncStatus(Ljava/lang/String;)V
.end method

.method public abstract setEndToNotModifiedStatus(Ljava/lang/String;)V
.end method

.method public abstract setEndToServerDownloadStatus(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setEndToUpdateSyncStatus(Ljava/lang/String;)V
.end method

.method public abstract setLastSyncedRevision(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract setServerId(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract writeContentsFilePathToTemporary(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
.end method
