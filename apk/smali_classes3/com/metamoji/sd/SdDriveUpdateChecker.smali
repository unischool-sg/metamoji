.class public final Lcom/metamoji/sd/SdDriveUpdateChecker;
.super Ljava/lang/Object;
.source "SdDriveUpdateChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/sd/SdDriveUpdateChecker$Task;
    }
.end annotation


# static fields
.field private static s_instance:Lcom/metamoji/sd/SdDriveUpdateChecker;


# instance fields
.field private m_future:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private m_service:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lcom/metamoji/sd/SdDriveUpdateChecker;

    invoke-direct {v0}, Lcom/metamoji/sd/SdDriveUpdateChecker;-><init>()V

    sput-object v0, Lcom/metamoji/sd/SdDriveUpdateChecker;->s_instance:Lcom/metamoji/sd/SdDriveUpdateChecker;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/sd/SdDriveUpdateChecker;->m_service:Ljava/util/concurrent/ScheduledExecutorService;

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/metamoji/sd/SdDriveUpdateChecker;->m_future:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public static getInstance()Lcom/metamoji/sd/SdDriveUpdateChecker;
    .locals 1

    .line 27
    sget-object v0, Lcom/metamoji/sd/SdDriveUpdateChecker;->s_instance:Lcom/metamoji/sd/SdDriveUpdateChecker;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 2

    monitor-enter p0

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveUpdateChecker;->m_future:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 108
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 111
    :try_start_1
    const-string v1, "[SdDriveUpdateChecker] :: ERROR cancel:%s"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public declared-synchronized doCheck(Ljava/lang/String;)Ljava/util/concurrent/ScheduledFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    monitor-enter p0

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveUpdateChecker;->m_future:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 92
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveUpdateChecker;->m_service:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/metamoji/sd/SdDriveUpdateChecker$Task;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/sd/SdDriveUpdateChecker$Task;-><init>(Lcom/metamoji/sd/SdDriveUpdateChecker;Ljava/lang/String;)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x96

    invoke-interface {v0, v1, v2, v3, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/sd/SdDriveUpdateChecker;->m_future:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 97
    :try_start_1
    const-string v0, "[SdDriveUpdateChecker] :: ERROR doCheck:%s"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
