.class public Lcom/metamoji/cm/CmByteBuffer;
.super Ljava/lang/Object;
.source "CmByteBuffer.java"

# interfaces
.implements Lcom/metamoji/cm/ICmAppLowMemory$ILowMemoryListener;
.implements Lcom/metamoji/cm/CmTaskManager$IOnIdleProcess;


# static fields
.field private static final BUFF_SIZE:I = 0x8000

.field private static final BUFF_SIZE_S:I = 0x2000

.field private static final FREE_INTERVAL:I = 0xea60

.field private static sAppLowMemory:Lcom/metamoji/cm/ICmAppLowMemory;

.field private static sInstance:Lcom/metamoji/cm/CmByteBuffer;


# instance fields
.field private mBuffer:[B

.field private mLastAccessed:J

.field private mLocked:Z

.field private mToBeReleased:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 95
    iput-object v0, p0, Lcom/metamoji/cm/CmByteBuffer;->mBuffer:[B

    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p0, Lcom/metamoji/cm/CmByteBuffer;->mLocked:Z

    const-wide/16 v0, 0x0

    .line 97
    iput-wide v0, p0, Lcom/metamoji/cm/CmByteBuffer;->mLastAccessed:J

    return-void
.end method

.method public static getBuffer()[B
    .locals 2

    .line 140
    sget-object v0, Lcom/metamoji/cm/CmByteBuffer;->sInstance:Lcom/metamoji/cm/CmByteBuffer;

    monitor-enter v0

    .line 141
    :try_start_0
    sget-object v1, Lcom/metamoji/cm/CmByteBuffer;->sInstance:Lcom/metamoji/cm/CmByteBuffer;

    invoke-direct {v1}, Lcom/metamoji/cm/CmByteBuffer;->lock()[B

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 142
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static initialize(Lcom/metamoji/cm/ICmAppLowMemory;)V
    .locals 1

    .line 27
    sget-object v0, Lcom/metamoji/cm/CmByteBuffer;->sInstance:Lcom/metamoji/cm/CmByteBuffer;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/metamoji/cm/CmByteBuffer;

    invoke-direct {v0}, Lcom/metamoji/cm/CmByteBuffer;-><init>()V

    sput-object v0, Lcom/metamoji/cm/CmByteBuffer;->sInstance:Lcom/metamoji/cm/CmByteBuffer;

    .line 29
    sput-object p0, Lcom/metamoji/cm/CmByteBuffer;->sAppLowMemory:Lcom/metamoji/cm/ICmAppLowMemory;

    .line 30
    invoke-interface {p0, v0}, Lcom/metamoji/cm/ICmAppLowMemory;->addLowMemoryEventListener(Lcom/metamoji/cm/ICmAppLowMemory$ILowMemoryListener;)V

    .line 31
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p0

    sget-object v0, Lcom/metamoji/cm/CmByteBuffer;->sInstance:Lcom/metamoji/cm/CmByteBuffer;

    invoke-virtual {p0, v0}, Lcom/metamoji/cm/CmTaskManager;->addOnIdleListener(Lcom/metamoji/cm/CmTaskManager$IOnIdleProcess;)V

    :cond_0
    return-void
.end method

.method private lock()[B
    .locals 4

    .line 105
    iget-boolean v0, p0, Lcom/metamoji/cm/CmByteBuffer;->mLocked:Z

    const/16 v1, 0x2000

    if-eqz v0, :cond_0

    .line 106
    invoke-direct {p0, v1}, Lcom/metamoji/cm/CmByteBuffer;->safeAlloc(I)[B

    move-result-object v0

    return-object v0

    :cond_0
    const-wide/16 v2, 0x0

    .line 108
    iput-wide v2, p0, Lcom/metamoji/cm/CmByteBuffer;->mLastAccessed:J

    .line 109
    iget-object v0, p0, Lcom/metamoji/cm/CmByteBuffer;->mBuffer:[B

    if-nez v0, :cond_1

    const v0, 0x8000

    .line 110
    invoke-direct {p0, v0}, Lcom/metamoji/cm/CmByteBuffer;->safeAlloc(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/cm/CmByteBuffer;->mBuffer:[B

    if-nez v0, :cond_1

    .line 112
    invoke-direct {p0, v1}, Lcom/metamoji/cm/CmByteBuffer;->safeAlloc(I)[B

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x1

    .line 115
    iput-boolean v0, p0, Lcom/metamoji/cm/CmByteBuffer;->mLocked:Z

    .line 116
    iget-object v0, p0, Lcom/metamoji/cm/CmByteBuffer;->mBuffer:[B

    return-object v0
.end method

.method public static releaseBuffer([B)V
    .locals 2

    .line 150
    sget-object v0, Lcom/metamoji/cm/CmByteBuffer;->sInstance:Lcom/metamoji/cm/CmByteBuffer;

    monitor-enter v0

    .line 151
    :try_start_0
    sget-object v1, Lcom/metamoji/cm/CmByteBuffer;->sInstance:Lcom/metamoji/cm/CmByteBuffer;

    invoke-direct {v1, p0}, Lcom/metamoji/cm/CmByteBuffer;->unlock([B)V

    .line 152
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private safeAlloc(I)[B
    .locals 0

    .line 84
    :try_start_0
    new-array p1, p1, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 86
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public static terminate()V
    .locals 2

    .line 39
    sget-object v0, Lcom/metamoji/cm/CmByteBuffer;->sInstance:Lcom/metamoji/cm/CmByteBuffer;

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v0}, Lcom/metamoji/cm/CmByteBuffer;->didReceiveMemoryWarning()V

    .line 41
    sget-object v0, Lcom/metamoji/cm/CmByteBuffer;->sAppLowMemory:Lcom/metamoji/cm/ICmAppLowMemory;

    sget-object v1, Lcom/metamoji/cm/CmByteBuffer;->sInstance:Lcom/metamoji/cm/CmByteBuffer;

    invoke-interface {v0, v1}, Lcom/metamoji/cm/ICmAppLowMemory;->removeLowMemoryEventListener(Lcom/metamoji/cm/ICmAppLowMemory$ILowMemoryListener;)V

    .line 42
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/cm/CmByteBuffer;->sInstance:Lcom/metamoji/cm/CmByteBuffer;

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->removeOnIdleListener(Lcom/metamoji/cm/CmTaskManager$IOnIdleProcess;)V

    const/4 v0, 0x0

    .line 43
    sput-object v0, Lcom/metamoji/cm/CmByteBuffer;->sInstance:Lcom/metamoji/cm/CmByteBuffer;

    .line 44
    sput-object v0, Lcom/metamoji/cm/CmByteBuffer;->sAppLowMemory:Lcom/metamoji/cm/ICmAppLowMemory;

    :cond_0
    return-void
.end method

.method private unlock([B)V
    .locals 2

    .line 125
    iget-boolean v0, p0, Lcom/metamoji/cm/CmByteBuffer;->mLocked:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/metamoji/cm/CmByteBuffer;->mBuffer:[B

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    .line 126
    iput-boolean p1, p0, Lcom/metamoji/cm/CmByteBuffer;->mLocked:Z

    .line 127
    iget-boolean p1, p0, Lcom/metamoji/cm/CmByteBuffer;->mToBeReleased:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 128
    iput-object p1, p0, Lcom/metamoji/cm/CmByteBuffer;->mBuffer:[B

    return-void

    .line 130
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/metamoji/cm/CmByteBuffer;->mLastAccessed:J

    :cond_1
    return-void
.end method


# virtual methods
.method public didReceiveMemoryWarning()V
    .locals 2

    .line 53
    monitor-enter p0

    .line 54
    :try_start_0
    iget-boolean v0, p0, Lcom/metamoji/cm/CmByteBuffer;->mLocked:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lcom/metamoji/cm/CmByteBuffer;->mToBeReleased:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/metamoji/cm/CmByteBuffer;->mBuffer:[B

    :goto_0
    const-wide/16 v0, 0x0

    .line 59
    iput-wide v0, p0, Lcom/metamoji/cm/CmByteBuffer;->mLastAccessed:J

    .line 60
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onIdle()V
    .locals 4

    .line 69
    iget-wide v0, p0, Lcom/metamoji/cm/CmByteBuffer;->mLastAccessed:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/metamoji/cm/CmByteBuffer;->mBuffer:[B

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/metamoji/cm/CmByteBuffer;->mLocked:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/metamoji/cm/CmByteBuffer;->mLastAccessed:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 73
    invoke-virtual {p0}, Lcom/metamoji/cm/CmByteBuffer;->didReceiveMemoryWarning()V

    :cond_1
    :goto_0
    return-void
.end method
