.class public Lcom/metamoji/media/MediaUploadManager2;
.super Ljava/lang/Object;
.source "MediaUploadManager2.java"

# interfaces
.implements Lcom/metamoji/cm/CmTaskManager$IOnIdleProcess;


# static fields
.field public static final SyncMediaUploadResult_Error:I = 0x1

.field public static final SyncMediaUploadResult_ModifiedDocument:I = 0x3

.field public static final SyncMediaUploadResult_NeedTentativeRegistNotify:I = 0x2

.field public static final SyncMediaUploadResult_Offline:I = 0x4

.field public static final SyncMediaUploadResult_Uploaded:I = 0x0

.field public static final UPLOAD_DATA_DOCUMENT_TITLE:Ljava/lang/String; = "documentTitle"

.field public static final UPLOAD_DATA_DOC_ID:Ljava/lang/String; = "docId"

.field public static final UPLOAD_DATA_DRIVE_ID:Ljava/lang/String; = "driveId"

.field public static final UPLOAD_DATA_FILE_PATH:Ljava/lang/String; = "filePath"

.field public static final UPLOAD_DATA_IS_COLLABO:Ljava/lang/String; = "isCollabo"

.field public static final UPLOAD_DATA_IS_MEDIA_ID:Ljava/lang/String; = "isMediaId"

.field public static final UPLOAD_DATA_IS_SHARE_NOTE_OWNER:Ljava/lang/String; = "isShareNoteOwner"

.field public static final UPLOAD_DATA_MEDIA_ID:Ljava/lang/String; = "mediaId"

.field public static final UPLOAD_DATA_MEDIA_TITLE:Ljava/lang/String; = "mediaTitle"

.field public static final UPLOAD_DATA_RECORD_ID:Ljava/lang/String; = "recordId"

.field public static final UPLOAD_DATA_ROOM_ID:Ljava/lang/String; = "roomId"

.field public static final UPLOAD_DATA_TICKET:Ljava/lang/String; = "ticket"

.field public static final UPLOAD_DATA_URL:Ljava/lang/String; = "url"

.field private static _sharedInstance:Lcom/metamoji/media/MediaUploadManager2;

.field private static final lockObjectDoingSyncMediaUpload_:Ljava/lang/Object;

.field private static final lockObjectForUploadFiles_:Ljava/lang/Object;

.field private static final lockObjectForUploadTitles_:Ljava/lang/Object;


# instance fields
.field cancelSyncMediaUpload_:Z

.field isDiskFull_:Z

.field isDoingsyncMediaUpload_:Z

.field isUpdatingUserInfo_:Z

.field needsUploadFiles_:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field needsUploadTitles_:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field retryTimer_:Ljava/util/Timer;


# direct methods
.method static bridge synthetic -$$Nest$sfgetlockObjectDoingSyncMediaUpload_()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/metamoji/media/MediaUploadManager2;->lockObjectDoingSyncMediaUpload_:Ljava/lang/Object;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/metamoji/media/MediaUploadManager2;->lockObjectForUploadFiles_:Ljava/lang/Object;

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/metamoji/media/MediaUploadManager2;->lockObjectForUploadTitles_:Ljava/lang/Object;

    .line 86
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/metamoji/media/MediaUploadManager2;->lockObjectDoingSyncMediaUpload_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    invoke-virtual {p0}, Lcom/metamoji/media/MediaUploadManager2;->restoreNeedsUploadDatas()V

    const/4 v0, 0x0

    .line 104
    iput-boolean v0, p0, Lcom/metamoji/media/MediaUploadManager2;->cancelSyncMediaUpload_:Z

    const/4 v0, 0x0

    .line 105
    iput-object v0, p0, Lcom/metamoji/media/MediaUploadManager2;->retryTimer_:Ljava/util/Timer;

    .line 109
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    .line 110
    invoke-virtual {v0, p0}, Lcom/metamoji/cm/CmTaskManager;->addOnIdleListener(Lcom/metamoji/cm/CmTaskManager$IOnIdleProcess;)V

    return-void
.end method

.method public static SharedInstance()Lcom/metamoji/media/MediaUploadManager2;
    .locals 1

    .line 125
    sget-object v0, Lcom/metamoji/media/MediaUploadManager2;->_sharedInstance:Lcom/metamoji/media/MediaUploadManager2;

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Lcom/metamoji/media/MediaUploadManager2;

    invoke-direct {v0}, Lcom/metamoji/media/MediaUploadManager2;-><init>()V

    sput-object v0, Lcom/metamoji/media/MediaUploadManager2;->_sharedInstance:Lcom/metamoji/media/MediaUploadManager2;

    .line 128
    :cond_0
    sget-object v0, Lcom/metamoji/media/MediaUploadManager2;->_sharedInstance:Lcom/metamoji/media/MediaUploadManager2;

    return-object v0
.end method

.method public static isFileExist(Ljava/lang/String;)Z
    .locals 1

    .line 1114
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1118
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method


# virtual methods
.method cancelSyncMediaUpload()V
    .locals 1

    const/4 v0, 0x1

    .line 306
    iput-boolean v0, p0, Lcom/metamoji/media/MediaUploadManager2;->cancelSyncMediaUpload_:Z

    return-void
.end method

.method checkUploadError(I)V
    .locals 1

    if-eqz p1, :cond_2

    const/16 v0, 0x336

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 748
    :cond_0
    iget-boolean p1, p0, Lcom/metamoji/media/MediaUploadManager2;->isDiskFull_:Z

    if-eqz p1, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 p1, 0x1

    .line 750
    iput-boolean p1, p0, Lcom/metamoji/media/MediaUploadManager2;->isDiskFull_:Z

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 745
    iput-boolean p1, p0, Lcom/metamoji/media/MediaUploadManager2;->isDiskFull_:Z

    return-void
.end method

.method public clearNeedsUploadDatas()V
    .locals 2

    .line 166
    sget-object v0, Lcom/metamoji/media/MediaUploadManager2;->lockObjectForUploadFiles_:Ljava/lang/Object;

    monitor-enter v0

    .line 167
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/media/MediaUploadManager2;->needsUploadFiles_:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 168
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 169
    invoke-virtual {p0}, Lcom/metamoji/media/MediaUploadManager2;->saveNeedsUploadFiles()V

    .line 170
    sget-object v1, Lcom/metamoji/media/MediaUploadManager2;->lockObjectForUploadTitles_:Ljava/lang/Object;

    monitor-enter v1

    .line 171
    :try_start_1
    iget-object v0, p0, Lcom/metamoji/media/MediaUploadManager2;->needsUploadTitles_:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 172
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    invoke-virtual {p0}, Lcom/metamoji/media/MediaUploadManager2;->saveNeedsUploadTitles()V

    return-void

    :catchall_0
    move-exception v0

    .line 172
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 168
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method clearRetryTimer()V
    .locals 1

    .line 1142
    iget-object v0, p0, Lcom/metamoji/media/MediaUploadManager2;->retryTimer_:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1144
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 1145
    iput-object v0, p0, Lcom/metamoji/media/MediaUploadManager2;->retryTimer_:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method collectSoundUnit(Lcom/metamoji/df/model/IModel;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/df/model/IModel;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/metamoji/df/model/IModel;",
            ">;"
        }
    .end annotation

    .line 1223
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1224
    invoke-static {}, Lcom/metamoji/nt/NtFactoryMaps;->createTransportModelTraverser()Lcom/metamoji/df/controller/ModelTraverser;

    move-result-object v1

    .line 1225
    new-instance v2, Lcom/metamoji/media/MediaUploadManager2$11;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/media/MediaUploadManager2$11;-><init>(Lcom/metamoji/media/MediaUploadManager2;Ljava/util/Map;)V

    .line 1237
    new-instance v3, Lcom/metamoji/df/controller/ModelVisitContext;

    invoke-direct {v3, v2}, Lcom/metamoji/df/controller/ModelVisitContext;-><init>(Lcom/metamoji/df/controller/IModelVisitor;)V

    .line 1238
    invoke-virtual {v1, p1, v3}, Lcom/metamoji/df/controller/ModelTraverser;->traverse(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/ModelVisitContext;)V

    return-object v0
.end method

.method public destroy()V
    .locals 1

    .line 118
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/metamoji/cm/CmTaskManager;->removeOnIdleListener(Lcom/metamoji/cm/CmTaskManager$IOnIdleProcess;)V

    return-void
.end method

.method public didChangeConnectionMode(Z)V
    .locals 1

    .line 1129
    const-string v0, "didChangeConnectionMode"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1132
    invoke-virtual {p0}, Lcom/metamoji/media/MediaUploadManager2;->clearRetryTimer()V

    .line 1133
    invoke-virtual {p0}, Lcom/metamoji/media/MediaUploadManager2;->syncMediaUploadOnIdle()V

    .line 1134
    invoke-virtual {p0}, Lcom/metamoji/media/MediaUploadManager2;->syncVoicePlayList()V

    :cond_0
    return-void
.end method

.method public hasSoundUnit(Lcom/metamoji/df/model/IModel;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 1207
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/metamoji/media/MediaUploadManager2;->collectSoundUnit(Lcom/metamoji/df/model/IModel;)Ljava/util/Map;

    move-result-object p1

    .line 1208
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 1212
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 1217
    throw p1

    :catch_0
    :cond_1
    return v0
.end method

.method isNeedSyncMediaUpload()Z
    .locals 2

    .line 315
    invoke-virtual {p0}, Lcom/metamoji/media/MediaUploadManager2;->needsUploadFiles()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 318
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/media/MediaUploadManager2;->needsUploadTitles()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isUploaded(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 730
    :cond_0
    iget-object v1, p0, Lcom/metamoji/media/MediaUploadManager2;->needsUploadFiles_:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    return v0
.end method

.method public needsUploadFiles()Z
    .locals 4

    .line 994
    sget-object v0, Lcom/metamoji/media/MediaUploadManager2;->lockObjectForUploadFiles_:Ljava/lang/Object;

    monitor-enter v0

    .line 996
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/metamoji/media/MediaUploadManager2;->needsUploadFiles_:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 997
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 999
    iget-object v3, p0, Lcom/metamoji/media/MediaUploadManager2;->needsUploadFiles_:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-nez v2, :cond_1

    goto :goto_0

    .line 1007
    :cond_1
    const-string v3, "filePath"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1008
    invoke-static {v2}, Lcom/metamoji/media/MediaUploadManager2;->isFileExist(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 1015
    :goto_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public needsUploadTitles()Z
    .locals 3

    .line 1025
    iget-object v0, p0, Lcom/metamoji/media/MediaUploadManager2;->needsUploadTitles_:Ljava/util/Map;

    monitor-enter v0

    .line 1026
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/metamoji/media/MediaUploadManager2;->needsUploadTitles_:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1027
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1028
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 1034
    :goto_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyDocumentTitleChanged(Lcom/metamoji/dvm/fw/IDvmDocumentEditor;Ljava/lang/String;)V
    .locals 9

    .line 1044
    invoke-interface {p1}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    .line 1045
    invoke-interface {v0}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 1047
    invoke-static {}, Lcom/metamoji/nt/NtFactoryMaps;->createIdentifierModelTraverser()Lcom/metamoji/df/controller/ModelTraverser;

    move-result-object v2

    .line 1048
    new-instance v3, Lcom/metamoji/media/MediaUploadManager2$8;

    invoke-direct {v3, p0}, Lcom/metamoji/media/MediaUploadManager2$8;-><init>(Lcom/metamoji/media/MediaUploadManager2;)V

    .line 1059
    invoke-static {v0, v2, v3}, Lcom/metamoji/un/sound/UnSoundUtil;->soundUnitIdentifiers(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/ModelTraverser;Lcom/metamoji/df/controller/IModelVisitor;)Ljava/util/Map;

    move-result-object v0

    .line 1061
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 1062
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1063
    invoke-static {v0, v2}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/df/model/IModel;

    .line 1064
    const-string v3, "recordId"

    invoke-interface {v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1065
    const-string v3, "mediaId"

    invoke-interface {v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v4, :cond_1

    .line 1067
    sget v2, Lcom/metamoji/noteanytime/R$string;->SCHOOL_SOUND_BUTTON:I

    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/media/MediaUploadManager2;->registTitle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_0

    .line 1070
    sget v1, Lcom/metamoji/noteanytime/R$string;->SCHOOL_SOUND_BUTTON:I

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v3, p2

    move-object v4, v2

    move-object v2, v1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/media/MediaUploadManager2;->registTitle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 1075
    :cond_2
    invoke-static {p2, p1}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->uploadTitlesForNoteTitle(Ljava/lang/String;Lcom/metamoji/dvm/fw/IDvmDocumentEditor;)Z

    .line 1077
    invoke-virtual {p0}, Lcom/metamoji/media/MediaUploadManager2;->saveNeedsUploadTitles()V

    .line 1082
    sget-object v4, Lcom/metamoji/media/MediaUploadManager2;->lockObjectForUploadFiles_:Ljava/lang/Object;

    monitor-enter v4

    .line 1083
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    iget-object v5, p0, Lcom/metamoji/media/MediaUploadManager2;->needsUploadFiles_:Ljava/util/Map;

    invoke-direct {v0, v5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 1084
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1085
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1088
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1089
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .line 1091
    const-string v8, "docId"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-nez v7, :cond_3

    goto :goto_1

    .line 1095
    :cond_3
    invoke-interface {p1}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->getDocumentID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_1

    .line 1098
    :cond_4
    invoke-virtual {p0, p2, v6}, Lcom/metamoji/media/MediaUploadManager2;->setDocumentTitle(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    goto :goto_1

    :cond_5
    if-eqz v5, :cond_6

    .line 1103
    invoke-virtual {p0}, Lcom/metamoji/media/MediaUploadManager2;->saveNeedsUploadFiles()V

    :cond_6
    return-void

    :catchall_0
    move-exception v0

    .line 1085
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method notifyUploadedFile(Ljava/lang/String;)V
    .locals 2

    .line 690
    invoke-virtual {p0, p1}, Lcom/metamoji/media/MediaUploadManager2;->removeUploadFileDataForTicket(Ljava/lang/String;)V

    .line 692
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 698
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 705
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getRecordingsController()Lcom/metamoji/media/voice/controller/VcRecordingsController;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 707
    invoke-virtual {v1, p1}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->notifyUploadedFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 714
    :cond_2
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    if-nez v0, :cond_3

    :goto_0
    return-void

    .line 720
    :cond_3
    new-instance v1, Lcom/metamoji/media/MediaUploadedEventContext;

    invoke-direct {v1}, Lcom/metamoji/media/MediaUploadedEventContext;-><init>()V

    .line 721
    iput-object p1, v1, Lcom/metamoji/media/MediaUploadedEventContext;->ticket:Ljava/lang/String;

    const/4 p1, 0x1

    .line 722
    iput-boolean p1, v1, Lcom/metamoji/media/MediaUploadedEventContext;->uploaded:Z

    const/4 p1, 0x0

    .line 723
    invoke-virtual {v0, v1, p1}, Lcom/metamoji/nt/NtPageController;->broadcastEventToDescendent(Lcom/metamoji/df/controller/BroadcastContext;Z)V

    return-void
.end method

.method public onDocumentEditStart()V
    .locals 0

    .line 1165
    invoke-virtual {p0}, Lcom/metamoji/media/MediaUploadManager2;->syncVoicePlayList()V

    return-void
.end method

.method public onIdle()V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/metamoji/media/MediaUploadManager2;->retryTimer_:Ljava/util/Timer;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 183
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 188
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 193
    :cond_2
    iget-boolean v0, p0, Lcom/metamoji/media/MediaUploadManager2;->isDoingsyncMediaUpload_:Z

    if-eqz v0, :cond_3

    :goto_0
    return-void

    .line 199
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/media/MediaUploadManager2;->syncMediaUploadOnIdle()V

    return-void
.end method

.method public prepare()V
    .locals 0

    return-void
.end method

.method public registFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/nt/NtDocument;Z)V
    .locals 10

    .line 393
    invoke-virtual {p4}, Lcom/metamoji/nt/NtDocument;->getDriveID()Ljava/lang/String;

    move-result-object v4

    .line 394
    invoke-virtual {p4}, Lcom/metamoji/nt/NtDocument;->getDocumentTitle()Ljava/lang/String;

    move-result-object v5

    .line 395
    invoke-virtual {p4}, Lcom/metamoji/nt/NtDocument;->getDocumentID()Ljava/lang/String;

    move-result-object v6

    .line 396
    invoke-virtual {p4}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result v7

    const/4 v0, 0x1

    if-ne v7, v0, :cond_0

    .line 400
    const-string v0, "MMJNsShareSettings"

    invoke-virtual {p4, v0}, Lcom/metamoji/nt/NtDocument;->getDocumentSettingsForType(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object p4

    check-cast p4, Lcom/metamoji/ns/NsCollaboSettings;

    .line 401
    invoke-virtual {p4}, Lcom/metamoji/ns/NsCollaboSettings;->getRoomId()Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v8, p4

    move v9, p5

    .line 404
    invoke-virtual/range {v0 .. v9}, Lcom/metamoji/media/MediaUploadManager2;->registFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V

    return-void
.end method

.method public registFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 3

    .line 408
    invoke-static {}, Lcom/metamoji/ns/NsCollaboCommand;->isShareNoteOwner()Z

    move-result v0

    .line 410
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 411
    const-string/jumbo v2, "ticket"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    const-string v2, "mediaId"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    const-string v2, "filePath"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    const-string p1, "documentTitle"

    invoke-interface {v1, p1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    const-string p1, "isCollabo"

    invoke-static {p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p5

    invoke-interface {v1, p1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    const-string p1, "isShareNoteOwner"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p5

    invoke-interface {v1, p1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_0

    .line 420
    const-string p1, "mediaTitle"

    invoke-interface {v1, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 424
    :cond_0
    const-string p1, "mediaTitle"

    const-string p3, ""

    invoke-interface {v1, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    if-eqz p4, :cond_1

    .line 428
    const-string p1, "driveId"

    invoke-interface {v1, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p8, :cond_2

    .line 431
    const-string/jumbo p1, "roomId"

    invoke-interface {v1, p1, p8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz p6, :cond_3

    .line 434
    const-string p1, "docId"

    invoke-interface {v1, p1, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    :cond_3
    sget-object p1, Lcom/metamoji/media/MediaUploadManager2;->lockObjectForUploadFiles_:Ljava/lang/Object;

    monitor-enter p1

    .line 442
    :try_start_0
    iget-object p3, p0, Lcom/metamoji/media/MediaUploadManager2;->needsUploadFiles_:Ljava/util/Map;

    invoke-interface {p3, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    invoke-virtual {p0}, Lcom/metamoji/media/MediaUploadManager2;->saveNeedsUploadFiles()V

    .line 444
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p9, :cond_4

    goto :goto_1

    .line 451
    :cond_4
    invoke-static {}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->isNetworkAvailable()Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_1

    .line 457
    :cond_5
    invoke-static {}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils;->isUseSync()Z

    move-result p1

    if-nez p1, :cond_6

    if-nez p7, :cond_6

    :goto_1
    return-void

    .line 462
    :cond_6
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/metamoji/media/MediaUploadManager2$3;

    invoke-direct {p2, p0, v1}, Lcom/metamoji/media/MediaUploadManager2$3;-><init>(Lcom/metamoji/media/MediaUploadManager2;Ljava/util/Map;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 486
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void

    :catchall_0
    move-exception p2

    .line 444
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public registTitle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 2

    .line 494
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 495
    const-string v1, "documentTitle"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    const-string p2, "mediaTitle"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    const-string p1, "isMediaId"

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_3

    .line 499
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 506
    :cond_0
    sget-object p1, Lcom/metamoji/media/MediaUploadManager2;->lockObjectForUploadTitles_:Ljava/lang/Object;

    monitor-enter p1

    .line 508
    :try_start_0
    iget-object p2, p0, Lcom/metamoji/media/MediaUploadManager2;->needsUploadTitles_:Ljava/util/Map;

    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p5, :cond_2

    .line 511
    invoke-virtual {p0}, Lcom/metamoji/media/MediaUploadManager2;->saveNeedsUploadTitles()V

    .line 513
    invoke-static {}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->isNetworkAvailable()Z

    move-result p2

    if-nez p2, :cond_1

    .line 515
    monitor-exit p1

    return-void

    .line 518
    :cond_1
    new-instance p2, Ljava/lang/Thread;

    new-instance p3, Lcom/metamoji/media/MediaUploadManager2$4;

    invoke-direct {p3, p0}, Lcom/metamoji/media/MediaUploadManager2$4;-><init>(Lcom/metamoji/media/MediaUploadManager2;)V

    invoke-direct {p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 524
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 526
    :cond_2
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_3
    :goto_0
    return-void
.end method

.method public removeUploadFileDataForTicket(Ljava/lang/String;)V
    .locals 2

    .line 333
    sget-object v0, Lcom/metamoji/media/MediaUploadManager2;->lockObjectForUploadFiles_:Ljava/lang/Object;

    monitor-enter v0

    .line 334
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/media/MediaUploadManager2;->needsUploadFiles_:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    invoke-virtual {p0}, Lcom/metamoji/media/MediaUploadManager2;->saveNeedsUploadFiles()V

    return-void

    :catchall_0
    move-exception p1

    .line 335
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public removeUploadTitleDataForTicket(Ljava/lang/String;)V
    .locals 2

    .line 359
    sget-object v0, Lcom/metamoji/media/MediaUploadManager2;->lockObjectForUploadTitles_:Ljava/lang/Object;

    monitor-enter v0

    .line 360
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/media/MediaUploadManager2;->needsUploadTitles_:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    invoke-virtual {p0}, Lcom/metamoji/media/MediaUploadManager2;->saveNeedsUploadTitles()V

    return-void

    :catchall_0
    move-exception p1

    .line 361
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public restoreNeedsUploadDatas()V
    .locals 3

    const/4 v0, 0x0

    .line 138
    iput-boolean v0, p0, Lcom/metamoji/media/MediaUploadManager2;->isUpdatingUserInfo_:Z

    .line 139
    iput-boolean v0, p0, Lcom/metamoji/media/MediaUploadManager2;->isDiskFull_:Z

    .line 141
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 143
    const-string v1, "MMJMediaUploadFilesData"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtUserDefaults;->getMapValue(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 144
    sget-object v2, Lcom/metamoji/media/MediaUploadManager2;->lockObjectForUploadFiles_:Ljava/lang/Object;

    monitor-enter v2

    if-nez v1, :cond_0

    .line 146
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/metamoji/media/MediaUploadManager2;->needsUploadFiles_:Ljava/util/Map;

    goto :goto_0

    .line 148
    :cond_0
    iput-object v1, p0, Lcom/metamoji/media/MediaUploadManager2;->needsUploadFiles_:Ljava/util/Map;

    .line 150
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 152
    const-string v1, "MMJMediaUploadTitlesData"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtUserDefaults;->getMapValue(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 153
    sget-object v1, Lcom/metamoji/media/MediaUploadManager2;->lockObjectForUploadTitles_:Ljava/lang/Object;

    monitor-enter v1

    if-nez v0, :cond_1

    .line 155
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/media/MediaUploadManager2;->needsUploadTitles_:Ljava/util/Map;

    goto :goto_1

    .line 157
    :cond_1
    iput-object v0, p0, Lcom/metamoji/media/MediaUploadManager2;->needsUploadTitles_:Ljava/util/Map;

    .line 159
    :goto_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 150
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method saveNeedsUploadFiles()V
    .locals 4

    .line 342
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 344
    sget-object v1, Lcom/metamoji/media/MediaUploadManager2;->lockObjectForUploadFiles_:Ljava/lang/Object;

    monitor-enter v1

    .line 346
    :try_start_0
    const-string v2, "MMJMediaUploadFilesData"

    iget-object v3, p0, Lcom/metamoji/media/MediaUploadManager2;->needsUploadFiles_:Ljava/util/Map;

    invoke-virtual {v0, v2, v3}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Ljava/util/Map;)V

    .line 347
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public saveNeedsUploadTitles()V
    .locals 4

    .line 368
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 370
    sget-object v1, Lcom/metamoji/media/MediaUploadManager2;->lockObjectForUploadTitles_:Ljava/lang/Object;

    monitor-enter v1

    .line 371
    :try_start_0
    const-string v2, "MMJMediaUploadTitlesData"

    iget-object v3, p0, Lcom/metamoji/media/MediaUploadManager2;->needsUploadTitles_:Ljava/util/Map;

    invoke-virtual {v0, v2, v3}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Ljava/util/Map;)V

    .line 372
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDocumentTitle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 376
    sget-object v0, Lcom/metamoji/media/MediaUploadManager2;->lockObjectForUploadFiles_:Ljava/lang/Object;

    monitor-enter v0

    .line 377
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/media/MediaUploadManager2;->needsUploadTitles_:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_0

    .line 379
    monitor-exit v0

    return-void

    .line 382
    :cond_0
    const-string v2, "documentTitle"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    iget-object p1, p0, Lcom/metamoji/media/MediaUploadManager2;->needsUploadFiles_:Ljava/util/Map;

    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method startRetryTimer()V
    .locals 4

    .line 1151
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/metamoji/media/MediaUploadManager2;->retryTimer_:Ljava/util/Timer;

    .line 1152
    new-instance v1, Lcom/metamoji/media/MediaUploadManager2$9;

    invoke-direct {v1, p0}, Lcom/metamoji/media/MediaUploadManager2$9;-><init>(Lcom/metamoji/media/MediaUploadManager2;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public syncMediaUploadForLogout()Z
    .locals 3

    .line 241
    invoke-virtual {p0}, Lcom/metamoji/media/MediaUploadManager2;->needsUploadFiles()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {p0, v2}, Lcom/metamoji/media/MediaUploadManager2;->uploadFiles(Z)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 248
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/media/MediaUploadManager2;->needsUploadTitles()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    invoke-virtual {p0, v2}, Lcom/metamoji/media/MediaUploadManager2;->uploadTitles(Z)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 257
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/media/MediaUploadManager2;->isNeedSyncMediaUpload()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method public syncMediaUploadForSync(Ljava/lang/Runnable;)V
    .locals 2

    .line 268
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/metamoji/media/MediaUploadManager2$2;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/media/MediaUploadManager2$2;-><init>(Lcom/metamoji/media/MediaUploadManager2;Ljava/lang/Runnable;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 298
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method syncMediaUploadOnIdle()V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/metamoji/media/MediaUploadManager2;->retryTimer_:Ljava/util/Timer;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 209
    iput-boolean v0, p0, Lcom/metamoji/media/MediaUploadManager2;->isDoingsyncMediaUpload_:Z

    .line 211
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/metamoji/media/MediaUploadManager2$1;

    invoke-direct {v1, p0}, Lcom/metamoji/media/MediaUploadManager2$1;-><init>(Lcom/metamoji/media/MediaUploadManager2;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 237
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public syncVoicePlayList()V
    .locals 3

    .line 1169
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/media/MediaUploadManager2$10;

    invoke-direct {v1, p0}, Lcom/metamoji/media/MediaUploadManager2$10;-><init>(Lcom/metamoji/media/MediaUploadManager2;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void
.end method

.method updateCabinetUserInfo(Z)Lcom/metamoji/cs/dc/user/CsDCUserInfo;
    .locals 7

    .line 535
    new-instance v0, Lcom/metamoji/cm/CmContext;

    invoke-direct {v0}, Lcom/metamoji/cm/CmContext;-><init>()V

    const/4 v1, 0x1

    .line 536
    iput-boolean v1, p0, Lcom/metamoji/media/MediaUploadManager2;->isUpdatingUserInfo_:Z

    .line 537
    new-instance v2, Lcom/metamoji/cm/ManualResetEvent;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/metamoji/cm/ManualResetEvent;-><init>(Z)V

    .line 540
    new-instance v4, Lcom/metamoji/media/MediaUploadManager2$5;

    invoke-direct {v4, p0, v0, v2}, Lcom/metamoji/media/MediaUploadManager2$5;-><init>(Lcom/metamoji/media/MediaUploadManager2;Lcom/metamoji/cm/CmContext;Lcom/metamoji/cm/ManualResetEvent;)V

    .line 560
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v5

    if-nez p1, :cond_0

    .line 562
    invoke-virtual {v5, v1}, Lcom/metamoji/cm/CmTaskManager;->suppressWaitScreen(Z)V

    .line 565
    :cond_0
    :try_start_0
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v6, v3, [Ljava/lang/Void;

    invoke-virtual {v4, v1, v6}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 566
    invoke-virtual {v2}, Lcom/metamoji/cm/ManualResetEvent;->waitOne()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 568
    :catch_0
    :try_start_1
    invoke-virtual {p0}, Lcom/metamoji/media/MediaUploadManager2;->startRetryTimer()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_1

    .line 571
    :goto_0
    invoke-virtual {v5, v3}, Lcom/metamoji/cm/CmTaskManager;->suppressWaitScreen(Z)V

    .line 575
    :cond_1
    iput-boolean v3, p0, Lcom/metamoji/media/MediaUploadManager2;->isUpdatingUserInfo_:Z

    .line 576
    const-string/jumbo p1, "result"

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    return-object p1

    :goto_1
    if-nez p1, :cond_2

    .line 571
    invoke-virtual {v5, v3}, Lcom/metamoji/cm/CmTaskManager;->suppressWaitScreen(Z)V

    .line 573
    :cond_2
    throw v0
.end method

.method uploadFile(Ljava/util/Map;Lcom/metamoji/cs/dc/user/CsDCUserInfo;Z)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/metamoji/cs/dc/user/CsDCUserInfo;",
            "Z)Z"
        }
    .end annotation

    .line 583
    const-string v0, "documentTitle"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 584
    const-string v1, "filePath"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 585
    const-string/jumbo v2, "ticket"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 586
    const-string v3, "mediaId"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 588
    const-string v4, "mediaTitle"

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 590
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_0

    .line 588
    :cond_0
    const-string v4, ""

    .line 597
    :goto_0
    const-string v5, "driveId"

    invoke-interface {p1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    .line 599
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v5, v7

    .line 602
    :goto_1
    const-string/jumbo v6, "roomId"

    invoke-interface {p1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 604
    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Ljava/lang/String;

    :cond_2
    const/4 p1, 0x0

    if-nez p2, :cond_3

    return p1

    :cond_3
    if-nez v7, :cond_5

    .line 610
    iget v6, p2, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userType:I

    const/4 v8, 0x4

    if-ne v6, v8, :cond_4

    iget-object p2, p2, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    if-nez p2, :cond_5

    :cond_4
    return p1

    :cond_5
    const/4 p2, 0x1

    if-nez p3, :cond_6

    .line 617
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v6

    invoke-virtual {v6, p2}, Lcom/metamoji/cm/CmTaskManager;->suppressWaitScreen(Z)V

    .line 623
    :cond_6
    new-instance v6, Lcom/metamoji/cm/CmContext;

    invoke-direct {v6}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 624
    new-instance v8, Lcom/metamoji/cm/ResetableEvent;

    invoke-direct {v8, p1, p2}, Lcom/metamoji/cm/ResetableEvent;-><init>(ZZ)V

    .line 628
    new-instance v9, Lcom/metamoji/media/MediaUploadManager2$6;

    invoke-direct {v9, p0, v6, v2, v8}, Lcom/metamoji/media/MediaUploadManager2$6;-><init>(Lcom/metamoji/media/MediaUploadManager2;Lcom/metamoji/cm/CmContext;Ljava/lang/String;Lcom/metamoji/cm/ResetableEvent;)V

    .line 651
    new-instance v10, Lcom/metamoji/media/service/MediaBgTaskForUpload;

    sget-object v11, Lcom/metamoji/media/service/MediaBgTask$IMediaAction;->NOP:Lcom/metamoji/media/service/MediaBgTask$IMediaAction;

    invoke-direct {v10, v11, v9}, Lcom/metamoji/media/service/MediaBgTaskForUpload;-><init>(Lcom/metamoji/media/service/MediaBgTask$IMediaAction;Lcom/metamoji/media/service/MediaBgTaskForUpload$IMediaBgTaskForUploadCompleteAction;)V

    .line 652
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    .line 653
    invoke-static {}, Lcom/metamoji/media/MediaUtil;->makeRecorderName()Ljava/lang/String;

    move-result-object v11

    .line 655
    invoke-virtual {v10, v1}, Lcom/metamoji/media/service/MediaBgTaskForUpload;->setShareFile(Ljava/lang/String;)V

    .line 656
    invoke-static {v4, v0}, Lcom/metamoji/media/MediaUtil;->titleOnMediaServer(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/metamoji/media/service/MediaBgTaskForUpload;->setTitle(Ljava/lang/String;)V

    .line 657
    invoke-virtual {v10, v7}, Lcom/metamoji/media/service/MediaBgTaskForUpload;->setRoomId(Ljava/lang/String;)V

    .line 658
    invoke-virtual {v10, v5}, Lcom/metamoji/media/service/MediaBgTaskForUpload;->setDriveId(Ljava/lang/String;)V

    .line 659
    invoke-virtual {v10, v11}, Lcom/metamoji/media/service/MediaBgTaskForUpload;->setNickname(Ljava/lang/String;)V

    .line 660
    invoke-virtual {v10, v9}, Lcom/metamoji/media/service/MediaBgTaskForUpload;->setDate(Ljava/util/Date;)V

    .line 661
    invoke-virtual {v10, v2}, Lcom/metamoji/media/service/MediaBgTaskForUpload;->setTicket(Ljava/lang/String;)V

    .line 662
    invoke-virtual {v10, v3}, Lcom/metamoji/media/service/MediaBgTaskForUpload;->setTargetId(Ljava/lang/String;)V

    .line 663
    invoke-virtual {v10, p2}, Lcom/metamoji/media/service/MediaBgTaskForUpload;->setIsMediaId(Z)V

    .line 665
    const-string p2, "MediaUpload:Start:ticket = %s"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 666
    invoke-virtual {v10}, Lcom/metamoji/media/service/MediaBgTaskForUpload;->doInBackground()V

    .line 668
    :try_start_0
    invoke-virtual {v8}, Lcom/metamoji/cm/ResetableEvent;->reset()V

    .line 669
    invoke-virtual {v8}, Lcom/metamoji/cm/ResetableEvent;->waitOne()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    .line 671
    invoke-virtual {p2}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "MediaUploadError : error = %s"

    invoke-static {v0, p2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    if-nez p3, :cond_7

    .line 675
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/metamoji/cm/CmTaskManager;->suppressWaitScreen(Z)V

    .line 678
    :cond_7
    const-string/jumbo p2, "result"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v6, p2, p1}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public uploadFileDataForTicket(Ljava/lang/String;)Ljava/util/Map;
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

    .line 326
    iget-object v0, p0, Lcom/metamoji/media/MediaUploadManager2;->needsUploadFiles_:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1
.end method

.method public uploadFiles(Z)Z
    .locals 10

    .line 759
    sget-object v0, Lcom/metamoji/media/MediaUploadManager2;->lockObjectDoingSyncMediaUpload_:Ljava/lang/Object;

    monitor-enter v0

    .line 760
    :try_start_0
    invoke-static {}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->isNetworkAvailable()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 761
    monitor-exit v0

    return v2

    .line 764
    :cond_0
    invoke-static {}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils;->isUseSync()Z

    move-result v1

    .line 766
    iget-boolean v3, p0, Lcom/metamoji/media/MediaUploadManager2;->isUpdatingUserInfo_:Z

    if-eqz v3, :cond_1

    .line 767
    monitor-exit v0

    return v2

    .line 771
    :cond_1
    invoke-static {}, Lcom/metamoji/media/MediaUtil;->waitOperationQueue()V

    .line 777
    sget-object v3, Lcom/metamoji/media/MediaUploadManager2;->lockObjectForUploadFiles_:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 778
    :try_start_1
    new-instance v4, Ljava/util/HashMap;

    iget-object v5, p0, Lcom/metamoji/media/MediaUploadManager2;->needsUploadFiles_:Ljava/util/Map;

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 779
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 780
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 782
    :try_start_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    const/4 v6, 0x1

    if-nez v3, :cond_2

    .line 783
    monitor-exit v0

    return v6

    .line 786
    :cond_2
    invoke-virtual {p0, v2}, Lcom/metamoji/media/MediaUploadManager2;->updateCabinetUserInfo(Z)Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 787
    iget-object v7, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    if-nez v7, :cond_3

    goto/16 :goto_1

    .line 792
    :cond_3
    invoke-static {v3}, Lcom/metamoji/media/service/MediaBgTask;->login(Lcom/metamoji/cs/dc/user/CsDCUserInfo;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 793
    monitor-exit v0

    return v2

    .line 797
    :cond_4
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v7, v2

    :cond_5
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 798
    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    if-nez v8, :cond_6

    goto :goto_0

    .line 802
    :cond_6
    const-string v9, "isCollabo"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lcom/metamoji/cm/CmUtils;->toBool(Ljava/lang/Object;)Z

    move-result v9

    if-nez v1, :cond_7

    if-nez v9, :cond_7

    goto :goto_0

    .line 810
    :cond_7
    const-string v9, "filePath"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    if-eqz v9, :cond_5

    .line 811
    invoke-static {v9}, Lcom/metamoji/media/MediaUploadManager2;->isFileExist(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    goto :goto_0

    .line 815
    :cond_8
    const-string v7, "MediaUploadManager2:uploadFiles:uploadProcess:Start"

    invoke-static {v7}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    .line 817
    invoke-virtual {p0, v8, v3, p1}, Lcom/metamoji/media/MediaUploadManager2;->uploadFile(Ljava/util/Map;Lcom/metamoji/cs/dc/user/CsDCUserInfo;Z)Z

    move-result v7

    .line 821
    const-string v8, "MediaUploadManager2:uploadFiles:uploadProcess:End"

    invoke-static {v8}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    if-nez v7, :cond_9

    .line 824
    monitor-exit v0

    return v2

    .line 828
    :cond_9
    iget-boolean v7, p0, Lcom/metamoji/media/MediaUploadManager2;->cancelSyncMediaUpload_:Z

    if-eqz v7, :cond_a

    .line 829
    iput-boolean v2, p0, Lcom/metamoji/media/MediaUploadManager2;->cancelSyncMediaUpload_:Z

    .line 830
    monitor-exit v0

    return v2

    :cond_a
    move v7, v6

    goto :goto_0

    :cond_b
    if-eqz v7, :cond_c

    if-eqz p1, :cond_c

    .line 835
    invoke-static {}, Lcom/metamoji/media/MediaUtil;->waitOperationQueue()V

    .line 837
    :cond_c
    monitor-exit v0

    return v6

    .line 788
    :cond_d
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return v2

    :catchall_0
    move-exception p1

    .line 780
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :catchall_1
    move-exception p1

    .line 837
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method uploadTitle(Ljava/util/Map;ZLcom/metamoji/cs/dc/user/CsDCUserInfo;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/metamoji/cs/dc/user/CsDCUserInfo;",
            ")Z"
        }
    .end annotation

    .line 926
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 927
    new-instance v1, Lcom/metamoji/cm/CmContext;

    invoke-direct {v1}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 928
    new-instance v2, Lcom/metamoji/cm/ResetableEvent;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/metamoji/cm/ResetableEvent;-><init>(ZZ)V

    .line 930
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/metamoji/cm/CmTaskManager;->suppressWaitScreen(Z)V

    .line 933
    new-instance v4, Lcom/metamoji/media/MediaUploadManager2$7;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/metamoji/media/MediaUploadManager2$7;-><init>(Lcom/metamoji/media/MediaUploadManager2;Ljava/util/List;Lcom/metamoji/cm/CmContext;Lcom/metamoji/cm/ResetableEvent;)V

    .line 953
    new-instance v5, Lcom/metamoji/media/service/MediaBgTaskForSetMediaTitle;

    sget-object v6, Lcom/metamoji/media/service/MediaBgTask$IMediaAction;->NOP:Lcom/metamoji/media/service/MediaBgTask$IMediaAction;

    invoke-direct {v5, v6, v4}, Lcom/metamoji/media/service/MediaBgTaskForSetMediaTitle;-><init>(Lcom/metamoji/media/service/MediaBgTask$IMediaAction;Lcom/metamoji/media/service/MediaBgTaskForSetMediaTitle$IMediaBgTaskForSetMediaTitleCompleteAction;)V

    .line 954
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 955
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 956
    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 957
    invoke-virtual {v5, v6, v7}, Lcom/metamoji/media/service/MediaBgTaskForSetMediaTitle;->setTitle(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 959
    :cond_0
    invoke-virtual {v5, p2}, Lcom/metamoji/media/service/MediaBgTaskForSetMediaTitle;->setIsMediaId(Z)V

    .line 960
    invoke-virtual {v5, p3}, Lcom/metamoji/media/service/MediaBgTaskForSetMediaTitle;->setUserInfo(Lcom/metamoji/cs/dc/user/CsDCUserInfo;)V

    .line 962
    const-string p2, "MediaTitle:Start:targetIds = %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 963
    invoke-virtual {v5}, Lcom/metamoji/media/service/MediaBgTaskForSetMediaTitle;->doInBackground()V

    .line 966
    :try_start_0
    invoke-virtual {v2}, Lcom/metamoji/cm/ResetableEvent;->reset()V

    .line 967
    invoke-virtual {v2}, Lcom/metamoji/cm/ResetableEvent;->waitOne()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 969
    const-string p2, "MediaTitleError : error = %s"

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 972
    :goto_1
    sget-object p1, Lcom/metamoji/media/MediaUploadManager2;->lockObjectForUploadTitles_:Ljava/lang/Object;

    monitor-enter p1

    .line 974
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 976
    iget-object v0, p0, Lcom/metamoji/media/MediaUploadManager2;->needsUploadTitles_:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 978
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/media/MediaUploadManager2;->saveNeedsUploadTitles()V

    .line 979
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 981
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/metamoji/cm/CmTaskManager;->suppressWaitScreen(Z)V

    .line 983
    const-string/jumbo p1, "result"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :catchall_0
    move-exception p2

    .line 979
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2
.end method

.method public uploadTitleDataForTicket(Ljava/lang/String;)Ljava/util/Map;
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

    .line 352
    iget-object v0, p0, Lcom/metamoji/media/MediaUploadManager2;->needsUploadTitles_:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1
.end method

.method public uploadTitles(Z)Z
    .locals 11

    .line 842
    invoke-static {}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->isNetworkAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 847
    :cond_0
    invoke-static {}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils;->isUseSync()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    return v2

    .line 851
    :cond_1
    iget-boolean v0, p0, Lcom/metamoji/media/MediaUploadManager2;->isUpdatingUserInfo_:Z

    if-eqz v0, :cond_2

    return v1

    .line 856
    :cond_2
    sget-object v0, Lcom/metamoji/media/MediaUploadManager2;->lockObjectForUploadTitles_:Ljava/lang/Object;

    monitor-enter v0

    .line 857
    :try_start_0
    new-instance v3, Ljava/util/HashMap;

    iget-object v4, p0, Lcom/metamoji/media/MediaUploadManager2;->needsUploadTitles_:Ljava/util/Map;

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 858
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 860
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_3

    return v2

    .line 863
    :cond_3
    invoke-virtual {p0, p1}, Lcom/metamoji/media/MediaUploadManager2;->updateCabinetUserInfo(Z)Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 864
    iget-object v0, p1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    if-nez v0, :cond_4

    goto/16 :goto_2

    .line 867
    :cond_4
    iget v0, p1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userType:I

    const/4 v4, 0x4

    if-ne v0, v4, :cond_d

    iget-object v0, p1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    if-nez v0, :cond_5

    goto/16 :goto_1

    .line 871
    :cond_5
    invoke-static {p1}, Lcom/metamoji/media/service/MediaBgTask;->login(Lcom/metamoji/cs/dc/user/CsDCUserInfo;)Z

    move-result v0

    if-nez v0, :cond_6

    return v1

    .line 875
    :cond_6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 876
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 877
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 878
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_7

    goto :goto_0

    .line 882
    :cond_7
    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    if-nez v7, :cond_8

    goto :goto_0

    .line 886
    :cond_8
    const-string v8, "documentTitle"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 887
    const-string v9, ""

    .line 888
    const-string v10, "mediaTitle"

    invoke-interface {v7, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 889
    const-string v9, "mediaTitle"

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 895
    :cond_9
    const-string v10, "isMediaId"

    invoke-interface {v7, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lcom/metamoji/cm/CmUtils;->toBool(Ljava/lang/Object;)Z

    move-result v7

    .line 897
    invoke-static {v9, v8}, Lcom/metamoji/media/MediaUtil;->titleOnMediaServer(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v7, :cond_a

    .line 900
    invoke-interface {v0, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 902
    :cond_a
    invoke-interface {v4, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 907
    :cond_b
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_c

    .line 908
    invoke-virtual {p0, v0, v2, p1}, Lcom/metamoji/media/MediaUploadManager2;->uploadTitle(Ljava/util/Map;ZLcom/metamoji/cs/dc/user/CsDCUserInfo;)Z

    move-result v0

    if-nez v0, :cond_c

    return v1

    .line 915
    :cond_c
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_d

    .line 916
    invoke-virtual {p0, v4, v1, p1}, Lcom/metamoji/media/MediaUploadManager2;->uploadTitle(Ljava/util/Map;ZLcom/metamoji/cs/dc/user/CsDCUserInfo;)Z

    move-result p1

    if-nez p1, :cond_d

    return v1

    :cond_d
    :goto_1
    return v2

    :cond_e
    :goto_2
    return v1

    :catchall_0
    move-exception p1

    .line 858
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
