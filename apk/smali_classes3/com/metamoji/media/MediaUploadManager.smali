.class public Lcom/metamoji/media/MediaUploadManager;
.super Ljava/lang/Object;
.source "MediaUploadManager.java"

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

.field public static final UPLOAD_DATA_IS_COLLABO:Ljava/lang/String; = "isCollabo"

.field public static final UPLOAD_DATA_IS_SHARE_NOTE_OWNER:Ljava/lang/String; = "isShareNoteOwner"

.field public static final UPLOAD_DATA_MEDIA_TITLE:Ljava/lang/String; = "mediaTitle"

.field public static final UPLOAD_DATA_RECORD_ID:Ljava/lang/String; = "recordId"

.field public static final UPLOAD_DATA_RECORD_ID_NOTIFICATION_COMPLETED:Ljava/lang/String; = "recordIdNotificationCompleted"

.field public static final UPLOAD_DATA_ROOM_ID:Ljava/lang/String; = "roomId"

.field public static final UPLOAD_DATA_SOUND_FILE_PATH:Ljava/lang/String; = "soundFilePath"

.field public static final UPLOAD_DATA_TICKET:Ljava/lang/String; = "ticket"

.field public static final UPLOAD_DATA_UPLOADED:Ljava/lang/String; = "uploaded"

.field public static final UPLOAD_DATA_URL:Ljava/lang/String; = "url"

.field private static _sharedInstance:Lcom/metamoji/media/MediaUploadManager;

.field private static final lockObjectDoingSyncMediaUpload_:Ljava/lang/Object;

.field private static final lockObjectForUploadFiles_:Ljava/lang/Object;

.field private static final lockObjectForUploadTitles_:Ljava/lang/Object;


# instance fields
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
.method static bridge synthetic -$$Nest$sfgetlockObjectForUploadTitles_()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/metamoji/media/MediaUploadManager;->lockObjectForUploadTitles_:Ljava/lang/Object;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 77
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/metamoji/media/MediaUploadManager;->lockObjectForUploadFiles_:Ljava/lang/Object;

    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/metamoji/media/MediaUploadManager;->lockObjectForUploadTitles_:Ljava/lang/Object;

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/metamoji/media/MediaUploadManager;->lockObjectDoingSyncMediaUpload_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-virtual {p0}, Lcom/metamoji/media/MediaUploadManager;->restoreNeedsUploadDatas()V

    const/4 v0, 0x0

    .line 96
    iput-object v0, p0, Lcom/metamoji/media/MediaUploadManager;->retryTimer_:Ljava/util/Timer;

    .line 100
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    .line 101
    invoke-virtual {v0, p0}, Lcom/metamoji/cm/CmTaskManager;->addOnIdleListener(Lcom/metamoji/cm/CmTaskManager$IOnIdleProcess;)V

    return-void
.end method

.method public static SharedInstance()Lcom/metamoji/media/MediaUploadManager;
    .locals 1

    .line 116
    sget-object v0, Lcom/metamoji/media/MediaUploadManager;->_sharedInstance:Lcom/metamoji/media/MediaUploadManager;

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Lcom/metamoji/media/MediaUploadManager;

    invoke-direct {v0}, Lcom/metamoji/media/MediaUploadManager;-><init>()V

    sput-object v0, Lcom/metamoji/media/MediaUploadManager;->_sharedInstance:Lcom/metamoji/media/MediaUploadManager;

    .line 119
    :cond_0
    sget-object v0, Lcom/metamoji/media/MediaUploadManager;->_sharedInstance:Lcom/metamoji/media/MediaUploadManager;

    return-object v0
.end method

.method public static isFileExist(Ljava/lang/String;)Z
    .locals 1

    .line 1361
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1362
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method


# virtual methods
.method checkUploadError(I)V
    .locals 1

    if-eqz p1, :cond_2

    const/16 v0, 0x336

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 812
    :cond_0
    iget-boolean p1, p0, Lcom/metamoji/media/MediaUploadManager;->isDiskFull_:Z

    if-eqz p1, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 p1, 0x1

    .line 814
    iput-boolean p1, p0, Lcom/metamoji/media/MediaUploadManager;->isDiskFull_:Z

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 809
    iput-boolean p1, p0, Lcom/metamoji/media/MediaUploadManager;->isDiskFull_:Z

    return-void
.end method

.method public clearNeedsUploadDatas()V
    .locals 2

    .line 157
    sget-object v0, Lcom/metamoji/media/MediaUploadManager;->lockObjectForUploadFiles_:Ljava/lang/Object;

    monitor-enter v0

    .line 158
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/media/MediaUploadManager;->needsUploadFiles_:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 159
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 160
    invoke-virtual {p0}, Lcom/metamoji/media/MediaUploadManager;->saveNeedsUploadFiles()V

    .line 161
    sget-object v1, Lcom/metamoji/media/MediaUploadManager;->lockObjectForUploadTitles_:Ljava/lang/Object;

    monitor-enter v1

    .line 162
    :try_start_1
    iget-object v0, p0, Lcom/metamoji/media/MediaUploadManager;->needsUploadTitles_:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 163
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    invoke-virtual {p0}, Lcom/metamoji/media/MediaUploadManager;->saveNeedsUploadTitles()V

    return-void

    :catchall_0
    move-exception v0

    .line 163
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 159
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method clearRetryTimer()V
    .locals 1

    .line 1385
    iget-object v0, p0, Lcom/metamoji/media/MediaUploadManager;->retryTimer_:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1387
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 1388
    iput-object v0, p0, Lcom/metamoji/media/MediaUploadManager;->retryTimer_:Ljava/util/Timer;

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

    .line 1630
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1631
    invoke-static {}, Lcom/metamoji/nt/NtFactoryMaps;->createTransportModelTraverser()Lcom/metamoji/df/controller/ModelTraverser;

    move-result-object v1

    .line 1632
    new-instance v2, Lcom/metamoji/media/MediaUploadManager$12;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/media/MediaUploadManager$12;-><init>(Lcom/metamoji/media/MediaUploadManager;Ljava/util/Map;)V

    .line 1644
    new-instance v3, Lcom/metamoji/df/controller/ModelVisitContext;

    invoke-direct {v3, v2}, Lcom/metamoji/df/controller/ModelVisitContext;-><init>(Lcom/metamoji/df/controller/IModelVisitor;)V

    .line 1645
    invoke-virtual {v1, p1, v3}, Lcom/metamoji/df/controller/ModelTraverser;->traverse(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/ModelVisitContext;)V

    return-object v0
.end method

.method public destroy()V
    .locals 1

    .line 109
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/metamoji/cm/CmTaskManager;->removeOnIdleListener(Lcom/metamoji/cm/CmTaskManager$IOnIdleProcess;)V

    return-void
.end method

.method public didChangeConnectionMode(Z)V
    .locals 1

    .line 1373
    const-string v0, "didChangeConnectionMode"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1376
    invoke-virtual {p0}, Lcom/metamoji/media/MediaUploadManager;->clearRetryTimer()V

    .line 1377
    invoke-virtual {p0}, Lcom/metamoji/media/MediaUploadManager;->syncMediaUpload()V

    :cond_0
    return-void
.end method

.method doBgTaskUpload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 6

    const/4 v0, 0x1

    if-nez p4, :cond_0

    .line 575
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/metamoji/cm/CmTaskManager;->suppressWaitScreen(Z)V

    .line 577
    :cond_0
    new-instance v1, Lcom/metamoji/cm/CmContext;

    invoke-direct {v1}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 578
    new-instance v2, Lcom/metamoji/cm/ResetableEvent;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0}, Lcom/metamoji/cm/ResetableEvent;-><init>(ZZ)V

    .line 581
    new-instance v0, Lcom/metamoji/media/MediaUploadManager$4;

    invoke-direct {v0, p0, p2, v1, v2}, Lcom/metamoji/media/MediaUploadManager$4;-><init>(Lcom/metamoji/media/MediaUploadManager;Ljava/lang/String;Lcom/metamoji/cm/CmContext;Lcom/metamoji/cm/ResetableEvent;)V

    .line 613
    new-instance v4, Lcom/metamoji/media/service/MediaBgTaskForAudioUpload;

    sget-object v5, Lcom/metamoji/media/service/MediaBgTask$IMediaAction;->NOP:Lcom/metamoji/media/service/MediaBgTask$IMediaAction;

    invoke-direct {v4, v5, v0}, Lcom/metamoji/media/service/MediaBgTaskForAudioUpload;-><init>(Lcom/metamoji/media/service/MediaBgTask$IMediaAction;Lcom/metamoji/media/service/MediaBgTaskForAudioUpload$IMediaBgTaskForAudioUploadCompleteAction;)V

    .line 615
    invoke-virtual {v4, p1}, Lcom/metamoji/media/service/MediaBgTaskForAudioUpload;->setShareFile(Ljava/lang/String;)V

    .line 616
    invoke-virtual {v4, p2}, Lcom/metamoji/media/service/MediaBgTaskForAudioUpload;->setTicket(Ljava/lang/String;)V

    .line 617
    invoke-virtual {v4, p3}, Lcom/metamoji/media/service/MediaBgTaskForAudioUpload;->setRecordId(Ljava/lang/String;)V

    .line 619
    const-string p1, "doBgTaskUpload:UploadMediaFile:Start:ticket = %s"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 620
    invoke-virtual {v4}, Lcom/metamoji/media/service/MediaBgTaskForAudioUpload;->doInBackground()V

    .line 623
    :try_start_0
    invoke-virtual {v2}, Lcom/metamoji/cm/ResetableEvent;->reset()V

    .line 624
    invoke-virtual {v2}, Lcom/metamoji/cm/ResetableEvent;->waitOne()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 626
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "MediaUploadError : error = %s"

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    if-nez p4, :cond_1

    .line 630
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/metamoji/cm/CmTaskManager;->suppressWaitScreen(Z)V

    .line 633
    :cond_1
    const-string/jumbo p1, "result"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public hasSoundUnit(Lcom/metamoji/df/model/IModel;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 1574
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/metamoji/media/MediaUploadManager;->collectSoundUnit(Lcom/metamoji/df/model/IModel;)Ljava/util/Map;

    move-result-object p1

    .line 1575
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 1579
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

    .line 1584
    throw p1

    :catch_0
    :cond_1
    return v0
.end method

.method public isUploaded(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 794
    :cond_0
    iget-object v1, p0, Lcom/metamoji/media/MediaUploadManager;->needsUploadFiles_:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    return v0
.end method

.method public needsUploadFiles()Z
    .locals 5

    .line 1266
    sget-object v0, Lcom/metamoji/media/MediaUploadManager;->lockObjectForUploadFiles_:Ljava/lang/Object;

    monitor-enter v0

    .line 1268
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/metamoji/media/MediaUploadManager;->needsUploadFiles_:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1269
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

    .line 1271
    iget-object v3, p0, Lcom/metamoji/media/MediaUploadManager;->needsUploadFiles_:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-nez v2, :cond_1

    goto :goto_0

    .line 1277
    :cond_1
    const-string/jumbo v3, "uploaded"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/cm/CmUtils;->toBool(Ljava/lang/Object;)Z

    move-result v3

    .line 1281
    const-string/jumbo v4, "soundFilePath"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1282
    invoke-static {v2}, Lcom/metamoji/media/MediaUploadManager;->isFileExist(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    if-nez v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 1292
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

    .line 1302
    iget-object v0, p0, Lcom/metamoji/media/MediaUploadManager;->needsUploadTitles_:Ljava/util/Map;

    monitor-enter v0

    .line 1303
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/metamoji/media/MediaUploadManager;->needsUploadTitles_:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1304
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1305
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 1311
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

.method notifyMediaUplaodToAllPages()V
    .locals 7

    const/4 v0, 0x0

    .line 1454
    invoke-virtual {p0, v0}, Lcom/metamoji/media/MediaUploadManager;->tentativeRegistCompletedTickets(Z)Ljava/util/List;

    move-result-object v1

    .line 1455
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 1459
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 1464
    :cond_1
    invoke-virtual {v2}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v3

    if-nez v3, :cond_2

    :goto_0
    return-void

    .line 1470
    :cond_2
    invoke-virtual {v3}, Lcom/metamoji/nt/NtNoteController;->getNumberOfPages()I

    move-result v4

    .line 1471
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    if-ge v0, v4, :cond_3

    .line 1473
    invoke-virtual {v3, v0}, Lcom/metamoji/nt/NtNoteController;->getPage(I)Lcom/metamoji/nt/NtPageController;

    move-result-object v6

    .line 1474
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1477
    :cond_3
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v3, Lcom/metamoji/media/MediaUploadManager$9;

    invoke-direct {v3, p0, v5, v2, v1}, Lcom/metamoji/media/MediaUploadManager$9;-><init>(Lcom/metamoji/media/MediaUploadManager;Ljava/util/List;Lcom/metamoji/nt/NtEditorWindowController;Ljava/util/List;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1, v1}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void
.end method

.method public notifyMediaUpload()V
    .locals 10

    .line 969
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 970
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 974
    sget-object v2, Lcom/metamoji/media/MediaUploadManager;->lockObjectForUploadFiles_:Ljava/lang/Object;

    monitor-enter v2

    .line 975
    :try_start_0
    new-instance v3, Ljava/util/HashMap;

    iget-object v4, p0, Lcom/metamoji/media/MediaUploadManager;->needsUploadFiles_:Ljava/util/Map;

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 976
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 977
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 978
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 979
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    if-nez v5, :cond_1

    goto :goto_0

    .line 986
    :cond_1
    const-string v6, "recordIdNotificationCompleted"

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 987
    const-string v6, "recordIdNotificationCompleted"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/metamoji/cm/CmUtils;->toBool(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    .line 989
    :goto_1
    const-string/jumbo v7, "uploaded"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lcom/metamoji/cm/CmUtils;->toBool(Ljava/lang/Object;)Z

    move-result v7

    if-nez v6, :cond_3

    .line 992
    const-string v8, "recordId"

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 993
    const-string/jumbo v9, "url"

    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_3

    if-eqz v8, :cond_3

    if-eqz v7, :cond_3

    .line 995
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 996
    const-string/jumbo v7, "ticket"

    invoke-interface {v6, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    const-string v4, "recordId"

    invoke-interface {v6, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 998
    const-string/jumbo v4, "url"

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 999
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    if-eqz v7, :cond_0

    if-eqz v6, :cond_0

    .line 1007
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1014
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 1015
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v3

    new-instance v4, Lcom/metamoji/media/MediaUploadManager$6;

    invoke-direct {v4, p0, v2}, Lcom/metamoji/media/MediaUploadManager$6;-><init>(Lcom/metamoji/media/MediaUploadManager;Ljava/util/Map;)V

    invoke-virtual {v3, v4}, Lcom/metamoji/cm/CmTaskManager;->runOnUIThreadAsync(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 1026
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1027
    invoke-virtual {p0, v1}, Lcom/metamoji/media/MediaUploadManager;->notifyUploadedFile(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    return-void

    :catchall_0
    move-exception v0

    .line 977
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public notifyMediaUploadToPage(Lcom/metamoji/nt/NtPageController;)V
    .locals 5

    .line 1415
    invoke-virtual {p1}, Lcom/metamoji/nt/NtPageController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/media/MediaUploadManager;->collectSoundUnit(Lcom/metamoji/df/model/IModel;)Ljava/util/Map;

    move-result-object p1

    .line 1416
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 1420
    invoke-virtual {p0, v0}, Lcom/metamoji/media/MediaUploadManager;->tentativeRegistCompletedTickets(Z)Ljava/util/List;

    move-result-object v0

    .line 1421
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 1422
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 1423
    const-string/jumbo v2, "ticket"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1431
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1432
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/df/model/IModel;

    .line 1433
    const-string v3, "recordId"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1434
    const-string/jumbo v4, "url"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1436
    invoke-virtual {p0, v2, v3, v1}, Lcom/metamoji/media/MediaUploadManager;->notifyUploadingFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1441
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/media/MediaUploadManager;->uploadedTickets()Ljava/util/List;

    move-result-object v0

    .line 1442
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 1443
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1444
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1446
    invoke-virtual {p0, v1}, Lcom/metamoji/media/MediaUploadManager;->notifyUploadedFile(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method

.method notifyUploadedFile(Ljava/lang/String;)V
    .locals 2

    .line 754
    invoke-virtual {p0, p1}, Lcom/metamoji/media/MediaUploadManager;->removeUploadFileDataForTicket(Ljava/lang/String;)V

    .line 756
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 762
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 769
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getRecordingsController()Lcom/metamoji/media/voice/controller/VcRecordingsController;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 771
    invoke-virtual {v1, p1}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->notifyUploadedFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 778
    :cond_2
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    if-nez v0, :cond_3

    :goto_0
    return-void

    .line 784
    :cond_3
    new-instance v1, Lcom/metamoji/media/MediaUploadedEventContext;

    invoke-direct {v1}, Lcom/metamoji/media/MediaUploadedEventContext;-><init>()V

    .line 785
    iput-object p1, v1, Lcom/metamoji/media/MediaUploadedEventContext;->ticket:Ljava/lang/String;

    const/4 p1, 0x1

    .line 786
    iput-boolean p1, v1, Lcom/metamoji/media/MediaUploadedEventContext;->uploaded:Z

    const/4 p1, 0x0

    .line 787
    invoke-virtual {v0, v1, p1}, Lcom/metamoji/nt/NtPageController;->broadcastEventToDescendent(Lcom/metamoji/df/controller/BroadcastContext;Z)V

    return-void
.end method

.method notifyUploadingFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 712
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 718
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 725
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getRecordingsController()Lcom/metamoji/media/voice/controller/VcRecordingsController;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 727
    invoke-virtual {v1, p1, p2, v2, p3}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->notifyUploadingFile(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 734
    :cond_2
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    if-nez v0, :cond_3

    :goto_0
    return-void

    .line 740
    :cond_3
    new-instance v1, Lcom/metamoji/media/MediaUploadingEventContext;

    invoke-direct {v1}, Lcom/metamoji/media/MediaUploadingEventContext;-><init>()V

    .line 741
    iput-object p1, v1, Lcom/metamoji/media/MediaUploadingEventContext;->ticket:Ljava/lang/String;

    .line 742
    iput-object p2, v1, Lcom/metamoji/media/MediaUploadingEventContext;->recordId:Ljava/lang/String;

    .line 743
    iput-object p3, v1, Lcom/metamoji/media/MediaUploadingEventContext;->url:Ljava/lang/String;

    .line 744
    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtPageController;->broadcastEventToDescendent(Lcom/metamoji/df/controller/BroadcastContext;Z)V

    return-void
.end method

.method public notifyUploadingFileToSoundUnit(Lcom/metamoji/df/model/IModel;Ljava/util/Map;Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/df/model/IModel;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1600
    const-string/jumbo v0, "url"

    const-string v1, "recordId"

    const/4 v2, 0x0

    .line 1602
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/metamoji/media/MediaUploadManager;->collectSoundUnit(Lcom/metamoji/df/model/IModel;)Ljava/util/Map;

    move-result-object p1

    .line 1603
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_0

    return v2

    .line 1607
    :cond_0
    const-string/jumbo v3, "ticket"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1610
    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1611
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/df/model/IModel;

    .line 1613
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1614
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 1616
    invoke-interface {p1, v1, v4}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1617
    invoke-interface {p1, v0, p2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 1620
    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return v2

    :catchall_0
    move-exception p1

    .line 1624
    throw p1

    :catch_0
    return v2
.end method

.method public onDocumentEditStart()V
    .locals 0

    .line 1408
    invoke-virtual {p0}, Lcom/metamoji/media/MediaUploadManager;->notifyMediaUpload()V

    .line 1410
    invoke-virtual {p0}, Lcom/metamoji/media/MediaUploadManager;->notifyMediaUplaodToAllPages()V

    return-void
.end method

.method public onIdle()V
    .locals 1

    .line 168
    iget-boolean v0, p0, Lcom/metamoji/media/MediaUploadManager;->isDoingsyncMediaUpload_:Z

    if-eqz v0, :cond_0

    return-void

    .line 173
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/media/MediaUploadManager;->syncMediaUpload()V

    return-void
.end method

.method public prepare()V
    .locals 0

    return-void
.end method

.method processOnePage(Lcom/metamoji/nt/NtPageController;Lcom/metamoji/nt/NtEditorWindowController;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/nt/NtPageController;",
            "Lcom/metamoji/nt/NtEditorWindowController;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 1493
    invoke-virtual {p1}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "notify soundUnit completed of page %s"

    invoke-static {v0, p2}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1497
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p2

    .line 1499
    :try_start_0
    new-instance v0, Lcom/metamoji/media/MediaUploadManager$10;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/media/MediaUploadManager$10;-><init>(Lcom/metamoji/media/MediaUploadManager;Lcom/metamoji/nt/NtPageController;)V

    invoke-virtual {p2, v0}, Lcom/metamoji/cm/CmTaskManager;->runModalOnBackground(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/df/controller/ControllerContext;

    .line 1522
    const-string v1, "notify soundUnit.processOnePage: restoreTemporary finished"

    invoke-static {v1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 1524
    invoke-virtual {p0, p1, p3}, Lcom/metamoji/media/MediaUploadManager;->processOneRestoredPage(Lcom/metamoji/nt/NtPageController;Ljava/util/List;)V

    .line 1527
    new-instance p3, Lcom/metamoji/media/MediaUploadManager$11;

    invoke-direct {p3, p0, p1, v0}, Lcom/metamoji/media/MediaUploadManager$11;-><init>(Lcom/metamoji/media/MediaUploadManager;Lcom/metamoji/nt/NtPageController;Lcom/metamoji/df/controller/ControllerContext;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/cm/CmTaskManager;->runModalOnBackground(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 1538
    const-string p1, "ReceiveAllData.processOnePage: turnInTemporary finished"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method processOneRestoredPage(Lcom/metamoji/nt/NtPageController;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/nt/NtPageController;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 1548
    invoke-virtual {p1}, Lcom/metamoji/nt/NtPageController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/media/MediaUploadManager;->collectSoundUnit(Lcom/metamoji/df/model/IModel;)Ljava/util/Map;

    move-result-object p1

    .line 1549
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1553
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1554
    const-string/jumbo v1, "ticket"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1562
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1563
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/df/model/IModel;

    .line 1564
    const-string v2, "recordId"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1565
    const-string/jumbo v3, "url"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1567
    invoke-virtual {p0, v1, v2, v0}, Lcom/metamoji/media/MediaUploadManager;->notifyUploadingFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public removeUploadFileDataForTicket(Ljava/lang/String;)V
    .locals 2

    .line 222
    sget-object v0, Lcom/metamoji/media/MediaUploadManager;->lockObjectForUploadFiles_:Ljava/lang/Object;

    monitor-enter v0

    .line 223
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/media/MediaUploadManager;->needsUploadFiles_:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    invoke-virtual {p0}, Lcom/metamoji/media/MediaUploadManager;->saveNeedsUploadFiles()V

    return-void

    :catchall_0
    move-exception p1

    .line 224
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public removeUploadTitleDataForTicket(Ljava/lang/String;)V
    .locals 2

    .line 248
    sget-object v0, Lcom/metamoji/media/MediaUploadManager;->lockObjectForUploadTitles_:Ljava/lang/Object;

    monitor-enter v0

    .line 249
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/media/MediaUploadManager;->needsUploadTitles_:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    invoke-virtual {p0}, Lcom/metamoji/media/MediaUploadManager;->saveNeedsUploadTitles()V

    return-void

    :catchall_0
    move-exception p1

    .line 250
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public restoreNeedsUploadDatas()V
    .locals 3

    const/4 v0, 0x0

    .line 129
    iput-boolean v0, p0, Lcom/metamoji/media/MediaUploadManager;->isUpdatingUserInfo_:Z

    .line 130
    iput-boolean v0, p0, Lcom/metamoji/media/MediaUploadManager;->isDiskFull_:Z

    .line 132
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 134
    const-string v1, "MMJSoundUnitUploadSoundFilesData"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtUserDefaults;->getMapValue(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 135
    sget-object v2, Lcom/metamoji/media/MediaUploadManager;->lockObjectForUploadFiles_:Ljava/lang/Object;

    monitor-enter v2

    if-nez v1, :cond_0

    .line 137
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/metamoji/media/MediaUploadManager;->needsUploadFiles_:Ljava/util/Map;

    goto :goto_0

    .line 139
    :cond_0
    iput-object v1, p0, Lcom/metamoji/media/MediaUploadManager;->needsUploadFiles_:Ljava/util/Map;

    .line 141
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 143
    const-string v1, "MMJSoundUnitUploadSoundTitlesData"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtUserDefaults;->getMapValue(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 144
    sget-object v1, Lcom/metamoji/media/MediaUploadManager;->lockObjectForUploadTitles_:Ljava/lang/Object;

    monitor-enter v1

    if-nez v0, :cond_1

    .line 146
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/media/MediaUploadManager;->needsUploadTitles_:Ljava/util/Map;

    goto :goto_1

    .line 148
    :cond_1
    iput-object v0, p0, Lcom/metamoji/media/MediaUploadManager;->needsUploadTitles_:Ljava/util/Map;

    .line 150
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

    .line 141
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method saveNeedsUploadFiles()V
    .locals 4

    .line 231
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 233
    sget-object v1, Lcom/metamoji/media/MediaUploadManager;->lockObjectForUploadFiles_:Ljava/lang/Object;

    monitor-enter v1

    .line 235
    :try_start_0
    const-string v2, "MMJSoundUnitUploadSoundFilesData"

    iget-object v3, p0, Lcom/metamoji/media/MediaUploadManager;->needsUploadFiles_:Ljava/util/Map;

    invoke-virtual {v0, v2, v3}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Ljava/util/Map;)V

    .line 236
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

    .line 257
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 259
    sget-object v1, Lcom/metamoji/media/MediaUploadManager;->lockObjectForUploadTitles_:Ljava/lang/Object;

    monitor-enter v1

    .line 261
    :try_start_0
    const-string v2, "MMJSoundUnitUploadSoundTitlesData"

    iget-object v3, p0, Lcom/metamoji/media/MediaUploadManager;->needsUploadTitles_:Ljava/util/Map;

    invoke-virtual {v0, v2, v3}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Ljava/util/Map;)V

    .line 262
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setRecordIdAndUrlToUploadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 690
    sget-object v0, Lcom/metamoji/media/MediaUploadManager;->lockObjectForUploadFiles_:Ljava/lang/Object;

    monitor-enter v0

    .line 692
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/media/MediaUploadManager;->needsUploadFiles_:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 694
    const-string v2, "recordId"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    const-string v2, "recordId"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    const-string/jumbo p1, "url"

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    const-string/jumbo p1, "url"

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    iget-object p1, p0, Lcom/metamoji/media/MediaUploadManager;->needsUploadFiles_:Ljava/util/Map;

    invoke-interface {p1, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    iget-object p1, p0, Lcom/metamoji/media/MediaUploadManager;->needsUploadFiles_:Ljava/util/Map;

    invoke-interface {p1, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    invoke-virtual {p0}, Lcom/metamoji/media/MediaUploadManager;->saveNeedsUploadFiles()V

    .line 704
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method setRecordIdNotificationCompleted(ZLjava/lang/String;)V
    .locals 3

    .line 667
    sget-object v0, Lcom/metamoji/media/MediaUploadManager;->lockObjectForUploadFiles_:Ljava/lang/Object;

    monitor-enter v0

    .line 669
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/media/MediaUploadManager;->needsUploadFiles_:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 670
    monitor-exit v0

    return-void

    .line 673
    :cond_0
    iget-object v1, p0, Lcom/metamoji/media/MediaUploadManager;->needsUploadFiles_:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 675
    const-string v2, "recordIdNotificationCompleted"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    const-string v2, "recordIdNotificationCompleted"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    iget-object p1, p0, Lcom/metamoji/media/MediaUploadManager;->needsUploadFiles_:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    iget-object p1, p0, Lcom/metamoji/media/MediaUploadManager;->needsUploadFiles_:Ljava/util/Map;

    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    invoke-virtual {p0}, Lcom/metamoji/media/MediaUploadManager;->saveNeedsUploadFiles()V

    .line 682
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setRecordIdNotificationCompletedToUploadData(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 662
    invoke-virtual {p0, v0, p1}, Lcom/metamoji/media/MediaUploadManager;->setRecordIdNotificationCompleted(ZLjava/lang/String;)V

    return-void
.end method

.method setUploadedToUploadData(Ljava/lang/String;)V
    .locals 4

    .line 643
    sget-object v0, Lcom/metamoji/media/MediaUploadManager;->lockObjectForUploadFiles_:Ljava/lang/Object;

    monitor-enter v0

    .line 645
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/media/MediaUploadManager;->needsUploadFiles_:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 647
    const-string/jumbo v2, "uploaded"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    const-string/jumbo v2, "uploaded"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    iget-object v2, p0, Lcom/metamoji/media/MediaUploadManager;->needsUploadFiles_:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    iget-object v2, p0, Lcom/metamoji/media/MediaUploadManager;->needsUploadFiles_:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    invoke-virtual {p0}, Lcom/metamoji/media/MediaUploadManager;->saveNeedsUploadFiles()V

    .line 654
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

    .line 1394
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/metamoji/media/MediaUploadManager;->retryTimer_:Ljava/util/Timer;

    .line 1395
    new-instance v1, Lcom/metamoji/media/MediaUploadManager$8;

    invoke-direct {v1, p0}, Lcom/metamoji/media/MediaUploadManager$8;-><init>(Lcom/metamoji/media/MediaUploadManager;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method syncMediaUpload()V
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/metamoji/media/MediaUploadManager;->retryTimer_:Ljava/util/Timer;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 183
    iput-boolean v0, p0, Lcom/metamoji/media/MediaUploadManager;->isDoingsyncMediaUpload_:Z

    .line 185
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/metamoji/media/MediaUploadManager$1;

    invoke-direct {v1, p0}, Lcom/metamoji/media/MediaUploadManager$1;-><init>(Lcom/metamoji/media/MediaUploadManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 211
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public tentativeRegistCompletedTickets(Z)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1187
    sget-object v0, Lcom/metamoji/media/MediaUploadManager;->lockObjectForUploadFiles_:Ljava/lang/Object;

    monitor-enter v0

    .line 1188
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/metamoji/media/MediaUploadManager;->needsUploadFiles_:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 1189
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1190
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1192
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1193
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-nez v4, :cond_1

    goto :goto_0

    .line 1200
    :cond_1
    const-string v5, "recordIdNotificationCompleted"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1201
    const-string v5, "recordIdNotificationCompleted"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/metamoji/cm/CmUtils;->toBool(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    .line 1206
    :goto_1
    const-string/jumbo v6, "soundFilePath"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1207
    invoke-static {v6}, Lcom/metamoji/media/MediaUploadManager;->isFileExist(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_0

    :cond_3
    if-nez v5, :cond_0

    .line 1212
    const-string v5, "recordId"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1213
    const-string/jumbo v6, "url"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1214
    const-string/jumbo v7, "roomId"

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1216
    const-string v8, "docId"

    invoke-interface {v4, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1217
    const-string v8, "docId"

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    goto :goto_2

    :cond_4
    const/4 v8, 0x0

    .line 1219
    :goto_2
    const-string v9, "driveId"

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz p1, :cond_6

    if-eqz v7, :cond_5

    goto :goto_0

    :cond_5
    if-nez v8, :cond_6

    goto :goto_0

    :cond_6
    if-eqz v6, :cond_0

    if-eqz v5, :cond_0

    .line 1236
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1237
    const-string/jumbo v9, "ticket"

    invoke-interface {v4, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1238
    const-string v3, "recordId"

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1239
    const-string/jumbo v3, "url"

    invoke-interface {v4, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v7, :cond_7

    .line 1243
    const-string/jumbo v3, "roomId"

    invoke-interface {v4, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    if-eqz v8, :cond_8

    .line 1247
    const-string v3, "docId"

    invoke-interface {v4, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1250
    :cond_8
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_9
    return-object v0

    :catchall_0
    move-exception p1

    .line 1190
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method updateUserInfo(Z)Z
    .locals 7

    .line 400
    new-instance v0, Lcom/metamoji/cm/CmContext;

    invoke-direct {v0}, Lcom/metamoji/cm/CmContext;-><init>()V

    const/4 v1, 0x1

    .line 401
    iput-boolean v1, p0, Lcom/metamoji/media/MediaUploadManager;->isUpdatingUserInfo_:Z

    .line 402
    new-instance v2, Lcom/metamoji/cm/ManualResetEvent;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/metamoji/cm/ManualResetEvent;-><init>(Z)V

    .line 404
    new-instance v4, Lcom/metamoji/media/MediaUploadManager$2;

    invoke-direct {v4, p0, v0, v2}, Lcom/metamoji/media/MediaUploadManager$2;-><init>(Lcom/metamoji/media/MediaUploadManager;Lcom/metamoji/cm/CmContext;Lcom/metamoji/cm/ManualResetEvent;)V

    .line 422
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v5

    if-nez p1, :cond_0

    .line 424
    invoke-virtual {v5, v1}, Lcom/metamoji/cm/CmTaskManager;->suppressWaitScreen(Z)V

    .line 427
    :cond_0
    :try_start_0
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v6, v3, [Ljava/lang/Void;

    invoke-virtual {v4, v1, v6}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 428
    invoke-virtual {v2}, Lcom/metamoji/cm/ManualResetEvent;->waitOne()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 430
    :catch_0
    :try_start_1
    invoke-virtual {p0}, Lcom/metamoji/media/MediaUploadManager;->startRetryTimer()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_1

    .line 433
    :goto_0
    invoke-virtual {v5, v3}, Lcom/metamoji/cm/CmTaskManager;->suppressWaitScreen(Z)V

    .line 437
    :cond_1
    iput-boolean v3, p0, Lcom/metamoji/media/MediaUploadManager;->isUpdatingUserInfo_:Z

    .line 438
    const-string/jumbo p1, "result"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :goto_1
    if-nez p1, :cond_2

    .line 433
    invoke-virtual {v5, v3}, Lcom/metamoji/cm/CmTaskManager;->suppressWaitScreen(Z)V

    .line 435
    :cond_2
    throw v0
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

    .line 215
    iget-object v0, p0, Lcom/metamoji/media/MediaUploadManager;->needsUploadFiles_:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1
.end method

.method public uploadFiles(Z)Z
    .locals 19

    move-object/from16 v1, p0

    move/from16 v0, p1

    .line 823
    sget-object v2, Lcom/metamoji/media/MediaUploadManager;->lockObjectDoingSyncMediaUpload_:Ljava/lang/Object;

    monitor-enter v2

    .line 824
    :try_start_0
    invoke-static {}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->isNetworkAvailable()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 825
    monitor-exit v2

    return v4

    .line 828
    :cond_0
    invoke-static {}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils;->isUseSync()Z

    move-result v3

    .line 830
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v5

    .line 831
    invoke-virtual {v5}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v5

    if-eqz v5, :cond_15

    .line 832
    iget-object v6, v5, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    if-nez v6, :cond_1

    goto/16 :goto_7

    .line 837
    :cond_1
    invoke-static {v5}, Lcom/metamoji/media/service/MediaBgTask;->login(Lcom/metamoji/cs/dc/user/CsDCUserInfo;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 838
    monitor-exit v2

    return v4

    .line 842
    :cond_2
    iget-boolean v5, v1, Lcom/metamoji/media/MediaUploadManager;->isUpdatingUserInfo_:Z

    if-eqz v5, :cond_3

    .line 843
    monitor-exit v2

    return v4

    .line 847
    :cond_3
    invoke-static {}, Lcom/metamoji/media/MediaUtil;->waitOperationQueue()V

    .line 849
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 852
    invoke-virtual {v5}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 854
    invoke-virtual {v5}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    .line 862
    :cond_4
    sget-object v5, Lcom/metamoji/media/MediaUploadManager;->lockObjectForUploadFiles_:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 863
    :try_start_1
    new-instance v6, Ljava/util/HashMap;

    iget-object v7, v1, Lcom/metamoji/media/MediaUploadManager;->needsUploadFiles_:Ljava/util/Map;

    invoke-direct {v6, v7}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 864
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 865
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 866
    :try_start_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 867
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 868
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v9, v4

    move v10, v9

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_11

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 869
    invoke-interface {v6, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map;

    if-nez v13, :cond_5

    :goto_1
    move/from16 v18, v3

    move/from16 v16, v4

    goto/16 :goto_3

    .line 873
    :cond_5
    const-string v14, "isCollabo"

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14}, Lcom/metamoji/cm/CmUtils;->toBool(Ljava/lang/Object;)Z

    move-result v14

    if-nez v3, :cond_6

    if-nez v14, :cond_6

    goto :goto_1

    .line 879
    :cond_6
    const-string v15, "recordIdNotificationCompleted"

    invoke-interface {v13, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 880
    const-string v15, "recordIdNotificationCompleted"

    invoke-interface {v13, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-static {v15}, Lcom/metamoji/cm/CmUtils;->toBool(Ljava/lang/Object;)Z

    move-result v15

    move/from16 v16, v4

    goto :goto_2

    :cond_7
    move v15, v4

    move/from16 v16, v15

    .line 882
    :goto_2
    const-string/jumbo v4, "uploaded"

    invoke-interface {v13, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->toBool(Ljava/lang/Object;)Z

    move-result v4

    if-nez v15, :cond_8

    const/16 v17, 0x1

    .line 885
    const-string v12, "recordId"

    invoke-interface {v13, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move/from16 v18, v3

    .line 886
    const-string/jumbo v3, "url"

    invoke-interface {v13, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_9

    if-eqz v12, :cond_9

    if-eqz v4, :cond_9

    .line 888
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 889
    const-string/jumbo v13, "ticket"

    invoke-interface {v4, v13, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 890
    const-string v11, "recordId"

    invoke-interface {v4, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 891
    const-string/jumbo v11, "url"

    invoke-interface {v4, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 892
    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    move/from16 v18, v3

    const/16 v17, 0x1

    :cond_9
    if-eqz v4, :cond_a

    if-eqz v15, :cond_b

    .line 900
    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 908
    :cond_a
    const-string/jumbo v3, "soundFilePath"

    invoke-interface {v13, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 909
    invoke-static {v3}, Lcom/metamoji/media/MediaUploadManager;->isFileExist(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    :cond_b
    :goto_3
    move/from16 v4, v16

    :goto_4
    move/from16 v3, v18

    goto/16 :goto_0

    :cond_c
    xor-int/lit8 v3, v14, 0x1

    if-eqz v14, :cond_d

    .line 916
    const-string v3, "isShareNoteOwner"

    invoke-interface {v13, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/cm/CmUtils;->toBool(Ljava/lang/Object;)Z

    move-result v3

    .line 919
    :cond_d
    const-string v4, "MediaUploadManager:uploadFiles:uploadProcess:Start"

    invoke-static {v4}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    if-eqz v3, :cond_f

    if-nez v10, :cond_f

    .line 924
    invoke-virtual/range {p0 .. p1}, Lcom/metamoji/media/MediaUploadManager;->updateUserInfo(Z)Z

    move-result v3

    if-nez v3, :cond_e

    .line 925
    monitor-exit v2

    return v16

    :cond_e
    move/from16 v10, v17

    .line 930
    :cond_f
    invoke-virtual {v1, v13, v0}, Lcom/metamoji/media/MediaUploadManager;->uploadSoundFileWithUploadData(Ljava/util/Map;Z)Z

    move-result v3

    .line 934
    const-string v4, "MediaUploadManager:uploadFiles:uploadProcess:End"

    invoke-static {v4}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    if-nez v3, :cond_10

    .line 937
    monitor-exit v2

    return v16

    :cond_10
    move/from16 v4, v16

    move/from16 v9, v17

    goto :goto_4

    :cond_11
    const/16 v17, 0x1

    .line 941
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 942
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v6

    new-instance v7, Lcom/metamoji/media/MediaUploadManager$5;

    invoke-direct {v7, v1, v4}, Lcom/metamoji/media/MediaUploadManager$5;-><init>(Lcom/metamoji/media/MediaUploadManager;Ljava/util/Map;)V

    invoke-virtual {v6, v7}, Lcom/metamoji/cm/CmTaskManager;->runOnUIThreadAsync(Ljava/lang/Runnable;)V

    goto :goto_5

    .line 953
    :cond_12
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 954
    invoke-virtual {v1, v4}, Lcom/metamoji/media/MediaUploadManager;->notifyUploadedFile(Ljava/lang/String;)V

    goto :goto_6

    :cond_13
    if-eqz v9, :cond_14

    if-eqz v0, :cond_14

    .line 958
    invoke-static {}, Lcom/metamoji/media/MediaUtil;->waitOperationQueue()V

    .line 960
    :cond_14
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return v17

    :catchall_0
    move-exception v0

    .line 865
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :cond_15
    :goto_7
    move/from16 v16, v4

    .line 833
    monitor-exit v2

    return v16

    :catchall_1
    move-exception v0

    .line 960
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method uploadSoundFileWithUploadData(Ljava/util/Map;Z)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)Z"
        }
    .end annotation

    .line 445
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v0

    .line 446
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v0

    .line 447
    const-string v1, "documentTitle"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 448
    const-string/jumbo v2, "soundFilePath"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 449
    const-string/jumbo v3, "ticket"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 451
    const-string v4, "mediaTitle"

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 453
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_0

    .line 451
    :cond_0
    const-string v4, ""

    .line 460
    :goto_0
    const-string v5, "driveId"

    invoke-interface {p1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    .line 462
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v5, v7

    .line 465
    :goto_1
    const-string/jumbo v6, "roomId"

    invoke-interface {p1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 467
    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v6, v7

    :goto_2
    const/4 v8, 0x0

    if-nez v0, :cond_3

    return v8

    :cond_3
    if-nez v6, :cond_5

    .line 472
    iget v9, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userType:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_4

    iget-object v0, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    if-nez v0, :cond_5

    :cond_4
    return v8

    .line 479
    :cond_5
    const-string v0, "recordId"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 480
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_6

    .line 483
    invoke-virtual {p0, v8, v3}, Lcom/metamoji/media/MediaUploadManager;->setRecordIdNotificationCompleted(ZLjava/lang/String;)V

    .line 484
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 485
    invoke-interface {v9, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 486
    invoke-static {v9, v8, v8, v7}, Lcom/metamoji/media/MediaUtil;->removeMedia(Ljava/util/List;ZZLcom/metamoji/media/service/MediaBgTaskForDelete$IMediaBgTaskForDeleteCompleteAction;)V

    :cond_6
    const/4 p1, 0x1

    if-nez p2, :cond_7

    .line 492
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/metamoji/cm/CmTaskManager;->suppressWaitScreen(Z)V

    .line 498
    :cond_7
    new-instance v7, Lcom/metamoji/cm/CmContext;

    invoke-direct {v7}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 499
    new-instance v9, Lcom/metamoji/cm/ResetableEvent;

    invoke-direct {v9, v8, p1}, Lcom/metamoji/cm/ResetableEvent;-><init>(ZZ)V

    .line 503
    new-instance p1, Lcom/metamoji/media/MediaUploadManager$3;

    invoke-direct {p1, p0, v7, v3, v9}, Lcom/metamoji/media/MediaUploadManager$3;-><init>(Lcom/metamoji/media/MediaUploadManager;Lcom/metamoji/cm/CmContext;Ljava/lang/String;Lcom/metamoji/cm/ResetableEvent;)V

    .line 533
    new-instance v10, Lcom/metamoji/media/service/MediaBgTaskForTentativeRegist;

    sget-object v11, Lcom/metamoji/media/service/MediaBgTask$IMediaAction;->NOP:Lcom/metamoji/media/service/MediaBgTask$IMediaAction;

    invoke-direct {v10, v11, p1}, Lcom/metamoji/media/service/MediaBgTaskForTentativeRegist;-><init>(Lcom/metamoji/media/service/MediaBgTask$IMediaAction;Lcom/metamoji/media/service/MediaBgTaskForTentativeRegist$IMediaBgTaskForTentativeRegistCompleteAction;)V

    .line 534
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 535
    invoke-static {}, Lcom/metamoji/media/MediaUtil;->makeRecorderName()Ljava/lang/String;

    move-result-object v11

    .line 537
    invoke-virtual {v10, v2}, Lcom/metamoji/media/service/MediaBgTaskForTentativeRegist;->setShareFile(Ljava/lang/String;)V

    .line 538
    invoke-static {v4, v1}, Lcom/metamoji/media/MediaUtil;->titleOnMediaServer(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/metamoji/media/service/MediaBgTaskForTentativeRegist;->setTitle(Ljava/lang/String;)V

    .line 539
    invoke-virtual {v10, v6}, Lcom/metamoji/media/service/MediaBgTaskForTentativeRegist;->setRoomId(Ljava/lang/String;)V

    .line 540
    invoke-virtual {v10, v5}, Lcom/metamoji/media/service/MediaBgTaskForTentativeRegist;->setDriveId(Ljava/lang/String;)V

    .line 541
    invoke-virtual {v10, v11}, Lcom/metamoji/media/service/MediaBgTaskForTentativeRegist;->setNickname(Ljava/lang/String;)V

    .line 542
    invoke-virtual {v10, p1}, Lcom/metamoji/media/service/MediaBgTaskForTentativeRegist;->setDate(Ljava/util/Date;)V

    .line 543
    invoke-virtual {v10, v3}, Lcom/metamoji/media/service/MediaBgTaskForTentativeRegist;->setTicket(Ljava/lang/String;)V

    .line 545
    const-string/jumbo p1, "uploadSoundFileWithUploadData:TentativeRegist:Start:ticket = %s"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 546
    invoke-virtual {v10}, Lcom/metamoji/media/service/MediaBgTaskForTentativeRegist;->doInBackground()V

    .line 548
    :try_start_0
    invoke-virtual {v9}, Lcom/metamoji/cm/ResetableEvent;->reset()V

    .line 549
    invoke-virtual {v9}, Lcom/metamoji/cm/ResetableEvent;->waitOne()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 551
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "MediaTentativeRegistError : error = %s"

    invoke-static {v1, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    if-nez p2, :cond_8

    .line 555
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    invoke-virtual {p1, v8}, Lcom/metamoji/cm/CmTaskManager;->suppressWaitScreen(Z)V

    .line 558
    :cond_8
    const-string/jumbo p1, "result"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v7, p1, v1}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 559
    invoke-virtual {v7, v0}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_9

    if-eqz v0, :cond_9

    .line 563
    invoke-virtual {p0, v2, v3, v0, p2}, Lcom/metamoji/media/MediaUploadManager;->doBgTaskUpload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    :cond_9
    return p1
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

    .line 241
    iget-object v0, p0, Lcom/metamoji/media/MediaUploadManager;->needsUploadTitles_:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1
.end method

.method public uploadTitles(Z)Z
    .locals 9

    .line 1033
    invoke-static {}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->isNetworkAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1039
    :cond_0
    invoke-static {}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils;->isUseSync()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    return v2

    .line 1049
    :cond_1
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v0

    .line 1050
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 1051
    iget v3, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userType:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_c

    iget-object v3, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    if-nez v3, :cond_2

    goto/16 :goto_2

    .line 1056
    :cond_2
    invoke-static {v0}, Lcom/metamoji/media/service/MediaBgTask;->login(Lcom/metamoji/cs/dc/user/CsDCUserInfo;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 1062
    :cond_3
    new-instance v0, Lcom/metamoji/media/MediaUploadManager$7;

    invoke-direct {v0, p0}, Lcom/metamoji/media/MediaUploadManager$7;-><init>(Lcom/metamoji/media/MediaUploadManager;)V

    .line 1082
    new-instance v3, Lcom/metamoji/media/service/MediaBgTaskForSetMediaTitle;

    sget-object v4, Lcom/metamoji/media/service/MediaBgTask$IMediaAction;->NOP:Lcom/metamoji/media/service/MediaBgTask$IMediaAction;

    invoke-direct {v3, v4, v0}, Lcom/metamoji/media/service/MediaBgTaskForSetMediaTitle;-><init>(Lcom/metamoji/media/service/MediaBgTask$IMediaAction;Lcom/metamoji/media/service/MediaBgTaskForSetMediaTitle$IMediaBgTaskForSetMediaTitleCompleteAction;)V

    .line 1085
    sget-object v0, Lcom/metamoji/media/MediaUploadManager;->lockObjectForUploadTitles_:Ljava/lang/Object;

    monitor-enter v0

    .line 1087
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/metamoji/media/MediaUploadManager;->needsUploadTitles_:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1088
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1090
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1092
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_5

    goto :goto_0

    .line 1095
    :cond_5
    iget-object v5, p0, Lcom/metamoji/media/MediaUploadManager;->needsUploadTitles_:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    if-nez v5, :cond_6

    goto :goto_0

    .line 1100
    :cond_6
    const-string v6, "documentTitle"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1101
    const-string v7, ""

    .line 1102
    const-string v8, "mediaTitle"

    invoke-interface {v5, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1104
    const-string v7, "mediaTitle"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Ljava/lang/String;

    .line 1111
    :cond_7
    invoke-static {v7, v6}, Lcom/metamoji/media/MediaUtil;->titleOnMediaServer(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/metamoji/media/service/MediaBgTaskForSetMediaTitle;->setTitle(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    iget-object v4, p0, Lcom/metamoji/media/MediaUploadManager;->retryTimer_:Ljava/util/Timer;

    if-eqz v4, :cond_8

    return v1

    .line 1119
    :cond_8
    invoke-virtual {v3}, Lcom/metamoji/media/service/MediaBgTaskForSetMediaTitle;->getCount()I

    move-result v4

    if-nez v4, :cond_9

    goto :goto_0

    .line 1125
    :cond_9
    invoke-virtual {p0, p1}, Lcom/metamoji/media/MediaUploadManager;->updateUserInfo(Z)Z

    move-result v4

    if-nez v4, :cond_a

    .line 1127
    invoke-virtual {p0}, Lcom/metamoji/media/MediaUploadManager;->startRetryTimer()V

    goto :goto_1

    .line 1131
    :cond_a
    invoke-virtual {v3}, Lcom/metamoji/media/service/MediaBgTaskForSetMediaTitle;->doInBackground()V

    :goto_1
    if-eqz p1, :cond_4

    .line 1135
    invoke-static {}, Lcom/metamoji/media/MediaUtil;->waitOperationQueue()V

    goto :goto_0

    :cond_b
    return v2

    :catchall_0
    move-exception p1

    .line 1088
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_c
    :goto_2
    return v2
.end method

.method uploadedTickets()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1146
    sget-object v0, Lcom/metamoji/media/MediaUploadManager;->lockObjectForUploadFiles_:Ljava/lang/Object;

    monitor-enter v0

    .line 1147
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/metamoji/media/MediaUploadManager;->needsUploadFiles_:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 1148
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1149
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1152
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1153
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-nez v4, :cond_1

    goto :goto_0

    .line 1160
    :cond_1
    const-string v5, "recordIdNotificationCompleted"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1161
    const-string v5, "recordIdNotificationCompleted"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/metamoji/cm/CmUtils;->toBool(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    .line 1163
    :goto_1
    const-string/jumbo v6, "uploaded"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->toBool(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    .line 1167
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0

    :catchall_0
    move-exception v1

    .line 1149
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
