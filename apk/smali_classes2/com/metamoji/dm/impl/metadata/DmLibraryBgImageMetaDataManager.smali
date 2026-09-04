.class public Lcom/metamoji/dm/impl/metadata/DmLibraryBgImageMetaDataManager;
.super Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;
.source "DmLibraryBgImageMetaDataManager.java"


# static fields
.field private static _instance:Lcom/metamoji/dm/impl/metadata/DmLibraryBgImageMetaDataManager;

.field private static final _lockObject:Ljava/lang/Object;

.field private static _sqlDriver:Lcom/metamoji/dm/fw/metadata/DmSqlDriver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/metamoji/dm/impl/metadata/DmLibraryBgImageMetaDataManager;->_lockObject:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/metamoji/dm/fw/metadata/DmMetaDataManagerBase;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryBgImageMetaDataManager;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    return-void
.end method

.method public static getInstance()Lcom/metamoji/dm/impl/metadata/DmLibraryBgImageMetaDataManager;
    .locals 3

    .line 43
    sget-object v0, Lcom/metamoji/dm/impl/metadata/DmLibraryBgImageMetaDataManager;->_lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 45
    :try_start_0
    sget-object v1, Lcom/metamoji/dm/impl/metadata/DmLibraryBgImageMetaDataManager;->_instance:Lcom/metamoji/dm/impl/metadata/DmLibraryBgImageMetaDataManager;

    if-nez v1, :cond_0

    .line 47
    invoke-static {}, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->sharedManager()Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    move-result-object v1

    .line 48
    new-instance v2, Lcom/metamoji/dm/impl/metadata/DmLibraryBgImageMetaDataManager;

    invoke-direct {v2, v1}, Lcom/metamoji/dm/impl/metadata/DmLibraryBgImageMetaDataManager;-><init>(Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;)V

    sput-object v2, Lcom/metamoji/dm/impl/metadata/DmLibraryBgImageMetaDataManager;->_instance:Lcom/metamoji/dm/impl/metadata/DmLibraryBgImageMetaDataManager;

    .line 50
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    sget-object v0, Lcom/metamoji/dm/impl/metadata/DmLibraryBgImageMetaDataManager;->_instance:Lcom/metamoji/dm/impl/metadata/DmLibraryBgImageMetaDataManager;

    return-object v0

    :catchall_0
    move-exception v1

    .line 50
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

    .line 67
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/metadata/DmLibraryBgImageMetaDataManager;->getPredicate()Lcom/metamoji/dm/fw/metadata/DmPredicate;

    move-result-object v0

    .line 68
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

    .line 76
    invoke-virtual {p1}, Lcom/metamoji/dm/impl/metadata/DmLibraryItemSearchCondition;->getSort()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Lcom/metamoji/dm/impl/metadata/DmLibraryItemSearchCondition;->getSort()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_11

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
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

    .line 84
    invoke-virtual {v2}, Lcom/metamoji/dm/fw/metadata/DmSortCondition;->getSortKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "entityId"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    .line 85
    invoke-static {v3}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->sortKeyItemOfObject(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 87
    :cond_1
    invoke-virtual {v2}, Lcom/metamoji/dm/fw/metadata/DmSortCondition;->getSortKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "type"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    .line 88
    invoke-static {v3}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->sortKeyItemOfObject(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 90
    :cond_2
    invoke-virtual {v2}, Lcom/metamoji/dm/fw/metadata/DmSortCondition;->getSortKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "name"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x2

    .line 91
    invoke-static {v3}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->sortKeyItemOfObject(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 93
    :cond_3
    invoke-virtual {v2}, Lcom/metamoji/dm/fw/metadata/DmSortCondition;->getSortKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "create"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x3

    .line 94
    invoke-static {v3}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->sortKeyItemOfObject(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 96
    :cond_4
    invoke-virtual {v2}, Lcom/metamoji/dm/fw/metadata/DmSortCondition;->getSortKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "update"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x4

    .line 97
    invoke-static {v3}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->sortKeyItemOfObject(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 99
    :cond_5
    invoke-virtual {v2}, Lcom/metamoji/dm/fw/metadata/DmSortCondition;->getSortKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "lastaccess"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x5

    .line 100
    invoke-static {v3}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->sortKeyItemOfObject(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 102
    :cond_6
    invoke-virtual {v2}, Lcom/metamoji/dm/fw/metadata/DmSortCondition;->getSortKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "useDate"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x6

    .line 103
    invoke-static {v3}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->sortKeyItemOfObject(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 105
    :cond_7
    invoke-virtual {v2}, Lcom/metamoji/dm/fw/metadata/DmSortCondition;->getSortKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "bookmarked"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x7

    .line 106
    invoke-static {v3}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->sortKeyItemOfObject(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 108
    :cond_8
    invoke-virtual {v2}, Lcom/metamoji/dm/fw/metadata/DmSortCondition;->getSortKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "download"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/16 v3, 0x8

    .line 109
    invoke-static {v3}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->sortKeyItemOfObject(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 111
    :cond_9
    invoke-virtual {v2}, Lcom/metamoji/dm/fw/metadata/DmSortCondition;->getSortKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "productId"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/16 v3, 0x9

    .line 112
    invoke-static {v3}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->sortKeyItemOfObject(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 114
    :cond_a
    invoke-virtual {v2}, Lcom/metamoji/dm/fw/metadata/DmSortCondition;->getSortKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "productName"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/16 v3, 0xa

    .line 115
    invoke-static {v3}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->sortKeyItemOfObject(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 117
    :cond_b
    invoke-virtual {v2}, Lcom/metamoji/dm/fw/metadata/DmSortCondition;->getSortKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "creatorId"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const/16 v3, 0xb

    .line 118
    invoke-static {v3}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->sortKeyItemOfObject(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 120
    :cond_c
    invoke-virtual {v2}, Lcom/metamoji/dm/fw/metadata/DmSortCondition;->getSortKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "creatorName"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const/16 v3, 0xc

    .line 121
    invoke-static {v3}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->sortKeyItemOfObject(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 123
    :cond_d
    invoke-virtual {v2}, Lcom/metamoji/dm/fw/metadata/DmSortCondition;->getSortKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "isFree"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/16 v3, 0xd

    .line 124
    invoke-static {v3}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->sortKeyItemOfObject(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 126
    :cond_e
    invoke-virtual {v2}, Lcom/metamoji/dm/fw/metadata/DmSortCondition;->getSortKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "isTrial"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    const/16 v3, 0xe

    .line 127
    invoke-static {v3}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemMetaData;->sortKeyItemOfObject(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_f
    move-object v3, v1

    :goto_1
    if-eqz v3, :cond_0

    .line 130
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

    .line 191
    sget-object v0, Lcom/metamoji/dm/impl/metadata/DmLibraryBgImageMetaDataManager;->_sqlDriver:Lcom/metamoji/dm/fw/metadata/DmSqlDriver;

    invoke-virtual {v0}, Lcom/metamoji/dm/fw/metadata/DmSqlDriver;->getPredicate()Lcom/metamoji/dm/fw/metadata/DmPredicate;

    move-result-object v0

    return-object v0
.end method

.method public newMetaDataInner(Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;
    .locals 0

    .line 60
    new-instance p1, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;

    invoke-direct {p1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;-><init>()V

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

    .line 138
    invoke-virtual {p0, p1, v0, v1}, Lcom/metamoji/dm/impl/metadata/DmLibraryBgImageMetaDataManager;->searchLibraryItem(Lcom/metamoji/dm/impl/metadata/DmLibraryItemSearchCondition;ILjava/util/ArrayList;)Ljava/util/ArrayList;

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

    .line 143
    iget-object v1, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryBgImageMetaDataManager;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    monitor-enter v1

    .line 145
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/metadata/DmLibraryBgImageMetaDataManager;->createMyFetchRequest()Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;

    move-result-object v3

    .line 146
    invoke-virtual {p0, p1, p3}, Lcom/metamoji/dm/impl/metadata/DmLibraryBgImageMetaDataManager;->createSearchPredicate(Lcom/metamoji/dm/impl/metadata/DmLibraryItemSearchCondition;Ljava/util/ArrayList;)Lcom/metamoji/dm/fw/metadata/DmPredicate;

    move-result-object v5

    .line 147
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/impl/metadata/DmLibraryBgImageMetaDataManager;->createSearchSortCondition(Lcom/metamoji/dm/impl/metadata/DmLibraryItemSearchCondition;)Ljava/util/ArrayList;

    move-result-object v6

    .line 148
    iget-object p1, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryBgImageMetaDataManager;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    invoke-virtual {p1}, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->managedObjectContext()Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;

    move-result-object v4

    .line 150
    iget-object v2, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryBgImageMetaDataManager;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    const/4 v7, 0x0

    move v8, p2

    invoke-virtual/range {v2 .. v8}, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->executeFetchRequest(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;Lcom/metamoji/dm/fw/metadata/DmPredicate;Ljava/util/ArrayList;II)Ljava/util/ArrayList;

    move-result-object p1

    .line 152
    monitor-exit v1

    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 153
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

    .line 158
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/dm/impl/metadata/DmLibraryBgImageMetaDataManager;->searchLibraryItemId(Lcom/metamoji/dm/impl/metadata/DmLibraryItemSearchCondition;I)Ljava/util/ArrayList;

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

    .line 163
    invoke-virtual {p0, p1, p2, v0}, Lcom/metamoji/dm/impl/metadata/DmLibraryBgImageMetaDataManager;->searchLibraryItemId(Lcom/metamoji/dm/impl/metadata/DmLibraryItemSearchCondition;ILjava/util/ArrayList;)Ljava/util/ArrayList;

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

    .line 168
    iget-object v1, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryBgImageMetaDataManager;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    monitor-enter v1

    .line 170
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/metadata/DmLibraryBgImageMetaDataManager;->createMyFetchRequest()Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;

    move-result-object v3

    .line 171
    invoke-virtual {p0, p1, p3}, Lcom/metamoji/dm/impl/metadata/DmLibraryBgImageMetaDataManager;->createSearchPredicate(Lcom/metamoji/dm/impl/metadata/DmLibraryItemSearchCondition;Ljava/util/ArrayList;)Lcom/metamoji/dm/fw/metadata/DmPredicate;

    move-result-object v5

    .line 172
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/impl/metadata/DmLibraryBgImageMetaDataManager;->createSearchSortCondition(Lcom/metamoji/dm/impl/metadata/DmLibraryItemSearchCondition;)Ljava/util/ArrayList;

    move-result-object v6

    .line 174
    iget-object p1, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryBgImageMetaDataManager;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    invoke-virtual {p1}, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->managedObjectContext()Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;

    move-result-object v4

    .line 175
    iget-object v2, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryBgImageMetaDataManager;->m_coreDataManager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    const/4 v7, 0x0

    move v8, p2

    invoke-virtual/range {v2 .. v8}, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->executeFetchRequest(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;Lcom/metamoji/dm/fw/metadata/DmPredicate;Ljava/util/ArrayList;II)Ljava/util/ArrayList;

    move-result-object p1

    .line 177
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 178
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;

    .line 179
    invoke-virtual {p3}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;->getEntityId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 181
    :cond_0
    monitor-exit v1

    return-object p2

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 182
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public sqlAccessManager()Lcom/metamoji/dm/fw/metadata/DmSqlDriver;
    .locals 4

    .line 200
    sget-object v0, Lcom/metamoji/dm/impl/metadata/DmLibraryBgImageMetaDataManager;->_lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 202
    :try_start_0
    sget-object v1, Lcom/metamoji/dm/impl/metadata/DmLibraryBgImageMetaDataManager;->_sqlDriver:Lcom/metamoji/dm/fw/metadata/DmSqlDriver;

    if-nez v1, :cond_0

    .line 204
    const-string v1, "metadata"

    invoke-static {v1}, Lcom/metamoji/dm/fw/DmDatabaseHelperPool;->getDatabaseHelper(Ljava/lang/String;)Lcom/metamoji/dm/fw/DmDatabaseHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryBgImageMetaDataManager;->m_databaseHelper:Lcom/metamoji/dm/fw/DmDatabaseHelper;

    .line 205
    new-instance v1, Lcom/metamoji/dm/fw/metadata/DmSqlAccessManager;

    iget-object v2, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryBgImageMetaDataManager;->m_databaseHelper:Lcom/metamoji/dm/fw/DmDatabaseHelper;

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/metamoji/dm/impl/metadata/entity/DmLibraryBgImageMetaData;

    invoke-direct {v1, v2, v3}, Lcom/metamoji/dm/fw/metadata/DmSqlAccessManager;-><init>(Lcom/metamoji/dm/fw/DmDatabaseHelper;[Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;)V

    sput-object v1, Lcom/metamoji/dm/impl/metadata/DmLibraryBgImageMetaDataManager;->_sqlDriver:Lcom/metamoji/dm/fw/metadata/DmSqlDriver;

    .line 207
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    sget-object v0, Lcom/metamoji/dm/impl/metadata/DmLibraryBgImageMetaDataManager;->_sqlDriver:Lcom/metamoji/dm/fw/metadata/DmSqlDriver;

    return-object v0

    :catchall_0
    move-exception v1

    .line 207
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
