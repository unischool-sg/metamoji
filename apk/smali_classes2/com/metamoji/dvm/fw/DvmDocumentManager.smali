.class public Lcom/metamoji/dvm/fw/DvmDocumentManager;
.super Ljava/lang/Object;
.source "DvmDocumentManager.java"

# interfaces
.implements Lcom/metamoji/dvm/fw/IDvmDocumentManagerProtocol;
.implements Lcom/metamoji/dvm/fw/IDvmMemberManagerProtocol;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkUpdate()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public clearMembers()V
    .locals 0

    return-void
.end method

.method public clearNeedSyncFlag()V
    .locals 0

    return-void
.end method

.method public closeDocument(Lcom/metamoji/dvm/fw/IDvmDocumentEditor;Lcom/metamoji/dm/DmDocumentManagerCloseMode;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public cloudService()Lcom/metamoji/sd/cs/SdCloudService;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public contentsPathWithDocId(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public copyDocument(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;
    .locals 0
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

    const/4 p1, 0x0

    return-object p1
.end method

.method public copyDocument(Ljava/lang/String;Lcom/metamoji/dvm/fw/IDvmDocumentManagerProtocol;Ljava/util/List;Z)Lcom/metamoji/dvm/fw/result/DvmDMResultWithDocId;
    .locals 0
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

    const/4 p1, 0x0

    return-object p1
.end method

.method public copyDocumentAsNew(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;
    .locals 0
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

    const/4 p1, 0x0

    return-object p1
.end method

.method public copyDocumentAsNew(Ljava/lang/String;Ljava/util/ArrayList;Lcom/metamoji/dvm/fw/IDvmDocumentManagerProtocol;)Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;
    .locals 0
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

    const/4 p1, 0x0

    return-object p1
.end method

.method public copyDocumentAsNew(Ljava/lang/String;Z)Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public copyDocumentFromSheetTemplate(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;
    .locals 0
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

    const/4 p1, 0x0

    return-object p1
.end method

.method public copyFolderFrom(Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;
    .locals 0
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

    const/4 p1, 0x0

    return-object p1
.end method

.method public createFolder(Lcom/metamoji/dvm/fw/bean/DvmFolderBean;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public createTag(Lcom/metamoji/dvm/fw/bean/DvmTagBean;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public deleteDocument(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public deleteDocumentInTrash(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public deleteFolder(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public deleteTags(Ljava/util/List;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public doInitMetaData(Lcom/metamoji/dvm/fw/IDvmDocumentEditor;)V
    .locals 0

    return-void
.end method

.method public editCopiedDocument(Ljava/lang/String;)Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public editDocument(Ljava/lang/String;Z)Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public exportDocumentBinaryFromStorage(Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public exportDocumentBinaryFromStorage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public generateDocumentId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAbsPathMatchTags(Ljava/util/List;)Ljava/util/List;
    .locals 0
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

    const/4 p1, 0x0

    return-object p1
.end method

.method public getChangedShareNoteInfoListInJsonString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDocumentContents(Ljava/lang/String;Lcom/metamoji/sd/cs/SdRequestCanceller;)Lcom/metamoji/dvm/fw/result/DvmDMResultWithOfflineFlag;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getDocumentCount(Ljava/util/List;Lcom/metamoji/dvm/DvmDocumentSearchConditions;)J
    .locals 0
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

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public getDocumentCountInFolder(Ljava/util/List;Ljava/util/List;)J
    .locals 0
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

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public getDocumentIDs(Ljava/util/List;Lcom/metamoji/dvm/DvmDocumentSearchConditions;)Ljava/util/List;
    .locals 0
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

    const/4 p1, 0x0

    return-object p1
.end method

.method public getDocumentIDs(Ljava/util/List;Lcom/metamoji/dvm/DvmDocumentSearchConditions;JJ)Ljava/util/List;
    .locals 0
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

    const/4 p1, 0x0

    return-object p1
.end method

.method public getDocumentIDsFromRoom(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 0
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

    const/4 p1, 0x0

    return-object p1
.end method

.method public getDocumentIDsInFolder(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 0
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

    const/4 p1, 0x0

    return-object p1
.end method

.method public getDocumentIconImageFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getDocumentIdFromEntityId(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getDocumentInfo(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getDocumentSearchData(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getDocumentsInfo(Ljava/util/List;)Ljava/util/List;
    .locals 0
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

    const/4 p1, 0x0

    return-object p1
.end method

.method public getDriveId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRoomId(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getSubFolderList(Ljava/lang/String;)Ljava/util/List;
    .locals 0
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

    const/4 p1, 0x0

    return-object p1
.end method

.method public getTag(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmTagBean;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getTagList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/dvm/fw/bean/DvmTagBean;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTagNameListForDocument(Ljava/lang/String;)Ljava/util/List;
    .locals 0
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

    const/4 p1, 0x0

    return-object p1
.end method

.method public getTagsForRenameAtFolder(Ljava/lang/String;)Ljava/util/List;
    .locals 0
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

    const/4 p1, 0x0

    return-object p1
.end method

.method public getTagsInFolder(Ljava/lang/String;)Ljava/util/List;
    .locals 0
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

    const/4 p1, 0x0

    return-object p1
.end method

.method public hasChangedContents(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public hasCloudService()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasTrash()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public importDocumentBinaryToStorage(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)Lcom/metamoji/dvm/fw/result/DvmDMResultWithDocId;
    .locals 0
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

    const/4 p1, 0x0

    return-object p1
.end method

.method public importDocumentBinaryToStorage(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLjava/util/Map;)Lcom/metamoji/dvm/fw/result/DvmDMResultWithDocId;
    .locals 0
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

    const/4 p1, 0x0

    return-object p1
.end method

.method public isCloudServiceSyncNeeded()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isCloudServiceUnderMaintenance()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDisplayedMultiFolders(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isInTrash(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isLatestRevision(Ljava/lang/String;Lcom/metamoji/sd/cs/SdRequestCanceller;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isNewOpenDocument(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isThumbnailMissingForDocument(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public lockDocument(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public makeDuplicatedTitleFrom(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public memberList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public memberMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public migration()Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public moveDocument(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;
    .locals 0
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

    const/4 p1, 0x0

    return-object p1
.end method

.method public moveDocumentToTrash(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public moveDocumentsToTrash(Ljava/util/List;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public moveFolderFrom(Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;
    .locals 0
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

    const/4 p1, 0x0

    return-object p1
.end method

.method public needSyncFlag(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public newNoteTemplateBasedOnNoteWithDocId(Ljava/lang/String;Lcom/metamoji/nt/NtNoteTemplateSettings;)Lcom/metamoji/dvm/fw/result/DvmDMResultWithDocId;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public nonMemberNameMapCache()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public normalizedMemberNameMapCache()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public openEditorForQuickEdit(Ljava/lang/String;)Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public renameFolder(Ljava/util/List;Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;
    .locals 0
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

    const/4 p1, 0x0

    return-object p1
.end method

.method public renameFolder(Ljava/util/List;Ljava/lang/String;Z)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;
    .locals 0
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

    const/4 p1, 0x0

    return-object p1
.end method

.method public renameTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public reorderFolderIn(Ljava/util/List;Ljava/util/List;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;
    .locals 0
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

    const/4 p1, 0x0

    return-object p1
.end method

.method public reorderTag(Ljava/util/List;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public restoreDocumentFromTrash(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public restoreDocumentsFromTrash(Ljava/util/List;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public saveDocumentBinaryFileToStorage(Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public saveDocumentThumbnailWithData([BLjava/lang/String;Ljava/lang/String;Ljava/util/Date;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setDisplayPriorityToDocuments(Ljava/util/List;Z)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public setTagToDocument(Ljava/lang/String;Ljava/util/List;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;
    .locals 0
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

    const/4 p1, 0x0

    return-object p1
.end method

.method public thumbnailPathWithDocId(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public turnOffEditFlag(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public turnOnEditFlag(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public unlockDocument(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public updateDocumentTitle(Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public updateNonMemberNameMapCache(Ljava/util/List;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public updateNormalizedMemberNameMapCache()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public updateTag(Lcom/metamoji/dvm/fw/bean/DvmTagBean;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
