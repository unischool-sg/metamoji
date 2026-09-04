.class public Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;
.super Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;
.source "DmLibraryItemMetaDataManager.java"


# static fields
.field private static _instance:Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;

.field private static final _lockObject:Ljava/lang/Object;

.field private static _sqlDriver:Lcom/metamoji/dm/fw/metadata/DmSqlDriver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;->_lockObject:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    return-void
.end method

.method public static getInstance()Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;
    .locals 3

    .line 42
    sget-object v0, Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;->_lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 44
    :try_start_0
    sget-object v1, Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;->_instance:Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;

    if-nez v1, :cond_0

    .line 46
    invoke-static {}, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->sharedManager()Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    move-result-object v1

    .line 47
    new-instance v2, Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;

    invoke-direct {v2, v1}, Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;-><init>(Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;)V

    sput-object v2, Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;->_instance:Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;

    .line 49
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    sget-object v0, Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;->_instance:Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;

    return-object v0

    :catchall_0
    move-exception v1

    .line 49
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public createSearchPredicate(Lcom/metamoji/dm/impl/metadata/DmLibraryItemSearchCondition;Ljava/util/ArrayList;)Lcom/metamoji/dm/fw/metadata/DmPredicate;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/dm/impl/metadata/DmLibraryItemSearchCondition;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/metamoji/dm/fw/metadata/DmPredicate;"
        }
    .end annotation

    .line 66
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;->getPredicate()Lcom/metamoji/dm/fw/metadata/DmPredicate;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lcom/metamoji/dm/fw/metadata/DmPredicate;->getPredicate()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    invoke-virtual {v0}, Lcom/metamoji/dm/fw/metadata/DmPredicate;->getBindings()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {p1, p2, v1, v2}, Lcom/metamoji/dm/impl/metadata/DmLibraryItemSearchCondition;->createCondition(Ljava/util/ArrayList;Lcom/j256/ormlite/stmt/Where;Ljava/util/HashMap;)V

    return-object v0
.end method

.method public createSearchSortCondition(Lcom/metamoji/dm/impl/metadata/DmLibraryItemSearchCondition;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/dm/impl/metadata/DmLibraryItemSearchCondition;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/dm/fw/metadata/DmSortDescriptor;",
            ">;"
        }
    .end annotation

    .line 75
    invoke-virtual {p1}, Lcom/metamoji/dm/impl/metadata/DmLibraryItemSearchCondition;->getSort()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Lcom/metamoji/dm/impl/metadata/DmLibraryItemSearchCondition;->getSort()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_11

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 78
    invoke-virtual {p1}, Lcom/metamoji/dm/impl/metadata/DmLibraryItemSearchCondition;->getSort()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/dm/fw/metadata/DmSortCondition;

    .line 83
    invoke-virtual {v2}, Lcom/metamoji/dm/fw/metadata/DmSortCondition;->getSortKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "entityId"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    .line 84
    invoke-static {v3}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->sortKeyItemOfObject(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 86
    :cond_1
    invoke-virtual {v2}, Lcom/metamoji/dm/fw/metadata/DmSortCondition;->getSortKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "type"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    .line 87
    invoke-static {v3}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->sortKeyItemOfObject(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 89
    :cond_2
    invoke-virtual {v2}, Lcom/metamoji/dm/fw/metadata/DmSortCondition;->getSortKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "name"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x2

    .line 90
    invoke-static {v3}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->sortKeyItemOfObject(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 92
    :cond_3
    invoke-virtual {v2}, Lcom/metamoji/dm/fw/metadata/DmSortCondition;->getSortKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "create"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x3

    .line 93
    invoke-static {v3}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->sortKeyItemOfObject(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 95
    :cond_4
    invoke-virtual {v2}, Lcom/metamoji/dm/fw/metadata/DmSortCondition;->getSortKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "update"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x4

    .line 96
    invoke-static {v3}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->sortKeyItemOfObject(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 98
    :cond_5
    invoke-virtual {v2}, Lcom/metamoji/dm/fw/metadata/DmSortCondition;->getSortKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "lastaccess"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x5

    .line 99
    invoke-static {v3}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->sortKeyItemOfObject(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 101
    :cond_6
    invoke-virtual {v2}, Lcom/metamoji/dm/fw/metadata/DmSortCondition;->getSortKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "useDate"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x6

    .line 102
    invoke-static {v3}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->sortKeyItemOfObject(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 104
    :cond_7
    invoke-virtual {v2}, Lcom/metamoji/dm/fw/metadata/DmSortCondition;->getSortKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "bookmarked"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x7

    .line 105
    invoke-static {v3}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->sortKeyItemOfObject(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 107
    :cond_8
    invoke-virtual {v2}, Lcom/metamoji/dm/fw/metadata/DmSortCondition;->getSortKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "download"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/16 v3, 0x8

    .line 108
    invoke-static {v3}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->sortKeyItemOfObject(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 110
    :cond_9
    invoke-virtual {v2}, Lcom/metamoji/dm/fw/metadata/DmSortCondition;->getSortKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "productId"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/16 v3, 0x9

    .line 111
    invoke-static {v3}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->sortKeyItemOfObject(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 113
    :cond_a
    invoke-virtual {v2}, Lcom/metamoji/dm/fw/metadata/DmSortCondition;->getSortKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "productName"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/16 v3, 0xa

    .line 114
    invoke-static {v3}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->sortKeyItemOfObject(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 116
    :cond_b
    invoke-virtual {v2}, Lcom/metamoji/dm/fw/metadata/DmSortCondition;->getSortKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "creatorId"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const/16 v3, 0xb

    .line 117
    invoke-static {v3}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->sortKeyItemOfObject(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 119
    :cond_c
    invoke-virtual {v2}, Lcom/metamoji/dm/fw/metadata/DmSortCondition;->getSortKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "creatorName"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const/16 v3, 0xc

    .line 120
    invoke-static {v3}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->sortKeyItemOfObject(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 122
    :cond_d
    invoke-virtual {v2}, Lcom/metamoji/dm/fw/metadata/DmSortCondition;->getSortKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "isFree"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/16 v3, 0xd

    .line 123
    invoke-static {v3}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->sortKeyItemOfObject(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 125
    :cond_e
    invoke-virtual {v2}, Lcom/metamoji/dm/fw/metadata/DmSortCondition;->getSortKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "isTrial"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    const/16 v3, 0xe

    .line 126
    invoke-static {v3}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->sortKeyItemOfObject(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_f
    move-object v3, v1

    :goto_1
    if-eqz v3, :cond_0

    .line 129
    new-instance v4, Lcom/metamoji/dm/fw/metadata/DmSortDescriptor;

    invoke-virtual {v2}, Lcom/metamoji/dm/fw/metadata/DmSortCondition;->isAscending()Z

    move-result v2

    invoke-direct {v4, v3, v2}, Lcom/metamoji/dm/fw/metadata/DmSortDescriptor;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_10
    return-object v0

    :cond_11
    return-object v1
.end method

.method protected getPredicate()Lcom/metamoji/dm/fw/metadata/DmPredicate;
    .locals 1

    .line 190
    sget-object v0, Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;->_sqlDriver:Lcom/metamoji/dm/fw/metadata/DmSqlDriver;

    invoke-virtual {v0}, Lcom/metamoji/dm/fw/metadata/DmSqlDriver;->getPredicate()Lcom/metamoji/dm/fw/metadata/DmPredicate;

    move-result-object v0

    return-object v0
.end method

.method public newMetaDataInner(Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;
    .locals 0

    .line 59
    new-instance p1, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;

    invoke-direct {p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;-><init>()V

    return-object p1
.end method

.method public searchLibraryItem(Lcom/metamoji/dm/impl/metadata/DmLibraryItemSearchCondition;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/dm/impl/metadata/DmLibraryItemSearchCondition;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 137
    invoke-virtual {p0, p1, v0, v1}, Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;->searchLibraryItem(Lcom/metamoji/dm/impl/metadata/DmLibraryItemSearchCondition;ILjava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public searchLibraryItem(Lcom/metamoji/dm/impl/metadata/DmLibraryItemSearchCondition;ILjava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/dm/impl/metadata/DmLibraryItemSearchCondition;",
            "I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;",
            ">;"
        }
    .end annotation

    .line 142
    iget-object v1, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    monitor-enter v1

    .line 144
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;->createMyFetchRequest()Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;

    move-result-object v3

    .line 145
    invoke-virtual {p0, p1, p3}, Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;->createSearchPredicate(Lcom/metamoji/dm/impl/metadata/DmLibraryItemSearchCondition;Ljava/util/ArrayList;)Lcom/metamoji/dm/fw/metadata/DmPredicate;

    move-result-object v5

    .line 146
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;->createSearchSortCondition(Lcom/metamoji/dm/impl/metadata/DmLibraryItemSearchCondition;)Ljava/util/ArrayList;

    move-result-object v6

    .line 147
    iget-object p1, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    invoke-virtual {p1}, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->managedObjectContext()Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;

    move-result-object v4

    .line 149
    iget-object v2, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    const/4 v7, 0x0

    move v8, p2

    invoke-virtual/range {v2 .. v8}, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->executeFetchRequest(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;Lcom/metamoji/dm/fw/metadata/DmPredicate;Ljava/util/ArrayList;II)Ljava/util/ArrayList;

    move-result-object p1

    .line 151
    monitor-exit v1

    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 152
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public searchLibraryItemId(Lcom/metamoji/dm/impl/metadata/DmLibraryItemSearchCondition;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/dm/impl/metadata/DmLibraryItemSearchCondition;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 157
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;->searchLibraryItemId(Lcom/metamoji/dm/impl/metadata/DmLibraryItemSearchCondition;I)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public searchLibraryItemId(Lcom/metamoji/dm/impl/metadata/DmLibraryItemSearchCondition;I)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/dm/impl/metadata/DmLibraryItemSearchCondition;",
            "I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 162
    invoke-virtual {p0, p1, p2, v0}, Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;->searchLibraryItemId(Lcom/metamoji/dm/impl/metadata/DmLibraryItemSearchCondition;ILjava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public searchLibraryItemId(Lcom/metamoji/dm/impl/metadata/DmLibraryItemSearchCondition;ILjava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/dm/impl/metadata/DmLibraryItemSearchCondition;",
            "I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 167
    iget-object v1, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    monitor-enter v1

    .line 169
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;->createMyFetchRequest()Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;

    move-result-object v3

    .line 170
    invoke-virtual {p0, p1, p3}, Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;->createSearchPredicate(Lcom/metamoji/dm/impl/metadata/DmLibraryItemSearchCondition;Ljava/util/ArrayList;)Lcom/metamoji/dm/fw/metadata/DmPredicate;

    move-result-object v5

    .line 171
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;->createSearchSortCondition(Lcom/metamoji/dm/impl/metadata/DmLibraryItemSearchCondition;)Ljava/util/ArrayList;

    move-result-object v6

    .line 173
    iget-object p1, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    invoke-virtual {p1}, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->managedObjectContext()Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;

    move-result-object v4

    .line 174
    iget-object v2, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    const/4 v7, 0x0

    move v8, p2

    invoke-virtual/range {v2 .. v8}, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->executeFetchRequest(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;Lcom/metamoji/dm/fw/metadata/DmPredicate;Ljava/util/ArrayList;II)Ljava/util/ArrayList;

    move-result-object p1

    .line 176
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 177
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;

    .line 178
    invoke-virtual {p3}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;->getEntityId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 180
    :cond_0
    monitor-exit v1

    return-object p2

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 181
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public sqlAccessManager()Lcom/metamoji/dm/fw/metadata/DmSqlDriver;
    .locals 4

    .line 199
    sget-object v0, Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;->_lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 201
    :try_start_0
    sget-object v1, Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;->_sqlDriver:Lcom/metamoji/dm/fw/metadata/DmSqlDriver;

    if-nez v1, :cond_0

    .line 203
    const-string v1, "metadata"

    invoke-static {v1}, Lcom/metamoji/dm/fw/DmDatabaseHelperPool;->getDatabaseHelper(Ljava/lang/String;)Lcom/metamoji/dm/fw/DmDatabaseHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;->m_databaseHelper:Lcom/metamoji/dm/fw/DmDatabaseHelper;

    .line 204
    new-instance v1, Lcom/metamoji/dm/fw/metadata/DmSqlAccessManager;

    iget-object v2, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;->m_databaseHelper:Lcom/metamoji/dm/fw/DmDatabaseHelper;

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;

    invoke-direct {v1, v2, v3}, Lcom/metamoji/dm/fw/metadata/DmSqlAccessManager;-><init>(Lcom/metamoji/dm/fw/DmDatabaseHelper;[Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;)V

    sput-object v1, Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;->_sqlDriver:Lcom/metamoji/dm/fw/metadata/DmSqlDriver;

    .line 206
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    sget-object v0, Lcom/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager;->_sqlDriver:Lcom/metamoji/dm/fw/metadata/DmSqlDriver;

    return-object v0

    :catchall_0
    move-exception v1

    .line 206
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
