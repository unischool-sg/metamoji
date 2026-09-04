.class public Lcom/metamoji/dm/fw/contents/DmContentsDatabaseHelper;
.super Lcom/metamoji/dm/fw/DmDatabaseHelper;
.source "DmContentsDatabaseHelper.java"


# static fields
.field private static final DATABASE_DIR:Ljava/lang/String; = "/.contents"

.field private static final DATABASE_NAME:Ljava/lang/String; = "/MMJDmContentsManager.db"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final _lockObj:Ljava/lang/Object;

.field private static _sharedInstance:Lcom/metamoji/dm/fw/contents/DmContentsDatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/metamoji/dm/fw/contents/DmContentsDatabaseHelper;->_lockObj:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 35
    const-string v0, "/.contents/MMJDmContentsManager.db"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/metamoji/dm/fw/DmDatabaseHelper;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getSharedInstance()Lcom/metamoji/dm/fw/contents/DmContentsDatabaseHelper;
    .locals 2

    .line 43
    sget-object v0, Lcom/metamoji/dm/fw/contents/DmContentsDatabaseHelper;->_lockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 45
    :try_start_0
    sget-object v1, Lcom/metamoji/dm/fw/contents/DmContentsDatabaseHelper;->_sharedInstance:Lcom/metamoji/dm/fw/contents/DmContentsDatabaseHelper;

    if-nez v1, :cond_0

    .line 46
    new-instance v1, Lcom/metamoji/dm/fw/contents/DmContentsDatabaseHelper;

    invoke-direct {v1}, Lcom/metamoji/dm/fw/contents/DmContentsDatabaseHelper;-><init>()V

    sput-object v1, Lcom/metamoji/dm/fw/contents/DmContentsDatabaseHelper;->_sharedInstance:Lcom/metamoji/dm/fw/contents/DmContentsDatabaseHelper;

    .line 47
    :cond_0
    sget-object v1, Lcom/metamoji/dm/fw/contents/DmContentsDatabaseHelper;->_sharedInstance:Lcom/metamoji/dm/fw/contents/DmContentsDatabaseHelper;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 48
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
