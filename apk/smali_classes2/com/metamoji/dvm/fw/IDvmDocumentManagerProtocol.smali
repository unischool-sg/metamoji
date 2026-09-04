.class public interface abstract Lcom/metamoji/dvm/fw/IDvmDocumentManagerProtocol;
.super Ljava/lang/Object;
.source "IDvmDocumentManagerProtocol.java"


# virtual methods
.method public abstract checkUpdate()Z
.end method

.method public abstract clearNeedSyncFlag()V
.end method

.method public abstract closeDocument(Lcom/metamoji/dvm/fw/IDvmDocumentEditor;Lcom/metamoji/dm/DmDocumentManagerCloseMode;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;
.end method

.method public abstract contentsPathWithDocId(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract copyDocument(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;"
        }
    .end annotation
.end method

.method public abstract copyDocument(Ljava/lang/String;Lcom/metamoji/dvm/fw/IDvmDocumentManagerProtocol;Ljava/util/List;Z)Lcom/metamoji/dvm/fw/result/DvmDMResultWithDocId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/metamoji/dvm/fw/IDvmDocumentManagerProtocol;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;Z)",
            "Lcom/metamoji/dvm/fw/result/DvmDMResultWithDocId;"
        }
    .end annotation
.end method

.method public abstract copyDocumentAsNew(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;"
        }
    .end annotation
.end method

.method public abstract copyDocumentAsNew(Ljava/lang/String;Ljava/util/ArrayList;Lcom/metamoji/dvm/fw/IDvmDocumentManagerProtocol;)Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/metamoji/dvm/fw/IDvmDocumentManagerProtocol;",
            ")",
            "Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;"
        }
    .end annotation
.end method

.method public abstract copyDocumentAsNew(Ljava/lang/String;Z)Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;
.end method

.method public abstract copyDocumentFromSheetTemplate(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;"
        }
    .end annotation
.end method

.method public abstract copyFolderFrom(Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;Z)",
            "Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;"
        }
    .end annotation
.end method

.method public abstract createFolder(Lcom/metamoji/dvm/fw/bean/DvmFolderBean;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;
.end method

.method public abstract createTag(Lcom/metamoji/dvm/fw/bean/DvmTagBean;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;
.end method

.method public abstract deleteDocument(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;
.end method

.method public abstract deleteDocumentInTrash(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;
.end method

.method public abstract deleteFolder(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;
.end method

.method public abstract deleteTags(Ljava/util/List;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;"
        }
    .end annotation
.end method

.method public abstract doInitMetaData(Lcom/metamoji/dvm/fw/IDvmDocumentEditor;)V
.end method

.method public abstract editCopiedDocument(Ljava/lang/String;)Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;
.end method

.method public abstract editDocument(Ljava/lang/String;Z)Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;
.end method

.method public abstract exportDocumentBinaryFromStorage(Ljava/lang/String;Landroid/net/Uri;)Z
.end method

.method public abstract exportDocumentBinaryFromStorage(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract generateDocumentId()Ljava/lang/String;
.end method

.method public abstract getAbsPathMatchTags(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getChangedShareNoteInfoListInJsonString()Ljava/lang/String;
.end method

.method public abstract getDocumentContents(Ljava/lang/String;Lcom/metamoji/sd/cs/SdRequestCanceller;)Lcom/metamoji/dvm/fw/result/DvmDMResultWithOfflineFlag;
.end method

.method public abstract getDocumentCount(Ljava/util/List;Lcom/metamoji/dvm/DvmDocumentSearchConditions;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/metamoji/dvm/DvmDocumentSearchConditions;",
            ")J"
        }
    .end annotation
.end method

.method public abstract getDocumentCountInFolder(Ljava/util/List;Ljava/util/List;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation
.end method

.method public abstract getDocumentIDs(Ljava/util/List;Lcom/metamoji/dvm/DvmDocumentSearchConditions;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/metamoji/dvm/DvmDocumentSearchConditions;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDocumentIDs(Ljava/util/List;Lcom/metamoji/dvm/DvmDocumentSearchConditions;JJ)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/metamoji/dvm/DvmDocumentSearchConditions;",
            "JJ)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDocumentIDsFromRoom(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDocumentIDsInFolder(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDocumentIconImageFile(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getDocumentIdFromEntityId(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getDocumentInfo(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;
.end method

.method public abstract getDocumentSearchData(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getDocumentsInfo(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRoomId(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getSubFolderList(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/metamoji/dvm/fw/bean/DvmFolderBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTag(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmTagBean;
.end method

.method public abstract getTagList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/dvm/fw/bean/DvmTagBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTagNameListForDocument(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTagsForRenameAtFolder(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/metamoji/dvm/fw/bean/DvmTagBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTagsInFolder(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/metamoji/dvm/fw/bean/DvmTagBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasChangedContents(Z)Z
.end method

.method public abstract hasTrash()Z
.end method

.method public abstract importDocumentBinaryToStorage(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)Lcom/metamoji/dvm/fw/result/DvmDMResultWithDocId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;Z)",
            "Lcom/metamoji/dvm/fw/result/DvmDMResultWithDocId;"
        }
    .end annotation
.end method

.method public abstract importDocumentBinaryToStorage(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLjava/util/Map;)Lcom/metamoji/dvm/fw/result/DvmDMResultWithDocId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/metamoji/dvm/fw/result/DvmDMResultWithDocId;"
        }
    .end annotation
.end method

.method public abstract isDisplayedMultiFolders(Ljava/lang/String;)Z
.end method

.method public abstract isInTrash(Ljava/lang/String;)Z
.end method

.method public abstract isLatestRevision(Ljava/lang/String;Lcom/metamoji/sd/cs/SdRequestCanceller;)Z
.end method

.method public abstract isNewOpenDocument(Ljava/lang/String;)Z
.end method

.method public abstract isThumbnailMissingForDocument(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract lockDocument(Ljava/lang/String;)Z
.end method

.method public abstract makeDuplicatedTitleFrom(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract migration()Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;
.end method

.method public abstract moveDocument(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;"
        }
    .end annotation
.end method

.method public abstract moveDocumentToTrash(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;
.end method

.method public abstract moveDocumentsToTrash(Ljava/util/List;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;"
        }
    .end annotation
.end method

.method public abstract moveFolderFrom(Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;Z)",
            "Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;"
        }
    .end annotation
.end method

.method public abstract needSyncFlag(Z)Z
.end method

.method public abstract newNoteTemplateBasedOnNoteWithDocId(Ljava/lang/String;Lcom/metamoji/nt/NtNoteTemplateSettings;)Lcom/metamoji/dvm/fw/result/DvmDMResultWithDocId;
.end method

.method public abstract openEditorForQuickEdit(Ljava/lang/String;)Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;
.end method

.method public abstract renameFolder(Ljava/util/List;Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;"
        }
    .end annotation
.end method

.method public abstract renameFolder(Ljava/util/List;Ljava/lang/String;Z)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;"
        }
    .end annotation
.end method

.method public abstract renameTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;
.end method

.method public abstract reorderFolderIn(Ljava/util/List;Ljava/util/List;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;"
        }
    .end annotation
.end method

.method public abstract reorderTag(Ljava/util/List;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;"
        }
    .end annotation
.end method

.method public abstract restoreDocumentFromTrash(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;
.end method

.method public abstract restoreDocumentsFromTrash(Ljava/util/List;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;"
        }
    .end annotation
.end method

.method public abstract saveDocumentBinaryFileToStorage(Ljava/io/File;Ljava/lang/String;)V
.end method

.method public abstract saveDocumentThumbnailWithData([BLjava/lang/String;Ljava/lang/String;Ljava/util/Date;)Z
.end method

.method public abstract setDisplayPriorityToDocuments(Ljava/util/List;Z)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;"
        }
    .end annotation
.end method

.method public abstract setTagToDocument(Ljava/lang/String;Ljava/util/List;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;"
        }
    .end annotation
.end method

.method public abstract thumbnailPathWithDocId(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;
.end method

.method public abstract turnOffEditFlag(Ljava/lang/String;)V
.end method

.method public abstract turnOnEditFlag(Ljava/lang/String;Z)Ljava/lang/String;
.end method

.method public abstract unlockDocument(Ljava/lang/String;)V
.end method

.method public abstract updateDocumentTitle(Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;
.end method

.method public abstract updateTag(Lcom/metamoji/dvm/fw/bean/DvmTagBean;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;
.end method
