.class public Lcom/metamoji/media/voice/controller/VcRecordingsManager;
.super Ljava/lang/Object;
.source "VcRecordingsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/media/voice/controller/VcRecordingsManager$IVcDownloadCompletionAction;,
        Lcom/metamoji/media/voice/controller/VcRecordingsManager$IVcImportFromServerCompletionAction;,
        Lcom/metamoji/media/voice/controller/VcRecordingsManager$VC_DOWNLOAD_STATUS;,
        Lcom/metamoji/media/voice/controller/VcRecordingsManager$IVcUploadTitlesCompletionAction;,
        Lcom/metamoji/media/voice/controller/VcRecordingsManager$IVcUploadCompletionAction;,
        Lcom/metamoji/media/voice/controller/VcRecordingsManager$VcDownloadCompletionActionWithStatus;
    }
.end annotation


# static fields
.field static final USE_DROPBOX_SERVER:I = 0x1

.field static final USE_GOOGLE_DRIVE_SERVER:I = 0x2

.field static final USE_MEDIA_SERVER:I = 0x0

.field static final USE_SERVER_NONE:I = -0x1

.field public static VC_DOWNLOAD_CANCELED:I = -0x1

.field public static VC_DOWNLOAD_FAILED:I = -0x2

.field public static VC_DOWNLOAD_SUCCESS:I


# instance fields
.field _mapModel:Lcom/metamoji/df/model/IModel;

.field _model:Lcom/metamoji/df/model/IModel;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/df/model/IModel;Lcom/metamoji/nt/NtEditorWindowController$EditOperation;)V
    .locals 1

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->_model:Lcom/metamoji/df/model/IModel;

    .line 113
    const-string p2, "recordings"

    invoke-interface {p1, p2}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->_mapModel:Lcom/metamoji/df/model/IModel;

    if-nez p1, :cond_0

    .line 115
    iget-object p1, p0, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->_model:Lcom/metamoji/df/model/IModel;

    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->_mapModel:Lcom/metamoji/df/model/IModel;

    const/4 v0, 0x1

    .line 116
    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->setVersion(I)V

    .line 117
    iget-object p1, p0, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->_model:Lcom/metamoji/df/model/IModel;

    iget-object v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->_mapModel:Lcom/metamoji/df/model/IModel;

    invoke-interface {p1, p2, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->convertUnknownProperties()V

    return-void
.end method

.method public static create(Lcom/metamoji/df/model/IModel;Lcom/metamoji/nt/NtEditorWindowController$EditOperation;)Lcom/metamoji/media/voice/controller/VcRecordingsManager;
    .locals 1

    .line 102
    invoke-static {}, Lcom/metamoji/nt/NtDocument;->isAzami()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    const-string v0, "recordings"

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 108
    :cond_0
    new-instance v0, Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;-><init>(Lcom/metamoji/df/model/IModel;Lcom/metamoji/nt/NtEditorWindowController$EditOperation;)V

    return-object v0
.end method

.method static deleteCacheFile(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    .line 2188
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2189
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 p1, 0x1

    if-nez p0, :cond_0

    return p1

    .line 2192
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p0

    .line 2194
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "failed to delete cache file. message:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method static deleteRecordingCacheFile(Lcom/metamoji/df/model/IModel;)V
    .locals 1

    .line 2147
    const-string v0, "$fileId"

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2152
    :cond_0
    const-string v0, "$cacheFilename"

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    :goto_0
    return-void

    .line 2157
    :cond_1
    invoke-static {}, Lcom/metamoji/media/voice/VcUtil;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 2158
    invoke-static {v0, p0}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->deleteCacheFile(Ljava/io/File;Ljava/lang/String;)Z

    return-void
.end method

.method public static deleteRecordingsForDocumentEditor(Lcom/metamoji/dvm/fw/IDvmDocumentEditor;Z)V
    .locals 8

    if-nez p0, :cond_0

    goto/16 :goto_3

    .line 2087
    :cond_0
    invoke-interface {p0}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    .line 2088
    invoke-interface {v0}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 2089
    const-string v1, "recordings"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    if-nez v1, :cond_1

    goto/16 :goto_3

    .line 2093
    :cond_1
    new-instance v2, Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    sget-object v3, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->Edit:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    invoke-direct {v2, v0, v3}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;-><init>(Lcom/metamoji/df/model/IModel;Lcom/metamoji/nt/NtEditorWindowController$EditOperation;)V

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    .line 2100
    :try_start_0
    invoke-static {}, Lcom/metamoji/ctold/CtFactory;->instance()Lcom/metamoji/ctold/CtFactory;

    move-result-object v4

    invoke-interface {p0}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->getDocumentID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, v0, p0}, Lcom/metamoji/ctold/CtFactory;->createDocTagManager(Lcom/metamoji/df/model/IModel;Ljava/lang/String;)Lcom/metamoji/ctold/CtDocTagManager;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2101
    :try_start_1
    invoke-static {p0}, Lcom/metamoji/media/voice/VcUtil;->getVoiceTagInstances(Lcom/metamoji/ctold/CtTagManager;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_2
    move-object p0, v3

    move-object v0, p0

    .line 2105
    :goto_0
    invoke-interface {v1}, Lcom/metamoji/df/model/IModel;->getAllPropertyNames()Ljava/util/List;

    move-result-object v4

    .line 2106
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2107
    invoke-static {v5}, Lcom/metamoji/df/model/ModelProperty;->isPreloadProperty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_1

    .line 2111
    :cond_4
    invoke-interface {v1, v5}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v6

    if-nez v6, :cond_5

    goto :goto_1

    .line 2120
    :cond_5
    invoke-static {v6}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->deleteRecordingCacheFile(Lcom/metamoji/df/model/IModel;)V

    if-eqz p1, :cond_3

    if-eqz p0, :cond_6

    if-eqz v0, :cond_6

    .line 2124
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_6

    .line 2125
    invoke-static {v5, v0}, Lcom/metamoji/media/voice/VcUtil;->getTagInstances(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 2126
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/metamoji/ctold/tag/CtTagInstance;

    .line 2127
    invoke-interface {p0, v7, v3}, Lcom/metamoji/ctold/CtDocTagManager;->removeTagInstance(Lcom/metamoji/ctold/tag/CtTagInstance;Lcom/metamoji/df/model/IModel;)V

    goto :goto_2

    .line 2132
    :cond_6
    invoke-virtual {v2, v5}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->removeRecording(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_7
    if-eqz p0, :cond_8

    .line 2137
    invoke-interface {p0}, Lcom/metamoji/ctold/CtDocTagManager;->close()V

    :cond_8
    :goto_3
    return-void

    :catchall_1
    move-exception p1

    move-object v3, p0

    :goto_4
    if-eqz v3, :cond_9

    invoke-interface {v3}, Lcom/metamoji/ctold/CtDocTagManager;->close()V

    .line 2139
    :cond_9
    throw p1
.end method

.method public static deleteRecordingsForDocumentId(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    xor-int/lit8 v0, p2, 0x1

    .line 2058
    :try_start_0
    invoke-static {p0, p1, v0}, Lcom/metamoji/dvm/DvmUtil;->editDocument(Ljava/lang/String;Ljava/lang/String;Z)Lcom/metamoji/dvm/fw/IDvmDocumentEditor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    return-void

    .line 2067
    :cond_0
    invoke-static {p0, p2}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->deleteRecordingsForDocumentEditor(Lcom/metamoji/dvm/fw/IDvmDocumentEditor;Z)V

    .line 2069
    sget-object p1, Lcom/metamoji/dm/DmDocumentManagerCloseMode;->Discard:Lcom/metamoji/dm/DmDocumentManagerCloseMode;

    if-eqz p2, :cond_1

    .line 2071
    sget-object p1, Lcom/metamoji/dm/DmDocumentManagerCloseMode;->Save:Lcom/metamoji/dm/DmDocumentManagerCloseMode;

    .line 2074
    :cond_1
    invoke-static {p0, p1}, Lcom/metamoji/dvm/DvmUtil;->closeDocument(Lcom/metamoji/dvm/fw/IDvmDocumentEditor;Lcom/metamoji/dm/DmDocumentManagerCloseMode;)Z

    return-void

    :catch_0
    move-exception p0

    .line 2060
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "failed to open document. message:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    return-void
.end method

.method public static downloadDownloadableRecordings(Lcom/metamoji/df/model/IModel;)Z
    .locals 3

    .line 1767
    new-instance v0, Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    sget-object v1, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->Edit:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    invoke-direct {v0, p0, v1}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;-><init>(Lcom/metamoji/df/model/IModel;Lcom/metamoji/nt/NtEditorWindowController$EditOperation;)V

    .line 1770
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 1771
    invoke-virtual {v0, p0}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->downloadableTickets(Ljava/util/HashSet;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 1775
    :cond_0
    invoke-direct {v0, p0}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->downloadTickets(Ljava/util/HashSet;)Z

    move-result p0

    if-nez p0, :cond_1

    return v2

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private downloadTickets(Ljava/util/HashSet;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1783
    new-instance v0, Lcom/metamoji/media/voice/controller/VcRecordingsManager$VC_DOWNLOAD_STATUS;

    sget v1, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->VC_DOWNLOAD_SUCCESS:I

    invoke-direct {v0, v1}, Lcom/metamoji/media/voice/controller/VcRecordingsManager$VC_DOWNLOAD_STATUS;-><init>(I)V

    .line 1785
    invoke-static {}, Lcom/metamoji/media/voice/VcUtil;->getCacheDir()Ljava/io/File;

    move-result-object v1

    .line 1787
    iget-object v2, p0, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->_mapModel:Lcom/metamoji/df/model/IModel;

    invoke-interface {v2}, Lcom/metamoji/df/model/IModel;->getAllPropertyNames()Ljava/util/List;

    move-result-object v2

    .line 1789
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1790
    invoke-static {v3}, Lcom/metamoji/df/model/ModelProperty;->isPreloadProperty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 1794
    :cond_0
    invoke-virtual {p1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 1798
    :cond_1
    invoke-virtual {p0, v3}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getCacheFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    .line 1801
    const-string v4, ".m4a"

    invoke-static {v3, v4}, Lcom/metamoji/media/MediaUtil;->createCacheFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_0

    .line 1805
    :cond_2
    invoke-virtual {p0, v3, v4}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->setCacheFilename(Ljava/lang/String;Ljava/lang/String;)V

    .line 1810
    :cond_3
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1811
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_0

    .line 1816
    :cond_4
    invoke-virtual {p0, v3}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->isNewMediaServerRecord(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1818
    invoke-virtual {p0, v3}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getMediaId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 1820
    :cond_5
    invoke-virtual {p0, v3}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getFileId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    if-nez v3, :cond_6

    goto :goto_0

    .line 1825
    :cond_6
    invoke-virtual {p0, v3, v5, v4, v0}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->downloadRecording(Ljava/lang/String;ZLjava/lang/String;Lcom/metamoji/media/voice/controller/VcRecordingsManager$VC_DOWNLOAD_STATUS;)V

    goto :goto_0

    .line 1834
    :cond_7
    invoke-static {}, Lcom/metamoji/media/MediaUtil;->waitOperationQueue()V

    const/4 p1, 0x1

    return p1
.end method

.method public static durationTicketDatas(Ljava/util/List;)D
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)D"
        }
    .end annotation

    .line 835
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v0, 0x0

    move-wide v2, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 836
    const-string v5, "$duration"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    .line 839
    :cond_0
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 840
    invoke-static {v4, v0, v1}, Lcom/metamoji/cm/CmUtils;->toDouble(Ljava/lang/Object;D)D

    move-result-wide v4

    add-double/2addr v2, v4

    goto :goto_0

    :cond_1
    return-wide v2
.end method

.method private getIndex(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1167
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1
.end method

.method public static hasRecordings(Lcom/metamoji/df/model/IModel;)Z
    .locals 2

    .line 2167
    new-instance v0, Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    sget-object v1, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->Edit:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    invoke-direct {v0, p0, v1}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;-><init>(Lcom/metamoji/df/model/IModel;Lcom/metamoji/nt/NtEditorWindowController$EditOperation;)V

    .line 2168
    invoke-virtual {v0}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->hasTicket()Z

    move-result v0

    .line 2169
    invoke-static {p0}, Lcom/metamoji/un/sound/UnSoundUtil;->hasSoundUnit(Lcom/metamoji/df/model/IModel;)Z

    move-result p0

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static uploadTitlesForNoteTitle(Ljava/lang/String;Lcom/metamoji/dvm/fw/IDvmDocumentEditor;)Z
    .locals 2

    .line 1991
    invoke-interface {p1}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p1

    .line 1992
    invoke-interface {p1}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    .line 1993
    new-instance v0, Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    sget-object v1, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->Edit:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    invoke-direct {v0, p1, v1}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;-><init>(Lcom/metamoji/df/model/IModel;Lcom/metamoji/nt/NtEditorWindowController$EditOperation;)V

    .line 1995
    invoke-virtual {v0, p0}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->uploadTitlesForNoteTitle(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public addIndex(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1085
    const-string v0, "$id"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1087
    invoke-virtual {p0, p1}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getIndexes(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1090
    const-string p2, "Voice: ticket %s \u306b\u30a4\u30f3\u30c7\u30c3\u30af\u30b9\u306f\u4ed8\u4e0e\u3055\u308c\u307e\u305b\u3093\u3067\u3057\u305f\u3002"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 1093
    :cond_0
    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1094
    invoke-virtual {p0, p1, v1}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->setIndexes(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public cloneModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;
    .locals 1

    .line 854
    iget-object v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->_mapModel:Lcom/metamoji/df/model/IModel;

    invoke-interface {v0, p1}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    .line 855
    invoke-static {p1}, Lcom/metamoji/df/model/ModelUtils;->cloneModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    return-object p1
.end method

.method public cloneModel(Ljava/lang/String;Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 868
    iget-object v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->_mapModel:Lcom/metamoji/df/model/IModel;

    invoke-interface {v0, p1}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    .line 869
    new-instance v0, Lcom/metamoji/df/model/ModelManagerImportContext;

    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/metamoji/df/model/ModelManagerImportContext;-><init>(Lcom/metamoji/df/model/IModelManager;Lcom/metamoji/df/model/IModelManager;)V

    const/4 v1, 0x1

    .line 870
    invoke-interface {p2, p1, v1, v0}, Lcom/metamoji/df/model/IModelManager;->importModel(Lcom/metamoji/df/model/IModel;ZLcom/metamoji/df/model/ModelManagerImportContext;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    return-object p1
.end method

.method convertUnknownIndexProperties(Lcom/metamoji/df/model/IModel;)V
    .locals 14

    .line 199
    invoke-static {}, Lcom/metamoji/cv/xml/voice/CvRecordingsIncomingSubconverter;->knownRecordingIndexAttributeAndPropertyDictionary()Ljava/util/Map;

    move-result-object v0

    .line 203
    const-string v1, "$indexes"

    invoke-interface {p1, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsDictionary(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_4

    .line 208
    :cond_0
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 209
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 214
    const-string v7, "$unknownProperties"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    if-nez v8, :cond_2

    goto :goto_0

    .line 219
    :cond_2
    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 220
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 222
    invoke-interface {v0, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    goto :goto_1

    .line 225
    :cond_3
    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 226
    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 228
    invoke-virtual {p0, v12, v6, v13}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->convertUnknownIndexProperty(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 230
    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 233
    :cond_4
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    .line 234
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 235
    invoke-interface {v8, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 237
    :cond_5
    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    .line 238
    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 240
    :cond_6
    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    :goto_3
    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x1

    goto :goto_0

    :cond_7
    if-eqz v4, :cond_8

    .line 247
    invoke-interface {p1, v1, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/Map;)V

    :cond_8
    :goto_4
    return-void
.end method

.method convertUnknownIndexProperty(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 317
    const-string v0, "$id"

    .line 319
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "$title"

    .line 320
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "$pageId"

    .line 321
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "unknownStringProperty"

    .line 322
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 324
    :cond_0
    const-string/jumbo v0, "unknownIntegerProperty"

    .line 326
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 327
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 328
    :cond_1
    const-string v0, "$startTime"

    .line 330
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "$endTime"

    .line 331
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "unknownDoubleProperty"

    .line 332
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    return-void

    .line 333
    :cond_3
    :goto_0
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 323
    :cond_4
    :goto_1
    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method convertUnknownProperties()V
    .locals 3

    .line 131
    iget-object v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->_mapModel:Lcom/metamoji/df/model/IModel;

    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getAllPropertyNames()Ljava/util/List;

    move-result-object v0

    .line 132
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 133
    invoke-static {v1}, Lcom/metamoji/df/model/ModelProperty;->isPreloadProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 136
    :cond_0
    iget-object v2, p0, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->_mapModel:Lcom/metamoji/df/model/IModel;

    invoke-interface {v2, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 142
    :cond_1
    invoke-virtual {p0, v1}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->convertUnknownRecordProperties(Lcom/metamoji/df/model/IModel;)V

    .line 145
    invoke-virtual {p0, v1}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->convertUnknownIndexProperties(Lcom/metamoji/df/model/IModel;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method convertUnknownProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V
    .locals 1

    .line 258
    const-string v0, "$mimeType"

    .line 260
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "$title"

    .line 261
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "$fileId"

    .line 262
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "$url"

    .line 263
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "$roomId"

    .line 264
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "$userId"

    .line 265
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "$pageId"

    .line 266
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "$nickname"

    .line 267
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "$cacheFilename"

    .line 268
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "$mediaId"

    .line 270
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 273
    :cond_0
    const-string v0, "$ticketType"

    .line 275
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "$serverType"

    .line 276
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 279
    :cond_1
    const-string v0, "$startDate"

    .line 281
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "$duration"

    .line 282
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 285
    :cond_2
    const-string v0, "$needUploadTitle"

    .line 287
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "$hidden"

    .line 288
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 293
    :cond_3
    const-string v0, "$addedToUploadManager"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 294
    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->toBool(Ljava/lang/Object;)Z

    move-result p1

    invoke-interface {p2, p3, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Z)V

    :cond_4
    return-void

    .line 290
    :cond_5
    :goto_0
    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->toBool(Ljava/lang/Object;)Z

    move-result p1

    invoke-interface {p2, p3, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Z)V

    return-void

    .line 284
    :cond_6
    :goto_1
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/Number;)V

    return-void

    .line 278
    :cond_7
    :goto_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/Number;)V

    return-void

    .line 272
    :cond_8
    :goto_3
    invoke-interface {p2, p3, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method convertUnknownRecordProperties(Lcom/metamoji/df/model/IModel;)V
    .locals 8

    .line 157
    const-string v0, "$unknownProperties"

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsDictionary(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 163
    :cond_0
    invoke-static {}, Lcom/metamoji/cv/xml/voice/CvRecordingsIncomingSubconverter;->knownRecordingAttributeAndPropertyDictionary()Ljava/util/Map;

    move-result-object v2

    .line 165
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 166
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 168
    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_0

    .line 171
    :cond_1
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 172
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 174
    invoke-virtual {p0, v6, p1, v7}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->convertUnknownProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V

    .line 176
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 180
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 181
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 182
    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 184
    :cond_3
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 185
    invoke-interface {p1, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    .line 187
    :cond_4
    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public createAddRecordingsDirectionData(Ljava/util/List;)Lcom/metamoji/media/voice/direction/VcAddRecordingsDirectionData;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/metamoji/media/voice/direction/VcAddRecordingsDirectionData;"
        }
    .end annotation

    .line 1704
    iget-object v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->_model:Lcom/metamoji/df/model/IModel;

    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/media/voice/direction/VcAddRecordingsDirectionData;->newDirectionData(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/media/voice/direction/VcAddRecordingsDirectionData;

    move-result-object v0

    .line 1705
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1706
    iget-object v3, p0, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->_mapModel:Lcom/metamoji/df/model/IModel;

    invoke-interface {v3, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1708
    invoke-virtual {v0, v2, v3}, Lcom/metamoji/media/voice/direction/VcAddRecordingsDirectionData;->addModel(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    return-object v0

    .line 1715
    :cond_2
    invoke-virtual {v0}, Lcom/metamoji/media/voice/direction/VcAddRecordingsDirectionData;->destroy()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public createRemoveRecordingsDirectionData(Ljava/util/List;)Lcom/metamoji/media/voice/direction/VcRemoveRecordingsDirectionData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/metamoji/media/voice/direction/VcRemoveRecordingsDirectionData;"
        }
    .end annotation

    .line 1727
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1730
    :cond_0
    iget-object v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->_model:Lcom/metamoji/df/model/IModel;

    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/media/voice/direction/VcRemoveRecordingsDirectionData;->newDirectionData(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/media/voice/direction/VcRemoveRecordingsDirectionData;

    move-result-object v0

    .line 1731
    invoke-virtual {v0, p1}, Lcom/metamoji/media/voice/direction/VcRemoveRecordingsDirectionData;->setRemoveTickets(Ljava/util/List;)V

    return-object v0
.end method

.method deleteFileId(Ljava/lang/String;)V
    .locals 1

    .line 1449
    invoke-virtual {p0, p1}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1451
    const-string v0, "$fileId"

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public deleteMediaId(Ljava/lang/String;)V
    .locals 1

    .line 2373
    invoke-virtual {p0, p1}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2375
    const-string v0, "$mediaId"

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 0

    return-void
.end method

.method public downloadAllRecordingsIfNeeded(Lcom/metamoji/media/voice/controller/VcRecordingsManager$VC_DOWNLOAD_STATUS;)Z
    .locals 6

    .line 1911
    invoke-static {}, Lcom/metamoji/media/voice/VcUtil;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 1913
    iget-object v1, p0, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->_mapModel:Lcom/metamoji/df/model/IModel;

    invoke-interface {v1}, Lcom/metamoji/df/model/IModel;->getAllPropertyNames()Ljava/util/List;

    move-result-object v1

    .line 1915
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1916
    invoke-static {v3}, Lcom/metamoji/df/model/ModelProperty;->isPreloadProperty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 1920
    :cond_0
    invoke-virtual {p0, v3}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getCacheFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    .line 1923
    const-string v4, ".m4a"

    invoke-static {v3, v4}, Lcom/metamoji/media/MediaUtil;->createCacheFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 1927
    :cond_1
    invoke-virtual {p0, v3, v4}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->setCacheFilename(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 1932
    :cond_2
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1933
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    .line 1938
    :cond_3
    invoke-virtual {p0, v3}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->isNewMediaServerRecord(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1940
    invoke-virtual {p0, v3}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getMediaId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 1942
    :cond_4
    invoke-virtual {p0, v3}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getFileId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    if-nez v3, :cond_5

    goto :goto_0

    .line 1948
    :cond_5
    invoke-virtual {p0, v3, v5, v4, p1}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->downloadRecording(Ljava/lang/String;ZLjava/lang/String;Lcom/metamoji/media/voice/controller/VcRecordingsManager$VC_DOWNLOAD_STATUS;)V

    goto :goto_0

    .line 1951
    :cond_6
    invoke-static {}, Lcom/metamoji/media/MediaUtil;->waitOperationQueue()V

    return v2
.end method

.method downloadRecording(Ljava/lang/String;ZLjava/lang/String;Lcom/metamoji/media/voice/controller/VcRecordingsManager$VC_DOWNLOAD_STATUS;)V
    .locals 1

    .line 1964
    new-instance v0, Lcom/metamoji/media/voice/controller/VcRecordingsManager$6;

    invoke-direct {v0, p0, p4}, Lcom/metamoji/media/voice/controller/VcRecordingsManager$6;-><init>(Lcom/metamoji/media/voice/controller/VcRecordingsManager;Lcom/metamoji/media/voice/controller/VcRecordingsManager$VC_DOWNLOAD_STATUS;)V

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->downloadRecordingFromServer(Ljava/lang/String;ZLjava/lang/String;Lcom/metamoji/media/voice/controller/VcRecordingsManager$IVcDownloadCompletionAction;)V

    return-void
.end method

.method downloadRecordingFromServer(Ljava/lang/String;ZLjava/lang/String;Lcom/metamoji/media/voice/controller/VcRecordingsManager$IVcDownloadCompletionAction;)V
    .locals 1

    .line 1591
    new-instance v0, Lcom/metamoji/media/voice/controller/VcRecordingsManager$4;

    invoke-direct {v0, p0, p4, p3}, Lcom/metamoji/media/voice/controller/VcRecordingsManager$4;-><init>(Lcom/metamoji/media/voice/controller/VcRecordingsManager;Lcom/metamoji/media/voice/controller/VcRecordingsManager$IVcDownloadCompletionAction;Ljava/lang/String;)V

    .line 1625
    new-instance p3, Lcom/metamoji/media/service/MediaBgTaskForGetMediaFile;

    sget-object p4, Lcom/metamoji/media/service/MediaBgTask$IMediaAction;->NOP:Lcom/metamoji/media/service/MediaBgTask$IMediaAction;

    invoke-direct {p3, p4, v0}, Lcom/metamoji/media/service/MediaBgTaskForGetMediaFile;-><init>(Lcom/metamoji/media/service/MediaBgTask$IMediaAction;Lcom/metamoji/media/service/MediaBgTaskForGetMediaFile$IMediaBgTaskForGetMediaFileCompleteAction;)V

    .line 1626
    iput-object p1, p3, Lcom/metamoji/media/service/MediaBgTaskForGetMediaFile;->targetId:Ljava/lang/String;

    .line 1627
    iput-boolean p2, p3, Lcom/metamoji/media/service/MediaBgTaskForGetMediaFile;->isMediaId:Z

    .line 1629
    invoke-virtual {p3}, Lcom/metamoji/media/service/MediaBgTaskForGetMediaFile;->doInBackground()V

    return-void
.end method

.method downloadableTickets(Ljava/util/HashSet;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1846
    invoke-static {}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->isNetworkAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1855
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1856
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1857
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1858
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1859
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1860
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1862
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getAllTickets()Ljava/util/List;

    move-result-object v5

    .line 1863
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1864
    invoke-virtual {p0, v7}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->isNewMediaServerRecord(Ljava/lang/String;)Z

    move-result v9

    const/16 v10, 0x32

    if-eqz v9, :cond_3

    .line 1865
    invoke-virtual {p0, v7}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getMediaId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 1867
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v8

    .line 1870
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v10, :cond_1

    .line 1871
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1872
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1875
    :cond_3
    invoke-virtual {p0, v7}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getFileId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 1877
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v8

    .line 1880
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v10, :cond_1

    .line 1881
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1882
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    if-nez v1, :cond_6

    return v8

    .line 1894
    :cond_6
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1895
    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    return v8
.end method

.method public getAllTickets()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 707
    iget-object v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->_mapModel:Lcom/metamoji/df/model/IModel;

    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getAllPropertyNames()Ljava/util/List;

    move-result-object v0

    .line 708
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 709
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 710
    invoke-static {v2}, Lcom/metamoji/df/model/ModelProperty;->isPreloadProperty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 711
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getBackwardTicket(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1030
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getSortedTicketData()Ljava/util/List;

    move-result-object v0

    .line 1034
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 1035
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 1036
    const-string v3, "$ticket"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v1, :cond_1

    return-object v2

    .line 1041
    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCacheFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1504
    invoke-virtual {p0, p1}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1508
    :cond_0
    const-string v0, "$cacheFilename"

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCacheFilename(Ljava/lang/String;Lcom/metamoji/media/voice/controller/VcRecordingsManager$IVcDownloadCompletionAction;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 1534
    invoke-interface {p2, v0, v1, v1}, Lcom/metamoji/media/voice/controller/VcRecordingsManager$IVcDownloadCompletionAction;->onCompletion(Ljava/io/File;ZZ)V

    return-object v0

    .line 1538
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getCacheFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1541
    const-string v2, ".m4a"

    invoke-static {p1, v2}, Lcom/metamoji/media/MediaUtil;->createCacheFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1548
    invoke-virtual {p0, p1, v2}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->setCacheFilename(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v1

    .line 1553
    :goto_0
    invoke-static {}, Lcom/metamoji/media/voice/VcUtil;->getCacheDir()Ljava/io/File;

    move-result-object v4

    .line 1554
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1555
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1556
    invoke-interface {p2, v5, v3, v1}, Lcom/metamoji/media/voice/controller/VcRecordingsManager$IVcDownloadCompletionAction;->onCompletion(Ljava/io/File;ZZ)V

    return-object v2

    .line 1562
    :cond_2
    invoke-virtual {p0, p1}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->isNewMediaServerRecord(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1564
    invoke-virtual {p0, p1}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getMediaId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    .line 1566
    invoke-interface {p2, v0, v3, v1}, Lcom/metamoji/media/voice/controller/VcRecordingsManager$IVcDownloadCompletionAction;->onCompletion(Ljava/io/File;ZZ)V

    return-object v0

    .line 1571
    :cond_3
    invoke-virtual {p0, p1}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getFileId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    .line 1573
    invoke-interface {p2, v0, v3, v1}, Lcom/metamoji/media/voice/controller/VcRecordingsManager$IVcDownloadCompletionAction;->onCompletion(Ljava/io/File;ZZ)V

    return-object v0

    .line 1577
    :cond_4
    invoke-virtual {p0, p1, v4, v2, p2}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->downloadRecordingFromServer(Ljava/lang/String;ZLjava/lang/String;Lcom/metamoji/media/voice/controller/VcRecordingsManager$IVcDownloadCompletionAction;)V

    return-object v0
.end method

.method public getDuration(Ljava/lang/String;)D
    .locals 3

    .line 1365
    invoke-virtual {p0, p1}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    return-wide v0

    .line 1369
    :cond_0
    const-string v2, "$duration"

    invoke-interface {p1, v2, v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFileId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1300
    const-string v0, "$fileId"

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFileSizeOfTickets(Ljava/util/List;)J
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .line 1682
    invoke-static {}, Lcom/metamoji/media/voice/VcUtil;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 1683
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1684
    invoke-virtual {p0, v3}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getCacheFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1685
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1686
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1687
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v3

    add-long/2addr v1, v3

    goto :goto_0

    :cond_1
    return-wide v1
.end method

.method public getForwardTicket(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1006
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getSortedTicketData()Ljava/util/List;

    move-result-object v0

    .line 1010
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 1011
    const-string v3, "$ticket"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v1, :cond_1

    return-object v2

    .line 1016
    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getIndex(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1178
    invoke-virtual {p0, p1}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getIndexes(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1182
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getIndex(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public getIndexes(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1387
    invoke-virtual {p0, p1}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1391
    :cond_0
    const-string v0, "$indexes"

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsDictionary(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public getMediaId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 2353
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2355
    const-string v0, "$mediaId"

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method

.method public getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1290
    const-string v0, "$mimeType"

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1237
    :cond_0
    iget-object v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->_mapModel:Lcom/metamoji/df/model/IModel;

    invoke-interface {v0, p1}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    return-object p1
.end method

.method public getNextTicket(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 984
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getSortedTicketData()Ljava/util/List;

    move-result-object v0

    .line 987
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 988
    const-string v3, "$ticket"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v1, :cond_1

    return-object v2

    .line 992
    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getNickname(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1340
    const-string v0, "$nickname"

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPrevTicket(Ljava/lang/String;)Ljava/lang/String;
    .locals 14

    .line 1057
    iget-object v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->_mapModel:Lcom/metamoji/df/model/IModel;

    invoke-interface {v0, p1}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1061
    :cond_0
    const-string v1, "$startDate"

    const-wide/16 v2, 0x0

    invoke-interface {p1, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v4

    .line 1063
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getAllTickets()Ljava/util/List;

    move-result-object p1

    .line 1064
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-wide v6, v2

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1065
    iget-object v9, p0, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->_mapModel:Lcom/metamoji/df/model/IModel;

    invoke-interface {v9, v8}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v9

    .line 1066
    invoke-interface {v9, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v10

    .line 1067
    const-string v12, "$duration"

    invoke-interface {v9, v12, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v12

    add-double/2addr v10, v12

    cmpg-double v9, v10, v4

    if-gez v9, :cond_1

    cmpg-double v9, v6, v10

    if-gez v9, :cond_1

    move-object v0, v8

    move-wide v6, v10

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getRoomId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1320
    const-string v0, "$roomId"

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getServerType(Ljava/lang/String;)I
    .locals 2

    .line 1254
    invoke-virtual {p0, p1}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 1258
    :cond_0
    const-string v1, "$serverType"

    invoke-interface {p1, v1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getSortedAllTickets()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 722
    iget-object v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->_mapModel:Lcom/metamoji/df/model/IModel;

    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getAllPropertyNames()Ljava/util/List;

    move-result-object v0

    .line 723
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 724
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "$ticket"

    const-string v4, "$startDate"

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 725
    invoke-static {v2}, Lcom/metamoji/df/model/ModelProperty;->isPreloadProperty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 728
    :cond_1
    iget-object v5, p0, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->_mapModel:Lcom/metamoji/df/model/IModel;

    invoke-interface {v5, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v5

    if-eqz v5, :cond_0

    const-wide/16 v6, 0x0

    .line 730
    invoke-interface {v5, v4, v6, v7}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v5

    .line 732
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 733
    invoke-interface {v7, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v7, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 736
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 740
    :cond_2
    new-instance v0, Lcom/metamoji/media/voice/controller/VcRecordingsManager$1;

    invoke-direct {v0, p0}, Lcom/metamoji/media/voice/controller/VcRecordingsManager$1;-><init>(Lcom/metamoji/media/voice/controller/VcRecordingsManager;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 754
    const-string/jumbo v0, "sort tickets"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 755
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 756
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 757
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 758
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 760
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->toDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 761
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p0, v5}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v2, v5}, [Ljava/lang/Object;

    move-result-object v2

    const-string v5, " %f %s"

    invoke-static {v5, v2}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method getSortedIndexes(Ljava/lang/String;)Ljava/util/List;
    .locals 1
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

    .line 1192
    invoke-virtual {p0, p1}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getIndexes(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1196
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1199
    new-instance p1, Lcom/metamoji/media/voice/controller/VcRecordingsManager$3;

    invoke-direct {p1, p0}, Lcom/metamoji/media/voice/controller/VcRecordingsManager$3;-><init>(Lcom/metamoji/media/voice/controller/VcRecordingsManager;)V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public getSortedTicketData()Ljava/util/List;
    .locals 6
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

    .line 771
    iget-object v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->_mapModel:Lcom/metamoji/df/model/IModel;

    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getAllPropertyNames()Ljava/util/List;

    move-result-object v0

    .line 772
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 773
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 774
    invoke-static {v2}, Lcom/metamoji/df/model/ModelProperty;->isPreloadProperty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 777
    :cond_0
    iget-object v3, p0, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->_mapModel:Lcom/metamoji/df/model/IModel;

    invoke-interface {v3, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 781
    :cond_1
    const-string v4, "$hidden"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/metamoji/df/model/IModel;->getPropertyAsBool(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 786
    :cond_2
    invoke-virtual {p0, v3, v2}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->makeTicketData(Lcom/metamoji/df/model/IModel;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 787
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 790
    :cond_3
    new-instance v0, Lcom/metamoji/media/voice/controller/VcRecordingsManager$2;

    invoke-direct {v0, p0}, Lcom/metamoji/media/voice/controller/VcRecordingsManager$2;-><init>(Lcom/metamoji/media/voice/controller/VcRecordingsManager;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v1
.end method

.method public getStartDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 3

    .line 1350
    invoke-virtual {p0, p1}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1354
    :cond_0
    const-string v0, "$startDate"

    const-wide/16 v1, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v0

    .line 1355
    invoke-static {v0, v1}, Lcom/metamoji/cm/TimeUtils;->unixtime2datetime(D)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1241
    invoke-virtual {p0, p1}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1245
    :cond_0
    invoke-interface {p1, p2}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getTicketCount()I
    .locals 3

    .line 575
    iget-object v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->_mapModel:Lcom/metamoji/df/model/IModel;

    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getAllPropertyNames()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 581
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 582
    invoke-static {v2}, Lcom/metamoji/df/model/ModelProperty;->isPreloadProperty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public getTicketData(Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 811
    iget-object v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->_mapModel:Lcom/metamoji/df/model/IModel;

    invoke-interface {v0, p1}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 816
    :cond_0
    const-string v2, "$hidden"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsBool(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    .line 821
    :cond_1
    invoke-virtual {p0, v0, p1}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->makeTicketData(Lcom/metamoji/df/model/IModel;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public getTicketDataAt(Ljava/util/Date;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 920
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getAllTickets()Ljava/util/List;

    move-result-object v0

    .line 921
    invoke-static {p1}, Lcom/metamoji/cm/TimeUtils;->date2unixtime(Ljava/util/Date;)D

    move-result-wide v1

    .line 922
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 924
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 925
    iget-object v4, p0, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->_mapModel:Lcom/metamoji/df/model/IModel;

    invoke-interface {v4, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v4

    .line 928
    const-string v5, "$hidden"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/metamoji/df/model/IModel;->getPropertyAsBool(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 934
    :cond_1
    const-string v5, "$startDate"

    const-wide/16 v6, 0x0

    invoke-interface {v4, v5, v6, v7}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v8

    .line 935
    const-string v5, "$duration"

    invoke-interface {v4, v5, v6, v7}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v5

    cmpg-double v7, v8, v1

    if-gtz v7, :cond_0

    add-double/2addr v8, v5

    cmpg-double v5, v1, v8

    if-gtz v5, :cond_0

    .line 939
    invoke-virtual {p0, v4, v3}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->makeTicketData(Lcom/metamoji/df/model/IModel;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 940
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public getTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1280
    const-string v0, "$title"

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1310
    const-string v0, "$url"

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getUserId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1330
    const-string v0, "$userId"

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public handleAddRecordingsDirection(Lcom/metamoji/media/voice/direction/VcAddRecordingsDirectionData;Lcom/metamoji/ns/direction/INsDirectionObserver;)Z
    .locals 1

    .line 1741
    new-instance v0, Lcom/metamoji/media/voice/controller/VcRecordingsManager$5;

    invoke-direct {v0, p0}, Lcom/metamoji/media/voice/controller/VcRecordingsManager$5;-><init>(Lcom/metamoji/media/voice/controller/VcRecordingsManager;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/media/voice/direction/VcAddRecordingsDirectionData;->forEachModel(Lcom/metamoji/media/voice/direction/VcAddRecordingsDirectionData$IForEachBlock;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1759
    invoke-interface {p2}, Lcom/metamoji/ns/direction/INsDirectionObserver;->documentModified()V

    :cond_0
    return p1
.end method

.method public hasIndexes(Ljava/lang/String;)Z
    .locals 0

    .line 695
    invoke-virtual {p0, p1}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getIndexes(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 696
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public hasTicket()Z
    .locals 3

    .line 611
    iget-object v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->_mapModel:Lcom/metamoji/df/model/IModel;

    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getAllPropertyNames()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 616
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 617
    invoke-static {v2}, Lcom/metamoji/df/model/ModelProperty;->isPreloadProperty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method public hasTicket(Ljava/lang/String;)Z
    .locals 3

    .line 595
    iget-object v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->_mapModel:Lcom/metamoji/df/model/IModel;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 598
    :cond_0
    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getModelID()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->_mapModel:Lcom/metamoji/df/model/IModel;

    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 602
    :cond_1
    iget-object v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->_mapModel:Lcom/metamoji/df/model/IModel;

    invoke-interface {v0, p1}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public hasVisibleTicket()Z
    .locals 4

    .line 625
    iget-object v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->_mapModel:Lcom/metamoji/df/model/IModel;

    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getAllPropertyNames()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 630
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 631
    invoke-static {v2}, Lcom/metamoji/df/model/ModelProperty;->isPreloadProperty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 635
    :cond_1
    iget-object v3, p0, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->_mapModel:Lcom/metamoji/df/model/IModel;

    invoke-interface {v3, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 641
    :cond_2
    const-string v3, "$hidden"

    invoke-interface {v2, v3, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsBool(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    return v0

    :cond_4
    return v1
.end method

.method public importRecordingFromServer(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/util/Date;DLjava/lang/String;Lcom/metamoji/media/voice/controller/VcRecordingsManager$IVcImportFromServerCompletionAction;)V
    .locals 14

    move-object/from16 v0, p2

    move-object/from16 v13, p11

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-wide/from16 v6, p8

    move-object/from16 v10, p10

    .line 1652
    invoke-virtual/range {v1 .. v12}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->registerRecording(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/util/Date;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 p1, 0x0

    .line 1653
    invoke-interface {v13, p1}, Lcom/metamoji/media/voice/controller/VcRecordingsManager$IVcImportFromServerCompletionAction;->onCompletion(Ljava/lang/String;)V

    return-void

    .line 1658
    :cond_0
    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->delete()Z

    .line 1660
    invoke-virtual {p0, v2, p1}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->setUrl(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_1

    .line 1662
    invoke-virtual {p0, v2, v0}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->setMediaId(Ljava/lang/String;Ljava/lang/String;)V

    .line 1663
    invoke-virtual {p0, v2}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->deleteFileId(Ljava/lang/String;)V

    goto :goto_0

    .line 1665
    :cond_1
    invoke-virtual {p0, v2, v0}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->setFileId(Ljava/lang/String;Ljava/lang/String;)V

    .line 1666
    invoke-virtual {p0, v2}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->deleteMediaId(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    .line 1668
    invoke-virtual {p0, v2, p1}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->setServerType(Ljava/lang/String;I)V

    .line 1670
    invoke-virtual {p0, v2, p1}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->setHiddenRecording(Ljava/lang/String;Z)V

    .line 1672
    invoke-interface {v13, v2}, Lcom/metamoji/media/voice/controller/VcRecordingsManager$IVcImportFromServerCompletionAction;->onCompletion(Ljava/lang/String;)V

    return-void
.end method

.method public isExistTicketAt(Ljava/util/Date;)Z
    .locals 8

    .line 953
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getAllTickets()Ljava/util/List;

    move-result-object v0

    .line 954
    invoke-static {p1}, Lcom/metamoji/cm/TimeUtils;->date2unixtime(Ljava/util/Date;)D

    move-result-wide v1

    .line 956
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 957
    iget-object v4, p0, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->_mapModel:Lcom/metamoji/df/model/IModel;

    invoke-interface {v4, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 960
    const-string v4, "$hidden"

    invoke-interface {v0, v4, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsBool(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 966
    :cond_1
    const-string v3, "$startDate"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v3, v4, v5}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v6

    .line 967
    const-string v3, "$duration"

    invoke-interface {v0, v3, v4, v5}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v3

    cmpg-double v0, v6, v1

    if-gtz v0, :cond_0

    add-double/2addr v6, v3

    cmpg-double v0, v1, v6

    if-gtz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_2
    return v3
.end method

.method public isHiddenRecording(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1489
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1491
    const-string v1, "$hidden"

    invoke-interface {p1, v1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsBool(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    :cond_1
    return v0
.end method

.method public isNewMediaServerRecord(Ljava/lang/String;)Z
    .locals 0

    .line 2337
    invoke-virtual {p0, p1}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getMediaId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method makeNewTicketTitle(Z)Ljava/lang/String;
    .locals 3

    .line 537
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getTicketCount()I

    move-result v0

    .line 539
    const-string v1, "%s %d"

    if-eqz p1, :cond_0

    .line 540
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    sget v2, Lcom/metamoji/noteanytime/R$string;->Voice_ImportRecordInitialTitle:I

    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 542
    :cond_0
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    sget v2, Lcom/metamoji/noteanytime/R$string;->Voice_RecordInitialTitle:I

    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method makeTicketData(Lcom/metamoji/df/model/IModel;Ljava/lang/String;)Ljava/util/Map;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/df/model/IModel;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 875
    const-string v2, "$userId"

    invoke-interface {v0, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 876
    const-string v4, "$roomId"

    invoke-interface {v0, v4}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 877
    const-string v6, "$pageId"

    invoke-interface {v0, v6}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 878
    const-string v8, "$nickname"

    invoke-interface {v0, v8}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 879
    const-string v10, "$title"

    invoke-interface {v0, v10}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-wide/16 v12, 0x0

    .line 880
    const-string v14, "$startDate"

    invoke-interface {v0, v14, v12, v13}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v12

    move-wide v15, v12

    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    move-wide/from16 v17, v15

    .line 881
    const-string v15, "$duration"

    invoke-interface {v0, v15, v12, v13}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v12

    move-wide/from16 v19, v12

    move-object/from16 v12, p0

    .line 882
    invoke-virtual {v12, v1}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getSortedIndexes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    .line 884
    const-string v12, "$mediaId"

    invoke-interface {v0, v12}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 p1, v0

    .line 886
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v16, v12

    .line 887
    const-string v12, "$ticket"

    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 888
    invoke-interface {v0, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 889
    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, v14, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 890
    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v13, :cond_0

    .line 892
    const-string v1, "$indexes"

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz v5, :cond_1

    .line 895
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz v3, :cond_2

    .line 898
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz v7, :cond_3

    .line 901
    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz v9, :cond_4

    .line 904
    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-eqz p1, :cond_5

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    .line 908
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-object v0
.end method

.method public migrationFromOldVersion(Lcom/metamoji/nt/NtDocument;)V
    .locals 8

    .line 2293
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getAllTickets()Ljava/util/List;

    move-result-object v0

    .line 2294
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    .line 2296
    iget-object v1, p0, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->_mapModel:Lcom/metamoji/df/model/IModel;

    invoke-interface {v1, v6}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v5

    .line 2297
    const-string v1, "$addedToUploadManager"

    const/4 v2, 0x0

    invoke-interface {v5, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsBool(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2304
    :cond_0
    const-string v1, "$url"

    invoke-interface {v5, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2307
    invoke-virtual {p0, v6}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getCacheFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 2310
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    new-instance v2, Lcom/metamoji/media/voice/controller/VcRecordingsManager$8;

    move-object v3, p0

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/metamoji/media/voice/controller/VcRecordingsManager$8;-><init>(Lcom/metamoji/media/voice/controller/VcRecordingsManager;Ljava/lang/String;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Lcom/metamoji/nt/NtDocument;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_1
    move-object v7, p1

    :goto_1
    move-object p1, v7

    goto :goto_0

    :cond_2
    return-void
.end method

.method public notifyUploadingFile(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 3

    .line 2212
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getAllTickets()Ljava/util/List;

    move-result-object v0

    .line 2213
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2216
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2218
    invoke-virtual {p0, p1, p4}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->setUrl(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_1

    .line 2220
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->setMediaId(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2222
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->setFileId(Ljava/lang/String;Ljava/lang/String;)V

    .line 2224
    :goto_0
    invoke-virtual {p0, p1, v2}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->setServerType(Ljava/lang/String;I)V

    const/4 p1, 0x1

    return p1

    :cond_2
    return v2
.end method

.method public registRecordingToUploadManager(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/nt/NtDocument;Z)V
    .locals 6

    if-nez p3, :cond_0

    .line 2266
    invoke-virtual {p0, p1}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_0
    move-object v3, p3

    .line 2270
    invoke-static {}, Lcom/metamoji/media/MediaUploadManager2;->SharedInstance()Lcom/metamoji/media/MediaUploadManager2;

    move-result-object v0

    move-object v2, p1

    move-object v1, p2

    move-object v4, p4

    move v5, p5

    .line 2271
    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/media/MediaUploadManager2;->registFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/nt/NtDocument;Z)V

    return-void
.end method

.method public registRecordingToUploadManager(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 10

    if-nez p3, :cond_0

    .line 2277
    invoke-virtual/range {p0 .. p1}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_0
    move-object v3, p3

    .line 2281
    invoke-static {}, Lcom/metamoji/media/MediaUploadManager2;->SharedInstance()Lcom/metamoji/media/MediaUploadManager2;

    move-result-object v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    move-object v1, p2

    move-object v5, p4

    move-object v6, p5

    move/from16 v9, p6

    .line 2282
    invoke-virtual/range {v0 .. v9}, Lcom/metamoji/media/MediaUploadManager2;->registFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V

    return-void
.end method

.method public registerRecording(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Z
    .locals 1

    .line 522
    iget-object v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->_mapModel:Lcom/metamoji/df/model/IModel;

    invoke-interface {v0, p1}, Lcom/metamoji/df/model/IModel;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->_mapModel:Lcom/metamoji/df/model/IModel;

    invoke-interface {v0, p1, p2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    const/4 p1, 0x1

    return p1
.end method

.method public registerRecording(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/util/Date;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "D",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)Z"
        }
    .end annotation

    .line 444
    invoke-virtual/range {p0 .. p1}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 448
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/media/MediaUtil;->mimeTypeFromFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    if-eqz p3, :cond_2

    .line 452
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    move/from16 p3, p11

    .line 453
    invoke-virtual {p0, p3}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->makeNewTicketTitle(Z)Ljava/lang/String;

    move-result-object p3

    :cond_3
    if-nez p10, :cond_4

    .line 456
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_4
    move-object/from16 v2, p10

    .line 458
    :goto_0
    invoke-static {}, Lcom/metamoji/media/MediaUtil;->makeRecorderName()Ljava/lang/String;

    move-result-object v3

    .line 461
    const-string v4, ".m4a"

    invoke-static {p1, v4}, Lcom/metamoji/media/MediaUtil;->createCacheFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 464
    iget-object v5, p0, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->_model:Lcom/metamoji/df/model/IModel;

    invoke-interface {v5}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v5

    const-string v6, "recording"

    invoke-interface {v5, v6}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v5

    const/4 v6, 0x1

    .line 465
    invoke-interface {v5, v6}, Lcom/metamoji/df/model/IModel;->setVersion(I)V

    .line 466
    const-string v7, "$title"

    invoke-interface {v5, v7, p3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    const-string p3, "$mimeType"

    invoke-interface {v5, p3, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    const-string p3, "$cacheFilename"

    invoke-interface {v5, p3, v4}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    const-string p3, "$startDate"

    .line 471
    invoke-static {p4}, Lcom/metamoji/cm/TimeUtils;->date2unixtime(Ljava/util/Date;)D

    move-result-wide v7

    .line 470
    invoke-interface {v5, p3, v7, v8}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 472
    const-string p3, "$duration"

    invoke-interface {v5, p3, p5, p6}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 473
    const-string p3, "$roomId"

    move-object/from16 p4, p7

    invoke-interface {v5, p3, p4}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    const-string p3, "$userId"

    move-object/from16 p4, p8

    invoke-interface {v5, p3, p4}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    const-string p3, "$pageId"

    move-object/from16 p4, p9

    invoke-interface {v5, p3, p4}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    const-string p3, "$nickname"

    invoke-interface {v5, p3, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    const-string p3, "$indexes"

    invoke-interface {v5, p3, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/Map;)V

    .line 481
    const-string p3, "$ticketType"

    invoke-interface {v5, p3, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 485
    const-string p3, "$addedToUploadManager"

    invoke-interface {v5, p3, v6}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Z)V

    .line 489
    const-string p3, "$mediaId"

    invoke-interface {v5, p3, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    invoke-static {p1}, Lcom/metamoji/media/service/MediaGetMediaFile;->urlForGetMediaFileForMediaId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 491
    const-string p4, "$url"

    invoke-interface {v5, p4, p3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    const-string p3, "$hidden"

    invoke-interface {v5, p3, v6}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Z)V

    .line 495
    invoke-static {}, Lcom/metamoji/media/voice/VcUtil;->getCacheDir()Ljava/io/File;

    move-result-object p3

    .line 499
    invoke-static {p3, v4}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->deleteCacheFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_5

    return v1

    .line 504
    :cond_5
    new-instance p4, Ljava/io/File;

    invoke-direct {p4, p3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p2, p4}, Lcom/metamoji/cm/CmUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 505
    const-string p1, "failed to copy recording file."

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    return v1

    .line 509
    :cond_6
    iget-object p2, p0, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->_mapModel:Lcom/metamoji/df/model/IModel;

    invoke-interface {p2, p1, v5}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return v6
.end method

.method public removeIndex(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1104
    invoke-virtual {p0, p1}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getIndexes(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1110
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1112
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->setIndexes(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public removeRecording(Ljava/lang/String;)Z
    .locals 1

    .line 554
    iget-object v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->_mapModel:Lcom/metamoji/df/model/IModel;

    invoke-interface {v0, p1}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 563
    :cond_0
    iget-object v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->_mapModel:Lcom/metamoji/df/model/IModel;

    invoke-interface {v0, p1}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method setCacheFilename(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1518
    invoke-virtual {p0, p1}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1520
    const-string v0, "$cacheFilename"

    invoke-interface {p1, v0, p2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setDuration(Ljava/lang/String;D)V
    .locals 1

    .line 1373
    invoke-virtual {p0, p1}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1375
    const-string v0, "$duration"

    invoke-interface {p1, v0, p2, p3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    :cond_0
    return-void
.end method

.method setFileId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1437
    invoke-virtual {p0, p1}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1439
    const-string v0, "$fileId"

    invoke-interface {p1, v0, p2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setHiddenRecording(Ljava/lang/String;Z)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1478
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1480
    const-string v0, "$hidden"

    invoke-interface {p1, v0, p2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setIndexTime(Ljava/lang/String;Ljava/lang/String;DD)V
    .locals 3

    .line 1147
    invoke-virtual {p0, p1}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getIndexes(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1151
    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getIndex(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_1

    :goto_0
    return-void

    .line 1156
    :cond_1
    const-string v2, "$startTime"

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    invoke-interface {v1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1157
    const-string p3, "$endTime"

    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p4

    invoke-interface {v1, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1159
    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1161
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->setIndexes(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public setIndexTitle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1123
    invoke-virtual {p0, p1}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getIndexes(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1127
    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getIndex(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    if-nez p2, :cond_1

    :goto_0
    return-void

    .line 1132
    :cond_1
    const-string v1, "$title"

    invoke-interface {p2, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1134
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->setIndexes(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public setIndexes(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1225
    iget-object v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->_mapModel:Lcom/metamoji/df/model/IModel;

    invoke-interface {v0, p1}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1227
    const-string v0, "$indexes"

    invoke-interface {p1, v0, p2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public setMediaId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2366
    invoke-virtual {p0, p1}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2368
    const-string v0, "$mediaId"

    invoke-interface {p1, v0, p2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method setServerType(Ljava/lang/String;I)V
    .locals 1

    .line 1267
    invoke-virtual {p0, p1}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1269
    const-string v0, "$serverType"

    invoke-interface {p1, v0, p2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/nt/NtDocument;)V
    .locals 8

    .line 1403
    invoke-virtual {p0, p1}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1407
    :cond_0
    const-string v1, "$title"

    invoke-interface {v0, v1, p2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1411
    invoke-virtual {p0, p1}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->isNewMediaServerRecord(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1413
    invoke-virtual {p0, p1}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getMediaId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1415
    :cond_1
    invoke-virtual {p0, p1}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getFileId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v5, p1

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    if-eqz p3, :cond_3

    .line 1424
    invoke-static {}, Lcom/metamoji/media/MediaUploadManager2;->SharedInstance()Lcom/metamoji/media/MediaUploadManager2;

    move-result-object v2

    .line 1425
    invoke-virtual {p3}, Lcom/metamoji/nt/NtDocument;->getDocumentTitle()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    move-object v3, p2

    .line 1426
    invoke-virtual/range {v2 .. v7}, Lcom/metamoji/media/MediaUploadManager2;->registTitle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    :cond_3
    :goto_1
    return-void
.end method

.method setUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1462
    invoke-virtual {p0, p1}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1464
    const-string v0, "$url"

    invoke-interface {p1, v0, p2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public uploadTitlesForNoteTitle(Ljava/lang/String;)Z
    .locals 7

    .line 2007
    invoke-static {}, Lcom/metamoji/media/MediaUploadManager2;->SharedInstance()Lcom/metamoji/media/MediaUploadManager2;

    move-result-object v0

    .line 2008
    iget-object v1, p0, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->_mapModel:Lcom/metamoji/df/model/IModel;

    invoke-interface {v1}, Lcom/metamoji/df/model/IModel;->getAllPropertyNames()Ljava/util/List;

    move-result-object v1

    .line 2009
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2010
    invoke-static {v1}, Lcom/metamoji/df/model/ModelProperty;->isPreloadProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 2013
    :cond_0
    iget-object v2, p0, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->_mapModel:Lcom/metamoji/df/model/IModel;

    invoke-interface {v2, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 2019
    :cond_1
    invoke-virtual {p0, v1}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->isNewMediaServerRecord(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2022
    const-string v1, "$mediaId"

    invoke-interface {v2, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 2024
    :cond_2
    const-string v1, "$fileId"

    invoke-interface {v2, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    move-object v3, v1

    if-nez v3, :cond_3

    goto :goto_0

    .line 2031
    :cond_3
    const-string v1, "$title"

    invoke-interface {v2, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    move-object v2, p1

    .line 2032
    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/media/MediaUploadManager2;->registTitle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 2034
    :cond_4
    invoke-virtual {v0}, Lcom/metamoji/media/MediaUploadManager2;->saveNeedsUploadTitles()V

    .line 2036
    new-instance p1, Ljava/lang/Thread;

    new-instance v1, Lcom/metamoji/media/voice/controller/VcRecordingsManager$7;

    invoke-direct {v1, p0, v0}, Lcom/metamoji/media/voice/controller/VcRecordingsManager$7;-><init>(Lcom/metamoji/media/voice/controller/VcRecordingsManager;Lcom/metamoji/media/MediaUploadManager2;)V

    invoke-direct {p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2041
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    const/4 p1, 0x0

    return p1
.end method
