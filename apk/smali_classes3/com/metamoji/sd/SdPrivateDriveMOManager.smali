.class public Lcom/metamoji/sd/SdPrivateDriveMOManager;
.super Lcom/metamoji/sd/SdManagedObjectManager;
.source "SdPrivateDriveMOManager.java"


# static fields
.field private static final PRIVATE_ID_NAME:Ljava/lang/String; = "f_id"

.field private static final USER_ID_NAME:Ljava/lang/String; = "f_userId"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/metamoji/sd/SdManagedObjectManager;-><init>()V

    return-void
.end method


# virtual methods
.method public createDiscardedPrivateDrive(Lcom/metamoji/sd/entities/SdMODiscardedPrivateDrive;Lcom/metamoji/sd/SdManagedObjectContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 156
    invoke-virtual {p0, p2}, Lcom/metamoji/sd/SdPrivateDriveMOManager;->getDiscardedPrivateDriveDao(Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/j256/ormlite/dao/Dao;

    move-result-object p2

    .line 157
    invoke-interface {p2, p1}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    return-void
.end method

.method public createMergingPrivateDrive(Lcom/metamoji/sd/entities/SdMOMergingPrivateDrive;Lcom/metamoji/sd/SdManagedObjectContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 130
    invoke-virtual {p0, p2}, Lcom/metamoji/sd/SdPrivateDriveMOManager;->getMergingPrivateDriveDao(Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/j256/ormlite/dao/Dao;

    move-result-object p2

    .line 131
    invoke-interface {p2, p1}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    return-void
.end method

.method public createOrUpdatePrivateDrive(Lcom/metamoji/sd/entities/SdMOPrivateDrive;Lcom/metamoji/sd/SdManagedObjectContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 38
    invoke-virtual {p0, p2}, Lcom/metamoji/sd/SdPrivateDriveMOManager;->getPrivateDriveDao(Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/j256/ormlite/dao/Dao;

    move-result-object p2

    .line 39
    invoke-interface {p2, p1}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;

    return-void
.end method

.method public createPrivateDrive(Lcom/metamoji/sd/entities/SdMOPrivateDrive;Lcom/metamoji/sd/SdManagedObjectContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 28
    invoke-virtual {p0, p2}, Lcom/metamoji/sd/SdPrivateDriveMOManager;->getPrivateDriveDao(Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/j256/ormlite/dao/Dao;

    move-result-object p2

    .line 29
    invoke-interface {p2, p1}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    return-void
.end method

.method public deleteDiscardedPrivateDrive(Lcom/metamoji/sd/entities/SdMODiscardedPrivateDrive;Lcom/metamoji/sd/SdManagedObjectContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 161
    invoke-virtual {p0, p2}, Lcom/metamoji/sd/SdPrivateDriveMOManager;->getDiscardedPrivateDriveDao(Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/j256/ormlite/dao/Dao;

    move-result-object p2

    .line 162
    invoke-interface {p2, p1}, Lcom/j256/ormlite/dao/Dao;->delete(Ljava/lang/Object;)I

    return-void
.end method

.method public deleteMergingPrivateDrive(Lcom/metamoji/sd/entities/SdMOMergingPrivateDrive;Lcom/metamoji/sd/SdManagedObjectContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 135
    invoke-virtual {p0, p2}, Lcom/metamoji/sd/SdPrivateDriveMOManager;->getMergingPrivateDriveDao(Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/j256/ormlite/dao/Dao;

    move-result-object p2

    .line 136
    invoke-interface {p2, p1}, Lcom/j256/ormlite/dao/Dao;->delete(Ljava/lang/Object;)I

    return-void
.end method

.method public deletePrivateDrive(Lcom/metamoji/sd/entities/SdMOPrivateDrive;Lcom/metamoji/sd/SdManagedObjectContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p2}, Lcom/metamoji/sd/SdPrivateDriveMOManager;->getPrivateDriveDao(Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/j256/ormlite/dao/Dao;

    move-result-object p2

    .line 44
    invoke-interface {p2, p1}, Lcom/j256/ormlite/dao/Dao;->delete(Ljava/lang/Object;)I

    return-void
.end method

.method public generatePrivateId(Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 103
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pr_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-virtual {p0, v0, p1}, Lcom/metamoji/sd/SdPrivateDriveMOManager;->getPrivateDriveById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMOPrivateDrive;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0
.end method

.method public getCurrentPrivateDrive(Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMOPrivateDrive;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 78
    invoke-virtual {p0, p1}, Lcom/metamoji/sd/SdPrivateDriveMOManager;->getPrivateDriveDao(Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/j256/ormlite/dao/Dao;

    move-result-object p1

    .line 79
    invoke-interface {p1}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "f_current"

    invoke-virtual {v0, v2, v1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/j256/ormlite/dao/Dao;->queryForFirst(Lcom/j256/ormlite/stmt/PreparedQuery;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/sd/entities/SdMOPrivateDrive;

    return-object p1
.end method

.method public getDiscardedPrivateDriveAll(Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/sd/SdManagedObjectContext;",
            ")",
            "Ljava/util/List<",
            "Lcom/metamoji/sd/entities/SdMODiscardedPrivateDrive;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 172
    invoke-virtual {p0, p1}, Lcom/metamoji/sd/SdPrivateDriveMOManager;->getDiscardedPrivateDriveDao(Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/j256/ormlite/dao/Dao;

    move-result-object p1

    .line 173
    invoke-interface {p1}, Lcom/j256/ormlite/dao/Dao;->queryForAll()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getDiscardedPrivateDriveDao(Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/j256/ormlite/dao/Dao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/sd/SdManagedObjectContext;",
            ")",
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/metamoji/sd/entities/SdMODiscardedPrivateDrive;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 152
    const-class v0, Lcom/metamoji/sd/entities/SdMODiscardedPrivateDrive;

    invoke-virtual {p1, v0}, Lcom/metamoji/sd/SdManagedObjectContext;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object p1

    return-object p1
.end method

.method public getMergingPrivateDriveAll(Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/sd/SdManagedObjectContext;",
            ")",
            "Ljava/util/List<",
            "Lcom/metamoji/sd/entities/SdMOMergingPrivateDrive;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 146
    invoke-virtual {p0, p1}, Lcom/metamoji/sd/SdPrivateDriveMOManager;->getMergingPrivateDriveDao(Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/j256/ormlite/dao/Dao;

    move-result-object p1

    .line 147
    invoke-interface {p1}, Lcom/j256/ormlite/dao/Dao;->queryForAll()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getMergingPrivateDriveDao(Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/j256/ormlite/dao/Dao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/sd/SdManagedObjectContext;",
            ")",
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/metamoji/sd/entities/SdMOMergingPrivateDrive;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 126
    const-class v0, Lcom/metamoji/sd/entities/SdMOMergingPrivateDrive;

    invoke-virtual {p1, v0}, Lcom/metamoji/sd/SdManagedObjectContext;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object p1

    return-object p1
.end method

.method public getPrivateDriveAll(Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/sd/SdManagedObjectContext;",
            ")",
            "Ljava/util/List<",
            "Lcom/metamoji/sd/entities/SdMOPrivateDrive;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 89
    invoke-virtual {p0, p1}, Lcom/metamoji/sd/SdPrivateDriveMOManager;->getPrivateDriveDao(Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/j256/ormlite/dao/Dao;

    move-result-object p1

    .line 90
    invoke-interface {p1}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/j256/ormlite/dao/Dao;->query(Lcom/j256/ormlite/stmt/PreparedQuery;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getPrivateDriveById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMOPrivateDrive;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 55
    invoke-virtual {p0, p2}, Lcom/metamoji/sd/SdPrivateDriveMOManager;->getPrivateDriveDao(Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/j256/ormlite/dao/Dao;

    move-result-object p2

    .line 56
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

    check-cast p1, Lcom/metamoji/sd/entities/SdMOPrivateDrive;

    return-object p1
.end method

.method public getPrivateDriveByUserId(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMOPrivateDrive;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 67
    invoke-virtual {p0, p2}, Lcom/metamoji/sd/SdPrivateDriveMOManager;->getPrivateDriveDao(Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/j256/ormlite/dao/Dao;

    move-result-object p2

    .line 68
    invoke-interface {p2}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string v1, "f_userId"

    invoke-virtual {v0, v1, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p1

    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/Where;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/j256/ormlite/dao/Dao;->queryForFirst(Lcom/j256/ormlite/stmt/PreparedQuery;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/sd/entities/SdMOPrivateDrive;

    return-object p1
.end method

.method public getPrivateDriveDao(Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/j256/ormlite/dao/Dao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/sd/SdManagedObjectContext;",
            ")",
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/metamoji/sd/entities/SdMOPrivateDrive;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 24
    const-class v0, Lcom/metamoji/sd/entities/SdMOPrivateDrive;

    invoke-virtual {p1, v0}, Lcom/metamoji/sd/SdManagedObjectContext;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object p1

    return-object p1
.end method

.method public getPrivateDriveWithoutMergingByUserId(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMOPrivateDrive;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 120
    invoke-virtual {p0, p2}, Lcom/metamoji/sd/SdPrivateDriveMOManager;->getPrivateDriveDao(Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/j256/ormlite/dao/Dao;

    move-result-object p2

    .line 121
    invoke-interface {p2}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string v1, "f_userId"

    invoke-virtual {v0, v1, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p1

    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "f_merging"

    invoke-virtual {p1, v1, v0}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p1

    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/Where;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/j256/ormlite/dao/Dao;->queryForFirst(Lcom/j256/ormlite/stmt/PreparedQuery;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/sd/entities/SdMOPrivateDrive;

    return-object p1
.end method

.method public updatePrivateDrive(Lcom/metamoji/sd/entities/SdMOPrivateDrive;Lcom/metamoji/sd/SdManagedObjectContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0, p2}, Lcom/metamoji/sd/SdPrivateDriveMOManager;->getPrivateDriveDao(Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/j256/ormlite/dao/Dao;

    move-result-object p2

    .line 34
    invoke-interface {p2, p1}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    return-void
.end method
