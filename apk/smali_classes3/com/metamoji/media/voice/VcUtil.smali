.class public final Lcom/metamoji/media/voice/VcUtil;
.super Ljava/lang/Object;
.source "VcUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/media/voice/VcUtil$VcResultCheck;
    }
.end annotation


# static fields
.field public static final RECORDINGS_CACHE_DIR:Ljava/lang/String; = "recordings"

.field public static final VOICE_TAG_PROPERTY_INDEX_ID:Ljava/lang/String; = "indexId"

.field public static final VOICE_TAG_PROPERTY_TICKET:Ljava/lang/String; = "ticket"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearCache()V
    .locals 3

    .line 644
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getPrivateDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {}, Lcom/metamoji/media/voice/VcUtil;->getCacheDirName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 645
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 646
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    :cond_0
    return-void
.end method

.method public static createIndex(Ljava/lang/String;DDLjava/lang/String;)Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DD",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 76
    const-string v1, "$title"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string p0, "$startTime"

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string p0, "$endTime"

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string p0, "$pageId"

    invoke-virtual {v0, p0, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string p0, "$id"

    invoke-static {}, Lcom/metamoji/media/MediaUtil;->makeTicket()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static createTaggedObjectFilterForPlayVoiceTag(Lcom/metamoji/ctold/CtDocTagManager;)Lcom/metamoji/ctold/CtTaggedObjectFilter;
    .locals 1

    .line 519
    new-instance v0, Lcom/metamoji/media/voice/VcUtil$1;

    invoke-direct {v0, p0}, Lcom/metamoji/media/voice/VcUtil$1;-><init>(Lcom/metamoji/ctold/CtDocTagManager;)V

    return-object v0
.end method

.method public static detachVoiceTag(Lcom/metamoji/ctold/tag/CtTagInstance;Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/df/controller/EditContext;)V
    .locals 2

    .line 420
    invoke-virtual {p0}, Lcom/metamoji/ctold/tag/CtTagInstance;->getObjectReference()Lcom/metamoji/ctold/object/CtObjectReference;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 424
    invoke-virtual {p1}, Lcom/metamoji/nt/NtNoteController;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/ctold/CtUndoPerformer;->createUndoModel(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 428
    :goto_0
    invoke-interface {v0}, Lcom/metamoji/ctold/object/CtObjectReference;->getPageId()Ljava/lang/String;

    move-result-object v0

    .line 429
    invoke-virtual {p1, v0}, Lcom/metamoji/nt/NtNoteController;->pageIndexFromPageId(Ljava/lang/String;)I

    move-result v0

    .line 430
    invoke-virtual {p1, v0}, Lcom/metamoji/nt/NtNoteController;->getPage(I)Lcom/metamoji/nt/NtPageController;

    move-result-object p1

    .line 432
    invoke-virtual {p1}, Lcom/metamoji/nt/NtPageController;->getDocTagManager()Lcom/metamoji/ctold/CtDocTagManager;

    move-result-object p1

    .line 433
    invoke-interface {p1, p0, v1}, Lcom/metamoji/ctold/CtDocTagManager;->removeTagInstance(Lcom/metamoji/ctold/tag/CtTagInstance;Lcom/metamoji/df/model/IModel;)V

    if-eqz p2, :cond_1

    const/4 p0, 0x1

    .line 439
    invoke-virtual {p2, v1, p0}, Lcom/metamoji/df/controller/EditContext;->addUndo(Lcom/metamoji/df/model/IModel;Z)V

    :cond_1
    return-void
.end method

.method static execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V
    .locals 2

    .line 595
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/media/voice/VcUtil$2;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/media/voice/VcUtil$2;-><init>(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    const/4 p0, 0x0

    invoke-virtual {v0, v1, p0, p0}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void
.end method

.method public static exportRecordingFile(Lcom/metamoji/nt/NtCommand;Ljava/lang/String;)V
    .locals 3

    .line 221
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getPlayerBar()Lcom/metamoji/media/voice/ui/VcPlayerBar;

    move-result-object v0

    .line 223
    new-instance v1, Lcom/metamoji/cm/CmContext;

    invoke-direct {v1}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 224
    const-string/jumbo v2, "ticket"

    invoke-virtual {v1, v2, p1}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 225
    const-string p1, "delegate"

    invoke-virtual {v1, p1, v0}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 226
    invoke-static {p0, v1}, Lcom/metamoji/media/voice/VcUtil;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    return-void
.end method

.method public static getCacheDir()Ljava/io/File;
    .locals 3

    .line 111
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getPrivateDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {}, Lcom/metamoji/media/voice/VcUtil;->getCacheDirName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 112
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 113
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-object v0
.end method

.method public static getCacheDirName()Ljava/lang/String;
    .locals 1

    .line 124
    const-string v0, ".recordings"

    return-object v0
.end method

.method public static getDuration(Ljava/io/File;)D
    .locals 5

    .line 617
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    const/4 v1, 0x0

    .line 620
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 621
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V

    const/16 p0, 0x9

    .line 622
    invoke-virtual {v0, p0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    long-to-double v0, v0

    const-wide v3, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v3

    .line 629
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-wide v0

    :catch_0
    move-exception p0

    .line 631
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return-wide v0

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_2

    :catch_1
    move-exception p0

    move-object v1, v2

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception p0

    .line 624
    :goto_0
    :try_start_3
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_0

    .line 629
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    :catch_3
    move-exception p0

    .line 631
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    const-wide/16 v0, 0x0

    return-wide v0

    :goto_2
    if-eqz v1, :cond_1

    .line 629
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_3

    :catch_4
    move-exception v0

    .line 631
    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    .line 634
    :cond_1
    :goto_3
    throw p0
.end method

.method public static getDurationString(Ljava/util/Map;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 669
    const-string v0, "$duration"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    .line 670
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    const-wide v2, 0x40ac200000000000L    # 3600.0

    div-double v2, v0, v2

    double-to-long v2, v2

    const-wide/16 v4, 0xe10

    mul-long/2addr v4, v2

    long-to-double v4, v4

    sub-double/2addr v0, v4

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    div-double v6, v0, v4

    double-to-long v6, v6

    long-to-double v8, v6

    mul-double/2addr v8, v4

    sub-double/2addr v0, v8

    .line 674
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    const-wide/16 v4, 0x3c

    cmp-long p0, v0, v4

    const-wide/16 v8, 0x0

    if-nez p0, :cond_1

    const-wide/16 v0, 0x1

    add-long/2addr v6, v0

    cmp-long p0, v6, v4

    if-nez p0, :cond_0

    add-long/2addr v2, v0

    move-wide v0, v8

    move-wide v6, v0

    goto :goto_0

    :cond_0
    move-wide v0, v8

    :cond_1
    :goto_0
    cmp-long p0, v2, v8

    if-lez p0, :cond_2

    .line 685
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {p0, v2, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, " %d:%02d:%02d"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 687
    :cond_2
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, " %d:%02d"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTagInstances(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/tag/CtTagInstance;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/tag/CtTagInstance;",
            ">;"
        }
    .end annotation

    .line 484
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 485
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ctold/tag/CtTagInstance;

    .line 486
    const-string/jumbo v2, "ticket"

    invoke-virtual {v1, v2}, Lcom/metamoji/ctold/tag/CtTagInstance;->getProperty(Ljava/lang/String;)Lcom/metamoji/ctold/property/CtProperty;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/ctold/property/CtProperty;->getStringValue()Ljava/lang/String;

    move-result-object v2

    .line 487
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 488
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getVoiceTagInstances(Lcom/metamoji/ctold/CtTagManager;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ctold/CtTagManager;",
            ")",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/tag/CtTagInstance;",
            ">;"
        }
    .end annotation

    .line 500
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    .line 502
    check-cast p0, Lcom/metamoji/ctold/CtDocTagManager;

    sget-object v1, Lcom/metamoji/ctold/tag/CtSystemTagId;->CT_TAGID_VOICE:Lcom/metamoji/ctold/tag/CtSystemTagId;

    invoke-interface {p0, v1}, Lcom/metamoji/ctold/CtDocTagManager;->getSystemTagInstances(Lcom/metamoji/ctold/tag/CtSystemTagId;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 504
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ctold/tag/CtTagInstance;

    .line 505
    invoke-virtual {v1}, Lcom/metamoji/ctold/tag/CtTagInstance;->getObjectReference()Lcom/metamoji/ctold/object/CtObjectReference;

    move-result-object v2

    .line 506
    invoke-interface {v2}, Lcom/metamoji/ctold/object/CtObjectReference;->getObjectType()Lcom/metamoji/ctold/object/CtObjectType;

    move-result-object v2

    sget-object v3, Lcom/metamoji/ctold/object/CtObjectType;->CT_OBJTYPE_VOICE:Lcom/metamoji/ctold/object/CtObjectType;

    if-eq v2, v3, :cond_0

    .line 507
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static playFromDate(Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V
    .locals 3

    .line 137
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getPlayerBar()Lcom/metamoji/media/voice/ui/VcPlayerBar;

    move-result-object v0

    .line 139
    new-instance v1, Lcom/metamoji/cm/CmContext;

    invoke-direct {v1}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 140
    const-string/jumbo v2, "ticket"

    invoke-virtual {v1, v2, p0}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 141
    const-string p0, "date"

    invoke-virtual {v1, p0, p1}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    .line 143
    const-string p0, "pageId"

    invoke-virtual {v1, p0, p2}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 145
    :cond_0
    const-string p0, "delegate"

    invoke-virtual {v1, p0, v0}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 146
    sget-object p0, Lcom/metamoji/nt/NtCommand;->CMD_VC_PLAY_FROM_DATE:Lcom/metamoji/nt/NtCommand;

    invoke-static {p0, v1}, Lcom/metamoji/media/voice/VcUtil;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    return-void
.end method

.method public static playFromVoiceTagInstance(Lcom/metamoji/ctold/tag/CtTagInstance;)Z
    .locals 1

    .line 167
    const-string v0, "indexId"

    invoke-virtual {p0, v0}, Lcom/metamoji/ctold/tag/CtTagInstance;->getProperty(Ljava/lang/String;)Lcom/metamoji/ctold/property/CtProperty;

    move-result-object p0

    invoke-virtual {p0}, Lcom/metamoji/ctold/property/CtProperty;->getStringValue()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 172
    :cond_0
    invoke-static {p0}, Lcom/metamoji/media/voice/VcUtil;->playLabel(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static playFromVoiceTagInstances(Ljava/util/List;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/tag/CtTagInstance;",
            ">;)Z"
        }
    .end annotation

    .line 190
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 192
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getRecordingsManager()Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    move-result-object v0

    .line 198
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide v1, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/ctold/tag/CtTagInstance;

    .line 199
    const-string/jumbo v5, "ticket"

    invoke-virtual {v4, v5}, Lcom/metamoji/ctold/tag/CtTagInstance;->getProperty(Ljava/lang/String;)Lcom/metamoji/ctold/property/CtProperty;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/ctold/property/CtProperty;->getStringValue()Ljava/lang/String;

    move-result-object v5

    .line 200
    const-string v6, "indexId"

    invoke-virtual {v4, v6}, Lcom/metamoji/ctold/tag/CtTagInstance;->getProperty(Ljava/lang/String;)Lcom/metamoji/ctold/property/CtProperty;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/ctold/property/CtProperty;->getStringValue()Ljava/lang/String;

    move-result-object v4

    .line 201
    invoke-virtual {v0, v5, v4}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getIndex(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    .line 202
    invoke-virtual {v0, v5}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getStartDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    invoke-static {v5}, Lcom/metamoji/cm/TimeUtils;->date2unixtime(Ljava/util/Date;)D

    move-result-wide v7

    .line 203
    const-string v5, "$startTime"

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/metamoji/cm/CmUtils;->toDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    add-double/2addr v7, v5

    cmpg-double v5, v7, v1

    if-gez v5, :cond_0

    move-object v3, v4

    move-wide v1, v7

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    .line 214
    invoke-static {v3}, Lcom/metamoji/media/voice/VcUtil;->playLabel(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static playLabel(Ljava/lang/String;)V
    .locals 2

    .line 178
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    const/4 v1, 0x0

    .line 179
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtEditorWindowController;->showPlayerBar(Z)V

    .line 180
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getPlayerBar()Lcom/metamoji/media/voice/ui/VcPlayerBar;

    move-result-object v0

    .line 181
    invoke-virtual {v0, p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->playLabel(Ljava/lang/String;)V

    return-void
.end method

.method public static playTicket(Ljava/lang/String;DD)V
    .locals 3

    .line 150
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getPlayerBar()Lcom/metamoji/media/voice/ui/VcPlayerBar;

    move-result-object v0

    .line 152
    new-instance v1, Lcom/metamoji/cm/CmContext;

    invoke-direct {v1}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 153
    const-string/jumbo v2, "ticket"

    invoke-virtual {v1, v2, p0}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 154
    const-string/jumbo p0, "startTime"

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 155
    const-string p0, "endTime"

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 156
    const-string p0, "delegate"

    invoke-virtual {v1, p0, v0}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 158
    sget-object p0, Lcom/metamoji/nt/NtCommand;->CMD_VC_PLAY_FROM_TIME_TO_TIME:Lcom/metamoji/nt/NtCommand;

    invoke-static {p0, v1}, Lcom/metamoji/media/voice/VcUtil;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    return-void
.end method

.method public static removeIndex(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 251
    invoke-static {p0, p1, v0}, Lcom/metamoji/media/voice/VcUtil;->removeIndex(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static removeIndex(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 266
    :cond_0
    new-instance v0, Lcom/metamoji/cm/CmContext;

    invoke-direct {v0}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 267
    const-string/jumbo v1, "ticket"

    invoke-virtual {v0, v1, p0}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 268
    const-string p0, "indexId"

    invoke-virtual {v0, p0, p1}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p2, :cond_1

    .line 270
    sget-object p0, Lcom/metamoji/nt/NtCommand;->CMD_VC_REMOVE_INDEX_FROM_PLAYER_BAR:Lcom/metamoji/nt/NtCommand;

    invoke-static {p0, v0}, Lcom/metamoji/media/voice/VcUtil;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    return-void

    .line 272
    :cond_1
    sget-object p0, Lcom/metamoji/nt/NtCommand;->CMD_VC_REMOVE_INDEX:Lcom/metamoji/nt/NtCommand;

    invoke-static {p0, v0}, Lcom/metamoji/media/voice/VcUtil;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static removeRecording(Ljava/lang/String;)V
    .locals 3

    .line 235
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getPlayerBar()Lcom/metamoji/media/voice/ui/VcPlayerBar;

    move-result-object v0

    .line 238
    new-instance v1, Lcom/metamoji/cm/CmContext;

    invoke-direct {v1}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 239
    const-string v2, "removeTicket"

    invoke-virtual {v1, v2, p0}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 240
    const-string p0, "delegate"

    invoke-virtual {v1, p0, v0}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 241
    sget-object p0, Lcom/metamoji/nt/NtCommand;->CMD_VC_REMOVE_RECORDING:Lcom/metamoji/nt/NtCommand;

    invoke-static {p0, v1}, Lcom/metamoji/media/voice/VcUtil;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    return-void
.end method

.method public static stringFromIntegerAddedComma(J)Ljava/lang/String;
    .locals 1

    .line 585
    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v0

    .line 586
    invoke-virtual {v0, p0, p1}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
