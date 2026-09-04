.class public Lcom/metamoji/ns/direction/NsSendInvoker;
.super Lcom/metamoji/ns/direction/NsInvoker;
.source "NsSendInvoker.java"


# static fields
.field static final INVOKER_NAME:Ljava/lang/String; = "SendInvoker"

.field static final sThreadFactory:Lcom/metamoji/cm/CmThreadFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    new-instance v0, Lcom/metamoji/cm/CmThreadFactory;

    const-string v1, "SendInvoker"

    invoke-direct {v0, v1}, Lcom/metamoji/cm/CmThreadFactory;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/metamoji/ns/direction/NsSendInvoker;->sThreadFactory:Lcom/metamoji/cm/CmThreadFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 18
    const-string v0, "SendInvoker"

    sget-object v1, Lcom/metamoji/ns/direction/NsSendInvoker;->sThreadFactory:Lcom/metamoji/cm/CmThreadFactory;

    invoke-direct {p0, v0, v1}, Lcom/metamoji/ns/direction/NsInvoker;-><init>(Ljava/lang/String;Lcom/metamoji/cm/CmThreadFactory;)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Runnable;)Z
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsSendInvoker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 30
    :try_start_0
    iget-boolean v1, p0, Lcom/metamoji/ns/direction/NsSendInvoker;->mAlive:Z

    if-nez v1, :cond_0

    const/4 p1, 0x0

    .line 31
    monitor-exit v0

    return p1

    .line 33
    :cond_0
    iget-object v1, p0, Lcom/metamoji/ns/direction/NsSendInvoker;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 34
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
