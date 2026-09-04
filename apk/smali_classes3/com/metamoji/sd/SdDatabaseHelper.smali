.class public abstract Lcom/metamoji/sd/SdDatabaseHelper;
.super Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;
.source "SdDatabaseHelper.java"


# instance fields
.field protected m_referenceCounter:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .line 14
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    const/4 p1, 0x1

    .line 8
    iput p1, p0, Lcom/metamoji/sd/SdDatabaseHelper;->m_referenceCounter:I

    return-void
.end method


# virtual methods
.method public declared-synchronized addReference()V
    .locals 1

    monitor-enter p0

    .line 21
    :try_start_0
    iget v0, p0, Lcom/metamoji/sd/SdDatabaseHelper;->m_referenceCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/metamoji/sd/SdDatabaseHelper;->m_referenceCounter:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
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

.method public declared-synchronized getReferenceCount()I
    .locals 1

    monitor-enter p0

    .line 28
    :try_start_0
    iget v0, p0, Lcom/metamoji/sd/SdDatabaseHelper;->m_referenceCounter:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized releaseReference()V
    .locals 1

    monitor-enter p0

    .line 35
    :try_start_0
    iget v0, p0, Lcom/metamoji/sd/SdDatabaseHelper;->m_referenceCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/metamoji/sd/SdDatabaseHelper;->m_referenceCounter:I

    if-gtz v0, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/metamoji/sd/SdDatabaseHelper;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :cond_0
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
