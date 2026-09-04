.class public Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;
.super Ljava/lang/Object;
.source "DmCoreDataManager.java"


# static fields
.field private static _transactionId:Ljava/util/UUID;

.field private static final m_lockObject:Ljava/lang/Object;

.field private static m_manager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;


# instance fields
.field private final DEFAULT_FETCH_BATCH_SIZE:I

.field private m_managedObjectContext:Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->m_lockObject:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    .line 20
    iput v0, p0, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->DEFAULT_FETCH_BATCH_SIZE:I

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->m_managedObjectContext:Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;

    .line 49
    invoke-virtual {p0}, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->managedObjectContext()Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;

    return-void
.end method

.method public static commit(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 147
    const-string p0, "error context is nil."

    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    return v0

    .line 151
    :cond_0
    invoke-virtual {p1, p0}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;->save(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 153
    const-string p0, "Unresolved error in saving"

    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static sharedManager()Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;
    .locals 2

    .line 36
    sget-object v0, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->m_lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 38
    :try_start_0
    sget-object v1, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->m_manager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    if-nez v1, :cond_0

    .line 39
    new-instance v1, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    invoke-direct {v1}, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;-><init>()V

    sput-object v1, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->m_manager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    .line 40
    :cond_0
    sget-object v1, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->m_manager:Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 41
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public deleteManagedObject(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Z
    .locals 0

    .line 137
    invoke-virtual {p3, p1, p2}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;->deleteObject(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;)Z

    move-result p1

    return p1
.end method

.method public deleteManagedObjectAndCommit(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 112
    :cond_0
    sget-object v1, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->m_lockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 114
    :try_start_0
    invoke-virtual {p2}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;->objectID()Lcom/metamoji/dm/fw/metadata/DmManagedObjectId;

    move-result-object v2

    .line 115
    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->deleteManagedObject(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 117
    monitor-exit v1

    return v0

    .line 123
    :cond_1
    invoke-virtual {p3, p1}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;->reset(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;)V

    .line 126
    invoke-virtual {p0, p1, v2, v0}, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->refreshManagedObject(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;Lcom/metamoji/dm/fw/metadata/DmManagedObjectId;Z)V

    .line 127
    monitor-exit v1

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public endTransaction(Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;Ljava/util/UUID;Z)Z
    .locals 1

    .line 228
    sget-object v0, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->_transactionId:Ljava/util/UUID;

    invoke-virtual {v0, p3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p3, 0x0

    .line 230
    sput-object p3, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->_transactionId:Ljava/util/UUID;

    if-eqz p4, :cond_2

    .line 233
    invoke-virtual {p1, p2}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;->commitAndRefreshAndReset(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 235
    invoke-virtual {p1, p2}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;->rollbackAndReset(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;)V

    :cond_1
    return p3

    .line 238
    :cond_2
    invoke-virtual {p1, p2}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;->rollbackAndReset(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;)V

    const/4 p1, 0x1

    return p1
.end method

.method public executeFetchRequest(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;Lcom/metamoji/dm/fw/metadata/DmPredicate;Ljava/util/ArrayList;II)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;",
            "Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;",
            "Lcom/metamoji/dm/fw/metadata/DmPredicate;",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/dm/fw/metadata/DmSortDescriptor;",
            ">;II)",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;",
            ">;"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 82
    invoke-virtual {p1, p3}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;->setPredicate(Lcom/metamoji/dm/fw/metadata/DmPredicate;)V

    :cond_0
    if-eqz p4, :cond_1

    .line 84
    invoke-virtual {p1, p4}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;->setSortDescriptors(Ljava/util/ArrayList;)V

    :cond_1
    const/16 p3, 0x14

    .line 85
    invoke-virtual {p1, p3}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;->setFetchBatchSize(I)V

    .line 86
    invoke-virtual {p1, p5}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;->setFetchOffset(I)V

    .line 87
    invoke-virtual {p1, p6}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;->setFetchLimit(I)V

    .line 89
    invoke-virtual {p2, p1}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;->executeFetchRequest(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_2

    .line 92
    const-string p1, "executeFetchRequest : Unresolved error"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_2
    return-object p1
.end method

.method public executeInTransaction(Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;",
            "Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 202
    invoke-virtual {p1, p2, p3}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;->executeInTransaction(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public managedObjectContext()Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->m_managedObjectContext:Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;

    if-eqz v0, :cond_0

    return-object v0

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->newManagedObjectContext()Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->m_managedObjectContext:Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;

    return-object v0
.end method

.method public managedObjectContextForUpdate()Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;
    .locals 1

    .line 59
    invoke-virtual {p0}, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->newManagedObjectContext()Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;

    move-result-object v0

    return-object v0
.end method

.method public newManagedObjectContext()Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;
    .locals 1

    .line 54
    new-instance v0, Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;

    invoke-direct {v0}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;-><init>()V

    return-object v0
.end method

.method public putManagedObject(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Z
    .locals 0

    .line 101
    invoke-virtual {p3, p1, p2}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;->putObject(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;)Z

    move-result p1

    return p1
.end method

.method public recordCount(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;)I
    .locals 1

    const/4 v0, 0x0

    .line 185
    invoke-virtual {p1, v0}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;->setIncludesSubentities(Z)V

    .line 187
    iget-object v0, p0, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->m_managedObjectContext:Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;

    invoke-virtual {v0, p1}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;->countForFetchRequest(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;)I

    move-result p1

    return p1
.end method

.method public refreshManagedObject(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;Lcom/metamoji/dm/fw/metadata/DmManagedObjectId;)V
    .locals 1

    const/4 v0, 0x1

    .line 164
    invoke-virtual {p0, p1, p2, v0}, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->refreshManagedObject(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;Lcom/metamoji/dm/fw/metadata/DmManagedObjectId;Z)V

    return-void
.end method

.method public refreshManagedObject(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;Lcom/metamoji/dm/fw/metadata/DmManagedObjectId;Z)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 172
    :cond_0
    sget-object v0, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->m_lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 174
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->m_managedObjectContext:Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;

    invoke-virtual {v1, p1, p2}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;->objectWithID(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;Lcom/metamoji/dm/fw/metadata/DmManagedObjectId;)Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 176
    iget-object v1, p0, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->m_managedObjectContext:Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;

    invoke-virtual {v1, p1, p2, p3}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;->refreshObject(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;Z)V

    .line 177
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public reset(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;)V
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->m_managedObjectContext:Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;

    invoke-virtual {v0, p1}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;->reset(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;)V

    return-void
.end method

.method public startTransaction(Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;)Ljava/util/UUID;
    .locals 2

    .line 212
    sget-object v0, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->m_lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 214
    :try_start_0
    sget-object v1, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->_transactionId:Ljava/util/UUID;

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    .line 215
    monitor-exit v0

    return-object p1

    .line 216
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    sput-object v1, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->_transactionId:Ljava/util/UUID;

    .line 217
    invoke-virtual {p1, p2}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;->startTransaction(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;)V

    .line 218
    sget-object p1, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->_transactionId:Ljava/util/UUID;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 219
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
