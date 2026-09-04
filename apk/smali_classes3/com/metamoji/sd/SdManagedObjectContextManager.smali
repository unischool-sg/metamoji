.class public Lcom/metamoji/sd/SdManagedObjectContextManager;
.super Ljava/lang/Object;
.source "SdManagedObjectContextManager.java"


# static fields
.field private static final DATABASE_DIR:Ljava/lang/String; = "/.sdstorage"

.field private static final MAX_POOL_HELPER_COUNT:I = 0x3

.field private static _lockObjects:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected m_dbpath:Ljava/lang/String;

.field protected m_discarded:Z

.field protected m_helper:Lcom/metamoji/sd/SdDatabaseHelper;

.field protected m_lockObject:Ljava/lang/Object;

.field protected m_pool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/sd/SdDatabaseHelper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/metamoji/sd/SdManagedObjectContextManager;->m_lockObject:Ljava/lang/Object;

    .line 21
    iput-object v0, p0, Lcom/metamoji/sd/SdManagedObjectContextManager;->m_dbpath:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/metamoji/sd/SdManagedObjectContextManager;->m_helper:Lcom/metamoji/sd/SdDatabaseHelper;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/sd/SdManagedObjectContextManager;->m_pool:Ljava/util/ArrayList;

    .line 68
    iput-object p1, p0, Lcom/metamoji/sd/SdManagedObjectContextManager;->m_dbpath:Ljava/lang/String;

    .line 69
    invoke-static {p1}, Lcom/metamoji/sd/SdManagedObjectContextManager;->getLockObjectFromDbPath(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/sd/SdManagedObjectContextManager;->m_lockObject:Ljava/lang/Object;

    return-void
.end method

.method public static getDatabaseFileDir()Ljava/lang/String;
    .locals 2

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getPrivateDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/.sdstorage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDatabaseFilePathWithFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 40
    invoke-static {}, Lcom/metamoji/sd/SdManagedObjectContextManager;->getDatabaseFileDir()Ljava/lang/String;

    move-result-object v0

    .line 41
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 43
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 45
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static declared-synchronized getLockObjectFromDbPath(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    const-class v0, Lcom/metamoji/sd/SdManagedObjectContextManager;

    monitor-enter v0

    .line 53
    :try_start_0
    sget-object v1, Lcom/metamoji/sd/SdManagedObjectContextManager;->_lockObjects:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 54
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/metamoji/sd/SdManagedObjectContextManager;->_lockObjects:Ljava/util/HashMap;

    .line 56
    :cond_0
    sget-object v1, Lcom/metamoji/sd/SdManagedObjectContextManager;->_lockObjects:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 58
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 59
    sget-object v2, Lcom/metamoji/sd/SdManagedObjectContextManager;->_lockObjects:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;
    .locals 4

    .line 87
    iget-object v0, p0, Lcom/metamoji/sd/SdManagedObjectContextManager;->m_helper:Lcom/metamoji/sd/SdDatabaseHelper;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 93
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/sd/SdManagedObjectContextManager;->getDatabaseHelper()Lcom/metamoji/sd/SdDatabaseHelper;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_1

    .line 95
    :try_start_1
    new-instance v1, Lcom/metamoji/sd/SdManagedObjectContext;

    iget-object v2, p0, Lcom/metamoji/sd/SdManagedObjectContextManager;->m_lockObject:Ljava/lang/Object;

    invoke-direct {v1, v0, v2}, Lcom/metamoji/sd/SdManagedObjectContext;-><init>(Lcom/metamoji/sd/SdDatabaseHelper;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 99
    invoke-virtual {v0}, Lcom/metamoji/sd/SdDatabaseHelper;->releaseReference()V

    :cond_2
    return-object v1

    :catchall_1
    move-exception v0

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDatabaseHelper;->releaseReference()V

    .line 101
    :cond_3
    throw v1
.end method

.method protected createDatabaseHelper()Lcom/metamoji/sd/SdDatabaseHelper;
    .locals 1

    .line 166
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public declared-synchronized discard()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    .line 177
    :try_start_0
    iput-boolean v0, p0, Lcom/metamoji/sd/SdManagedObjectContextManager;->m_discarded:Z

    .line 179
    iget-object v0, p0, Lcom/metamoji/sd/SdManagedObjectContextManager;->m_pool:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/sd/SdDatabaseHelper;

    .line 180
    invoke-virtual {v1}, Lcom/metamoji/sd/SdDatabaseHelper;->releaseReference()V

    goto :goto_0

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/metamoji/sd/SdManagedObjectContextManager;->m_pool:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 184
    iget-object v0, p0, Lcom/metamoji/sd/SdManagedObjectContextManager;->m_helper:Lcom/metamoji/sd/SdDatabaseHelper;

    if-eqz v0, :cond_1

    .line 185
    invoke-virtual {v0}, Lcom/metamoji/sd/SdDatabaseHelper;->releaseReference()V

    const/4 v0, 0x0

    .line 186
    iput-object v0, p0, Lcom/metamoji/sd/SdManagedObjectContextManager;->m_helper:Lcom/metamoji/sd/SdDatabaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public doMigration()V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/metamoji/sd/SdManagedObjectContextManager;->m_lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 113
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/sd/SdManagedObjectContextManager;->createDatabaseHelper()Lcom/metamoji/sd/SdDatabaseHelper;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 116
    :try_start_1
    invoke-virtual {v1}, Lcom/metamoji/sd/SdDatabaseHelper;->releaseReference()V

    .line 119
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 118
    throw v1

    :catchall_1
    move-exception v1

    .line 119
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method public getDatabaseFilePath()Ljava/lang/String;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/metamoji/sd/SdManagedObjectContextManager;->m_dbpath:Ljava/lang/String;

    return-object v0
.end method

.method protected declared-synchronized getDatabaseHelper()Lcom/metamoji/sd/SdDatabaseHelper;
    .locals 5

    monitor-enter p0

    .line 142
    :try_start_0
    iget-boolean v0, p0, Lcom/metamoji/sd/SdManagedObjectContextManager;->m_discarded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 143
    monitor-exit p0

    return-object v1

    .line 146
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/metamoji/sd/SdManagedObjectContextManager;->m_pool:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/sd/SdDatabaseHelper;

    .line 147
    invoke-virtual {v2}, Lcom/metamoji/sd/SdDatabaseHelper;->getReferenceCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 149
    invoke-virtual {v2}, Lcom/metamoji/sd/SdDatabaseHelper;->addReference()V

    move-object v1, v2

    :cond_2
    if-nez v1, :cond_3

    .line 155
    invoke-virtual {p0}, Lcom/metamoji/sd/SdManagedObjectContextManager;->createDatabaseHelper()Lcom/metamoji/sd/SdDatabaseHelper;

    move-result-object v1

    .line 156
    iget-object v0, p0, Lcom/metamoji/sd/SdManagedObjectContextManager;->m_pool:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_3

    .line 157
    iget-object v0, p0, Lcom/metamoji/sd/SdManagedObjectContextManager;->m_pool:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    invoke-virtual {v1}, Lcom/metamoji/sd/SdDatabaseHelper;->addReference()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    :cond_3
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public isDbFileExists()Z
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/metamoji/sd/SdManagedObjectContextManager;->m_dbpath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 127
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/metamoji/sd/SdManagedObjectContextManager;->m_dbpath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isDiscarded()Z
    .locals 1

    .line 170
    iget-boolean v0, p0, Lcom/metamoji/sd/SdManagedObjectContextManager;->m_discarded:Z

    return v0
.end method

.method public setupMainContext()V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/metamoji/sd/SdManagedObjectContextManager;->m_lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 77
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/sd/SdManagedObjectContextManager;->createDatabaseHelper()Lcom/metamoji/sd/SdDatabaseHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/sd/SdManagedObjectContextManager;->m_helper:Lcom/metamoji/sd/SdDatabaseHelper;

    .line 79
    invoke-virtual {v1}, Lcom/metamoji/sd/SdDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 80
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
