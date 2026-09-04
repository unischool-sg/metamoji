.class public Lcom/metamoji/lb/LbLibraryBgImageManager;
.super Ljava/lang/Object;
.source "LbLibraryBgImageManager.java"


# static fields
.field private static final CONTENTS_FILE_TYPE_BGIMAGE:Ljava/lang/String; = "bgimage"

.field private static final CONTENTS_FILE_TYPE_BGIMAGE_THUMBNAIL:Ljava/lang/String; = "bgimagethumb"

.field private static final DOWNLOAD_TEMP_FILE:Ljava/lang/String; = "download_lb_bgimage.product"

.field private static final META_TYPE_DOWNLOAD:Ljava/lang/String; = "download"

.field private static final META_TYPE_SYSTEM:Ljava/lang/String; = "system"

.field private static final META_TYPE_USER:Ljava/lang/String; = "user"

.field private static final SYSTEMITEM_FILE_MAX:I = 0x2

.field private static final SYSTEMITEM_FILE_NAME:[Ljava/lang/String;

.field private static final THUMBNAIL_FILE_NAME:Ljava/lang/String; = "thumbnail"

.field private static s_sharedInstance:Lcom/metamoji/lb/LbLibraryBgImageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    .line 55
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "init/library/com.metamoji.noteanytime.sheetbgimage001.sheet.product"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "init/library/com.metamoji.noteanytime.coversheetbgimage001.cover.product"

    aput-object v2, v0, v1

    sput-object v0, Lcom/metamoji/lb/LbLibraryBgImageManager;->SYSTEMITEM_FILE_NAME:[Ljava/lang/String;

    .line 63
    new-instance v0, Lcom/metamoji/lb/LbLibraryBgImageManager;

    invoke-direct {v0}, Lcom/metamoji/lb/LbLibraryBgImageManager;-><init>()V

    sput-object v0, Lcom/metamoji/lb/LbLibraryBgImageManager;->s_sharedInstance:Lcom/metamoji/lb/LbLibraryBgImageManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private _cleanupItemByType(Ljava/lang/String;)V
    .locals 3

    .line 615
    new-instance v0, Lcom/metamoji/dm/impl/metadata/DmLibraryItemSearchCondition;

    invoke-direct {v0}, Lcom/metamoji/dm/impl/metadata/DmLibraryItemSearchCondition;-><init>()V

    .line 616
    invoke-virtual {v0, p1}, Lcom/metamoji/dm/impl/metadata/DmLibraryItemSearchCondition;->setType(Ljava/lang/String;)V

    .line 617
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibraryBgImageMetaDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibraryBgImageMetaDataManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 618
    invoke-virtual {v1, v0, v2}, Lcom/metamoji/dm/impl/metadata/DmLibraryBgImageMetaDataManager;->searchLibraryItemId(Lcom/metamoji/dm/impl/metadata/DmLibraryItemSearchCondition;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 619
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[LbLibraryBgImageManager] cleanupItemByType : "

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

    .line 622
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 623
    invoke-virtual {p0, v0}, Lcom/metamoji/lb/LbLibraryBgImageManager;->deleteItem(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static declared-synchronized createTempDirectory()Ljava/io/File;
    .locals 6

    const-string v0, "failed to create temporary directory. : "

    const-class v1, Lcom/metamoji/lb/LbLibraryBgImageManager;

    monitor-enter v1

    const/4 v2, 0x0

    .line 594
    :try_start_0
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getTemporaryDataDirectory()Ljava/io/File;

    move-result-object v3

    .line 596
    const-string v4, "lbItem"

    const-string v5, ""

    invoke-static {v4, v5, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 598
    :try_start_1
    invoke-static {v3}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 601
    :catch_0
    :try_start_2
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    move-result v4

    if-nez v4, :cond_0

    .line 602
    const-string v3, "cannot create temporary directory."

    invoke-static {v3}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 603
    monitor-exit v1

    return-object v2

    .line 605
    :cond_0
    monitor-exit v1

    return-object v3

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v3

    .line 607
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

    .line 608
    monitor-exit v1

    return-object v2

    :goto_0
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public static getInstance()Lcom/metamoji/lb/LbLibraryBgImageManager;
    .locals 1

    .line 71
    sget-object v0, Lcom/metamoji/lb/LbLibraryBgImageManager;->s_sharedInstance:Lcom/metamoji/lb/LbLibraryBgImageManager;

    return-object v0
.end method


# virtual methods
.method cleanContent(Ljava/lang/String;)V
    .locals 3

    const-string v0, "[MMJLbLibraryItemManager] cleanContent entityId:"

    .line 490
    :try_start_0
    invoke-static {}, Lcom/metamoji/dm/impl/contents/DmLibraryBgImageContentsManager;->getInstance()Lcom/metamoji/dm/impl/contents/DmLibraryBgImageContentsManager;

    move-result-object v1

    .line 491
    const-string v2, "bgimage"

    invoke-virtual {v1, p1, v2}, Lcom/metamoji/dm/impl/contents/DmLibraryBgImageContentsManager;->deleteContentsData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 492
    const-string v2, "bgimagethumb"

    invoke-virtual {v1, p1, v2}, Lcom/metamoji/dm/impl/contents/DmLibraryBgImageContentsManager;->deleteContentsData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 493
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

    .line 496
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[MMJLbLibraryItemManager] :: ERROR cleanContent entityId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public cleanupSystemItem()V
    .locals 1

    .line 629
    const-string v0, "system"

    invoke-direct {p0, v0}, Lcom/metamoji/lb/LbLibraryBgImageManager;->_cleanupItemByType(Ljava/lang/String;)V

    return-void
.end method

.method contentWithEntityId(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 139
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 141
    check-cast v0, Ljava/util/Map;

    .line 143
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

.method copyMetaData(Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;Ljava/lang/String;)V
    .locals 1

    .line 509
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibraryBgImageMetaDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibraryBgImageMetaDataManager;

    move-result-object v0

    .line 510
    invoke-virtual {v0, p2}, Lcom/metamoji/dm/impl/metadata/DmLibraryBgImageMetaDataManager;->getMetaData(Ljava/lang/String;)Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;

    move-result-object p2

    check-cast p2, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;

    if-nez p2, :cond_0

    .line 512
    const-string p1, "[MMJLbLibraryBgImageManager] copyMetaData target item : Not Found!"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    return-void

    .line 517
    :cond_0
    invoke-virtual {p2}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->isBookmarked()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->setBookmarked(Z)V

    .line 519
    invoke-virtual {p2}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->getUseDate()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->setUseDate(Ljava/util/Date;)V

    return-void
.end method

.method createHistoryPageDataArray()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 174
    sget-object v1, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_HISTORY:Lcom/metamoji/lb/LbConstants$LbPageType;

    invoke-virtual {p0, v1}, Lcom/metamoji/lb/LbLibraryBgImageManager;->createPageData(Lcom/metamoji/lb/LbConstants$LbPageType;)Ljava/util/Map;

    move-result-object v1

    .line 175
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    const-string v2, "partsArray"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 180
    sget-object v2, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_HISTORY:Lcom/metamoji/lb/LbConstants$LbPageType;

    invoke-virtual {p0, v2}, Lcom/metamoji/lb/LbLibraryBgImageManager;->searchItems(Lcom/metamoji/lb/LbConstants$LbPageType;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method createLibrarySystemItemMetaData(Ljava/util/Map;Ljava/lang/String;ZLjava/lang/String;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            ")",
            "Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;"
        }
    .end annotation

    .line 754
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibraryBgImageMetaDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibraryBgImageMetaDataManager;

    move-result-object v1

    .line 755
    invoke-virtual {v1}, Lcom/metamoji/dm/impl/metadata/DmLibraryBgImageMetaDataManager;->newMutableDataObject()Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;

    move-result-object v1

    check-cast v1, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;

    .line 757
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 758
    const-string v3, "createDate"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 759
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    invoke-static {v3}, Lcom/metamoji/cm/TimeUtils;->isoStringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v4

    .line 760
    :goto_0
    const-string v5, "updateDate"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 761
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    invoke-static {v5}, Lcom/metamoji/cm/TimeUtils;->isoStringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v3

    .line 763
    :goto_1
    const-string v6, "repeat-type"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 766
    const-string v7, "index"

    invoke-interface {p1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_2

    .line 767
    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_2

    :cond_2
    move v7, v9

    :goto_2
    const-wide/16 v10, 0x0

    .line 770
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    .line 771
    const-string v11, "Tiling"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 772
    const-string v8, "paper-width"

    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    .line 773
    const-string v10, "paper-height"

    invoke-interface {p1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v12, v10

    check-cast v12, Ljava/lang/Double;

    .line 774
    const-string v10, "print-width"

    invoke-interface {p1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v13, v10

    check-cast v13, Ljava/lang/Double;

    .line 775
    const-string v10, "print-height"

    invoke-interface {p1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Double;

    :cond_3
    move-object/from16 v11, p4

    .line 778
    invoke-virtual {p0, p1, v11}, Lcom/metamoji/lb/LbLibraryBgImageManager;->titleStringFromJsonPartDic(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 779
    const-string v0, ""

    .line 781
    :cond_4
    const-string v11, "system"

    invoke-virtual {v1, v11}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->setType(Ljava/lang/String;)V

    .line 782
    invoke-virtual {v1, v0}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->setName(Ljava/lang/String;)V

    if-eqz v3, :cond_5

    goto :goto_3

    :cond_5
    move-object v3, v2

    .line 783
    :goto_3
    invoke-virtual {v1, v3}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->setCreate(Ljava/util/Date;)V

    .line 784
    invoke-virtual {v1, v5}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->setUpdate(Ljava/util/Date;)V

    .line 785
    invoke-virtual {v1, v2}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->setLastAccess(Ljava/util/Date;)V

    .line 786
    invoke-virtual {v1, v4}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->setUseDate(Ljava/util/Date;)V

    .line 787
    invoke-virtual {v1, v9}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->setBookmarked(Z)V

    .line 788
    invoke-virtual {v1, v4}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->setDownload(Ljava/util/Date;)V

    move-object/from16 v0, p2

    .line 789
    invoke-virtual {v1, v0}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->setProductId(Ljava/lang/String;)V

    .line 790
    invoke-virtual {v1, v4}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->setProductName(Ljava/lang/String;)V

    .line 791
    invoke-virtual {v1, v4}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->setCreatorId(Ljava/lang/String;)V

    .line 792
    invoke-virtual {v1, v4}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->setCreatorName(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 793
    invoke-virtual {v1, v0}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->setIsFree(Z)V

    .line 794
    invoke-virtual {v1, v9}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->setIsTrial(Z)V

    .line 796
    invoke-virtual {v1, v7}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->setIndex(I)V

    move/from16 v0, p3

    .line 797
    invoke-virtual {v1, v0}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->setIsSheet(Z)V

    .line 798
    invoke-virtual {v1, v6}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->setRepeatType(Ljava/lang/String;)V

    .line 799
    invoke-virtual {v1, v8}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->setPaperWidth(Ljava/lang/Double;)V

    .line 800
    invoke-virtual {v1, v12}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->setPaperHeight(Ljava/lang/Double;)V

    .line 801
    invoke-virtual {v1, v13}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->setPrintWidth(Ljava/lang/Double;)V

    .line 802
    invoke-virtual {v1, v10}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->setPrintHeight(Ljava/lang/Double;)V

    return-object v1
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

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 159
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 160
    const-string v2, "type"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const-string p1, "partsArray"

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public createPartDic(Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;Lcom/metamoji/dm/impl/contents/DmLibraryBgImageContentsManager;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;",
            "Lcom/metamoji/dm/impl/contents/DmLibraryBgImageContentsManager;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 257
    invoke-virtual {p0, p1, p2, v0}, Lcom/metamoji/lb/LbLibraryBgImageManager;->createPartDic(Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;Lcom/metamoji/dm/impl/contents/DmLibraryBgImageContentsManager;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public createPartDic(Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;Lcom/metamoji/dm/impl/contents/DmLibraryBgImageContentsManager;Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;",
            "Lcom/metamoji/dm/impl/contents/DmLibraryBgImageContentsManager;",
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

    .line 262
    invoke-virtual {p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->getEntityId()Ljava/lang/String;

    move-result-object p3

    .line 264
    const-string v0, "bgimage"

    invoke-virtual {p2, p3, v0}, Lcom/metamoji/dm/impl/contents/DmLibraryBgImageContentsManager;->getContentsFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 266
    const-string v1, "bgimagethumb"

    invoke-virtual {p2, p3, v1}, Lcom/metamoji/dm/impl/contents/DmLibraryBgImageContentsManager;->getContentsFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    .line 269
    invoke-virtual {p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->repeatType()Ljava/lang/String;

    move-result-object v1

    .line 270
    const-string v2, "Tiling"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;->TILED:Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;->FIT_TO_PAPER:Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    .line 273
    :goto_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 274
    const-string v3, "entityId"

    invoke-interface {v2, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    const-string p3, "type"

    sget-object v3, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_SYSTEM:Lcom/metamoji/lb/LbConstants$LbPageType;

    invoke-interface {v2, p3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    const-string p3, ""

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, p3

    :goto_1
    const-string v3, "image"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_2

    .line 277
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    :cond_2
    const-string p2, "imagePath"

    invoke-interface {v2, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    invoke-virtual {p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->isTrial()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string p3, "isTrial"

    invoke-interface {v2, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    const-string p2, "imageStyle"

    invoke-interface {v2, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    invoke-virtual {p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->index()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "index"

    invoke-interface {v2, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    const-string p2, "paperWidth"

    invoke-virtual {p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->paperWidth()Ljava/lang/Double;

    move-result-object p3

    invoke-interface {v2, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    const-string p2, "paperHeight"

    invoke-virtual {p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->paperHeight()Ljava/lang/Double;

    move-result-object p3

    invoke-interface {v2, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    const-string p2, "printWidth"

    invoke-virtual {p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->printWidth()Ljava/lang/Double;

    move-result-object p3

    invoke-interface {v2, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    const-string p2, "printHeight"

    invoke-virtual {p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->printHeight()Ljava/lang/Double;

    move-result-object p1

    invoke-interface {v2, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
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

    .line 191
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 192
    const-string v1, "type"

    sget-object v2, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_STORE:Lcom/metamoji/lb/LbConstants$LbPageType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const-string v1, "g_pageStatus"

    sget-object v2, Lcom/metamoji/lb/LbConstants$StorePageStatus;->SERVER_MAINTENANCE_CHECKING:Lcom/metamoji/lb/LbConstants$StorePageStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public deleteItem(Ljava/lang/String;)V
    .locals 4

    const-string v0, "[MMJLbLibraryBgImageManager] delete item content : "

    const-string v1, "[MMJLbLibraryBgImageManager] delete item metadata : "

    .line 532
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[MMJLbLibraryBgImageManager] delete item entityId: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 535
    :try_start_0
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibraryBgImageMetaDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibraryBgImageMetaDataManager;

    move-result-object v2

    .line 536
    invoke-virtual {v2, p1}, Lcom/metamoji/dm/impl/metadata/DmLibraryBgImageMetaDataManager;->deleteMetaData(Ljava/lang/String;)Z

    move-result v2

    .line 537
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    if-nez v2, :cond_0

    return-void

    .line 543
    :cond_0
    invoke-static {}, Lcom/metamoji/dm/impl/contents/DmLibraryBgImageContentsManager;->getInstance()Lcom/metamoji/dm/impl/contents/DmLibraryBgImageContentsManager;

    move-result-object v1

    .line 544
    const-string v3, "bgimage"

    invoke-virtual {v1, p1, v3}, Lcom/metamoji/dm/impl/contents/DmLibraryBgImageContentsManager;->deleteContentsData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 545
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 548
    const-string v3, "bgimagethumb"

    invoke-virtual {v1, p1, v3}, Lcom/metamoji/dm/impl/contents/DmLibraryBgImageContentsManager;->deleteContentsData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 549
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 552
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[MMJLbLibraryBgImageManager] :: ERROR delete item entityId: "

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

    .line 861
    invoke-static {}, Lcom/metamoji/lb/LbLibraryBgImageManager;->createTempDirectory()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 865
    :cond_0
    const-string v1, "download_lb_bgimage.product"

    sget-object v2, Lcom/metamoji/cm/CmUtils$CreationOption;->REMOVE_EXISTING:Lcom/metamoji/cm/CmUtils$CreationOption;

    invoke-static {v0, v1, v2}, Lcom/metamoji/cm/CmUtils;->safeCreateFile(Ljava/io/File;Ljava/lang/String;Lcom/metamoji/cm/CmUtils$CreationOption;)Ljava/io/File;

    move-result-object v5

    .line 866
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[LbLibraryItemManager] download temp file path : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 869
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 870
    const-string v1, "tempDir"

    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    .line 872
    invoke-virtual/range {v3 .. v8}, Lcom/metamoji/lb/LbLibraryBgImageManager;->downloadProductInner(Ljava/util/Map;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/lb/LbDownloadUtil$ILbDownloadUtilProgress;)Ljava/util/Map;

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

    .line 882
    invoke-static {p4, p2, p5}, Lcom/metamoji/lb/LbDownloadUtil;->downloadWithProgressDialog(Ljava/lang/String;Ljava/io/File;Lcom/metamoji/lb/LbDownloadUtil$ILbDownloadUtilProgress;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move-object v2, p0

    move-object v3, p1

    goto :goto_0

    .line 886
    :cond_1
    const-string v1, "error"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 887
    const-string p2, "errorMessage"

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    if-eqz p3, :cond_0

    .line 889
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    .line 894
    :cond_2
    const-string v1, "contents"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, [B

    .line 895
    const-string v1, "headers"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/Headers;

    .line 899
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

    .line 900
    invoke-virtual/range {v2 .. v8}, Lcom/metamoji/lb/LbLibraryBgImageManager;->retryLogin(Ljava/util/Map;Ljava/io/File;[BLjava/lang/String;Ljava/lang/String;Lcom/metamoji/lb/LbDownloadUtil$ILbDownloadUtilProgress;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    :cond_3
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    move-object v8, p5

    .line 904
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance p2, Lcom/metamoji/lb/LbLibraryBgImageManager$1;

    invoke-direct {p2, p0, v8}, Lcom/metamoji/lb/LbLibraryBgImageManager$1;-><init>(Lcom/metamoji/lb/LbLibraryBgImageManager;Lcom/metamoji/lb/LbDownloadUtil$ILbDownloadUtilProgress;)V

    invoke-virtual {p1, p2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 912
    const-string p1, "tempDir"

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    const/4 p2, 0x0

    .line 913
    invoke-static {v4, p1, p2}, Lcom/metamoji/cv/xml/CvZippedXMLConvertUtils;->uncompressDocumentNoCkeckAsync(Ljava/io/File;Ljava/io/File;Ljava/util/Map;)Lcom/metamoji/cv/CvResult$Import;

    move-result-object p2

    .line 914
    sget-object p3, Lcom/metamoji/cv/CvResult$Import;->Success:Lcom/metamoji/cv/CvResult$Import;

    if-eq p3, p2, :cond_4

    :goto_0
    return-object v3

    .line 919
    :cond_4
    new-instance p2, Ljava/io/File;

    const-string p3, "index.dat"

    invoke-direct {p2, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_5

    .line 921
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "[LbLibraryItemManager] product index file not found in zip. productId:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V

    return-object v3

    .line 927
    :cond_5
    :try_start_0
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 928
    invoke-static {p2}, Lcom/metamoji/cm/CmUtils;->readStringFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    .line 929
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 930
    invoke-static {p2}, Lcom/metamoji/cm/CmJson;->createMapFromJson(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p1

    .line 931
    const-string p2, "jsonDic"

    invoke-interface {v3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 933
    const-string p2, "[LbLibraryItemManager] product index file dos\'nt read..."

    invoke-static {p1, p2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-object v3
.end method

.method public existsItem(Ljava/lang/String;)Z
    .locals 0

    .line 337
    invoke-virtual {p0, p1}, Lcom/metamoji/lb/LbLibraryBgImageManager;->getLibraryItemFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 341
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    return p1
.end method

.method public getLibraryItemFile(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 317
    :try_start_0
    invoke-static {}, Lcom/metamoji/dm/impl/contents/DmLibraryBgImageContentsManager;->getInstance()Lcom/metamoji/dm/impl/contents/DmLibraryBgImageContentsManager;

    move-result-object v0

    .line 318
    const-string v1, "bgimage"

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/dm/impl/contents/DmLibraryBgImageContentsManager;->getContentsFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 319
    const-string v1, "[MMJLbLibraryBgImageManager] read content entityId: %s filePath: %s"

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 320
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 322
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[MMJLbLibraryBgImageManager] :: ERROR read content filePath entityId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public itemMetaData(Ljava/lang/String;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;
    .locals 3

    const-string v0, "[MMJLbLibraryItemManager] itemMetaData read entityId: "

    .line 353
    :try_start_0
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibraryBgImageMetaDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibraryBgImageMetaDataManager;

    move-result-object v1

    .line 354
    invoke-virtual {v1, p1}, Lcom/metamoji/dm/impl/metadata/DmLibraryBgImageMetaDataManager;->getMetaData(Ljava/lang/String;)Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;

    move-result-object v1

    check-cast v1, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;

    .line 355
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

    .line 358
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[MMJLbLibraryItemManager] :: ERROR itemMetaData read entityId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method itemThumbnailPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 373
    :try_start_0
    invoke-static {}, Lcom/metamoji/dm/impl/contents/DmLibraryItemThumbnailsCacheManager;->getInstance()Lcom/metamoji/dm/impl/contents/DmLibraryItemThumbnailsCacheManager;

    move-result-object v0

    .line 374
    const-string v1, "thumbnail"

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/dm/impl/contents/DmLibraryItemThumbnailsCacheManager;->getCacheFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 378
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[MMJLbLibraryItemManager] :: ERROR itemThumbnailPath read entityId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method itemTypeForDic(Ljava/lang/String;)Lcom/metamoji/lb/LbConstants$LbPageType;
    .locals 1

    .line 294
    const-string v0, "user"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    sget-object p1, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_USER:Lcom/metamoji/lb/LbConstants$LbPageType;

    return-object p1

    .line 296
    :cond_0
    const-string v0, "system"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 297
    sget-object p1, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_SYSTEM:Lcom/metamoji/lb/LbConstants$LbPageType;

    return-object p1

    .line 298
    :cond_1
    const-string v0, "download"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 299
    sget-object p1, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_DOWNLOAD:Lcom/metamoji/lb/LbConstants$LbPageType;

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public loadPageDataArray(Z)Ljava/util/List;
    .locals 2
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

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 90
    sget-object v1, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_SYSTEM:Lcom/metamoji/lb/LbConstants$LbPageType;

    invoke-virtual {p0, v1, p1}, Lcom/metamoji/lb/LbLibraryBgImageManager;->loadPageDataArrayWithType(Lcom/metamoji/lb/LbConstants$LbPageType;Z)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method loadPageDataArrayWithType(Lcom/metamoji/lb/LbConstants$LbPageType;Z)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lb/LbConstants$LbPageType;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 100
    invoke-static {}, Lcom/metamoji/dm/impl/contents/DmLibraryBgImageContentsManager;->getInstance()Lcom/metamoji/dm/impl/contents/DmLibraryBgImageContentsManager;

    move-result-object v0

    .line 102
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 103
    invoke-virtual {p0, p1}, Lcom/metamoji/lb/LbLibraryBgImageManager;->createPageData(Lcom/metamoji/lb/LbConstants$LbPageType;)Ljava/util/Map;

    move-result-object v2

    .line 104
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    invoke-virtual {p0, p1}, Lcom/metamoji/lb/LbLibraryBgImageManager;->searchItems(Lcom/metamoji/lb/LbConstants$LbPageType;)Ljava/util/List;

    move-result-object p1

    .line 110
    const-string v3, "partsArray"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 111
    instance-of v3, v2, Ljava/util/List;

    if-eqz v3, :cond_2

    .line 114
    check-cast v2, Ljava/util/List;

    .line 116
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;

    .line 118
    instance-of v4, v3, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;

    if-nez v4, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    check-cast v3, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;

    .line 121
    invoke-virtual {v3}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->isSheet()Z

    move-result v4

    if-eq p2, v4, :cond_1

    goto :goto_0

    .line 123
    :cond_1
    invoke-virtual {p0, v3, v0}, Lcom/metamoji/lb/LbLibraryBgImageManager;->createPartDic(Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;Lcom/metamoji/dm/impl/contents/DmLibraryBgImageContentsManager;)Ljava/util/Map;

    move-result-object v3

    .line 124
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method parseSystemItem(Ljava/lang/String;)Ljava/util/Map;
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

    .line 703
    invoke-static {}, Lcom/metamoji/lb/LbLibraryBgImageManager;->createTempDirectory()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 708
    :cond_0
    new-instance v2, Ljava/io/File;

    const-string v3, "download_lb_bgimage.product"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 709
    invoke-static {p1, v2}, Lcom/metamoji/cm/CmUtils;->copyFileFromAsset(Ljava/lang/String;Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 710
    const-string p1, "[MMJLbLibraryItemManager] archive copy error!"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    return-object v1

    .line 715
    :cond_1
    invoke-static {v2, v0, v1}, Lcom/metamoji/cv/xml/CvZippedXMLConvertUtils;->uncompressDocumentNoCkeckAsync(Ljava/io/File;Ljava/io/File;Ljava/util/Map;)Lcom/metamoji/cv/CvResult$Import;

    move-result-object p1

    .line 716
    sget-object v2, Lcom/metamoji/cv/CvResult$Import;->Success:Lcom/metamoji/cv/CvResult$Import;

    if-eq v2, p1, :cond_2

    return-object v1

    .line 721
    :cond_2
    new-instance p1, Ljava/io/File;

    const-string v2, "index.dat"

    invoke-direct {p1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_3

    .line 723
    const-string p1, "[MMJLbLibraryItemManager] index file not found in zip."

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V

    return-object v1

    .line 729
    :cond_3
    :try_start_0
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 730
    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->readStringFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    .line 731
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 732
    invoke-static {v2}, Lcom/metamoji/cm/CmJson;->createMapFromJson(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p1

    .line 734
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 735
    const-string v3, "jsonDic"

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 736
    const-string p1, "tempDir"

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p1

    .line 739
    const-string v0, "[MMJLbLibraryItemManager] product index file dos\'nt read..."

    invoke-static {p1, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-object v1
.end method

.method registerLibraryItemFromFile(Ljava/io/File;Ljava/io/File;Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 397
    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/lb/LbLibraryBgImageManager;->registerLibraryItemFromFile(Ljava/io/File;Ljava/io/File;Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public registerLibraryItemFromFile(Ljava/io/File;Ljava/io/File;Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;Ljava/lang/String;Z)Z
    .locals 6

    .line 411
    const-string v0, "[MMJLbLibraryBgImageManager] :: ERROR register Content:"

    .line 414
    const-string v1, "com.metamoji.noteanytime.coversheetbgimage001.cover.0"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    const-string v1, "com.metamoji.noteanytime.sheetbgimage001.sheet.0"

    .line 415
    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    .line 422
    :goto_1
    :try_start_0
    invoke-static {}, Lcom/metamoji/dm/impl/contents/DmLibraryBgImageContentsManager;->getInstance()Lcom/metamoji/dm/impl/contents/DmLibraryBgImageContentsManager;

    move-result-object v4

    .line 423
    const-string v5, "bgimage"

    invoke-virtual {v4, p1, p4, v5}, Lcom/metamoji/dm/impl/contents/DmLibraryBgImageContentsManager;->writeContentsDataFromFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_2

    if-nez v1, :cond_2

    .line 477
    :goto_2
    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    .line 478
    invoke-static {p2}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    return v3

    :catchall_0
    move-exception p3

    goto :goto_5

    :catch_0
    move-exception v4

    .line 428
    :try_start_1
    invoke-static {v4, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 434
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/metamoji/dm/impl/contents/DmLibraryBgImageContentsManager;->getInstance()Lcom/metamoji/dm/impl/contents/DmLibraryBgImageContentsManager;

    move-result-object v4

    .line 435
    const-string v5, "bgimagethumb"

    invoke-virtual {v4, p2, p4, v5}, Lcom/metamoji/dm/impl/contents/DmLibraryBgImageContentsManager;->writeContentsDataFromFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v0, :cond_3

    if-nez v1, :cond_3

    goto :goto_2

    :catchall_1
    move-exception p3

    goto :goto_4

    :catch_1
    move-exception v1

    .line 441
    :try_start_3
    invoke-static {v1, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 448
    :cond_3
    :try_start_4
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibraryBgImageMetaDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibraryBgImageMetaDataManager;

    move-result-object v0

    .line 449
    invoke-virtual {p3, p4}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->setEntityId(Ljava/lang/String;)V

    if-eqz p5, :cond_4

    .line 453
    invoke-virtual {p0, p3, p4}, Lcom/metamoji/lb/LbLibraryBgImageManager;->copyMetaData(Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;Ljava/lang/String;)V

    .line 456
    :cond_4
    invoke-virtual {v0, p3}, Lcom/metamoji/dm/impl/metadata/DmLibraryBgImageMetaDataManager;->putMetaData(Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;)Z

    move-result p3

    if-nez p3, :cond_5

    .line 460
    invoke-virtual {p0, p4}, Lcom/metamoji/lb/LbLibraryBgImageManager;->cleanContent(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    .line 477
    :cond_5
    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    .line 478
    invoke-static {p2}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    return v2

    :catchall_2
    move-exception p3

    goto :goto_3

    :catch_2
    move-exception p3

    .line 464
    :try_start_5
    const-string p5, "[MMJLbLibraryBgImageManager] :: ERROR register MetaData: "

    invoke-static {p3, p5}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 466
    invoke-virtual {p0, p4}, Lcom/metamoji/lb/LbLibraryBgImageManager;->cleanContent(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    .line 471
    :goto_3
    :try_start_6
    throw p3

    .line 444
    :goto_4
    throw p3

    .line 430
    :goto_5
    throw p3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception p3

    .line 477
    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    .line 478
    invoke-static {p2}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    .line 479
    throw p3
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

    .line 946
    const-string v0, "result"

    const-string v1, "================================================================================="

    const-string v3, "UTF-8"

    const-string v7, "errorMessage"

    :try_start_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p3, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 947
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 948
    invoke-static {v5}, Lcom/metamoji/cm/CmJson;->createMapFromJson(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v8

    .line 949
    const-string v5, "[LbLibraryItemManager] downloadProduct responce=================================="

    invoke-static {v5}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 950
    invoke-static {v4}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 951
    invoke-static {v1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 954
    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 955
    const-string v9, "message"

    if-eqz v4, :cond_5

    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    goto/16 :goto_1

    .line 965
    :cond_0
    invoke-static {}, Lcom/metamoji/lb/LbDownloadUtil;->login()Ljava/util/Map;

    move-result-object v4

    if-nez v4, :cond_1

    goto/16 :goto_2

    .line 969
    :cond_1
    const-string v5, "error"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 970
    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 972
    invoke-interface {p1, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    .line 977
    :cond_2
    const-string v5, "contents"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 978
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 979
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 980
    invoke-static {v3}, Lcom/metamoji/cm/CmJson;->createMapFromJson(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v3

    .line 981
    const-string v4, "[LbLibraryItemManager] Retry login responce ====================================="

    invoke-static {v4}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 982
    invoke-static {v5}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 983
    invoke-static {v1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 984
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 985
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

    .line 994
    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/lb/LbLibraryBgImageManager;->downloadProductInner(Ljava/util/Map;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/lb/LbDownloadUtil$ILbDownloadUtilProgress;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 986
    :cond_4
    :goto_0
    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 988
    invoke-interface {p1, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    .line 956
    :cond_5
    :goto_1
    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 958
    invoke-interface {p1, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_6
    :goto_2
    return-object p1

    :catch_0
    move-exception v0

    .line 997
    const-string v1, "[LbLibraryItemManager] downloadProduct parse FAILED!!"

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 998
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public searchItemByProductId(Ljava/lang/String;)I
    .locals 2

    .line 1011
    new-instance v0, Lcom/metamoji/dm/impl/metadata/DmLibraryItemSearchCondition;

    invoke-direct {v0}, Lcom/metamoji/dm/impl/metadata/DmLibraryItemSearchCondition;-><init>()V

    .line 1012
    invoke-virtual {v0, p1}, Lcom/metamoji/dm/impl/metadata/DmLibraryItemSearchCondition;->setProductId(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1013
    invoke-virtual {v0, p1}, Lcom/metamoji/dm/impl/metadata/DmLibraryItemSearchCondition;->setIsTrial(I)V

    .line 1014
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibraryBgImageMetaDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibraryBgImageMetaDataManager;

    move-result-object v1

    .line 1015
    invoke-virtual {v1, v0, p1}, Lcom/metamoji/dm/impl/metadata/DmLibraryBgImageMetaDataManager;->searchLibraryItemId(Lcom/metamoji/dm/impl/metadata/DmLibraryItemSearchCondition;I)Ljava/util/ArrayList;

    move-result-object p1

    .line 1016
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method searchItems(Lcom/metamoji/lb/LbConstants$LbPageType;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lb/LbConstants$LbPageType;",
            ")",
            "Ljava/util/List<",
            "Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 212
    :try_start_0
    new-instance v1, Lcom/metamoji/dm/fw/metadata/DmSortCondition;

    invoke-direct {v1}, Lcom/metamoji/dm/fw/metadata/DmSortCondition;-><init>()V

    .line 213
    const-string v2, "entityId"

    invoke-virtual {v1, v2}, Lcom/metamoji/dm/fw/metadata/DmSortCondition;->setSortKey(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 214
    invoke-virtual {v1, v2}, Lcom/metamoji/dm/fw/metadata/DmSortCondition;->setAscending(Z)V

    .line 217
    new-instance v3, Lcom/metamoji/dm/impl/metadata/DmLibraryItemSearchCondition;

    invoke-direct {v3}, Lcom/metamoji/dm/impl/metadata/DmLibraryItemSearchCondition;-><init>()V

    .line 218
    sget-object v4, Lcom/metamoji/lb/LbLibraryBgImageManager$2;->$SwitchMap$com$metamoji$lb$LbConstants$LbPageType:[I

    invoke-virtual {p1}, Lcom/metamoji/lb/LbConstants$LbPageType;->ordinal()I

    move-result p1

    aget p1, v4, p1

    if-eq p1, v2, :cond_0

    return-object v0

    .line 223
    :cond_0
    const-string p1, "system"

    invoke-virtual {v3, p1}, Lcom/metamoji/dm/impl/metadata/DmLibraryItemSearchCondition;->setType(Ljava/lang/String;)V

    .line 224
    new-instance p1, Lcom/metamoji/dm/fw/metadata/DmSortCondition;

    invoke-direct {p1}, Lcom/metamoji/dm/fw/metadata/DmSortCondition;-><init>()V

    .line 225
    const-string v4, "create"

    invoke-virtual {p1, v4}, Lcom/metamoji/dm/fw/metadata/DmSortCondition;->setSortKey(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p1, v2}, Lcom/metamoji/dm/fw/metadata/DmSortCondition;->setAscending(Z)V

    .line 227
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 228
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    invoke-virtual {v3, v2}, Lcom/metamoji/dm/impl/metadata/DmLibraryItemSearchCondition;->setSort(Ljava/util/ArrayList;)V

    .line 238
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibraryBgImageMetaDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibraryBgImageMetaDataManager;

    move-result-object p1

    const/4 v1, 0x0

    .line 239
    invoke-virtual {p1, v3, v1, v0}, Lcom/metamoji/dm/impl/metadata/DmLibraryBgImageMetaDataManager;->searchLibraryItem(Lcom/metamoji/dm/impl/metadata/DmLibraryItemSearchCondition;ILjava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 247
    throw p1

    :catch_0
    move-exception p1

    .line 242
    const-string v1, "[MMJLbLibraryItemManager] :: ERROR searchItems"

    invoke-static {p1, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-object v0
.end method

.method public setupSystemItem(Z)Z
    .locals 14

    if-eqz p1, :cond_0

    .line 639
    invoke-virtual {p0}, Lcom/metamoji/lb/LbLibraryBgImageManager;->cleanupSystemItem()V

    .line 643
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtLocaleUtils;->getCurrentLocale()Lcom/metamoji/nt/NtLocale;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/nt/NtLocaleUtils;->localeStringFromLocale(Lcom/metamoji/nt/NtLocale;)Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x0

    const/4 v2, 0x1

    move v8, v2

    move v9, v7

    :goto_0
    const/4 v2, 0x2

    if-ge v9, v2, :cond_4

    .line 649
    sget-object v2, Lcom/metamoji/lb/LbLibraryBgImageManager;->SYSTEMITEM_FILE_NAME:[Ljava/lang/String;

    aget-object v2, v2, v9

    .line 651
    invoke-virtual {p0, v2}, Lcom/metamoji/lb/LbLibraryBgImageManager;->parseSystemItem(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_1

    move v8, v7

    goto/16 :goto_2

    .line 658
    :cond_1
    const-string v3, "jsonDic"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 659
    const-string v4, "tempDir"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Ljava/io/File;

    .line 662
    :try_start_0
    const-string v2, "p_id"

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Ljava/lang/String;

    .line 664
    const-string v2, "p_type"

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 665
    const-string v4, "sheet"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 668
    const-string v2, "p_parts"

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 669
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_2
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 671
    check-cast v2, Ljava/util/Map;

    .line 672
    const-string v3, "entityId"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    .line 675
    new-instance v3, Ljava/io/File;

    const-string v4, "imageFile"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v3, v10, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v4, v3

    .line 676
    new-instance v3, Ljava/io/File;

    const-string v6, "thumbnailFile"

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v3, v10, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 677
    invoke-virtual {p0, v2, v11, v12, v0}, Lcom/metamoji/lb/LbLibraryBgImageManager;->createLibrarySystemItemMetaData(Ljava/util/Map;Ljava/lang/String;ZLjava/lang/String;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;

    move-result-object v2

    const/4 v6, 0x0

    move-object v1, v4

    move-object v4, v2

    move-object v2, v1

    move-object v1, p0

    .line 678
    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/lb/LbLibraryBgImageManager;->registerLibraryItemFromFile(Ljava/io/File;Ljava/io/File;Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 681
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MMJLbLibyraryBgImageManager] item regist FAILED! entityId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 687
    :cond_3
    invoke-static {v10}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v10}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    .line 688
    throw v0

    :cond_4
    return v8
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

    .line 816
    const-string v0, "keyword"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 817
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 820
    check-cast p1, Ljava/util/Map;

    .line 821
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    .line 824
    const-string p2, "*"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    .line 827
    sget-object p2, Lcom/metamoji/nt/NtLocale;->en:Lcom/metamoji/nt/NtLocale;

    invoke-static {p2}, Lcom/metamoji/nt/NtLocaleUtils;->localeStringFromLocale(Lcom/metamoji/nt/NtLocale;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    :cond_1
    :goto_0
    const/4 p2, 0x0

    if-nez p1, :cond_2

    return-object p2

    .line 833
    :cond_2
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_3

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 834
    :cond_3
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_5

    .line 835
    check-cast p1, Ljava/util/List;

    .line 836
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_4

    return-object p2

    :cond_4
    const/4 v0, 0x0

    .line 837
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 838
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_5

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_5
    return-object p2
.end method

.method public updateItemUseDate(Ljava/lang/String;)V
    .locals 4

    const-string v0, "[MMJLbLibraryBgImageManager] update lastaccess of item : "

    .line 566
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[MMJLbLibraryBgImageManager] update lastaccess of item entityId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 568
    :try_start_0
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibraryBgImageMetaDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibraryBgImageMetaDataManager;

    move-result-object v1

    .line 569
    invoke-virtual {v1, p1}, Lcom/metamoji/dm/impl/metadata/DmLibraryBgImageMetaDataManager;->getMetaData(Ljava/lang/String;)Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;

    move-result-object v2

    check-cast v2, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;

    if-nez v2, :cond_0

    .line 571
    const-string v0, "[MMJLbLibraryBgImageManager] update lastaccess of item : Not Found!"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    return-void

    .line 574
    :cond_0
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 575
    invoke-virtual {v2, v3}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->setUseDate(Ljava/util/Date;)V

    .line 576
    invoke-virtual {v2, v3}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;->setLastAccess(Ljava/util/Date;)V

    .line 577
    invoke-virtual {v1, v2}, Lcom/metamoji/dm/impl/metadata/DmLibraryBgImageMetaDataManager;->putMetaData(Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;)Z

    move-result v1

    .line 578
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

    .line 580
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[MMJLbLibraryBgImageManager] :: ERROR update lastaccess of item entityId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method
