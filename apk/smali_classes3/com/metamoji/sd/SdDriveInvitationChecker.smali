.class public final Lcom/metamoji/sd/SdDriveInvitationChecker;
.super Ljava/lang/Object;
.source "SdDriveInvitationChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/sd/SdDriveInvitationChecker$Task;
    }
.end annotation


# static fields
.field private static final INVITATION_CHECK_MIN_INTERVAL:J = 0xdbba0L

.field private static s_instance:Lcom/metamoji/sd/SdDriveInvitationChecker;


# instance fields
.field private m_executor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private m_lastAddDriveCheck:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/metamoji/sd/SdDriveInvitationChecker;

    invoke-direct {v0}, Lcom/metamoji/sd/SdDriveInvitationChecker;-><init>()V

    sput-object v0, Lcom/metamoji/sd/SdDriveInvitationChecker;->s_instance:Lcom/metamoji/sd/SdDriveInvitationChecker;

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/metamoji/sd/SdDriveInvitationChecker;->m_executor:Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v0, 0x0

    .line 18
    iput-wide v0, p0, Lcom/metamoji/sd/SdDriveInvitationChecker;->m_lastAddDriveCheck:J

    return-void
.end method

.method public static getInstance()Lcom/metamoji/sd/SdDriveInvitationChecker;
    .locals 1

    .line 25
    sget-object v0, Lcom/metamoji/sd/SdDriveInvitationChecker;->s_instance:Lcom/metamoji/sd/SdDriveInvitationChecker;

    return-object v0
.end method


# virtual methods
.method public clearTask()V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveInvitationChecker;->m_executor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    return-void
.end method

.method public doCheck()Ljava/util/concurrent/Future;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 57
    :try_start_0
    iget-wide v1, p0, Lcom/metamoji/sd/SdDriveInvitationChecker;->m_lastAddDriveCheck:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/metamoji/sd/SdDriveInvitationChecker;->m_lastAddDriveCheck:J

    return-object v0

    :cond_0
    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/metamoji/sd/SdDriveInvitationChecker;->m_lastAddDriveCheck:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0xdbba0

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    return-object v0

    .line 67
    :cond_1
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveInvitationChecker;->m_executor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v1

    if-lez v1, :cond_2

    return-object v0

    .line 71
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/metamoji/sd/SdDriveInvitationChecker;->m_lastAddDriveCheck:J

    .line 72
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveInvitationChecker;->m_executor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, Lcom/metamoji/sd/SdDriveInvitationChecker$Task;

    invoke-direct {v2, p0}, Lcom/metamoji/sd/SdDriveInvitationChecker$Task;-><init>(Lcom/metamoji/sd/SdDriveInvitationChecker;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 74
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "[SdDriveInvitationChecker] :: ERROR doCheck:%s"

    invoke-static {v2, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method
