.class public Lcom/metamoji/sd/SdDriveContentsDatabaseHelper;
.super Lcom/metamoji/sd/SdDatabaseHelper;
.source "SdDriveContentsDatabaseHelper.java"


# static fields
.field private static final DATABASE_VERSION:I = 0x4


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x4

    .line 29
    invoke-direct {p0, p1, v0}, Lcom/metamoji/sd/SdDatabaseHelper;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private upgrade(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 p1, 0x2

    const/4 v0, 0x0

    if-eq p3, p1, :cond_2

    const/4 p1, 0x3

    if-eq p3, p1, :cond_1

    const/4 p1, 0x4

    if-eq p3, p1, :cond_0

    return-void

    .line 144
    :cond_0
    const-class p1, Lcom/metamoji/sd/entities/SdMODocumentTag;

    invoke-virtual {p0, p1}, Lcom/metamoji/sd/SdDriveContentsDatabaseHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object p1

    .line 145
    const-string p2, "CREATE INDEX `SdMODocumentTag_f_tags_f_name_idx` ON `SdMODocumentTag` ( `f_tags`,`f_name` );"

    new-array p3, v0, [Ljava/lang/String;

    invoke-interface {p1, p2, p3}, Lcom/j256/ormlite/dao/Dao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    return-void

    .line 138
    :cond_1
    const-class p1, Lcom/metamoji/sd/entities/SdMODocumentTag;

    invoke-virtual {p0, p1}, Lcom/metamoji/sd/SdDriveContentsDatabaseHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object p1

    .line 139
    const-string p2, "DROP INDEX IF EXISTS `SdMODocumentTag_f_name_idx`;"

    new-array p3, v0, [Ljava/lang/String;

    invoke-interface {p1, p2, p3}, Lcom/j256/ormlite/dao/Dao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    return-void

    .line 103
    :cond_2
    const-class p1, Lcom/metamoji/sd/entities/SdMODocument;

    invoke-virtual {p0, p1}, Lcom/metamoji/sd/SdDriveContentsDatabaseHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object p1

    .line 104
    const-string p3, "ALTER TABLE `SdMODocument` ADD `f_contentsCreateUserId` VARCHAR;"

    new-array v1, v0, [Ljava/lang/String;

    invoke-interface {p1, p3, v1}, Lcom/j256/ormlite/dao/Dao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 105
    const-string p3, "ALTER TABLE `SdMODocument` ADD `f_contentsUpdateUserId` VARCHAR;"

    new-array v1, v0, [Ljava/lang/String;

    invoke-interface {p1, p3, v1}, Lcom/j256/ormlite/dao/Dao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 106
    const-string p3, "ALTER TABLE `SdMODocument` ADD `f_localOptions` INTEGER DEFAULT 0;"

    new-array v1, v0, [Ljava/lang/String;

    invoke-interface {p1, p3, v1}, Lcom/j256/ormlite/dao/Dao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 107
    const-string p3, "ALTER TABLE `SdMODocument` ADD `f_options` INTEGER DEFAULT 0;"

    new-array v1, v0, [Ljava/lang/String;

    invoke-interface {p1, p3, v1}, Lcom/j256/ormlite/dao/Dao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 108
    const-string p3, "ALTER TABLE `SdMODocument` ADD `f_optionsOrigin` INTEGER DEFAULT 0;"

    new-array v1, v0, [Ljava/lang/String;

    invoke-interface {p1, p3, v1}, Lcom/j256/ormlite/dao/Dao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 109
    const-string p3, "ALTER TABLE `SdMODocument` ADD `f_optionsRevision` VARCHAR;"

    new-array v1, v0, [Ljava/lang/String;

    invoke-interface {p1, p3, v1}, Lcom/j256/ormlite/dao/Dao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 110
    const-string p3, "ALTER TABLE `SdMODocument` ADD `f_optionsUpdate` BIGINT DEFAULT 1388534400000;"

    new-array v1, v0, [Ljava/lang/String;

    invoke-interface {p1, p3, v1}, Lcom/j256/ormlite/dao/Dao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 111
    const-string p3, "ALTER TABLE `SdMODocument` ADD `f_optionsUpdateFlag` SMALLINT DEFAULT 0;"

    new-array v1, v0, [Ljava/lang/String;

    invoke-interface {p1, p3, v1}, Lcom/j256/ormlite/dao/Dao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 112
    const-string p3, "ALTER TABLE `SdMODocument` ADD `f_priority` SMALLINT DEFAULT 0;"

    new-array v1, v0, [Ljava/lang/String;

    invoke-interface {p1, p3, v1}, Lcom/j256/ormlite/dao/Dao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 113
    const-string p3, "ALTER TABLE `SdMODocument` ADD `f_trashed` SMALLINT DEFAULT 0;"

    new-array v1, v0, [Ljava/lang/String;

    invoke-interface {p1, p3, v1}, Lcom/j256/ormlite/dao/Dao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 114
    const-string p3, "ALTER TABLE `SdMODocument` ADD `f_isCopiedShareNote` SMALLINT DEFAULT 0;"

    new-array v1, v0, [Ljava/lang/String;

    invoke-interface {p1, p3, v1}, Lcom/j256/ormlite/dao/Dao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 116
    const-string p3, "CREATE INDEX `SdMODocument_f_optionsUpdateFlag_idx` ON `SdMODocument` ( `f_optionsUpdateFlag` );"

    new-array v1, v0, [Ljava/lang/String;

    invoke-interface {p1, p3, v1}, Lcom/j256/ormlite/dao/Dao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 117
    const-string p3, "CREATE INDEX `SdMODocument_f_priority_idx` ON `SdMODocument` ( `f_priority` );"

    new-array v1, v0, [Ljava/lang/String;

    invoke-interface {p1, p3, v1}, Lcom/j256/ormlite/dao/Dao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 118
    const-string p3, "CREATE INDEX `SdMODocument_f_trashed_idx` ON `SdMODocument` ( `f_trashed` );"

    new-array v1, v0, [Ljava/lang/String;

    invoke-interface {p1, p3, v1}, Lcom/j256/ormlite/dao/Dao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 119
    const-string p3, "CREATE INDEX `SdMODocument_f_isCopiedShareNote_idx` ON `SdMODocument` ( `f_isCopiedShareNote` );"

    new-array v1, v0, [Ljava/lang/String;

    invoke-interface {p1, p3, v1}, Lcom/j256/ormlite/dao/Dao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 121
    const-class p1, Lcom/metamoji/sd/entities/SdMOPoolDocument;

    invoke-virtual {p0, p1}, Lcom/metamoji/sd/SdDriveContentsDatabaseHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object p1

    .line 122
    const-string p3, "ALTER TABLE `SdMOPoolDocument` ADD `f_companyId` VARCHAR;"

    new-array v1, v0, [Ljava/lang/String;

    invoke-interface {p1, p3, v1}, Lcom/j256/ormlite/dao/Dao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 123
    const-string p3, "ALTER TABLE `SdMOPoolDocument` ADD `f_roomId` VARCHAR;"

    new-array v1, v0, [Ljava/lang/String;

    invoke-interface {p1, p3, v1}, Lcom/j256/ormlite/dao/Dao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 124
    const-string p3, "ALTER TABLE `SdMOPoolDocument` ADD `f_contentsCreateUserId` VARCHAR;"

    new-array v1, v0, [Ljava/lang/String;

    invoke-interface {p1, p3, v1}, Lcom/j256/ormlite/dao/Dao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 125
    const-string p3, "ALTER TABLE `SdMOPoolDocument` ADD `f_contentsUpdateUserId` VARCHAR;"

    new-array v1, v0, [Ljava/lang/String;

    invoke-interface {p1, p3, v1}, Lcom/j256/ormlite/dao/Dao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 126
    const-string p3, "ALTER TABLE `SdMOPoolDocument` ADD `f_options` INTEGER DEFAULT 0;"

    new-array v1, v0, [Ljava/lang/String;

    invoke-interface {p1, p3, v1}, Lcom/j256/ormlite/dao/Dao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 127
    const-string p3, "ALTER TABLE `SdMOPoolDocument` ADD `f_optionsRevision` VARCHAR;"

    new-array v1, v0, [Ljava/lang/String;

    invoke-interface {p1, p3, v1}, Lcom/j256/ormlite/dao/Dao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 128
    const-string p3, "ALTER TABLE `SdMOPoolDocument` ADD `f_optionsUpdate` BIGINT DEFAULT 1388534400000;"

    new-array v1, v0, [Ljava/lang/String;

    invoke-interface {p1, p3, v1}, Lcom/j256/ormlite/dao/Dao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 129
    const-string p3, "ALTER TABLE `SdMOPoolDocument` ADD `f_searchData` VARCHAR;"

    new-array v1, v0, [Ljava/lang/String;

    invoke-interface {p1, p3, v1}, Lcom/j256/ormlite/dao/Dao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 130
    const-string p3, "ALTER TABLE `SdMOPoolDocument` ADD `f_lastSequence` VARCHAR;"

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, p3, v0}, Lcom/j256/ormlite/dao/Dao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 132
    const-class p1, Lcom/metamoji/sd/entities/SdMODocumentRoom;

    invoke-static {p2, p1}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 133
    const-class p1, Lcom/metamoji/sd/entities/SdMODocumentSearchData;

    invoke-static {p2, p1}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;)V
    .locals 5

    .line 41
    const-string p1, "/"

    :try_start_0
    iget-object p2, p0, Lcom/metamoji/sd/SdDriveContentsDatabaseHelper;->connectionSource:Lcom/j256/ormlite/android/AndroidConnectionSource;

    const-class v0, Lcom/metamoji/sd/entities/SdMOTag;

    invoke-static {p2, v0}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 42
    iget-object p2, p0, Lcom/metamoji/sd/SdDriveContentsDatabaseHelper;->connectionSource:Lcom/j256/ormlite/android/AndroidConnectionSource;

    const-class v0, Lcom/metamoji/sd/entities/SdMOTagOrder;

    invoke-static {p2, v0}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 43
    iget-object p2, p0, Lcom/metamoji/sd/SdDriveContentsDatabaseHelper;->connectionSource:Lcom/j256/ormlite/android/AndroidConnectionSource;

    const-class v0, Lcom/metamoji/sd/entities/SdMOThumbnailCache;

    invoke-static {p2, v0}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 44
    iget-object p2, p0, Lcom/metamoji/sd/SdDriveContentsDatabaseHelper;->connectionSource:Lcom/j256/ormlite/android/AndroidConnectionSource;

    const-class v0, Lcom/metamoji/sd/entities/SdMOFolder;

    invoke-static {p2, v0}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 45
    iget-object p2, p0, Lcom/metamoji/sd/SdDriveContentsDatabaseHelper;->connectionSource:Lcom/j256/ormlite/android/AndroidConnectionSource;

    const-class v0, Lcom/metamoji/sd/entities/SdMODocument;

    invoke-static {p2, v0}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 46
    iget-object p2, p0, Lcom/metamoji/sd/SdDriveContentsDatabaseHelper;->connectionSource:Lcom/j256/ormlite/android/AndroidConnectionSource;

    const-class v0, Lcom/metamoji/sd/entities/SdMODocumentTag;

    invoke-static {p2, v0}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 47
    iget-object p2, p0, Lcom/metamoji/sd/SdDriveContentsDatabaseHelper;->connectionSource:Lcom/j256/ormlite/android/AndroidConnectionSource;

    const-class v0, Lcom/metamoji/sd/entities/SdMOPoolDocument;

    invoke-static {p2, v0}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 48
    iget-object p2, p0, Lcom/metamoji/sd/SdDriveContentsDatabaseHelper;->connectionSource:Lcom/j256/ormlite/android/AndroidConnectionSource;

    const-class v0, Lcom/metamoji/sd/entities/SdMODocumentRoom;

    invoke-static {p2, v0}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 49
    iget-object p2, p0, Lcom/metamoji/sd/SdDriveContentsDatabaseHelper;->connectionSource:Lcom/j256/ormlite/android/AndroidConnectionSource;

    const-class v0, Lcom/metamoji/sd/entities/SdMODocumentSearchData;

    invoke-static {p2, v0}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 51
    const-class p2, Lcom/metamoji/sd/entities/SdMODocumentTag;

    invoke-virtual {p0, p2}, Lcom/metamoji/sd/SdDriveContentsDatabaseHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object p2

    .line 52
    const-string v0, "CREATE INDEX `SdMODocumentTag_f_tags_f_name_idx` ON `SdMODocumentTag` ( `f_tags`,`f_name` );"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-interface {p2, v0, v2}, Lcom/j256/ormlite/dao/Dao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 55
    const-class p2, Lcom/metamoji/sd/entities/SdMOTagOrder;

    invoke-virtual {p0, p2}, Lcom/metamoji/sd/SdDriveContentsDatabaseHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object p2

    .line 56
    const-class v0, Lcom/metamoji/sd/entities/SdMOFolder;

    invoke-virtual {p0, v0}, Lcom/metamoji/sd/SdDriveContentsDatabaseHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    .line 58
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 59
    new-instance v3, Lcom/metamoji/sd/entities/SdMOTagOrder;

    invoke-direct {v3}, Lcom/metamoji/sd/entities/SdMOTagOrder;-><init>()V

    .line 60
    invoke-virtual {v3, p1}, Lcom/metamoji/sd/entities/SdMOTagOrder;->setId(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v3, v2}, Lcom/metamoji/sd/entities/SdMOTagOrder;->setUpdate(Ljava/util/Date;)V

    .line 62
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Lcom/metamoji/sd/entities/SdMOTagOrder;->setUpdateFlag(Ljava/lang/Boolean;)V

    .line 63
    invoke-interface {p2, v3}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    .line 65
    new-instance p2, Lcom/metamoji/sd/entities/SdMOFolder;

    invoke-direct {p2}, Lcom/metamoji/sd/entities/SdMOFolder;-><init>()V

    .line 66
    invoke-virtual {p2, p1}, Lcom/metamoji/sd/entities/SdMOFolder;->setAbsPath(Ljava/lang/String;)V

    .line 67
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/metamoji/sd/entities/SdMOFolder;->setDepth(Ljava/lang/Integer;)V

    .line 68
    invoke-virtual {p2, v2}, Lcom/metamoji/sd/entities/SdMOFolder;->setChildrenOrderUpdate(Ljava/util/Date;)V

    .line 69
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, p1}, Lcom/metamoji/sd/entities/SdMOFolder;->setChildrenOrderUpdateFlag(Ljava/lang/Boolean;)V

    .line 70
    invoke-virtual {p2, v2}, Lcom/metamoji/sd/entities/SdMOFolder;->setUpdate(Ljava/util/Date;)V

    .line 71
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, p1}, Lcom/metamoji/sd/entities/SdMOFolder;->setUpdateFlag(Ljava/lang/Boolean;)V

    .line 72
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, p1}, Lcom/metamoji/sd/entities/SdMOFolder;->setDeleteFlag(Ljava/lang/Boolean;)V

    .line 73
    invoke-interface {v0, p2}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 76
    const-string p2, "Failed to create db"

    invoke-static {p1, p2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;II)V
    .locals 0

    :goto_0
    add-int/lit8 p3, p3, 0x1

    if-gt p3, p4, :cond_0

    .line 89
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/sd/SdDriveContentsDatabaseHelper;->upgrade(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;I)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 92
    const-string p2, "Failed to upgrade db"

    invoke-static {p1, p2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
