.class public Lcom/metamoji/lb/LbLibrarySheetTemplateManager;
.super Ljava/lang/Object;
.source "LbLibrarySheetTemplateManager.java"


# static fields
.field private static final CONTENTS_FILE_TYPE_INDEX:Ljava/lang/String; = "index"

.field private static final CONTENTS_FILE_TYPE_SHEETTEMPLATE:Ljava/lang/String; = "sheettemplate"

.field private static final DOWNLOAD_TEMP_FILE:Ljava/lang/String; = "download_lb_sheettemplate.product"

.field private static final ID_INDEX_BOOKMARK:Ljava/lang/String; = "index_bookmark"

.field private static final ID_INDEX_DOWNLOAD:Ljava/lang/String; = "index_download"

.field private static final ID_INDEX_SYSTEM:Ljava/lang/String; = "index_system"

.field private static final META_TYPE_DOWNLOAD:Ljava/lang/String; = "download"

.field private static final META_TYPE_SYSTEM:Ljava/lang/String; = "system"

.field private static final SYSTEMSHEETTEMPLATE_FILE_NAME:Ljava/lang/String; = "init/library/com.metamoji.shareanytime.sheet.system001.product"

.field private static final THUMBNAIL_FILE_NAME:Ljava/lang/String; = "thumbnail"

.field private static s_sharedInstance:Lcom/metamoji/lb/LbLibrarySheetTemplateManager; = null

.field private static final types:[Lcom/metamoji/lb/LbConstants$LbPageType;

.field private static final types_MAX:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    .line 74
    new-array v0, v0, [Lcom/metamoji/lb/LbConstants$LbPageType;

    const/4 v1, 0x0

    sget-object v2, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_HISTORY:Lcom/metamoji/lb/LbConstants$LbPageType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_BOOKMARK:Lcom/metamoji/lb/LbConstants$LbPageType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_SYSTEM:Lcom/metamoji/lb/LbConstants$LbPageType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_DOWNLOAD:Lcom/metamoji/lb/LbConstants$LbPageType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_STORE:Lcom/metamoji/lb/LbConstants$LbPageType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->types:[Lcom/metamoji/lb/LbConstants$LbPageType;

    .line 82
    new-instance v0, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;

    invoke-direct {v0}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;-><init>()V

    sput-object v0, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->s_sharedInstance:Lcom/metamoji/lb/LbLibrarySheetTemplateManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private _cleanupSheetTemplateByType(Ljava/lang/String;)V
    .locals 3

    .line 1460
    new-instance v0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;

    invoke-direct {v0}, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;-><init>()V

    .line 1461
    invoke-virtual {v0, p1}, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->setType(Ljava/lang/String;)V

    .line 1462
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateMetaDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateMetaDataManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 1463
    invoke-virtual {v1, v0, v2}, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateMetaDataManager;->searchLibrarySheetTemplateId(Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 1464
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[LbLibrarySheetTemplateManager] cleanupSheetTemplateByType: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " count:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 1467
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1468
    invoke-virtual {p0, v0}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->deleteSheetTemplate(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static declared-synchronized createTempDirectory()Ljava/io/File;
    .locals 6

    const-string v0, "failed to create temporary directory. : "

    const-class v1, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;

    monitor-enter v1

    const/4 v2, 0x0

    .line 1002
    :try_start_0
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getTemporaryDataDirectory()Ljava/io/File;

    move-result-object v3

    .line 1004
    const-string v4, "lbSheetTemplate"

    const-string v5, ""

    invoke-static {v4, v5, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1006
    :try_start_1
    invoke-static {v3}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1009
    :catch_0
    :try_start_2
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1010
    const-string v3, "cannot create temporary directory."

    invoke-static {v3}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1011
    monitor-exit v1

    return-object v2

    .line 1013
    :cond_0
    monitor-exit v1

    return-object v3

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v3

    .line 1015
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1016
    monitor-exit v1

    return-object v2

    :goto_0
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public static getInstance()Lcom/metamoji/lb/LbLibrarySheetTemplateManager;
    .locals 1

    .line 90
    sget-object v0, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->s_sharedInstance:Lcom/metamoji/lb/LbLibrarySheetTemplateManager;

    return-object v0
.end method


# virtual methods
.method checkThumbnailAsync(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 567
    invoke-static {}, Lcom/metamoji/dm/impl/contents/DmLibrarySheetTemplateThumbnailsCacheManager;->getInstance()Lcom/metamoji/dm/impl/contents/DmLibrarySheetTemplateThumbnailsCacheManager;

    move-result-object v0

    .line 568
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 569
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 570
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "thumbnail"

    invoke-virtual {v0, v2, v3}, Lcom/metamoji/dm/impl/contents/DmLibrarySheetTemplateThumbnailsCacheManager;->existsCacheData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 572
    :cond_1
    invoke-virtual {p0, v2}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->updateThumbnail(Ljava/lang/String;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method cleanContent(Ljava/lang/String;)V
    .locals 3

    const-string v0, "[MMJLbLibrarySheetTemplateManager] cleanContent entityId:"

    .line 761
    :try_start_0
    invoke-static {}, Lcom/metamoji/dm/impl/contents/DmLibrarySheetTemplateContentsManager;->getInstance()Lcom/metamoji/dm/impl/contents/DmLibrarySheetTemplateContentsManager;

    move-result-object v1

    .line 762
    const-string v2, "sheettemplate"

    invoke-virtual {v1, p1, v2}, Lcom/metamoji/dm/impl/contents/DmLibrarySheetTemplateContentsManager;->deleteContentsData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 763
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 766
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[MMJLbLibrarySheetTemplateManager] :: ERROR cleanContent entityId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public cleanupDownloadSheetTemplate()V
    .locals 1

    .line 1479
    const-string v0, "download"

    invoke-direct {p0, v0}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->_cleanupSheetTemplateByType(Ljava/lang/String;)V

    return-void
.end method

.method public cleanupSystemSheetTemplate()V
    .locals 1

    .line 1474
    const-string v0, "system"

    invoke-direct {p0, v0}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->_cleanupSheetTemplateByType(Ljava/lang/String;)V

    return-void
.end method

.method contentWithEntityId(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 272
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 273
    const-string v1, "entityId"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method copyMetaData(Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;Ljava/lang/String;)V
    .locals 1

    .line 779
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateMetaDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateMetaDataManager;

    move-result-object v0

    .line 780
    invoke-virtual {v0, p2}, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateMetaDataManager;->getMetaData(Ljava/lang/String;)Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;

    move-result-object p2

    check-cast p2, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;

    if-nez p2, :cond_0

    .line 782
    const-string p1, "[MMJLbLibrarySheetTemplateManager] copyMetaData target sheetTemplate : Not Found!"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    return-void

    .line 787
    :cond_0
    invoke-virtual {p2}, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->isBookmarked()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->setBookmarked(Z)V

    .line 789
    invoke-virtual {p2}, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->getUseDate()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->setUseDate(Ljava/util/Date;)V

    return-void
.end method

.method createHistoryPageDataArray()Ljava/util/List;
    .locals 3
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

    .line 383
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 384
    sget-object v1, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_HISTORY:Lcom/metamoji/lb/LbConstants$LbPageType;

    invoke-virtual {p0, v1}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->createPageData(Lcom/metamoji/lb/LbConstants$LbPageType;)Ljava/util/Map;

    move-result-object v1

    .line 385
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 389
    const-string v2, "partsArray"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 390
    sget-object v2, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_HISTORY:Lcom/metamoji/lb/LbConstants$LbPageType;

    invoke-virtual {p0, v2}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->searchSheetTemplates(Lcom/metamoji/lb/LbConstants$LbPageType;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public createLibraryDownloadSheetTemplateMetaData(Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;)Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z",
            "Ljava/lang/String;",
            ")",
            "Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;"
        }
    .end annotation

    .line 1394
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateMetaDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateMetaDataManager;

    move-result-object v0

    .line 1395
    invoke-virtual {v0}, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateMetaDataManager;->newMutableDataObject()Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;

    move-result-object v0

    check-cast v0, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;

    .line 1397
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 1398
    const-string v2, "createDate"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 1399
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    invoke-static {v2}, Lcom/metamoji/cm/TimeUtils;->isoStringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 1400
    :goto_0
    const-string v4, "updateDate"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 1401
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    invoke-static {v4}, Lcom/metamoji/cm/TimeUtils;->isoStringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v2

    .line 1405
    :goto_1
    const-string v5, "entityId"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1407
    const-string v7, "p_partsArray"

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 1408
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 1410
    check-cast v8, Ljava/util/Map;

    .line 1412
    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 1413
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1414
    const-string v5, "title"

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_2

    :cond_3
    move-object v5, v3

    :goto_2
    if-nez v5, :cond_4

    .line 1420
    invoke-virtual {p0, p1, p4}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->titleStringFromJsonPartDic(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1423
    :cond_4
    const-string p1, "download"

    invoke-virtual {v0, p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->setType(Ljava/lang/String;)V

    .line 1424
    invoke-virtual {v0, v5}, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->setName(Ljava/lang/String;)V

    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    move-object v2, v1

    .line 1425
    :goto_3
    invoke-virtual {v0, v2}, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->setCreate(Ljava/util/Date;)V

    .line 1426
    invoke-virtual {v0, v4}, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->setUpdate(Ljava/util/Date;)V

    .line 1427
    invoke-virtual {v0, v1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->setLastAccess(Ljava/util/Date;)V

    .line 1428
    invoke-virtual {v0, v3}, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->setUseDate(Ljava/util/Date;)V

    const/4 p1, 0x0

    .line 1429
    invoke-virtual {v0, p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->setBookmarked(Z)V

    .line 1430
    invoke-virtual {v0, v1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->setDownload(Ljava/util/Date;)V

    .line 1431
    const-string p1, "p_id"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->setProductId(Ljava/lang/String;)V

    .line 1432
    const-string p1, "p_title"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->setProductName(Ljava/lang/String;)V

    .line 1433
    const-string p1, "p_creatorID"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->setCreatorId(Ljava/lang/String;)V

    .line 1434
    const-string p1, "p_creatorName"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->setCreatorName(Ljava/lang/String;)V

    .line 1435
    const-string p1, "p_isFree"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string p2, "0"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->setIsFree(Z)V

    .line 1436
    invoke-virtual {v0, p3}, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->setIsTrial(Z)V

    return-object v0
.end method

.method createLibrarySystemSheetTemplateMetaData(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;"
        }
    .end annotation

    .line 1137
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateMetaDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateMetaDataManager;

    move-result-object v0

    .line 1138
    invoke-virtual {v0}, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateMetaDataManager;->newMutableDataObject()Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;

    move-result-object v0

    check-cast v0, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;

    .line 1140
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 1141
    const-string v2, "createDate"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 1142
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    invoke-static {v2}, Lcom/metamoji/cm/TimeUtils;->isoStringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 1143
    :goto_0
    const-string v4, "updateDate"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 1144
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    invoke-static {v4}, Lcom/metamoji/cm/TimeUtils;->isoStringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v2

    .line 1145
    :goto_1
    invoke-virtual {p0, p1, p3}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->titleStringFromJsonPartDic(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1147
    const-string p3, "system"

    invoke-virtual {v0, p3}, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->setType(Ljava/lang/String;)V

    .line 1148
    invoke-virtual {v0, p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->setName(Ljava/lang/String;)V

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move-object v2, v1

    .line 1149
    :goto_2
    invoke-virtual {v0, v2}, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->setCreate(Ljava/util/Date;)V

    .line 1150
    invoke-virtual {v0, v4}, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->setUpdate(Ljava/util/Date;)V

    .line 1151
    invoke-virtual {v0, v1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->setLastAccess(Ljava/util/Date;)V

    .line 1152
    invoke-virtual {v0, v3}, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->setUseDate(Ljava/util/Date;)V

    const/4 p1, 0x0

    .line 1153
    invoke-virtual {v0, p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->setBookmarked(Z)V

    .line 1154
    invoke-virtual {v0, v3}, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->setDownload(Ljava/util/Date;)V

    .line 1155
    invoke-virtual {v0, p2}, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->setProductId(Ljava/lang/String;)V

    .line 1156
    invoke-virtual {v0, v3}, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->setProductName(Ljava/lang/String;)V

    .line 1157
    invoke-virtual {v0, v3}, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->setCreatorId(Ljava/lang/String;)V

    .line 1158
    invoke-virtual {v0, v3}, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->setCreatorName(Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 1159
    invoke-virtual {v0, p2}, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->setIsFree(Z)V

    .line 1160
    invoke-virtual {v0, p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->setIsTrial(Z)V

    return-object v0
.end method

.method createPageData(Lcom/metamoji/lb/LbConstants$LbPageType;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lb/LbConstants$LbPageType;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 368
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 369
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 370
    const-string v2, "type"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    const-string p1, "partsArray"

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public createPartDic(Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 530
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->createPartDic(Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public createPartDic(Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 535
    invoke-virtual {p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->getEntityId()Ljava/lang/String;

    move-result-object p2

    .line 536
    invoke-static {}, Lcom/metamoji/dm/impl/contents/DmLibrarySheetTemplateThumbnailsCacheManager;->getInstance()Lcom/metamoji/dm/impl/contents/DmLibrarySheetTemplateThumbnailsCacheManager;

    move-result-object v0

    .line 537
    const-string v1, "thumbnail"

    invoke-virtual {v0, p2, v1}, Lcom/metamoji/dm/impl/contents/DmLibrarySheetTemplateThumbnailsCacheManager;->existsCacheData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 539
    invoke-virtual {p0, p2}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->updateThumbnail(Ljava/lang/String;)Z

    .line 542
    :cond_0
    invoke-virtual {p0, p2}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->sheetTemplateThumbnailPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 545
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 546
    const-string v2, "entityId"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    invoke-virtual {p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->getType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->sheetTemplateTypeForDic(Ljava/lang/String;)Lcom/metamoji/lb/LbConstants$LbPageType;

    move-result-object p2

    const-string v2, "type"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    const-string p2, "imagePath"

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    invoke-virtual {p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->isTrial()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v0, "isTrial"

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    invoke-virtual {p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->getName()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 551
    const-string p2, "title"

    invoke-virtual {p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->getProductName()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 553
    const-string p2, "category"

    invoke-virtual {p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->getProductName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/4 p1, 0x0

    .line 554
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "unCompatible"

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method createStoreInitPageData()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 401
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 402
    const-string v1, "type"

    sget-object v2, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_STORE:Lcom/metamoji/lb/LbConstants$LbPageType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    const-string v1, "g_pageStatus"

    sget-object v2, Lcom/metamoji/lb/LbConstants$StorePageStatus;->SERVER_MAINTENANCE_CHECKING:Lcom/metamoji/lb/LbConstants$StorePageStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public deleteSheetTemplate(Ljava/lang/String;)V
    .locals 5

    const-string v0, "[MMJLbLibrarySheetTemplateManager] delete sheetTemplate thumbnail : "

    const-string v1, "[MMJLbLibrarySheetTemplateManager] delete sheetTemplate content : "

    const-string v2, "[MMJLbLibrarySheetTemplateManager] delete sheetTemplate metadata : "

    .line 885
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[MMJLbLibrarySheetTemplateManager] delete sheetTemplate entityId: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 888
    :try_start_0
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateMetaDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateMetaDataManager;

    move-result-object v3

    .line 889
    invoke-virtual {v3, p1}, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateMetaDataManager;->deleteMetaData(Ljava/lang/String;)Z

    move-result v3

    .line 890
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    if-nez v3, :cond_0

    return-void

    .line 896
    :cond_0
    invoke-static {}, Lcom/metamoji/dm/impl/contents/DmLibrarySheetTemplateContentsManager;->getInstance()Lcom/metamoji/dm/impl/contents/DmLibrarySheetTemplateContentsManager;

    move-result-object v2

    .line 897
    const-string v4, "sheettemplate"

    invoke-virtual {v2, p1, v4}, Lcom/metamoji/dm/impl/contents/DmLibrarySheetTemplateContentsManager;->deleteContentsData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 898
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 901
    invoke-static {}, Lcom/metamoji/dm/impl/contents/DmLibrarySheetTemplateThumbnailsCacheManager;->getInstance()Lcom/metamoji/dm/impl/contents/DmLibrarySheetTemplateThumbnailsCacheManager;

    move-result-object v1

    .line 902
    const-string v2, "thumbnail"

    invoke-virtual {v1, p1, v2}, Lcom/metamoji/dm/impl/contents/DmLibrarySheetTemplateThumbnailsCacheManager;->deleteCacheData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 903
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 905
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[MMJLbLibrarySheetTemplateManager] :: ERROR delete sheetTemplate entityId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public downloadProduct(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/lb/LbDownloadUtil$ILbDownloadUtilProgress;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/metamoji/lb/LbDownloadUtil$ILbDownloadUtilProgress;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1209
    invoke-static {}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->createTempDirectory()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1213
    :cond_0
    const-string v1, "download_lb_sheettemplate.product"

    sget-object v2, Lcom/metamoji/cm/CmUtils$CreationOption;->REMOVE_EXISTING:Lcom/metamoji/cm/CmUtils$CreationOption;

    invoke-static {v0, v1, v2}, Lcom/metamoji/cm/CmUtils;->safeCreateFile(Ljava/io/File;Ljava/lang/String;Lcom/metamoji/cm/CmUtils$CreationOption;)Ljava/io/File;

    move-result-object v5

    .line 1214
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[LbLibrarySheetTemplateManager] download temp file path : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 1217
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1218
    const-string v1, "tempDir"

    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    .line 1220
    invoke-virtual/range {v3 .. v8}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->downloadProductInner(Ljava/util/Map;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/lb/LbDownloadUtil$ILbDownloadUtilProgress;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method protected downloadProductInner(Ljava/util/Map;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/lb/LbDownloadUtil$ILbDownloadUtilProgress;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/metamoji/lb/LbDownloadUtil$ILbDownloadUtilProgress;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1230
    invoke-static {p4, p2, p5}, Lcom/metamoji/lb/LbDownloadUtil;->downloadWithProgressDialog(Ljava/lang/String;Ljava/io/File;Lcom/metamoji/lb/LbDownloadUtil$ILbDownloadUtilProgress;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move-object v2, p0

    move-object v3, p1

    goto :goto_0

    .line 1234
    :cond_1
    const-string v1, "error"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1235
    const-string p2, "errorMessage"

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    if-eqz p3, :cond_0

    .line 1237
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    .line 1242
    :cond_2
    const-string v1, "contents"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, [B

    .line 1243
    const-string v1, "headers"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/Headers;

    .line 1247
    const-string v1, "application/json"

    invoke-static {v0, v1}, Lcom/metamoji/lb/LbDownloadUtil;->checkContentType(Lokhttp3/Headers;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    .line 1248
    invoke-virtual/range {v2 .. v8}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->retryLogin(Ljava/util/Map;Ljava/io/File;[BLjava/lang/String;Ljava/lang/String;Lcom/metamoji/lb/LbDownloadUtil$ILbDownloadUtilProgress;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    :cond_3
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    move-object v8, p5

    .line 1252
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance p2, Lcom/metamoji/lb/LbLibrarySheetTemplateManager$1;

    invoke-direct {p2, p0, v8}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager$1;-><init>(Lcom/metamoji/lb/LbLibrarySheetTemplateManager;Lcom/metamoji/lb/LbDownloadUtil$ILbDownloadUtilProgress;)V

    invoke-virtual {p1, p2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 1260
    const-string p1, "tempDir"

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    const/4 p2, 0x0

    .line 1261
    invoke-static {v4, p1, p2}, Lcom/metamoji/cv/xml/CvZippedXMLConvertUtils;->uncompressDocumentNoCkeckAsync(Ljava/io/File;Ljava/io/File;Ljava/util/Map;)Lcom/metamoji/cv/CvResult$Import;

    move-result-object p2

    .line 1262
    sget-object p3, Lcom/metamoji/cv/CvResult$Import;->Success:Lcom/metamoji/cv/CvResult$Import;

    if-eq p3, p2, :cond_4

    :goto_0
    return-object v3

    .line 1267
    :cond_4
    new-instance p2, Ljava/io/File;

    const-string p3, "index.dat"

    invoke-direct {p2, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_5

    .line 1269
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "[LbLibrarySheetTemplateManager] product index file not found in zip. productId:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V

    return-object v3

    .line 1275
    :cond_5
    :try_start_0
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1276
    invoke-static {p2}, Lcom/metamoji/cm/CmUtils;->readStringFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    .line 1277
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1278
    invoke-static {p2}, Lcom/metamoji/cm/CmJson;->createMapFromJson(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p1

    .line 1279
    const-string p2, "jsonDic"

    invoke-interface {v3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 1281
    const-string p2, "[LbLibrarySheetTemplateManager] product index file dos\'nt read..."

    invoke-static {p1, p2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-object v3
.end method

.method public existsSheetTemplate(Ljava/lang/String;)Z
    .locals 0

    .line 624
    invoke-virtual {p0, p1}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->getLibrarySheetTemplateFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 628
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    return p1
.end method

.method public getLibrarySheetTemplateFile(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 604
    :try_start_0
    invoke-static {}, Lcom/metamoji/dm/impl/contents/DmLibrarySheetTemplateContentsManager;->getInstance()Lcom/metamoji/dm/impl/contents/DmLibrarySheetTemplateContentsManager;

    move-result-object v0

    .line 605
    const-string v1, "sheettemplate"

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/dm/impl/contents/DmLibrarySheetTemplateContentsManager;->getContentsFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 606
    const-string v1, "[MMJLbLibrarySheetTemplateManager] read content entityId: %s filePath: %s"

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 607
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 609
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[MMJLbLibrarySheetTemplateManager] :: ERROR read content filePath entityId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method libraryIndexEntityId(Lcom/metamoji/lb/LbConstants$LbPageType;)Ljava/lang/String;
    .locals 1

    .line 141
    sget-object v0, Lcom/metamoji/lb/LbLibrarySheetTemplateManager$2;->$SwitchMap$com$metamoji$lb$LbConstants$LbPageType:[I

    invoke-virtual {p1}, Lcom/metamoji/lb/LbConstants$LbPageType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 147
    :cond_0
    const-string p1, "index_download"

    return-object p1

    .line 145
    :cond_1
    const-string p1, "index_system"

    return-object p1

    .line 143
    :cond_2
    const-string p1, "index_bookmark"

    return-object p1
.end method

.method public loadPageDataArray()Ljava/util/List;
    .locals 5
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

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_2

    .line 110
    sget-object v2, Lcom/metamoji/lb/LbLibrarySheetTemplateManager$2;->$SwitchMap$com$metamoji$lb$LbConstants$LbPageType:[I

    sget-object v3, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->types:[Lcom/metamoji/lb/LbConstants$LbPageType;

    aget-object v4, v3, v1

    invoke-virtual {v4}, Lcom/metamoji/lb/LbConstants$LbPageType;->ordinal()I

    move-result v4

    aget v2, v2, v4

    const/4 v4, 0x1

    if-eq v2, v4, :cond_1

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    .line 124
    aget-object v2, v3, v1

    invoke-virtual {p0, v2}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->loadPageDataArrayWithType(Lcom/metamoji/lb/LbConstants$LbPageType;)Ljava/util/List;

    move-result-object v2

    .line 125
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->createStoreInitPageData()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 113
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->createHistoryPageDataArray()Ljava/util/List;

    move-result-object v2

    .line 114
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method loadPageDataArrayWithType(Lcom/metamoji/lb/LbConstants$LbPageType;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lb/LbConstants$LbPageType;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    const-string v0, "[MMJLbLibrarySheetTemplateManager] LibraryIndex : entityId="

    .line 163
    invoke-virtual {p0, p1}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->libraryIndexEntityId(Lcom/metamoji/lb/LbConstants$LbPageType;)Ljava/lang/String;

    move-result-object v1

    .line 164
    invoke-static {}, Lcom/metamoji/dm/impl/contents/DmLibrarySheetTemplateContentsManager;->getInstance()Lcom/metamoji/dm/impl/contents/DmLibrarySheetTemplateContentsManager;

    move-result-object v2

    .line 165
    const-string v3, "index"

    invoke-virtual {v2, v1, v3}, Lcom/metamoji/dm/impl/contents/DmLibrarySheetTemplateContentsManager;->existsContentsData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 166
    invoke-virtual {v2, v1, v3}, Lcom/metamoji/dm/impl/contents/DmLibrarySheetTemplateContentsManager;->getContentsFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 169
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " filePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 170
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/metamoji/lb/LbLibraryIndexParser;->parse(Lcom/metamoji/lb/LbConstants$LbPageType;Ljava/io/File;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 173
    const-string v1, "[MMJLbLibrarySheetTemplateManager] :: ERROR parseIndexData"

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_0
    move-object v0, v5

    :goto_0
    if-nez v0, :cond_1

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 181
    invoke-virtual {p0, p1}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->createPageData(Lcom/metamoji/lb/LbConstants$LbPageType;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_1
    invoke-virtual {p0, p1}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->searchSheetTemplates(Lcom/metamoji/lb/LbConstants$LbPageType;)Ljava/util/List;

    move-result-object v1

    .line 189
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v6, 0x1

    const-string v7, "partsArray"

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 192
    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 193
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v6

    :goto_1
    if-ltz v7, :cond_2

    .line 195
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    .line 196
    const-string v9, "entityId"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {p0, v8, v1}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->contentWithEntityId(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 199
    invoke-interface {v4, v7, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 201
    invoke-interface {v1, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 205
    :cond_3
    invoke-interface {v4, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v3, v6

    :goto_2
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 213
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 215
    check-cast v2, Ljava/util/Map;

    .line 219
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 221
    check-cast v8, Ljava/util/Map;

    .line 224
    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 225
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    const v10, 0x7fffffff

    if-ge v9, v10, :cond_5

    goto :goto_4

    :cond_6
    move-object v8, v5

    :goto_4
    if-nez v8, :cond_7

    .line 233
    invoke-virtual {p0, p1}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->createPageData(Lcom/metamoji/lb/LbConstants$LbPageType;)Ljava/util/Map;

    move-result-object v4

    .line 234
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Ljava/util/List;

    .line 241
    :cond_7
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    if-eqz v3, :cond_b

    .line 247
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v6

    :goto_5
    if-ltz v1, :cond_a

    .line 248
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 250
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 251
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_9

    .line 252
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_9
    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    .line 256
    :cond_a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_b

    .line 257
    invoke-virtual {p0, p1}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->createPageData(Lcom/metamoji/lb/LbConstants$LbPageType;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    return-object v0
.end method

.method public needUpdate(Ljava/lang/String;Ljava/util/Map;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)Z"
        }
    .end annotation

    .line 1361
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateMetaDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateMetaDataManager;

    move-result-object v0

    .line 1362
    invoke-virtual {v0, p1}, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateMetaDataManager;->getMetaData(Ljava/lang/String;)Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;

    move-result-object p1

    check-cast p1, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 1364
    const-string p1, "[MMJLbLibrarySheetTemplateManager] needUpdate check sheetTemplateMeta : Not Found!"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    return v0

    .line 1369
    :cond_0
    const-string v1, "updateDate"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 1370
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-static {p2}, Lcom/metamoji/cm/TimeUtils;->isoStringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_2

    .line 1371
    invoke-virtual {p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->getUpdate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p2

    if-eqz p2, :cond_2

    return v0

    .line 1376
    :cond_2
    invoke-virtual {p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->isTrial()Z

    move-result p1

    if-eqz p1, :cond_3

    if-nez p3, :cond_3

    return v0

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method parseSystemSheetTemplate(Ljava/lang/String;)Ljava/util/Map;
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

    .line 1086
    invoke-static {}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->createTempDirectory()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1091
    :cond_0
    new-instance v2, Ljava/io/File;

    const-string v3, "download_lb_sheettemplate.product"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1092
    invoke-static {p1, v2}, Lcom/metamoji/cm/CmUtils;->copyFileFromAsset(Ljava/lang/String;Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1093
    const-string p1, "[MMJLbLibrarySheetTemplateManager] archive copy error!"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    return-object v1

    .line 1098
    :cond_1
    invoke-static {v2, v0, v1}, Lcom/metamoji/cv/xml/CvZippedXMLConvertUtils;->uncompressDocumentNoCkeckAsync(Ljava/io/File;Ljava/io/File;Ljava/util/Map;)Lcom/metamoji/cv/CvResult$Import;

    move-result-object p1

    .line 1099
    sget-object v2, Lcom/metamoji/cv/CvResult$Import;->Success:Lcom/metamoji/cv/CvResult$Import;

    if-eq v2, p1, :cond_2

    return-object v1

    .line 1104
    :cond_2
    new-instance p1, Ljava/io/File;

    const-string v2, "index.dat"

    invoke-direct {p1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_3

    .line 1106
    const-string p1, "[MMJLbLibrarySheetTemplateManager] index file not found in zip."

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V

    return-object v1

    .line 1112
    :cond_3
    :try_start_0
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1113
    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->readStringFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    .line 1114
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1115
    invoke-static {v2}, Lcom/metamoji/cm/CmJson;->createMapFromJson(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p1

    .line 1117
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1118
    const-string v3, "jsonDic"

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1119
    const-string p1, "tempDir"

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p1

    .line 1122
    const-string v0, "[MMJLbLibrarySheetTemplateManager] product index file dos\'nt read..."

    invoke-static {p1, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-object v1
.end method

.method registerLibrarySheetTemplateFromFile(Ljava/io/File;Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 684
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->registerLibrarySheetTemplateFromFile(Ljava/io/File;Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public registerLibrarySheetTemplateFromFile(Ljava/io/File;Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;Ljava/lang/String;Z)Z
    .locals 3

    const/4 v0, 0x0

    .line 701
    :try_start_0
    invoke-static {}, Lcom/metamoji/dm/impl/contents/DmLibrarySheetTemplateContentsManager;->getInstance()Lcom/metamoji/dm/impl/contents/DmLibrarySheetTemplateContentsManager;

    move-result-object v1

    .line 702
    const-string v2, "sheettemplate"

    invoke-virtual {v1, p1, p3, v2}, Lcom/metamoji/dm/impl/contents/DmLibrarySheetTemplateContentsManager;->writeContentsDataFromFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    .line 749
    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    return v0

    .line 717
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateMetaDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateMetaDataManager;

    move-result-object v1

    .line 718
    invoke-virtual {p2, p3}, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->setEntityId(Ljava/lang/String;)V

    if-eqz p4, :cond_1

    .line 722
    invoke-virtual {p0, p2, p3}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->copyMetaData(Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;Ljava/lang/String;)V

    .line 725
    :cond_1
    invoke-virtual {v1, p2}, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateMetaDataManager;->putMetaData(Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 729
    invoke-virtual {p0, p3}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->cleanContent(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 749
    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    return v0

    .line 743
    :cond_2
    :try_start_2
    invoke-virtual {p0, p3}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->updateThumbnail(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 749
    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p2

    goto :goto_0

    :catch_0
    move-exception p2

    .line 733
    :try_start_3
    const-string p4, "[MMJLbLibrarySheetTemplateManager] :: ERROR register MetaData: "

    invoke-static {p2, p4}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 735
    invoke-virtual {p0, p3}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->cleanContent(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 749
    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    return v0

    .line 740
    :goto_0
    :try_start_4
    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_1
    move-exception p2

    goto :goto_1

    :catch_1
    move-exception p2

    .line 708
    :try_start_5
    const-string p3, "[MMJLbLibrarySheetTemplateManager] :: ERROR register Content:"

    invoke-static {p2, p3}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 749
    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    return v0

    .line 713
    :goto_1
    :try_start_6
    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p2

    .line 749
    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    .line 750
    throw p2
.end method

.method protected retryLogin(Ljava/util/Map;Ljava/io/File;[BLjava/lang/String;Ljava/lang/String;Lcom/metamoji/lb/LbDownloadUtil$ILbDownloadUtilProgress;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/io/File;",
            "[B",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/metamoji/lb/LbDownloadUtil$ILbDownloadUtilProgress;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1294
    const-string v0, "result"

    const-string v1, "================================================================================="

    const-string v3, "UTF-8"

    const-string v7, "errorMessage"

    :try_start_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p3, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 1295
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1296
    invoke-static {v5}, Lcom/metamoji/cm/CmJson;->createMapFromJson(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v8

    .line 1297
    const-string v5, "[LbLibrarySheetTemplateManager] downloadProduct responce=================================="

    invoke-static {v5}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 1298
    invoke-static {v4}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 1299
    invoke-static {v1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 1302
    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1303
    const-string v9, "message"

    if-eqz v4, :cond_5

    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    goto/16 :goto_1

    .line 1313
    :cond_0
    invoke-static {}, Lcom/metamoji/lb/LbDownloadUtil;->login()Ljava/util/Map;

    move-result-object v4

    if-nez v4, :cond_1

    goto/16 :goto_2

    .line 1317
    :cond_1
    const-string v5, "error"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1318
    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 1320
    invoke-interface {p1, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    .line 1325
    :cond_2
    const-string v5, "contents"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 1326
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 1327
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1328
    invoke-static {v3}, Lcom/metamoji/cm/CmJson;->createMapFromJson(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v3

    .line 1329
    const-string v4, "[LbLibrarySheetTemplateManager] Retry login responce ====================================="

    invoke-static {v4}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 1330
    invoke-static {v5}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 1331
    invoke-static {v1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 1332
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 1333
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    .line 1342
    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->downloadProductInner(Ljava/util/Map;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/lb/LbDownloadUtil$ILbDownloadUtilProgress;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 1334
    :cond_4
    :goto_0
    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 1336
    invoke-interface {p1, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    .line 1304
    :cond_5
    :goto_1
    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 1306
    invoke-interface {p1, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_6
    :goto_2
    return-object p1

    :catch_0
    move-exception v0

    .line 1345
    const-string v1, "[LbLibrarySheetTemplateManager] downloadProduct parse FAILED!!"

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1346
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public savePageDataArray(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 285
    sget-object v0, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_MAX:Lcom/metamoji/lb/LbConstants$LbPageType;

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->savePageDataArray(Ljava/util/List;Lcom/metamoji/lb/LbConstants$LbPageType;)V

    return-void
.end method

.method public savePageDataArray(Ljava/util/List;Lcom/metamoji/lb/LbConstants$LbPageType;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Lcom/metamoji/lb/LbConstants$LbPageType;",
            ")V"
        }
    .end annotation

    .line 296
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 297
    sget-object v1, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_SYSTEM:Lcom/metamoji/lb/LbConstants$LbPageType;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    sget-object v1, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_DOWNLOAD:Lcom/metamoji/lb/LbConstants$LbPageType;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 301
    const-string v2, "type"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/lb/LbConstants$LbPageType;

    .line 302
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_0

    .line 304
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 311
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/lb/LbConstants$LbPageType;

    .line 312
    sget-object v2, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_MAX:Lcom/metamoji/lb/LbConstants$LbPageType;

    if-eq p2, v2, :cond_3

    if-ne p2, v1, :cond_2

    .line 313
    :cond_3
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 314
    invoke-virtual {p0, v2, v1}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->savePageDataArrayExec(Ljava/util/List;Lcom/metamoji/lb/LbConstants$LbPageType;)Z

    goto :goto_1

    :cond_4
    return-void
.end method

.method savePageDataArrayExec(Ljava/util/List;Lcom/metamoji/lb/LbConstants$LbPageType;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Lcom/metamoji/lb/LbConstants$LbPageType;",
            ")Z"
        }
    .end annotation

    const-string v0, "[MMJLbLibrarySheetTemplateManager] save PageDataArray write : "

    const-string v1, "[MMJLbLibrarySheetTemplateManager] :: ERROR save PageDataArray write type="

    .line 327
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[MMJLbLibrarySheetTemplateManager] save PageDataArray type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p0, p2}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->libraryIndexEntityId(Lcom/metamoji/lb/LbConstants$LbPageType;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 335
    :try_start_0
    invoke-static {}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->createTempDirectory()Ljava/io/File;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    .line 356
    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    return v3

    .line 339
    :cond_0
    :try_start_1
    new-instance v5, Ljava/io/File;

    const-string v6, "index.xml"

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 340
    invoke-static {p1, v5}, Lcom/metamoji/lb/LbLibraryIndexParser;->save(Ljava/util/List;Ljava/io/File;)V

    .line 342
    invoke-static {}, Lcom/metamoji/dm/impl/contents/DmLibrarySheetTemplateContentsManager;->getInstance()Lcom/metamoji/dm/impl/contents/DmLibrarySheetTemplateContentsManager;

    move-result-object p1

    .line 343
    const-string v6, "index"

    invoke-virtual {p1, v5, v2, v6}, Lcom/metamoji/dm/impl/contents/DmLibrarySheetTemplateContentsManager;->writeContentsDataFromFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 344
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 345
    sget-object v0, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_USER:Lcom/metamoji/lb/LbConstants$LbPageType;

    if-ne p2, v0, :cond_1

    .line 347
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;

    move-result-object v0

    sget-object v5, Lcom/metamoji/dm/DmLibraryType;->LibraryTypeSheetTemplate:Lcom/metamoji/dm/DmLibraryType;

    invoke-virtual {v0, v2, v5}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->putIndexXMLSyncDataForUpdate(Ljava/lang/String;Lcom/metamoji/dm/DmLibraryType;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 356
    :cond_1
    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 351
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 356
    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    return v3

    :goto_0
    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    .line 357
    throw p1
.end method

.method public searchSheetTemplateByProductId(Ljava/lang/String;)I
    .locals 2

    .line 1448
    new-instance v0, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;

    invoke-direct {v0}, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;-><init>()V

    .line 1449
    invoke-virtual {v0, p1}, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->setProductId(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1450
    invoke-virtual {v0, p1}, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->setIsTrial(I)V

    .line 1451
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateMetaDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateMetaDataManager;

    move-result-object v1

    .line 1452
    invoke-virtual {v1, v0, p1}, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateMetaDataManager;->searchLibrarySheetTemplateId(Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;I)Ljava/util/ArrayList;

    move-result-object p1

    .line 1453
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method searchSheetTemplates(Lcom/metamoji/lb/LbConstants$LbPageType;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lb/LbConstants$LbPageType;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 422
    const-string v0, "download"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lcom/metamoji/dm/fw/metadata/DmSortCondition;

    invoke-direct {v2}, Lcom/metamoji/dm/fw/metadata/DmSortCondition;-><init>()V

    .line 423
    const-string v3, "entityId"

    invoke-virtual {v2, v3}, Lcom/metamoji/dm/fw/metadata/DmSortCondition;->setSortKey(Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 424
    invoke-virtual {v2, v3}, Lcom/metamoji/dm/fw/metadata/DmSortCondition;->setAscending(Z)V

    .line 427
    new-instance v4, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;

    invoke-direct {v4}, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;-><init>()V

    .line 428
    sget-object v5, Lcom/metamoji/lb/LbLibrarySheetTemplateManager$2;->$SwitchMap$com$metamoji$lb$LbConstants$LbPageType:[I

    invoke-virtual {p1}, Lcom/metamoji/lb/LbConstants$LbPageType;->ordinal()I

    move-result v6

    aget v5, v5, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v6, -0x1

    const/4 v7, 0x0

    if-eq v5, v3, :cond_3

    const/4 v8, 0x3

    const-string v9, "create"

    if-eq v5, v8, :cond_2

    const/4 v6, 0x4

    if-eq v5, v6, :cond_1

    const/4 v6, 0x5

    if-eq v5, v6, :cond_0

    return-object v1

    .line 476
    :cond_0
    :try_start_1
    invoke-virtual {v4, v0}, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->setType(Ljava/lang/String;)V

    .line 477
    new-instance v5, Lcom/metamoji/dm/fw/metadata/DmSortCondition;

    invoke-direct {v5}, Lcom/metamoji/dm/fw/metadata/DmSortCondition;-><init>()V

    .line 478
    invoke-virtual {v5, v0}, Lcom/metamoji/dm/fw/metadata/DmSortCondition;->setSortKey(Ljava/lang/String;)V

    .line 479
    invoke-virtual {v5, v3}, Lcom/metamoji/dm/fw/metadata/DmSortCondition;->setAscending(Z)V

    .line 480
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 481
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 482
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 483
    invoke-virtual {v4, v0}, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->setSort(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 462
    :cond_1
    const-string v0, "system"

    invoke-virtual {v4, v0}, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->setType(Ljava/lang/String;)V

    .line 463
    new-instance v0, Lcom/metamoji/dm/fw/metadata/DmSortCondition;

    invoke-direct {v0}, Lcom/metamoji/dm/fw/metadata/DmSortCondition;-><init>()V

    .line 464
    invoke-virtual {v0, v9}, Lcom/metamoji/dm/fw/metadata/DmSortCondition;->setSortKey(Ljava/lang/String;)V

    .line 465
    invoke-virtual {v0, v3}, Lcom/metamoji/dm/fw/metadata/DmSortCondition;->setAscending(Z)V

    .line 466
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 467
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    invoke-virtual {v4, v3}, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->setSort(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 448
    :cond_2
    invoke-virtual {v4, v6}, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->setBookmarked(I)V

    .line 449
    new-instance v0, Lcom/metamoji/dm/fw/metadata/DmSortCondition;

    invoke-direct {v0}, Lcom/metamoji/dm/fw/metadata/DmSortCondition;-><init>()V

    .line 450
    invoke-virtual {v0, v9}, Lcom/metamoji/dm/fw/metadata/DmSortCondition;->setSortKey(Ljava/lang/String;)V

    .line 451
    invoke-virtual {v0, v3}, Lcom/metamoji/dm/fw/metadata/DmSortCondition;->setAscending(Z)V

    .line 452
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 453
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 454
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    invoke-virtual {v4, v3}, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->setSort(Ljava/util/ArrayList;)V

    :goto_0
    move v0, v7

    goto :goto_1

    .line 433
    :cond_3
    invoke-virtual {v4, v6}, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->setUseDateIsNotNULL(I)V

    .line 434
    new-instance v0, Lcom/metamoji/dm/fw/metadata/DmSortCondition;

    invoke-direct {v0}, Lcom/metamoji/dm/fw/metadata/DmSortCondition;-><init>()V

    .line 435
    const-string v3, "useDate"

    invoke-virtual {v0, v3}, Lcom/metamoji/dm/fw/metadata/DmSortCondition;->setSortKey(Ljava/lang/String;)V

    .line 436
    invoke-virtual {v0, v7}, Lcom/metamoji/dm/fw/metadata/DmSortCondition;->setAscending(Z)V

    .line 437
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 438
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 439
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    invoke-virtual {v4, v3}, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;->setSort(Ljava/util/ArrayList;)V

    const/16 v0, 0xc

    .line 491
    :goto_1
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateMetaDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateMetaDataManager;

    move-result-object v2

    .line 492
    invoke-virtual {v2, v4, v0, v1}, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateMetaDataManager;->searchLibrarySheetTemplate(Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateSearchCondition;ILjava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 493
    const-string v2, "[MMJLbLibrarySheetTemplateManager] searchSheetTemplates type=%s result:%d"

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    :cond_4
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {p1, v3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 496
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 499
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;

    .line 501
    check-cast v2, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;

    invoke-virtual {p0, v2, v1}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->createPartDic(Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 503
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_6
    return-object p1

    :catchall_0
    move-exception p1

    .line 520
    throw p1

    :catch_0
    move-exception p1

    .line 515
    const-string v0, "[MMJLbLibrarySheetTemplateManager] :: ERROR searchSheetTemplates"

    invoke-static {p1, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-object v1
.end method

.method public setupSystemSheetTemplate(Z)Z
    .locals 9

    if-eqz p1, :cond_0

    .line 1030
    invoke-virtual {p0}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->cleanupSystemSheetTemplate()V

    .line 1034
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtLocaleUtils;->getCurrentLocale()Lcom/metamoji/nt/NtLocale;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/nt/NtLocaleUtils;->localeStringFromLocale(Lcom/metamoji/nt/NtLocale;)Ljava/lang/String;

    move-result-object p1

    .line 1037
    const-string v0, "init/library/com.metamoji.shareanytime.sheet.system001.product"

    .line 1039
    invoke-virtual {p0, v0}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->parseSystemSheetTemplate(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 1045
    :cond_1
    const-string v2, "jsonDic"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 1046
    const-string v3, "tempDir"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 1050
    :try_start_0
    const-string v3, "p_id"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1052
    const-string v4, "p_parts"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1053
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x1

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 1055
    check-cast v5, Ljava/util/Map;

    .line 1057
    const-string v6, "entityId"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1060
    new-instance v7, Ljava/io/File;

    const-string v8, "partFile"

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {v7, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1061
    invoke-virtual {p0, v5, v3, p1}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->createLibrarySystemSheetTemplateMetaData(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;

    move-result-object v5

    .line 1062
    invoke-virtual {p0, v7, v5, v6, v1}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->registerLibrarySheetTemplateFromFile(Ljava/io/File;Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1065
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[MMJLbLibyrarySheetTemplateManager] sheetTemplate regist FAILED! entityId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v4, v1

    goto :goto_0

    .line 1071
    :cond_3
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    return v4

    :catchall_0
    move-exception p1

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    .line 1072
    throw p1
.end method

.method public sheetTemplateMetaData(Ljava/lang/String;)Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;
    .locals 3

    const-string v0, "[MMJLbLibrarySheetTemplateManager] sheetTemplateMetaData read entityId: "

    .line 640
    :try_start_0
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateMetaDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateMetaDataManager;

    move-result-object v1

    .line 641
    invoke-virtual {v1, p1}, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateMetaDataManager;->getMetaData(Ljava/lang/String;)Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;

    move-result-object v1

    check-cast v1, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;

    .line 642
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 645
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[MMJLbLibrarySheetTemplateManager] :: ERROR sheetTemplateMeta read entityId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method sheetTemplateThumbnailPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 660
    :try_start_0
    invoke-static {}, Lcom/metamoji/dm/impl/contents/DmLibrarySheetTemplateThumbnailsCacheManager;->getInstance()Lcom/metamoji/dm/impl/contents/DmLibrarySheetTemplateThumbnailsCacheManager;

    move-result-object v0

    .line 661
    const-string v1, "thumbnail"

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/dm/impl/contents/DmLibrarySheetTemplateThumbnailsCacheManager;->getCacheFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 665
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[MMJLbLibrarySheetTemplateManager] :: ERROR sheetTemplateThumbnailPath read entityId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method sheetTemplateTypeForDic(Ljava/lang/String;)Lcom/metamoji/lb/LbConstants$LbPageType;
    .locals 1

    .line 583
    const-string v0, "system"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 584
    sget-object p1, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_SYSTEM:Lcom/metamoji/lb/LbConstants$LbPageType;

    return-object p1

    .line 585
    :cond_0
    const-string v0, "download"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 586
    sget-object p1, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_DOWNLOAD:Lcom/metamoji/lb/LbConstants$LbPageType;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method titleStringFromJsonPartDic(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1173
    const-string v0, "title"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1174
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 1177
    check-cast p1, Ljava/util/Map;

    .line 1178
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    .line 1181
    const-string p2, "*"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    .line 1184
    sget-object p2, Lcom/metamoji/nt/NtLocale;->en:Lcom/metamoji/nt/NtLocale;

    invoke-static {p2}, Lcom/metamoji/nt/NtLocaleUtils;->localeStringFromLocale(Lcom/metamoji/nt/NtLocale;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    .line 1188
    :cond_1
    :goto_0
    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public updateSheetTemplateBookmarked(Ljava/lang/String;Z)V
    .locals 3

    const-string v0, "[MMJLbLibrarySheetTemplateManager] update bookmarked of sheetTemplate : "

    .line 973
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[MMJLbLibrarySheetTemplateManager] update bookmarked of sheetTemplate entityId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 975
    :try_start_0
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateMetaDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateMetaDataManager;

    move-result-object v1

    .line 976
    invoke-virtual {v1, p1}, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateMetaDataManager;->getMetaData(Ljava/lang/String;)Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;

    move-result-object v2

    check-cast v2, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;

    if-nez v2, :cond_0

    .line 978
    const-string p2, "[MMJLbLibrarySheetTemplateManager] update bookmarked of sheetTemplate : Not Found!"

    invoke-static {p2}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    return-void

    .line 981
    :cond_0
    invoke-virtual {v2, p2}, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->setBookmarked(Z)V

    .line 982
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, p2}, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->setLastAccess(Ljava/util/Date;)V

    .line 983
    invoke-virtual {v1, v2}, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateMetaDataManager;->putMetaData(Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;)Z

    move-result p2

    .line 984
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 986
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[MMJLbLibrarySheetTemplateManager] :: ERROR bookmarked name of sheetTemplate entityId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public updateSheetTemplateName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "[MMJLbLibrarySheetTemplateManager] update name of sheetTemplate : "

    .line 947
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[MMJLbLibrarySheetTemplateManager] update name of sheetTemplate entityId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 949
    :try_start_0
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateMetaDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateMetaDataManager;

    move-result-object v1

    .line 950
    invoke-virtual {v1, p1}, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateMetaDataManager;->getMetaData(Ljava/lang/String;)Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;

    move-result-object v2

    check-cast v2, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;

    if-nez v2, :cond_0

    .line 952
    const-string p2, "[MMJLbLibrarySheetTemplateManager] update name of sheetTemplate : Not Found!"

    invoke-static {p2}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    return-void

    .line 955
    :cond_0
    invoke-virtual {v2, p2}, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->setName(Ljava/lang/String;)V

    .line 956
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, p2}, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->setLastAccess(Ljava/util/Date;)V

    .line 957
    invoke-virtual {v1, v2}, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateMetaDataManager;->putMetaData(Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;)Z

    move-result p2

    .line 958
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 960
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[MMJLbLibrarySheetTemplateManager] :: ERROR update name of sheetTemplate entityId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public updateSheetTemplateUseDate(Ljava/lang/String;)V
    .locals 4

    const-string v0, "[MMJLbLibrarySheetTemplateManager] update lastaccess of sheetTemplateMeta : "

    .line 920
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[MMJLbLibrarySheetTemplateManager] update lastaccess of sheetTemplate entityId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 922
    :try_start_0
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateMetaDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateMetaDataManager;

    move-result-object v1

    .line 923
    invoke-virtual {v1, p1}, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateMetaDataManager;->getMetaData(Ljava/lang/String;)Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;

    move-result-object v2

    check-cast v2, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;

    if-nez v2, :cond_0

    .line 925
    const-string v0, "[MMJLbLibrarySheetTemplateManager] update lastaccess of sheetTemplateMeta : Not Found!"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    return-void

    .line 928
    :cond_0
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 929
    invoke-virtual {v2, v3}, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->setUseDate(Ljava/util/Date;)V

    .line 930
    invoke-virtual {v2, v3}, Lcom/metamoji/dm/impl/metadata/entity/DmLibrarySheetTemplateMetaData;->setLastAccess(Ljava/util/Date;)V

    .line 931
    invoke-virtual {v1, v2}, Lcom/metamoji/dm/impl/metadata/DmLibrarySheetTemplateMetaDataManager;->putMetaData(Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;)Z

    move-result v1

    .line 932
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 934
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[MMJLbLibrarySheetTemplateManager] :: ERROR update lastaccess of sheetTemplateMeta entityId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method updateThumbnail(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    .line 804
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->getLibrarySheetTemplateFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    .line 810
    :cond_0
    invoke-static {v1}, Lcom/metamoji/df/model/ModelManagerFactory;->restoreModelManager(Ljava/io/File;)Lcom/metamoji/df/model/IModelManager;

    move-result-object v1

    .line 811
    new-instance v2, Lcom/metamoji/nt/doceditor/NtDocumentEditorForMetaData;

    invoke-direct {v2, v1}, Lcom/metamoji/nt/doceditor/NtDocumentEditorForMetaData;-><init>(Lcom/metamoji/df/model/IModelManager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 814
    :try_start_1
    const-string v1, "thumbnail"

    invoke-virtual {v2, v1}, Lcom/metamoji/nt/doceditor/NtDocumentEditorForMetaData;->metaDataForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/cm/Blob;

    if-eqz v1, :cond_2

    .line 815
    instance-of v3, v1, Lcom/metamoji/cm/Blob;

    if-nez v3, :cond_1

    goto :goto_0

    .line 818
    :cond_1
    invoke-virtual {v1}, Lcom/metamoji/cm/Blob;->getData()[B

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->updateThumbnail(Ljava/lang/String;[B)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 821
    :try_start_2
    invoke-virtual {v2}, Lcom/metamoji/nt/doceditor/NtDocumentEditorForMetaData;->dispose()V

    return v1

    :cond_2
    :goto_0
    invoke-virtual {v2}, Lcom/metamoji/nt/doceditor/NtDocumentEditorForMetaData;->dispose()V

    return v0

    :catchall_0
    move-exception v1

    invoke-virtual {v2}, Lcom/metamoji/nt/doceditor/NtDocumentEditorForMetaData;->dispose()V

    .line 823
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    .line 825
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[MMJLbLibrarySheetTemplateManager] updateThumbnail failed. id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return v0
.end method

.method updateThumbnail(Ljava/lang/String;Ljava/io/File;)Z
    .locals 2

    .line 839
    :try_start_0
    invoke-static {}, Lcom/metamoji/dm/impl/contents/DmLibrarySheetTemplateThumbnailsCacheManager;->getInstance()Lcom/metamoji/dm/impl/contents/DmLibrarySheetTemplateThumbnailsCacheManager;

    move-result-object v0

    .line 840
    const-string v1, "thumbnail"

    invoke-virtual {v0, p2, p1, v1}, Lcom/metamoji/dm/impl/contents/DmLibrarySheetTemplateThumbnailsCacheManager;->writeCacheDataFromFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    .line 849
    throw p1

    :catch_0
    move-exception p1

    .line 844
    const-string p2, "[MMJLbLibrarySheetTemplateManager] :: ERROR register Thumbnail:"

    invoke-static {p1, p2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method updateThumbnail(Ljava/lang/String;[B)Z
    .locals 2

    .line 861
    :try_start_0
    invoke-static {}, Lcom/metamoji/dm/impl/contents/DmLibrarySheetTemplateThumbnailsCacheManager;->getInstance()Lcom/metamoji/dm/impl/contents/DmLibrarySheetTemplateThumbnailsCacheManager;

    move-result-object v0

    .line 862
    const-string v1, "thumbnail"

    invoke-virtual {v0, p2, p1, v1}, Lcom/metamoji/dm/impl/contents/DmLibrarySheetTemplateThumbnailsCacheManager;->writeCacheDataFromData([BLjava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    .line 871
    throw p1

    :catch_0
    move-exception p1

    .line 866
    const-string p2, "[MMJLbLibrarySheetTemplateManager] :: ERROR register Thumbnail:"

    invoke-static {p1, p2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
