.class public Lcom/metamoji/lb/LbLibraryItemManager;
.super Ljava/lang/Object;
.source "LbLibraryItemManager.java"


# static fields
.field private static final CONTENTS_FILE_TYPE_INDEX:Ljava/lang/String; = "index"

.field private static final CONTENTS_FILE_TYPE_ITEM:Ljava/lang/String; = "item"

.field private static final CONTENTS_TYPE_LIBRARY_ITEM:Ljava/lang/String; = "library_item"

.field private static final DOWNLOAD_TEMP_FILE:Ljava/lang/String; = "download_lb_item.product"

.field private static final ID_INDEX_BOOKMARK:Ljava/lang/String; = "index_bookmark"

.field private static final ID_INDEX_DOWNLOAD:Ljava/lang/String; = "index_download"

.field private static final ID_INDEX_SYSTEM:Ljava/lang/String; = "index_system"

.field private static final ID_INDEX_USER:Ljava/lang/String; = "index_user"

.field public static final META_TYPE_DOWNLOAD:Ljava/lang/String; = "download"

.field public static final META_TYPE_SYSTEM:Ljava/lang/String; = "system"

.field public static final META_TYPE_USER:Ljava/lang/String; = "user"

.field private static final SYSTEMITEM_FILE_MAX:I = 0x1

.field private static final SYSTEMITEM_FILE_NAME:[Ljava/lang/String;

.field private static final THUMBNAIL_FILE_NAME:Ljava/lang/String; = "thumbnail"

.field private static s_sharedInstance:Lcom/metamoji/lb/LbLibraryItemManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 77
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "init/library/com.metamoji.classroom.item.system001.product"

    aput-object v2, v0, v1

    sput-object v0, Lcom/metamoji/lb/LbLibraryItemManager;->SYSTEMITEM_FILE_NAME:[Ljava/lang/String;

    .line 83
    new-instance v0, Lcom/metamoji/lb/LbLibraryItemManager;

    invoke-direct {v0}, Lcom/metamoji/lb/LbLibraryItemManager;-><init>()V

    sput-object v0, Lcom/metamoji/lb/LbLibraryItemManager;->s_sharedInstance:Lcom/metamoji/lb/LbLibraryItemManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private _cleanupItemByType(Ljava/lang/String;)V
    .locals 3

    .line 1706
    new-instance v0, Lcom/metamoji/dm/impl/metadata/DmLibraryItemSearchCondition;

    invoke-direct {v0}, Lcom/metamoji/dm/impl/metadata/DmLibraryItemSearchCondition;-><init>()V

    .line 1707
    invoke-virtual {v0, p1}, Lcom/metamoji/dm/impl/metadata/DmLibraryItemSearchCondition;->setType(Ljava/lang/String;)V

    .line 1708
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 1709
    invoke-virtual {v1, v0, v2}, Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;->searchLibraryItemId(Lcom/metamoji/dm/impl/metadata/DmLibraryItemSearchCondition;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 1710
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[LbLibraryItemManager] cleanupItemByType : "

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

    .line 1713
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1714
    invoke-virtual {p0, v0}, Lcom/metamoji/lb/LbLibraryItemManager;->deleteItem(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static declared-synchronized createTempDirectory()Ljava/io/File;
    .locals 6

    const-string v0, "failed to create temporary directory. : "

    const-class v1, Lcom/metamoji/lb/LbLibraryItemManager;

    monitor-enter v1

    const/4 v2, 0x0

    .line 1272
    :try_start_0
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getTemporaryDataDirectory()Ljava/io/File;

    move-result-object v3

    .line 1274
    const-string v4, "lbItem"

    const-string v5, ""

    invoke-static {v4, v5, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1276
    :try_start_1
    invoke-static {v3}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1279
    :catch_0
    :try_start_2
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1280
    const-string v3, "cannot create temporary directory."

    invoke-static {v3}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1281
    monitor-exit v1

    return-object v2

    .line 1283
    :cond_0
    monitor-exit v1

    return-object v3

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v3

    .line 1285
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

    .line 1286
    monitor-exit v1

    return-object v2

    :goto_0
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method private getIndexData(Lcom/metamoji/lb/LbConstants$LbPageType;)Ljava/util/List;
    .locals 1
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

    .line 888
    invoke-direct {p0, p1}, Lcom/metamoji/lb/LbLibraryItemManager;->getIndexFile(Lcom/metamoji/lb/LbConstants$LbPageType;)Ljava/io/File;

    move-result-object v0

    .line 889
    invoke-direct {p0, v0, p1}, Lcom/metamoji/lb/LbLibraryItemManager;->getIndexDatafromFile(Ljava/io/File;Lcom/metamoji/lb/LbConstants$LbPageType;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private getIndexDatafromFile(Ljava/io/File;Lcom/metamoji/lb/LbConstants$LbPageType;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/metamoji/lb/LbConstants$LbPageType;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 900
    :try_start_0
    invoke-static {p2, p1}, Lcom/metamoji/lb/LbLibraryIndexParser;->parse(Lcom/metamoji/lb/LbConstants$LbPageType;Ljava/io/File;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 905
    const-string p2, "[MMJLbLibraryItemManager] :: ERROR parseIndexData"

    invoke-static {p1, p2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getIndexFile(Lcom/metamoji/lb/LbConstants$LbPageType;)Ljava/io/File;
    .locals 2

    .line 918
    invoke-virtual {p0, p1}, Lcom/metamoji/lb/LbLibraryItemManager;->libraryIndexEntityId(Lcom/metamoji/lb/LbConstants$LbPageType;)Ljava/lang/String;

    move-result-object p1

    .line 919
    invoke-static {}, Lcom/metamoji/dm/impl/contents/DmLibraryItemContentsManager;->getInstance()Lcom/metamoji/dm/impl/contents/DmLibraryItemContentsManager;

    move-result-object v0

    .line 920
    const-string v1, "index"

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/dm/impl/contents/DmLibraryItemContentsManager;->getContentsFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public static getInstance()Lcom/metamoji/lb/LbLibraryItemManager;
    .locals 1

    .line 90
    sget-object v0, Lcom/metamoji/lb/LbLibraryItemManager;->s_sharedInstance:Lcom/metamoji/lb/LbLibraryItemManager;

    return-object v0
.end method

.method private getPageTypes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/lb/LbConstants$LbPageType;",
            ">;"
        }
    .end annotation

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 108
    sget-object v1, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_HISTORY:Lcom/metamoji/lb/LbConstants$LbPageType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    sget-object v1, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_BOOKMARK:Lcom/metamoji/lb/LbConstants$LbPageType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    sget-object v1, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_USER:Lcom/metamoji/lb/LbConstants$LbPageType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    sget-object v1, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_SYSTEM:Lcom/metamoji/lb/LbConstants$LbPageType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    sget-object v1, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_DOWNLOAD:Lcom/metamoji/lb/LbConstants$LbPageType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    sget-object v1, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_STORE:Lcom/metamoji/lb/LbConstants$LbPageType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private handleItemIndexesForLogout()V
    .locals 3

    .line 1754
    :try_start_0
    sget-object v0, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_USER:Lcom/metamoji/lb/LbConstants$LbPageType;

    invoke-virtual {p0, v0}, Lcom/metamoji/lb/LbLibraryItemManager;->libraryIndexEntityId(Lcom/metamoji/lb/LbConstants$LbPageType;)Ljava/lang/String;

    move-result-object v0

    .line 1755
    invoke-static {}, Lcom/metamoji/dm/impl/contents/DmLibraryItemContentsManager;->getInstance()Lcom/metamoji/dm/impl/contents/DmLibraryItemContentsManager;

    move-result-object v1

    .line 1756
    const-string v2, "index"

    invoke-virtual {v1, v0, v2}, Lcom/metamoji/dm/impl/contents/DmLibraryItemContentsManager;->deleteContentsData(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1761
    :catch_0
    const-string v0, "[LbLibraryItemManager] handleItemIndexesForLogout : Error in cleaning index files"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    return-void
.end method

.method private handleUserItemsForLogout()V
    .locals 3

    .line 1735
    new-instance v0, Lcom/metamoji/dm/impl/metadata/DmLibraryItemSearchCondition;

    invoke-direct {v0}, Lcom/metamoji/dm/impl/metadata/DmLibraryItemSearchCondition;-><init>()V

    .line 1736
    const-string v1, "user"

    invoke-virtual {v0, v1}, Lcom/metamoji/dm/impl/metadata/DmLibraryItemSearchCondition;->setType(Ljava/lang/String;)V

    .line 1737
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 1738
    invoke-virtual {v1, v0, v2}, Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;->searchLibraryItemId(Lcom/metamoji/dm/impl/metadata/DmLibraryItemSearchCondition;I)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1740
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1741
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[LbLibraryItemManager] handleItemsForLogout : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " user item(s)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 1743
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1745
    invoke-virtual {p0, v1}, Lcom/metamoji/lb/LbLibraryItemManager;->deleteItem(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method checkThumbnail(Ljava/util/Map;)V
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

    .line 1298
    invoke-static {}, Lcom/metamoji/dm/impl/contents/DmLibraryItemThumbnailsCacheManager;->getInstance()Lcom/metamoji/dm/impl/contents/DmLibraryItemThumbnailsCacheManager;

    move-result-object v0

    .line 1299
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

    .line 1300
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 1301
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "thumbnail"

    invoke-virtual {v0, v2, v3}, Lcom/metamoji/dm/impl/contents/DmLibraryItemThumbnailsCacheManager;->existsCacheData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1303
    :cond_1
    invoke-virtual {p0, v2}, Lcom/metamoji/lb/LbLibraryItemManager;->updateThumbnail(Ljava/lang/String;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method cleanContent(Ljava/lang/String;)V
    .locals 3

    const-string v0, "[MMJLbLibraryItemManager] cleanContent entityId:"

    .line 1254
    :try_start_0
    invoke-static {}, Lcom/metamoji/dm/impl/contents/DmLibraryItemContentsManager;->getInstance()Lcom/metamoji/dm/impl/contents/DmLibraryItemContentsManager;

    move-result-object v1

    .line 1255
    const-string v2, "item"

    invoke-virtual {v1, p1, v2}, Lcom/metamoji/dm/impl/contents/DmLibraryItemContentsManager;->deleteContentsData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1256
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

    .line 1259
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

.method public cleanupDownloadItem()V
    .locals 1

    .line 1723
    const-string v0, "download"

    invoke-direct {p0, v0}, Lcom/metamoji/lb/LbLibraryItemManager;->_cleanupItemByType(Ljava/lang/String;)V

    return-void
.end method

.method public cleanupSystemItem()V
    .locals 1

    .line 1719
    const-string v0, "system"

    invoke-direct {p0, v0}, Lcom/metamoji/lb/LbLibraryItemManager;->_cleanupItemByType(Ljava/lang/String;)V

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

    .line 291
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 292
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

.method copyMetaData(Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;Ljava/lang/String;)V
    .locals 1

    .line 527
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;

    move-result-object v0

    .line 528
    invoke-virtual {v0, p2}, Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;->getMetaData(Ljava/lang/String;)Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;

    move-result-object p2

    check-cast p2, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;

    if-nez p2, :cond_0

    .line 530
    const-string p1, "[MMJLbLibraryItemManager] copyMetaData target item : Not Found!"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    return-void

    .line 535
    :cond_0
    invoke-virtual {p2}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->isBookmarked()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->setBookmarked(Z)V

    .line 537
    invoke-virtual {p2}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->getUseDate()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->setUseDate(Ljava/util/Date;)V

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

    .line 857
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 858
    sget-object v1, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_HISTORY:Lcom/metamoji/lb/LbConstants$LbPageType;

    invoke-virtual {p0, v1}, Lcom/metamoji/lb/LbLibraryItemManager;->createPageData(Lcom/metamoji/lb/LbConstants$LbPageType;)Ljava/util/Map;

    move-result-object v1

    .line 859
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 863
    const-string v2, "partsArray"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 864
    sget-object v2, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_HISTORY:Lcom/metamoji/lb/LbConstants$LbPageType;

    invoke-virtual {p0, v2}, Lcom/metamoji/lb/LbLibraryItemManager;->searchItems(Lcom/metamoji/lb/LbConstants$LbPageType;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public createLibraryDownloadItemMetaData(Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;
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
            "Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;"
        }
    .end annotation

    .line 1200
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;

    move-result-object v0

    .line 1201
    invoke-virtual {v0}, Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;->newMutableDataObject()Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;

    move-result-object v0

    check-cast v0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;

    .line 1203
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 1204
    const-string v2, "createDate"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 1205
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    invoke-static {v2}, Lcom/metamoji/cm/TimeUtils;->isoStringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 1206
    :goto_0
    const-string v4, "updateDate"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 1207
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    invoke-static {v4}, Lcom/metamoji/cm/TimeUtils;->isoStringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v2

    .line 1211
    :goto_1
    const-string v5, "entityId"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1213
    const-string v7, "p_partsArray"

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 1214
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 1216
    check-cast v8, Ljava/util/Map;

    .line 1218
    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 1219
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1220
    const-string v5, "title"

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_2

    :cond_3
    move-object v5, v3

    :goto_2
    if-nez v5, :cond_4

    .line 1226
    invoke-virtual {p0, p1, p4}, Lcom/metamoji/lb/LbLibraryItemManager;->titleStringFromJsonPartDic(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1229
    :cond_4
    const-string p1, "download"

    invoke-virtual {v0, p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->setType(Ljava/lang/String;)V

    .line 1230
    invoke-virtual {v0, v5}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->setName(Ljava/lang/String;)V

    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    move-object v2, v1

    .line 1231
    :goto_3
    invoke-virtual {v0, v2}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->setCreate(Ljava/util/Date;)V

    .line 1232
    invoke-virtual {v0, v4}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->setUpdate(Ljava/util/Date;)V

    .line 1233
    invoke-virtual {v0, v1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->setLastAccess(Ljava/util/Date;)V

    .line 1234
    invoke-virtual {v0, v3}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->setUseDate(Ljava/util/Date;)V

    const/4 p1, 0x0

    .line 1235
    invoke-virtual {v0, p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->setBookmarked(Z)V

    .line 1236
    invoke-virtual {v0, v1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->setDownload(Ljava/util/Date;)V

    .line 1237
    const-string p1, "p_id"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->setProductId(Ljava/lang/String;)V

    .line 1238
    const-string p1, "p_title"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->setProductName(Ljava/lang/String;)V

    .line 1239
    const-string p1, "p_creatorID"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->setCreatorId(Ljava/lang/String;)V

    .line 1240
    const-string p1, "p_creatorName"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->setCreatorName(Ljava/lang/String;)V

    .line 1241
    const-string p1, "p_isFree"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string p2, "0"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->setIsFree(Z)V

    .line 1242
    invoke-virtual {v0, p3}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->setIsTrial(Z)V

    return-object v0
.end method

.method createLibraryMyItemMetaData()Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;
    .locals 3

    .line 1107
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;

    move-result-object v0

    .line 1108
    invoke-virtual {v0}, Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;->newMutableDataObject()Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;

    move-result-object v0

    check-cast v0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;

    .line 1110
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 1111
    const-string v2, "user"

    invoke-virtual {v0, v2}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->setType(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 1112
    invoke-virtual {v0, v2}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->setName(Ljava/lang/String;)V

    .line 1113
    invoke-virtual {v0, v1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->setCreate(Ljava/util/Date;)V

    .line 1114
    invoke-virtual {v0, v1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->setUpdate(Ljava/util/Date;)V

    .line 1115
    invoke-virtual {v0, v1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->setLastAccess(Ljava/util/Date;)V

    .line 1116
    invoke-virtual {v0, v2}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->setUseDate(Ljava/util/Date;)V

    const/4 v1, 0x0

    .line 1117
    invoke-virtual {v0, v1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->setBookmarked(Z)V

    .line 1118
    invoke-virtual {v0, v2}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->setDownload(Ljava/util/Date;)V

    .line 1119
    invoke-virtual {v0, v2}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->setProductId(Ljava/lang/String;)V

    .line 1120
    invoke-virtual {v0, v2}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->setProductName(Ljava/lang/String;)V

    .line 1121
    invoke-virtual {v0, v2}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->setCreatorId(Ljava/lang/String;)V

    .line 1122
    invoke-virtual {v0, v2}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->setCreatorName(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 1123
    invoke-virtual {v0, v2}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->setIsFree(Z)V

    .line 1124
    invoke-virtual {v0, v1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->setIsTrial(Z)V

    return-object v0
.end method

.method createLibrarySystemItemMetaData(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;
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
            "Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;"
        }
    .end annotation

    .line 1137
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;

    move-result-object v0

    .line 1138
    invoke-virtual {v0}, Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;->newMutableDataObject()Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;

    move-result-object v0

    check-cast v0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;

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
    invoke-virtual {p0, p1, p3}, Lcom/metamoji/lb/LbLibraryItemManager;->titleStringFromJsonPartDic(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1147
    const-string p3, "system"

    invoke-virtual {v0, p3}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->setType(Ljava/lang/String;)V

    .line 1148
    invoke-virtual {v0, p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->setName(Ljava/lang/String;)V

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move-object v2, v1

    .line 1149
    :goto_2
    invoke-virtual {v0, v2}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->setCreate(Ljava/util/Date;)V

    .line 1150
    invoke-virtual {v0, v4}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->setUpdate(Ljava/util/Date;)V

    .line 1151
    invoke-virtual {v0, v1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->setLastAccess(Ljava/util/Date;)V

    .line 1152
    invoke-virtual {v0, v3}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->setUseDate(Ljava/util/Date;)V

    const/4 p1, 0x0

    .line 1153
    invoke-virtual {v0, p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->setBookmarked(Z)V

    .line 1154
    invoke-virtual {v0, v3}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->setDownload(Ljava/util/Date;)V

    .line 1155
    invoke-virtual {v0, p2}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->setProductId(Ljava/lang/String;)V

    .line 1156
    invoke-virtual {v0, v3}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->setProductName(Ljava/lang/String;)V

    .line 1157
    invoke-virtual {v0, v3}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->setCreatorId(Ljava/lang/String;)V

    .line 1158
    invoke-virtual {v0, v3}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->setCreatorName(Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 1159
    invoke-virtual {v0, p2}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->setIsFree(Z)V

    .line 1160
    invoke-virtual {v0, p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->setIsTrial(Z)V

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

    .line 394
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 395
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 396
    const-string v2, "type"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    const-string p1, "partsArray"

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public createPartDic(Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1057
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/lb/LbLibraryItemManager;->createPartDic(Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public createPartDic(Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;",
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

    .line 1062
    invoke-virtual {p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->getEntityId()Ljava/lang/String;

    move-result-object p2

    .line 1063
    invoke-static {}, Lcom/metamoji/dm/impl/contents/DmLibraryItemThumbnailsCacheManager;->getInstance()Lcom/metamoji/dm/impl/contents/DmLibraryItemThumbnailsCacheManager;

    move-result-object v0

    .line 1064
    const-string v1, "thumbnail"

    invoke-virtual {v0, p2, v1}, Lcom/metamoji/dm/impl/contents/DmLibraryItemThumbnailsCacheManager;->existsCacheData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1066
    invoke-virtual {p0, p2}, Lcom/metamoji/lb/LbLibraryItemManager;->updateThumbnail(Ljava/lang/String;)Z

    .line 1069
    :cond_0
    invoke-virtual {p0, p2}, Lcom/metamoji/lb/LbLibraryItemManager;->itemThumbnailPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1072
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1073
    const-string v2, "entityId"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1074
    invoke-virtual {p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->getType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/metamoji/lb/LbLibraryItemManager;->itemTypeForDic(Ljava/lang/String;)Lcom/metamoji/lb/LbConstants$LbPageType;

    move-result-object p2

    const-string v2, "type"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1075
    const-string p2, "imagePath"

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1076
    invoke-virtual {p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->isTrial()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v0, "isTrial"

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1077
    invoke-virtual {p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->getName()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 1078
    const-string p2, "title"

    invoke-virtual {p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1079
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->getProductName()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 1080
    const-string p2, "category"

    invoke-virtual {p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->getProductName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
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

    .line 874
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 875
    const-string v1, "type"

    sget-object v2, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_STORE:Lcom/metamoji/lb/LbConstants$LbPageType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 876
    const-string v1, "g_pageStatus"

    sget-object v2, Lcom/metamoji/lb/LbConstants$StorePageStatus;->SERVER_MAINTENANCE_CHECKING:Lcom/metamoji/lb/LbConstants$StorePageStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public deleteItem(Ljava/lang/String;)V
    .locals 5

    const-string v0, "[MMJLbLibraryItemManager] delete item thumbnail : "

    const-string v1, "[MMJLbLibraryItemManager] delete item content : "

    const-string v2, "[MMJLbLibraryItemManager] delete item metadata : "

    .line 705
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[MMJLbLibraryItemManager] delete item entityId: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 708
    :try_start_0
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;

    move-result-object v3

    .line 709
    invoke-virtual {v3, p1}, Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;->deleteMetaData(Ljava/lang/String;)Z

    move-result v3

    .line 710
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    if-nez v3, :cond_0

    return-void

    .line 714
    :cond_0
    invoke-static {}, Lcom/metamoji/dm/impl/contents/DmLibraryItemContentsManager;->getInstance()Lcom/metamoji/dm/impl/contents/DmLibraryItemContentsManager;

    move-result-object v2

    .line 715
    const-string v4, "item"

    invoke-virtual {v2, p1, v4}, Lcom/metamoji/dm/impl/contents/DmLibraryItemContentsManager;->deleteContentsData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 716
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 719
    invoke-static {}, Lcom/metamoji/dm/impl/contents/DmLibraryItemThumbnailsCacheManager;->getInstance()Lcom/metamoji/dm/impl/contents/DmLibraryItemThumbnailsCacheManager;

    move-result-object v1

    .line 720
    const-string v2, "thumbnail"

    invoke-virtual {v1, p1, v2}, Lcom/metamoji/dm/impl/contents/DmLibraryItemThumbnailsCacheManager;->deleteCacheData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 721
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

    .line 723
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[MMJLbLibraryItemManager] :: ERROR delete item entityId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public deleteMyItem(Ljava/lang/String;)V
    .locals 2

    .line 690
    invoke-static {}, Lcom/metamoji/Config;->isLibraryDm3Enabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 691
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object v0

    .line 692
    invoke-virtual {v0, p1}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->deleteDocument(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;

    return-void

    .line 694
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/lb/LbLibraryItemManager;->deleteItem(Ljava/lang/String;)V

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

    .line 1561
    invoke-static {}, Lcom/metamoji/lb/LbLibraryItemManager;->createTempDirectory()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1565
    :cond_0
    const-string v1, "download_lb_item.product"

    sget-object v2, Lcom/metamoji/cm/CmUtils$CreationOption;->REMOVE_EXISTING:Lcom/metamoji/cm/CmUtils$CreationOption;

    invoke-static {v0, v1, v2}, Lcom/metamoji/cm/CmUtils;->safeCreateFile(Ljava/io/File;Ljava/lang/String;Lcom/metamoji/cm/CmUtils$CreationOption;)Ljava/io/File;

    move-result-object v5

    .line 1566
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

    .line 1569
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1570
    const-string v1, "tempDir"

    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    .line 1572
    invoke-virtual/range {v3 .. v8}, Lcom/metamoji/lb/LbLibraryItemManager;->downloadProductInner(Ljava/util/Map;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/lb/LbDownloadUtil$ILbDownloadUtilProgress;)Ljava/util/Map;

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

    .line 1581
    invoke-static {p4, p2, p5}, Lcom/metamoji/lb/LbDownloadUtil;->downloadWithProgressDialog(Ljava/lang/String;Ljava/io/File;Lcom/metamoji/lb/LbDownloadUtil$ILbDownloadUtilProgress;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move-object v2, p0

    move-object v3, p1

    goto :goto_0

    .line 1585
    :cond_1
    const-string v1, "error"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1586
    const-string p2, "errorMessage"

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    if-eqz p3, :cond_0

    .line 1588
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    .line 1593
    :cond_2
    const-string v1, "contents"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, [B

    .line 1594
    const-string v1, "headers"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/Headers;

    .line 1598
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

    .line 1599
    invoke-virtual/range {v2 .. v8}, Lcom/metamoji/lb/LbLibraryItemManager;->retryLogin(Ljava/util/Map;Ljava/io/File;[BLjava/lang/String;Ljava/lang/String;Lcom/metamoji/lb/LbDownloadUtil$ILbDownloadUtilProgress;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    :cond_3
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    move-object v8, p5

    .line 1603
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance p2, Lcom/metamoji/lb/LbLibraryItemManager$2;

    invoke-direct {p2, p0, v8}, Lcom/metamoji/lb/LbLibraryItemManager$2;-><init>(Lcom/metamoji/lb/LbLibraryItemManager;Lcom/metamoji/lb/LbDownloadUtil$ILbDownloadUtilProgress;)V

    invoke-virtual {p1, p2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 1611
    const-string p1, "tempDir"

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    const/4 p2, 0x0

    .line 1612
    invoke-static {v4, p1, p2}, Lcom/metamoji/cv/xml/CvZippedXMLConvertUtils;->uncompressDocumentNoCkeckAsync(Ljava/io/File;Ljava/io/File;Ljava/util/Map;)Lcom/metamoji/cv/CvResult$Import;

    move-result-object p2

    .line 1613
    sget-object p3, Lcom/metamoji/cv/CvResult$Import;->Success:Lcom/metamoji/cv/CvResult$Import;

    if-eq p3, p2, :cond_4

    :goto_0
    return-object v3

    .line 1618
    :cond_4
    new-instance p2, Ljava/io/File;

    const-string p3, "index.dat"

    invoke-direct {p2, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_5

    .line 1620
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "[LbLibraryItemManager] product index file not found in zip. productId:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V

    return-object v3

    .line 1626
    :cond_5
    :try_start_0
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1627
    invoke-static {p2}, Lcom/metamoji/cm/CmUtils;->readStringFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    .line 1628
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1629
    invoke-static {p2}, Lcom/metamoji/cm/CmJson;->createMapFromJson(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p1

    .line 1630
    const-string p2, "jsonDic"

    invoke-interface {v3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 1632
    const-string p2, "[LbLibraryItemManager] product index file dos\'nt read..."

    invoke-static {p1, p2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-object v3
.end method

.method public existsItem(Ljava/lang/String;)Z
    .locals 0

    .line 627
    invoke-virtual {p0, p1}, Lcom/metamoji/lb/LbLibraryItemManager;->getLibraryItemFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 631
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    return p1
.end method

.method public getLibraryItem(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/lb/LbConstants$LbPageType;)Ljava/io/File;
    .locals 1

    .line 558
    :try_start_0
    sget-object v0, Lcom/metamoji/lb/LbLibraryItemManager$3;->$SwitchMap$com$metamoji$lb$LbConstants$LbPageType:[I

    invoke-virtual {p3}, Lcom/metamoji/lb/LbConstants$LbPageType;->ordinal()I

    move-result p3

    aget p3, v0, p3

    const/4 v0, 0x3

    if-eq p3, v0, :cond_0

    const/4 v0, 0x7

    if-eq p3, v0, :cond_0

    .line 568
    invoke-virtual {p0, p2}, Lcom/metamoji/lb/LbLibraryItemManager;->getLibraryItemFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1

    .line 561
    :cond_0
    invoke-static {}, Lcom/metamoji/Config;->isLibraryDm3Enabled()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 562
    invoke-static {p1, p2}, Lcom/metamoji/lb/LbShareUtils;->getBody(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1

    .line 564
    :cond_1
    invoke-virtual {p0, p2}, Lcom/metamoji/lb/LbLibraryItemManager;->getLibraryItemFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getLibraryItemFile(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 608
    :try_start_0
    invoke-static {}, Lcom/metamoji/dm/impl/contents/DmLibraryItemContentsManager;->getInstance()Lcom/metamoji/dm/impl/contents/DmLibraryItemContentsManager;

    move-result-object v0

    .line 609
    const-string v1, "item"

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/dm/impl/contents/DmLibraryItemContentsManager;->getContentsFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 610
    const-string v1, "[MMJLbLibraryItemManager] read content entityId: %s filePath: %s"

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 611
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 613
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[MMJLbLibraryItemManager] :: ERROR read content filePath entityId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method getThumbnail(Ljava/io/File;)Lcom/metamoji/cm/Blob;
    .locals 4

    .line 1401
    const-string v0, "thumbnail.jpg"

    const/4 v1, 0x0

    .line 1404
    :try_start_0
    invoke-static {}, Lcom/metamoji/lb/LbLibraryItemManager;->createTempDirectory()Ljava/io/File;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_0

    .line 1429
    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    return-object v1

    .line 1410
    :cond_0
    :try_start_1
    invoke-static {p1, v2, v1}, Lcom/metamoji/cv/xml/CvZippedXMLConvertUtils;->uncompressDocument(Ljava/io/File;Ljava/io/File;Ljava/util/Map;)Lcom/metamoji/cv/CvResult$Import;

    move-result-object p1

    .line 1411
    sget-object v3, Lcom/metamoji/cv/CvResult$Import;->Success:Lcom/metamoji/cv/CvResult$Import;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v3, p1, :cond_1

    .line 1429
    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    return-object v1

    .line 1416
    :cond_1
    :try_start_2
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1418
    const-string p1, "[MMJLbLibraryItemManager]thumbnail file not found in zip."

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1429
    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    return-object v1

    .line 1423
    :cond_2
    :try_start_3
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1424
    new-instance v0, Lcom/metamoji/cm/Blob;

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->loadFileInBuffer(Ljava/io/File;)[B

    move-result-object p1

    invoke-direct {v0, p1, v1}, Lcom/metamoji/cm/Blob;-><init>([BLjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1429
    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    return-object v0

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    .line 1430
    throw p1
.end method

.method public getThumbnailPath(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/lb/LbConstants$LbPageType;)Ljava/lang/String;
    .locals 1

    .line 581
    :try_start_0
    sget-object v0, Lcom/metamoji/lb/LbLibraryItemManager$3;->$SwitchMap$com$metamoji$lb$LbConstants$LbPageType:[I

    invoke-virtual {p3}, Lcom/metamoji/lb/LbConstants$LbPageType;->ordinal()I

    move-result p3

    aget p3, v0, p3

    const/4 v0, 0x3

    if-eq p3, v0, :cond_0

    const/4 v0, 0x7

    if-eq p3, v0, :cond_0

    .line 591
    invoke-virtual {p0, p2}, Lcom/metamoji/lb/LbLibraryItemManager;->itemThumbnailPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 584
    :cond_0
    invoke-static {}, Lcom/metamoji/Config;->isLibraryDm3Enabled()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 585
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/lb/LbLibraryItemManager;->itemThumbnailPathV3(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 587
    :cond_1
    invoke-virtual {p0, p2}, Lcom/metamoji/lb/LbLibraryItemManager;->itemThumbnailPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public handleItemsForLogout()V
    .locals 0

    .line 1728
    invoke-direct {p0}, Lcom/metamoji/lb/LbLibraryItemManager;->handleUserItemsForLogout()V

    .line 1729
    invoke-direct {p0}, Lcom/metamoji/lb/LbLibraryItemManager;->handleItemIndexesForLogout()V

    return-void
.end method

.method public isSharedDriveData(Lcom/metamoji/lb/LbConstants$LbPageType;)Z
    .locals 1

    .line 544
    sget-object v0, Lcom/metamoji/lb/LbLibraryItemManager$3;->$SwitchMap$com$metamoji$lb$LbConstants$LbPageType:[I

    invoke-virtual {p1}, Lcom/metamoji/lb/LbConstants$LbPageType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 547
    :cond_0
    invoke-static {}, Lcom/metamoji/Config;->isLibraryDm3Enabled()Z

    move-result p1

    return p1
.end method

.method public itemMetaData(Ljava/lang/String;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;
    .locals 3

    const-string v0, "[MMJLbLibraryItemManager] itemMetaData read entityId: "

    .line 642
    :try_start_0
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;

    move-result-object v1

    .line 643
    invoke-virtual {v1, p1}, Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;->getMetaData(Ljava/lang/String;)Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;

    move-result-object v1

    check-cast v1, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;

    .line 644
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

    .line 647
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

    .line 661
    :try_start_0
    invoke-static {}, Lcom/metamoji/dm/impl/contents/DmLibraryItemThumbnailsCacheManager;->getInstance()Lcom/metamoji/dm/impl/contents/DmLibraryItemThumbnailsCacheManager;

    move-result-object v0

    .line 662
    const-string v1, "thumbnail"

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/dm/impl/contents/DmLibraryItemThumbnailsCacheManager;->getCacheFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 666
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

.method itemThumbnailPathV3(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 677
    invoke-static {p1}, Lcom/metamoji/dvm/DvmUtil;->sdDocumentManager(Ljava/lang/String;)Lcom/metamoji/sd/SdDriveDocumentManager;

    move-result-object p1

    .line 678
    invoke-virtual {p1, p2}, Lcom/metamoji/sd/SdDriveDocumentManager;->getDocumentIconImagePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 681
    invoke-virtual {p1, p2}, Lcom/metamoji/sd/SdDriveDocumentManager;->getDocumentThumbnailCachePathWithDocId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method itemTypeForDic(Ljava/lang/String;)Lcom/metamoji/lb/LbConstants$LbPageType;
    .locals 1

    .line 1090
    const-string v0, "user"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1091
    sget-object p1, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_USER:Lcom/metamoji/lb/LbConstants$LbPageType;

    return-object p1

    .line 1092
    :cond_0
    const-string v0, "system"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1093
    sget-object p1, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_SYSTEM:Lcom/metamoji/lb/LbConstants$LbPageType;

    return-object p1

    .line 1094
    :cond_1
    const-string v0, "download"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1095
    sget-object p1, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_DOWNLOAD:Lcom/metamoji/lb/LbConstants$LbPageType;

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method libraryIndexEntityId(Lcom/metamoji/lb/LbConstants$LbPageType;)Ljava/lang/String;
    .locals 1

    .line 159
    sget-object v0, Lcom/metamoji/lb/LbLibraryItemManager$3;->$SwitchMap$com$metamoji$lb$LbConstants$LbPageType:[I

    invoke-virtual {p1}, Lcom/metamoji/lb/LbConstants$LbPageType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 167
    :cond_0
    const-string p1, "index_download"

    return-object p1

    .line 165
    :cond_1
    const-string p1, "index_system"

    return-object p1

    .line 161
    :cond_2
    const-string p1, "index_bookmark"

    return-object p1

    .line 163
    :cond_3
    const-string p1, "index_user"

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

    .line 124
    invoke-direct {p0}, Lcom/metamoji/lb/LbLibraryItemManager;->getPageTypes()Ljava/util/List;

    move-result-object v0

    .line 126
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 127
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/lb/LbConstants$LbPageType;

    .line 128
    sget-object v3, Lcom/metamoji/lb/LbLibraryItemManager$3;->$SwitchMap$com$metamoji$lb$LbConstants$LbPageType:[I

    invoke-virtual {v2}, Lcom/metamoji/lb/LbConstants$LbPageType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    .line 145
    invoke-virtual {p0, v2}, Lcom/metamoji/lb/LbLibraryItemManager;->loadPageDataArrayWithType(Lcom/metamoji/lb/LbConstants$LbPageType;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 136
    :cond_1
    invoke-static {}, Lcom/metamoji/Config;->isLibraryDm3Enabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 137
    invoke-static {}, Lcom/metamoji/lb/LbShareItem;->getInstance()Lcom/metamoji/lb/LbShareItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/lb/LbShareItem;->createMyPageDataArray()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 139
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 141
    :cond_2
    invoke-virtual {p0, v2}, Lcom/metamoji/lb/LbLibraryItemManager;->loadPageDataArrayWithType(Lcom/metamoji/lb/LbConstants$LbPageType;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 133
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/lb/LbLibraryItemManager;->createStoreInitPageData()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 130
    :cond_4
    invoke-virtual {p0}, Lcom/metamoji/lb/LbLibraryItemManager;->createHistoryPageDataArray()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_5
    return-object v1
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

    const-string v0, "[MMJLbLibraryItemManager] LibraryIndex : entityId="

    .line 182
    invoke-virtual {p0, p1}, Lcom/metamoji/lb/LbLibraryItemManager;->libraryIndexEntityId(Lcom/metamoji/lb/LbConstants$LbPageType;)Ljava/lang/String;

    move-result-object v1

    .line 183
    invoke-static {}, Lcom/metamoji/dm/impl/contents/DmLibraryItemContentsManager;->getInstance()Lcom/metamoji/dm/impl/contents/DmLibraryItemContentsManager;

    move-result-object v2

    .line 184
    const-string v3, "index"

    invoke-virtual {v2, v1, v3}, Lcom/metamoji/dm/impl/contents/DmLibraryItemContentsManager;->existsContentsData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 185
    invoke-virtual {v2, v1, v3}, Lcom/metamoji/dm/impl/contents/DmLibraryItemContentsManager;->getContentsFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 188
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

    .line 189
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/metamoji/lb/LbLibraryIndexParser;->parse(Lcom/metamoji/lb/LbConstants$LbPageType;Ljava/io/File;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 192
    const-string v1, "[MMJLbLibraryItemManager] :: ERROR parseIndexData"

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_0
    move-object v0, v5

    :goto_0
    if-nez v0, :cond_1

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 200
    invoke-virtual {p0, p1}, Lcom/metamoji/lb/LbLibraryItemManager;->createPageData(Lcom/metamoji/lb/LbConstants$LbPageType;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    :cond_1
    invoke-virtual {p0, p1}, Lcom/metamoji/lb/LbLibraryItemManager;->searchItems(Lcom/metamoji/lb/LbConstants$LbPageType;)Ljava/util/List;

    move-result-object v1

    .line 208
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

    .line 211
    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 212
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v6

    :goto_1
    if-ltz v7, :cond_2

    .line 214
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    .line 215
    const-string v9, "entityId"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {p0, v8, v1}, Lcom/metamoji/lb/LbLibraryItemManager;->contentWithEntityId(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 218
    invoke-interface {v4, v7, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 220
    invoke-interface {v1, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 224
    :cond_3
    invoke-interface {v4, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v3, v6

    :goto_2
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 232
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 234
    check-cast v2, Ljava/util/Map;

    .line 238
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 240
    check-cast v8, Ljava/util/Map;

    .line 243
    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 244
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    const v10, 0x7fffffff

    if-ge v9, v10, :cond_5

    goto :goto_4

    :cond_6
    move-object v8, v5

    :goto_4
    if-nez v8, :cond_7

    .line 252
    invoke-virtual {p0, p1}, Lcom/metamoji/lb/LbLibraryItemManager;->createPageData(Lcom/metamoji/lb/LbConstants$LbPageType;)Ljava/util/Map;

    move-result-object v4

    .line 253
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Ljava/util/List;

    .line 260
    :cond_7
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    if-eqz v3, :cond_b

    .line 266
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v6

    :goto_5
    if-ltz v1, :cond_a

    .line 268
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 270
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 271
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_9

    .line 272
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_9
    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    .line 276
    :cond_a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_b

    .line 277
    invoke-virtual {p0, p1}, Lcom/metamoji/lb/LbLibraryItemManager;->createPageData(Lcom/metamoji/lb/LbConstants$LbPageType;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    return-object v0
.end method

.method public migration()Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1771
    invoke-static {}, Lcom/metamoji/Config;->isLibraryDm3Enabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 1775
    :cond_0
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;

    move-result-object v1

    .line 1778
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1781
    sget-object v4, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_USER:Lcom/metamoji/lb/LbConstants$LbPageType;

    invoke-virtual {v0, v4}, Lcom/metamoji/lb/LbLibraryItemManager;->loadPageDataArrayWithType(Lcom/metamoji/lb/LbConstants$LbPageType;)Ljava/util/List;

    move-result-object v4

    .line 1784
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 1785
    const-string v6, "partsArray"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_1

    .line 1786
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_1

    .line 1787
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 1788
    const-string v7, "entityId"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1789
    const-string v9, "title"

    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v12, v6

    check-cast v12, Ljava/lang/String;

    if-eqz v8, :cond_2

    .line 1792
    invoke-virtual {v0, v8}, Lcom/metamoji/lb/LbLibraryItemManager;->getLibraryItemFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 1795
    invoke-static {v8}, Lcom/metamoji/lb/LbPartsUtils;->getDocumentIdFromEntityId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3

    .line 1798
    invoke-virtual {v1, v8}, Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;->getMetaData(Ljava/lang/String;)Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;

    move-result-object v6

    check-cast v6, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;

    .line 1799
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 1800
    invoke-interface {v10, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1801
    const-string v7, "create"

    invoke-virtual {v6}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->getCreate()Ljava/util/Date;

    move-result-object v8

    invoke-interface {v10, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1802
    const-string v7, "update"

    invoke-virtual {v6}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->getUpdate()Ljava/util/Date;

    move-result-object v6

    invoke-interface {v10, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v16, v10

    .line 1804
    invoke-virtual {v0, v9}, Lcom/metamoji/lb/LbLibraryItemManager;->getThumbnail(Ljava/io/File;)Lcom/metamoji/cm/Blob;

    move-result-object v10

    invoke-static {}, Lcom/metamoji/lb/LbShareItem;->dataModelType()Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Lcom/metamoji/lb/LbShareItem;->dataModelVer()I

    move-result v14

    const/4 v15, 0x1

    const/4 v11, 0x0

    invoke-static/range {v9 .. v16}, Lcom/metamoji/lb/LbShareUtils;->importShareLibrary(Ljava/io/File;Lcom/metamoji/cm/Blob;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/util/Map;)Ljava/lang/String;

    move-result-object v6

    :cond_3
    if-eqz v6, :cond_2

    .line 1809
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1820
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 1823
    invoke-static {}, Lcom/metamoji/lb/LbShareItem;->indexMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/metamoji/lb/LbShareUtils;->getShareLibraryDocumentId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    .line 1824
    invoke-static {}, Lcom/metamoji/lb/LbShareItem;->getInstance()Lcom/metamoji/lb/LbShareItem;

    move-result-object v1

    .line 1825
    invoke-virtual {v1, v2, v3}, Lcom/metamoji/lb/LbShareItem;->getShareParts(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 1826
    invoke-virtual {v1, v2, v4}, Lcom/metamoji/lb/LbShareItem;->saveIndexWithPartsArray(Ljava/lang/String;Ljava/util/List;)Z

    :cond_5
    return-object v3
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

    .line 829
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;

    move-result-object v0

    .line 830
    invoke-virtual {v0, p1}, Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;->getMetaData(Ljava/lang/String;)Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;

    move-result-object p1

    check-cast p1, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 832
    const-string p1, "[MMJLbLibraryItemManager] needUpdate check item : Not Found!"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    return v0

    .line 837
    :cond_0
    const-string v1, "updateDate"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 838
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

    .line 839
    invoke-virtual {p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->getUpdate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p2

    if-eqz p2, :cond_2

    return v0

    .line 844
    :cond_2
    invoke-virtual {p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->isTrial()Z

    move-result p1

    if-eqz p1, :cond_3

    if-nez p3, :cond_3

    return v0

    :cond_3
    const/4 p1, 0x0

    return p1
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

    .line 1502
    invoke-static {}, Lcom/metamoji/lb/LbLibraryItemManager;->createTempDirectory()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1507
    :cond_0
    new-instance v2, Ljava/io/File;

    const-string v3, "download_lb_item.product"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1508
    invoke-static {p1, v2}, Lcom/metamoji/cm/CmUtils;->copyFileFromAsset(Ljava/lang/String;Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1509
    const-string p1, "[MMJLbLibraryItemManager] archive copy error!"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    return-object v1

    .line 1514
    :cond_1
    invoke-static {v2, v0, v1}, Lcom/metamoji/cv/xml/CvZippedXMLConvertUtils;->uncompressDocumentNoCkeckAsync(Ljava/io/File;Ljava/io/File;Ljava/util/Map;)Lcom/metamoji/cv/CvResult$Import;

    move-result-object p1

    .line 1515
    sget-object v2, Lcom/metamoji/cv/CvResult$Import;->Success:Lcom/metamoji/cv/CvResult$Import;

    if-eq v2, p1, :cond_2

    return-object v1

    .line 1520
    :cond_2
    new-instance p1, Ljava/io/File;

    const-string v2, "index.dat"

    invoke-direct {p1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_3

    .line 1522
    const-string p1, "[MMJLbLibraryItemManager] index file not found in zip."

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V

    return-object v1

    .line 1528
    :cond_3
    :try_start_0
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1529
    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->readStringFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    .line 1530
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1531
    invoke-static {v2}, Lcom/metamoji/cm/CmJson;->createMapFromJson(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p1

    .line 1533
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1534
    const-string v3, "jsonDic"

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1535
    const-string p1, "tempDir"

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p1

    .line 1538
    const-string v0, "[MMJLbLibraryItemManager] product index file dos\'nt read..."

    invoke-static {p1, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-object v1
.end method

.method registerLibraryItemFromFile(Ljava/io/File;Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 451
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/metamoji/lb/LbLibraryItemManager;->registerLibraryItemFromFile(Ljava/io/File;Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public registerLibraryItemFromFile(Ljava/io/File;Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;Ljava/lang/String;Z)Z
    .locals 3

    const/4 v0, 0x0

    .line 467
    :try_start_0
    invoke-static {}, Lcom/metamoji/dm/impl/contents/DmLibraryItemContentsManager;->getInstance()Lcom/metamoji/dm/impl/contents/DmLibraryItemContentsManager;

    move-result-object v1

    .line 468
    const-string v2, "item"

    invoke-virtual {v1, p1, p3, v2}, Lcom/metamoji/dm/impl/contents/DmLibraryItemContentsManager;->writeContentsDataFromFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    .line 515
    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    return v0

    .line 483
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;

    move-result-object v1

    .line 484
    invoke-virtual {p2, p3}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->setEntityId(Ljava/lang/String;)V

    if-eqz p4, :cond_1

    .line 488
    invoke-virtual {p0, p2, p3}, Lcom/metamoji/lb/LbLibraryItemManager;->copyMetaData(Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;Ljava/lang/String;)V

    .line 491
    :cond_1
    invoke-virtual {v1, p2}, Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;->putMetaData(Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 495
    invoke-virtual {p0, p3}, Lcom/metamoji/lb/LbLibraryItemManager;->cleanContent(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 515
    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    return v0

    .line 509
    :cond_2
    :try_start_2
    invoke-virtual {p0, p3}, Lcom/metamoji/lb/LbLibraryItemManager;->updateThumbnail(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 515
    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p2

    goto :goto_0

    :catch_0
    move-exception p2

    .line 499
    :try_start_3
    const-string p4, "[MMJLbLibraryItemManager] :: ERROR register MetaData: "

    invoke-static {p2, p4}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 501
    invoke-virtual {p0, p3}, Lcom/metamoji/lb/LbLibraryItemManager;->cleanContent(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 515
    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    return v0

    .line 506
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

    .line 474
    :try_start_5
    const-string p3, "[MMJLbLibraryItemManager] :: ERROR register Content:"

    invoke-static {p2, p3}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 515
    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    return v0

    .line 479
    :goto_1
    :try_start_6
    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p2

    .line 515
    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    .line 516
    throw p2
.end method

.method public registerLibraryMyItemFromFile(Ljava/io/File;Lcom/metamoji/cm/Blob;)Z
    .locals 1

    .line 409
    invoke-static {}, Lcom/metamoji/Config;->isLibraryDm3Enabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/lb/LbLibraryItemManager;->registerLibraryMyItemFromFileV3(Ljava/io/File;Lcom/metamoji/cm/Blob;)Z

    move-result p1

    return p1

    .line 412
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/lb/LbLibraryItemManager;->registerLibraryMyItemFromFileV2(Ljava/io/File;)Z

    move-result p1

    return p1
.end method

.method public registerLibraryMyItemFromFileV2(Ljava/io/File;)Z
    .locals 3

    .line 433
    invoke-static {}, Lcom/metamoji/cm/CmLocalIdManager;->getInstance()Lcom/metamoji/cm/CmLocalIdManager;

    move-result-object v0

    const-string v1, "library_item"

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmLocalIdManager;->generateRootId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 434
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[MMJLbLibraryItemManager] register item entityId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " filePath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    .line 436
    invoke-virtual {p0}, Lcom/metamoji/lb/LbLibraryItemManager;->createLibraryMyItemMetaData()Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;

    move-result-object v1

    .line 437
    invoke-virtual {p0, p1, v1, v0}, Lcom/metamoji/lb/LbLibraryItemManager;->registerLibraryItemFromFile(Ljava/io/File;Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public registerLibraryMyItemFromFileV3(Ljava/io/File;Lcom/metamoji/cm/Blob;)Z
    .locals 6

    if-nez p2, :cond_0

    .line 421
    invoke-virtual {p0, p1}, Lcom/metamoji/lb/LbLibraryItemManager;->getThumbnail(Ljava/io/File;)Lcom/metamoji/cm/Blob;

    move-result-object p2

    :cond_0
    move-object v1, p2

    .line 424
    invoke-static {}, Lcom/metamoji/lb/LbShareItem;->dataModelType()Ljava/lang/String;

    move-result-object v4

    .line 425
    invoke-static {}, Lcom/metamoji/lb/LbShareItem;->dataModelVer()I

    move-result v5

    const/4 v2, 0x0

    .line 419
    const-string v3, ""

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/metamoji/lb/LbShareUtils;->importShareLibrary(Ljava/io/File;Lcom/metamoji/cm/Blob;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
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

    .line 1644
    const-string v0, "result"

    const-string v1, "================================================================================="

    const-string v3, "UTF-8"

    const-string v7, "errorMessage"

    :try_start_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p3, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 1645
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1646
    invoke-static {v5}, Lcom/metamoji/cm/CmJson;->createMapFromJson(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v8

    .line 1647
    const-string v5, "[LbLibraryItemManager] downloadProduct responce=================================="

    invoke-static {v5}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 1648
    invoke-static {v4}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 1649
    invoke-static {v1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 1652
    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1653
    const-string v9, "message"

    if-eqz v4, :cond_5

    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    goto/16 :goto_1

    .line 1663
    :cond_0
    invoke-static {}, Lcom/metamoji/lb/LbDownloadUtil;->login()Ljava/util/Map;

    move-result-object v4

    if-nez v4, :cond_1

    goto/16 :goto_2

    .line 1667
    :cond_1
    const-string v5, "error"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1668
    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 1670
    invoke-interface {p1, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    .line 1675
    :cond_2
    const-string v5, "contents"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 1676
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 1677
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1678
    invoke-static {v3}, Lcom/metamoji/cm/CmJson;->createMapFromJson(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v3

    .line 1679
    const-string v4, "[LbLibraryItemManager] Retry login responce ====================================="

    invoke-static {v4}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 1680
    invoke-static {v5}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 1681
    invoke-static {v1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 1682
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 1683
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

    .line 1692
    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/lb/LbLibraryItemManager;->downloadProductInner(Ljava/util/Map;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/lb/LbDownloadUtil$ILbDownloadUtilProgress;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 1684
    :cond_4
    :goto_0
    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 1686
    invoke-interface {p1, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    .line 1654
    :cond_5
    :goto_1
    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 1656
    invoke-interface {p1, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_6
    :goto_2
    return-object p1

    :catch_0
    move-exception v0

    .line 1695
    const-string v1, "[LbLibraryItemManager] downloadProduct parse FAILED!!"

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1696
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public savePageDataArray(Ljava/util/List;)V
    .locals 2
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

    .line 304
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/lb/LbLibraryItemManager$1;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/lb/LbLibraryItemManager$1;-><init>(Lcom/metamoji/lb/LbLibraryItemManager;Ljava/util/List;)V

    const/4 p1, 0x0

    invoke-virtual {v0, v1, p1, p1}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

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

    .line 320
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 321
    sget-object v1, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_USER:Lcom/metamoji/lb/LbConstants$LbPageType;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    sget-object v1, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_SYSTEM:Lcom/metamoji/lb/LbConstants$LbPageType;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    sget-object v1, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_DOWNLOAD:Lcom/metamoji/lb/LbConstants$LbPageType;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
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

    .line 325
    const-string v2, "type"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/lb/LbConstants$LbPageType;

    .line 326
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_0

    .line 328
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 335
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

    .line 336
    sget-object v2, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_MAX:Lcom/metamoji/lb/LbConstants$LbPageType;

    if-eq p2, v2, :cond_3

    if-ne p2, v1, :cond_2

    .line 337
    :cond_3
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 338
    invoke-virtual {p0, v2, v1}, Lcom/metamoji/lb/LbLibraryItemManager;->savePageDataArrayExec(Ljava/util/List;Lcom/metamoji/lb/LbConstants$LbPageType;)Z

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

    const-string v0, "[MMJLbLibraryItemManager] save PageDataArray write : "

    const-string v1, "[MMJLbLibraryItemManager] :: ERROR save PageDataArray write type="

    .line 350
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[MMJLbLibraryItemManager] save PageDataArray type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 352
    invoke-static {}, Lcom/metamoji/Config;->isLibraryDm3Enabled()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_USER:Lcom/metamoji/lb/LbConstants$LbPageType;

    if-ne p2, v2, :cond_0

    .line 353
    invoke-static {}, Lcom/metamoji/lb/LbShareItem;->getInstance()Lcom/metamoji/lb/LbShareItem;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/metamoji/lb/LbShareItem;->saveUserIndex(Ljava/util/List;)Z

    move-result p1

    return p1

    .line 357
    :cond_0
    invoke-virtual {p0, p2}, Lcom/metamoji/lb/LbLibraryItemManager;->libraryIndexEntityId(Lcom/metamoji/lb/LbConstants$LbPageType;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 362
    :try_start_0
    invoke-static {}, Lcom/metamoji/lb/LbLibraryItemManager;->createTempDirectory()Ljava/io/File;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_1

    .line 383
    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    return v3

    .line 366
    :cond_1
    :try_start_1
    new-instance v5, Ljava/io/File;

    const-string v6, "index.xml"

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 367
    invoke-static {p1, v5}, Lcom/metamoji/lb/LbLibraryIndexParser;->save(Ljava/util/List;Ljava/io/File;)V

    .line 369
    invoke-static {}, Lcom/metamoji/dm/impl/contents/DmLibraryItemContentsManager;->getInstance()Lcom/metamoji/dm/impl/contents/DmLibraryItemContentsManager;

    move-result-object p1

    .line 370
    const-string v6, "index"

    invoke-virtual {p1, v5, v2, v6}, Lcom/metamoji/dm/impl/contents/DmLibraryItemContentsManager;->writeContentsDataFromFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 371
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 372
    sget-object v0, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_USER:Lcom/metamoji/lb/LbConstants$LbPageType;

    if-ne p2, v0, :cond_2

    .line 374
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;

    move-result-object v0

    sget-object v5, Lcom/metamoji/dm/DmLibraryType;->LibraryTypeItem:Lcom/metamoji/dm/DmLibraryType;

    invoke-virtual {v0, v2, v5}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->putIndexXMLSyncDataForUpdate(Ljava/lang/String;Lcom/metamoji/dm/DmLibraryType;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 383
    :cond_2
    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 378
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

    .line 383
    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    return v3

    :goto_0
    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    .line 384
    throw p1
.end method

.method public searchItemByProductId(Ljava/lang/String;)I
    .locals 2

    .line 812
    new-instance v0, Lcom/metamoji/dm/impl/metadata/DmLibraryItemSearchCondition;

    invoke-direct {v0}, Lcom/metamoji/dm/impl/metadata/DmLibraryItemSearchCondition;-><init>()V

    .line 813
    invoke-virtual {v0, p1}, Lcom/metamoji/dm/impl/metadata/DmLibraryItemSearchCondition;->setProductId(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 814
    invoke-virtual {v0, p1}, Lcom/metamoji/dm/impl/metadata/DmLibraryItemSearchCondition;->setIsTrial(I)V

    .line 815
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;

    move-result-object v1

    .line 816
    invoke-virtual {v1, v0, p1}, Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;->searchLibraryItemId(Lcom/metamoji/dm/impl/metadata/DmLibraryItemSearchCondition;I)Ljava/util/ArrayList;

    move-result-object p1

    .line 817
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method searchItems(Lcom/metamoji/lb/LbConstants$LbPageType;)Ljava/util/List;
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

    .line 936
    const-string v0, "download"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lcom/metamoji/dm/fw/metadata/DmSortCondition;

    invoke-direct {v2}, Lcom/metamoji/dm/fw/metadata/DmSortCondition;-><init>()V

    .line 937
    const-string v3, "entityId"

    invoke-virtual {v2, v3}, Lcom/metamoji/dm/fw/metadata/DmSortCondition;->setSortKey(Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 938
    invoke-virtual {v2, v3}, Lcom/metamoji/dm/fw/metadata/DmSortCondition;->setAscending(Z)V

    .line 941
    new-instance v4, Lcom/metamoji/dm/impl/metadata/DmLibraryItemSearchCondition;

    invoke-direct {v4}, Lcom/metamoji/dm/impl/metadata/DmLibraryItemSearchCondition;-><init>()V

    .line 942
    sget-object v5, Lcom/metamoji/lb/LbLibraryItemManager$3;->$SwitchMap$com$metamoji$lb$LbConstants$LbPageType:[I

    invoke-virtual {p1}, Lcom/metamoji/lb/LbConstants$LbPageType;->ordinal()I

    move-result v6

    aget v5, v5, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v6, -0x1

    const/4 v7, 0x0

    if-eq v5, v3, :cond_4

    const/4 v8, 0x3

    const-string v9, "create"

    if-eq v5, v8, :cond_3

    const/4 v8, 0x4

    if-eq v5, v8, :cond_2

    const/4 v6, 0x5

    if-eq v5, v6, :cond_1

    const/4 v6, 0x6

    if-eq v5, v6, :cond_0

    return-object v1

    .line 1004
    :cond_0
    :try_start_1
    invoke-virtual {v4, v0}, Lcom/metamoji/dm/impl/metadata/DmLibraryItemSearchCondition;->setType(Ljava/lang/String;)V

    .line 1005
    new-instance v5, Lcom/metamoji/dm/fw/metadata/DmSortCondition;

    invoke-direct {v5}, Lcom/metamoji/dm/fw/metadata/DmSortCondition;-><init>()V

    .line 1006
    invoke-virtual {v5, v0}, Lcom/metamoji/dm/fw/metadata/DmSortCondition;->setSortKey(Ljava/lang/String;)V

    .line 1007
    invoke-virtual {v5, v3}, Lcom/metamoji/dm/fw/metadata/DmSortCondition;->setAscending(Z)V

    .line 1008
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1009
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1010
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1011
    invoke-virtual {v4, v0}, Lcom/metamoji/dm/impl/metadata/DmLibraryItemSearchCondition;->setSort(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 990
    :cond_1
    const-string v0, "system"

    invoke-virtual {v4, v0}, Lcom/metamoji/dm/impl/metadata/DmLibraryItemSearchCondition;->setType(Ljava/lang/String;)V

    .line 991
    new-instance v0, Lcom/metamoji/dm/fw/metadata/DmSortCondition;

    invoke-direct {v0}, Lcom/metamoji/dm/fw/metadata/DmSortCondition;-><init>()V

    .line 992
    invoke-virtual {v0, v9}, Lcom/metamoji/dm/fw/metadata/DmSortCondition;->setSortKey(Ljava/lang/String;)V

    .line 993
    invoke-virtual {v0, v3}, Lcom/metamoji/dm/fw/metadata/DmSortCondition;->setAscending(Z)V

    .line 994
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 995
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 996
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 997
    invoke-virtual {v4, v3}, Lcom/metamoji/dm/impl/metadata/DmLibraryItemSearchCondition;->setSort(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 962
    :cond_2
    invoke-virtual {v4, v6}, Lcom/metamoji/dm/impl/metadata/DmLibraryItemSearchCondition;->setBookmarked(I)V

    .line 963
    new-instance v0, Lcom/metamoji/dm/fw/metadata/DmSortCondition;

    invoke-direct {v0}, Lcom/metamoji/dm/fw/metadata/DmSortCondition;-><init>()V

    .line 964
    invoke-virtual {v0, v9}, Lcom/metamoji/dm/fw/metadata/DmSortCondition;->setSortKey(Ljava/lang/String;)V

    .line 965
    invoke-virtual {v0, v3}, Lcom/metamoji/dm/fw/metadata/DmSortCondition;->setAscending(Z)V

    .line 966
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 967
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 968
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 969
    invoke-virtual {v4, v3}, Lcom/metamoji/dm/impl/metadata/DmLibraryItemSearchCondition;->setSort(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 976
    :cond_3
    const-string v0, "user"

    invoke-virtual {v4, v0}, Lcom/metamoji/dm/impl/metadata/DmLibraryItemSearchCondition;->setType(Ljava/lang/String;)V

    .line 977
    new-instance v0, Lcom/metamoji/dm/fw/metadata/DmSortCondition;

    invoke-direct {v0}, Lcom/metamoji/dm/fw/metadata/DmSortCondition;-><init>()V

    .line 978
    invoke-virtual {v0, v9}, Lcom/metamoji/dm/fw/metadata/DmSortCondition;->setSortKey(Ljava/lang/String;)V

    .line 979
    invoke-virtual {v0, v3}, Lcom/metamoji/dm/fw/metadata/DmSortCondition;->setAscending(Z)V

    .line 980
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 981
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 982
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 983
    invoke-virtual {v4, v3}, Lcom/metamoji/dm/impl/metadata/DmLibraryItemSearchCondition;->setSort(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 947
    :cond_4
    invoke-virtual {v4, v6}, Lcom/metamoji/dm/impl/metadata/DmLibraryItemSearchCondition;->setUseDateIsNotNULL(I)V

    .line 948
    new-instance v0, Lcom/metamoji/dm/fw/metadata/DmSortCondition;

    invoke-direct {v0}, Lcom/metamoji/dm/fw/metadata/DmSortCondition;-><init>()V

    .line 949
    const-string v3, "useDate"

    invoke-virtual {v0, v3}, Lcom/metamoji/dm/fw/metadata/DmSortCondition;->setSortKey(Ljava/lang/String;)V

    .line 950
    invoke-virtual {v0, v7}, Lcom/metamoji/dm/fw/metadata/DmSortCondition;->setAscending(Z)V

    .line 951
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 952
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 953
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 954
    invoke-virtual {v4, v3}, Lcom/metamoji/dm/impl/metadata/DmLibraryItemSearchCondition;->setSort(Ljava/util/ArrayList;)V

    const/16 v7, 0x1e

    .line 1019
    :goto_0
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;

    move-result-object v0

    .line 1020
    invoke-virtual {v0, v4, v7, v1}, Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;->searchLibraryItem(Lcom/metamoji/dm/impl/metadata/DmLibraryItemSearchCondition;ILjava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1021
    const-string v2, "[MMJLbLibraryItemManager] searchItems type=%s result:%d"

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {p1, v3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1024
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1027
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;

    .line 1029
    check-cast v2, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;

    invoke-virtual {p0, v2}, Lcom/metamoji/lb/LbLibraryItemManager;->createPartDic(Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 1031
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_6
    return-object p1

    :catchall_0
    move-exception p1

    .line 1047
    throw p1

    :catch_0
    move-exception p1

    .line 1042
    const-string v0, "[MMJLbLibraryItemManager] :: ERROR searchItems"

    invoke-static {p1, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-object v1
.end method

.method public setupSystemItem(Z)Z
    .locals 11

    if-eqz p1, :cond_0

    .line 1442
    invoke-virtual {p0}, Lcom/metamoji/lb/LbLibraryItemManager;->cleanupSystemItem()V

    .line 1446
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtLocaleUtils;->getCurrentLocale()Lcom/metamoji/nt/NtLocale;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/nt/NtLocaleUtils;->localeStringFromLocale(Lcom/metamoji/nt/NtLocale;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v3, v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_4

    .line 1452
    sget-object v4, Lcom/metamoji/lb/LbLibraryItemManager;->SYSTEMITEM_FILE_NAME:[Ljava/lang/String;

    aget-object v4, v4, v2

    .line 1454
    invoke-virtual {p0, v4}, Lcom/metamoji/lb/LbLibraryItemManager;->parseSystemItem(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    if-nez v4, :cond_1

    move v3, v1

    goto :goto_2

    .line 1461
    :cond_1
    const-string v5, "jsonDic"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 1462
    const-string v6, "tempDir"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 1465
    :try_start_0
    const-string v6, "p_id"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1467
    const-string v7, "p_parts"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 1468
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 1470
    check-cast v7, Ljava/util/Map;

    .line 1472
    const-string v8, "entityId"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1475
    new-instance v9, Ljava/io/File;

    const-string v10, "partFile"

    invoke-interface {v7, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-direct {v9, v4, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1476
    invoke-virtual {p0, v7, v6, p1}, Lcom/metamoji/lb/LbLibraryItemManager;->createLibrarySystemItemMetaData(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;

    move-result-object v7

    .line 1477
    invoke-virtual {p0, v9, v7, v8, v1}, Lcom/metamoji/lb/LbLibraryItemManager;->registerLibraryItemFromFile(Ljava/io/File;Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1480
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[MMJLbLibyraryItemManager] item regist FAILED! entityId="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v1

    goto :goto_1

    .line 1486
    :cond_3
    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    .line 1487
    throw p1

    :cond_4
    return v3
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

    .line 1172
    const-string v0, "title"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1173
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 1176
    check-cast p1, Ljava/util/Map;

    .line 1177
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    .line 1180
    const-string p2, "*"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    .line 1183
    sget-object p2, Lcom/metamoji/nt/NtLocale;->en:Lcom/metamoji/nt/NtLocale;

    invoke-static {p2}, Lcom/metamoji/nt/NtLocaleUtils;->localeStringFromLocale(Lcom/metamoji/nt/NtLocale;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    .line 1187
    :cond_1
    :goto_0
    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public updateItemBookmarked(Ljava/lang/String;Z)V
    .locals 3

    const-string v0, "[MMJLbLibraryItemManager] update bookmarked of item : "

    .line 787
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[MMJLbLibraryItemManager] update bookmarked of item entityId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 789
    :try_start_0
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;

    move-result-object v1

    .line 790
    invoke-virtual {v1, p1}, Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;->getMetaData(Ljava/lang/String;)Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;

    move-result-object v2

    check-cast v2, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;

    if-nez v2, :cond_0

    .line 792
    const-string p2, "[MMJLbLibraryItemManager] update bookmarked of item : Not Found!"

    invoke-static {p2}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    return-void

    .line 795
    :cond_0
    invoke-virtual {v2, p2}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->setBookmarked(Z)V

    .line 796
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, p2}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->setLastAccess(Ljava/util/Date;)V

    .line 797
    invoke-virtual {v1, v2}, Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;->putMetaData(Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;)Z

    move-result p2

    .line 798
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

    .line 800
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[MMJLbLibraryItemManager] :: ERROR bookmarked name of item entityId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public updateItemName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "[MMJLbLibraryItemManager] update name of item : "

    .line 762
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[MMJLbLibraryItemManager] update name of item entityId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 764
    :try_start_0
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;

    move-result-object v1

    .line 765
    invoke-virtual {v1, p1}, Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;->getMetaData(Ljava/lang/String;)Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;

    move-result-object v2

    check-cast v2, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;

    if-nez v2, :cond_0

    .line 767
    const-string p2, "[MMJLbLibraryItemManager] update name of item : Not Found!"

    invoke-static {p2}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    return-void

    .line 770
    :cond_0
    invoke-virtual {v2, p2}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->setName(Ljava/lang/String;)V

    .line 771
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, p2}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->setLastAccess(Ljava/util/Date;)V

    .line 772
    invoke-virtual {v1, v2}, Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;->putMetaData(Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;)Z

    move-result p2

    .line 773
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

    .line 775
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[MMJLbLibraryItemManager] :: ERROR update name of item entityId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public updateItemUseDate(Ljava/lang/String;)V
    .locals 4

    const-string v0, "[MMJLbLibraryItemManager] update lastaccess of item : "

    .line 736
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[MMJLbLibraryItemManager] update lastaccess of item entityId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 738
    :try_start_0
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;

    move-result-object v1

    .line 739
    invoke-virtual {v1, p1}, Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;->getMetaData(Ljava/lang/String;)Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;

    move-result-object v2

    check-cast v2, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;

    if-nez v2, :cond_0

    .line 741
    const-string v0, "[MMJLbLibraryItemManager] update lastaccess of item : Not Found!"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    return-void

    .line 744
    :cond_0
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 745
    invoke-virtual {v2, v3}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->setUseDate(Ljava/util/Date;)V

    .line 746
    invoke-virtual {v2, v3}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->setLastAccess(Ljava/util/Date;)V

    .line 747
    invoke-virtual {v1, v2}, Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;->putMetaData(Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;)Z

    move-result v1

    .line 748
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

    .line 750
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[MMJLbLibraryItemManager] :: ERROR update lastaccess of item entityId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method updateThumbnail(Ljava/lang/String;)Z
    .locals 6

    .line 1317
    const-string v0, "thumbnail.jpg"

    .line 0
    const-string v1, "[MMJLbLibraryItemManager]thumbnail file not found in zip. entityId:"

    .line 1317
    invoke-virtual {p0, p1}, Lcom/metamoji/lb/LbLibraryItemManager;->getLibraryItemFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    const/4 v4, 0x0

    .line 1325
    :try_start_0
    invoke-static {}, Lcom/metamoji/lb/LbLibraryItemManager;->createTempDirectory()Ljava/io/File;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v5, :cond_1

    .line 1349
    invoke-static {v5}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    return v3

    .line 1331
    :cond_1
    :try_start_1
    invoke-static {v2, v5, v4}, Lcom/metamoji/cv/xml/CvZippedXMLConvertUtils;->uncompressDocument(Ljava/io/File;Ljava/io/File;Ljava/util/Map;)Lcom/metamoji/cv/CvResult$Import;

    move-result-object v2

    .line 1332
    sget-object v4, Lcom/metamoji/cv/CvResult$Import;->Success:Lcom/metamoji/cv/CvResult$Import;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v4, v2, :cond_2

    .line 1349
    invoke-static {v5}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    return v3

    .line 1337
    :cond_2
    :try_start_2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1349
    invoke-static {v5}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    return v3

    .line 1344
    :cond_3
    :try_start_3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1346
    invoke-virtual {p0, p1, v1}, Lcom/metamoji/lb/LbLibraryItemManager;->updateThumbnail(Ljava/lang/String;Ljava/io/File;)Z

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1349
    invoke-static {v5}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    return p1

    :catchall_0
    move-exception p1

    move-object v4, v5

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    .line 1350
    throw p1
.end method

.method updateThumbnail(Ljava/lang/String;Ljava/io/File;)Z
    .locals 2

    .line 1362
    :try_start_0
    invoke-static {}, Lcom/metamoji/dm/impl/contents/DmLibraryItemThumbnailsCacheManager;->getInstance()Lcom/metamoji/dm/impl/contents/DmLibraryItemThumbnailsCacheManager;

    move-result-object v0

    .line 1363
    const-string v1, "thumbnail"

    invoke-virtual {v0, p2, p1, v1}, Lcom/metamoji/dm/impl/contents/DmLibraryItemThumbnailsCacheManager;->writeCacheDataFromFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    .line 1372
    throw p1

    :catch_0
    move-exception p1

    .line 1367
    const-string p2, "[MMJLbLibraryItemManager] :: ERROR register Thumbnail:"

    invoke-static {p1, p2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method updateThumbnail(Ljava/lang/String;[B)Z
    .locals 2

    .line 1383
    :try_start_0
    invoke-static {}, Lcom/metamoji/dm/impl/contents/DmLibraryItemThumbnailsCacheManager;->getInstance()Lcom/metamoji/dm/impl/contents/DmLibraryItemThumbnailsCacheManager;

    move-result-object v0

    .line 1384
    const-string v1, "thumbnail"

    invoke-virtual {v0, p2, p1, v1}, Lcom/metamoji/dm/impl/contents/DmLibraryItemThumbnailsCacheManager;->writeCacheDataFromData([BLjava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    .line 1393
    throw p1

    :catch_0
    move-exception p1

    .line 1388
    const-string p2, "[MMJLbLibraryItemManager] :: ERROR register Thumbnail:"

    invoke-static {p1, p2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
