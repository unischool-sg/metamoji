.class public Lcom/metamoji/sd/SdDriveMOManager;
.super Lcom/metamoji/sd/SdManagedObjectManager;
.source "SdDriveMOManager.java"


# static fields
.field private static final DRIVE_ID_NAME:Ljava/lang/String; = "f_id"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/metamoji/sd/SdManagedObjectManager;-><init>()V

    return-void
.end method


# virtual methods
.method public createDiscardedDrive(Lcom/metamoji/sd/entities/SdMODiscardedDrive;Lcom/metamoji/sd/SdManagedObjectContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 147
    invoke-virtual {p0, p2}, Lcom/metamoji/sd/SdDriveMOManager;->getDiscardedDriveDao(Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/j256/ormlite/dao/Dao;

    move-result-object p2

    .line 148
    invoke-interface {p2, p1}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    return-void
.end method

.method public createDrive(Lcom/metamoji/sd/entities/SdMODrive;Lcom/metamoji/sd/SdManagedObjectContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 32
    invoke-virtual {p0, p2}, Lcom/metamoji/sd/SdDriveMOManager;->getDriveDao(Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/j256/ormlite/dao/Dao;

    move-result-object p2

    .line 33
    invoke-interface {p2, p1}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    return-void
.end method

.method public deleteDiscardedDrive(Lcom/metamoji/sd/entities/SdMODiscardedDrive;Lcom/metamoji/sd/SdManagedObjectContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 152
    invoke-virtual {p0, p2}, Lcom/metamoji/sd/SdDriveMOManager;->getDiscardedDriveDao(Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/j256/ormlite/dao/Dao;

    move-result-object p2

    .line 153
    invoke-interface {p2, p1}, Lcom/j256/ormlite/dao/Dao;->delete(Ljava/lang/Object;)I

    return-void
.end method

.method public deleteDrive(Lcom/metamoji/sd/entities/SdMODrive;Lcom/metamoji/sd/SdManagedObjectContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 42
    invoke-virtual {p0, p2}, Lcom/metamoji/sd/SdDriveMOManager;->getDriveDao(Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/j256/ormlite/dao/Dao;

    move-result-object p2

    .line 43
    invoke-interface {p2, p1}, Lcom/j256/ormlite/dao/Dao;->delete(Ljava/lang/Object;)I

    return-void
.end method

.method public getDiscardedDriveAll(Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/sd/SdManagedObjectContext;",
            ")",
            "Ljava/util/List<",
            "Lcom/metamoji/sd/entities/SdMODiscardedDrive;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 157
    invoke-virtual {p0, p1}, Lcom/metamoji/sd/SdDriveMOManager;->getDiscardedDriveDao(Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/j256/ormlite/dao/Dao;

    move-result-object p1

    .line 158
    invoke-interface {p1}, Lcom/j256/ormlite/dao/Dao;->queryForAll()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getDiscardedDriveDao(Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/j256/ormlite/dao/Dao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/sd/SdManagedObjectContext;",
            ")",
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/metamoji/sd/entities/SdMODiscardedDrive;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 143
    const-class v0, Lcom/metamoji/sd/entities/SdMODiscardedDrive;

    invoke-virtual {p1, v0}, Lcom/metamoji/sd/SdManagedObjectContext;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object p1

    return-object p1
.end method

.method public getDriveAll(Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/sd/SdManagedObjectContext;",
            ")",
            "Ljava/util/List<",
            "Lcom/metamoji/sd/entities/SdMODrive;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 55
    invoke-virtual {p0, p1}, Lcom/metamoji/sd/SdDriveMOManager;->getDriveDao(Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/j256/ormlite/dao/Dao;

    move-result-object p1

    .line 56
    invoke-interface {p1}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    const-string v1, "f_name"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/j256/ormlite/dao/Dao;->query(Lcom/j256/ormlite/stmt/PreparedQuery;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getDriveById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMODrive;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 50
    :cond_0
    invoke-virtual {p0, p2}, Lcom/metamoji/sd/SdDriveMOManager;->getDriveDao(Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/j256/ormlite/dao/Dao;

    move-result-object p2

    .line 51
    invoke-interface {p2}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string v1, "f_id"

    invoke-virtual {v0, v1, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p1

    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/Where;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/j256/ormlite/dao/Dao;->queryForFirst(Lcom/j256/ormlite/stmt/PreparedQuery;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/sd/entities/SdMODrive;

    return-object p1
.end method

.method public getDriveDao(Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/j256/ormlite/dao/Dao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/sd/SdManagedObjectContext;",
            ")",
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/metamoji/sd/entities/SdMODrive;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 28
    const-class v0, Lcom/metamoji/sd/entities/SdMODrive;

    invoke-virtual {p1, v0}, Lcom/metamoji/sd/SdManagedObjectContext;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object p1

    return-object p1
.end method

.method public getDriveGroupAllWithOrderAscending(ZZLcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lcom/metamoji/sd/SdManagedObjectContext;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 72
    invoke-virtual {p0, p3}, Lcom/metamoji/sd/SdDriveMOManager;->getDriveDao(Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/j256/ormlite/dao/Dao;

    move-result-object p3

    .line 73
    invoke-interface {p3}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    .line 74
    const-string v1, "f_groupId"

    invoke-virtual {v0, v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->groupBy(Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    .line 75
    const-string v2, "f_groupName"

    invoke-virtual {v0, v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->groupBy(Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    const/4 v3, 0x2

    .line 76
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v5, 0x1

    aput-object v2, v3, v5

    invoke-virtual {v0, v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumns([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    .line 77
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    .line 78
    invoke-virtual {v3, v1}, Lcom/j256/ormlite/stmt/Where;->isNotNull(Ljava/lang/String;)Lcom/j256/ormlite/stmt/Where;

    if-eqz p2, :cond_0

    .line 80
    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object p2

    const-string v3, "f_hidden"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v3, v6}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 82
    :cond_0
    const-string p2, "f_groupOrder"

    invoke-virtual {v0, p2, p1}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    .line 83
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 85
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepareStatementString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v4, [Ljava/lang/String;

    invoke-interface {p3, p2, v0}, Lcom/j256/ormlite/dao/Dao;->queryRaw(Ljava/lang/String;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;

    move-result-object p2

    .line 86
    invoke-interface {p2}, Lcom/j256/ormlite/dao/GenericRawResults;->getResults()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/String;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 88
    aget-object v3, p3, v4

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    aget-object p3, p3, v5

    invoke-interface {v0, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public getDriveIdAll(Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/sd/SdManagedObjectContext;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    invoke-virtual {p0, p1}, Lcom/metamoji/sd/SdDriveMOManager;->getDriveDao(Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/j256/ormlite/dao/Dao;

    move-result-object p1

    .line 62
    invoke-interface {p1}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    const/4 v2, 0x1

    .line 63
    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "f_id"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumns([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    .line 64
    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepareStatementString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Lcom/j256/ormlite/dao/Dao;->queryRaw(Ljava/lang/String;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;

    move-result-object p1

    .line 65
    invoke-interface {p1}, Lcom/j256/ormlite/dao/GenericRawResults;->getResults()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 66
    aget-object v1, v1, v4

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getDrivesByGroupId(Ljava/lang/String;ZZLcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ",
            "Lcom/metamoji/sd/SdManagedObjectContext;",
            ")",
            "Ljava/util/List<",
            "Lcom/metamoji/sd/entities/SdMODrive;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 97
    invoke-virtual {p0, p4}, Lcom/metamoji/sd/SdDriveMOManager;->getDriveDao(Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/j256/ormlite/dao/Dao;

    move-result-object p4

    .line 98
    invoke-interface {p4}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    .line 101
    const-string v2, "f_groupId"

    if-eqz p1, :cond_0

    .line 102
    invoke-virtual {v1, v2, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    goto :goto_0

    .line 104
    :cond_0
    invoke-virtual {v1, v2}, Lcom/j256/ormlite/stmt/Where;->isNull(Ljava/lang/String;)Lcom/j256/ormlite/stmt/Where;

    :goto_0
    if-eqz p3, :cond_1

    .line 108
    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object p3

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "f_hidden"

    invoke-virtual {p3, v2, v1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    :cond_1
    if-eqz p1, :cond_2

    .line 112
    const-string p1, "f_order"

    invoke-virtual {v0, p1, p2}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    .line 114
    :cond_2
    const-string p1, "f_name"

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p2}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    .line 116
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/j256/ormlite/dao/Dao;->query(Lcom/j256/ormlite/stmt/PreparedQuery;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getGroupNameByGroupId(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 120
    invoke-virtual {p0, p2}, Lcom/metamoji/sd/SdDriveMOManager;->getDriveDao(Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/j256/ormlite/dao/Dao;

    move-result-object p2

    .line 121
    invoke-interface {p2}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    const/4 v1, 0x1

    .line 122
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "f_groupName"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumns([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    .line 123
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 126
    const-string v4, "f_groupId"

    invoke-virtual {v1, v4, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    const-wide/16 v4, 0x1

    .line 130
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/j256/ormlite/stmt/QueryBuilder;->limit(Ljava/lang/Long;)Lcom/j256/ormlite/stmt/QueryBuilder;

    .line 132
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepareStatementString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/String;

    invoke-interface {p2, p1, v0}, Lcom/j256/ormlite/dao/Dao;->queryRaw(Ljava/lang/String;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;

    move-result-object p1

    invoke-interface {p1}, Lcom/j256/ormlite/dao/GenericRawResults;->getFirstResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 135
    aget-object p1, p1, v3

    return-object p1

    :cond_0
    return-object v2
.end method

.method public updateDrive(Lcom/metamoji/sd/entities/SdMODrive;Lcom/metamoji/sd/SdManagedObjectContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 37
    invoke-virtual {p0, p2}, Lcom/metamoji/sd/SdDriveMOManager;->getDriveDao(Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/j256/ormlite/dao/Dao;

    move-result-object p2

    .line 38
    invoke-interface {p2, p1}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    return-void
.end method
