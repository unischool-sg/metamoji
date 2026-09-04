.class public Lcom/metamoji/sd/SdDriveDatabaseHelper;
.super Lcom/metamoji/sd/SdDatabaseHelper;
.source "SdDriveDatabaseHelper.java"


# static fields
.field private static final DATABASE_VERSION:I = 0x3


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    .line 21
    invoke-direct {p0, p1, v0}, Lcom/metamoji/sd/SdDatabaseHelper;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private upgrade(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 p1, 0x2

    const/4 p2, 0x0

    if-eq p3, p1, :cond_1

    const/4 p1, 0x3

    if-eq p3, p1, :cond_0

    return-void

    .line 70
    :cond_0
    const-class p1, Lcom/metamoji/sd/entities/SdMODrive;

    invoke-virtual {p0, p1}, Lcom/metamoji/sd/SdDriveDatabaseHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object p1

    .line 71
    const-string p3, "ALTER TABLE `SdMODrive` ADD `f_groupId` VARCHAR;"

    new-array v0, p2, [Ljava/lang/String;

    invoke-interface {p1, p3, v0}, Lcom/j256/ormlite/dao/Dao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 72
    const-string p3, "ALTER TABLE `SdMODrive` ADD `f_groupName` VARCHAR;"

    new-array v0, p2, [Ljava/lang/String;

    invoke-interface {p1, p3, v0}, Lcom/j256/ormlite/dao/Dao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 73
    const-string p3, "ALTER TABLE `SdMODrive` ADD `f_groupOrder` VARCHAR;"

    new-array v0, p2, [Ljava/lang/String;

    invoke-interface {p1, p3, v0}, Lcom/j256/ormlite/dao/Dao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 74
    const-string p3, "ALTER TABLE `SdMODrive` ADD `f_order` VARCHAR;"

    new-array v0, p2, [Ljava/lang/String;

    invoke-interface {p1, p3, v0}, Lcom/j256/ormlite/dao/Dao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 75
    const-string p3, "ALTER TABLE `SdMODrive` ADD `f_hidden` INTEGER DEFAULT 0;"

    new-array v0, p2, [Ljava/lang/String;

    invoke-interface {p1, p3, v0}, Lcom/j256/ormlite/dao/Dao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 77
    const-string p3, "CREATE INDEX `SdMODrive_f_groupId_idx` ON `SdMODrive` ( `f_groupId` );"

    new-array v0, p2, [Ljava/lang/String;

    invoke-interface {p1, p3, v0}, Lcom/j256/ormlite/dao/Dao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 78
    const-string p3, "CREATE INDEX `SdMODrive_f_groupOrder_idx` ON `SdMODrive` ( `f_groupOrder` );"

    new-array v0, p2, [Ljava/lang/String;

    invoke-interface {p1, p3, v0}, Lcom/j256/ormlite/dao/Dao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 79
    const-string p3, "CREATE INDEX `SdMODrive_f_order_idx` ON `SdMODrive` ( `f_order` );"

    new-array p2, p2, [Ljava/lang/String;

    invoke-interface {p1, p3, p2}, Lcom/j256/ormlite/dao/Dao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    return-void

    .line 63
    :cond_1
    const-class p1, Lcom/metamoji/sd/entities/SdMODrive;

    invoke-virtual {p0, p1}, Lcom/metamoji/sd/SdDriveDatabaseHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object p1

    .line 64
    const-string p3, "ALTER TABLE `SdMODrive` ADD `f_type` INTEGER DEFAULT 0;"

    new-array p2, p2, [Ljava/lang/String;

    invoke-interface {p1, p3, p2}, Lcom/j256/ormlite/dao/Dao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;)V
    .locals 0

    .line 33
    :try_start_0
    iget-object p1, p0, Lcom/metamoji/sd/SdDriveDatabaseHelper;->connectionSource:Lcom/j256/ormlite/android/AndroidConnectionSource;

    const-class p2, Lcom/metamoji/sd/entities/SdMODrive;

    invoke-static {p1, p2}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 34
    iget-object p1, p0, Lcom/metamoji/sd/SdDriveDatabaseHelper;->connectionSource:Lcom/j256/ormlite/android/AndroidConnectionSource;

    const-class p2, Lcom/metamoji/sd/entities/SdMODiscardedDrive;

    invoke-static {p1, p2}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 36
    const-string p2, "Failed to create db"

    invoke-static {p1, p2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;II)V
    .locals 0

    :goto_0
    add-int/lit8 p3, p3, 0x1

    if-gt p3, p4, :cond_0

    .line 49
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/sd/SdDriveDatabaseHelper;->upgrade(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;I)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 52
    const-string p2, "Failed to upgrade db"

    invoke-static {p1, p2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
