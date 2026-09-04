.class public Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;
.super Lcom/metamoji/un/draw2/jni/library/mesh/MeshManager;
.source "DrMsMeshManager.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static localOwnerProxy:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/metamoji/un/draw2/library/mesh/OwnerProxy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final m_bounds:Lcom/metamoji/cm/RectEx;

.field private m_instance:J

.field private m_queued_blocks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/cm/RectEx;",
            ">;>;"
        }
    .end annotation
.end field

.field private final m_rlock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

.field private final m_rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private final m_wlock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 331
    new-instance v0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager$1;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager$1;-><init>()V

    sput-object v0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->localOwnerProxy:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/cm/RectEx;)V
    .locals 6

    .line 34
    invoke-direct {p0}, Lcom/metamoji/un/draw2/jni/library/mesh/MeshManager;-><init>()V

    .line 20
    new-instance v0, Lcom/metamoji/cm/RectEx;

    invoke-direct {v0}, Lcom/metamoji/cm/RectEx;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_bounds:Lcom/metamoji/cm/RectEx;

    const/4 v1, 0x0

    .line 27
    iput-object v1, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_queued_blocks:Ljava/util/HashMap;

    .line 29
    new-instance v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v1, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 30
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    iput-object v2, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_rlock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 31
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_wlock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 35
    invoke-static {}, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->native_create()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_instance:J

    .line 36
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectIsNull(Lcom/metamoji/cm/RectEx;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_queued_blocks:Ljava/util/HashMap;

    return-void

    .line 39
    :cond_0
    invoke-virtual {v0, p1}, Lcom/metamoji/cm/RectEx;->set(Lcom/metamoji/cm/RectEx;)V

    .line 40
    iget-wide v0, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_instance:J

    iget v2, p1, Lcom/metamoji/cm/RectEx;->x:F

    iget v3, p1, Lcom/metamoji/cm/RectEx;->y:F

    iget v4, p1, Lcom/metamoji/cm/RectEx;->x:F

    iget v5, p1, Lcom/metamoji/cm/RectEx;->width:F

    add-float/2addr v4, v5

    iget v5, p1, Lcom/metamoji/cm/RectEx;->height:F

    invoke-static/range {v0 .. v5}, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->native_updateBounds(JFFFF)V

    return-void
.end method


# virtual methods
.method public addBlock(Lcom/metamoji/cm/RectEx;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V
    .locals 10

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_wlock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 60
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_queued_blocks:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 61
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 64
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_queued_blocks:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :goto_0
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_wlock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    .line 70
    :cond_1
    :try_start_1
    iget-wide v0, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_instance:J

    iget v2, p1, Lcom/metamoji/cm/RectEx;->x:F

    iget v3, p1, Lcom/metamoji/cm/RectEx;->y:F

    iget v4, p1, Lcom/metamoji/cm/RectEx;->x:F

    iget v5, p1, Lcom/metamoji/cm/RectEx;->width:F

    add-float/2addr v4, v5

    iget v5, p1, Lcom/metamoji/cm/RectEx;->y:F

    iget p1, p1, Lcom/metamoji/cm/RectEx;->height:F

    add-float/2addr v5, p1

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->prefix()J

    move-result-wide v6

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->count()J

    move-result-wide v8

    invoke-static/range {v0 .. v9}, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->native_addBlock(JFFFFJJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 72
    iget-object p2, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_wlock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 73
    throw p1
.end method

.method public addBlocks(Ljava/util/List;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/cm/RectEx;",
            ">;",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ")V"
        }
    .end annotation

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_wlock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 80
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_queued_blocks:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 81
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 84
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_queued_blocks:Ljava/util/HashMap;

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    :goto_0
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_wlock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    .line 91
    :cond_1
    :try_start_1
    iget-wide v0, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_instance:J

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->prefix()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->count()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->native_addBlocksBegin(JJJ)V

    .line 92
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/cm/RectEx;

    .line 93
    iget-wide v0, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_instance:J

    iget v2, p2, Lcom/metamoji/cm/RectEx;->x:F

    iget v3, p2, Lcom/metamoji/cm/RectEx;->y:F

    iget v4, p2, Lcom/metamoji/cm/RectEx;->x:F

    iget v5, p2, Lcom/metamoji/cm/RectEx;->width:F

    add-float/2addr v4, v5

    iget v5, p2, Lcom/metamoji/cm/RectEx;->y:F

    iget p2, p2, Lcom/metamoji/cm/RectEx;->height:F

    add-float/2addr v5, p2

    invoke-static/range {v0 .. v5}, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->native_addBlocksExec(JFFFF)V

    goto :goto_1

    .line 95
    :cond_2
    iget-wide p1, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_instance:J

    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->native_addBlocksEnd(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 97
    iget-object p2, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_wlock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 98
    throw p1
.end method

.method public blockCount()I
    .locals 3

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_rlock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 187
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_queued_blocks:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 189
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 190
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v1, v2

    goto :goto_0

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_rlock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v1

    .line 195
    :cond_1
    :try_start_1
    iget-wide v0, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_instance:J

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->native_blockCount(J)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_rlock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_rlock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 198
    throw v0
.end method

.method public blockCountWithId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)I
    .locals 6

    .line 203
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_rlock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 205
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_queued_blocks:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 206
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 207
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    :goto_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_rlock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return p1

    .line 210
    :cond_1
    :try_start_1
    iget-wide v0, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_instance:J

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->prefix()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->count()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->native_blockCountWithId(JJJ)I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 212
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_rlock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 213
    throw p1
.end method

.method public bounds()Lcom/metamoji/cm/RectEx;
    .locals 2

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_rlock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 47
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_queued_blocks:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_rlock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    const/4 v0, 0x0

    return-object v0

    .line 50
    :cond_0
    :try_start_1
    new-instance v0, Lcom/metamoji/cm/RectEx;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_bounds:Lcom/metamoji/cm/RectEx;

    invoke-direct {v0, v1}, Lcom/metamoji/cm/RectEx;-><init>(Lcom/metamoji/cm/RectEx;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_rlock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_rlock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 53
    throw v0
.end method

.method public destroy()V
    .locals 2

    .line 315
    iget-wide v0, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_instance:J

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->native_destroy(J)V

    const-wide/16 v0, 0x0

    .line 316
    iput-wide v0, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_instance:J

    return-void
.end method

.method public directSearchWithContext(Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;",
            ")",
            "Ljava/util/Map<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            "[I>;"
        }
    .end annotation

    .line 286
    :try_start_0
    new-instance v2, Lcom/metamoji/un/draw2/library/mesh/InternalOwner;

    invoke-direct {v2}, Lcom/metamoji/un/draw2/library/mesh/InternalOwner;-><init>()V

    .line 288
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_rlock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 290
    sget-object v0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager$2;->$SwitchMap$com$metamoji$un$draw2$library$mesh$DrMsSearchContext$DrMsSearchType:[I

    iget-object v1, p1, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;->type:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext$DrMsSearchType;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext$DrMsSearchType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 300
    :cond_0
    iget-object p1, p1, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;->area:Landroid/graphics/Path;

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPathGetPathBoundingBox(Landroid/graphics/Path;)Landroid/graphics/RectF;

    move-result-object p1

    .line 301
    iget-wide v0, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_instance:J

    iget v3, p1, Landroid/graphics/RectF;->left:F

    iget v4, p1, Landroid/graphics/RectF;->top:F

    iget v5, p1, Landroid/graphics/RectF;->right:F

    iget v6, p1, Landroid/graphics/RectF;->bottom:F

    invoke-static/range {v0 .. v6}, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->native_directSearchWithBounds(JLcom/metamoji/un/draw2/jni/library/mesh/SearchOwner;FFFF)V

    goto :goto_0

    .line 296
    :cond_1
    iget-object v0, p1, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;->point1:Landroid/graphics/PointF;

    iget-object v1, p1, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;->point2:Landroid/graphics/PointF;

    move-object v3, v0

    move-object v4, v1

    .line 297
    iget-wide v0, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_instance:J

    move-object v5, v3

    iget v3, v5, Landroid/graphics/PointF;->x:F

    iget v5, v5, Landroid/graphics/PointF;->y:F

    move-object v6, v4

    move v4, v5

    iget v5, v6, Landroid/graphics/PointF;->x:F

    iget v6, v6, Landroid/graphics/PointF;->y:F

    iget v7, p1, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;->hitTestMargin:F

    invoke-static/range {v0 .. v7}, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->native_directSearchWithSegment(JLcom/metamoji/un/draw2/jni/library/mesh/SearchOwner;FFFFF)V

    goto :goto_0

    .line 292
    :cond_2
    iget-object v0, p1, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;->point1:Landroid/graphics/PointF;

    move-object v3, v0

    .line 293
    iget-wide v0, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_instance:J

    move-object v4, v3

    iget v3, v4, Landroid/graphics/PointF;->x:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget v5, p1, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;->hitTestMargin:F

    invoke-static/range {v0 .. v5}, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->native_directSearchWithPoint(JLcom/metamoji/un/draw2/jni/library/mesh/SearchOwner;FFF)V

    .line 306
    :goto_0
    iget-object p1, v2, Lcom/metamoji/un/draw2/library/mesh/InternalOwner;->result:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_rlock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    iget-object v0, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_rlock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 310
    throw p1
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 322
    :try_start_0
    iget-wide v0, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_instance:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 323
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->native_destroy(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 327
    throw v0
.end method

.method public removeAllBlocks()V
    .locals 2

    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_wlock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 173
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_queued_blocks:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    :goto_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_wlock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    return-void

    .line 177
    :cond_0
    :try_start_1
    iget-wide v0, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_instance:J

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->native_removeAllBlocks(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 179
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_wlock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 180
    throw v0
.end method

.method public removeBlocksWithId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V
    .locals 6

    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_wlock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 158
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_queued_blocks:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    :goto_0
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_wlock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    .line 163
    :cond_0
    :try_start_1
    iget-wide v0, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_instance:J

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->prefix()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->count()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->native_removeBlocksWithId(JJJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 165
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_wlock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 166
    throw p1
.end method

.method public searchWithContext(Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;)V
    .locals 9

    .line 253
    sget-object v0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->localOwnerProxy:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/metamoji/un/draw2/library/mesh/OwnerProxy;

    .line 254
    iget-object v0, p1, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;->owner:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchOwner;

    iput-object v0, v3, Lcom/metamoji/un/draw2/library/mesh/OwnerProxy;->owner:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchOwner;

    .line 257
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_rlock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 259
    sget-object v0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager$2;->$SwitchMap$com$metamoji$un$draw2$library$mesh$DrMsSearchContext$DrMsSearchType:[I

    iget-object v1, p1, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;->type:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext$DrMsSearchType;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext$DrMsSearchType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 269
    :cond_0
    iget-object p1, p1, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;->area:Landroid/graphics/Path;

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPathGetPathBoundingBox(Landroid/graphics/Path;)Landroid/graphics/RectF;

    move-result-object p1

    .line 270
    iget-wide v1, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_instance:J

    iget v4, p1, Landroid/graphics/RectF;->left:F

    iget v5, p1, Landroid/graphics/RectF;->top:F

    iget v6, p1, Landroid/graphics/RectF;->right:F

    iget v7, p1, Landroid/graphics/RectF;->bottom:F

    invoke-static/range {v1 .. v7}, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->native_searchWithBounds(JLcom/metamoji/un/draw2/jni/library/mesh/SearchOwner;FFFF)V

    goto :goto_0

    .line 265
    :cond_1
    iget-object v0, p1, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;->point1:Landroid/graphics/PointF;

    iget-object v1, p1, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;->point2:Landroid/graphics/PointF;

    move-object v4, v1

    .line 266
    iget-wide v1, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_instance:J

    move-object v5, v4

    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v6, v5, Landroid/graphics/PointF;->x:F

    iget v7, v5, Landroid/graphics/PointF;->y:F

    iget v8, p1, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;->hitTestMargin:F

    move v5, v0

    invoke-static/range {v1 .. v8}, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->native_searchWithSegment(JLcom/metamoji/un/draw2/jni/library/mesh/SearchOwner;FFFFF)V

    goto :goto_0

    .line 261
    :cond_2
    iget-object v0, p1, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;->point1:Landroid/graphics/PointF;

    .line 262
    iget-wide v1, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_instance:J

    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget v5, v0, Landroid/graphics/PointF;->y:F

    iget v6, p1, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;->hitTestMargin:F

    invoke-static/range {v1 .. v6}, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->native_searchWithPoint(JLcom/metamoji/un/draw2/jni/library/mesh/SearchOwner;FFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    :goto_0
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_rlock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    iget-object v0, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_rlock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 277
    throw p1
.end method

.method public updateBlock(Lcom/metamoji/cm/RectEx;ILcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z
    .locals 11

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_wlock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 105
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_queued_blocks:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 106
    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 120
    :goto_0
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_wlock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return v0

    .line 110
    :cond_0
    :try_start_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p2, v1, :cond_1

    goto :goto_0

    .line 113
    :cond_1
    invoke-virtual {p3, p2, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_wlock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    const/4 p1, 0x1

    return p1

    .line 117
    :cond_2
    :try_start_2
    iget-wide v0, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_instance:J

    iget v2, p1, Lcom/metamoji/cm/RectEx;->x:F

    iget v3, p1, Lcom/metamoji/cm/RectEx;->y:F

    iget v4, p1, Lcom/metamoji/cm/RectEx;->x:F

    iget v5, p1, Lcom/metamoji/cm/RectEx;->width:F

    add-float/2addr v4, v5

    iget v5, p1, Lcom/metamoji/cm/RectEx;->y:F

    iget p1, p1, Lcom/metamoji/cm/RectEx;->height:F

    add-float/2addr v5, p1

    .line 118
    invoke-virtual {p3}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->prefix()J

    move-result-wide v7

    invoke-virtual {p3}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->count()J

    move-result-wide v9

    move v6, p2

    .line 117
    invoke-static/range {v0 .. v10}, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->native_updateBlock(JFFFFIJJ)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 120
    iget-object p2, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_wlock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    iget-object p2, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_wlock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 121
    throw p1
.end method

.method public updateBlocks(Ljava/util/List;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/cm/RectEx;",
            ">;",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ")Z"
        }
    .end annotation

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_wlock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 128
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_queued_blocks:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 129
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_1

    .line 150
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_wlock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return v1

    .line 133
    :cond_1
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v0, v2, :cond_2

    goto :goto_0

    .line 136
    :cond_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 137
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_wlock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    const/4 p1, 0x1

    return p1

    .line 141
    :cond_3
    :try_start_2
    iget-wide v2, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_instance:J

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->prefix()J

    move-result-wide v4

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->count()J

    move-result-wide v6

    invoke-static/range {v2 .. v7}, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->native_updateBlocksBegin(JJJ)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 142
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/cm/RectEx;

    .line 143
    iget-wide v0, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_instance:J

    iget v2, p2, Lcom/metamoji/cm/RectEx;->x:F

    iget v3, p2, Lcom/metamoji/cm/RectEx;->y:F

    iget v4, p2, Lcom/metamoji/cm/RectEx;->x:F

    iget v5, p2, Lcom/metamoji/cm/RectEx;->width:F

    add-float/2addr v4, v5

    iget v5, p2, Lcom/metamoji/cm/RectEx;->y:F

    iget p2, p2, Lcom/metamoji/cm/RectEx;->height:F

    add-float/2addr v5, p2

    invoke-static/range {v0 .. v5}, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->native_updateBlocksExec(JFFFF)V

    goto :goto_1

    .line 145
    :cond_4
    iget-wide p1, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_instance:J

    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->native_updateBlocksEnd(J)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 150
    iget-object p2, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_wlock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    iget-object p2, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_wlock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 151
    throw p1
.end method

.method public updateBounds(Lcom/metamoji/cm/RectEx;)V
    .locals 8

    .line 218
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_wlock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 220
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_bounds:Lcom/metamoji/cm/RectEx;

    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectContainsRect(Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    iget v0, p1, Lcom/metamoji/cm/RectEx;->width:F

    iget v1, p1, Lcom/metamoji/cm/RectEx;->height:F

    mul-float/2addr v0, v1

    .line 224
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_bounds:Lcom/metamoji/cm/RectEx;

    iget v1, v1, Lcom/metamoji/cm/RectEx;->width:F

    iget-object v2, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_bounds:Lcom/metamoji/cm/RectEx;

    iget v2, v2, Lcom/metamoji/cm/RectEx;->height:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-float/2addr v1, v2

    const/high16 v2, 0x3e800000    # 0.25f

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 248
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_wlock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    .line 230
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_bounds:Lcom/metamoji/cm/RectEx;

    invoke-virtual {v0, p1}, Lcom/metamoji/cm/RectEx;->set(Lcom/metamoji/cm/RectEx;)V

    .line 231
    iget-wide v1, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_instance:J

    iget v3, p1, Lcom/metamoji/cm/RectEx;->x:F

    iget v4, p1, Lcom/metamoji/cm/RectEx;->y:F

    iget v0, p1, Lcom/metamoji/cm/RectEx;->x:F

    iget v5, p1, Lcom/metamoji/cm/RectEx;->width:F

    add-float/2addr v5, v0

    iget v0, p1, Lcom/metamoji/cm/RectEx;->y:F

    iget p1, p1, Lcom/metamoji/cm/RectEx;->height:F

    add-float v6, v0, p1

    invoke-static/range {v1 .. v6}, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->native_updateBounds(JFFFF)V

    .line 233
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_queued_blocks:Ljava/util/HashMap;

    if-eqz p1, :cond_0

    .line 234
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 235
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 236
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 238
    iget-wide v2, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_instance:J

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->prefix()J

    move-result-wide v4

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->count()J

    move-result-wide v6

    invoke-static/range {v2 .. v7}, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->native_addBlocksBegin(JJJ)V

    .line 239
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/cm/RectEx;

    .line 240
    iget-wide v2, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_instance:J

    iget v4, v1, Lcom/metamoji/cm/RectEx;->x:F

    iget v5, v1, Lcom/metamoji/cm/RectEx;->y:F

    iget v6, v1, Lcom/metamoji/cm/RectEx;->x:F

    iget v7, v1, Lcom/metamoji/cm/RectEx;->width:F

    add-float/2addr v6, v7

    iget v7, v1, Lcom/metamoji/cm/RectEx;->y:F

    iget v1, v1, Lcom/metamoji/cm/RectEx;->height:F

    add-float/2addr v7, v1

    invoke-static/range {v2 .. v7}, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->native_addBlocksExec(JFFFF)V

    goto :goto_2

    .line 242
    :cond_2
    iget-wide v0, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_instance:J

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->native_addBlocksEnd(J)V

    goto :goto_1

    .line 244
    :cond_3
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_queued_blocks:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    const/4 p1, 0x0

    .line 245
    iput-object p1, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_queued_blocks:Ljava/util/HashMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 248
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->m_wlock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 249
    throw p1
.end method
