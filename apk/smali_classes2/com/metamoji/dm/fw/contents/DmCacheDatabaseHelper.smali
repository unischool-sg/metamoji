.class public Lcom/metamoji/dm/fw/contents/DmCacheDatabaseHelper;
.super Lcom/metamoji/dm/fw/DmDatabaseHelper;
.source "DmCacheDatabaseHelper.java"


# static fields
.field private static final DATABASE_DIR:Ljava/lang/String; = "com.metamoji.dm.cache"

.field private static final DATABASE_NAME:Ljava/lang/String; = "/MMJDmCacheManager.db"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final _lockObj:Ljava/lang/Object;

.field private static _sharedInstance:Lcom/metamoji/dm/fw/contents/DmCacheDatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/metamoji/dm/fw/contents/DmCacheDatabaseHelper;->_lockObj:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 36
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    .line 37
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "com.metamoji.dm.cache/MMJDmCacheManager.db"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 36
    invoke-direct {p0, v0, v1, v2}, Lcom/metamoji/dm/fw/DmDatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static getSharedInstance()Lcom/metamoji/dm/fw/contents/DmCacheDatabaseHelper;
    .locals 2

    .line 45
    sget-object v0, Lcom/metamoji/dm/fw/contents/DmCacheDatabaseHelper;->_lockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 46
    :try_start_0
    sget-object v1, Lcom/metamoji/dm/fw/contents/DmCacheDatabaseHelper;->_sharedInstance:Lcom/metamoji/dm/fw/contents/DmCacheDatabaseHelper;

    if-nez v1, :cond_0

    .line 47
    new-instance v1, Lcom/metamoji/dm/fw/contents/DmCacheDatabaseHelper;

    invoke-direct {v1}, Lcom/metamoji/dm/fw/contents/DmCacheDatabaseHelper;-><init>()V

    sput-object v1, Lcom/metamoji/dm/fw/contents/DmCacheDatabaseHelper;->_sharedInstance:Lcom/metamoji/dm/fw/contents/DmCacheDatabaseHelper;

    .line 48
    :cond_0
    sget-object v1, Lcom/metamoji/dm/fw/contents/DmCacheDatabaseHelper;->_sharedInstance:Lcom/metamoji/dm/fw/contents/DmCacheDatabaseHelper;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 49
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;)V
    .locals 0

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;II)V
    .locals 0

    return-void
.end method
