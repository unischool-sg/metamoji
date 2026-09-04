.class public Lcom/metamoji/nt/cabinet/sync/SyncEventService;
.super Landroid/app/Service;
.source "SyncEventService.java"


# static fields
.field private static counter:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 4

    .line 29
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 31
    const-string v0, "SyncEventService_onCreate"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 33
    const-class v0, Lcom/metamoji/nt/cabinet/sync/SyncEventService;

    monitor-enter v0

    .line 35
    :try_start_0
    invoke-static {}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->getInstance()Lcom/metamoji/dm/impl/sync/DmDCSyncManager;

    move-result-object v1

    .line 40
    const-string v2, "backgroundProcessesStart"

    new-instance v3, Lcom/metamoji/nt/cabinet/sync/SyncEventService$1;

    invoke-direct {v3, p0}, Lcom/metamoji/nt/cabinet/sync/SyncEventService$1;-><init>(Lcom/metamoji/nt/cabinet/sync/SyncEventService;)V

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->putEventHandler(Ljava/lang/String;Lcom/metamoji/cm/ICmEventHandler;)V

    .line 58
    const-string v2, "backgroundProcessesEnd"

    new-instance v3, Lcom/metamoji/nt/cabinet/sync/SyncEventService$2;

    invoke-direct {v3, p0}, Lcom/metamoji/nt/cabinet/sync/SyncEventService$2;-><init>(Lcom/metamoji/nt/cabinet/sync/SyncEventService;)V

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->putEventHandler(Ljava/lang/String;Lcom/metamoji/cm/ICmEventHandler;)V

    .line 79
    const-string v2, "libraryItemsSyncStart"

    new-instance v3, Lcom/metamoji/nt/cabinet/sync/SyncEventService$3;

    invoke-direct {v3, p0}, Lcom/metamoji/nt/cabinet/sync/SyncEventService$3;-><init>(Lcom/metamoji/nt/cabinet/sync/SyncEventService;)V

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->putEventHandler(Ljava/lang/String;Lcom/metamoji/cm/ICmEventHandler;)V

    .line 95
    const-string v2, "libraryItemsSyncEnd"

    new-instance v3, Lcom/metamoji/nt/cabinet/sync/SyncEventService$4;

    invoke-direct {v3, p0}, Lcom/metamoji/nt/cabinet/sync/SyncEventService$4;-><init>(Lcom/metamoji/nt/cabinet/sync/SyncEventService;)V

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->putEventHandler(Ljava/lang/String;Lcom/metamoji/cm/ICmEventHandler;)V

    .line 111
    const-string v2, "backgroundProcessesBeforeStart"

    new-instance v3, Lcom/metamoji/nt/cabinet/sync/SyncEventService$5;

    invoke-direct {v3, p0}, Lcom/metamoji/nt/cabinet/sync/SyncEventService$5;-><init>(Lcom/metamoji/nt/cabinet/sync/SyncEventService;)V

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->putEventHandler(Ljava/lang/String;Lcom/metamoji/cm/ICmEventHandler;)V

    .line 127
    const-string/jumbo v2, "sharedOneDriveSyncStart"

    new-instance v3, Lcom/metamoji/nt/cabinet/sync/SyncEventService$6;

    invoke-direct {v3, p0}, Lcom/metamoji/nt/cabinet/sync/SyncEventService$6;-><init>(Lcom/metamoji/nt/cabinet/sync/SyncEventService;)V

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->putEventHandler(Ljava/lang/String;Lcom/metamoji/cm/ICmEventHandler;)V

    .line 159
    const-string/jumbo v2, "sharedOneDriveSyncEnd"

    new-instance v3, Lcom/metamoji/nt/cabinet/sync/SyncEventService$7;

    invoke-direct {v3, p0}, Lcom/metamoji/nt/cabinet/sync/SyncEventService$7;-><init>(Lcom/metamoji/nt/cabinet/sync/SyncEventService;)V

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->putEventHandler(Ljava/lang/String;Lcom/metamoji/cm/ICmEventHandler;)V

    .line 175
    const-string/jumbo v2, "sharedDriveSyncEnd"

    new-instance v3, Lcom/metamoji/nt/cabinet/sync/SyncEventService$8;

    invoke-direct {v3, p0}, Lcom/metamoji/nt/cabinet/sync/SyncEventService$8;-><init>(Lcom/metamoji/nt/cabinet/sync/SyncEventService;)V

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->putEventHandler(Ljava/lang/String;Lcom/metamoji/cm/ICmEventHandler;)V

    .line 191
    const-string/jumbo v2, "sharedNotesSyncStart"

    new-instance v3, Lcom/metamoji/nt/cabinet/sync/SyncEventService$9;

    invoke-direct {v3, p0}, Lcom/metamoji/nt/cabinet/sync/SyncEventService$9;-><init>(Lcom/metamoji/nt/cabinet/sync/SyncEventService;)V

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->putEventHandler(Ljava/lang/String;Lcom/metamoji/cm/ICmEventHandler;)V

    .line 207
    const-string/jumbo v2, "sharedNotesSyncEnd"

    new-instance v3, Lcom/metamoji/nt/cabinet/sync/SyncEventService$10;

    invoke-direct {v3, p0}, Lcom/metamoji/nt/cabinet/sync/SyncEventService$10;-><init>(Lcom/metamoji/nt/cabinet/sync/SyncEventService;)V

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->putEventHandler(Ljava/lang/String;Lcom/metamoji/cm/ICmEventHandler;)V

    .line 223
    const-string/jumbo v2, "sharedOnenoteSyncStart"

    new-instance v3, Lcom/metamoji/nt/cabinet/sync/SyncEventService$11;

    invoke-direct {v3, p0}, Lcom/metamoji/nt/cabinet/sync/SyncEventService$11;-><init>(Lcom/metamoji/nt/cabinet/sync/SyncEventService;)V

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->putEventHandler(Ljava/lang/String;Lcom/metamoji/cm/ICmEventHandler;)V

    .line 239
    const-string/jumbo v2, "sharedOnenoteSyncEnd"

    new-instance v3, Lcom/metamoji/nt/cabinet/sync/SyncEventService$12;

    invoke-direct {v3, p0}, Lcom/metamoji/nt/cabinet/sync/SyncEventService$12;-><init>(Lcom/metamoji/nt/cabinet/sync/SyncEventService;)V

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->putEventHandler(Ljava/lang/String;Lcom/metamoji/cm/ICmEventHandler;)V

    .line 255
    const-string/jumbo v2, "sharedOnenoteSyncConflict"

    new-instance v3, Lcom/metamoji/nt/cabinet/sync/SyncEventService$13;

    invoke-direct {v3, p0}, Lcom/metamoji/nt/cabinet/sync/SyncEventService$13;-><init>(Lcom/metamoji/nt/cabinet/sync/SyncEventService;)V

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->putEventHandler(Ljava/lang/String;Lcom/metamoji/cm/ICmEventHandler;)V

    .line 271
    const-string/jumbo v2, "sharedTagOrderTooLong"

    new-instance v3, Lcom/metamoji/nt/cabinet/sync/SyncEventService$14;

    invoke-direct {v3, p0}, Lcom/metamoji/nt/cabinet/sync/SyncEventService$14;-><init>(Lcom/metamoji/nt/cabinet/sync/SyncEventService;)V

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->putEventHandler(Ljava/lang/String;Lcom/metamoji/cm/ICmEventHandler;)V

    .line 286
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onDestroy()V
    .locals 3

    .line 300
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 301
    const-string v0, "SyncEventService_onDestroy"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 302
    const-class v0, Lcom/metamoji/nt/cabinet/sync/SyncEventService;

    monitor-enter v0

    .line 303
    :try_start_0
    sget v1, Lcom/metamoji/nt/cabinet/sync/SyncEventService;->counter:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/metamoji/nt/cabinet/sync/SyncEventService;->counter:I

    if-gtz v1, :cond_0

    .line 307
    invoke-static {}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->getInstance()Lcom/metamoji/dm/impl/sync/DmDCSyncManager;

    move-result-object v1

    .line 309
    const-string v2, "backgroundProcessesStart"

    invoke-virtual {v1, v2}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->removeEventHandler(Ljava/lang/String;)V

    .line 310
    const-string v2, "backgroundProcessesEnd"

    invoke-virtual {v1, v2}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->removeEventHandler(Ljava/lang/String;)V

    .line 311
    const-string v2, "libraryItemsSyncStart"

    invoke-virtual {v1, v2}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->removeEventHandler(Ljava/lang/String;)V

    .line 312
    const-string v2, "libraryItemsSyncEnd"

    invoke-virtual {v1, v2}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->removeEventHandler(Ljava/lang/String;)V

    .line 313
    const-string v2, "backgroundProcessesBeforeStart"

    invoke-virtual {v1, v2}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->removeEventHandler(Ljava/lang/String;)V

    .line 314
    const-string v2, "backgroundProcessDidNotStarted"

    invoke-virtual {v1, v2}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->removeEventHandler(Ljava/lang/String;)V

    .line 315
    const-string/jumbo v2, "sharedOneDriveSyncStart"

    invoke-virtual {v1, v2}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->removeEventHandler(Ljava/lang/String;)V

    .line 316
    const-string/jumbo v2, "sharedOneDriveSyncEnd"

    invoke-virtual {v1, v2}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->removeEventHandler(Ljava/lang/String;)V

    .line 317
    const-string/jumbo v2, "sharedDriveSyncEnd"

    invoke-virtual {v1, v2}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->removeEventHandler(Ljava/lang/String;)V

    .line 318
    const-string/jumbo v2, "sharedNotesSyncStart"

    invoke-virtual {v1, v2}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->removeEventHandler(Ljava/lang/String;)V

    .line 319
    const-string/jumbo v2, "sharedNotesSyncEnd"

    invoke-virtual {v1, v2}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->removeEventHandler(Ljava/lang/String;)V

    .line 320
    const-string/jumbo v2, "sharedOnenoteSyncStart"

    invoke-virtual {v1, v2}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->removeEventHandler(Ljava/lang/String;)V

    .line 321
    const-string/jumbo v2, "sharedOnenoteSyncEnd"

    invoke-virtual {v1, v2}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->removeEventHandler(Ljava/lang/String;)V

    .line 322
    const-string/jumbo v2, "sharedTagOrderTooLong"

    invoke-virtual {v1, v2}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->removeEventHandler(Ljava/lang/String;)V

    .line 324
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 291
    const-class p1, Lcom/metamoji/nt/cabinet/sync/SyncEventService;

    monitor-enter p1

    .line 292
    :try_start_0
    sget p2, Lcom/metamoji/nt/cabinet/sync/SyncEventService;->counter:I

    const/4 p3, 0x1

    add-int/2addr p2, p3

    sput p2, Lcom/metamoji/nt/cabinet/sync/SyncEventService;->counter:I

    .line 293
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    const-string p1, "SyncEventService_onStartCommand"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    return p3

    :catchall_0
    move-exception p2

    .line 293
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method
