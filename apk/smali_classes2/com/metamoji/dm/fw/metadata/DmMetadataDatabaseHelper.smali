.class public Lcom/metamoji/dm/fw/metadata/DmMetadataDatabaseHelper;
.super Lcom/metamoji/dm/fw/DmDatabaseHelper;
.source "DmMetadataDatabaseHelper.java"


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "/MMJDmStorageManager.db"

.field private static final DATABASE_VERSION:I = 0x2

.field private static final METADATA_DIR:Ljava/lang/String; = "/.metadata"

.field private static final _lockObj:Ljava/lang/Object;

.field private static _sharedInstance:Lcom/metamoji/dm/fw/metadata/DmMetadataDatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/metamoji/dm/fw/metadata/DmMetadataDatabaseHelper;->_lockObj:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 41
    const-string v0, "/.metadata/MMJDmStorageManager.db"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/metamoji/dm/fw/DmDatabaseHelper;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getSharedInstance()Lcom/metamoji/dm/fw/metadata/DmMetadataDatabaseHelper;
    .locals 2

    .line 49
    sget-object v0, Lcom/metamoji/dm/fw/metadata/DmMetadataDatabaseHelper;->_lockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 51
    :try_start_0
    sget-object v1, Lcom/metamoji/dm/fw/metadata/DmMetadataDatabaseHelper;->_sharedInstance:Lcom/metamoji/dm/fw/metadata/DmMetadataDatabaseHelper;

    if-nez v1, :cond_0

    .line 52
    new-instance v1, Lcom/metamoji/dm/fw/metadata/DmMetadataDatabaseHelper;

    invoke-direct {v1}, Lcom/metamoji/dm/fw/metadata/DmMetadataDatabaseHelper;-><init>()V

    sput-object v1, Lcom/metamoji/dm/fw/metadata/DmMetadataDatabaseHelper;->_sharedInstance:Lcom/metamoji/dm/fw/metadata/DmMetadataDatabaseHelper;

    .line 53
    :cond_0
    sget-object v1, Lcom/metamoji/dm/fw/metadata/DmMetadataDatabaseHelper;->_sharedInstance:Lcom/metamoji/dm/fw/metadata/DmMetadataDatabaseHelper;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 54
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private upgrade(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 p1, 0x2

    if-eq p3, p1, :cond_0

    return-void

    .line 92
    :cond_0
    const-class p1, Lcom/metamoji/dm/impl/metadata/entity/DmDocumentMetaData;

    invoke-virtual {p0, p1}, Lcom/metamoji/dm/fw/metadata/DmMetadataDatabaseHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object p1

    const/4 p2, 0x0

    .line 93
    new-array p2, p2, [Ljava/lang/String;

    const-string p3, "ALTER TABLE `DmDocumentMetaData` ADD `mimeType` VARCHAR;"

    invoke-interface {p1, p3, p2}, Lcom/j256/ormlite/dao/Dao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;)V
    .locals 0

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;II)V
    .locals 0

    :goto_0
    add-int/lit8 p3, p3, 0x1

    if-gt p3, p4, :cond_0

    .line 78
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/dm/fw/metadata/DmMetadataDatabaseHelper;->upgrade(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;I)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 81
    const-string p2, "Failed to upgrade"

    invoke-static {p1, p2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
