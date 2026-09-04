.class public Lcom/metamoji/media/voice/controller/VcRecordingsController;
.super Ljava/lang/Object;
.source "VcRecordingsController.java"

# interfaces
.implements Lcom/metamoji/nt/ICommandProcessor;
.implements Lcom/metamoji/ns/direction/INsDirectionHandler;
.implements Lcom/metamoji/media/voice/audio/VcRecorder$IVcRecorderListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/media/voice/controller/VcRecordingsController$IPlayAction;
    }
.end annotation


# static fields
.field public static final EXTINFO_AUTHOR_INFOS:Ljava/lang/String; = "authorInfos"

.field public static final EXTINFO_CONTENT_TYPE:Ljava/lang/String; = "contentType"

.field public static final EXTINFO_DATA:Ljava/lang/String; = "data"

.field public static final EXTINFO_DATE:Ljava/lang/String; = "date"

.field public static final EXTINFO_DELEGATE:Ljava/lang/String; = "delegate"

.field public static final EXTINFO_END_TIME:Ljava/lang/String; = "endTime"

.field public static final EXTINFO_IMPORT_FILE:Ljava/lang/String; = "importFile"

.field public static final EXTINFO_INDEX:Ljava/lang/String; = "index"

.field public static final EXTINFO_INDEXES:Ljava/lang/String; = "indexes"

.field public static final EXTINFO_INDEX_ID:Ljava/lang/String; = "indexId"

.field public static final EXTINFO_INDEX_TITLE:Ljava/lang/String; = "indexTitle"

.field public static final EXTINFO_MODEL:Ljava/lang/String; = "model"

.field public static final EXTINFO_PAGE:Ljava/lang/String; = "page"

.field public static final EXTINFO_PAGE_ID:Ljava/lang/String; = "pageId"

.field public static final EXTINFO_RECORDING_TITLE:Ljava/lang/String; = "recirdingTitle"

.field public static final EXTINFO_REMOVE_TICKET:Ljava/lang/String; = "removeTicket"

.field public static final EXTINFO_SELECT_COMMAND:Ljava/lang/String; = "selectCommand"

.field public static final EXTINFO_SHOW_MESSAGE:Ljava/lang/String; = "showMessage"

.field public static final EXTINFO_START_TIME:Ljava/lang/String; = "startTime"

.field public static final EXTINFO_TAGGABLE_OBJECTS:Ljava/lang/String; = "taggableObjects"

.field public static final EXTINFO_TAG_INSTANCE:Ljava/lang/String; = "tagInstance"

.field public static final EXTINFO_TICKET:Ljava/lang/String; = "ticket"

.field static final VC_INDEX_CORRECTION_TIME:D = 1.0

.field public static final VC_PASTEBOARDTYPE_VOICE_STARTDATE:Ljava/lang/String; = "com.metamoji.noteanytime.voice.startdate"

.field static final VC_RESOTRE_INHIBIT_ADD_INDEX_TIME:I = 0x64


# instance fields
.field _currentTicket:Ljava/lang/String;

.field _delayDirection:Z

.field _delayedDirections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/metamoji/ns/direction/NsDirectionData;",
            ">;"
        }
    .end annotation
.end field

.field _directionHandlerID:Ljava/lang/String;

.field _directionManager:Lcom/metamoji/ns/direction/NsDirectionManager;

.field _inhibitAddIndex:Z

.field _isRecordingInterrupted:Z

.field _noteController:Lcom/metamoji/nt/NtNoteController;

.field _onTagRemoved:Lcom/metamoji/cm/ICmEventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/cm/ICmEventHandler<",
            "Ljava/util/Set<",
            "Lcom/metamoji/ctold/tag/CtTagInstance;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/metamoji/nt/NtNoteController;)V
    .locals 2

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 130
    iput-boolean v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController;->_inhibitAddIndex:Z

    .line 131
    iput-boolean v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController;->_isRecordingInterrupted:Z

    .line 3332
    new-instance v1, Lcom/metamoji/media/voice/controller/VcRecordingsController$36;

    invoke-direct {v1, p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController$36;-><init>(Lcom/metamoji/media/voice/controller/VcRecordingsController;)V

    iput-object v1, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController;->_onTagRemoved:Lcom/metamoji/cm/ICmEventHandler;

    .line 137
    iput-object p1, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController;->_noteController:Lcom/metamoji/nt/NtNoteController;

    const/4 p1, 0x0

    .line 138
    iput-object p1, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController;->_currentTicket:Ljava/lang/String;

    .line 139
    iput-object p1, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController;->_directionManager:Lcom/metamoji/ns/direction/NsDirectionManager;

    .line 140
    iput-object p1, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController;->_directionHandlerID:Ljava/lang/String;

    .line 141
    iput-boolean v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController;->_delayDirection:Z

    .line 142
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController;->_delayedDirections:Ljava/util/Map;

    .line 145
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/nt/NtDocument;->getDocTagManager()Lcom/metamoji/ctold/CtDocTagManager;

    move-result-object p1

    .line 146
    iget-object v1, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController;->_onTagRemoved:Lcom/metamoji/cm/ICmEventHandler;

    invoke-interface {p1, v1}, Lcom/metamoji/ctold/CtDocTagManager;->addTagRemovedEventHandler(Lcom/metamoji/cm/ICmEventHandler;)V

    .line 151
    invoke-virtual {p0, v0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->setFirstRecordingTicket(Z)V

    .line 154
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getRecordingsManager()Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    move-result-object p1

    .line 155
    iget-object v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController;->_noteController:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->migrationFromOldVersion(Lcom/metamoji/nt/NtDocument;)V

    .line 160
    invoke-static {}, Lcom/metamoji/media/voice/audio/VcRecorder;->getSharedInstance()Lcom/metamoji/media/voice/audio/VcRecorder;

    move-result-object p1

    .line 161
    invoke-virtual {p1}, Lcom/metamoji/media/voice/audio/VcRecorder;->getRecordingStatus()Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;

    move-result-object v0

    sget-object v1, Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;->RECORDING:Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;

    if-ne v0, v1, :cond_0

    .line 162
    invoke-virtual {p1, p0}, Lcom/metamoji/media/voice/audio/VcRecorder;->setListener(Lcom/metamoji/media/voice/audio/VcRecorder$IVcRecorderListener;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$playFromDate$0(Lcom/metamoji/media/voice/ui/VcSelectRecordingsDialog;)V
    .locals 1

    .line 851
    const-string v0, "VcSelectRecordings"

    invoke-virtual {p0, v0}, Lcom/metamoji/media/voice/ui/VcSelectRecordingsDialog;->safeShow(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addIndex(Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1473
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getRecordingsManager()Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    move-result-object v0

    .line 1475
    invoke-virtual {v0, p2, p1}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->addIndex(Ljava/lang/String;Ljava/util/Map;)V

    .line 1477
    invoke-virtual {p0, p2, p1}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->sendAddIndexDirection(Ljava/lang/String;Ljava/util/Map;)V

    .line 1478
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/metamoji/nt/NtDocument;->setSaveOnEnd(Z)V

    return-void
.end method

.method addIndexFromPlayer(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V
    .locals 3

    .line 2244
    invoke-static {}, Lcom/metamoji/media/voice/audio/VcPlayer;->getSharedInstance()Lcom/metamoji/media/voice/audio/VcPlayer;

    move-result-object p1

    .line 2245
    invoke-virtual {p1}, Lcom/metamoji/media/voice/audio/VcPlayer;->getCurrentTime()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->correctIndexTime(D)D

    move-result-wide v0

    .line 2249
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object p2

    .line 2250
    invoke-virtual {p2}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object p2

    .line 2253
    invoke-static {v0, v1}, Lcom/metamoji/media/MediaUtil;->formattedTimeStringFromTime(D)Ljava/lang/String;

    move-result-object v2

    .line 2256
    invoke-virtual {p1, v2, v0, v1, p2}, Lcom/metamoji/media/voice/audio/VcPlayer;->startIndex(Ljava/lang/String;DLjava/lang/String;)V

    .line 2257
    invoke-virtual {p1, v0, v1}, Lcom/metamoji/media/voice/audio/VcPlayer;->endIndex(D)Ljava/util/Map;

    move-result-object p1

    .line 2258
    const-string p2, "$id"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 2260
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getRecordingsManager()Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    move-result-object v0

    .line 2262
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getCurrentTicket()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->addIndex(Ljava/lang/String;Ljava/util/Map;)V

    .line 2265
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getCurrentTicket()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->sendAddIndexDirection(Ljava/lang/String;Ljava/util/Map;)V

    .line 2276
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/metamoji/nt/NtDocument;->setSaveOnEnd(Z)V

    .line 2279
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getCurrentTicket()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getIndex(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2280
    sget p1, Lcom/metamoji/noteanytime/R$string;->Voice_Msg_AddedLabel:I

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/media/MediaUtil;->showMessage(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method addIndexFromRecorder()V
    .locals 5

    .line 2288
    invoke-static {}, Lcom/metamoji/media/voice/audio/VcRecorder;->getSharedInstance()Lcom/metamoji/media/voice/audio/VcRecorder;

    move-result-object v0

    .line 2289
    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcRecorder;->getRecordingStatus()Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;

    move-result-object v1

    sget-object v2, Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;->RECORDING:Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;

    if-eq v1, v2, :cond_0

    return-void

    .line 2293
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcRecorder;->getStartDate()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/TimeUtils;->date2unixtime(Ljava/util/Date;)D

    move-result-wide v1

    .line 2294
    invoke-static {}, Lcom/metamoji/cm/TimeUtils;->currentUnixTimestamp()D

    move-result-wide v3

    sub-double/2addr v3, v1

    invoke-virtual {p0, v3, v4}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->correctIndexTime(D)D

    move-result-wide v1

    .line 2297
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v3

    .line 2298
    invoke-static {v1, v2}, Lcom/metamoji/media/MediaUtil;->formattedTimeStringFromTime(D)Ljava/lang/String;

    move-result-object v4

    .line 2301
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/metamoji/media/voice/audio/VcRecorder;->startIndex(Ljava/lang/String;DLjava/lang/String;)V

    .line 2302
    invoke-virtual {v0, v1, v2}, Lcom/metamoji/media/voice/audio/VcRecorder;->endIndex(D)V

    .line 2305
    sget v0, Lcom/metamoji/noteanytime/R$string;->Voice_Msg_AddedLabel:I

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/media/MediaUtil;->showMessage(Ljava/lang/String;)V

    return-void
.end method

.method public addTicket(Ljava/lang/String;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cm/Blob;)V
    .locals 8

    .line 1423
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getRecordingsManager()Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    move-result-object v0

    .line 1426
    invoke-virtual {v0, p1, p2}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->registerRecording(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 1431
    :cond_0
    const-string v1, "$cacheFilename"

    if-eqz p3, :cond_2

    .line 1432
    invoke-interface {p2, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1433
    invoke-static {}, Lcom/metamoji/media/voice/VcUtil;->getCacheDir()Ljava/io/File;

    move-result-object v3

    .line 1434
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-nez v2, :cond_2

    .line 1436
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1437
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 1439
    :cond_1
    invoke-virtual {p3}, Lcom/metamoji/cm/Blob;->getData()[B

    move-result-object v2

    invoke-static {v4, v2}, Lcom/metamoji/cm/CmUtils;->saveBufferToFile(Ljava/io/File;[B)Z

    .line 1444
    :cond_2
    const-string v2, "$url"

    invoke-interface {p2, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_3

    .line 1446
    invoke-virtual {v0, p1, v7}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->setHiddenRecording(Ljava/lang/String;Z)V

    .line 1447
    new-array p2, v6, [Ljava/lang/String;

    aput-object p1, p2, v7

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->sendAddRecordingsDirectionOfTickets(Ljava/util/List;)V

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_4

    .line 1451
    invoke-interface {p2, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1452
    invoke-static {}, Lcom/metamoji/media/voice/VcUtil;->getCacheDir()Ljava/io/File;

    move-result-object v1

    .line 1453
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1454
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 1455
    const-string p3, "$title"

    invoke-interface {p2, p3}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1456
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v4

    const/4 v5, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->registRecordingToUploadManager(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/nt/NtDocument;Z)V

    .line 1457
    new-array p1, v6, [Ljava/lang/String;

    aput-object v1, p1, v7

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->sendAddRecordingsDirectionOfTickets(Ljava/util/List;)V

    .line 1459
    invoke-virtual {v0, v1, v7}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->setHiddenRecording(Ljava/lang/String;Z)V

    .line 1463
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/metamoji/nt/NtDocument;->setSaveOnEnd(Z)V

    return-void
.end method

.method public applyPasteboardExtras(Ljava/util/Map;Lcom/metamoji/nt/NtNoteController;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/metamoji/nt/NtNoteController;",
            "I)V"
        }
    .end annotation

    .line 1528
    const-string/jumbo v0, "voice_models"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/util/Map;

    .line 1529
    const-string v0, "page_models"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Ljava/util/List;

    if-nez v4, :cond_0

    return-void

    .line 1533
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v1, Lcom/metamoji/media/voice/controller/VcRecordingsController$19;

    move-object v2, p0

    move-object v3, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/media/voice/controller/VcRecordingsController$19;-><init>(Lcom/metamoji/media/voice/controller/VcRecordingsController;Lcom/metamoji/nt/NtNoteController;Ljava/util/Map;Ljava/util/List;I)V

    invoke-virtual {p1, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method completedRecording()V
    .locals 6

    .line 1733
    invoke-static {}, Lcom/metamoji/media/voice/audio/VcRecorder;->getSharedInstance()Lcom/metamoji/media/voice/audio/VcRecorder;

    move-result-object v0

    .line 1735
    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcRecorder;->getTicket()Ljava/lang/String;

    move-result-object v1

    .line 1736
    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcRecorder;->getDuration()D

    move-result-wide v2

    .line 1737
    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcRecorder;->getIndexes()Ljava/util/HashMap;

    move-result-object v4

    .line 1739
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getRecordingsManager()Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    move-result-object v5

    .line 1741
    invoke-virtual {v5, v1, v2, v3}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->setDuration(Ljava/lang/String;D)V

    .line 1742
    invoke-virtual {v5, v1, v4}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->setIndexes(Ljava/lang/String;Ljava/util/Map;)V

    .line 1745
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/metamoji/nt/NtDocument;->setSaveOnEnd(Z)V

    .line 1747
    invoke-virtual {p0, v1}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->setCurrentTicket(Ljava/lang/String;)V

    .line 1750
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/nt/NtEditorWindowController;->getPlayerBar()Lcom/metamoji/media/voice/ui/VcPlayerBar;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1752
    invoke-virtual {v2}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->didAddTicket()V

    .line 1756
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v2

    new-instance v3, Lcom/metamoji/media/voice/controller/VcRecordingsController$21;

    invoke-direct {v3, p0, v0, v5, v1}, Lcom/metamoji/media/voice/controller/VcRecordingsController$21;-><init>(Lcom/metamoji/media/voice/controller/VcRecordingsController;Lcom/metamoji/media/voice/audio/VcRecorder;Lcom/metamoji/media/voice/controller/VcRecordingsManager;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v2, v3, v0, v0}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void
.end method

.method correctIndexPastedPageId(Ljava/util/Map;Ljava/util/List;Ljava/util/List;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Lcom/metamoji/df/model/IModel;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .line 1611
    const-string v0, "$pageId"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1612
    invoke-virtual {p0, v1, p2, p3, p4}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->pastedPageId(Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1616
    :cond_0
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method

.method correctIndexTime(D)D
    .locals 3

    .line 2316
    invoke-static {}, Lcom/metamoji/media/voice/audio/VcRecorder;->getSharedInstance()Lcom/metamoji/media/voice/audio/VcRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcRecorder;->getRecordingStatus()Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;

    move-result-object v0

    sget-object v1, Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;->RECORDING:Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;

    if-eq v0, v1, :cond_1

    .line 2317
    invoke-static {}, Lcom/metamoji/media/voice/audio/VcPlayer;->getSharedInstance()Lcom/metamoji/media/voice/audio/VcPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcPlayer;->getPlayingStatus()Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    move-result-object v0

    sget-object v1, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;->PLAYING:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-wide p1

    :cond_1
    :goto_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr p1, v0

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-gez v2, :cond_2

    return-wide v0

    :cond_2
    return-wide p1
.end method

.method correctPastedPageId(Lcom/metamoji/df/model/IModel;Ljava/util/List;Ljava/util/List;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/df/model/IModel;",
            "Ljava/util/List<",
            "Lcom/metamoji/df/model/IModel;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .line 1587
    const-string v0, "$pageId"

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1588
    invoke-virtual {p0, v1, p2, p3, p4}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->pastedPageId(Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1590
    const-string p1, "failed to correct pageID of record at paste pages."

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    return v2

    .line 1593
    :cond_0
    invoke-interface {p1, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1596
    const-string v0, "$indexes"

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsDictionary(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1598
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1599
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 1600
    invoke-virtual {p0, v1, p2, p3, p4}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->correctIndexPastedPageId(Ljava/util/Map;Ljava/util/List;Ljava/util/List;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1601
    const-string p1, "failed to correct pageID of chaptor at paste pages."

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    return v2

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method createAddIndexDirectionDataIndex(Ljava/lang/String;Ljava/util/Map;)Lcom/metamoji/media/voice/direction/VcAddIndexDirectionData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/metamoji/media/voice/direction/VcAddIndexDirectionData;"
        }
    .end annotation

    .line 2685
    iget-object v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController;->_noteController:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/media/voice/direction/VcAddIndexDirectionData;->newDirectionData(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/media/voice/direction/VcAddIndexDirectionData;

    move-result-object v0

    .line 2686
    invoke-virtual {v0, p1, p2}, Lcom/metamoji/media/voice/direction/VcAddIndexDirectionData;->addIndex(Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method

.method createChangeIndexTimeDirectionDataStartTime(Ljava/lang/String;Ljava/lang/String;DD)Lcom/metamoji/media/voice/direction/VcChangeIndexTimeDirectionData;
    .locals 8

    .line 2879
    iget-object v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController;->_noteController:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/media/voice/direction/VcChangeIndexTimeDirectionData;->newDirectionData(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/media/voice/direction/VcChangeIndexTimeDirectionData;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    .line 2880
    invoke-virtual/range {v1 .. v7}, Lcom/metamoji/media/voice/direction/VcChangeIndexTimeDirectionData;->setStartTime(Ljava/lang/String;Ljava/lang/String;DD)V

    return-object v1
.end method

.method createRemoveIndexDirectionDataIndexId(Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/media/voice/direction/VcRemoveIndexDirectionData;
    .locals 1

    .line 2744
    iget-object v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController;->_noteController:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/media/voice/direction/VcRemoveIndexDirectionData;->newDirectionData(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/media/voice/direction/VcRemoveIndexDirectionData;

    move-result-object v0

    .line 2745
    invoke-virtual {v0, p1, p2}, Lcom/metamoji/media/voice/direction/VcRemoveIndexDirectionData;->setRemoveIndex(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method createRenameIndexTitleDirectionDataTitle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/media/voice/direction/VcRenameIndexTitleDirectionData;
    .locals 1

    .line 2817
    iget-object v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController;->_noteController:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/media/voice/direction/VcRenameIndexTitleDirectionData;->newDirectionData(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/media/voice/direction/VcRenameIndexTitleDirectionData;

    move-result-object v0

    .line 2818
    invoke-virtual {v0, p1, p2, p3}, Lcom/metamoji/media/voice/direction/VcRenameIndexTitleDirectionData;->setTitle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method createRenameRecordingTitleDirectionData(Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/media/voice/direction/VcRenameRecordingTitleDirectionData;
    .locals 1

    .line 2618
    iget-object v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController;->_noteController:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/media/voice/direction/VcRenameRecordingTitleDirectionData;->newDirectionData(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/media/voice/direction/VcRenameRecordingTitleDirectionData;

    move-result-object v0

    .line 2619
    invoke-virtual {v0, p1, p2}, Lcom/metamoji/media/voice/direction/VcRenameRecordingTitleDirectionData;->setTitle(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method createUploadedRecordingDirectionData(Ljava/lang/String;)Lcom/metamoji/media/voice/direction/VcUploadedRecordingDirectionData;
    .locals 1

    .line 1652
    iget-object v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController;->_noteController:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/media/voice/direction/VcUploadedRecordingDirectionData;->newDirectionData(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/media/voice/direction/VcUploadedRecordingDirectionData;

    move-result-object v0

    .line 1653
    invoke-virtual {v0, p1}, Lcom/metamoji/media/voice/direction/VcUploadedRecordingDirectionData;->setTicket(Ljava/lang/String;)V

    return-object v0
.end method

.method public destroy()V
    .locals 2

    .line 171
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getDocTagManager()Lcom/metamoji/ctold/CtDocTagManager;

    move-result-object v0

    .line 172
    iget-object v1, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController;->_onTagRemoved:Lcom/metamoji/cm/ICmEventHandler;

    invoke-interface {v0, v1}, Lcom/metamoji/ctold/CtDocTagManager;->removeTagRemovedEventHandler(Lcom/metamoji/cm/ICmEventHandler;)V

    .line 174
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->unmakeDirectable()V

    return-void
.end method

.method detachVoiceTag(Lcom/metamoji/ctold/tag/CtTagInstance;Lcom/metamoji/df/controller/EditContext;)V
    .locals 1

    .line 2204
    iget-object v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController;->_noteController:Lcom/metamoji/nt/NtNoteController;

    invoke-static {p1, v0, p2}, Lcom/metamoji/media/voice/VcUtil;->detachVoiceTag(Lcom/metamoji/ctold/tag/CtTagInstance;Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/df/controller/EditContext;)V

    return-void
.end method

.method public existNextTicket()Z
    .locals 3

    .line 246
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getCurrentTicket()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 249
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getRecordingsManager()Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getCurrentTicket()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getNextTicket(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method getCurrentPage()Lcom/metamoji/nt/NtPageController;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController;->_noteController:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTicket()Ljava/lang/String;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController;->_currentTicket:Ljava/lang/String;

    return-object v0
.end method

.method public getDirectionHandlerID()Ljava/lang/String;
    .locals 1

    .line 2974
    iget-object v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController;->_directionHandlerID:Ljava/lang/String;

    return-object v0
.end method

.method getDocument()Lcom/metamoji/nt/NtDocument;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController;->_noteController:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    return-object v0
.end method

.method getRecordingsManager()Lcom/metamoji/media/voice/controller/VcRecordingsManager;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController;->_noteController:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getRecordingsManager()Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    move-result-object v0

    return-object v0
.end method

.method public getTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    .line 272
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getCurrentTicket()Ljava/lang/String;

    move-result-object p1

    :cond_0
    if-nez p1, :cond_1

    .line 275
    const-string p1, ""

    return-object p1

    .line 277
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getRecordingsManager()Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getTitleOnExportForTicket(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1308
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getDocumentTitle()Ljava/lang/String;

    move-result-object v0

    .line 1309
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getRecordingsManager()Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1310
    const-string v1, "%s[%s]"

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method handleAddIndex(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V
    .locals 2

    .line 2212
    iget-boolean v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController;->_inhibitAddIndex:Z

    if-eqz v0, :cond_0

    return-void

    .line 2216
    :cond_0
    invoke-static {}, Lcom/metamoji/media/voice/audio/VcRecorder;->getSharedInstance()Lcom/metamoji/media/voice/audio/VcRecorder;

    move-result-object v0

    .line 2217
    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcRecorder;->getRecordingStatus()Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;

    move-result-object v0

    .line 2219
    sget-object v1, Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;->RECORDING:Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;

    if-ne v0, v1, :cond_1

    .line 2221
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->addIndexFromRecorder()V

    goto :goto_0

    .line 2224
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->addIndexFromPlayer(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    .line 2226
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/nt/NtDocument;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object p2, Lcom/metamoji/nt/NtCommand;->CMD_VC_ADD_INDEX:Lcom/metamoji/nt/NtCommand;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/metamoji/nt/NtCommandManager;->selectCommand(Lcom/metamoji/nt/NtCommand;I)Z

    .line 2229
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    .line 2230
    new-instance p2, Lcom/metamoji/media/voice/controller/VcRecordingsController$24;

    invoke-direct {p2, p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController$24;-><init>(Lcom/metamoji/media/voice/controller/VcRecordingsController;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p2, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method handleAddIndexDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;Lcom/metamoji/ns/direction/INsDirectionObserver;)Z
    .locals 2

    .line 2697
    new-instance v0, Lcom/metamoji/media/voice/direction/VcAddIndexDirectionData;

    invoke-virtual {p1}, Lcom/metamoji/ns/direction/NsReceivedDirection;->direction()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/df/model/IModel;

    invoke-direct {v0, p1}, Lcom/metamoji/media/voice/direction/VcAddIndexDirectionData;-><init>(Lcom/metamoji/df/model/IModel;)V

    .line 2699
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getRecordingsManager()Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    move-result-object p1

    .line 2701
    new-instance v1, Lcom/metamoji/media/voice/controller/VcRecordingsController$28;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/media/voice/controller/VcRecordingsController$28;-><init>(Lcom/metamoji/media/voice/controller/VcRecordingsController;Lcom/metamoji/media/voice/controller/VcRecordingsManager;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/media/voice/direction/VcAddIndexDirectionData;->forEachIndex(Lcom/metamoji/media/voice/direction/VcAddIndexDirectionData$IForEachBlock;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2711
    invoke-interface {p2}, Lcom/metamoji/ns/direction/INsDirectionObserver;->documentModified()V

    :cond_0
    return p1
.end method

.method handleAddRecordingsDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;Lcom/metamoji/ns/direction/INsDirectionObserver;)Z
    .locals 2

    .line 2531
    new-instance v0, Lcom/metamoji/media/voice/direction/VcAddRecordingsDirectionData;

    invoke-virtual {p1}, Lcom/metamoji/ns/direction/NsReceivedDirection;->direction()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/df/model/IModel;

    invoke-direct {v0, p1}, Lcom/metamoji/media/voice/direction/VcAddRecordingsDirectionData;-><init>(Lcom/metamoji/df/model/IModel;)V

    .line 2533
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getRecordingsManager()Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->handleAddRecordingsDirection(Lcom/metamoji/media/voice/direction/VcAddRecordingsDirectionData;Lcom/metamoji/ns/direction/INsDirectionObserver;)Z

    move-result p1

    .line 2535
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getCurrentTicket()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    .line 2536
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->setFirstRecordingTicket()V

    .line 2540
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p2

    new-instance v0, Lcom/metamoji/media/voice/controller/VcRecordingsController$26;

    invoke-direct {v0, p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController$26;-><init>(Lcom/metamoji/media/voice/controller/VcRecordingsController;)V

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, v1}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return p1
.end method

.method handleChangeIndexTimeDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;Lcom/metamoji/ns/direction/INsDirectionObserver;)Z
    .locals 2

    .line 2891
    new-instance v0, Lcom/metamoji/media/voice/direction/VcChangeIndexTimeDirectionData;

    invoke-virtual {p1}, Lcom/metamoji/ns/direction/NsReceivedDirection;->direction()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/df/model/IModel;

    invoke-direct {v0, p1}, Lcom/metamoji/media/voice/direction/VcChangeIndexTimeDirectionData;-><init>(Lcom/metamoji/df/model/IModel;)V

    .line 2893
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getRecordingsManager()Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    move-result-object p1

    .line 2895
    new-instance v1, Lcom/metamoji/media/voice/controller/VcRecordingsController$31;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/media/voice/controller/VcRecordingsController$31;-><init>(Lcom/metamoji/media/voice/controller/VcRecordingsController;Lcom/metamoji/media/voice/controller/VcRecordingsManager;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/media/voice/direction/VcChangeIndexTimeDirectionData;->forEachIndex(Lcom/metamoji/media/voice/direction/VcChangeIndexTimeDirectionData$IForEachBlock;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2905
    invoke-interface {p2}, Lcom/metamoji/ns/direction/INsDirectionObserver;->documentModified()V

    :cond_0
    return p1
.end method

.method public handleCloseDocument()Z
    .locals 4

    .line 3072
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 3075
    invoke-static {}, Lcom/metamoji/media/voice/audio/VcPlayer;->getSharedInstance()Lcom/metamoji/media/voice/audio/VcPlayer;

    move-result-object v1

    .line 3076
    invoke-virtual {v1}, Lcom/metamoji/media/voice/audio/VcPlayer;->getPlayingStatus()Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    move-result-object v2

    sget-object v3, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;->STOPPED:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    if-eq v2, v3, :cond_0

    .line 3077
    new-instance v2, Lcom/metamoji/media/voice/controller/VcRecordingsController$33;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/media/voice/controller/VcRecordingsController$33;-><init>(Lcom/metamoji/media/voice/controller/VcRecordingsController;Lcom/metamoji/nt/NtEditorWindowController;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/media/voice/audio/VcPlayer;->stopForce(Ljava/lang/Runnable;)V

    .line 3087
    :cond_0
    invoke-static {}, Lcom/metamoji/media/voice/audio/VcRecorder;->getSharedInstance()Lcom/metamoji/media/voice/audio/VcRecorder;

    move-result-object v1

    .line 3088
    invoke-virtual {v1}, Lcom/metamoji/media/voice/audio/VcRecorder;->getRecordingStatus()Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;

    move-result-object v2

    sget-object v3, Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;->STOPPED:Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;

    if-eq v2, v3, :cond_1

    .line 3089
    invoke-virtual {v1}, Lcom/metamoji/media/voice/audio/VcRecorder;->stopForce()Z

    .line 3090
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->completedRecording()V

    .line 3092
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_VC_START_RECORDING:Lcom/metamoji/nt/NtCommand;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtCommandManager;->selectCommand(Lcom/metamoji/nt/NtCommand;Z)Z

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method handleCompletedRecording(Lcom/metamoji/cm/CmContext;)V
    .locals 0

    .line 1186
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->completedRecording()V

    return-void
.end method

.method handleDetachVoiceTag(Lcom/metamoji/cm/CmContext;)V
    .locals 5

    .line 2177
    const-string/jumbo v0, "tagInstance"

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ctold/tag/CtTagInstance;

    .line 2179
    invoke-static {}, Lcom/metamoji/media/voice/audio/VcRecorder;->getSharedInstance()Lcom/metamoji/media/voice/audio/VcRecorder;

    move-result-object v0

    .line 2180
    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcRecorder;->getRecordingStatus()Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;

    move-result-object v1

    .line 2181
    invoke-static {}, Lcom/metamoji/media/voice/audio/VcPlayer;->getSharedInstance()Lcom/metamoji/media/voice/audio/VcPlayer;

    move-result-object v2

    .line 2182
    invoke-virtual {v2}, Lcom/metamoji/media/voice/audio/VcPlayer;->getPlayingStatus()Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    move-result-object v3

    .line 2185
    sget-object v4, Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;->RECORDING:Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;

    if-ne v1, v4, :cond_0

    .line 2186
    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcRecorder;->stop()Z

    goto :goto_0

    .line 2187
    :cond_0
    sget-object v0, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;->PLAYING:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    if-eq v3, v0, :cond_1

    sget-object v0, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;->PAUSED:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    if-ne v3, v0, :cond_2

    .line 2189
    :cond_1
    invoke-virtual {v2}, Lcom/metamoji/media/voice/audio/VcPlayer;->stop()V

    .line 2193
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController;->_noteController:Lcom/metamoji/nt/NtNoteController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtNoteController;->beginEdit(Ljava/lang/Object;)Lcom/metamoji/df/controller/EditContext;

    move-result-object v0

    .line 2195
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->detachVoiceTag(Lcom/metamoji/ctold/tag/CtTagInstance;Lcom/metamoji/df/controller/EditContext;)V

    .line 2197
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/metamoji/nt/NtDocument;->setSaveOnEnd(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2199
    iget-object p1, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController;->_noteController:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {p1, v0}, Lcom/metamoji/nt/NtNoteController;->endEdit(Lcom/metamoji/df/controller/EditContext;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController;->_noteController:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v1, v0}, Lcom/metamoji/nt/NtNoteController;->endEdit(Lcom/metamoji/df/controller/EditContext;)V

    .line 2200
    throw p1
.end method

.method public handleDirections(Ljava/util/List;Lcom/metamoji/ns/direction/INsDirectionObserver;Ljava/lang/Runnable;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/ns/direction/NsReceivedDirection;",
            ">;",
            "Lcom/metamoji/ns/direction/INsDirectionObserver;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 2989
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/ns/direction/NsReceivedDirection;

    .line 2990
    invoke-virtual {v4}, Lcom/metamoji/ns/direction/NsReceivedDirection;->direction()Ljava/lang/Object;

    move-result-object v5

    .line 2991
    invoke-static {v5}, Lcom/metamoji/media/voice/direction/VcAddRecordingsDirectionData;->isTargetDirection(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_1

    .line 2993
    invoke-virtual {p0, v4, p2}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->handleAddRecordingsDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;Lcom/metamoji/ns/direction/INsDirectionObserver;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    move v1, v7

    move v3, v1

    goto :goto_0

    .line 2996
    :cond_1
    invoke-static {v5}, Lcom/metamoji/media/voice/direction/VcRemoveRecordingsDirectionData;->isTargetDirection(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2998
    invoke-virtual {p0, v4, p2}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->handleRemoveRecordingsDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;Lcom/metamoji/ns/direction/INsDirectionObserver;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 3001
    :cond_2
    invoke-static {v5}, Lcom/metamoji/media/voice/direction/VcRenameRecordingTitleDirectionData;->isTargetDirection(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3003
    invoke-virtual {p0, v4, p2}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->handleRenameRecordingTitleDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;Lcom/metamoji/ns/direction/INsDirectionObserver;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_2
    move v1, v7

    goto :goto_0

    .line 3012
    :cond_3
    invoke-static {v5}, Lcom/metamoji/media/voice/direction/VcAddIndexDirectionData;->isTargetDirection(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 3014
    invoke-virtual {p0, v4, p2}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->handleAddIndexDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;Lcom/metamoji/ns/direction/INsDirectionObserver;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_3
    goto :goto_2

    .line 3018
    :cond_4
    invoke-static {v5}, Lcom/metamoji/media/voice/direction/VcRemoveIndexDirectionData;->isTargetDirection(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 3021
    invoke-virtual {p0, v4, p2}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->handleRemoveIndexDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;Lcom/metamoji/ns/direction/INsDirectionObserver;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_3

    .line 3025
    :cond_5
    invoke-static {v5}, Lcom/metamoji/media/voice/direction/VcRenameIndexTitleDirectionData;->isTargetDirection(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 3028
    invoke-virtual {p0, v4, p2}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->handleRenameIndexTitleDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;Lcom/metamoji/ns/direction/INsDirectionObserver;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_2

    .line 3032
    :cond_6
    invoke-static {v5}, Lcom/metamoji/media/voice/direction/VcChangeIndexTimeDirectionData;->isTargetDirection(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 3034
    invoke-virtual {p0, v4, p2}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->handleChangeIndexTimeDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;Lcom/metamoji/ns/direction/INsDirectionObserver;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_3

    .line 3038
    :cond_7
    invoke-static {v5}, Lcom/metamoji/media/voice/direction/VcUploadedRecordingDirectionData;->isTargetDirection(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 3040
    invoke-virtual {p0, v4, p2}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->handleUploadedRecordingDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;Lcom/metamoji/ns/direction/INsDirectionObserver;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v1, v7

    move v2, v1

    goto :goto_0

    .line 3045
    :cond_8
    const-string v4, "recordings manager received unknown direction"

    invoke-static {v4}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3048
    :cond_9
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    if-eqz v1, :cond_b

    .line 3052
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p1

    .line 3053
    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getPlayerBar()Lcom/metamoji/media/voice/ui/VcPlayerBar;

    move-result-object p2

    if-eqz p2, :cond_a

    .line 3055
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance p3, Lcom/metamoji/media/voice/controller/VcRecordingsController$32;

    invoke-direct {p3, p0, p2, v2}, Lcom/metamoji/media/voice/controller/VcRecordingsController$32;-><init>(Lcom/metamoji/media/voice/controller/VcRecordingsController;Lcom/metamoji/media/voice/ui/VcPlayerBar;Z)V

    invoke-virtual {p1, p3}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void

    :cond_a
    if-eqz v3, :cond_b

    .line 3062
    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object p2, Lcom/metamoji/nt/NtCommand;->CMD_VC_NAVIGATION:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, p2, v0}, Lcom/metamoji/nt/NtCommandManager;->selectCommand(Lcom/metamoji/nt/NtCommand;Z)Z

    :cond_b
    return-void
.end method

.method handleExportRecordingToApplication(Lcom/metamoji/cm/CmContext;)V
    .locals 2

    .line 1195
    const-string/jumbo v0, "ticket"

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    goto :goto_0

    .line 1200
    :cond_0
    invoke-static {}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 1204
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getRecordingsManager()Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    move-result-object v0

    .line 1207
    new-instance v1, Lcom/metamoji/media/voice/controller/VcRecordingsController$14;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/media/voice/controller/VcRecordingsController$14;-><init>(Lcom/metamoji/media/voice/controller/VcRecordingsController;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getCacheFilename(Ljava/lang/String;Lcom/metamoji/media/voice/controller/VcRecordingsManager$IVcDownloadCompletionAction;)Ljava/lang/String;

    return-void
.end method

.method handleExportRecordingToFile(Lcom/metamoji/cm/CmContext;)V
    .locals 2

    .line 1248
    const-string/jumbo v0, "ticket"

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    goto :goto_0

    .line 1253
    :cond_0
    invoke-static {}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 1257
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getRecordingsManager()Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    move-result-object v0

    .line 1260
    new-instance v1, Lcom/metamoji/media/voice/controller/VcRecordingsController$15;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/media/voice/controller/VcRecordingsController$15;-><init>(Lcom/metamoji/media/voice/controller/VcRecordingsController;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getCacheFilename(Ljava/lang/String;Lcom/metamoji/media/voice/controller/VcRecordingsManager$IVcDownloadCompletionAction;)Ljava/lang/String;

    return-void
.end method

.method public handlePagesStatusDidChange()V
    .locals 1

    .line 2427
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2431
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->collaboUserMode()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 2432
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->registPageChapterOnRecording()V

    :cond_1
    :goto_0
    return-void
.end method

.method handlePlay(Lcom/metamoji/cm/CmContext;)V
    .locals 3

    .line 641
    invoke-static {}, Lcom/metamoji/media/voice/audio/VcPlayer;->getSharedInstance()Lcom/metamoji/media/voice/audio/VcPlayer;

    move-result-object v0

    .line 642
    sget-object v1, Lcom/metamoji/media/voice/controller/VcRecordingsController$37;->$SwitchMap$com$metamoji$media$voice$audio$VcPlayer$VC_PLAYING_STATUS:[I

    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcPlayer;->getPlayingStatus()Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 654
    :cond_0
    const-string v1, "delegate"

    invoke-virtual {p1, v1}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/media/voice/audio/VcPlayer$IVcPlayerListener;

    .line 655
    const-string/jumbo v2, "ticket"

    invoke-virtual {p1, v2}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 656
    invoke-virtual {p0, p1, v1}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->prepareToPlayWithTicket(Ljava/lang/String;Lcom/metamoji/media/voice/audio/VcPlayer$IVcPlayerListener;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 657
    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcPlayer;->play()V

    :cond_1
    :goto_0
    return-void

    .line 651
    :cond_2
    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcPlayer;->play()V

    return-void

    .line 647
    :cond_3
    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcPlayer;->play()V

    return-void

    .line 644
    :cond_4
    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcPlayer;->pause()V

    return-void
.end method

.method handlePlayBackward(Lcom/metamoji/cm/CmContext;)V
    .locals 4

    .line 427
    invoke-static {}, Lcom/metamoji/media/voice/audio/VcPlayer;->getSharedInstance()Lcom/metamoji/media/voice/audio/VcPlayer;

    move-result-object p1

    .line 428
    invoke-virtual {p1}, Lcom/metamoji/media/voice/audio/VcPlayer;->getPlayingStatus()Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    move-result-object v0

    .line 429
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getRecordingsManager()Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    move-result-object v1

    .line 431
    sget-object v2, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;->PLAYING:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    if-eq v0, v2, :cond_3

    sget-object v2, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;->PAUSED:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 440
    :cond_0
    sget-object p1, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;->STOPPED:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    if-eq v0, p1, :cond_1

    sget-object p1, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;->PREPARED_TO_PLAY:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    if-ne v0, p1, :cond_2

    .line 442
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getCurrentTicket()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 443
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getCurrentTicket()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getPrevTicket(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 445
    invoke-virtual {p0, p1}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->setCurrentTicket(Ljava/lang/String;)V

    .line 446
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getPlayerBar()Lcom/metamoji/media/voice/ui/VcPlayerBar;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->didChangeCurrentTrack(Ljava/lang/Number;)V

    :cond_2
    return-void

    .line 432
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/metamoji/media/voice/audio/VcPlayer;->getCurrentTime()D

    move-result-wide v1

    .line 433
    new-instance v3, Lcom/metamoji/media/voice/controller/VcRecordingsController$2;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/metamoji/media/voice/controller/VcRecordingsController$2;-><init>(Lcom/metamoji/media/voice/controller/VcRecordingsController;Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;D)V

    invoke-virtual {p1, v3}, Lcom/metamoji/media/voice/audio/VcPlayer;->stopForce(Ljava/lang/Runnable;)V

    return-void
.end method

.method public handlePlayForward()V
    .locals 5

    .line 477
    invoke-static {}, Lcom/metamoji/media/voice/audio/VcPlayer;->getSharedInstance()Lcom/metamoji/media/voice/audio/VcPlayer;

    move-result-object v0

    .line 478
    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcPlayer;->getPlayingStatus()Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    move-result-object v1

    .line 479
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getRecordingsManager()Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    move-result-object v2

    .line 481
    sget-object v3, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;->PLAYING:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    if-eq v1, v3, :cond_5

    sget-object v3, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;->PAUSED:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    if-ne v1, v3, :cond_0

    goto :goto_0

    .line 489
    :cond_0
    sget-object v0, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;->STOPPED:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    if-eq v1, v0, :cond_1

    sget-object v0, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;->PREPARED_TO_PLAY:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    if-ne v1, v0, :cond_2

    .line 491
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getCurrentTicket()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    return-void

    .line 494
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getCurrentTicket()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getNextTicket(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 496
    invoke-virtual {p0, v0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->setCurrentTicket(Ljava/lang/String;)V

    .line 497
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getPlayerBar()Lcom/metamoji/media/voice/ui/VcPlayerBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->didChangeCurrentTrack(Ljava/lang/Number;)V

    return-void

    .line 499
    :cond_4
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->setFirstRecordingTicket()V

    return-void

    .line 482
    :cond_5
    :goto_0
    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcPlayer;->getCurrentTime()D

    move-result-wide v2

    .line 483
    new-instance v4, Lcom/metamoji/media/voice/controller/VcRecordingsController$3;

    invoke-direct {v4, p0, v1, v2, v3}, Lcom/metamoji/media/voice/controller/VcRecordingsController$3;-><init>(Lcom/metamoji/media/voice/controller/VcRecordingsController;Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;D)V

    invoke-virtual {v0, v4}, Lcom/metamoji/media/voice/audio/VcPlayer;->stopForce(Ljava/lang/Runnable;)V

    return-void
.end method

.method handlePlayFromAuthorInfo(Lcom/metamoji/cm/CmContext;)V
    .locals 3

    .line 759
    const-string v0, "authorInfos"

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 761
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 766
    :cond_0
    new-instance v0, Ljava/util/Date;

    const-wide v1, 0x3fffffffffffffffL    # 1.9999999999999998

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 767
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/nt/NtAuthorInfo;

    .line 768
    invoke-virtual {v1}, Lcom/metamoji/nt/NtAuthorInfo;->getActionTime()Ljava/util/Date;

    move-result-object v1

    .line 770
    invoke-virtual {v1, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    goto :goto_0

    .line 776
    :cond_2
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/metamoji/nt/NtEditorWindowController;->showPlayerBar(Z)V

    .line 778
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v1, Lcom/metamoji/media/voice/controller/VcRecordingsController$7;

    invoke-direct {v1, p0, v0}, Lcom/metamoji/media/voice/controller/VcRecordingsController$7;-><init>(Lcom/metamoji/media/voice/controller/VcRecordingsController;Ljava/util/Date;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0, v0}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void
.end method

.method handlePlayFromDate(Lcom/metamoji/cm/CmContext;)V
    .locals 3

    .line 671
    const-string/jumbo v0, "ticket"

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 672
    const-string v1, "date"

    invoke-virtual {p1, v1}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    .line 673
    const-string v2, "pageId"

    invoke-virtual {p1, v2}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 677
    invoke-virtual {p0, v1, v0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->playFromDate(Ljava/util/Date;Ljava/lang/String;)V

    goto :goto_0

    .line 679
    :cond_0
    invoke-virtual {p0, v1}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->playFromDate(Ljava/util/Date;)V

    :goto_0
    if-eqz p1, :cond_1

    .line 685
    iget-object v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController;->_noteController:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v0, p1}, Lcom/metamoji/nt/NtNoteController;->pageIndexFromPageId(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 687
    new-instance v0, Lcom/metamoji/cm/CmContext;

    invoke-direct {v0}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 688
    const-string v1, "pageIndex"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 689
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/nt/NtDocument;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_PAGE_JUMP:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, v1, v0}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    :cond_1
    return-void
.end method

.method handlePlayFromTimeAfter(Lcom/metamoji/cm/CmContext;)V
    .locals 2

    .line 793
    const-string/jumbo v0, "startTime"

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->toDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 796
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getCurrentTicket()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->playFromTimeAfter(DLjava/lang/String;)V

    return-void
.end method

.method handlePlayFromTimeToTime(Lcom/metamoji/cm/CmContext;)V
    .locals 8

    .line 722
    const-string/jumbo v0, "ticket"

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 723
    const-string/jumbo v1, "startTime"

    invoke-virtual {p1, v1}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->toDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 724
    const-string v1, "endTime"

    invoke-virtual {p1, v1}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->toDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    if-nez v0, :cond_0

    .line 728
    sget p1, Lcom/metamoji/noteanytime/R$string;->Voice_Msg_Error_FailedToPlay:I

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/media/voice/VcUtil$VcResultCheck;->showError(Ljava/lang/String;)V

    return-void

    .line 732
    :cond_0
    invoke-static {}, Lcom/metamoji/media/voice/audio/VcPlayer;->getSharedInstance()Lcom/metamoji/media/voice/audio/VcPlayer;

    move-result-object p1

    .line 733
    invoke-virtual {p1}, Lcom/metamoji/media/voice/audio/VcPlayer;->getPlayingStatus()Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    move-result-object v1

    .line 734
    invoke-virtual {p1}, Lcom/metamoji/media/voice/audio/VcPlayer;->canSeek()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 736
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getCurrentTicket()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;->PLAYING:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;->PAUSED:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    if-ne v1, v2, :cond_3

    .line 738
    :cond_1
    invoke-virtual {p1, v4, v5}, Lcom/metamoji/media/voice/audio/VcPlayer;->seek(D)V

    .line 739
    sget-object v0, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;->PAUSED:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    if-ne v1, v0, :cond_2

    .line 740
    invoke-virtual {p1}, Lcom/metamoji/media/voice/audio/VcPlayer;->play()V

    :cond_2
    return-void

    .line 743
    :cond_3
    invoke-virtual {p0, v0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->setCurrentTicket(Ljava/lang/String;)V

    .line 744
    new-instance v2, Lcom/metamoji/media/voice/controller/VcRecordingsController$6;

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/metamoji/media/voice/controller/VcRecordingsController$6;-><init>(Lcom/metamoji/media/voice/controller/VcRecordingsController;DD)V

    invoke-virtual {p0, v2}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->playAfterStop(Lcom/metamoji/media/voice/controller/VcRecordingsController$IPlayAction;)V

    return-void
.end method

.method handlePreferences(Lcom/metamoji/cm/CmContext;)V
    .locals 1

    .line 2411
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v0, Lcom/metamoji/media/voice/controller/VcRecordingsController$25;

    invoke-direct {v0, p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController$25;-><init>(Lcom/metamoji/media/voice/controller/VcRecordingsController;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method handleRemoveAllRecording(Lcom/metamoji/cm/CmContext;)V
    .locals 9

    .line 1867
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getRecordingsManager()Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    move-result-object p1

    .line 1868
    invoke-virtual {p1}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getAllTickets()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1872
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v1

    .line 1873
    invoke-virtual {v1}, Lcom/metamoji/nt/NtEditorWindowController;->getPlayerBar()Lcom/metamoji/media/voice/ui/VcPlayerBar;

    move-result-object v2

    .line 1874
    invoke-static {}, Lcom/metamoji/media/voice/audio/VcPlayer;->getSharedInstance()Lcom/metamoji/media/voice/audio/VcPlayer;

    move-result-object v3

    .line 1875
    invoke-virtual {v3}, Lcom/metamoji/media/voice/audio/VcPlayer;->getPlayingStatus()Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    move-result-object v4

    .line 1876
    invoke-virtual {v1}, Lcom/metamoji/nt/NtEditorWindowController;->getDocTagManager()Lcom/metamoji/ctold/CtDocTagManager;

    move-result-object v1

    .line 1877
    invoke-static {v1}, Lcom/metamoji/media/voice/VcUtil;->getVoiceTagInstances(Lcom/metamoji/ctold/CtTagManager;)Ljava/util/List;

    move-result-object v1

    const/4 v5, 0x0

    .line 1879
    invoke-virtual {p0, v5}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->setCurrentTicket(Ljava/lang/String;)V

    .line 1881
    sget-object v6, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;->STOPPED:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    if-eq v4, v6, :cond_1

    .line 1882
    new-instance v4, Lcom/metamoji/media/voice/controller/VcRecordingsController$23;

    invoke-direct {v4, p0, v2}, Lcom/metamoji/media/voice/controller/VcRecordingsController$23;-><init>(Lcom/metamoji/media/voice/controller/VcRecordingsController;Lcom/metamoji/media/voice/ui/VcPlayerBar;)V

    invoke-virtual {v3, v4}, Lcom/metamoji/media/voice/audio/VcPlayer;->stopForce(Ljava/lang/Runnable;)V

    .line 1890
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1891
    invoke-virtual {p1, v3}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->removeRecording(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_0

    .line 1896
    :cond_2
    invoke-static {v3, v1}, Lcom/metamoji/media/voice/VcUtil;->getTagInstances(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 1897
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/metamoji/ctold/tag/CtTagInstance;

    .line 1898
    invoke-virtual {p0, v8, v5}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->detachVoiceTag(Lcom/metamoji/ctold/tag/CtTagInstance;Lcom/metamoji/df/controller/EditContext;)V

    goto :goto_1

    .line 1901
    :cond_3
    new-array v6, v6, [Ljava/lang/String;

    aput-object v3, v6, v4

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->sendRemoveRecordingsDirection(Ljava/util/List;)V

    goto :goto_0

    .line 1904
    :cond_4
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/metamoji/nt/NtDocument;->setSaveOnEnd(Z)V

    .line 1906
    invoke-virtual {v2, v4}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->didUpdateModel(Z)V

    return-void
.end method

.method handleRemoveIndex(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V
    .locals 2

    .line 2333
    const-string/jumbo v0, "ticket"

    invoke-virtual {p2, v0}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2334
    const-string v1, "indexId"

    invoke-virtual {p2, v1}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 2335
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getRecordingsManager()Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->removeIndex(Ljava/lang/String;Ljava/lang/String;)V

    .line 2337
    invoke-virtual {p0, v0, p2, p1}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->removeIndex(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/nt/NtCommand;)V

    return-void
.end method

.method handleRemoveIndexDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;Lcom/metamoji/ns/direction/INsDirectionObserver;)Z
    .locals 3

    .line 2756
    new-instance v0, Lcom/metamoji/media/voice/direction/VcRemoveIndexDirectionData;

    invoke-virtual {p1}, Lcom/metamoji/ns/direction/NsReceivedDirection;->direction()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/df/model/IModel;

    invoke-direct {v0, p1}, Lcom/metamoji/media/voice/direction/VcRemoveIndexDirectionData;-><init>(Lcom/metamoji/df/model/IModel;)V

    .line 2758
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getRecordingsManager()Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    move-result-object p1

    .line 2760
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v1

    .line 2761
    invoke-virtual {v1}, Lcom/metamoji/nt/NtEditorWindowController;->getDocTagManager()Lcom/metamoji/ctold/CtDocTagManager;

    move-result-object v1

    .line 2762
    invoke-static {v1}, Lcom/metamoji/media/voice/VcUtil;->getVoiceTagInstances(Lcom/metamoji/ctold/CtTagManager;)Ljava/util/List;

    move-result-object v1

    .line 2764
    new-instance v2, Lcom/metamoji/media/voice/controller/VcRecordingsController$29;

    invoke-direct {v2, p0, p1, v1}, Lcom/metamoji/media/voice/controller/VcRecordingsController$29;-><init>(Lcom/metamoji/media/voice/controller/VcRecordingsController;Lcom/metamoji/media/voice/controller/VcRecordingsManager;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/media/voice/direction/VcRemoveIndexDirectionData;->forEachIndex(Lcom/metamoji/media/voice/direction/VcRemoveIndexDirectionData$IForEachBlock;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2783
    invoke-interface {p2}, Lcom/metamoji/ns/direction/INsDirectionObserver;->documentModified()V

    :cond_0
    return p1
.end method

.method handleRemoveRecording(Lcom/metamoji/cm/CmContext;Z)Z
    .locals 1

    .line 1792
    const-string v0, "removeTicket"

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v0, 0x1

    .line 1794
    invoke-virtual {p0, p1, p2, v0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->removeRecording(Ljava/lang/String;ZZ)Z

    move-result p1

    return p1
.end method

.method handleRemoveRecordingsDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;Lcom/metamoji/ns/direction/INsDirectionObserver;)Z
    .locals 6

    .line 2577
    new-instance v0, Lcom/metamoji/media/voice/direction/VcRemoveRecordingsDirectionData;

    invoke-virtual {p1}, Lcom/metamoji/ns/direction/NsReceivedDirection;->direction()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-direct {v0, p1}, Lcom/metamoji/media/voice/direction/VcRemoveRecordingsDirectionData;-><init>(Ljava/util/Map;)V

    .line 2578
    invoke-virtual {v0}, Lcom/metamoji/media/voice/direction/VcRemoveRecordingsDirectionData;->getRemoveTickets()Ljava/util/List;

    move-result-object p1

    .line 2579
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 2581
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2583
    new-instance v4, Lcom/metamoji/cm/CmContext;

    invoke-direct {v4}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 2584
    const-string v5, "removeTicket"

    invoke-virtual {v4, v5, v3}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2585
    const-string v3, "delegate"

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getPlayerBar()Lcom/metamoji/media/voice/ui/VcPlayerBar;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2587
    invoke-virtual {p0, v4, v1}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->handleRemoveRecording(Lcom/metamoji/cm/CmContext;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 2592
    :cond_1
    invoke-interface {p2}, Lcom/metamoji/ns/direction/INsDirectionObserver;->documentModified()V

    return v2
.end method

.method handleRenameIndexTitle(Lcom/metamoji/cm/CmContext;)V
    .locals 3

    .line 2393
    const-string/jumbo v0, "ticket"

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2394
    const-string v1, "indexTitle"

    invoke-virtual {p1, v1}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2395
    const-string v2, "indexId"

    invoke-virtual {p1, v2}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2397
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getRecordingsManager()Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    move-result-object v2

    invoke-virtual {v2, v0, p1, v1}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->setIndexTitle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2400
    invoke-virtual {p0, v0, p1, v1}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->sendRenameIndexTitleDirection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2403
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/metamoji/nt/NtDocument;->setSaveOnEnd(Z)V

    return-void
.end method

.method handleRenameIndexTitleDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;Lcom/metamoji/ns/direction/INsDirectionObserver;)Z
    .locals 2

    .line 2829
    new-instance v0, Lcom/metamoji/media/voice/direction/VcRenameIndexTitleDirectionData;

    invoke-virtual {p1}, Lcom/metamoji/ns/direction/NsReceivedDirection;->direction()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/df/model/IModel;

    invoke-direct {v0, p1}, Lcom/metamoji/media/voice/direction/VcRenameIndexTitleDirectionData;-><init>(Lcom/metamoji/df/model/IModel;)V

    .line 2831
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getRecordingsManager()Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    move-result-object p1

    .line 2833
    new-instance v1, Lcom/metamoji/media/voice/controller/VcRecordingsController$30;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/media/voice/controller/VcRecordingsController$30;-><init>(Lcom/metamoji/media/voice/controller/VcRecordingsController;Lcom/metamoji/media/voice/controller/VcRecordingsManager;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/media/voice/direction/VcRenameIndexTitleDirectionData;->forEachIndex(Lcom/metamoji/media/voice/direction/VcRenameIndexTitleDirectionData$IForEachBlock;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2843
    invoke-interface {p2}, Lcom/metamoji/ns/direction/INsDirectionObserver;->documentModified()V

    :cond_0
    return p1
.end method

.method handleRenameRecordingTitle(Lcom/metamoji/cm/CmContext;)V
    .locals 3

    .line 1914
    const-string/jumbo v0, "ticket"

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1915
    const-string v1, "recirdingTitle"

    invoke-virtual {p1, v1}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1916
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getRecordingsManager()Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    move-result-object v1

    .line 1917
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v2

    .line 1920
    invoke-virtual {v1, v0, p1, v2}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->setTitle(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/nt/NtDocument;)V

    .line 1923
    invoke-virtual {p0, v0, p1}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->sendRenameRecordingTitleDirection(Ljava/lang/String;Ljava/lang/String;)V

    .line 1926
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/metamoji/nt/NtDocument;->setSaveOnEnd(Z)V

    return-void
.end method

.method handleRenameRecordingTitleDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;Lcom/metamoji/ns/direction/INsDirectionObserver;)Z
    .locals 3

    .line 2630
    new-instance v0, Lcom/metamoji/media/voice/direction/VcRenameRecordingTitleDirectionData;

    invoke-virtual {p1}, Lcom/metamoji/ns/direction/NsReceivedDirection;->direction()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/df/model/IModel;

    invoke-direct {v0, p1}, Lcom/metamoji/media/voice/direction/VcRenameRecordingTitleDirectionData;-><init>(Lcom/metamoji/df/model/IModel;)V

    .line 2632
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getRecordingsManager()Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    move-result-object p1

    .line 2633
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v1

    .line 2635
    new-instance v2, Lcom/metamoji/media/voice/controller/VcRecordingsController$27;

    invoke-direct {v2, p0, p1, v1}, Lcom/metamoji/media/voice/controller/VcRecordingsController$27;-><init>(Lcom/metamoji/media/voice/controller/VcRecordingsController;Lcom/metamoji/media/voice/controller/VcRecordingsManager;Lcom/metamoji/nt/NtDocument;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/media/voice/direction/VcRenameRecordingTitleDirectionData;->forEachIndex(Lcom/metamoji/media/voice/direction/VcRenameRecordingTitleDirectionData$IForEachBlock;)Z

    move-result p1

    .line 2645
    invoke-static {}, Lcom/metamoji/media/MediaUploadManager2;->SharedInstance()Lcom/metamoji/media/MediaUploadManager2;

    move-result-object v0

    .line 2647
    invoke-virtual {v0}, Lcom/metamoji/media/MediaUploadManager2;->saveNeedsUploadTitles()V

    if-eqz p1, :cond_0

    .line 2650
    invoke-interface {p2}, Lcom/metamoji/ns/direction/INsDirectionObserver;->documentModified()V

    :cond_0
    return p1
.end method

.method handleSeekToTime(Lcom/metamoji/cm/CmContext;)V
    .locals 3

    .line 805
    const-string/jumbo v0, "ticket"

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 806
    const-string/jumbo v1, "startTime"

    invoke-virtual {p1, v1}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->toDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    if-nez v0, :cond_0

    .line 809
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getCurrentTicket()Ljava/lang/String;

    move-result-object v0

    .line 812
    :cond_0
    invoke-virtual {p0, v1, v2, v0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->seekToTime(DLjava/lang/String;)V

    return-void
.end method

.method handleStartRecording()V
    .locals 1

    const/4 v0, 0x1

    .line 1003
    invoke-virtual {p0, v0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->startRecording(Z)V

    return-void
.end method

.method handleStartedRecording(Lcom/metamoji/cm/CmContext;)V
    .locals 0

    .line 1693
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->startedRecording()V

    return-void
.end method

.method handleStopRecording()V
    .locals 3

    .line 1066
    invoke-static {}, Lcom/metamoji/media/voice/audio/VcRecorder;->getSharedInstance()Lcom/metamoji/media/voice/audio/VcRecorder;

    move-result-object v0

    .line 1067
    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcRecorder;->getRecordingStatus()Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;

    move-result-object v1

    sget-object v2, Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;->RECORDING:Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;

    if-ne v1, v2, :cond_0

    .line 1068
    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcRecorder;->stop()Z

    :cond_0
    return-void
.end method

.method handleStopToPlay()V
    .locals 1

    .line 995
    invoke-static {}, Lcom/metamoji/media/voice/audio/VcPlayer;->getSharedInstance()Lcom/metamoji/media/voice/audio/VcPlayer;

    move-result-object v0

    .line 996
    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcPlayer;->stop()V

    return-void
.end method

.method handleUploadedRecordingDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;Lcom/metamoji/ns/direction/INsDirectionObserver;)Z
    .locals 2

    .line 1663
    new-instance v0, Lcom/metamoji/media/voice/direction/VcUploadedRecordingDirectionData;

    invoke-virtual {p1}, Lcom/metamoji/ns/direction/NsReceivedDirection;->direction()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/metamoji/media/voice/direction/VcUploadedRecordingDirectionData;-><init>(Ljava/lang/Object;)V

    .line 1665
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getRecordingsManager()Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    move-result-object p1

    .line 1666
    invoke-virtual {v0}, Lcom/metamoji/media/voice/direction/VcUploadedRecordingDirectionData;->getTicket()Ljava/lang/String;

    move-result-object v0

    .line 1667
    invoke-virtual {p1, v0}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->hasTicket(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 1668
    invoke-virtual {p1, v0, v1}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->setHiddenRecording(Ljava/lang/String;Z)V

    .line 1670
    invoke-interface {p2}, Lcom/metamoji/ns/direction/INsDirectionObserver;->documentModified()V

    .line 1673
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p1

    .line 1674
    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getPlayerBar()Lcom/metamoji/media/voice/ui/VcPlayerBar;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1676
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p2

    new-instance v0, Lcom/metamoji/media/voice/controller/VcRecordingsController$20;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/media/voice/controller/VcRecordingsController$20;-><init>(Lcom/metamoji/media/voice/controller/VcRecordingsController;Lcom/metamoji/media/voice/ui/VcPlayerBar;)V

    invoke-virtual {p2, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public importRecordingFromServer(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/Date;Lcom/metamoji/media/voice/controller/VcRecordingsManager$IVcImportFromServerCompletionAction;)V
    .locals 9

    .line 1327
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getRecordingsManager()Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    .line 1328
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v7

    .line 1329
    invoke-static {}, Lcom/metamoji/media/voice/audio/VcPlayer;->getSharedInstance()Lcom/metamoji/media/voice/audio/VcPlayer;

    move-result-object v1

    .line 1332
    invoke-virtual {v1}, Lcom/metamoji/media/voice/audio/VcPlayer;->getPlayingStatus()Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    move-result-object v2

    sget-object v3, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;->STOPPED:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    if-eq v2, v3, :cond_0

    .line 1333
    new-instance v2, Lcom/metamoji/media/voice/controller/VcRecordingsController$16;

    invoke-direct {v2, p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController$16;-><init>(Lcom/metamoji/media/voice/controller/VcRecordingsController;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/media/voice/audio/VcPlayer;->stopForce(Ljava/lang/Runnable;)V

    .line 1341
    :cond_0
    new-instance v8, Lcom/metamoji/media/voice/controller/VcRecordingsController$17;

    move-object/from16 v1, p7

    invoke-direct {v8, p0, v1}, Lcom/metamoji/media/voice/controller/VcRecordingsController$17;-><init>(Lcom/metamoji/media/voice/controller/VcRecordingsController;Lcom/metamoji/media/voice/controller/VcRecordingsManager$IVcImportFromServerCompletionAction;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v8}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->importRecordingFromServer(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Lcom/metamoji/media/voice/controller/VcRecordingsManager$IVcImportFromServerCompletionAction;)V

    return-void
.end method

.method importRecordingFromServer(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Lcom/metamoji/media/voice/controller/VcRecordingsManager$IVcImportFromServerCompletionAction;)V
    .locals 12

    .line 1384
    new-instance v0, Lcom/metamoji/media/service/MediaBgTaskForGetMediaFile;

    sget-object v1, Lcom/metamoji/media/service/MediaBgTask$IMediaAction;->NOP:Lcom/metamoji/media/service/MediaBgTask$IMediaAction;

    new-instance v2, Lcom/metamoji/media/voice/controller/VcRecordingsController$18;

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v4, p8

    invoke-direct/range {v2 .. v11}, Lcom/metamoji/media/voice/controller/VcRecordingsController$18;-><init>(Lcom/metamoji/media/voice/controller/VcRecordingsController;Lcom/metamoji/media/voice/controller/VcRecordingsManager$IVcImportFromServerCompletionAction;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/metamoji/media/service/MediaBgTaskForGetMediaFile;-><init>(Lcom/metamoji/media/service/MediaBgTask$IMediaAction;Lcom/metamoji/media/service/MediaBgTaskForGetMediaFile$IMediaBgTaskForGetMediaFileCompleteAction;)V

    const/4 p1, 0x1

    .line 1409
    invoke-virtual {v0, p1}, Lcom/metamoji/media/service/MediaBgTaskForGetMediaFile;->setDisplayWaitView(Z)V

    .line 1410
    iput-object p2, v0, Lcom/metamoji/media/service/MediaBgTaskForGetMediaFile;->targetId:Ljava/lang/String;

    .line 1411
    iput-boolean p3, v0, Lcom/metamoji/media/service/MediaBgTaskForGetMediaFile;->isMediaId:Z

    .line 1412
    invoke-virtual {v0}, Lcom/metamoji/media/service/MediaBgTaskForGetMediaFile;->doInBackground()V

    return-void
.end method

.method isDirectable()Z
    .locals 1

    .line 2473
    iget-object v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController;->_directionManager:Lcom/metamoji/ns/direction/NsDirectionManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public makeDirectableWithDirectionManager(Lcom/metamoji/ns/direction/NsDirectionManager;Ljava/lang/String;)V
    .locals 1

    .line 2482
    iget-object v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController;->_directionManager:Lcom/metamoji/ns/direction/NsDirectionManager;

    if-eqz v0, :cond_0

    .line 2483
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->unmakeDirectable()V

    .line 2486
    :cond_0
    iput-object p1, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController;->_directionManager:Lcom/metamoji/ns/direction/NsDirectionManager;

    .line 2487
    iput-object p2, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController;->_directionHandlerID:Ljava/lang/String;

    .line 2488
    invoke-virtual {p1, p0}, Lcom/metamoji/ns/direction/NsDirectionManager;->registerHandler(Lcom/metamoji/ns/direction/INsDirectionHandler;)V

    return-void
.end method

.method public makePasteboardExtras(Ljava/util/Map;Lcom/metamoji/df/model/IModelManager;Lcom/metamoji/df/model/IModelManager;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/metamoji/df/model/IModelManager;",
            "Lcom/metamoji/df/model/IModelManager;",
            "Ljava/util/List<",
            "Lcom/metamoji/df/model/IModel;",
            ">;)V"
        }
    .end annotation

    .line 1493
    invoke-interface {p3}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object p3

    .line 1494
    new-instance v0, Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    sget-object v1, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->Copy:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    invoke-direct {v0, p3, v1}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;-><init>(Lcom/metamoji/df/model/IModel;Lcom/metamoji/nt/NtEditorWindowController$EditOperation;)V

    .line 1495
    invoke-virtual {v0}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getAllTickets()Ljava/util/List;

    move-result-object p3

    .line 1496
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1498
    invoke-static {}, Lcom/metamoji/media/voice/VcUtil;->getCacheDir()Ljava/io/File;

    move-result-object v2

    .line 1499
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1500
    invoke-virtual {v0, v3, p2}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->cloneModel(Ljava/lang/String;Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;

    move-result-object v4

    .line 1501
    const-string v5, "$url"

    invoke-interface {v4, v5}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1502
    invoke-virtual {v0, v3}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getCacheFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    goto :goto_0

    .line 1506
    :cond_0
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-nez v5, :cond_1

    .line 1508
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    .line 1511
    :cond_1
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1513
    :cond_2
    const-string/jumbo p2, "voice_models"

    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1514
    const-string p2, "page_models"

    invoke-interface {p1, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method notifyFocusChangedTextUnit(ZLcom/metamoji/un/text/UnTextUnit;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 2952
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->startDelayDirection()V

    return-void

    .line 2954
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->stopDelayDirection()V

    return-void
.end method

.method notifySendTextUnitDirection(Lcom/metamoji/un/text/UnTextUnit;)V
    .locals 0

    .line 2963
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->sendDelayedDirections()V

    return-void
.end method

.method public notifyUploadedFile(Ljava/lang/String;)Z
    .locals 2

    .line 3156
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getRecordingsManager()Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    move-result-object v0

    .line 3157
    invoke-virtual {v0, p1}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->hasTicket(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3158
    invoke-virtual {p0, p1}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->sendUploadedRecordingDirection(Ljava/lang/String;)V

    .line 3160
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/media/voice/controller/VcRecordingsController$34;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/media/voice/controller/VcRecordingsController$34;-><init>(Lcom/metamoji/media/voice/controller/VcRecordingsController;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public notifyUploadingFile(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 1

    .line 3125
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getRecordingsManager()Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    move-result-object v0

    .line 3127
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->notifyUploadingFile(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 3129
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object p2

    const/4 p4, 0x1

    .line 3132
    new-array v0, p4, [Ljava/lang/String;

    aput-object p1, v0, p3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->sendAddRecordingsDirectionOfTickets(Ljava/util/List;)V

    .line 3135
    invoke-virtual {p2}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/nt/NtNoteController;->setSaveOnEnd()V

    .line 3138
    invoke-static {}, Lcom/metamoji/media/MediaUploadManager;->SharedInstance()Lcom/metamoji/media/MediaUploadManager;

    move-result-object p2

    .line 3139
    invoke-virtual {p2, p1}, Lcom/metamoji/media/MediaUploadManager;->setRecordIdNotificationCompletedToUploadData(Ljava/lang/String;)V

    return p4

    :cond_0
    return p3
.end method

.method public onIdle(Lcom/metamoji/nt/NtDocument;)V
    .locals 0

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)Z
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1043
    :cond_0
    const-string p1, "android.permission.RECORD_AUDIO"

    aget-object p2, p2, v1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    aget p1, p3, v1

    if-nez p1, :cond_1

    .line 1045
    invoke-virtual {p0, v1}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->startRecording(Z)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method pastedPageId(Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/metamoji/df/model/IModel;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1624
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/df/model/IModel;

    .line 1626
    const-string v2, "pageId"

    invoke-interface {v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1627
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/2addr v0, p4

    add-int/lit8 v0, v0, 0x1

    .line 1628
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public performCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z
    .locals 2

    .line 289
    sget-object v0, Lcom/metamoji/media/voice/controller/VcRecordingsController$37;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    invoke-virtual {p1}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 361
    :pswitch_0
    invoke-virtual {p0, p2}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->handleDetachVoiceTag(Lcom/metamoji/cm/CmContext;)V

    goto/16 :goto_0

    .line 358
    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->handleExportRecordingToFile(Lcom/metamoji/cm/CmContext;)V

    goto :goto_0

    .line 355
    :pswitch_2
    invoke-virtual {p0, p2}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->handleExportRecordingToApplication(Lcom/metamoji/cm/CmContext;)V

    goto :goto_0

    .line 351
    :pswitch_3
    invoke-virtual {p0, p2}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->handleCompletedRecording(Lcom/metamoji/cm/CmContext;)V

    goto :goto_0

    .line 348
    :pswitch_4
    invoke-virtual {p0, p2}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->handleStartedRecording(Lcom/metamoji/cm/CmContext;)V

    goto :goto_0

    .line 345
    :pswitch_5
    invoke-virtual {p0, p2}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->handleRenameIndexTitle(Lcom/metamoji/cm/CmContext;)V

    goto :goto_0

    .line 342
    :pswitch_6
    invoke-virtual {p0, p2}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->handleRenameRecordingTitle(Lcom/metamoji/cm/CmContext;)V

    goto :goto_0

    .line 339
    :pswitch_7
    invoke-virtual {p0, p2}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->handleRemoveAllRecording(Lcom/metamoji/cm/CmContext;)V

    goto :goto_0

    :pswitch_8
    const/4 p1, 0x1

    .line 336
    invoke-virtual {p0, p2, p1}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->handleRemoveRecording(Lcom/metamoji/cm/CmContext;Z)Z

    goto :goto_0

    .line 333
    :pswitch_9
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->handleStopRecording()V

    goto :goto_0

    .line 330
    :pswitch_a
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->handleStartRecording()V

    goto :goto_0

    .line 327
    :pswitch_b
    invoke-virtual {p0, p2}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->handlePreferences(Lcom/metamoji/cm/CmContext;)V

    goto :goto_0

    .line 324
    :pswitch_c
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->handleRemoveIndex(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    goto :goto_0

    .line 320
    :pswitch_d
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->handleAddIndex(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    goto :goto_0

    .line 315
    :pswitch_e
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->handlePlayForward()V

    goto :goto_0

    .line 312
    :pswitch_f
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->handleStopToPlay()V

    goto :goto_0

    .line 309
    :pswitch_10
    invoke-virtual {p0, p2}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->handleSeekToTime(Lcom/metamoji/cm/CmContext;)V

    goto :goto_0

    .line 306
    :pswitch_11
    invoke-virtual {p0, p2}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->handlePlayFromTimeAfter(Lcom/metamoji/cm/CmContext;)V

    goto :goto_0

    .line 303
    :pswitch_12
    invoke-virtual {p0, p2}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->handlePlayFromAuthorInfo(Lcom/metamoji/cm/CmContext;)V

    goto :goto_0

    .line 300
    :pswitch_13
    invoke-virtual {p0, p2}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->handlePlayFromTimeToTime(Lcom/metamoji/cm/CmContext;)V

    goto :goto_0

    .line 297
    :pswitch_14
    invoke-virtual {p0, p2}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->handlePlayFromDate(Lcom/metamoji/cm/CmContext;)V

    goto :goto_0

    .line 294
    :pswitch_15
    invoke-virtual {p0, p2}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->handlePlay(Lcom/metamoji/cm/CmContext;)V

    goto :goto_0

    .line 291
    :pswitch_16
    invoke-virtual {p0, p2}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->handlePlayBackward(Lcom/metamoji/cm/CmContext;)V

    :goto_0
    const/4 p1, 0x0

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method playAfterStop(Lcom/metamoji/media/voice/controller/VcRecordingsController$IPlayAction;)V
    .locals 3

    .line 699
    invoke-static {}, Lcom/metamoji/media/voice/audio/VcPlayer;->getSharedInstance()Lcom/metamoji/media/voice/audio/VcPlayer;

    move-result-object v0

    .line 700
    sget-object v1, Lcom/metamoji/media/voice/controller/VcRecordingsController$37;->$SwitchMap$com$metamoji$media$voice$audio$VcPlayer$VC_PLAYING_STATUS:[I

    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcPlayer;->getPlayingStatus()Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 711
    invoke-interface {p1, v0}, Lcom/metamoji/media/voice/controller/VcRecordingsController$IPlayAction;->action(Lcom/metamoji/media/voice/audio/VcPlayer;)V

    return-void

    .line 703
    :cond_0
    new-instance v1, Lcom/metamoji/media/voice/controller/VcRecordingsController$5;

    invoke-direct {v1, p0, p1, v0}, Lcom/metamoji/media/voice/controller/VcRecordingsController$5;-><init>(Lcom/metamoji/media/voice/controller/VcRecordingsController;Lcom/metamoji/media/voice/controller/VcRecordingsController$IPlayAction;Lcom/metamoji/media/voice/audio/VcPlayer;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/media/voice/audio/VcPlayer;->stopForce(Ljava/lang/Runnable;)V

    return-void
.end method

.method playAndPauseFromTimeAfter(D)V
    .locals 4

    .line 981
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 982
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getPlayerBar()Lcom/metamoji/media/voice/ui/VcPlayerBar;

    move-result-object v0

    .line 983
    invoke-static {}, Lcom/metamoji/media/voice/audio/VcPlayer;->getSharedInstance()Lcom/metamoji/media/voice/audio/VcPlayer;

    move-result-object v1

    .line 985
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->didChangeCurrentTrack(Ljava/lang/Number;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 986
    invoke-virtual {p0, v2, v0, v3}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->prepareToPlayWithTicket(Ljava/lang/String;Lcom/metamoji/media/voice/audio/VcPlayer$IVcPlayerListener;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 987
    invoke-virtual {v1, p1, p2}, Lcom/metamoji/media/voice/audio/VcPlayer;->seek(D)V

    :cond_0
    return-void
.end method

.method playBackward(Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;D)V
    .locals 3

    .line 453
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getCurrentTicket()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 456
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getRecordingsManager()Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    move-result-object p2

    .line 458
    new-instance p3, Lcom/metamoji/cm/CmContext;

    invoke-direct {p3}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 459
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 460
    const-string v1, "delegate"

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getPlayerBar()Lcom/metamoji/media/voice/ui/VcPlayerBar;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 463
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getCurrentTicket()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getPrevTicket(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 465
    invoke-virtual {p0, p2}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->setCurrentTicket(Ljava/lang/String;)V

    .line 466
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getPlayerBar()Lcom/metamoji/media/voice/ui/VcPlayerBar;

    move-result-object p2

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->didChangeCurrentTrack(Ljava/lang/Number;)V

    .line 468
    :cond_1
    sget-object p2, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;->PAUSED:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    if-eq p1, p2, :cond_2

    .line 469
    invoke-virtual {p0, p3}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->handlePlay(Lcom/metamoji/cm/CmContext;)V

    :cond_2
    :goto_0
    return-void
.end method

.method playForward(Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;D)V
    .locals 4

    .line 505
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getCurrentTicket()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 509
    :cond_0
    invoke-static {}, Lcom/metamoji/media/voice/audio/VcPlayer;->getSharedInstance()Lcom/metamoji/media/voice/audio/VcPlayer;

    move-result-object p2

    .line 510
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getRecordingsManager()Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    move-result-object p3

    .line 512
    new-instance v0, Lcom/metamoji/cm/CmContext;

    invoke-direct {v0}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 513
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v1

    .line 514
    const-string v2, "delegate"

    invoke-virtual {v1}, Lcom/metamoji/nt/NtEditorWindowController;->getPlayerBar()Lcom/metamoji/media/voice/ui/VcPlayerBar;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 517
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getCurrentTicket()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getNextTicket(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 519
    invoke-virtual {p0, p3}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->setCurrentTicket(Ljava/lang/String;)V

    .line 520
    invoke-virtual {v1}, Lcom/metamoji/nt/NtEditorWindowController;->getPlayerBar()Lcom/metamoji/media/voice/ui/VcPlayerBar;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->didChangeCurrentTrack(Ljava/lang/Number;)V

    .line 521
    sget-object p2, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;->PAUSED:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    if-eq p1, p2, :cond_1

    .line 522
    invoke-virtual {p0, v0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->handlePlay(Lcom/metamoji/cm/CmContext;)V

    :cond_1
    :goto_0
    return-void

    .line 525
    :cond_2
    invoke-virtual {p2}, Lcom/metamoji/media/voice/audio/VcPlayer;->stop()V

    return-void
.end method

.method playFromDate(Ljava/util/Date;)V
    .locals 3

    .line 820
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getRecordingsManager()Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    move-result-object v0

    .line 824
    invoke-virtual {v0, p1}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getTicketDataAt(Ljava/util/Date;)Ljava/util/List;

    move-result-object v0

    .line 825
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 827
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "$ticket"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 828
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->playFromDate(Ljava/util/Date;Ljava/lang/String;)V

    return-void

    .line 829
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v2, :cond_1

    .line 832
    new-instance p1, Lcom/metamoji/media/voice/ui/VcSelectRecordingsDialog;

    invoke-direct {p1}, Lcom/metamoji/media/voice/ui/VcSelectRecordingsDialog;-><init>()V

    .line 833
    invoke-virtual {p1, v0}, Lcom/metamoji/media/voice/ui/VcSelectRecordingsDialog;->init(Ljava/util/List;)V

    .line 834
    new-instance v0, Lcom/metamoji/media/voice/controller/VcRecordingsController$8;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/media/voice/controller/VcRecordingsController$8;-><init>(Lcom/metamoji/media/voice/controller/VcRecordingsController;Lcom/metamoji/media/voice/ui/VcSelectRecordingsDialog;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/media/voice/ui/VcSelectRecordingsDialog;->setOnClosedListener(Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;)V

    .line 850
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/media/voice/controller/VcRecordingsController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/metamoji/media/voice/controller/VcRecordingsController$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/media/voice/ui/VcSelectRecordingsDialog;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method playFromDate(Ljava/util/Date;Ljava/lang/String;)V
    .locals 4

    .line 864
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getRecordingsManager()Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    move-result-object v0

    if-nez p2, :cond_0

    .line 867
    sget p1, Lcom/metamoji/noteanytime/R$string;->Voice_Msg_Error_FailedToPlay:I

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/media/voice/VcUtil$VcResultCheck;->showError(Ljava/lang/String;)V

    return-void

    .line 871
    :cond_0
    invoke-virtual {v0, p2}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getStartDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/TimeUtils;->date2unixtime(Ljava/util/Date;)D

    move-result-wide v0

    .line 872
    invoke-static {p1}, Lcom/metamoji/cm/TimeUtils;->date2unixtime(Ljava/util/Date;)D

    move-result-wide v2

    sub-double/2addr v2, v0

    .line 874
    invoke-virtual {p0, v2, v3, p2}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->playFromTimeAfter(DLjava/lang/String;)V

    return-void
.end method

.method playFromTime(DD)V
    .locals 3

    .line 967
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 968
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getPlayerBar()Lcom/metamoji/media/voice/ui/VcPlayerBar;

    move-result-object v0

    .line 969
    invoke-static {}, Lcom/metamoji/media/voice/audio/VcPlayer;->getSharedInstance()Lcom/metamoji/media/voice/audio/VcPlayer;

    move-result-object v1

    .line 971
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->didChangeCurrentTrack(Ljava/lang/Number;)V

    const/4 v2, 0x0

    .line 972
    invoke-virtual {p0, v2, v0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->prepareToPlayWithTicket(Ljava/lang/String;Lcom/metamoji/media/voice/audio/VcPlayer$IVcPlayerListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 973
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/metamoji/media/voice/audio/VcPlayer;->play(DD)V

    :cond_0
    return-void
.end method

.method playFromTimeAfter(D)V
    .locals 3

    .line 950
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 951
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getPlayerBar()Lcom/metamoji/media/voice/ui/VcPlayerBar;

    move-result-object v0

    .line 952
    invoke-static {}, Lcom/metamoji/media/voice/audio/VcPlayer;->getSharedInstance()Lcom/metamoji/media/voice/audio/VcPlayer;

    move-result-object v1

    .line 954
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->didChangeCurrentTrack(Ljava/lang/Number;)V

    const/4 v2, 0x0

    .line 955
    invoke-virtual {p0, v2, v0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->prepareToPlayWithTicket(Ljava/lang/String;Lcom/metamoji/media/voice/audio/VcPlayer$IVcPlayerListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 956
    invoke-virtual {v1, p1, p2}, Lcom/metamoji/media/voice/audio/VcPlayer;->play(D)V

    :cond_0
    return-void
.end method

.method playFromTimeAfter(DLjava/lang/String;)V
    .locals 0

    if-nez p3, :cond_0

    .line 885
    sget p1, Lcom/metamoji/noteanytime/R$string;->Voice_Msg_Error_FailedToPlay:I

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/media/voice/VcUtil$VcResultCheck;->showError(Ljava/lang/String;)V

    return-void

    .line 889
    :cond_0
    invoke-virtual {p0, p3}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->setCurrentTicket(Ljava/lang/String;)V

    .line 890
    new-instance p3, Lcom/metamoji/media/voice/controller/VcRecordingsController$9;

    invoke-direct {p3, p0, p1, p2}, Lcom/metamoji/media/voice/controller/VcRecordingsController$9;-><init>(Lcom/metamoji/media/voice/controller/VcRecordingsController;D)V

    invoke-virtual {p0, p3}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->playAfterStop(Lcom/metamoji/media/voice/controller/VcRecordingsController$IPlayAction;)V

    return-void
.end method

.method prepareToPlayWithTicket(Ljava/lang/String;Lcom/metamoji/media/voice/audio/VcPlayer$IVcPlayerListener;)Z
    .locals 1

    const/4 v0, 0x0

    .line 536
    invoke-virtual {p0, p1, p2, v0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->prepareToPlayWithTicket(Ljava/lang/String;Lcom/metamoji/media/voice/audio/VcPlayer$IVcPlayerListener;Z)Z

    move-result p1

    return p1
.end method

.method prepareToPlayWithTicket(Ljava/lang/String;Lcom/metamoji/media/voice/audio/VcPlayer$IVcPlayerListener;Z)Z
    .locals 6

    .line 547
    invoke-static {}, Lcom/metamoji/media/voice/audio/VcPlayer;->getSharedInstance()Lcom/metamoji/media/voice/audio/VcPlayer;

    move-result-object p3

    .line 548
    invoke-virtual {p3}, Lcom/metamoji/media/voice/audio/VcPlayer;->getPlayingStatus()Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    move-result-object v0

    .line 549
    sget-object v1, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;->STOPPED:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;->PREPARED_TO_PLAY:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    if-eq v0, v1, :cond_0

    return v2

    .line 553
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getRecordingsManager()Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 556
    invoke-virtual {p0, p1}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->setCurrentTicket(Ljava/lang/String;)V

    .line 557
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getPlayerBar()Lcom/metamoji/media/voice/ui/VcPlayerBar;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->didChangeCurrentTrack(Ljava/lang/Number;)V

    goto :goto_2

    .line 559
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getCurrentTicket()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    .line 561
    invoke-virtual {v0}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getSortedAllTickets()Ljava/util/List;

    move-result-object v3

    .line 562
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    move v4, v2

    .line 564
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 565
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->isHiddenRecording(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 566
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 571
    :cond_3
    :goto_1
    invoke-virtual {p0, p1}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->setCurrentTicket(Ljava/lang/String;)V

    .line 572
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getPlayerBar()Lcom/metamoji/media/voice/ui/VcPlayerBar;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->didChangeCurrentTrack(Ljava/lang/Number;)V

    .line 575
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getCurrentTicket()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_5

    return v2

    .line 581
    :cond_5
    new-instance p1, Lcom/metamoji/cm/ResetableEvent;

    const/4 v1, 0x1

    invoke-direct {p1, v2, v1}, Lcom/metamoji/cm/ResetableEvent;-><init>(ZZ)V

    .line 582
    invoke-virtual {p1}, Lcom/metamoji/cm/ResetableEvent;->reset()V

    .line 583
    new-instance v3, Lcom/metamoji/cm/CmContext;

    invoke-direct {v3}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 584
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getCurrentTicket()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/metamoji/media/voice/controller/VcRecordingsController$4;

    invoke-direct {v5, p0, v3, p1}, Lcom/metamoji/media/voice/controller/VcRecordingsController$4;-><init>(Lcom/metamoji/media/voice/controller/VcRecordingsController;Lcom/metamoji/cm/CmContext;Lcom/metamoji/cm/ResetableEvent;)V

    invoke-virtual {v0, v4, v5}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getCacheFilename(Ljava/lang/String;Lcom/metamoji/media/voice/controller/VcRecordingsManager$IVcDownloadCompletionAction;)Ljava/lang/String;

    .line 603
    :try_start_0
    invoke-virtual {p1}, Lcom/metamoji/cm/ResetableEvent;->waitOne()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 605
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 609
    :goto_3
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getCurrentTicket()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getStartDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    .line 610
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getCurrentTicket()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getDuration(Ljava/lang/String;)D

    move-result-wide v4

    .line 611
    const-string v0, "cacheFilename"

    invoke-virtual {v3, v0}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 613
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/nt/NtEditorWindowController;->getPlayerBar()Lcom/metamoji/media/voice/ui/VcPlayerBar;

    move-result-object v2

    .line 614
    invoke-virtual {v2}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->didDownloadCacheFileToPlay()V

    .line 617
    invoke-static {}, Lcom/metamoji/media/voice/VcUtil;->getCacheDir()Ljava/io/File;

    move-result-object v2

    .line 618
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 625
    invoke-virtual {p3, p2}, Lcom/metamoji/media/voice/audio/VcPlayer;->setListener(Lcom/metamoji/media/voice/audio/VcPlayer$IVcPlayerListener;)V

    .line 626
    invoke-virtual {p3, v4, v5}, Lcom/metamoji/media/voice/audio/VcPlayer;->setDuration(D)V

    .line 628
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getCurrentTicket()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, v3, p2, p1}, Lcom/metamoji/media/voice/audio/VcPlayer;->prepareToPlayWithFile(Ljava/io/File;Ljava/lang/String;Ljava/util/Date;)V

    return v1

    .line 630
    :cond_6
    sget-object p1, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYER_ERROR_STATUS;->NOT_YET_UPLOADED:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYER_ERROR_STATUS;

    invoke-interface {p2, p1}, Lcom/metamoji/media/voice/audio/VcPlayer$IVcPlayerListener;->playerDidFinishToPlay(Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYER_ERROR_STATUS;)V

    return v2
.end method

.method public processEnableCommand(Lcom/metamoji/nt/NtCommand;Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public processInhibitCommand(Lcom/metamoji/nt/NtCommand;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public processSelectCommand(Lcom/metamoji/nt/NtCommand;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method recorder(Lcom/metamoji/media/voice/audio/VcRecorder;Lcom/metamoji/media/voice/audio/VcRecorder$IVcRecorderListener;)V
    .locals 7

    .line 1073
    invoke-static {}, Lcom/metamoji/media/MediaUtil;->makeTicket()Ljava/lang/String;

    move-result-object v4

    .line 1074
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v5

    .line 1077
    invoke-static {}, Lcom/metamoji/media/voice/audio/VcPlayer;->getSharedInstance()Lcom/metamoji/media/voice/audio/VcPlayer;

    move-result-object v6

    .line 1078
    new-instance v0, Lcom/metamoji/media/voice/controller/VcRecordingsController$11;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/media/voice/controller/VcRecordingsController$11;-><init>(Lcom/metamoji/media/voice/controller/VcRecordingsController;Lcom/metamoji/media/voice/audio/VcRecorder;Lcom/metamoji/media/voice/audio/VcRecorder$IVcRecorderListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    invoke-virtual {v6}, Lcom/metamoji/media/voice/audio/VcPlayer;->getPlayingStatus()Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    move-result-object p1

    sget-object p2, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;->STOPPED:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    if-eq p1, p2, :cond_0

    .line 1091
    invoke-virtual {v6, v0}, Lcom/metamoji/media/voice/audio/VcPlayer;->stopForce(Ljava/lang/Runnable;)V

    return-void

    .line 1093
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public recorderBeginInterruptionToRecord(Lcom/metamoji/media/voice/audio/VcRecorder;)V
    .locals 1

    const/4 v0, 0x1

    .line 1164
    iput-boolean v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController;->_isRecordingInterrupted:Z

    .line 1165
    invoke-virtual {p1}, Lcom/metamoji/media/voice/audio/VcRecorder;->stop()Z

    return-void
.end method

.method public recorderEndInterruptionToRecord(Lcom/metamoji/media/voice/audio/VcRecorder;)V
    .locals 1

    .line 1174
    iget-boolean v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController;->_isRecordingInterrupted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1175
    iput-boolean v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController;->_isRecordingInterrupted:Z

    .line 1176
    invoke-virtual {p0, p1, p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->recorder(Lcom/metamoji/media/voice/audio/VcRecorder;Lcom/metamoji/media/voice/audio/VcRecorder$IVcRecorderListener;)V

    :cond_0
    return-void
.end method

.method public recorderStartedToRecord(Lcom/metamoji/media/voice/audio/VcRecorder;)V
    .locals 1

    .line 1111
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v0, Lcom/metamoji/media/voice/controller/VcRecordingsController$12;

    invoke-direct {v0, p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController$12;-><init>(Lcom/metamoji/media/voice/controller/VcRecordingsController;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public recorderStoppedToRecord(Lcom/metamoji/media/voice/audio/VcRecorder;)V
    .locals 1

    .line 1143
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v0, Lcom/metamoji/media/voice/controller/VcRecordingsController$13;

    invoke-direct {v0, p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController$13;-><init>(Lcom/metamoji/media/voice/controller/VcRecordingsController;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public recorderStoppingToRecord(Lcom/metamoji/media/voice/audio/VcRecorder;)V
    .locals 0

    return-void
.end method

.method public recorderWasReadyToRecord(Lcom/metamoji/media/voice/audio/VcRecorder;)V
    .locals 0

    return-void
.end method

.method public registPageChapterOnRecording()V
    .locals 2

    .line 2440
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    .line 2441
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v1

    .line 2442
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getPageIndex()I

    move-result v0

    .line 2444
    invoke-virtual {p0, v1, v0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->registPageChapterOnRecording(Ljava/lang/String;I)V

    return-void
.end method

.method public registPageChapterOnRecording(Ljava/lang/String;I)V
    .locals 5

    .line 2454
    invoke-static {}, Lcom/metamoji/media/voice/audio/VcRecorder;->getSharedInstance()Lcom/metamoji/media/voice/audio/VcRecorder;

    move-result-object v0

    .line 2455
    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcRecorder;->getRecordingStatus()Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;

    move-result-object v1

    sget-object v2, Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;->RECORDING:Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;

    if-eq v1, v2, :cond_0

    return-void

    .line 2458
    :cond_0
    sget v1, Lcom/metamoji/noteanytime/R$string;->Voice_PageLabelTitle:I

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 2460
    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcRecorder;->getStartDate()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/TimeUtils;->date2unixtime(Ljava/util/Date;)D

    move-result-wide v1

    .line 2461
    invoke-static {}, Lcom/metamoji/cm/TimeUtils;->currentUnixTimestamp()D

    move-result-wide v3

    sub-double/2addr v3, v1

    .line 2463
    invoke-virtual {v0, p2, v3, v4, p1}, Lcom/metamoji/media/voice/audio/VcRecorder;->startIndex(Ljava/lang/String;DLjava/lang/String;)V

    .line 2464
    invoke-virtual {v0, v3, v4}, Lcom/metamoji/media/voice/audio/VcRecorder;->endIndex(D)V

    return-void
.end method

.method removeIndex(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/nt/NtCommand;)V
    .locals 6

    .line 2342
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getRecordingsManager()Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    move-result-object v0

    .line 2343
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v1

    .line 2346
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v2

    .line 2347
    invoke-virtual {v2}, Lcom/metamoji/nt/NtEditorWindowController;->getDocTagManager()Lcom/metamoji/ctold/CtDocTagManager;

    move-result-object v2

    .line 2348
    invoke-static {v2}, Lcom/metamoji/media/voice/VcUtil;->getVoiceTagInstances(Lcom/metamoji/ctold/CtTagManager;)Ljava/util/List;

    move-result-object v2

    .line 2349
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/ctold/tag/CtTagInstance;

    .line 2350
    const-string v4, "indexId"

    invoke-virtual {v3, v4}, Lcom/metamoji/ctold/tag/CtTagInstance;->getProperty(Ljava/lang/String;)Lcom/metamoji/ctold/property/CtProperty;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/ctold/property/CtProperty;->getStringValue()Ljava/lang/String;

    move-result-object v4

    .line 2351
    const-string/jumbo v5, "ticket"

    invoke-virtual {v3, v5}, Lcom/metamoji/ctold/tag/CtTagInstance;->getProperty(Ljava/lang/String;)Lcom/metamoji/ctold/property/CtProperty;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/ctold/property/CtProperty;->getStringValue()Ljava/lang/String;

    move-result-object v5

    .line 2352
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    .line 2353
    invoke-virtual {p0, v3, v4}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->detachVoiceTag(Lcom/metamoji/ctold/tag/CtTagInstance;Lcom/metamoji/df/controller/EditContext;)V

    goto :goto_0

    .line 2357
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->removeIndex(Ljava/lang/String;Ljava/lang/String;)V

    .line 2360
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->sendRemoveIndexDirection(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 2363
    invoke-virtual {v1, p1}, Lcom/metamoji/nt/NtDocument;->setSaveOnEnd(Z)V

    .line 2366
    invoke-virtual {v1}, Lcom/metamoji/nt/NtDocument;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p3, p2}, Lcom/metamoji/nt/NtCommandManager;->selectCommand(Lcom/metamoji/nt/NtCommand;Z)Z

    return-void
.end method

.method removeRecording(Ljava/lang/String;ZZ)Z
    .locals 5

    .line 1797
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getRecordingsManager()Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    move-result-object p3

    .line 1798
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 1801
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getCurrentTicket()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 1802
    invoke-static {}, Lcom/metamoji/media/voice/audio/VcPlayer;->getSharedInstance()Lcom/metamoji/media/voice/audio/VcPlayer;

    move-result-object v1

    .line 1803
    invoke-virtual {v1}, Lcom/metamoji/media/voice/audio/VcPlayer;->getPlayingStatus()Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    move-result-object v3

    .line 1806
    invoke-virtual {p3, p1}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getBackwardTicket(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 1808
    invoke-virtual {p3, p1}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getForwardTicket(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 1810
    invoke-virtual {p0, v2}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->setCurrentTicket(Ljava/lang/String;)V

    goto :goto_0

    .line 1812
    :cond_0
    invoke-virtual {p0, v4}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->setCurrentTicket(Ljava/lang/String;)V

    goto :goto_0

    .line 1815
    :cond_1
    invoke-virtual {p0, v4}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->setCurrentTicket(Ljava/lang/String;)V

    .line 1817
    :goto_0
    sget-object v4, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;->STOPPED:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    if-eq v3, v4, :cond_2

    .line 1818
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getPlayerBar()Lcom/metamoji/media/voice/ui/VcPlayerBar;

    move-result-object v3

    .line 1819
    new-instance v4, Lcom/metamoji/media/voice/controller/VcRecordingsController$22;

    invoke-direct {v4, p0, v3}, Lcom/metamoji/media/voice/controller/VcRecordingsController$22;-><init>(Lcom/metamoji/media/voice/controller/VcRecordingsController;Lcom/metamoji/media/voice/ui/VcPlayerBar;)V

    invoke-virtual {v1, v4}, Lcom/metamoji/media/voice/audio/VcPlayer;->stopForce(Ljava/lang/Runnable;)V

    .line 1829
    :cond_2
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocTagManager()Lcom/metamoji/ctold/CtDocTagManager;

    move-result-object v1

    .line 1830
    invoke-static {v1}, Lcom/metamoji/media/voice/VcUtil;->getVoiceTagInstances(Lcom/metamoji/ctold/CtTagManager;)Ljava/util/List;

    move-result-object v1

    .line 1831
    invoke-static {p1, v1}, Lcom/metamoji/media/voice/VcUtil;->getTagInstances(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 1832
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/ctold/tag/CtTagInstance;

    .line 1833
    invoke-virtual {p0, v3, v2}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->detachVoiceTag(Lcom/metamoji/ctold/tag/CtTagInstance;Lcom/metamoji/df/controller/EditContext;)V

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_4

    .line 1838
    invoke-virtual {p3, p1}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 1839
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1840
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1843
    :cond_4
    invoke-virtual {p3, p1}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->removeRecording(Ljava/lang/String;)Z

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_5

    return p3

    :cond_5
    if-eqz v2, :cond_6

    .line 1850
    invoke-virtual {p0, v2}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->sendRemoveRecordingsDirection(Ljava/util/List;)V

    .line 1854
    :cond_6
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object p2

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lcom/metamoji/nt/NtDocument;->setSaveOnEnd(Z)V

    .line 1856
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getPlayerBar()Lcom/metamoji/media/voice/ui/VcPlayerBar;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->didRemoveTicket(Ljava/lang/String;)V

    .line 1857
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getPlayerBar()Lcom/metamoji/media/voice/ui/VcPlayerBar;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->didUpdateModel(Z)V

    return v1
.end method

.method seekToTime(DLjava/lang/String;)V
    .locals 7

    if-nez p3, :cond_0

    .line 906
    sget p1, Lcom/metamoji/noteanytime/R$string;->Voice_Msg_Error_FailedToPlay:I

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/media/voice/VcUtil$VcResultCheck;->showError(Ljava/lang/String;)V

    return-void

    .line 910
    :cond_0
    invoke-static {}, Lcom/metamoji/media/voice/audio/VcPlayer;->getSharedInstance()Lcom/metamoji/media/voice/audio/VcPlayer;

    move-result-object v0

    .line 911
    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcPlayer;->getPlayingStatus()Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    move-result-object v4

    .line 912
    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcPlayer;->canSeek()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 914
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getCurrentTicket()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;->PLAYING:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    if-eq v4, v1, :cond_1

    sget-object v1, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;->PAUSED:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    if-ne v4, v1, :cond_2

    .line 916
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/metamoji/media/voice/audio/VcPlayer;->seek(D)V

    return-void

    .line 918
    :cond_2
    invoke-virtual {p0, p3}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->setCurrentTicket(Ljava/lang/String;)V

    .line 919
    sget-object p3, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;->PLAYING:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    if-eq v4, p3, :cond_5

    sget-object p3, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;->PAUSED:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    if-ne v4, p3, :cond_3

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    .line 937
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->playAndPauseFromTimeAfter(D)V

    return-void

    .line 939
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->playFromTimeAfter(D)V

    .line 940
    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcPlayer;->pause()V

    return-void

    .line 920
    :cond_5
    :goto_0
    new-instance v1, Lcom/metamoji/media/voice/controller/VcRecordingsController$10;

    move-object v2, p0

    move-wide v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/media/voice/controller/VcRecordingsController$10;-><init>(Lcom/metamoji/media/voice/controller/VcRecordingsController;ZLcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;D)V

    invoke-virtual {p0, v1}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->playAfterStop(Lcom/metamoji/media/voice/controller/VcRecordingsController$IPlayAction;)V

    return-void
.end method

.method sendAddIndexDirection(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
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

    .line 2664
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->isDirectable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2675
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->createAddIndexDirectionDataIndex(Ljava/lang/String;Ljava/util/Map;)Lcom/metamoji/media/voice/direction/VcAddIndexDirectionData;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2678
    iget-object v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController;->_directionManager:Lcom/metamoji/ns/direction/NsDirectionManager;

    invoke-virtual {p1}, Lcom/metamoji/media/voice/direction/VcAddIndexDirectionData;->getDirection()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController;->_directionHandlerID:Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "RECORDING"

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/ns/direction/NsDirectionManager;->sendDirection(Ljava/lang/Object;Ljava/lang/String;ZZLjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public sendAddRecordingsDirectionOfTickets(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2510
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->isDirectable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2515
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getRecordingsManager()Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    move-result-object v0

    .line 2516
    invoke-virtual {v0, p1}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->createAddRecordingsDirectionData(Ljava/util/List;)Lcom/metamoji/media/voice/direction/VcAddRecordingsDirectionData;

    move-result-object v1

    .line 2517
    invoke-virtual {v0, p1}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getFileSizeOfTickets(Ljava/util/List;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    if-eqz v1, :cond_1

    .line 2519
    iget-object v4, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController;->_directionManager:Lcom/metamoji/ns/direction/NsDirectionManager;

    invoke-virtual {v1}, Lcom/metamoji/media/voice/direction/VcAddRecordingsDirectionData;->getDirection()Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController;->_directionHandlerID:Ljava/lang/String;

    const/4 v8, 0x0

    const-string v10, "RECORDING"

    const/4 v7, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/metamoji/ns/direction/NsDirectionManager;->sendDirection(Ljava/lang/Object;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method sendChangeIndexTimeDirection(Ljava/lang/String;Ljava/lang/String;DD)V
    .locals 6

    .line 2860
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->isDirectable()Z

    move-result v0

    if-nez v0, :cond_0

    move-object p2, p0

    goto :goto_0

    .line 2871
    :cond_0
    invoke-virtual/range {p0 .. p6}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->createChangeIndexTimeDirectionDataStartTime(Ljava/lang/String;Ljava/lang/String;DD)Lcom/metamoji/media/voice/direction/VcChangeIndexTimeDirectionData;

    move-result-object p1

    move-object p2, p0

    if-eqz p1, :cond_1

    .line 2873
    iget-object v0, p2, Lcom/metamoji/media/voice/controller/VcRecordingsController;->_directionManager:Lcom/metamoji/ns/direction/NsDirectionManager;

    invoke-virtual {p1}, Lcom/metamoji/media/voice/direction/VcChangeIndexTimeDirectionData;->getDirection()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p2, Lcom/metamoji/media/voice/controller/VcRecordingsController;->_directionHandlerID:Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "RECORDING"

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/ns/direction/NsDirectionManager;->sendDirection(Ljava/lang/Object;Ljava/lang/String;ZZLjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method sendDelayedDirections()V
    .locals 8

    .line 2934
    iget-object v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController;->_delayedDirections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2935
    iget-object v2, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController;->_delayedDirections:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ns/direction/NsDirectionData;

    .line 2936
    iget-object v2, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController;->_directionManager:Lcom/metamoji/ns/direction/NsDirectionManager;

    invoke-virtual {v1}, Lcom/metamoji/ns/direction/NsDirectionData;->getDirection()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController;->_directionHandlerID:Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "RECORDING"

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/metamoji/ns/direction/NsDirectionManager;->sendDirection(Ljava/lang/Object;Ljava/lang/String;ZZLjava/lang/String;)V

    goto :goto_0

    .line 2940
    :cond_0
    iget-object v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController;->_delayedDirections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method sendRemoveIndexDirection(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 2725
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->isDirectable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2736
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->createRemoveIndexDirectionDataIndexId(Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/media/voice/direction/VcRemoveIndexDirectionData;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2738
    iget-object v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController;->_directionManager:Lcom/metamoji/ns/direction/NsDirectionManager;

    invoke-virtual {p1}, Lcom/metamoji/media/voice/direction/VcRemoveIndexDirectionData;->getDirection()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController;->_directionHandlerID:Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "RECORDING"

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/ns/direction/NsDirectionManager;->sendDirection(Ljava/lang/Object;Ljava/lang/String;ZZLjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public sendRemoveRecordingsDirection(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2556
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->isDirectable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2560
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getRecordingsManager()Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->createRemoveRecordingsDirectionData(Ljava/util/List;)Lcom/metamoji/media/voice/direction/VcRemoveRecordingsDirectionData;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2563
    iget-object v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController;->_directionManager:Lcom/metamoji/ns/direction/NsDirectionManager;

    invoke-virtual {p1}, Lcom/metamoji/media/voice/direction/VcRemoveRecordingsDirectionData;->getDirection()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController;->_directionHandlerID:Ljava/lang/String;

    const/4 v4, 0x1

    const-string v5, "RECORDING"

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/ns/direction/NsDirectionManager;->sendDirection(Ljava/lang/Object;Ljava/lang/String;ZZLjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method sendRenameIndexTitleDirection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 2798
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->isDirectable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2809
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->createRenameIndexTitleDirectionDataTitle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/media/voice/direction/VcRenameIndexTitleDirectionData;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2811
    iget-object v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController;->_directionManager:Lcom/metamoji/ns/direction/NsDirectionManager;

    invoke-virtual {p1}, Lcom/metamoji/media/voice/direction/VcRenameIndexTitleDirectionData;->getDirection()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController;->_directionHandlerID:Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "RECORDING"

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/ns/direction/NsDirectionManager;->sendDirection(Ljava/lang/Object;Ljava/lang/String;ZZLjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method sendRenameRecordingTitleDirection(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 2605
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->isDirectable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2610
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->createRenameRecordingTitleDirectionData(Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/media/voice/direction/VcRenameRecordingTitleDirectionData;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2612
    iget-object v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController;->_directionManager:Lcom/metamoji/ns/direction/NsDirectionManager;

    invoke-virtual {p1}, Lcom/metamoji/media/voice/direction/VcRenameRecordingTitleDirectionData;->getDirection()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController;->_directionHandlerID:Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "RECORDING"

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/ns/direction/NsDirectionManager;->sendDirection(Ljava/lang/Object;Ljava/lang/String;ZZLjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method sendUploadedRecordingDirection(Ljava/lang/String;)V
    .locals 6

    .line 1641
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->isDirectable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1645
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->createUploadedRecordingDirectionData(Ljava/lang/String;)Lcom/metamoji/media/voice/direction/VcUploadedRecordingDirectionData;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1647
    iget-object v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController;->_directionManager:Lcom/metamoji/ns/direction/NsDirectionManager;

    invoke-virtual {p1}, Lcom/metamoji/media/voice/direction/VcUploadedRecordingDirectionData;->getDirection()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController;->_directionHandlerID:Ljava/lang/String;

    const/4 v4, 0x1

    const-string v5, "RECORDING"

    const/4 v3, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/ns/direction/NsDirectionManager;->sendDirection(Ljava/lang/Object;Ljava/lang/String;ZZLjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method setCurrentTicket(Ljava/lang/String;)V
    .locals 1

    .line 200
    iput-object p1, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController;->_currentTicket:Ljava/lang/String;

    .line 201
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/nt/NtDocument;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 202
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v0, Lcom/metamoji/media/voice/controller/VcRecordingsController$1;

    invoke-direct {v0, p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController$1;-><init>(Lcom/metamoji/media/voice/controller/VcRecordingsController;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public setFirstRecordingTicket()V
    .locals 1

    const/4 v0, 0x1

    .line 215
    invoke-virtual {p0, v0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->setFirstRecordingTicket(Z)V

    return-void
.end method

.method public setFirstRecordingTicket(Z)V
    .locals 5

    .line 223
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getRecordingsManager()Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getSortedAllTickets()Ljava/util/List;

    move-result-object v0

    .line 224
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 225
    invoke-virtual {p0, v2}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->setCurrentTicket(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 227
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 228
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 229
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getRecordingsManager()Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->isHiddenRecording(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 230
    invoke-virtual {p0, v3}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->setCurrentTicket(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 235
    :cond_1
    invoke-virtual {p0, v2}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->setCurrentTicket(Ljava/lang/String;)V

    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    .line 238
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getPlayerBar()Lcom/metamoji/media/voice/ui/VcPlayerBar;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->didChangeCurrentTrack(Ljava/lang/Number;)V

    :cond_3
    return-void
.end method

.method public setIndexTime(Ljava/lang/String;Ljava/lang/String;DD)V
    .locals 7

    .line 2379
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getRecordingsManager()Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->setIndexTime(Ljava/lang/String;Ljava/lang/String;DD)V

    .line 2382
    invoke-virtual/range {p0 .. p6}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->sendChangeIndexTimeDirection(Ljava/lang/String;Ljava/lang/String;DD)V

    .line 2385
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/metamoji/nt/NtDocument;->setSaveOnEnd(Z)V

    return-void
.end method

.method startDelayDirection()V
    .locals 1

    const/4 v0, 0x1

    .line 2917
    iput-boolean v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController;->_delayDirection:Z

    return-void
.end method

.method public startRecording(Z)V
    .locals 3

    if-eqz p1, :cond_2

    .line 1008
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/ui/UiCurrentActivityManager;->getCurrentActivityOrNull()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1013
    :cond_0
    const-string v0, "android.permission.RECORD_AUDIO"

    invoke-static {p1, v0}, Lcom/metamoji/cm/CmUtils;->hasPermission(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 1014
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v2, 0x4

    invoke-virtual {p1, v1, v2}, Landroidx/fragment/app/FragmentActivity;->requestPermissions([Ljava/lang/String;I)V

    .line 1018
    :cond_1
    invoke-static {p1, v0}, Lcom/metamoji/cm/CmUtils;->hasPermission(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 1023
    :cond_2
    invoke-static {}, Lcom/metamoji/media/voice/audio/VcRecorder;->getSharedInstance()Lcom/metamoji/media/voice/audio/VcRecorder;

    move-result-object p1

    .line 1024
    invoke-virtual {p1}, Lcom/metamoji/media/voice/audio/VcRecorder;->getRecordingStatus()Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;

    move-result-object v0

    sget-object v1, Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;->RECORDING:Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;

    if-ne v0, v1, :cond_3

    .line 1026
    invoke-virtual {p1}, Lcom/metamoji/media/voice/audio/VcRecorder;->stop()Z

    return-void

    .line 1027
    :cond_3
    invoke-virtual {p1}, Lcom/metamoji/media/voice/audio/VcRecorder;->getRecordingStatus()Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;

    move-result-object v0

    sget-object v1, Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;->STOPPED:Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;

    if-ne v0, v1, :cond_4

    .line 1028
    invoke-virtual {p0, p1, p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->recorder(Lcom/metamoji/media/voice/audio/VcRecorder;Lcom/metamoji/media/voice/audio/VcRecorder$IVcRecorderListener;)V

    :cond_4
    :goto_0
    return-void
.end method

.method startedRecording()V
    .locals 14

    .line 1697
    invoke-static {}, Lcom/metamoji/media/voice/audio/VcRecorder;->getSharedInstance()Lcom/metamoji/media/voice/audio/VcRecorder;

    move-result-object v0

    .line 1699
    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcRecorder;->getFilename()Ljava/lang/String;

    move-result-object v1

    .line 1700
    new-instance v4, Ljava/io/File;

    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcRecorder;->getTempDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v4, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1702
    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcRecorder;->getStartDate()Ljava/util/Date;

    move-result-object v6

    .line 1703
    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcRecorder;->getDuration()D

    move-result-wide v7

    .line 1704
    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcRecorder;->getIndexes()Ljava/util/HashMap;

    move-result-object v12

    .line 1705
    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcRecorder;->getTicket()Ljava/lang/String;

    move-result-object v3

    .line 1706
    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcRecorder;->getPageId()Ljava/lang/String;

    move-result-object v11

    .line 1711
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1712
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->isCollabo()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1713
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->userId()Ljava/lang/String;

    move-result-object v1

    .line 1714
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->roomId()Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    move-object v10, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move-object v9, v1

    move-object v10, v9

    .line 1717
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getRecordingsManager()Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v13, 0x0

    .line 1720
    invoke-virtual/range {v2 .. v13}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->registerRecording(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/util/Date;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)Z

    .line 1723
    invoke-virtual {v2, v3}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1724
    invoke-virtual {v2, v3}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getMediaId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 1725
    invoke-virtual {p0, v3, v1, v2, v0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->notifyUploadingFile(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    return-void
.end method

.method stopDelayDirection()V
    .locals 1

    .line 2925
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->sendDelayedDirections()V

    const/4 v0, 0x0

    .line 2927
    iput-boolean v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController;->_delayDirection:Z

    return-void
.end method

.method public syncRecordingsFromMediaServer()V
    .locals 12

    .line 3183
    invoke-static {}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 3188
    :cond_0
    invoke-static {}, Lcom/metamoji/media/MediaUtil;->busyOperationQueue()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_3

    .line 3192
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getRecordingsManager()Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    move-result-object v0

    .line 3193
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3194
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3195
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3196
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3197
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3198
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3200
    invoke-virtual {v0}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getAllTickets()Ljava/util/List;

    move-result-object v5

    .line 3201
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    move v7, v6

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 3202
    invoke-virtual {v0, v8}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->isNewMediaServerRecord(Ljava/lang/String;)Z

    move-result v10

    const/16 v11, 0x32

    if-eqz v10, :cond_4

    .line 3203
    invoke-virtual {v0, v8}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getMediaId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 3205
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v7, v9

    .line 3208
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-ne v8, v11, :cond_2

    .line 3209
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3210
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3213
    :cond_4
    invoke-virtual {v0, v8}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getFileId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 3215
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v7, v9

    .line 3218
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-ne v8, v11, :cond_2

    .line 3219
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3220
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    if-nez v7, :cond_7

    goto :goto_3

    .line 3229
    :cond_7
    new-instance v1, Lcom/metamoji/media/voice/controller/VcRecordingsController$35;

    invoke-direct {v1, p0, v0}, Lcom/metamoji/media/voice/controller/VcRecordingsController$35;-><init>(Lcom/metamoji/media/voice/controller/VcRecordingsController;Lcom/metamoji/media/voice/controller/VcRecordingsManager;)V

    .line 3305
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 3306
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 3307
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_8

    goto :goto_1

    .line 3310
    :cond_8
    new-instance v3, Lcom/metamoji/media/service/MediaBgTaskForGetStatus;

    sget-object v5, Lcom/metamoji/media/service/MediaBgTask$IMediaAction;->NOP:Lcom/metamoji/media/service/MediaBgTask$IMediaAction;

    invoke-direct {v3, v5, v1}, Lcom/metamoji/media/service/MediaBgTaskForGetStatus;-><init>(Lcom/metamoji/media/service/MediaBgTask$IMediaAction;Lcom/metamoji/media/service/MediaBgTaskForGetStatus$IMediaBgTaskForGetStatusCompleteAction;)V

    .line 3311
    invoke-virtual {v3, v2}, Lcom/metamoji/media/service/MediaBgTaskForGetStatus;->setTargetIds(Ljava/util/List;)V

    .line 3312
    invoke-virtual {v3, v6}, Lcom/metamoji/media/service/MediaBgTaskForGetStatus;->setIsMediaId(Z)V

    .line 3313
    invoke-virtual {v3}, Lcom/metamoji/media/service/MediaBgTaskForGetStatus;->doInBackground()V

    goto :goto_1

    .line 3317
    :cond_9
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 3318
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 3319
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_a

    goto :goto_2

    .line 3322
    :cond_a
    new-instance v3, Lcom/metamoji/media/service/MediaBgTaskForGetStatus;

    sget-object v4, Lcom/metamoji/media/service/MediaBgTask$IMediaAction;->NOP:Lcom/metamoji/media/service/MediaBgTask$IMediaAction;

    invoke-direct {v3, v4, v1}, Lcom/metamoji/media/service/MediaBgTaskForGetStatus;-><init>(Lcom/metamoji/media/service/MediaBgTask$IMediaAction;Lcom/metamoji/media/service/MediaBgTaskForGetStatus$IMediaBgTaskForGetStatusCompleteAction;)V

    .line 3323
    invoke-virtual {v3, v2}, Lcom/metamoji/media/service/MediaBgTaskForGetStatus;->setTargetIds(Ljava/util/List;)V

    .line 3324
    invoke-virtual {v3, v9}, Lcom/metamoji/media/service/MediaBgTaskForGetStatus;->setIsMediaId(Z)V

    .line 3325
    invoke-virtual {v3}, Lcom/metamoji/media/service/MediaBgTaskForGetStatus;->doInBackground()V

    goto :goto_2

    :cond_b
    :goto_3
    return-void
.end method

.method public unmakeDirectable()V
    .locals 1

    .line 2495
    iget-object v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController;->_directionManager:Lcom/metamoji/ns/direction/NsDirectionManager;

    if-eqz v0, :cond_0

    .line 2496
    invoke-virtual {v0, p0}, Lcom/metamoji/ns/direction/NsDirectionManager;->unregisterHandler(Lcom/metamoji/ns/direction/INsDirectionHandler;)V

    :cond_0
    const/4 v0, 0x0

    .line 2499
    iput-object v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController;->_directionManager:Lcom/metamoji/ns/direction/NsDirectionManager;

    .line 2500
    iput-object v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController;->_directionHandlerID:Ljava/lang/String;

    return-void
.end method
