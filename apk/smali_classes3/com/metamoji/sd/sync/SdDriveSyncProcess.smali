.class public Lcom/metamoji/sd/sync/SdDriveSyncProcess;
.super Lcom/metamoji/sd/sync/SdSyncProcess;
.source "SdDriveSyncProcess.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static NUMBER_OF_MANAGEDOBJECT_PROCESSED_AT_SAVE:J = 0x3e8L

.field private static ZIP_BEST_SPEED:I = 0x1

.field private static ZIP_NO_COMPRESSION:I


# instance fields
.field private m_dindex:I

.field private m_documentIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_downloadIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

.field private m_driveId:Ljava/lang/String;

.field private m_driveName:Ljava/lang/String;

.field protected m_errFlag:Z

.field private m_index:I

.field private m_putDocumentsCompleted:Z

.field private m_single:Z

.field private m_skipSyncDocuments:Z

.field private m_specified:Z

.field private m_syncSequence:Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;


# direct methods
.method static bridge synthetic -$$Nest$fgetm_downloadIds(Lcom/metamoji/sd/sync/SdDriveSyncProcess;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_downloadIds:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetm_driveId(Lcom/metamoji/sd/sync/SdDriveSyncProcess;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetNUMBER_OF_MANAGEDOBJECT_PROCESSED_AT_SAVE()J
    .locals 2

    sget-wide v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->NUMBER_OF_MANAGEDOBJECT_PROCESSED_AT_SAVE:J

    return-wide v0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/sd/sync/SdSyncIntentService;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 125
    invoke-direct {p0, p1, p2, v0}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;-><init>(Lcom/metamoji/sd/sync/SdSyncIntentService;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/sd/sync/SdSyncIntentService;Ljava/lang/String;Z)V
    .locals 0

    .line 129
    invoke-direct {p0, p1}, Lcom/metamoji/sd/sync/SdSyncProcess;-><init>(Lcom/metamoji/sd/sync/SdSyncIntentService;)V

    .line 111
    const-string p1, ""

    iput-object p1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveName:Ljava/lang/String;

    const/4 p1, 0x0

    .line 112
    iput-boolean p1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_errFlag:Z

    .line 113
    iput-boolean p1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_single:Z

    .line 114
    sget-object p1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;->GetHome:Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;

    iput-object p1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_syncSequence:Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;

    .line 130
    iput-object p2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveId:Ljava/lang/String;

    .line 131
    iput-boolean p3, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_single:Z

    return-void
.end method


# virtual methods
.method public afterProcesses()V
    .locals 2

    .line 278
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    if-eqz v0, :cond_0

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "end sync process: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/sd/SdDriveDocumentManager;->setLocked(Z)V

    .line 282
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->clearNeedSyncFlag()V

    .line 285
    invoke-virtual {p0}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->internalFireEventSyncEnd()V

    :cond_0
    const/4 v0, 0x0

    .line 287
    iput-object v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    return-void
.end method

.method public beforeProcesses()V
    .locals 2

    .line 159
    sget-object v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;->GetHome:Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;

    iput-object v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_syncSequence:Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;

    const/4 v0, 0x0

    .line 160
    iput-boolean v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_errFlag:Z

    .line 161
    iput-boolean v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_skipSyncDocuments:Z

    const/4 v0, 0x1

    .line 162
    iput-boolean v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_putDocumentsCompleted:Z

    const/4 v1, -0x1

    .line 163
    iput v1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_index:I

    .line 164
    iput v1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_dindex:I

    .line 165
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_downloadIds:Ljava/util/List;

    .line 166
    invoke-virtual {p0}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->internalDocumentManager()Lcom/metamoji/sd/SdDriveDocumentManager;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    if-nez v1, :cond_0

    .line 169
    iput-boolean v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_errFlag:Z

    return-void

    .line 172
    :cond_0
    invoke-virtual {v1, v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->setLocked(Z)V

    .line 175
    invoke-virtual {p0}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->internalPrepareSync()V

    .line 178
    invoke-virtual {p0}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->internalFireEventSyncStart()V

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "start sync process: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    return-void
.end method

.method protected commitChangedChildrenOrders(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 2412
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->getManagedObjectContextManager()Lcom/metamoji/sd/SdDriveContentsMOCManager;

    move-result-object v0

    .line 2413
    new-instance v1, Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-direct {v1, v0}, Lcom/metamoji/sd/SdDriveContentsMOManager;-><init>(Lcom/metamoji/sd/SdManagedObjectContextManager;)V

    .line 2414
    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 2417
    :try_start_0
    iput-boolean v3, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_errFlag:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2451
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_0
    return v2

    .line 2421
    :cond_1
    :try_start_1
    new-instance v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$11;

    invoke-direct {v4, p0, v0, v1, p1}, Lcom/metamoji/sd/sync/SdDriveSyncProcess$11;-><init>(Lcom/metamoji/sd/sync/SdDriveSyncProcess;Lcom/metamoji/sd/SdManagedObjectContext;Lcom/metamoji/sd/SdDriveContentsMOManager;Ljava/util/List;)V

    invoke-virtual {v0, v4}, Lcom/metamoji/sd/SdManagedObjectContext;->performBlock(Lcom/metamoji/sd/SdBlock;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 2451
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_2
    return v3

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2446
    :try_start_2
    const-string v1, "[SdDriveSyncProcess] :: ERROR commitChangedChildrenOrders: %s"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_3

    .line 2451
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_3
    return v2

    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 2453
    :cond_4
    throw p1
.end method

.method protected commitChangedDocument(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 10

    const/4 v1, 0x0

    .line 1538
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->getManagedObjectContextManager()Lcom/metamoji/sd/SdDriveContentsMOCManager;

    move-result-object v0

    .line 1539
    new-instance v5, Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-direct {v5, v0}, Lcom/metamoji/sd/SdDriveContentsMOManager;-><init>(Lcom/metamoji/sd/SdManagedObjectContextManager;)V

    .line 1540
    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    if-nez v4, :cond_1

    .line 1544
    :try_start_1
    iput-boolean v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_errFlag:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_0

    .line 1630
    :goto_0
    :try_start_2
    invoke-virtual {v4}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    return v1

    .line 1548
    :cond_1
    :try_start_3
    new-instance v7, Lcom/metamoji/sd/SdValue;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v7, v2}, Lcom/metamoji/sd/SdValue;-><init>(Ljava/lang/Object;)V

    .line 1549
    new-instance v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$7;

    move-object v3, p0

    move-object v6, p1

    move-object v9, p2

    move v8, p3

    invoke-direct/range {v2 .. v9}, Lcom/metamoji/sd/sync/SdDriveSyncProcess$7;-><init>(Lcom/metamoji/sd/sync/SdDriveSyncProcess;Lcom/metamoji/sd/SdManagedObjectContext;Lcom/metamoji/sd/SdDriveContentsMOManager;Ljava/lang/String;Lcom/metamoji/sd/SdValue;ZLjava/lang/String;)V

    invoke-virtual {v4, v2}, Lcom/metamoji/sd/SdManagedObjectContext;->performBlock(Lcom/metamoji/sd/SdBlock;)Ljava/lang/Object;

    .line 1623
    invoke-virtual {v7}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p1, :cond_3

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    if-eqz v4, :cond_4

    .line 1630
    :try_start_4
    invoke-virtual {v4}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_4
    return v0

    :catchall_0
    move-exception v0

    move-object p1, v0

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 1632
    :cond_5
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 1634
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "[SdDriveSyncProcess] :: ERROR commitChangedDocument: %s"

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method protected commitChangedFolders(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 2357
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->getManagedObjectContextManager()Lcom/metamoji/sd/SdDriveContentsMOCManager;

    move-result-object v0

    .line 2358
    new-instance v1, Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-direct {v1, v0}, Lcom/metamoji/sd/SdDriveContentsMOManager;-><init>(Lcom/metamoji/sd/SdManagedObjectContextManager;)V

    .line 2359
    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 2362
    :try_start_0
    iput-boolean v3, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_errFlag:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2400
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_0
    return v2

    .line 2366
    :cond_1
    :try_start_1
    new-instance v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$10;

    invoke-direct {v4, p0, v0, v1, p1}, Lcom/metamoji/sd/sync/SdDriveSyncProcess$10;-><init>(Lcom/metamoji/sd/sync/SdDriveSyncProcess;Lcom/metamoji/sd/SdManagedObjectContext;Lcom/metamoji/sd/SdDriveContentsMOManager;Ljava/util/List;)V

    invoke-virtual {v0, v4}, Lcom/metamoji/sd/SdManagedObjectContext;->performBlock(Lcom/metamoji/sd/SdBlock;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 2400
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_2
    return v3

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2395
    :try_start_2
    const-string v1, "[SdDriveSyncProcess] :: ERROR commitChangedFolders: %s"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_3

    .line 2400
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_3
    return v2

    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 2402
    :cond_4
    throw p1
.end method

.method protected commitChangedOptionDocuments(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 2565
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->getManagedObjectContextManager()Lcom/metamoji/sd/SdDriveContentsMOCManager;

    move-result-object v0

    .line 2566
    new-instance v1, Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-direct {v1, v0}, Lcom/metamoji/sd/SdDriveContentsMOManager;-><init>(Lcom/metamoji/sd/SdManagedObjectContextManager;)V

    .line 2567
    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 2570
    :try_start_0
    iput-boolean v3, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_errFlag:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2604
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_0
    return v2

    .line 2574
    :cond_1
    :try_start_1
    new-instance v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$14;

    invoke-direct {v4, p0, v0, v1, p1}, Lcom/metamoji/sd/sync/SdDriveSyncProcess$14;-><init>(Lcom/metamoji/sd/sync/SdDriveSyncProcess;Lcom/metamoji/sd/SdManagedObjectContext;Lcom/metamoji/sd/SdDriveContentsMOManager;Ljava/util/List;)V

    invoke-virtual {v0, v4}, Lcom/metamoji/sd/SdManagedObjectContext;->performBlock(Lcom/metamoji/sd/SdBlock;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 2604
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_2
    return v3

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2599
    :try_start_2
    const-string v1, "[SdDriveSyncProcess] :: ERROR commitChangedOptionDocuments: %s"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_3

    .line 2604
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_3
    return v2

    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 2606
    :cond_4
    throw p1
.end method

.method protected commitChangedTagDocuments(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 2514
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->getManagedObjectContextManager()Lcom/metamoji/sd/SdDriveContentsMOCManager;

    move-result-object v0

    .line 2515
    new-instance v1, Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-direct {v1, v0}, Lcom/metamoji/sd/SdDriveContentsMOManager;-><init>(Lcom/metamoji/sd/SdManagedObjectContextManager;)V

    .line 2516
    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 2519
    :try_start_0
    iput-boolean v3, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_errFlag:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2553
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_0
    return v2

    .line 2523
    :cond_1
    :try_start_1
    new-instance v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$13;

    invoke-direct {v4, p0, v0, v1, p1}, Lcom/metamoji/sd/sync/SdDriveSyncProcess$13;-><init>(Lcom/metamoji/sd/sync/SdDriveSyncProcess;Lcom/metamoji/sd/SdManagedObjectContext;Lcom/metamoji/sd/SdDriveContentsMOManager;Ljava/util/List;)V

    invoke-virtual {v0, v4}, Lcom/metamoji/sd/SdManagedObjectContext;->performBlock(Lcom/metamoji/sd/SdBlock;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 2553
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_2
    return v3

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2548
    :try_start_2
    const-string v1, "[SdDriveSyncProcess] :: ERROR commitChangedTagDocuments: %s"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_3

    .line 2553
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_3
    return v2

    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 2555
    :cond_4
    throw p1
.end method

.method protected commitChangedTagOrder()Z
    .locals 5

    .line 2306
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->getManagedObjectContextManager()Lcom/metamoji/sd/SdDriveContentsMOCManager;

    move-result-object v0

    .line 2307
    new-instance v1, Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-direct {v1, v0}, Lcom/metamoji/sd/SdDriveContentsMOManager;-><init>(Lcom/metamoji/sd/SdManagedObjectContextManager;)V

    .line 2308
    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 2311
    :try_start_0
    iput-boolean v3, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_errFlag:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2345
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_0
    return v2

    .line 2315
    :cond_1
    :try_start_1
    new-instance v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$9;

    invoke-direct {v4, p0, v0, v1}, Lcom/metamoji/sd/sync/SdDriveSyncProcess$9;-><init>(Lcom/metamoji/sd/sync/SdDriveSyncProcess;Lcom/metamoji/sd/SdManagedObjectContext;Lcom/metamoji/sd/SdDriveContentsMOManager;)V

    invoke-virtual {v0, v4}, Lcom/metamoji/sd/SdManagedObjectContext;->performBlock(Lcom/metamoji/sd/SdBlock;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 2345
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_2
    return v3

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 2340
    :try_start_2
    const-string v3, "[SdDriveSyncProcess] :: ERROR commitChangedTagOrder: %s"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_3

    .line 2345
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_3
    return v2

    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 2347
    :cond_4
    throw v1
.end method

.method protected commitChangedTags(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 2254
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->getManagedObjectContextManager()Lcom/metamoji/sd/SdDriveContentsMOCManager;

    move-result-object v0

    .line 2255
    new-instance v1, Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-direct {v1, v0}, Lcom/metamoji/sd/SdDriveContentsMOManager;-><init>(Lcom/metamoji/sd/SdManagedObjectContextManager;)V

    .line 2256
    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 2259
    :try_start_0
    iput-boolean v3, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_errFlag:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2295
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_0
    return v2

    .line 2263
    :cond_1
    :try_start_1
    new-instance v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$8;

    invoke-direct {v4, p0, v0, v1, p1}, Lcom/metamoji/sd/sync/SdDriveSyncProcess$8;-><init>(Lcom/metamoji/sd/sync/SdDriveSyncProcess;Lcom/metamoji/sd/SdManagedObjectContext;Lcom/metamoji/sd/SdDriveContentsMOManager;Ljava/util/List;)V

    invoke-virtual {v0, v4}, Lcom/metamoji/sd/SdManagedObjectContext;->performBlock(Lcom/metamoji/sd/SdBlock;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 2295
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_2
    return v3

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2290
    :try_start_2
    const-string v1, "[SdDriveSyncProcess] :: ERROR commitChangedTags: %s"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_3

    .line 2295
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_3
    return v2

    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 2297
    :cond_4
    throw p1
.end method

.method protected commitChangedTitleDocuments(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 2463
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->getManagedObjectContextManager()Lcom/metamoji/sd/SdDriveContentsMOCManager;

    move-result-object v0

    .line 2464
    new-instance v1, Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-direct {v1, v0}, Lcom/metamoji/sd/SdDriveContentsMOManager;-><init>(Lcom/metamoji/sd/SdManagedObjectContextManager;)V

    .line 2465
    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 2468
    :try_start_0
    iput-boolean v3, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_errFlag:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2502
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_0
    return v2

    .line 2472
    :cond_1
    :try_start_1
    new-instance v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$12;

    invoke-direct {v4, p0, v0, v1, p1}, Lcom/metamoji/sd/sync/SdDriveSyncProcess$12;-><init>(Lcom/metamoji/sd/sync/SdDriveSyncProcess;Lcom/metamoji/sd/SdManagedObjectContext;Lcom/metamoji/sd/SdDriveContentsMOManager;Ljava/util/List;)V

    invoke-virtual {v0, v4}, Lcom/metamoji/sd/SdManagedObjectContext;->performBlock(Lcom/metamoji/sd/SdBlock;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 2502
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_2
    return v3

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2497
    :try_start_2
    const-string v1, "[SdDriveSyncProcess] :: ERROR commitChangedTitleDocuments: %s"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_3

    .line 2502
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_3
    return v2

    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 2504
    :cond_4
    throw p1
.end method

.method protected conflictCopyWithDocId(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 784
    const-string v0, "hasSearchData"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v2}, Lcom/metamoji/sd/SdDriveDocumentManager;->getCloudService()Lcom/metamoji/sd/cs/SdCloudService;

    move-result-object v2

    .line 785
    new-instance v3, Lcom/metamoji/sd/cs/params/SdGetDocumentMetaParams;

    invoke-direct {v3}, Lcom/metamoji/sd/cs/params/SdGetDocumentMetaParams;-><init>()V

    .line 786
    iput-object p1, v3, Lcom/metamoji/sd/cs/params/SdGetDocumentMetaParams;->documentId:Ljava/lang/String;

    .line 787
    invoke-virtual {v2, v3}, Lcom/metamoji/sd/cs/SdCloudService;->executeWithAutoLoginFor(Lcom/metamoji/sd/cs/params/SdRequestParams;)Lcom/metamoji/sd/cs/response/SdResponseResult;

    move-result-object v3

    check-cast v3, Lcom/metamoji/sd/cs/response/SdGetDocumentMetaResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v3, :cond_0

    .line 791
    :try_start_1
    iget v4, v3, Lcom/metamoji/sd/cs/response/SdGetDocumentMetaResult;->errorCode:I

    if-nez v4, :cond_0

    .line 792
    iget-object v4, v3, Lcom/metamoji/sd/cs/response/SdGetDocumentMetaResult;->documentId:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 793
    iget-object v3, v3, Lcom/metamoji/sd/cs/response/SdGetDocumentMetaResult;->meta:Ljava/util/Map;

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    move-object v3, p0

    goto/16 :goto_5

    :cond_0
    move-object v3, v1

    :goto_0
    if-eqz v3, :cond_1

    .line 799
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1

    .line 801
    new-instance v0, Lcom/metamoji/sd/cs/params/SdGetDocumentSearchDataParams;

    invoke-direct {v0}, Lcom/metamoji/sd/cs/params/SdGetDocumentSearchDataParams;-><init>()V

    .line 802
    iput-object p1, v0, Lcom/metamoji/sd/cs/params/SdGetDocumentSearchDataParams;->documentId:Ljava/lang/String;

    .line 803
    const-string v4, "contentsRevision"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v0, Lcom/metamoji/sd/cs/params/SdGetDocumentSearchDataParams;->revision:Ljava/lang/String;

    .line 804
    invoke-virtual {v2, v0}, Lcom/metamoji/sd/cs/SdCloudService;->executeWithAutoLoginFor(Lcom/metamoji/sd/cs/params/SdRequestParams;)Lcom/metamoji/sd/cs/response/SdResponseResult;

    move-result-object v0

    check-cast v0, Lcom/metamoji/sd/cs/response/SdFileResult;

    if-eqz v0, :cond_1

    .line 806
    iget v2, v0, Lcom/metamoji/sd/cs/response/SdFileResult;->errorCode:I

    if-nez v2, :cond_1

    .line 807
    iget-object v2, v0, Lcom/metamoji/sd/cs/response/SdFileResult;->file:Ljava/io/File;

    if-eqz v2, :cond_1

    .line 808
    iget-object v2, v0, Lcom/metamoji/sd/cs/response/SdFileResult;->file:Ljava/io/File;

    invoke-static {v2}, Lcom/metamoji/sd/SdUtils;->readFileAsString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 810
    iget-object v0, v0, Lcom/metamoji/sd/cs/response/SdFileResult;->file:Ljava/io/File;

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v8, v2

    goto :goto_1

    :cond_1
    move-object v8, v1

    .line 816
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->getManagedObjectContextManager()Lcom/metamoji/sd/SdDriveContentsMOCManager;

    move-result-object v0

    .line 817
    new-instance v5, Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-direct {v5, v0}, Lcom/metamoji/sd/SdDriveContentsMOManager;-><init>(Lcom/metamoji/sd/SdManagedObjectContextManager;)V

    .line 818
    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-nez v4, :cond_3

    const/4 p1, 0x1

    .line 822
    :try_start_3
    iput-boolean p1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_errFlag:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_2

    .line 1204
    :try_start_4
    invoke-virtual {v4}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_2
    return-object v1

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v3, p0

    goto :goto_3

    .line 827
    :cond_3
    :try_start_5
    new-instance v9, Lcom/metamoji/sd/SdValue;

    invoke-direct {v9}, Lcom/metamoji/sd/SdValue;-><init>()V

    .line 828
    new-instance v7, Lcom/metamoji/sd/SdValue;

    invoke-direct {v7, v3}, Lcom/metamoji/sd/SdValue;-><init>(Ljava/lang/Object;)V

    .line 829
    new-instance v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object v3, p0

    move-object v6, p1

    :try_start_6
    invoke-direct/range {v2 .. v9}, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;-><init>(Lcom/metamoji/sd/sync/SdDriveSyncProcess;Lcom/metamoji/sd/SdManagedObjectContext;Lcom/metamoji/sd/SdDriveContentsMOManager;Ljava/lang/String;Lcom/metamoji/sd/SdValue;Ljava/lang/String;Lcom/metamoji/sd/SdValue;)V

    invoke-virtual {v4, v2}, Lcom/metamoji/sd/SdManagedObjectContext;->performBlock(Lcom/metamoji/sd/SdBlock;)Ljava/lang/Object;

    .line 1197
    invoke-virtual {p0, v6}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->notifyConflictDocument(Ljava/lang/String;)V

    .line 1198
    invoke-virtual {v9}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, v6, p1}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->internalFireEventSyncNoteConflict(Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    invoke-virtual {v9}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v4, :cond_4

    .line 1204
    :try_start_7
    invoke-virtual {v4}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_4
    return-object p1

    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v3, p0

    :goto_2
    move-object p1, v0

    :goto_3
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 1206
    :cond_5
    throw p1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v3, p0

    :goto_4
    move-object p1, v0

    .line 1208
    :goto_5
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "[SdDriveSyncProcess] :: ERROR conflictCopyWithDocId: %s"

    invoke-static {v0, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

.method protected doGetHome()Z
    .locals 8

    const/4 v1, 0x0

    .line 295
    :try_start_0
    invoke-static {}, Lcom/metamoji/dvm/DvmUtil;->sendOperationLog()V

    .line 297
    new-instance v0, Lcom/metamoji/cs/dc/params/CsGetDriveHomeParam;

    invoke-direct {v0}, Lcom/metamoji/cs/dc/params/CsGetDriveHomeParam;-><init>()V

    .line 298
    iget-object v2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveId:Ljava/lang/String;

    iput-object v2, v0, Lcom/metamoji/cs/dc/params/CsGetDriveHomeParam;->driveId:Ljava/lang/String;

    .line 299
    invoke-static {v0}, Lcom/metamoji/cs/dc/CsCloudService;->executeWithAutoLoginFor(Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/metamoji/cs/dc/response/CsGetDriveHomeResponse;

    if-eqz v7, :cond_6

    .line 301
    iget v0, v7, Lcom/metamoji/cs/dc/response/CsGetDriveHomeResponse;->errorCode:I

    if-nez v0, :cond_3

    .line 303
    iget-object v0, v7, Lcom/metamoji/cs/dc/response/CsGetDriveHomeResponse;->homeDir:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, v7, Lcom/metamoji/cs/dc/response/CsGetDriveHomeResponse;->maintenanceText:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 304
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    .line 305
    invoke-virtual {v0}, Lcom/metamoji/dvm/DvmDriveManager;->getManagedObjectContextManager()Lcom/metamoji/sd/SdDriveMOCManager;

    move-result-object v0

    .line 306
    new-instance v5, Lcom/metamoji/sd/SdDriveMOManager;

    invoke-direct {v5}, Lcom/metamoji/sd/SdDriveMOManager;-><init>()V

    .line 307
    new-instance v6, Lcom/metamoji/sd/SdValue;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v6, v2}, Lcom/metamoji/sd/SdValue;-><init>(Ljava/lang/Object;)V

    .line 308
    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 310
    :try_start_1
    new-instance v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$1;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v3, p0

    :try_start_2
    invoke-direct/range {v2 .. v7}, Lcom/metamoji/sd/sync/SdDriveSyncProcess$1;-><init>(Lcom/metamoji/sd/sync/SdDriveSyncProcess;Lcom/metamoji/sd/SdManagedObjectContext;Lcom/metamoji/sd/SdDriveMOManager;Lcom/metamoji/sd/SdValue;Lcom/metamoji/cs/dc/response/CsGetDriveHomeResponse;)V

    invoke-virtual {v4, v2}, Lcom/metamoji/sd/SdManagedObjectContext;->performBlock(Lcom/metamoji/sd/SdBlock;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_0

    .line 333
    :try_start_3
    invoke-virtual {v4}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 337
    :cond_0
    invoke-virtual {v6}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 341
    :cond_1
    iget-object v0, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->getCloudService()Lcom/metamoji/sd/cs/SdCloudService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/sd/cs/SdCloudService;->getContext()Lcom/metamoji/sd/cs/SdCloudServiceContext;

    move-result-object v0

    iget-object v2, v7, Lcom/metamoji/cs/dc/response/CsGetDriveHomeResponse;->homeDir:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/cs/SdCloudServiceContext;->setHomeDir(Ljava/lang/String;)V

    .line 342
    iget-object v0, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->getCloudService()Lcom/metamoji/sd/cs/SdCloudService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/sd/cs/SdCloudService;->getContext()Lcom/metamoji/sd/cs/SdCloudServiceContext;

    move-result-object v0

    iget-object v2, v7, Lcom/metamoji/cs/dc/response/CsGetDriveHomeResponse;->maintenanceText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/cs/SdCloudServiceContext;->setMaintenanceText(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v3, p0

    :goto_0
    if-eqz v4, :cond_2

    .line 333
    invoke-virtual {v4}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 335
    :cond_2
    throw v0

    :cond_3
    move-object v3, p0

    .line 346
    iget-boolean v0, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_single:Z

    if-nez v0, :cond_4

    iget-boolean v0, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_specified:Z

    if-eqz v0, :cond_7

    .line 348
    :cond_4
    iget v0, v7, Lcom/metamoji/cs/dc/response/CsGetDriveHomeResponse;->errorCode:I

    const/16 v2, 0x9b

    if-eq v0, v2, :cond_5

    iget v0, v7, Lcom/metamoji/cs/dc/response/CsGetDriveHomeResponse;->errorCode:I

    const/16 v2, 0x9d

    if-ne v0, v2, :cond_7

    .line 350
    :cond_5
    iget-object v0, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->copyChangedDocumentsToLocal()V

    .line 352
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    iget-object v2, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveId:Ljava/lang/String;

    new-instance v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$2;

    invoke-direct {v4, p0}, Lcom/metamoji/sd/sync/SdDriveSyncProcess$2;-><init>(Lcom/metamoji/sd/sync/SdDriveSyncProcess;)V

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v1, v4, v5}, Lcom/metamoji/dvm/DvmDriveManager;->clearDrive(Ljava/lang/String;ZLcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_6
    move-object v3, p0

    :cond_7
    :goto_1
    return v1

    :catch_1
    move-exception v0

    move-object v3, p0

    .line 369
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "[SdDriveSyncProcess] :: ERROR doGetHome: %s"

    invoke-static {v2, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method protected doGetUpdatedDocument(Ljava/lang/String;)Z
    .locals 5

    .line 4143
    new-instance v0, Lcom/metamoji/sd/SdValue;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/metamoji/sd/SdValue;-><init>(Ljava/lang/Object;)V

    .line 4145
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    new-instance v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$21;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/sd/sync/SdDriveSyncProcess$21;-><init>(Lcom/metamoji/sd/sync/SdDriveSyncProcess;Lcom/metamoji/sd/SdValue;)V

    new-instance v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess$22;

    invoke-direct {v3, p0}, Lcom/metamoji/sd/sync/SdDriveSyncProcess$22;-><init>(Lcom/metamoji/sd/sync/SdDriveSyncProcess;)V

    const/4 v4, 0x0

    invoke-virtual {v1, p1, v4, v2, v3}, Lcom/metamoji/sd/SdDriveDocumentManager;->getDocumentContents(Ljava/lang/String;Lcom/metamoji/sd/cs/SdRequestCanceller;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4161
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "[SdDriveSyncProcess] :: ERROR doGetUpdatedDocument: %s"

    invoke-static {v1, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4164
    :goto_0
    invoke-virtual {v0}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method protected doGetUpdatedDriveData()Z
    .locals 4

    const/4 v0, 0x0

    .line 2616
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->internalDriveSyncLastRevision()Ljava/lang/String;

    move-result-object v1

    .line 2618
    iget-boolean v2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_errFlag:Z

    if-eqz v2, :cond_0

    return v0

    .line 2622
    :cond_0
    iget-object v2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v2}, Lcom/metamoji/sd/SdDriveDocumentManager;->getCloudService()Lcom/metamoji/sd/cs/SdCloudService;

    move-result-object v2

    .line 2623
    new-instance v3, Lcom/metamoji/sd/cs/params/SdGetDriveDataParams;

    invoke-direct {v3}, Lcom/metamoji/sd/cs/params/SdGetDriveDataParams;-><init>()V

    .line 2624
    iput-object v1, v3, Lcom/metamoji/sd/cs/params/SdGetDriveDataParams;->lastSyncRevision:Ljava/lang/String;

    .line 2625
    invoke-virtual {v2, v3}, Lcom/metamoji/sd/cs/SdCloudService;->executeWithAutoLoginFor(Lcom/metamoji/sd/cs/params/SdRequestParams;)Lcom/metamoji/sd/cs/response/SdResponseResult;

    move-result-object v1

    check-cast v1, Lcom/metamoji/sd/cs/response/SdFileResult;

    if-nez v1, :cond_1

    return v0

    .line 2629
    :cond_1
    iget v2, v1, Lcom/metamoji/sd/cs/response/SdFileResult;->errorCode:I

    const/4 v3, 0x1

    if-nez v2, :cond_3

    .line 2630
    iget-object v2, v1, Lcom/metamoji/sd/cs/response/SdFileResult;->file:Ljava/io/File;

    if-eqz v2, :cond_4

    .line 2632
    iget-object v2, v1, Lcom/metamoji/sd/cs/response/SdFileResult;->file:Ljava/io/File;

    invoke-virtual {p0, v2}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->doMergeDriveDataFromArchive(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2633
    const-string v2, "[SdDriveSyncProcess] :: FAIL doMergeDriveDataFromArchive"

    invoke-static {v2}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 2637
    :cond_2
    iget-object v1, v1, Lcom/metamoji/sd/cs/response/SdFileResult;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 2640
    :cond_3
    iget v1, v1, Lcom/metamoji/sd/cs/response/SdFileResult;->errorCode:I

    const/16 v2, 0x2aff

    if-ne v1, v2, :cond_4

    .line 2642
    sget v1, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->STATUS_ACCESS_DENIED:I

    invoke-virtual {p0, v1}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->internalPutDriveStatusOn(I)Z

    .line 2644
    iput-boolean v3, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_errFlag:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_4
    :goto_0
    return v3

    :catch_0
    move-exception v1

    .line 2652
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "[SdDriveSyncProcess] :: ERROR doGetUpdatedDriveData: %s"

    invoke-static {v2, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method protected doMergeChidrenOrderWithData(Lorg/json/JSONArray;)Z
    .locals 5

    const/4 v0, 0x0

    .line 3261
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v1}, Lcom/metamoji/sd/SdDriveDocumentManager;->getManagedObjectContextManager()Lcom/metamoji/sd/SdDriveContentsMOCManager;

    move-result-object v1

    .line 3262
    new-instance v2, Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-direct {v2, v1}, Lcom/metamoji/sd/SdDriveContentsMOManager;-><init>(Lcom/metamoji/sd/SdManagedObjectContextManager;)V

    .line 3263
    invoke-virtual {v1}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 3267
    :try_start_1
    iput-boolean v3, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_errFlag:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 3309
    :try_start_2
    invoke-virtual {v1}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    return v0

    .line 3270
    :cond_1
    :try_start_3
    new-instance v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$18;

    invoke-direct {v4, p0, v1, p1, v2}, Lcom/metamoji/sd/sync/SdDriveSyncProcess$18;-><init>(Lcom/metamoji/sd/sync/SdDriveSyncProcess;Lcom/metamoji/sd/SdManagedObjectContext;Lorg/json/JSONArray;Lcom/metamoji/sd/SdDriveContentsMOManager;)V

    invoke-virtual {v1, v4}, Lcom/metamoji/sd/SdManagedObjectContext;->performBlock(Lcom/metamoji/sd/SdBlock;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_2

    .line 3309
    :try_start_4
    invoke-virtual {v1}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_2
    return v3

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 3311
    :cond_3
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 3313
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "[SdDriveSyncProcess] :: ERROR doMergeChidrenOrderWithData: %s"

    invoke-static {v1, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method protected doMergeDocumentInfoFromPool()Z
    .locals 5

    const/4 v0, 0x0

    .line 3780
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v1}, Lcom/metamoji/sd/SdDriveDocumentManager;->getManagedObjectContextManager()Lcom/metamoji/sd/SdDriveContentsMOCManager;

    move-result-object v1

    .line 3781
    new-instance v2, Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-direct {v2, v1}, Lcom/metamoji/sd/SdDriveContentsMOManager;-><init>(Lcom/metamoji/sd/SdManagedObjectContextManager;)V

    .line 3782
    invoke-virtual {v1}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 3786
    :try_start_1
    iput-boolean v3, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_errFlag:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 4127
    :try_start_2
    invoke-virtual {v1}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    return v0

    .line 3789
    :cond_1
    :try_start_3
    new-instance v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;

    invoke-direct {v4, p0, v2, v1}, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;-><init>(Lcom/metamoji/sd/sync/SdDriveSyncProcess;Lcom/metamoji/sd/SdDriveContentsMOManager;Lcom/metamoji/sd/SdManagedObjectContext;)V

    invoke-virtual {v1, v4}, Lcom/metamoji/sd/SdManagedObjectContext;->performBlock(Lcom/metamoji/sd/SdBlock;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_2

    .line 4127
    :try_start_4
    invoke-virtual {v1}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_2
    return v3

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 4129
    :cond_3
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v1

    .line 4132
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "[SdDriveSyncProcess] :: ERROR doMergeDocumentInfoFromPool: %s"

    invoke-static {v2, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method protected doMergeDocumentInfoWithData(Lorg/json/JSONArray;Ljava/io/File;)Z
    .locals 12

    const/4 v1, 0x0

    .line 3324
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->getManagedObjectContextManager()Lcom/metamoji/sd/SdDriveContentsMOCManager;

    move-result-object v0

    .line 3325
    new-instance v8, Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-direct {v8, v0}, Lcom/metamoji/sd/SdDriveContentsMOManager;-><init>(Lcom/metamoji/sd/SdManagedObjectContextManager;)V

    .line 3326
    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v9

    .line 3327
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3328
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3329
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v0, 0x1

    .line 3331
    const-string v11, "id"

    if-nez v9, :cond_2

    .line 3333
    :try_start_1
    iput-boolean v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_errFlag:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3759
    :try_start_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/json/JSONObject;

    .line 3760
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {p2, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/metamoji/sd/SdDriveDocumentManager;->unlockDocument(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz v9, :cond_1

    .line 3765
    invoke-virtual {v9}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    return v1

    :catch_0
    move-exception v0

    move-object p1, v0

    move-object v3, p0

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v3, p0

    goto :goto_3

    .line 3336
    :cond_2
    :try_start_3
    new-instance v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v3, p0

    move-object v4, p1

    move-object v10, p2

    :try_start_4
    invoke-direct/range {v2 .. v10}, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;-><init>(Lcom/metamoji/sd/sync/SdDriveSyncProcess;Lorg/json/JSONArray;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/metamoji/sd/SdDriveContentsMOManager;Lcom/metamoji/sd/SdManagedObjectContext;Ljava/io/File;)V

    invoke-virtual {v9, v2}, Lcom/metamoji/sd/SdManagedObjectContext;->performBlock(Lcom/metamoji/sd/SdBlock;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3759
    :try_start_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/json/JSONObject;

    .line 3760
    iget-object v2, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {p2, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/metamoji/sd/SdDriveDocumentManager;->unlockDocument(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    if-eqz v9, :cond_4

    .line 3765
    invoke-virtual {v9}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_4
    return v0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v3, p0

    :goto_2
    move-object p1, v0

    .line 3759
    :goto_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 3760
    iget-object v2, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->unlockDocument(Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    if-eqz v9, :cond_6

    .line 3765
    invoke-virtual {v9}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 3767
    :cond_6
    throw p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v3, p0

    :goto_5
    move-object p1, v0

    .line 3769
    :goto_6
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "[SdDriveSyncProcess] :: ERROR doMergeDocumentInfoWithData: %s"

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method protected doMergeDriveDataFromArchive(Ljava/io/File;)Z
    .locals 14

    .line 2665
    invoke-static {}, Lcom/metamoji/sd/SdUtils;->getTempDir()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "xml_"

    invoke-static {v0, v1}, Lcom/metamoji/sd/SdUtils;->createTempDirectoryInDirectory(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2667
    :try_start_0
    new-instance v3, Ljava/util/zip/ZipFile;

    invoke-direct {v3, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_c
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2669
    :try_start_1
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object p1

    .line 2671
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v5, 0x1

    const-string v6, "[SdDriveSyncProcess] :: FAIL doMergeDocumentInfoWithData"

    if-eqz v4, :cond_11

    .line 2672
    :try_start_2
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/zip/ZipEntry;

    .line 2673
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    .line 2675
    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    add-int/2addr v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 2676
    const-string v7, ".json"

    invoke-virtual {v5, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v8, "CRC Error %s"

    const-wide/16 v9, -0x1

    if-eqz v7, :cond_e

    .line 2677
    :try_start_3
    new-instance v7, Ljava/util/zip/CheckedInputStream;

    invoke-virtual {v3, v4}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v11

    new-instance v12, Ljava/util/zip/CRC32;

    invoke-direct {v12}, Ljava/util/zip/CRC32;-><init>()V

    invoke-direct {v7, v11, v12}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V

    .line 2678
    invoke-static {v7}, Lcom/metamoji/sd/SdUtils;->readStreamAsString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v11

    .line 2679
    invoke-virtual {v7}, Ljava/util/zip/CheckedInputStream;->close()V

    .line 2682
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v12

    cmp-long v9, v12, v9

    if-eqz v9, :cond_2

    .line 2683
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v9

    invoke-virtual {v7}, Ljava/util/zip/CheckedInputStream;->getChecksum()Ljava/util/zip/Checksum;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v12

    cmp-long v4, v9, v12

    if-eqz v4, :cond_2

    .line 2684
    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v8, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_b
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2766
    :try_start_4
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    if-eqz v0, :cond_1

    .line 2770
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2771
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    :cond_1
    return v1

    .line 2689
    :cond_2
    :try_start_5
    const-string v4, "archive data:%s %s"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0xff

    if-le v7, v8, :cond_3

    const/16 v7, 0xfe

    invoke-virtual {v11, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_3
    move-object v7, v11

    :goto_1
    filled-new-array {v5, v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2691
    new-instance v4, Lorg/json/JSONTokener;

    invoke-direct {v4, v11}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v4

    .line 2693
    const-string v7, "drive.json"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2694
    check-cast v4, Lorg/json/JSONObject;

    const-string v2, "lastUpdateRevision"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 2695
    :cond_4
    const-string/jumbo v7, "tagdefs_"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_b
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-string v8, "[SdDriveSyncProcess] :: FAIL doMergeTagDefWithData"

    if-eqz v7, :cond_6

    .line 2697
    :try_start_6
    check-cast v4, Lorg/json/JSONArray;

    invoke-virtual {p0, v4}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->doMergeTagDefWithData(Lorg/json/JSONArray;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2698
    invoke-static {v8}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_b
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2766
    :try_start_7
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    :catch_1
    if-eqz v0, :cond_5

    .line 2770
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2771
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    :cond_5
    return v1

    .line 2701
    :cond_6
    :try_start_8
    const-string/jumbo v7, "tagorder.json"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 2703
    check-cast v4, Lorg/json/JSONObject;

    invoke-virtual {p0, v4}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->doMergeTagOrderWithData(Lorg/json/JSONObject;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2704
    invoke-static {v8}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_b
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 2766
    :try_start_9
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    :catch_2
    if-eqz v0, :cond_7

    .line 2770
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 2771
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    :cond_7
    return v1

    .line 2707
    :cond_8
    :try_start_a
    const-string v7, "folderdefs_"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 2709
    check-cast v4, Lorg/json/JSONArray;

    invoke-virtual {p0, v4}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->doMergeFolderDefWithData(Lorg/json/JSONArray;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2710
    const-string p1, "[SdDriveSyncProcess] :: FAIL doMergeFolderDefWithData"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_b
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 2766
    :try_start_b
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    :catch_3
    if-eqz v0, :cond_9

    .line 2770
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 2771
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    :cond_9
    return v1

    .line 2713
    :cond_a
    :try_start_c
    const-string v7, "childrenorders_"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 2715
    check-cast v4, Lorg/json/JSONArray;

    invoke-virtual {p0, v4}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->doMergeChidrenOrderWithData(Lorg/json/JSONArray;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2716
    const-string p1, "[SdDriveSyncProcess] :: FAIL doMergeChidrenOrderWithData"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_b
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 2766
    :try_start_d
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    :catch_4
    if-eqz v0, :cond_b

    .line 2770
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 2771
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    :cond_b
    return v1

    .line 2719
    :cond_c
    :try_start_e
    const-string v7, "documents_"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2721
    check-cast v4, Lorg/json/JSONArray;

    invoke-virtual {p0, v4, v0}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->doMergeDocumentInfoWithData(Lorg/json/JSONArray;Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2722
    invoke-static {v6}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_b
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 2766
    :try_start_f
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5

    :catch_5
    if-eqz v0, :cond_d

    .line 2770
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 2771
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    :cond_d
    return v1

    .line 2726
    :cond_e
    :try_start_10
    const-string v6, ".xml"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v0, :cond_0

    .line 2729
    new-instance v6, Ljava/util/zip/CheckedInputStream;

    invoke-virtual {v3, v4}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v7

    new-instance v11, Ljava/util/zip/CRC32;

    invoke-direct {v11}, Ljava/util/zip/CRC32;-><init>()V

    invoke-direct {v6, v7, v11}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V

    .line 2730
    invoke-static {v6}, Lcom/metamoji/sd/SdUtils;->readStreamAsString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    .line 2731
    invoke-virtual {v6}, Ljava/util/zip/CheckedInputStream;->close()V

    .line 2734
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v11

    cmp-long v9, v11, v9

    if-eqz v9, :cond_10

    .line 2735
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v9

    invoke-virtual {v6}, Ljava/util/zip/CheckedInputStream;->getChecksum()Ljava/util/zip/Checksum;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v11

    cmp-long v4, v9, v11

    if-eqz v4, :cond_10

    .line 2736
    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v8, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_b
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 2766
    :try_start_11
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_6

    :catch_6
    if-eqz v0, :cond_f

    .line 2770
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 2771
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    :cond_f
    return v1

    .line 2741
    :cond_10
    :try_start_12
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2742
    invoke-static {v7, v4}, Lcom/metamoji/sd/SdUtils;->writeStringAsFile(Ljava/lang/String;Ljava/io/File;)V

    goto/16 :goto_0

    .line 2748
    :cond_11
    invoke-virtual {p0}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->doMergeDocumentInfoFromPool()Z

    move-result p1

    if-nez p1, :cond_13

    .line 2749
    invoke-static {v6}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_b
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 2766
    :try_start_13
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_7

    :catch_7
    if-eqz v0, :cond_12

    .line 2770
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 2771
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    :cond_12
    return v1

    :cond_13
    if-nez v2, :cond_15

    .line 2766
    :try_start_14
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_8

    :catch_8
    if-eqz v0, :cond_14

    .line 2770
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 2771
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    :cond_14
    return v1

    .line 2757
    :cond_15
    :try_start_15
    invoke-virtual {p0, v2}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->internalUpdateDriveSyncLastRevision(Ljava/lang/String;)Z

    move-result p1
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_b
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    if-nez p1, :cond_17

    .line 2766
    :try_start_16
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_9

    :catch_9
    if-eqz v0, :cond_16

    .line 2770
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_16

    .line 2771
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    :cond_16
    return v1

    .line 2766
    :cond_17
    :try_start_17
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_a

    :catch_a
    if-eqz v0, :cond_18

    .line 2770
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 2771
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    :cond_18
    return v5

    :catchall_0
    move-exception p1

    move-object v2, v3

    goto :goto_3

    :catch_b
    move-exception p1

    move-object v2, v3

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_c
    move-exception p1

    .line 2761
    :goto_2
    :try_start_18
    const-string v3, "[SdDriveSyncProcess] :: ERROR doMergeDriveDataFromArchive: %s"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    if-eqz v2, :cond_19

    .line 2766
    :try_start_19
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_d

    :catch_d
    :cond_19
    if-eqz v0, :cond_1a

    .line 2770
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 2771
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    :cond_1a
    return v1

    :goto_3
    if-eqz v2, :cond_1b

    .line 2766
    :try_start_1a
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_e

    :catch_e
    :cond_1b
    if-eqz v0, :cond_1c

    .line 2770
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 2771
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    .line 2773
    :cond_1c
    throw p1
.end method

.method protected doMergeFolderDefWithData(Lorg/json/JSONArray;)Z
    .locals 5

    const/4 v0, 0x0

    .line 3053
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v1}, Lcom/metamoji/sd/SdDriveDocumentManager;->getManagedObjectContextManager()Lcom/metamoji/sd/SdDriveContentsMOCManager;

    move-result-object v1

    .line 3054
    new-instance v2, Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-direct {v2, v1}, Lcom/metamoji/sd/SdDriveContentsMOManager;-><init>(Lcom/metamoji/sd/SdManagedObjectContextManager;)V

    .line 3055
    invoke-virtual {v1}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 3059
    :try_start_1
    iput-boolean v3, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_errFlag:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 3246
    :try_start_2
    invoke-virtual {v1}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    return v0

    .line 3062
    :cond_1
    :try_start_3
    new-instance v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$17;

    invoke-direct {v4, p0, v2, v1, p1}, Lcom/metamoji/sd/sync/SdDriveSyncProcess$17;-><init>(Lcom/metamoji/sd/sync/SdDriveSyncProcess;Lcom/metamoji/sd/SdDriveContentsMOManager;Lcom/metamoji/sd/SdManagedObjectContext;Lorg/json/JSONArray;)V

    invoke-virtual {v1, v4}, Lcom/metamoji/sd/SdManagedObjectContext;->performBlock(Lcom/metamoji/sd/SdBlock;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_2

    .line 3246
    :try_start_4
    invoke-virtual {v1}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_2
    return v3

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 3248
    :cond_3
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 3250
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "[SdDriveSyncProcess] :: ERROR doMergeFolderDefWithData: %s"

    invoke-static {v1, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method protected doMergeTagDefWithData(Lorg/json/JSONArray;)Z
    .locals 5

    const/4 v0, 0x0

    .line 2783
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v1}, Lcom/metamoji/sd/SdDriveDocumentManager;->getManagedObjectContextManager()Lcom/metamoji/sd/SdDriveContentsMOCManager;

    move-result-object v1

    .line 2784
    new-instance v2, Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-direct {v2, v1}, Lcom/metamoji/sd/SdDriveContentsMOManager;-><init>(Lcom/metamoji/sd/SdManagedObjectContextManager;)V

    .line 2785
    invoke-virtual {v1}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 2789
    :try_start_1
    iput-boolean v3, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_errFlag:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 2977
    :try_start_2
    invoke-virtual {v1}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    return v0

    .line 2793
    :cond_1
    :try_start_3
    new-instance v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;

    invoke-direct {v4, p0, v2, v1, p1}, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;-><init>(Lcom/metamoji/sd/sync/SdDriveSyncProcess;Lcom/metamoji/sd/SdDriveContentsMOManager;Lcom/metamoji/sd/SdManagedObjectContext;Lorg/json/JSONArray;)V

    invoke-virtual {v1, v4}, Lcom/metamoji/sd/SdManagedObjectContext;->performBlock(Lcom/metamoji/sd/SdBlock;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_2

    .line 2977
    :try_start_4
    invoke-virtual {v1}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_2
    return v3

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 2979
    :cond_3
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 2982
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "[SdDriveSyncProcess] :: ERROR doMergeTagDefWithData: %s"

    invoke-static {v1, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method protected doMergeTagOrderWithData(Lorg/json/JSONObject;)Z
    .locals 5

    const/4 v0, 0x0

    .line 2993
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v1}, Lcom/metamoji/sd/SdDriveDocumentManager;->getManagedObjectContextManager()Lcom/metamoji/sd/SdDriveContentsMOCManager;

    move-result-object v1

    .line 2994
    new-instance v2, Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-direct {v2, v1}, Lcom/metamoji/sd/SdDriveContentsMOManager;-><init>(Lcom/metamoji/sd/SdManagedObjectContextManager;)V

    .line 2995
    invoke-virtual {v1}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 2999
    :try_start_1
    iput-boolean v3, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_errFlag:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 3038
    :try_start_2
    invoke-virtual {v1}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    return v0

    .line 3003
    :cond_1
    :try_start_3
    new-instance v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$16;

    invoke-direct {v4, p0, v1, p1, v2}, Lcom/metamoji/sd/sync/SdDriveSyncProcess$16;-><init>(Lcom/metamoji/sd/sync/SdDriveSyncProcess;Lcom/metamoji/sd/SdManagedObjectContext;Lorg/json/JSONObject;Lcom/metamoji/sd/SdDriveContentsMOManager;)V

    invoke-virtual {v1, v4}, Lcom/metamoji/sd/SdManagedObjectContext;->performBlock(Lcom/metamoji/sd/SdBlock;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_2

    .line 3038
    :try_start_4
    invoke-virtual {v1}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_2
    return v3

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 3040
    :cond_3
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 3042
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "[SdDriveSyncProcess] :: ERROR doMergeTagOrderWithData: %s"

    invoke-static {v1, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method protected doPutUpdatedDocument(Ljava/lang/String;Z)Z
    .locals 27

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1236
    const-string v0, "UTF-8"

    const-string v3, ".tmp"

    const-string v4, "mmj.sd.syncprocess.compact."

    const-string v5, "contentsRevision"

    const/4 v6, 0x0

    :try_start_0
    iget-object v7, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v7}, Lcom/metamoji/sd/SdDriveDocumentManager;->getManagedObjectContextManager()Lcom/metamoji/sd/SdDriveContentsMOCManager;

    move-result-object v7

    .line 1237
    new-instance v8, Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-direct {v8, v7}, Lcom/metamoji/sd/SdDriveContentsMOManager;-><init>(Lcom/metamoji/sd/SdManagedObjectContextManager;)V

    .line 1238
    invoke-virtual {v7}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v9, 0x1

    if-nez v7, :cond_1

    .line 1242
    :try_start_1
    iput-boolean v9, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_errFlag:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    if-eqz v7, :cond_0

    .line 1518
    :goto_0
    :try_start_2
    invoke-virtual {v7}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    return v6

    .line 1246
    :cond_1
    :try_start_3
    iget-object v10, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v10, v2}, Lcom/metamoji/sd/SdDriveDocumentManager;->lockDocument(Ljava/lang/String;)Z

    move-result v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    if-nez v10, :cond_3

    if-eqz v7, :cond_2

    .line 1518
    :try_start_4
    invoke-virtual {v7}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    return v9

    :cond_3
    const/4 v10, 0x0

    .line 1254
    :try_start_5
    invoke-virtual {v8, v2, v7}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getDocumentById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMODocument;

    move-result-object v11

    if-eqz v11, :cond_4a

    .line 1256
    invoke-virtual {v11}, Lcom/metamoji/sd/entities/SdMODocument;->getContentsUpdateFlag()Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-nez v12, :cond_4

    goto/16 :goto_12

    .line 1262
    :cond_4
    invoke-virtual {v11}, Lcom/metamoji/sd/entities/SdMODocument;->getDeleteFlag()Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    const/16 v13, 0x2b02

    const/16 v14, 0x2aff

    const/16 v15, 0x2afa

    if-eqz v12, :cond_b

    .line 1265
    :try_start_6
    iget-object v0, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->getCloudService()Lcom/metamoji/sd/cs/SdCloudService;

    move-result-object v0

    .line 1266
    new-instance v3, Lcom/metamoji/sd/cs/params/SdDeleteDocumentDataParams;

    invoke-direct {v3}, Lcom/metamoji/sd/cs/params/SdDeleteDocumentDataParams;-><init>()V

    .line 1267
    iput-object v2, v3, Lcom/metamoji/sd/cs/params/SdDeleteDocumentDataParams;->documentId:Ljava/lang/String;

    .line 1268
    invoke-virtual {v11}, Lcom/metamoji/sd/entities/SdMODocument;->getContentsRevision()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/metamoji/sd/cs/params/SdDeleteDocumentDataParams;->check:Ljava/lang/String;

    .line 1269
    invoke-virtual {v11}, Lcom/metamoji/sd/entities/SdMODocument;->getContentsUpdate()Ljava/util/Date;

    move-result-object v4

    iput-object v4, v3, Lcom/metamoji/sd/cs/params/SdDeleteDocumentDataParams;->update:Ljava/util/Date;

    .line 1271
    invoke-virtual {v0, v3}, Lcom/metamoji/sd/cs/SdCloudService;->executeWithAutoLoginFor(Lcom/metamoji/sd/cs/params/SdRequestParams;)Lcom/metamoji/sd/cs/response/SdResponseResult;

    move-result-object v3

    check-cast v3, Lcom/metamoji/sd/cs/response/SdDeleteDocumentDataResult;

    if-eqz v3, :cond_a

    .line 1274
    iget v4, v3, Lcom/metamoji/sd/cs/response/SdDeleteDocumentDataResult;->errorCode:I

    if-nez v4, :cond_5

    .line 1275
    invoke-virtual {v0}, Lcom/metamoji/sd/cs/SdCloudService;->getContext()Lcom/metamoji/sd/cs/SdCloudServiceContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/sd/cs/SdCloudServiceContext;->getDriveId()Ljava/lang/String;

    move-result-object v0

    iget-object v4, v3, Lcom/metamoji/sd/cs/response/SdDeleteDocumentDataResult;->driveId:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v3, Lcom/metamoji/sd/cs/response/SdDeleteDocumentDataResult;->documentId:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1276
    invoke-virtual {v1, v2, v10, v6}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->commitChangedDocument(Ljava/lang/String;Ljava/lang/String;Z)Z

    goto :goto_1

    .line 1279
    :cond_5
    iget v0, v3, Lcom/metamoji/sd/cs/response/SdDeleteDocumentDataResult;->errorCode:I

    if-ne v0, v15, :cond_6

    .line 1281
    invoke-virtual/range {p0 .. p1}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->conflictCopyWithDocId(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 1282
    :cond_6
    iget v0, v3, Lcom/metamoji/sd/cs/response/SdDeleteDocumentDataResult;->errorCode:I

    if-ne v0, v14, :cond_8

    .line 1284
    sget v0, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->STATUS_ACCESS_DENIED:I

    invoke-virtual {v1, v0}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->internalPutDriveStatusOn(I)Z

    .line 1286
    iput-boolean v9, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_errFlag:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1505
    :try_start_7
    iget-object v0, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/SdDriveDocumentManager;->unlockDocument(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    if-eqz v7, :cond_7

    goto/16 :goto_0

    :cond_7
    return v6

    .line 1288
    :cond_8
    :try_start_8
    iget v0, v3, Lcom/metamoji/sd/cs/response/SdDeleteDocumentDataResult;->errorCode:I

    if-ne v0, v13, :cond_a

    .line 1290
    sget v0, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->STATUS_EXPIRED:I

    invoke-virtual {v1, v0}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->internalPutDriveStatusOn(I)Z

    .line 1292
    iput-boolean v9, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_skipSyncDocuments:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1505
    :try_start_9
    iget-object v0, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/SdDriveDocumentManager;->unlockDocument(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    if-eqz v7, :cond_9

    goto/16 :goto_0

    :cond_9
    return v6

    :cond_a
    :goto_1
    move-object v3, v10

    goto/16 :goto_11

    :catchall_0
    move-exception v0

    move-object/from16 v16, v10

    goto/16 :goto_15

    .line 1298
    :cond_b
    :try_start_a
    invoke-virtual {v11}, Lcom/metamoji/sd/entities/SdMODocument;->getContentsAttribute()Ljava/lang/Integer;

    move-result-object v12

    const/16 v10, 0x800

    invoke-static {v12, v10}, Lcom/metamoji/sd/SdUtils;->isOnBitFlag(Ljava/lang/Integer;I)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 1299
    invoke-virtual {v11}, Lcom/metamoji/sd/entities/SdMODocument;->getOptions()Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v10, v9}, Lcom/metamoji/sd/SdUtils;->isOnBitFlag(Ljava/lang/Integer;I)Z

    move-result v10

    if-nez v10, :cond_d

    .line 1301
    const-string/jumbo v0, "skip sync for exist offline layer data: %s"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 1505
    :try_start_b
    iget-object v0, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/SdDriveDocumentManager;->unlockDocument(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    if-eqz v7, :cond_c

    goto/16 :goto_0

    :cond_c
    return v6

    .line 1305
    :cond_d
    :try_start_c
    iget-object v10, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v10, v2}, Lcom/metamoji/sd/SdDriveDocumentManager;->contentsPathWithDocId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1306
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1308
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_f

    .line 1310
    const-string v0, "contents file not found: %s"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 1505
    :try_start_d
    iget-object v0, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/SdDriveDocumentManager;->unlockDocument(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    if-eqz v7, :cond_e

    goto/16 :goto_0

    :cond_e
    return v6

    .line 1313
    :cond_f
    :try_start_e
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    .line 1314
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1315
    invoke-virtual {v11}, Lcom/metamoji/sd/entities/SdMODocument;->getTags()Lcom/j256/ormlite/dao/ForeignCollection;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lcom/j256/ormlite/dao/ForeignCollection;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_10

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/metamoji/sd/entities/SdMODocumentTag;

    .line 1316
    invoke-virtual/range {v18 .. v18}, Lcom/metamoji/sd/entities/SdMODocumentTag;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v14, 0x2aff

    goto :goto_2

    .line 1325
    :cond_10
    new-instance v14, Lcom/metamoji/nt/doceditor/NtDocumentEditorForQuickEdit;

    invoke-direct {v14}, Lcom/metamoji/nt/doceditor/NtDocumentEditorForQuickEdit;-><init>()V

    .line 1326
    iget-object v15, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveId:Ljava/lang/String;

    invoke-interface {v14, v2, v15, v12, v6}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->openStateFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Z)V

    .line 1328
    const-string v15, "protected"

    invoke-interface {v14, v15}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->metaDataForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    invoke-static {v15, v6}, Lcom/metamoji/cm/CmUtils;->toBool(Ljava/lang/Object;Z)Z

    move-result v15
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    move/from16 v18, v6

    .line 1329
    const-string/jumbo v6, "thumbnail"

    if-nez v15, :cond_11

    .line 1330
    :try_start_f
    invoke-interface {v14, v6}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->metaDataForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/metamoji/cm/Blob;

    if-eqz v15, :cond_11

    .line 1332
    invoke-virtual {v15}, Lcom/metamoji/cm/Blob;->getData()[B

    move-result-object v15

    goto :goto_3

    :cond_11
    const/4 v15, 0x0

    .line 1337
    :goto_3
    const-string v9, "collaboRoomId"

    invoke-interface {v14, v9}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->metaDataForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object/from16 v20, v9

    .line 1338
    const-string v9, "collaboCompanyId"

    invoke-interface {v14, v9}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->metaDataForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object/from16 v21, v9

    .line 1339
    const-string v9, "collaboLastSequence"

    invoke-interface {v14, v9}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->metaDataForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-static {v9}, Lcom/metamoji/sd/SdUtils;->numToString(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v22, v9

    .line 1341
    sget-object v9, Lcom/metamoji/dm/DmDocumentManagerCloseMode;->Discard:Lcom/metamoji/dm/DmDocumentManagerCloseMode;

    invoke-interface {v14, v9}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->closeInMode(Lcom/metamoji/dm/DmDocumentManagerCloseMode;)V

    .line 1343
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 1345
    const-string/jumbo v14, "title"

    invoke-virtual {v11}, Lcom/metamoji/sd/entities/SdMODocument;->getTitle()Ljava/lang/String;

    move-result-object v23
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    const-string v24, ""

    if-eqz v23, :cond_12

    :try_start_10
    invoke-virtual {v11}, Lcom/metamoji/sd/entities/SdMODocument;->getTitle()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v26, v23

    move-object/from16 v23, v10

    move-object/from16 v10, v26

    goto :goto_4

    :cond_12
    move-object/from16 v23, v10

    move-object/from16 v10, v24

    :goto_4
    invoke-virtual {v9, v14, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1346
    const-string/jumbo v10, "titleUpdate"

    invoke-virtual {v11}, Lcom/metamoji/sd/entities/SdMODocument;->getTitleUpdate()Ljava/util/Date;

    move-result-object v14

    move-object/from16 v25, v13

    invoke-static {v14}, Lcom/metamoji/sd/SdUtils;->dateToTime(Ljava/util/Date;)J

    move-result-wide v13

    invoke-virtual {v9, v10, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1347
    const-string/jumbo v10, "titleRevision"

    invoke-virtual {v11}, Lcom/metamoji/sd/entities/SdMODocument;->getTitleRevision()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_13

    invoke-virtual {v11}, Lcom/metamoji/sd/entities/SdMODocument;->getTitleRevision()Ljava/lang/String;

    move-result-object v13

    goto :goto_5

    :cond_13
    move-object/from16 v13, v24

    :goto_5
    invoke-virtual {v9, v10, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1348
    const-string/jumbo v10, "tags"

    invoke-static/range {v25 .. v25}, Lcom/metamoji/sd/SdUtils;->pathFromTags(Ljava/util/List;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v10, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1349
    const-string/jumbo v10, "tagsOrigin"

    invoke-virtual {v11}, Lcom/metamoji/sd/entities/SdMODocument;->getTagsOrigin()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_14

    invoke-virtual {v11}, Lcom/metamoji/sd/entities/SdMODocument;->getTagsOrigin()Ljava/lang/String;

    move-result-object v13

    goto :goto_6

    :cond_14
    move-object/from16 v13, v24

    :goto_6
    invoke-virtual {v9, v10, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1350
    const-string/jumbo v10, "tagsUpdate"

    invoke-virtual {v11}, Lcom/metamoji/sd/entities/SdMODocument;->getTagsUpdate()Ljava/util/Date;

    move-result-object v13

    invoke-static {v13}, Lcom/metamoji/sd/SdUtils;->dateToTime(Ljava/util/Date;)J

    move-result-wide v13

    invoke-virtual {v9, v10, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1351
    const-string/jumbo v10, "tagsRevision"

    invoke-virtual {v11}, Lcom/metamoji/sd/entities/SdMODocument;->getTagsRevision()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_15

    invoke-virtual {v11}, Lcom/metamoji/sd/entities/SdMODocument;->getTagsRevision()Ljava/lang/String;

    move-result-object v13

    goto :goto_7

    :cond_15
    move-object/from16 v13, v24

    :goto_7
    invoke-virtual {v9, v10, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1354
    invoke-virtual {v11}, Lcom/metamoji/sd/entities/SdMODocument;->getContentsRevision()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_16

    invoke-virtual {v11}, Lcom/metamoji/sd/entities/SdMODocument;->getCopyFrom()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_16

    .line 1355
    const-string v10, "copyFrom"

    invoke-virtual {v11}, Lcom/metamoji/sd/entities/SdMODocument;->getCopyFrom()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v10, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1356
    const-string v10, "copyRevision"

    invoke-virtual {v11}, Lcom/metamoji/sd/entities/SdMODocument;->getCopyRevision()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v10, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1359
    :cond_16
    const-string v10, "contentsMimeType"

    invoke-virtual {v11}, Lcom/metamoji/sd/entities/SdMODocument;->getContentsMimeType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v10, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1360
    const-string v10, "contentsCreate"

    invoke-virtual {v11}, Lcom/metamoji/sd/entities/SdMODocument;->getContentsCreate()Ljava/util/Date;

    move-result-object v13

    invoke-static {v13}, Lcom/metamoji/sd/SdUtils;->dateToTime(Ljava/util/Date;)J

    move-result-wide v13

    invoke-virtual {v9, v10, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1361
    const-string v10, "contentsUpdate"

    invoke-virtual {v11}, Lcom/metamoji/sd/entities/SdMODocument;->getContentsUpdate()Ljava/util/Date;

    move-result-object v13

    invoke-static {v13}, Lcom/metamoji/sd/SdUtils;->dateToTime(Ljava/util/Date;)J

    move-result-wide v13

    invoke-virtual {v9, v10, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1362
    invoke-virtual {v11}, Lcom/metamoji/sd/entities/SdMODocument;->getContentsRevision()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_17

    invoke-virtual {v11}, Lcom/metamoji/sd/entities/SdMODocument;->getContentsRevision()Ljava/lang/String;

    move-result-object v10

    goto :goto_8

    :cond_17
    move-object/from16 v10, v24

    :goto_8
    invoke-virtual {v9, v5, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1364
    invoke-virtual {v11}, Lcom/metamoji/sd/entities/SdMODocument;->getContentsAttribute()Ljava/lang/Integer;

    move-result-object v10

    if-eqz v10, :cond_18

    .line 1365
    const-string v10, "contentsAttribute"

    invoke-virtual {v11}, Lcom/metamoji/sd/entities/SdMODocument;->getContentsAttribute()Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v9, v10, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1369
    :cond_18
    const-string v10, "options"

    invoke-virtual {v11}, Lcom/metamoji/sd/entities/SdMODocument;->getOptions()Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v9, v10, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1370
    const-string v10, "optionsOrigin"

    invoke-virtual {v11}, Lcom/metamoji/sd/entities/SdMODocument;->getOptionsOrigin()Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v9, v10, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1371
    const-string v10, "optionsRevision"

    invoke-virtual {v11}, Lcom/metamoji/sd/entities/SdMODocument;->getOptionsRevision()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_19

    invoke-virtual {v11}, Lcom/metamoji/sd/entities/SdMODocument;->getOptionsRevision()Ljava/lang/String;

    move-result-object v13

    goto :goto_9

    :cond_19
    move-object/from16 v13, v24

    :goto_9
    invoke-virtual {v9, v10, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1372
    const-string v10, "optionsUpdate"

    invoke-virtual {v11}, Lcom/metamoji/sd/entities/SdMODocument;->getOptionsUpdate()Ljava/util/Date;

    move-result-object v13

    invoke-static {v13}, Lcom/metamoji/sd/SdUtils;->dateToTime(Ljava/util/Date;)J

    move-result-wide v13

    invoke-virtual {v9, v10, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1376
    invoke-virtual {v8, v2, v7}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getDocumentSearchDataById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMODocumentSearchData;

    move-result-object v8

    if-eqz v8, :cond_1a

    .line 1378
    invoke-virtual {v8}, Lcom/metamoji/sd/entities/SdMODocumentSearchData;->getData()Ljava/lang/String;

    move-result-object v8

    goto :goto_a

    :cond_1a
    const/4 v8, 0x0

    .line 1382
    :goto_a
    const-string/jumbo v10, "roomId"

    if-eqz v20, :cond_1b

    move-object/from16 v13, v20

    goto :goto_b

    :cond_1b
    move-object/from16 v13, v24

    :goto_b
    invoke-virtual {v9, v10, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1383
    const-string v10, "companyId"

    if-eqz v21, :cond_1c

    move-object/from16 v13, v21

    goto :goto_c

    :cond_1c
    move-object/from16 v13, v24

    :goto_c
    invoke-virtual {v9, v10, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1384
    const-string v10, "lastSequence"

    if-eqz v22, :cond_1d

    move-object/from16 v13, v22

    goto :goto_d

    :cond_1d
    move-object/from16 v13, v24

    :goto_d
    invoke-virtual {v9, v10, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1386
    invoke-static {}, Lcom/metamoji/sd/SdUtils;->getTempDir()Ljava/io/File;

    move-result-object v10

    invoke-static {v4, v3, v10}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v10
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 1388
    :try_start_11
    new-instance v13, Lcom/metamoji/df/model/ModelManagerDataCompactor;

    invoke-direct {v13}, Lcom/metamoji/df/model/ModelManagerDataCompactor;-><init>()V

    .line 1389
    invoke-virtual {v13, v12, v10}, Lcom/metamoji/df/model/ModelManagerDataCompactor;->compactDataFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v12
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    if-nez v12, :cond_20

    .line 1505
    :try_start_12
    iget-object v0, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/SdDriveDocumentManager;->unlockDocument(Ljava/lang/String;)V

    if-eqz v10, :cond_1e

    .line 1508
    invoke-virtual {v10}, Ljava/io/File;->delete()Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    :cond_1e
    if-eqz v7, :cond_1f

    .line 1518
    :try_start_13
    invoke-virtual {v7}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_1

    :cond_1f
    return v18

    .line 1396
    :cond_20
    :try_start_14
    const-string v12, "contentsFileSize"

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v13

    invoke-virtual {v9, v12, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1398
    invoke-static {}, Lcom/metamoji/sd/SdUtils;->getTempDir()Ljava/io/File;

    move-result-object v12

    invoke-static {v4, v3, v12}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    .line 1401
    :try_start_15
    new-instance v4, Ljava/util/zip/ZipOutputStream;

    new-instance v12, Ljava/io/BufferedOutputStream;

    new-instance v13, Ljava/io/FileOutputStream;

    invoke-direct {v13, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v12, v13}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v4, v12}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    .line 1404
    :try_start_16
    const-string v12, "meta.json"

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    sget v13, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->ZIP_NO_COMPRESSION:I

    invoke-virtual {v1, v4, v12, v9, v13}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->writeFileInZip(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;[BI)V

    .line 1405
    const-string v9, "contents"

    sget v12, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->ZIP_BEST_SPEED:I

    invoke-virtual {v1, v4, v9, v10, v12}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->writeFileInZip(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Ljava/io/File;I)V

    if-eqz v15, :cond_21

    .line 1407
    sget v9, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->ZIP_NO_COMPRESSION:I

    invoke-virtual {v1, v4, v6, v15, v9}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->writeFileInZip(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;[BI)V

    :cond_21
    if-eqz v8, :cond_22

    .line 1410
    const-string/jumbo v6, "search.xml"

    invoke-virtual {v8, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    sget v8, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->ZIP_BEST_SPEED:I

    invoke-virtual {v1, v4, v6, v0, v8}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->writeFileInZip(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;[BI)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    .line 1413
    :cond_22
    :try_start_17
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 1416
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual/range {v23 .. v23}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    sub-long/2addr v8, v12

    .line 1419
    iget-object v0, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->getCloudService()Lcom/metamoji/sd/cs/SdCloudService;

    move-result-object v0

    .line 1420
    new-instance v4, Lcom/metamoji/sd/cs/params/SdPutDocumentDataParams;

    invoke-direct {v4}, Lcom/metamoji/sd/cs/params/SdPutDocumentDataParams;-><init>()V

    .line 1421
    iput-object v2, v4, Lcom/metamoji/sd/cs/params/SdPutDocumentDataParams;->documentId:Ljava/lang/String;

    .line 1422
    iput-object v3, v4, Lcom/metamoji/sd/cs/params/SdPutDocumentDataParams;->dataFile:Ljava/io/File;

    .line 1423
    invoke-virtual {v11}, Lcom/metamoji/sd/entities/SdMODocument;->getContentsRevision()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/metamoji/sd/cs/params/SdPutDocumentDataParams;->check:Ljava/lang/String;

    .line 1424
    invoke-virtual {v11}, Lcom/metamoji/sd/entities/SdMODocument;->getLocalOptions()Ljava/lang/Integer;

    move-result-object v6

    const/4 v11, 0x1

    invoke-static {v6, v11}, Lcom/metamoji/sd/SdUtils;->isOnBitFlag(Ljava/lang/Integer;I)Z

    move-result v6

    iput-boolean v6, v4, Lcom/metamoji/sd/cs/params/SdPutDocumentDataParams;->fromV2:Z

    const-wide/32 v11, 0xea60

    cmp-long v6, v8, v11

    if-ltz v6, :cond_2b

    .line 1428
    new-instance v6, Lcom/metamoji/sd/cs/params/SdGetDocumentMetaParams;

    invoke-direct {v6}, Lcom/metamoji/sd/cs/params/SdGetDocumentMetaParams;-><init>()V

    .line 1429
    iput-object v2, v6, Lcom/metamoji/sd/cs/params/SdGetDocumentMetaParams;->documentId:Ljava/lang/String;

    .line 1430
    invoke-virtual {v0, v6}, Lcom/metamoji/sd/cs/SdCloudService;->executeWithAutoLoginFor(Lcom/metamoji/sd/cs/params/SdRequestParams;)Lcom/metamoji/sd/cs/response/SdResponseResult;

    move-result-object v6

    check-cast v6, Lcom/metamoji/sd/cs/response/SdGetDocumentMetaResult;

    if-eqz v6, :cond_23

    .line 1434
    iget v8, v6, Lcom/metamoji/sd/cs/response/SdGetDocumentMetaResult;->errorCode:I

    if-nez v8, :cond_23

    .line 1435
    iget-object v8, v6, Lcom/metamoji/sd/cs/response/SdGetDocumentMetaResult;->documentId:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_23

    .line 1436
    iget-object v6, v6, Lcom/metamoji/sd/cs/response/SdGetDocumentMetaResult;->meta:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_e

    :cond_23
    const/4 v5, 0x0

    :goto_e
    if-eqz v5, :cond_2b

    .line 1441
    iget-object v6, v4, Lcom/metamoji/sd/cs/params/SdPutDocumentDataParams;->check:Ljava/lang/String;

    if-eqz v6, :cond_2b

    iget-boolean v6, v4, Lcom/metamoji/sd/cs/params/SdPutDocumentDataParams;->fromV2:Z

    if-nez v6, :cond_2b

    iget-object v6, v4, Lcom/metamoji/sd/cs/params/SdPutDocumentDataParams;->check:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2b

    .line 1443
    invoke-virtual/range {p0 .. p1}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->conflictCopyWithDocId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_27

    if-eqz p2, :cond_27

    move/from16 v4, v18

    .line 1447
    invoke-virtual {v1, v0, v4}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->doPutUpdatedDocument(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    .line 1505
    :try_start_18
    iget-object v4, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v4, v2}, Lcom/metamoji/sd/SdDriveDocumentManager;->unlockDocument(Ljava/lang/String;)V

    if-eqz v10, :cond_24

    .line 1508
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    :cond_24
    if-eqz v3, :cond_25

    .line 1512
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_25
    if-eqz v7, :cond_26

    goto :goto_f

    :cond_26
    return v0

    .line 1505
    :cond_27
    iget-object v0, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/SdDriveDocumentManager;->unlockDocument(Ljava/lang/String;)V

    if-eqz v10, :cond_28

    .line 1508
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    :cond_28
    if-eqz v3, :cond_29

    .line 1512
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    :cond_29
    if-eqz v7, :cond_2a

    .line 1518
    :try_start_19
    invoke-virtual {v7}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_1

    const/16 v19, 0x1

    return v19

    :cond_2a
    const/16 v19, 0x1

    return v19

    .line 1453
    :cond_2b
    :try_start_1a
    invoke-virtual {v0, v4}, Lcom/metamoji/sd/cs/SdCloudService;->executeWithAutoLoginFor(Lcom/metamoji/sd/cs/params/SdRequestParams;)Lcom/metamoji/sd/cs/response/SdResponseResult;

    move-result-object v4

    check-cast v4, Lcom/metamoji/sd/cs/response/SdPutDocumentDataResult;

    if-eqz v4, :cond_46

    .line 1456
    iget v5, v4, Lcom/metamoji/sd/cs/response/SdPutDocumentDataResult;->errorCode:I

    if-nez v5, :cond_2c

    .line 1457
    invoke-virtual {v0}, Lcom/metamoji/sd/cs/SdCloudService;->getContext()Lcom/metamoji/sd/cs/SdCloudServiceContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/sd/cs/SdCloudServiceContext;->getDriveId()Ljava/lang/String;

    move-result-object v0

    iget-object v5, v4, Lcom/metamoji/sd/cs/response/SdPutDocumentDataResult;->driveId:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    iget-object v0, v4, Lcom/metamoji/sd/cs/response/SdPutDocumentDataResult;->documentId:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 1458
    iget-object v0, v4, Lcom/metamoji/sd/cs/response/SdPutDocumentDataResult;->revision:Ljava/lang/String;

    iget-boolean v4, v4, Lcom/metamoji/sd/cs/response/SdPutDocumentDataResult;->registeredFromV2:Z

    invoke-virtual {v1, v2, v0, v4}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->commitChangedDocument(Ljava/lang/String;Ljava/lang/String;Z)Z

    goto/16 :goto_11

    .line 1461
    :cond_2c
    iget v0, v4, Lcom/metamoji/sd/cs/response/SdPutDocumentDataResult;->errorCode:I

    const/16 v5, 0x2afa

    if-ne v0, v5, :cond_30

    .line 1463
    invoke-virtual/range {p0 .. p1}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->conflictCopyWithDocId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_46

    if-eqz p2, :cond_46

    const/4 v4, 0x0

    .line 1466
    invoke-virtual {v1, v0, v4}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->doPutUpdatedDocument(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_2

    .line 1505
    :try_start_1b
    iget-object v4, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v4, v2}, Lcom/metamoji/sd/SdDriveDocumentManager;->unlockDocument(Ljava/lang/String;)V

    if-eqz v10, :cond_2d

    .line 1508
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    :cond_2d
    if-eqz v3, :cond_2e

    .line 1512
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_5

    :cond_2e
    if-eqz v7, :cond_2f

    .line 1518
    :goto_f
    :try_start_1c
    invoke-virtual {v7}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_1

    :cond_2f
    return v0

    .line 1468
    :cond_30
    :try_start_1d
    iget v0, v4, Lcom/metamoji/sd/cs/response/SdPutDocumentDataResult;->errorCode:I

    const/16 v5, 0x2afb

    if-ne v0, v5, :cond_34

    .line 1470
    invoke-virtual/range {p0 .. p1}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->conflictCopyWithDocId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_46

    if-eqz p2, :cond_46

    const/4 v4, 0x0

    .line 1473
    invoke-virtual {v1, v0, v4}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->doPutUpdatedDocument(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_2

    .line 1505
    :try_start_1e
    iget-object v4, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v4, v2}, Lcom/metamoji/sd/SdDriveDocumentManager;->unlockDocument(Ljava/lang/String;)V

    if-eqz v10, :cond_31

    .line 1508
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    :cond_31
    if-eqz v3, :cond_32

    .line 1512
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_5

    :cond_32
    if-eqz v7, :cond_33

    goto :goto_f

    :cond_33
    return v0

    .line 1475
    :cond_34
    :try_start_1f
    iget v0, v4, Lcom/metamoji/sd/cs/response/SdPutDocumentDataResult;->errorCode:I

    const/16 v5, 0x2b0c

    if-eq v0, v5, :cond_45

    iget v0, v4, Lcom/metamoji/sd/cs/response/SdPutDocumentDataResult;->errorCode:I

    const/16 v5, 0x2b0d

    if-ne v0, v5, :cond_35

    goto/16 :goto_10

    .line 1477
    :cond_35
    iget v0, v4, Lcom/metamoji/sd/cs/response/SdPutDocumentDataResult;->errorCode:I

    const/16 v5, 0x2aff

    if-ne v0, v5, :cond_39

    .line 1479
    sget v0, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->STATUS_ACCESS_DENIED:I

    invoke-virtual {v1, v0}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->internalPutDriveStatusOn(I)Z

    const/4 v11, 0x1

    .line 1481
    iput-boolean v11, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_errFlag:Z
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_2

    .line 1505
    :try_start_20
    iget-object v0, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/SdDriveDocumentManager;->unlockDocument(Ljava/lang/String;)V

    if-eqz v10, :cond_36

    .line 1508
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    :cond_36
    if-eqz v3, :cond_37

    .line 1512
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_5

    :cond_37
    if-eqz v7, :cond_38

    goto/16 :goto_13

    :cond_38
    const/16 v18, 0x0

    return v18

    .line 1483
    :cond_39
    :try_start_21
    iget v0, v4, Lcom/metamoji/sd/cs/response/SdPutDocumentDataResult;->errorCode:I

    const/16 v5, 0x2afe

    if-ne v0, v5, :cond_3d

    .line 1485
    sget v0, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->STATUS_OUT_OF_SPACE:I

    invoke-virtual {v1, v0}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->internalPutDriveStatusOn(I)Z

    const/4 v11, 0x1

    .line 1487
    iput-boolean v11, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_skipSyncDocuments:Z
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_2

    .line 1505
    :try_start_22
    iget-object v0, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/SdDriveDocumentManager;->unlockDocument(Ljava/lang/String;)V

    if-eqz v10, :cond_3a

    .line 1508
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    :cond_3a
    if-eqz v3, :cond_3b

    .line 1512
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_5

    :cond_3b
    if-eqz v7, :cond_3c

    goto/16 :goto_13

    :cond_3c
    const/16 v18, 0x0

    return v18

    .line 1489
    :cond_3d
    :try_start_23
    iget v0, v4, Lcom/metamoji/sd/cs/response/SdPutDocumentDataResult;->errorCode:I

    const/16 v5, 0x2b00

    if-ne v0, v5, :cond_41

    const/4 v11, 0x1

    .line 1491
    iput-boolean v11, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_skipSyncDocuments:Z
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_2

    .line 1505
    :try_start_24
    iget-object v0, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/SdDriveDocumentManager;->unlockDocument(Ljava/lang/String;)V

    if-eqz v10, :cond_3e

    .line 1508
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    :cond_3e
    if-eqz v3, :cond_3f

    .line 1512
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_5

    :cond_3f
    if-eqz v7, :cond_40

    goto :goto_13

    :cond_40
    const/16 v18, 0x0

    return v18

    .line 1493
    :cond_41
    :try_start_25
    iget v0, v4, Lcom/metamoji/sd/cs/response/SdPutDocumentDataResult;->errorCode:I

    const/16 v4, 0x2b02

    if-ne v0, v4, :cond_46

    .line 1495
    sget v0, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->STATUS_EXPIRED:I

    invoke-virtual {v1, v0}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->internalPutDriveStatusOn(I)Z

    const/4 v11, 0x1

    .line 1497
    iput-boolean v11, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_skipSyncDocuments:Z
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_2

    .line 1505
    :try_start_26
    iget-object v0, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/SdDriveDocumentManager;->unlockDocument(Ljava/lang/String;)V

    if-eqz v10, :cond_42

    .line 1508
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    :cond_42
    if-eqz v3, :cond_43

    .line 1512
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_5

    :cond_43
    if-eqz v7, :cond_44

    goto :goto_13

    :cond_44
    const/16 v18, 0x0

    return v18

    .line 1476
    :cond_45
    :goto_10
    :try_start_27
    invoke-virtual/range {p0 .. p1}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->undoChangedNoteWithDocId(Ljava/lang/String;)Z
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_2

    .line 1505
    :cond_46
    :goto_11
    :try_start_28
    iget-object v0, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/SdDriveDocumentManager;->unlockDocument(Ljava/lang/String;)V

    if-eqz v10, :cond_47

    .line 1508
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    :cond_47
    if-eqz v3, :cond_48

    .line 1512
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_5

    :cond_48
    if-eqz v7, :cond_49

    .line 1518
    :try_start_29
    invoke-virtual {v7}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_1

    :cond_49
    const/16 v19, 0x1

    return v19

    :catchall_1
    move-exception v0

    .line 1413
    :try_start_2a
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 1414
    throw v0
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_2

    :catchall_2
    move-exception v0

    move-object/from16 v16, v3

    goto :goto_15

    :catchall_3
    move-exception v0

    goto :goto_14

    .line 1258
    :cond_4a
    :goto_12
    :try_start_2b
    const-string v0, "invalid document %s"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_4

    .line 1505
    :try_start_2c
    iget-object v0, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/SdDriveDocumentManager;->unlockDocument(Ljava/lang/String;)V
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_5

    if-eqz v7, :cond_4b

    .line 1518
    :goto_13
    :try_start_2d
    invoke-virtual {v7}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_0

    const/16 v18, 0x0

    return v18

    :catch_0
    move-exception v0

    const/16 v18, 0x0

    goto :goto_16

    :cond_4b
    const/16 v18, 0x0

    return v18

    :catchall_4
    move-exception v0

    const/4 v10, 0x0

    :goto_14
    const/16 v16, 0x0

    .line 1505
    :goto_15
    :try_start_2e
    iget-object v3, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v3, v2}, Lcom/metamoji/sd/SdDriveDocumentManager;->unlockDocument(Ljava/lang/String;)V

    if-eqz v10, :cond_4c

    .line 1508
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    :cond_4c
    if-eqz v16, :cond_4d

    .line 1512
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    .line 1514
    :cond_4d
    throw v0
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_5

    :catchall_5
    move-exception v0

    if-eqz v7, :cond_4e

    .line 1518
    :try_start_2f
    invoke-virtual {v7}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 1520
    :cond_4e
    throw v0
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_1

    :catch_1
    move-exception v0

    .line 1523
    :goto_16
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "[SdDriveSyncProcess] :: ERROR doPutUpdatedDocument: %s"

    invoke-static {v2, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v18, 0x0

    return v18
.end method

.method protected doPutUpdatedDriveData()Z
    .locals 20

    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 1655
    :try_start_0
    iget-object v0, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->getManagedObjectContextManager()Lcom/metamoji/sd/SdDriveContentsMOCManager;

    move-result-object v0

    .line 1656
    new-instance v3, Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-direct {v3, v0}, Lcom/metamoji/sd/SdDriveContentsMOManager;-><init>(Lcom/metamoji/sd/SdManagedObjectContextManager;)V

    .line 1657
    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x1

    if-nez v4, :cond_1

    .line 1661
    :try_start_1
    iput-boolean v0, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_errFlag:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    if-eqz v4, :cond_0

    .line 1679
    :try_start_2
    invoke-virtual {v4}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    return v2

    .line 1665
    :cond_1
    :try_start_3
    invoke-virtual {v3, v4}, Lcom/metamoji/sd/SdDriveContentsMOManager;->hasChangedTags(Lcom/metamoji/sd/SdManagedObjectContext;)Z

    move-result v5

    .line 1666
    invoke-virtual {v3, v4}, Lcom/metamoji/sd/SdDriveContentsMOManager;->isChangedTagOrderByDefaultId(Lcom/metamoji/sd/SdManagedObjectContext;)Z

    move-result v6

    .line 1667
    invoke-virtual {v3, v4}, Lcom/metamoji/sd/SdDriveContentsMOManager;->hasChangedTitleOrTagOrOptionDocumentsWithoutDeleted(Lcom/metamoji/sd/SdManagedObjectContext;)Z

    move-result v7

    .line 1668
    invoke-virtual {v3, v4}, Lcom/metamoji/sd/SdDriveContentsMOManager;->hasChangedFolders(Lcom/metamoji/sd/SdManagedObjectContext;)Z

    move-result v8

    .line 1669
    invoke-virtual {v3, v4}, Lcom/metamoji/sd/SdDriveContentsMOManager;->hasChangedChildrenOrders(Lcom/metamoji/sd/SdManagedObjectContext;)Z

    move-result v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    if-nez v5, :cond_3

    if-nez v6, :cond_3

    if-nez v7, :cond_3

    if-nez v8, :cond_3

    if-nez v9, :cond_3

    if-eqz v4, :cond_2

    .line 1679
    :try_start_4
    invoke-virtual {v4}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    return v0

    .line 1675
    :cond_3
    :try_start_5
    invoke-virtual {v3, v4}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getChangedTitleOrTagOrOptionDocumentIdsWithoutDeleted(Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    if-eqz v4, :cond_4

    .line 1679
    :try_start_6
    invoke-virtual {v4}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 1683
    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    const/4 v10, 0x0

    .line 1693
    :try_start_7
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1694
    iget-object v12, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v12, v11}, Lcom/metamoji/sd/SdDriveDocumentManager;->lockDocument(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1695
    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1699
    :cond_6
    const-string v3, "mmj.sd.syncprocess.drive."

    const-string v11, ".tmp"

    invoke-static {}, Lcom/metamoji/sd/SdUtils;->getTempDir()Ljava/io/File;

    move-result-object v12

    invoke-static {v3, v11, v12}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 1702
    :try_start_8
    new-instance v11, Ljava/util/zip/ZipOutputStream;

    new-instance v12, Ljava/io/BufferedOutputStream;

    new-instance v13, Ljava/io/FileOutputStream;

    invoke-direct {v13, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v12, v13}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v11, v12}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    if-eqz v5, :cond_9

    .line 1707
    :try_start_9
    invoke-virtual {v1, v11}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->writeChangedTagsInZip(Ljava/util/zip/ZipOutputStream;)Ljava/util/List;

    move-result-object v12

    if-nez v12, :cond_a

    .line 1708
    const-string v0, "[SdDriveSyncProcess] :: ERROR writeChangedTagsInZip"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1756
    :try_start_a
    invoke-virtual {v11}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 1810
    :try_start_b
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1811
    iget-object v5, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v5, v4}, Lcom/metamoji/sd/SdDriveDocumentManager;->unlockDocument(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_1

    :cond_7
    if-eqz v3, :cond_8

    goto :goto_3

    :cond_8
    return v2

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    :cond_9
    move-object v12, v10

    :cond_a
    if-eqz v6, :cond_d

    .line 1715
    :try_start_c
    invoke-virtual {v1, v11}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->writeTagOrderInZip(Ljava/util/zip/ZipOutputStream;)Z

    move-result v13

    if-nez v13, :cond_d

    .line 1716
    const-string v0, "[SdDriveSyncProcess] :: ERROR writeTagOrderInZip"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 1756
    :try_start_d
    invoke-virtual {v11}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 1810
    :try_start_e
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1811
    iget-object v5, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v5, v4}, Lcom/metamoji/sd/SdDriveDocumentManager;->unlockDocument(Ljava/lang/String;)V

    goto :goto_2

    :cond_b
    if-eqz v3, :cond_c

    .line 1815
    :goto_3
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1

    :cond_c
    return v2

    :cond_d
    if-eqz v8, :cond_10

    .line 1722
    :try_start_f
    invoke-virtual {v1, v11}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->writeChangedFoldersInZip(Ljava/util/zip/ZipOutputStream;)Ljava/util/List;

    move-result-object v13

    if-nez v13, :cond_11

    .line 1723
    const-string v0, "[SdDriveSyncProcess] :: ERROR writeChangedFoldersInZip"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 1756
    :try_start_10
    invoke-virtual {v11}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 1810
    :try_start_11
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1811
    iget-object v5, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v5, v4}, Lcom/metamoji/sd/SdDriveDocumentManager;->unlockDocument(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1

    goto :goto_4

    :cond_e
    if-eqz v3, :cond_f

    goto :goto_3

    :cond_f
    return v2

    :cond_10
    move-object v13, v10

    :cond_11
    if-eqz v9, :cond_14

    .line 1729
    :try_start_12
    invoke-virtual {v1, v11}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->writeChangedChildrenOrdersInZip(Ljava/util/zip/ZipOutputStream;)Ljava/util/List;

    move-result-object v14

    if-nez v14, :cond_15

    .line 1730
    const-string v0, "[SdDriveSyncProcess] :: ERROR writeChangedChildrenOrdersInZip"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 1756
    :try_start_13
    invoke-virtual {v11}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 1810
    :try_start_14
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1811
    iget-object v5, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v5, v4}, Lcom/metamoji/sd/SdDriveDocumentManager;->unlockDocument(Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_1

    goto :goto_5

    :cond_12
    if-eqz v3, :cond_13

    goto :goto_3

    :cond_13
    return v2

    :cond_14
    move-object v14, v10

    :cond_15
    if-eqz v7, :cond_1f

    .line 1737
    :try_start_15
    invoke-virtual {v1, v11, v4}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->writeChangedTitleDocumentsInZip(Ljava/util/zip/ZipOutputStream;Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    if-nez v10, :cond_18

    .line 1738
    const-string v0, "[SdDriveSyncProcess] :: ERROR writeChangedTitleDocumentsInZip"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 1756
    :try_start_16
    invoke-virtual {v11}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    .line 1810
    :try_start_17
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1811
    iget-object v5, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v5, v4}, Lcom/metamoji/sd/SdDriveDocumentManager;->unlockDocument(Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_1

    goto :goto_6

    :cond_16
    if-eqz v3, :cond_17

    goto/16 :goto_3

    :cond_17
    return v2

    .line 1743
    :cond_18
    :try_start_18
    invoke-virtual {v1, v11, v4}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->writeChangedTagDocumentsInZip(Ljava/util/zip/ZipOutputStream;Ljava/util/List;)Ljava/util/List;

    move-result-object v15

    if-nez v15, :cond_1b

    .line 1744
    const-string v0, "[SdDriveSyncProcess] :: ERROR writeChangedTagDocumentsInZip"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 1756
    :try_start_19
    invoke-virtual {v11}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    .line 1810
    :try_start_1a
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1811
    iget-object v5, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v5, v4}, Lcom/metamoji/sd/SdDriveDocumentManager;->unlockDocument(Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_1

    goto :goto_7

    :cond_19
    if-eqz v3, :cond_1a

    goto/16 :goto_3

    :cond_1a
    return v2

    .line 1749
    :cond_1b
    :try_start_1b
    invoke-virtual {v1, v11, v4}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->writeChangedOptionDocumentsInZip(Ljava/util/zip/ZipOutputStream;Ljava/util/List;)Ljava/util/List;

    move-result-object v16

    if-nez v16, :cond_1e

    .line 1750
    const-string v0, "[SdDriveSyncProcess] :: ERROR writeChangedOptionDocumentsInZip"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    .line 1756
    :try_start_1c
    invoke-virtual {v11}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    .line 1810
    :try_start_1d
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1811
    iget-object v5, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v5, v4}, Lcom/metamoji/sd/SdDriveDocumentManager;->unlockDocument(Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_1

    goto :goto_8

    :cond_1c
    if-eqz v3, :cond_1d

    goto/16 :goto_3

    :cond_1d
    return v2

    :cond_1e
    move-object/from16 v19, v16

    move/from16 v16, v2

    move-object/from16 v2, v19

    goto :goto_a

    .line 1756
    :goto_9
    :try_start_1e
    invoke-virtual {v11}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 1757
    throw v0
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1

    :catchall_1
    move-exception v0

    move/from16 v16, v2

    move-object v10, v3

    goto/16 :goto_10

    :cond_1f
    move/from16 v16, v2

    move-object v2, v10

    move-object v15, v2

    .line 1756
    :goto_a
    :try_start_1f
    invoke-virtual {v11}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 1760
    iget-object v11, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v11}, Lcom/metamoji/sd/SdDriveDocumentManager;->getCloudService()Lcom/metamoji/sd/cs/SdCloudService;

    move-result-object v11

    .line 1761
    new-instance v0, Lcom/metamoji/sd/cs/params/SdPutDriveDataParams;

    invoke-direct {v0}, Lcom/metamoji/sd/cs/params/SdPutDriveDataParams;-><init>()V

    .line 1762
    iput-object v3, v0, Lcom/metamoji/sd/cs/params/SdPutDriveDataParams;->dataFile:Ljava/io/File;

    .line 1763
    invoke-virtual {v11, v0}, Lcom/metamoji/sd/cs/SdCloudService;->executeWithAutoLoginFor(Lcom/metamoji/sd/cs/params/SdRequestParams;)Lcom/metamoji/sd/cs/response/SdResponseResult;

    move-result-object v0

    check-cast v0, Lcom/metamoji/sd/cs/response/SdPutDriveDataResult;
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_3

    if-eqz v0, :cond_29

    move-object/from16 v18, v3

    .line 1766
    :try_start_20
    iget v3, v0, Lcom/metamoji/sd/cs/response/SdPutDriveDataResult;->errorCode:I

    if-nez v3, :cond_24

    .line 1767
    invoke-virtual {v11}, Lcom/metamoji/sd/cs/SdCloudService;->getContext()Lcom/metamoji/sd/cs/SdCloudServiceContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/sd/cs/SdCloudServiceContext;->getDriveId()Ljava/lang/String;

    move-result-object v3

    iget-object v0, v0, Lcom/metamoji/sd/cs/response/SdPutDriveDataResult;->driveId:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    if-eqz v5, :cond_20

    .line 1769
    invoke-virtual {v1, v12}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->commitChangedTags(Ljava/util/List;)Z

    :cond_20
    if-eqz v6, :cond_21

    .line 1773
    invoke-virtual {v1}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->commitChangedTagOrder()Z

    :cond_21
    if-eqz v8, :cond_22

    .line 1777
    invoke-virtual {v1, v13}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->commitChangedFolders(Ljava/util/List;)Z

    :cond_22
    if-eqz v9, :cond_23

    .line 1781
    invoke-virtual {v1, v14}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->commitChangedChildrenOrders(Ljava/util/List;)Z

    :cond_23
    if-eqz v7, :cond_2a

    .line 1785
    invoke-virtual {v1, v10}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->commitChangedTitleDocuments(Ljava/util/List;)Z

    .line 1786
    invoke-virtual {v1, v15}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->commitChangedTagDocuments(Ljava/util/List;)Z

    .line 1787
    invoke-virtual {v1, v2}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->commitChangedOptionDocuments(Ljava/util/List;)Z

    goto :goto_c

    .line 1791
    :cond_24
    iget v2, v0, Lcom/metamoji/sd/cs/response/SdPutDriveDataResult;->errorCode:I

    const/16 v3, 0x2aff

    if-ne v2, v3, :cond_27

    .line 1793
    sget v0, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->STATUS_ACCESS_DENIED:I

    invoke-virtual {v1, v0}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->internalPutDriveStatusOn(I)Z

    const/4 v0, 0x1

    .line 1795
    iput-boolean v0, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_errFlag:Z
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_2

    .line 1810
    :try_start_21
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1811
    iget-object v3, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v3, v2}, Lcom/metamoji/sd/SdDriveDocumentManager;->unlockDocument(Ljava/lang/String;)V

    goto :goto_b

    :cond_25
    if-eqz v18, :cond_26

    .line 1815
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_0

    :cond_26
    return v16

    .line 1797
    :cond_27
    :try_start_22
    iget v2, v0, Lcom/metamoji/sd/cs/response/SdPutDriveDataResult;->errorCode:I

    const/16 v3, 0x2b02

    if-ne v2, v3, :cond_28

    .line 1799
    sget v0, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->STATUS_EXPIRED:I

    invoke-virtual {v1, v0}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->internalPutDriveStatusOn(I)Z

    goto :goto_c

    .line 1801
    :cond_28
    iget v0, v0, Lcom/metamoji/sd/cs/response/SdPutDriveDataResult;->errorCode:I

    const/16 v2, 0x2b0e

    if-ne v0, v2, :cond_2a

    .line 1803
    invoke-virtual {v1}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->internalFireEventTagOrderTooLong()V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_2

    goto :goto_c

    :catchall_2
    move-exception v0

    goto :goto_f

    :cond_29
    move-object/from16 v18, v3

    .line 1810
    :cond_2a
    :goto_c
    :try_start_23
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1811
    iget-object v3, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v3, v2}, Lcom/metamoji/sd/SdDriveDocumentManager;->unlockDocument(Ljava/lang/String;)V

    goto :goto_d

    :cond_2b
    if-eqz v18, :cond_2c

    .line 1815
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z

    :cond_2c
    const/16 v17, 0x1

    return v17

    :catchall_3
    move-exception v0

    goto :goto_e

    :catchall_4
    move-exception v0

    move/from16 v16, v2

    :goto_e
    move-object/from16 v18, v3

    :goto_f
    move-object/from16 v10, v18

    goto :goto_10

    :catchall_5
    move-exception v0

    move/from16 v16, v2

    .line 1810
    :goto_10
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1811
    iget-object v4, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v4, v3}, Lcom/metamoji/sd/SdDriveDocumentManager;->unlockDocument(Ljava/lang/String;)V

    goto :goto_11

    :cond_2d
    if-eqz v10, :cond_2e

    .line 1815
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 1817
    :cond_2e
    throw v0

    :catchall_6
    move-exception v0

    move/from16 v16, v2

    if-eqz v4, :cond_2f

    .line 1679
    invoke-virtual {v4}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 1681
    :cond_2f
    throw v0
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_0

    :catch_0
    move-exception v0

    goto :goto_12

    :catch_1
    move-exception v0

    move/from16 v16, v2

    .line 1820
    :goto_12
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "[SdDriveSyncProcess] :: ERROR doPutUpdatedDriveData: %s"

    invoke-static {v2, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return v16
.end method

.method protected doSetup()Z
    .locals 5

    const/4 v0, 0x0

    .line 380
    :try_start_0
    sget v1, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->STATUS_OUT_OF_SPACE:I

    sget v2, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->STATUS_EXPIRED:I

    or-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->internalPutDriveStatusOff(I)Z

    .line 382
    iget-object v1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v1}, Lcom/metamoji/sd/SdDriveDocumentManager;->getCloudService()Lcom/metamoji/sd/cs/SdCloudService;

    move-result-object v1

    .line 383
    new-instance v2, Lcom/metamoji/sd/cs/params/SdGetMaintenanceInfoParams;

    invoke-direct {v2}, Lcom/metamoji/sd/cs/params/SdGetMaintenanceInfoParams;-><init>()V

    .line 384
    invoke-virtual {v1, v2}, Lcom/metamoji/sd/cs/SdCloudService;->executeGetMaintenanceInfoWithParams(Lcom/metamoji/sd/cs/params/SdGetMaintenanceInfoParams;)Lcom/metamoji/sd/cs/response/SdGetMaintenanceInfoResult;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 387
    iget-boolean v2, v2, Lcom/metamoji/sd/cs/response/SdGetMaintenanceInfoResult;->isUnderMaintenance:Z

    if-eqz v2, :cond_0

    return v0

    .line 392
    :cond_0
    new-instance v2, Lcom/metamoji/sd/cs/params/SdSyncStartParams;

    invoke-direct {v2}, Lcom/metamoji/sd/cs/params/SdSyncStartParams;-><init>()V

    .line 393
    invoke-virtual {v1, v2}, Lcom/metamoji/sd/cs/SdCloudService;->executeWithAutoLoginFor(Lcom/metamoji/sd/cs/params/SdRequestParams;)Lcom/metamoji/sd/cs/response/SdResponseResult;

    move-result-object v1

    check-cast v1, Lcom/metamoji/sd/cs/response/SdSyncStartResult;

    if-nez v1, :cond_1

    return v0

    .line 398
    :cond_1
    iget v2, v1, Lcom/metamoji/sd/cs/response/SdSyncStartResult;->errorCode:I

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    .line 399
    iget v2, v1, Lcom/metamoji/sd/cs/response/SdSyncStartResult;->errorCode:I

    const/16 v4, 0x2aff

    if-ne v2, v4, :cond_2

    .line 401
    sget v1, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->STATUS_ACCESS_DENIED:I

    invoke-virtual {p0, v1}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->internalPutDriveStatusOn(I)Z

    goto :goto_0

    .line 402
    :cond_2
    iget v1, v1, Lcom/metamoji/sd/cs/response/SdSyncStartResult;->errorCode:I

    const/16 v2, 0x2b02

    if-ne v1, v2, :cond_3

    .line 404
    sget v1, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->STATUS_EXPIRED:I

    invoke-virtual {p0, v1}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->internalPutDriveStatusOn(I)Z

    return v3

    :cond_3
    :goto_0
    return v0

    .line 412
    :cond_4
    iget-boolean v2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_single:Z

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_specified:Z

    if-eqz v2, :cond_6

    .line 414
    :cond_5
    iget-object v2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveId:Ljava/lang/String;

    iget-object v4, v1, Lcom/metamoji/sd/cs/response/SdSyncStartResult;->driveId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v1, Lcom/metamoji/sd/cs/response/SdSyncStartResult;->entryType:Ljava/lang/Integer;

    if-eqz v2, :cond_6

    .line 416
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v2

    iget-object v4, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveId:Ljava/lang/String;

    iget-object v1, v1, Lcom/metamoji/sd/cs/response/SdSyncStartResult;->entryType:Ljava/lang/Integer;

    invoke-virtual {v2, v4, v1}, Lcom/metamoji/dvm/DvmDriveManager;->updateDriveEntryType(Ljava/lang/String;Ljava/lang/Integer;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    return v3

    :catch_0
    move-exception v1

    .line 424
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "[SdDriveSyncProcess] :: ERROR doSetup: %s"

    invoke-static {v2, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method protected getChangedDocumentIds()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 436
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v1}, Lcom/metamoji/sd/SdDriveDocumentManager;->getManagedObjectContextManager()Lcom/metamoji/sd/SdDriveContentsMOCManager;

    move-result-object v1

    .line 437
    new-instance v2, Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-direct {v2, v1}, Lcom/metamoji/sd/SdDriveContentsMOManager;-><init>(Lcom/metamoji/sd/SdManagedObjectContextManager;)V

    .line 438
    invoke-virtual {v1}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_1

    const/4 v2, 0x1

    .line 442
    :try_start_1
    iput-boolean v2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_errFlag:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    .line 446
    :cond_1
    invoke-virtual {v2, v1}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getChangedDocumentIds(Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    .line 450
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_2
    return-object v0

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 452
    :cond_3
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    .line 454
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "[SdDriveSyncProcess] :: ERROR getChangedDocumentIds: %s"

    invoke-static {v2, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 141
    const-string v0, "SdDriveSyncProcess"

    return-object v0
.end method

.method public getSingle()Z
    .locals 1

    .line 134
    iget-boolean v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_single:Z

    return v0
.end method

.method public getSpecified()Z
    .locals 1

    .line 137
    iget-boolean v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_specified:Z

    return v0
.end method

.method public hasMoreNext()Z
    .locals 3

    .line 148
    iget-boolean v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_errFlag:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_syncSequence:Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;

    sget-object v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;->Complate:Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;

    if-eq v0, v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method protected internalDocumentManager()Lcom/metamoji/sd/SdDriveDocumentManager;
    .locals 2

    .line 4229
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    .line 4230
    iget-object v1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/metamoji/dvm/DvmDriveManager;->getDocumentManagerByDriveId(Ljava/lang/String;)Lcom/metamoji/sd/SdDriveDocumentManager;

    move-result-object v0

    return-object v0
.end method

.method protected internalDriveSyncLastRevision()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4241
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    .line 4242
    invoke-virtual {v0}, Lcom/metamoji/dvm/DvmDriveManager;->getManagedObjectContextManager()Lcom/metamoji/sd/SdDriveMOCManager;

    move-result-object v0

    .line 4243
    new-instance v1, Lcom/metamoji/sd/SdDriveMOManager;

    invoke-direct {v1}, Lcom/metamoji/sd/SdDriveMOManager;-><init>()V

    .line 4244
    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 4247
    :try_start_0
    iput-boolean v2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_errFlag:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 4263
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-object v3

    .line 4251
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveId:Ljava/lang/String;

    invoke-virtual {v1, v4, v0}, Lcom/metamoji/sd/SdDriveMOManager;->getDriveById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMODrive;

    move-result-object v1

    if-nez v1, :cond_2

    .line 4254
    iput-boolean v2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_errFlag:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 4263
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_1
    return-object v3

    .line 4258
    :cond_2
    :try_start_2
    invoke-virtual {v1}, Lcom/metamoji/sd/entities/SdMODrive;->getLastUpdateRevision()Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_3

    .line 4263
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_3
    return-object v1

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 4265
    :cond_4
    throw v1
.end method

.method protected internalFireEventSyncEnd()V
    .locals 3

    .line 4434
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4435
    iget-object v1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveId:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    const-string v2, "driveId"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4436
    iget-boolean v1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_single:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string/jumbo v2, "single"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4437
    const-string/jumbo v1, "sharedOneDriveSyncEnd"

    invoke-virtual {p0, v1, v0}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->fireEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method protected internalFireEventSyncNoteConflict(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 4422
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4423
    invoke-virtual {p0}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->isPrivate()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4424
    const-string v1, "driveId"

    iget-object v2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4425
    :cond_1
    const-string v1, "entityId"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4426
    const-string p1, "newEntityId"

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4427
    const-string/jumbo p1, "sharedOnenoteSyncConflict"

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->fireEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void

    .line 4418
    :cond_2
    :goto_0
    const-string p1, "internalFireEventSyncNoteConflict : param invalid"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    return-void
.end method

.method protected internalFireEventSyncNoteEnd()V
    .locals 1

    .line 4410
    const-string/jumbo v0, "sharedNotesSyncEnd"

    invoke-virtual {p0, v0}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->fireEvent(Ljava/lang/String;)V

    return-void
.end method

.method protected internalFireEventSyncNoteStart(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 4371
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4373
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 4375
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 4376
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 4378
    :goto_0
    const-string p1, "docCount"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4379
    const-string p1, "entityIds"

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4380
    const-string p1, "action"

    const-string/jumbo v1, "upload"

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4381
    const-string/jumbo p1, "sharedNotesSyncStart"

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->fireEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method protected internalFireEventSyncOneNoteEnd(Ljava/lang/String;)V
    .locals 2

    .line 4400
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4401
    const-string v1, "entityId"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4402
    const-string p1, "action"

    const-string/jumbo v1, "upload"

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4403
    const-string/jumbo p1, "sharedOnenoteSyncEnd"

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->fireEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method protected internalFireEventSyncOneNoteStart(Ljava/lang/String;)V
    .locals 2

    .line 4389
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4390
    const-string v1, "entityId"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4391
    const-string p1, "action"

    const-string/jumbo v1, "upload"

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4392
    const-string/jumbo p1, "sharedOnenoteSyncStart"

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->fireEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method protected internalFireEventSyncStart()V
    .locals 3

    .line 4360
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4361
    const-string v1, "driveId"

    iget-object v2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4362
    const-string v1, "driveName"

    iget-object v2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4363
    const-string/jumbo v1, "sharedOneDriveSyncStart"

    invoke-virtual {p0, v1, v0}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->fireEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method protected internalFireEventTagOrderTooLong()V
    .locals 3

    .line 4444
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4445
    const-string v1, "driveId"

    iget-object v2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4446
    const-string v1, "driveName"

    iget-object v2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4447
    const-string/jumbo v1, "sharedTagOrderTooLong"

    invoke-virtual {p0, v1, v0}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->fireEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method protected internalPrepareSync()V
    .locals 2

    .line 4348
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    .line 4350
    iget-object v1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/metamoji/dvm/DvmDriveManager;->getDriveById(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDriveBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4352
    invoke-virtual {v0}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method protected internalPutDriveStatusOff(I)Z
    .locals 2

    .line 4341
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/dvm/DvmDriveManager;->putDriveStatusOff(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method protected internalPutDriveStatusOn(I)Z
    .locals 2

    .line 4332
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/dvm/DvmDriveManager;->putDriveStatusOn(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method protected internalUpdateDriveSyncLastRevision(Ljava/lang/String;)Z
    .locals 8

    const/4 v1, 0x0

    .line 4277
    :try_start_0
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    .line 4278
    invoke-virtual {v0}, Lcom/metamoji/dvm/DvmDriveManager;->getManagedObjectContextManager()Lcom/metamoji/sd/SdDriveMOCManager;

    move-result-object v0

    .line 4279
    new-instance v4, Lcom/metamoji/sd/SdDriveMOManager;

    invoke-direct {v4}, Lcom/metamoji/sd/SdDriveMOManager;-><init>()V

    .line 4280
    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    if-nez v5, :cond_1

    .line 4283
    :try_start_1
    iput-boolean v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_errFlag:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_0

    .line 4316
    :goto_0
    :try_start_2
    invoke-virtual {v5}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    return v1

    .line 4286
    :cond_1
    :try_start_3
    new-instance v6, Lcom/metamoji/sd/SdValue;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v6, v2}, Lcom/metamoji/sd/SdValue;-><init>(Ljava/lang/Object;)V

    .line 4288
    new-instance v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$23;

    move-object v3, p0

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/metamoji/sd/sync/SdDriveSyncProcess$23;-><init>(Lcom/metamoji/sd/sync/SdDriveSyncProcess;Lcom/metamoji/sd/SdDriveMOManager;Lcom/metamoji/sd/SdManagedObjectContext;Lcom/metamoji/sd/SdValue;Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Lcom/metamoji/sd/SdManagedObjectContext;->performBlock(Lcom/metamoji/sd/SdBlock;)Ljava/lang/Object;

    .line 4309
    invoke-virtual {v6}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p1, :cond_3

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    if-eqz v5, :cond_4

    .line 4316
    :try_start_4
    invoke-virtual {v5}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_4
    return v0

    :catchall_0
    move-exception v0

    move-object p1, v0

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 4318
    :cond_5
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 4320
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "[SdDriveSyncProcess] :: ERROR internalUpdateDriveSyncLastRevision: %s"

    invoke-static {v0, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method protected isPrivate()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected notifyConflictDocument(Ljava/lang/String;)V
    .locals 1

    .line 1218
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v0, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->getDocumentInfo(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    return-void
.end method

.method public processOne()I
    .locals 6

    .line 188
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_syncSequence:Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;

    invoke-virtual {v0}, Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;->ordinal()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eqz v0, :cond_f

    if-eq v0, v2, :cond_d

    const/4 v3, 0x2

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eq v0, v3, :cond_8

    if-eq v0, v1, :cond_6

    const/4 v3, 0x4

    if-eq v0, v3, :cond_4

    const/4 v3, 0x5

    if-eq v0, v3, :cond_0

    return v1

    .line 254
    :cond_0
    iget v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_dindex:I

    if-ne v0, v4, :cond_1

    .line 255
    iput v5, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_dindex:I

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_downloadIds:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v3, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_dindex:I

    if-le v0, v3, :cond_3

    .line 258
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_downloadIds:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 259
    invoke-virtual {p0, v0}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->doGetUpdatedDocument(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 260
    const-string v0, "[SdDriveSyncProcess] :: FAIL doGetUpdatedDocument"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 262
    :cond_2
    iget v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_dindex:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_dindex:I

    goto/16 :goto_0

    .line 264
    :cond_3
    sget-object v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;->Complate:Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;

    iput-object v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_syncSequence:Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;

    goto/16 :goto_0

    .line 246
    :cond_4
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->getMergingLockObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 247
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->doGetUpdatedDriveData()Z

    move-result v3

    if-nez v3, :cond_5

    .line 248
    const-string v3, "[SdDriveSyncProcess] :: FAIL doGetUpdatedDriveData"

    invoke-static {v3}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 250
    :cond_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    sget-object v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;->GetUpdatedDocument:Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;

    iput-object v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_syncSequence:Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    .line 250
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 240
    :cond_6
    invoke-virtual {p0}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->doPutUpdatedDriveData()Z

    move-result v0

    if-nez v0, :cond_7

    .line 241
    const-string v0, "[SdDriveSyncProcess] :: FAIL doPutUpdatedDriveData"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 243
    :cond_7
    sget-object v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;->GetUpdatedDriveData:Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;

    iput-object v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_syncSequence:Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;

    goto :goto_0

    .line 203
    :cond_8
    iget v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_index:I

    if-ne v0, v4, :cond_9

    .line 204
    invoke-virtual {p0}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->getChangedDocumentIds()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_documentIds:Ljava/util/List;

    .line 205
    iput v5, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_index:I

    .line 206
    iput-boolean v5, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_skipSyncDocuments:Z

    .line 207
    iput-boolean v2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_putDocumentsCompleted:Z

    .line 210
    invoke-virtual {p0, v0}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->internalFireEventSyncNoteStart(Ljava/util/List;)V

    .line 213
    :cond_9
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_documentIds:Ljava/util/List;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v3, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_index:I

    if-le v0, v3, :cond_b

    iget-boolean v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_skipSyncDocuments:Z

    if-nez v0, :cond_b

    .line 214
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_documentIds:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 217
    invoke-virtual {p0, v0}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->internalFireEventSyncOneNoteStart(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0, v0, v2}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->doPutUpdatedDocument(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_a

    .line 220
    iput-boolean v5, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_putDocumentsCompleted:Z

    .line 221
    const-string v3, "[SdDriveSyncProcess] :: FAIL doPutUpdatedDocument"

    invoke-static {v3}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 225
    :cond_a
    invoke-virtual {p0, v0}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->internalFireEventSyncOneNoteEnd(Ljava/lang/String;)V

    .line 227
    iget v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_index:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_index:I

    goto :goto_0

    .line 229
    :cond_b
    sget-object v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;->PutUpdatedDriveData:Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;

    iput-object v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_syncSequence:Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;

    .line 231
    iget-boolean v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_putDocumentsCompleted:Z

    if-eqz v0, :cond_c

    .line 233
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->turnOffAllEditFlag()V

    .line 236
    :cond_c
    invoke-virtual {p0}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->internalFireEventSyncNoteEnd()V

    goto :goto_0

    .line 197
    :cond_d
    invoke-virtual {p0}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->doSetup()Z

    move-result v0

    if-nez v0, :cond_e

    .line 198
    iput-boolean v2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_errFlag:Z

    .line 200
    :cond_e
    sget-object v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;->PutUpdatedDocument:Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;

    iput-object v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_syncSequence:Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;

    goto :goto_0

    .line 190
    :cond_f
    invoke-virtual {p0}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->doGetHome()Z

    move-result v0

    if-nez v0, :cond_10

    .line 192
    iput-boolean v2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_errFlag:Z

    .line 194
    :cond_10
    sget-object v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;->Setup:Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;

    iput-object v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_syncSequence:Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;

    .line 271
    :goto_0
    iget-boolean v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_errFlag:Z

    if-eqz v0, :cond_11

    return v1

    :cond_11
    return v2
.end method

.method public setSingle(Z)V
    .locals 0

    .line 135
    iput-boolean p1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_single:Z

    return-void
.end method

.method public setSpecified(Z)V
    .locals 0

    .line 138
    iput-boolean p1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_specified:Z

    return-void
.end method

.method protected undoChangedNoteWithDocId(Ljava/lang/String;)Z
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v10, p1

    const/4 v11, 0x0

    .line 466
    :try_start_0
    invoke-static {}, Lcom/metamoji/sd/SdPrivateDriveManager;->getInstance()Lcom/metamoji/sd/SdPrivateDriveManager;

    move-result-object v0

    .line 467
    invoke-virtual {v0}, Lcom/metamoji/sd/SdPrivateDriveManager;->getCurrentPrivateId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/SdPrivateDriveManager;->getDocumentManagerByPrivateId(Ljava/lang/String;)Lcom/metamoji/sd/SdPrivateDriveDocumentManager;

    move-result-object v5

    .line 468
    new-instance v3, Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-virtual {v5}, Lcom/metamoji/sd/SdPrivateDriveDocumentManager;->getManagedObjectContextManager()Lcom/metamoji/sd/SdDriveContentsMOCManager;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/metamoji/sd/SdDriveContentsMOManager;-><init>(Lcom/metamoji/sd/SdManagedObjectContextManager;)V

    .line 469
    iget-object v0, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->getManagedObjectContextManager()Lcom/metamoji/sd/SdDriveContentsMOCManager;

    move-result-object v0

    .line 470
    new-instance v12, Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-direct {v12, v0}, Lcom/metamoji/sd/SdDriveContentsMOManager;-><init>(Lcom/metamoji/sd/SdManagedObjectContextManager;)V

    .line 472
    invoke-virtual {v5}, Lcom/metamoji/sd/SdPrivateDriveDocumentManager;->clearNeedSyncFlag()V

    .line 474
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    .line 475
    new-instance v8, Lcom/metamoji/sd/SdValue;

    invoke-direct {v8}, Lcom/metamoji/sd/SdValue;-><init>()V

    .line 476
    new-instance v2, Lcom/metamoji/sd/SdValue;

    invoke-direct {v2}, Lcom/metamoji/sd/SdValue;-><init>()V

    .line 477
    new-instance v13, Lcom/metamoji/sd/SdValue;

    invoke-direct {v13}, Lcom/metamoji/sd/SdValue;-><init>()V

    .line 479
    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v14

    const/4 v15, 0x1

    if-nez v14, :cond_0

    .line 481
    iput-boolean v15, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_errFlag:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v11

    .line 486
    :cond_0
    :try_start_1
    invoke-virtual {v5}, Lcom/metamoji/sd/SdPrivateDriveDocumentManager;->getManagedObjectContextManager()Lcom/metamoji/sd/SdDriveContentsMOCManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v4

    if-nez v4, :cond_1

    .line 489
    iput-boolean v15, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_errFlag:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 766
    :goto_0
    :try_start_2
    invoke-virtual {v14}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return v11

    .line 494
    :cond_1
    :try_start_3
    invoke-virtual {v12, v10, v14}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getDocumentById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMODocument;

    move-result-object v9

    if-eqz v9, :cond_9

    .line 500
    invoke-virtual {v9}, Lcom/metamoji/sd/entities/SdMODocument;->getContentsRevision()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v9}, Lcom/metamoji/sd/entities/SdMODocument;->getContentsRevision()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v11

    goto :goto_2

    :cond_3
    :goto_1
    move v0, v15

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    .line 502
    invoke-virtual {v8}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    .line 504
    iget-object v0, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->getCloudService()Lcom/metamoji/sd/cs/SdCloudService;

    move-result-object v0

    .line 505
    new-instance v6, Lcom/metamoji/sd/cs/params/SdGetDocumentMetaParams;

    invoke-direct {v6}, Lcom/metamoji/sd/cs/params/SdGetDocumentMetaParams;-><init>()V

    .line 506
    iput-object v10, v6, Lcom/metamoji/sd/cs/params/SdGetDocumentMetaParams;->documentId:Ljava/lang/String;

    .line 507
    invoke-virtual {v0, v6}, Lcom/metamoji/sd/cs/SdCloudService;->executeWithAutoLoginFor(Lcom/metamoji/sd/cs/params/SdRequestParams;)Lcom/metamoji/sd/cs/response/SdResponseResult;

    move-result-object v0

    check-cast v0, Lcom/metamoji/sd/cs/response/SdGetDocumentMetaResult;

    if-eqz v0, :cond_4

    .line 510
    iget v6, v0, Lcom/metamoji/sd/cs/response/SdGetDocumentMetaResult;->errorCode:I

    if-nez v6, :cond_4

    .line 511
    iget-object v6, v0, Lcom/metamoji/sd/cs/response/SdGetDocumentMetaResult;->documentId:Ljava/lang/String;

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 512
    iget-object v0, v0, Lcom/metamoji/sd/cs/response/SdGetDocumentMetaResult;->meta:Ljava/util/Map;

    invoke-virtual {v13, v0}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    .line 516
    :cond_4
    invoke-virtual {v13}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-nez v0, :cond_5

    .line 763
    :try_start_4
    invoke-virtual {v4}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_0

    .line 522
    :cond_5
    :try_start_5
    iget-object v0, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v0, v10}, Lcom/metamoji/sd/SdDriveDocumentManager;->contentsPathWithDocId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 523
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 525
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 530
    new-instance v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$3;

    invoke-direct/range {v0 .. v9}, Lcom/metamoji/sd/sync/SdDriveSyncProcess$3;-><init>(Lcom/metamoji/sd/sync/SdDriveSyncProcess;Lcom/metamoji/sd/SdValue;Lcom/metamoji/sd/SdDriveContentsMOManager;Lcom/metamoji/sd/SdManagedObjectContext;Lcom/metamoji/sd/SdPrivateDriveDocumentManager;Ljava/io/File;Ljava/util/Date;Lcom/metamoji/sd/SdValue;Lcom/metamoji/sd/entities/SdMODocument;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object v6, v4

    :try_start_6
    invoke-virtual {v6, v0}, Lcom/metamoji/sd/SdManagedObjectContext;->performBlock(Lcom/metamoji/sd/SdBlock;)Ljava/lang/Object;

    .line 609
    invoke-virtual {v8}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v13}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "deleteFlag"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-ne v0, v15, :cond_6

    goto :goto_3

    .line 666
    :cond_6
    new-instance v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$5;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object/from16 v1, p0

    move-object v4, v10

    move-object v3, v12

    move-object v5, v13

    move-object v2, v14

    :try_start_7
    invoke-direct/range {v0 .. v5}, Lcom/metamoji/sd/sync/SdDriveSyncProcess$5;-><init>(Lcom/metamoji/sd/sync/SdDriveSyncProcess;Lcom/metamoji/sd/SdManagedObjectContext;Lcom/metamoji/sd/SdDriveContentsMOManager;Ljava/lang/String;Lcom/metamoji/sd/SdValue;)V

    invoke-virtual {v2, v0}, Lcom/metamoji/sd/SdManagedObjectContext;->performBlock(Lcom/metamoji/sd/SdBlock;)Ljava/lang/Object;

    goto :goto_4

    :cond_7
    :goto_3
    move-object/from16 v1, p0

    move-object v4, v10

    move-object v3, v12

    move-object v2, v14

    .line 610
    new-instance v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$4;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/metamoji/sd/sync/SdDriveSyncProcess$4;-><init>(Lcom/metamoji/sd/sync/SdDriveSyncProcess;Lcom/metamoji/sd/SdManagedObjectContext;Lcom/metamoji/sd/SdDriveContentsMOManager;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/metamoji/sd/SdManagedObjectContext;->performBlock(Lcom/metamoji/sd/SdBlock;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 763
    :goto_4
    :try_start_8
    invoke-virtual {v6}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 766
    :try_start_9
    invoke-virtual {v2}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    return v15

    :catchall_0
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_5

    :cond_8
    move-object v6, v4

    move-object v2, v14

    .line 526
    :try_start_a
    new-instance v0, Ljava/lang/Exception;

    const-string v3, "The document state file not found."

    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    move-object v6, v4

    move-object v2, v14

    .line 497
    new-instance v0, Ljava/lang/Exception;

    const-string v3, "document not found"

    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v6, v4

    :goto_5
    move-object v2, v14

    .line 763
    :goto_6
    :try_start_b
    invoke-virtual {v6}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 764
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :catchall_3
    move-exception v0

    goto :goto_7

    :catchall_4
    move-exception v0

    move-object v2, v14

    .line 766
    :goto_7
    :try_start_c
    invoke-virtual {v2}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 767
    throw v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    :catch_0
    move-exception v0

    .line 770
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "[SdDriveSyncProcess] :: ERROR undoChangedNoteWithDocId: %s"

    invoke-static {v2, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return v11
.end method

.method protected writeChangedChildrenOrdersInZip(Ljava/util/zip/ZipOutputStream;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipOutputStream;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 2013
    iget-object v2, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v2}, Lcom/metamoji/sd/SdDriveDocumentManager;->getManagedObjectContextManager()Lcom/metamoji/sd/SdDriveContentsMOCManager;

    move-result-object v2

    .line 2014
    new-instance v3, Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-direct {v3, v2}, Lcom/metamoji/sd/SdDriveContentsMOManager;-><init>(Lcom/metamoji/sd/SdManagedObjectContextManager;)V

    .line 2015
    invoke-virtual {v2}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v2

    const/4 v4, 0x0

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 2018
    :try_start_0
    iput-boolean v0, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_errFlag:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 2060
    invoke-virtual {v2}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_0
    return-object v4

    .line 2022
    :cond_1
    :try_start_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2023
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 2026
    invoke-virtual {v3, v2}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getChangedChildrenOrderFolders(Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object v3

    .line 2028
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v7, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v9, "UTF-8"

    const-string v10, "childrenorders_%d.json"

    if-eqz v8, :cond_6

    :try_start_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/metamoji/sd/entities/SdMOFolder;

    .line 2029
    invoke-virtual {v8}, Lcom/metamoji/sd/entities/SdMOFolder;->getAbsPath()Ljava/lang/String;

    move-result-object v11

    .line 2031
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 2033
    const-string v13, "absPath"

    invoke-virtual {v12, v13, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2034
    const-string v13, "childrenOrder"

    invoke-virtual {v8}, Lcom/metamoji/sd/entities/SdMOFolder;->getChildrenOrder()Ljava/lang/String;

    move-result-object v14
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v15, ""

    if-nez v14, :cond_2

    move-object v14, v15

    goto :goto_1

    :cond_2
    :try_start_3
    invoke-virtual {v8}, Lcom/metamoji/sd/entities/SdMOFolder;->getChildrenOrder()Ljava/lang/String;

    move-result-object v14

    :goto_1
    invoke-virtual {v12, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2035
    const-string v13, "childrenOrderOrigin"

    invoke-virtual {v8}, Lcom/metamoji/sd/entities/SdMOFolder;->getChildrenOrderOrigin()Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_3

    move-object v14, v15

    goto :goto_2

    :cond_3
    invoke-virtual {v8}, Lcom/metamoji/sd/entities/SdMOFolder;->getChildrenOrderOrigin()Ljava/lang/String;

    move-result-object v14

    :goto_2
    invoke-virtual {v12, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2036
    const-string v13, "childrenOrderUpdate"

    invoke-virtual {v8}, Lcom/metamoji/sd/entities/SdMOFolder;->getChildrenOrderUpdate()Ljava/util/Date;

    move-result-object v14
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    :try_start_4
    invoke-static {v14}, Lcom/metamoji/sd/SdUtils;->dateToTime(Ljava/util/Date;)J

    move-result-wide v4

    invoke-virtual {v12, v13, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 2037
    const-string v4, "childrenOrderRevision"

    invoke-virtual {v8}, Lcom/metamoji/sd/entities/SdMOFolder;->getChildrenOrderRevision()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v8}, Lcom/metamoji/sd/entities/SdMOFolder;->getChildrenOrderRevision()Ljava/lang/String;

    move-result-object v15

    :goto_3
    invoke-virtual {v12, v4, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2039
    invoke-virtual {v6, v12}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-object/from16 v4, v17

    .line 2040
    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2042
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v5

    const/16 v8, 0x3e8

    if-lt v5, v8, :cond_5

    .line 2043
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v10, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    sget v8, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->ZIP_BEST_SPEED:I

    invoke-virtual {v1, v0, v5, v6, v8}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->writeFileInZip(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;[BI)V

    add-int/lit8 v7, v7, 0x1

    .line 2045
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    move-object v6, v5

    :cond_5
    move-object v5, v4

    move-object/from16 v4, v16

    goto/16 :goto_0

    :cond_6
    move-object/from16 v16, v4

    move-object v4, v5

    .line 2049
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_7

    .line 2050
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v10, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    sget v6, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->ZIP_NO_COMPRESSION:I

    invoke-virtual {v1, v0, v3, v5, v6}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->writeFileInZip(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;[BI)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_7
    if-eqz v2, :cond_8

    .line 2060
    invoke-virtual {v2}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_8
    return-object v4

    :catch_0
    move-exception v0

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    move-object/from16 v16, v4

    .line 2055
    :goto_4
    :try_start_5
    const-string v3, "[SdDriveSyncProcess] :: ERROR writeChangedChildrenOrdersInZip: %s"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v2, :cond_9

    .line 2060
    invoke-virtual {v2}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_9
    return-object v16

    :goto_5
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 2062
    :cond_a
    throw v0
.end method

.method protected writeChangedFoldersInZip(Ljava/util/zip/ZipOutputStream;)Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipOutputStream;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1932
    iget-object v2, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v2}, Lcom/metamoji/sd/SdDriveDocumentManager;->getManagedObjectContextManager()Lcom/metamoji/sd/SdDriveContentsMOCManager;

    move-result-object v2

    .line 1933
    new-instance v3, Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-direct {v3, v2}, Lcom/metamoji/sd/SdDriveContentsMOManager;-><init>(Lcom/metamoji/sd/SdManagedObjectContextManager;)V

    .line 1934
    invoke-virtual {v2}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v2

    const/4 v4, 0x0

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 1937
    :try_start_0
    iput-boolean v0, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_errFlag:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v2, :cond_0

    .line 2002
    invoke-virtual {v2}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_0
    return-object v4

    .line 1941
    :cond_1
    :try_start_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1942
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 1945
    invoke-virtual {v3, v2}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getDeletedFolders(Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object v7

    .line 1948
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v8, 0x0

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const-string v11, "deleteFlag"

    const-string v12, ""

    const-string/jumbo v13, "revision"

    const-string v14, "lastUpdate"

    const-string v15, "absPath"

    move-object/from16 v16, v4

    const-string v4, "UTF-8"

    const-string v10, "folderdefs_%d.json"

    if-eqz v9, :cond_4

    :try_start_2
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/metamoji/sd/entities/SdMOFolder;

    move-object/from16 v17, v7

    .line 1949
    invoke-virtual {v9}, Lcom/metamoji/sd/entities/SdMOFolder;->getAbsPath()Ljava/lang/String;

    move-result-object v7

    move/from16 v18, v8

    .line 1951
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 1953
    invoke-virtual {v8, v15, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1954
    invoke-virtual {v9}, Lcom/metamoji/sd/entities/SdMOFolder;->getUpdate()Ljava/util/Date;

    move-result-object v15
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    :try_start_3
    invoke-static {v15}, Lcom/metamoji/sd/SdUtils;->dateToTime(Ljava/util/Date;)J

    move-result-wide v2

    invoke-virtual {v8, v14, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1955
    invoke-virtual {v9}, Lcom/metamoji/sd/entities/SdMOFolder;->getRevision()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v9}, Lcom/metamoji/sd/entities/SdMOFolder;->getRevision()Ljava/lang/String;

    move-result-object v12

    :goto_1
    invoke-virtual {v8, v13, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1956
    invoke-virtual {v9}, Lcom/metamoji/sd/entities/SdMOFolder;->getDeleteFlag()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v8, v11, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1958
    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1959
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1961
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/16 v3, 0x3e8

    if-lt v2, v3, :cond_3

    .line 1962
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v10, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    sget v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->ZIP_BEST_SPEED:I

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->writeFileInZip(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;[BI)V

    add-int/lit8 v8, v18, 0x1

    .line 1964
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v6, v2

    goto :goto_2

    :cond_3
    move/from16 v8, v18

    :goto_2
    move-object/from16 v4, v16

    move-object/from16 v7, v17

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object/from16 v19, v2

    :goto_3
    move-object/from16 v3, v19

    goto/16 :goto_9

    :catch_1
    move-exception v0

    move-object/from16 v19, v2

    :goto_4
    move-object/from16 v3, v19

    goto/16 :goto_8

    :cond_4
    move-object/from16 v18, v3

    move-object v3, v2

    move-object/from16 v2, v18

    move/from16 v18, v8

    .line 1968
    :try_start_4
    invoke-virtual {v2, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getUpdatedFolders(Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object v2

    .line 1971
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move/from16 v8, v18

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/metamoji/sd/entities/SdMOFolder;

    .line 1972
    invoke-virtual {v7}, Lcom/metamoji/sd/entities/SdMOFolder;->getAbsPath()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v17, v2

    .line 1974
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1976
    invoke-virtual {v2, v15, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1977
    invoke-virtual {v7}, Lcom/metamoji/sd/entities/SdMOFolder;->getUpdate()Ljava/util/Date;

    move-result-object v18

    move-object/from16 v20, v7

    move/from16 v19, v8

    invoke-static/range {v18 .. v18}, Lcom/metamoji/sd/SdUtils;->dateToTime(Ljava/util/Date;)J

    move-result-wide v7

    invoke-virtual {v2, v14, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1978
    invoke-virtual/range {v20 .. v20}, Lcom/metamoji/sd/entities/SdMOFolder;->getRevision()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_5

    move-object v7, v12

    goto :goto_6

    :cond_5
    invoke-virtual/range {v20 .. v20}, Lcom/metamoji/sd/entities/SdMOFolder;->getRevision()Ljava/lang/String;

    move-result-object v7

    :goto_6
    invoke-virtual {v2, v13, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1979
    invoke-virtual/range {v20 .. v20}, Lcom/metamoji/sd/entities/SdMOFolder;->getDeleteFlag()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v2, v11, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1981
    invoke-virtual {v6, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1982
    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1984
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/16 v7, 0x3e8

    if-lt v2, v7, :cond_6

    .line 1985
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v10, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    sget v8, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->ZIP_BEST_SPEED:I

    invoke-virtual {v1, v0, v2, v6, v8}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->writeFileInZip(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;[BI)V

    add-int/lit8 v8, v19, 0x1

    .line 1987
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    move-object v6, v2

    goto :goto_7

    :cond_6
    move/from16 v8, v19

    :goto_7
    move-object/from16 v2, v17

    goto :goto_5

    :cond_7
    move/from16 v19, v8

    .line 1991
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_8

    .line 1992
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v10, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    sget v6, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->ZIP_NO_COMPRESSION:I

    invoke-virtual {v1, v0, v2, v4, v6}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->writeFileInZip(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;[BI)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :cond_8
    if-eqz v3, :cond_9

    .line 2002
    invoke-virtual {v3}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_9
    return-object v5

    :catch_2
    move-exception v0

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object v3, v2

    goto :goto_9

    :catch_3
    move-exception v0

    move-object v3, v2

    move-object/from16 v16, v4

    .line 1997
    :goto_8
    :try_start_5
    const-string v2, "[SdDriveSyncProcess] :: ERROR writeChangedFoldersInZip: %s"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v3, :cond_a

    .line 2002
    invoke-virtual {v3}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_a
    return-object v16

    :catchall_3
    move-exception v0

    :goto_9
    if-eqz v3, :cond_b

    invoke-virtual {v3}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 2004
    :cond_b
    throw v0
.end method

.method protected writeChangedOptionDocumentsInZip(Ljava/util/zip/ZipOutputStream;Ljava/util/List;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipOutputStream;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2195
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->getManagedObjectContextManager()Lcom/metamoji/sd/SdDriveContentsMOCManager;

    move-result-object v0

    .line 2196
    new-instance v1, Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-direct {v1, v0}, Lcom/metamoji/sd/SdDriveContentsMOManager;-><init>(Lcom/metamoji/sd/SdManagedObjectContextManager;)V

    .line 2197
    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const/4 p1, 0x1

    .line 2200
    :try_start_0
    iput-boolean p1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_errFlag:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2243
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_0
    return-object v2

    .line 2204
    :cond_1
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2205
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 2208
    invoke-virtual {v1, p2, v0}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getChangedOptionDocumentsWithoutDeletedInIds(Ljava/util/List;Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object p2

    .line 2210
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x0

    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v6, "UTF-8"

    const-string v7, "documentoptions_%d.json"

    if-eqz v5, :cond_5

    :try_start_2
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/sd/entities/SdMODocument;

    .line 2211
    invoke-virtual {v5}, Lcom/metamoji/sd/entities/SdMODocument;->getId()Ljava/lang/String;

    move-result-object v8

    .line 2213
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 2215
    const-string v10, "id"

    invoke-virtual {v9, v10, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2216
    const-string v10, "options"

    invoke-virtual {v5}, Lcom/metamoji/sd/entities/SdMODocument;->getOptions()Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2217
    const-string v10, "optionsOrigin"

    invoke-virtual {v5}, Lcom/metamoji/sd/entities/SdMODocument;->getOptionsOrigin()Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2218
    const-string v10, "optionsUpdate"

    invoke-virtual {v5}, Lcom/metamoji/sd/entities/SdMODocument;->getOptionsUpdate()Ljava/util/Date;

    move-result-object v11

    invoke-static {v11}, Lcom/metamoji/sd/SdUtils;->dateToTime(Ljava/util/Date;)J

    move-result-wide v11

    invoke-virtual {v9, v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 2219
    const-string v10, "optionsRevision"

    invoke-virtual {v5}, Lcom/metamoji/sd/entities/SdMODocument;->getOptionsRevision()Ljava/lang/String;

    move-result-object v11
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v12, ""

    if-nez v11, :cond_3

    move-object v11, v12

    goto :goto_1

    :cond_3
    :try_start_3
    invoke-virtual {v5}, Lcom/metamoji/sd/entities/SdMODocument;->getOptionsRevision()Ljava/lang/String;

    move-result-object v11

    :goto_1
    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2220
    const-string v10, "contentsRevision"

    invoke-virtual {v5}, Lcom/metamoji/sd/entities/SdMODocument;->getContentsRevision()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v5}, Lcom/metamoji/sd/entities/SdMODocument;->getContentsRevision()Ljava/lang/String;

    move-result-object v12

    :goto_2
    invoke-virtual {v9, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2222
    invoke-virtual {v4, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 2223
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2225
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    const/16 v8, 0x3e8

    if-lt v5, v8, :cond_2

    .line 2226
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    sget v6, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->ZIP_BEST_SPEED:I

    invoke-virtual {p0, p1, v5, v4, v6}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->writeFileInZip(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;[BI)V

    add-int/lit8 v1, v1, 0x1

    .line 2228
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    goto/16 :goto_0

    .line 2232
    :cond_5
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-lez p2, :cond_6

    .line 2233
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v7, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    sget v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->ZIP_NO_COMPRESSION:I

    invoke-virtual {p0, p1, p2, v1, v4}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->writeFileInZip(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;[BI)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_6
    if-eqz v0, :cond_7

    .line 2243
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_7
    return-object v3

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 2238
    :try_start_4
    const-string p2, "[SdDriveSyncProcess] :: ERROR writeChangedOptionDocumentsInZip: %s"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_8

    .line 2243
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_8
    return-object v2

    :goto_3
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 2245
    :cond_9
    throw p1
.end method

.method protected writeChangedTagDocumentsInZip(Ljava/util/zip/ZipOutputStream;Ljava/util/List;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipOutputStream;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 2131
    iget-object v2, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v2}, Lcom/metamoji/sd/SdDriveDocumentManager;->getManagedObjectContextManager()Lcom/metamoji/sd/SdDriveContentsMOCManager;

    move-result-object v2

    .line 2132
    new-instance v3, Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-direct {v3, v2}, Lcom/metamoji/sd/SdDriveContentsMOManager;-><init>(Lcom/metamoji/sd/SdManagedObjectContextManager;)V

    .line 2133
    invoke-virtual {v2}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v2

    const/4 v4, 0x0

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 2136
    :try_start_0
    iput-boolean v0, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_errFlag:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 2183
    invoke-virtual {v2}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_0
    return-object v4

    .line 2140
    :cond_1
    :try_start_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2141
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    move-object/from16 v7, p2

    .line 2144
    invoke-virtual {v3, v7, v2}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getChangedTagDocumentsWithoutDeletedInIds(Ljava/util/List;Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object v3

    .line 2146
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v7, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v9, "UTF-8"

    const-string v10, "documenttags_%d.json"

    if-eqz v8, :cond_6

    :try_start_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/metamoji/sd/entities/SdMODocument;

    .line 2147
    invoke-virtual {v8}, Lcom/metamoji/sd/entities/SdMODocument;->getId()Ljava/lang/String;

    move-result-object v11

    .line 2149
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 2150
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 2152
    invoke-virtual {v8}, Lcom/metamoji/sd/entities/SdMODocument;->getTags()Lcom/j256/ormlite/dao/ForeignCollection;

    move-result-object v14

    invoke-interface {v14}, Lcom/j256/ormlite/dao/ForeignCollection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/metamoji/sd/entities/SdMODocumentTag;

    .line 2153
    invoke-virtual {v15}, Lcom/metamoji/sd/entities/SdMODocumentTag;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2156
    :cond_2
    const-string v14, "id"

    invoke-virtual {v12, v14, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2157
    const-string/jumbo v14, "tags"

    invoke-static {v13}, Lcom/metamoji/sd/SdUtils;->pathFromTags(Ljava/util/List;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v14, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2158
    const-string/jumbo v13, "tagsOrigin"

    invoke-virtual {v8}, Lcom/metamoji/sd/entities/SdMODocument;->getTagsOrigin()Ljava/lang/String;

    move-result-object v14
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v15, ""

    if-nez v14, :cond_3

    move-object v14, v15

    goto :goto_2

    :cond_3
    :try_start_3
    invoke-virtual {v8}, Lcom/metamoji/sd/entities/SdMODocument;->getTagsOrigin()Ljava/lang/String;

    move-result-object v14

    :goto_2
    invoke-virtual {v12, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2159
    const-string/jumbo v13, "tagsUpdate"

    invoke-virtual {v8}, Lcom/metamoji/sd/entities/SdMODocument;->getTagsUpdate()Ljava/util/Date;

    move-result-object v14
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    :try_start_4
    invoke-static {v14}, Lcom/metamoji/sd/SdUtils;->dateToTime(Ljava/util/Date;)J

    move-result-wide v4

    invoke-virtual {v12, v13, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 2160
    const-string/jumbo v4, "tagsRevision"

    invoke-virtual {v8}, Lcom/metamoji/sd/entities/SdMODocument;->getTagsRevision()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v8}, Lcom/metamoji/sd/entities/SdMODocument;->getTagsRevision()Ljava/lang/String;

    move-result-object v15

    :goto_3
    invoke-virtual {v12, v4, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2162
    invoke-virtual {v6, v12}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-object/from16 v4, v17

    .line 2163
    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2165
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v5

    const/16 v8, 0x3e8

    if-lt v5, v8, :cond_5

    .line 2166
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v10, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    sget v8, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->ZIP_BEST_SPEED:I

    invoke-virtual {v1, v0, v5, v6, v8}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->writeFileInZip(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;[BI)V

    add-int/lit8 v7, v7, 0x1

    .line 2168
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    move-object v6, v5

    :cond_5
    move-object v5, v4

    move-object/from16 v4, v16

    goto/16 :goto_0

    :cond_6
    move-object/from16 v16, v4

    move-object v4, v5

    .line 2172
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_7

    .line 2173
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v10, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    sget v6, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->ZIP_NO_COMPRESSION:I

    invoke-virtual {v1, v0, v3, v5, v6}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->writeFileInZip(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;[BI)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_7
    if-eqz v2, :cond_8

    .line 2183
    invoke-virtual {v2}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_8
    return-object v4

    :catch_0
    move-exception v0

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    move-object/from16 v16, v4

    .line 2178
    :goto_4
    :try_start_5
    const-string v3, "[SdDriveSyncProcess] :: ERROR writeChangedTagDocumentsInZip: %s"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v2, :cond_9

    .line 2183
    invoke-virtual {v2}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_9
    return-object v16

    :goto_5
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 2185
    :cond_a
    throw v0
.end method

.method protected writeChangedTagsInZip(Ljava/util/zip/ZipOutputStream;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipOutputStream;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1832
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->getManagedObjectContextManager()Lcom/metamoji/sd/SdDriveContentsMOCManager;

    move-result-object v0

    .line 1833
    new-instance v1, Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-direct {v1, v0}, Lcom/metamoji/sd/SdDriveContentsMOManager;-><init>(Lcom/metamoji/sd/SdManagedObjectContextManager;)V

    .line 1834
    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const/4 p1, 0x1

    .line 1837
    :try_start_0
    iput-boolean p1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_errFlag:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1879
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_0
    return-object v2

    .line 1841
    :cond_1
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1842
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 1844
    invoke-virtual {v1, v0}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getChangedTags(Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object v1

    .line 1848
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v5, 0x0

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v7, "UTF-8"

    const-string/jumbo v8, "tagdefs_%d.json"

    if-eqz v6, :cond_4

    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/metamoji/sd/entities/SdMOTag;

    .line 1849
    invoke-virtual {v6}, Lcom/metamoji/sd/entities/SdMOTag;->getName()Ljava/lang/String;

    move-result-object v9

    .line 1850
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 1852
    const-string/jumbo v11, "tagName"

    invoke-virtual {v10, v11, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1853
    const-string v11, "color"

    invoke-virtual {v6}, Lcom/metamoji/sd/entities/SdMOTag;->getColor()Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1854
    const-string v11, "lastUpdate"

    invoke-virtual {v6}, Lcom/metamoji/sd/entities/SdMOTag;->getUpdate()Ljava/util/Date;

    move-result-object v12

    invoke-static {v12}, Lcom/metamoji/sd/SdUtils;->dateToTime(Ljava/util/Date;)J

    move-result-wide v12

    invoke-virtual {v10, v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1855
    const-string/jumbo v11, "revision"

    invoke-virtual {v6}, Lcom/metamoji/sd/entities/SdMOTag;->getRevision()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_3

    const-string v12, ""

    goto :goto_1

    :cond_3
    invoke-virtual {v6}, Lcom/metamoji/sd/entities/SdMOTag;->getRevision()Ljava/lang/String;

    move-result-object v12

    :goto_1
    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1856
    const-string v11, "deleteFlag"

    invoke-virtual {v6}, Lcom/metamoji/sd/entities/SdMOTag;->getDeleteFlag()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v10, v11, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1858
    invoke-virtual {v4, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1859
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1861
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    const/16 v9, 0x3e8

    if-lt v6, v9, :cond_2

    .line 1862
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    sget v7, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->ZIP_BEST_SPEED:I

    invoke-virtual {p0, p1, v6, v4, v7}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->writeFileInZip(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;[BI)V

    add-int/lit8 v5, v5, 0x1

    .line 1864
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    goto/16 :goto_0

    .line 1868
    :cond_4
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 1869
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v8, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    sget v5, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->ZIP_NO_COMPRESSION:I

    invoke-virtual {p0, p1, v1, v4, v5}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->writeFileInZip(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;[BI)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    if-eqz v0, :cond_6

    .line 1879
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_6
    return-object v3

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 1874
    :try_start_3
    const-string v1, "[SdDriveSyncProcess] :: ERROR writeChangedTagsInZip: %s"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_7

    .line 1879
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_7
    return-object v2

    :goto_2
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 1881
    :cond_8
    throw p1
.end method

.method protected writeChangedTitleDocumentsInZip(Ljava/util/zip/ZipOutputStream;Ljava/util/List;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipOutputStream;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 2072
    iget-object v2, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v2}, Lcom/metamoji/sd/SdDriveDocumentManager;->getManagedObjectContextManager()Lcom/metamoji/sd/SdDriveContentsMOCManager;

    move-result-object v2

    .line 2073
    new-instance v3, Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-direct {v3, v2}, Lcom/metamoji/sd/SdDriveContentsMOManager;-><init>(Lcom/metamoji/sd/SdManagedObjectContextManager;)V

    .line 2074
    invoke-virtual {v2}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v2

    const/4 v4, 0x0

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 2077
    :try_start_0
    iput-boolean v0, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_errFlag:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 2118
    invoke-virtual {v2}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_0
    return-object v4

    .line 2081
    :cond_1
    :try_start_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2082
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    move-object/from16 v7, p2

    .line 2085
    invoke-virtual {v3, v7, v2}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getChangedTitleDocumentsWithoutDeletedInIds(Ljava/util/List;Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object v3

    .line 2087
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v7, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v9, "UTF-8"

    const-string v10, "documenttitles_%d.json"

    if-eqz v8, :cond_5

    :try_start_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/metamoji/sd/entities/SdMODocument;

    .line 2088
    invoke-virtual {v8}, Lcom/metamoji/sd/entities/SdMODocument;->getId()Ljava/lang/String;

    move-result-object v11

    .line 2090
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 2092
    const-string v13, "id"

    invoke-virtual {v12, v13, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2093
    const-string/jumbo v13, "title"

    invoke-virtual {v8}, Lcom/metamoji/sd/entities/SdMODocument;->getTitle()Ljava/lang/String;

    move-result-object v14
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v15, ""

    if-nez v14, :cond_2

    move-object v14, v15

    goto :goto_1

    :cond_2
    :try_start_3
    invoke-virtual {v8}, Lcom/metamoji/sd/entities/SdMODocument;->getTitle()Ljava/lang/String;

    move-result-object v14

    :goto_1
    invoke-virtual {v12, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2094
    const-string/jumbo v13, "titleUpdate"

    invoke-virtual {v8}, Lcom/metamoji/sd/entities/SdMODocument;->getTitleUpdate()Ljava/util/Date;

    move-result-object v14
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    :try_start_4
    invoke-static {v14}, Lcom/metamoji/sd/SdUtils;->dateToTime(Ljava/util/Date;)J

    move-result-wide v4

    invoke-virtual {v12, v13, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 2095
    const-string/jumbo v4, "titleRevision"

    invoke-virtual {v8}, Lcom/metamoji/sd/entities/SdMODocument;->getTitleRevision()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v8}, Lcom/metamoji/sd/entities/SdMODocument;->getTitleRevision()Ljava/lang/String;

    move-result-object v15

    :goto_2
    invoke-virtual {v12, v4, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2097
    invoke-virtual {v6, v12}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-object/from16 v4, v17

    .line 2098
    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2100
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v5

    const/16 v8, 0x3e8

    if-lt v5, v8, :cond_4

    .line 2101
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v10, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    sget v8, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->ZIP_BEST_SPEED:I

    invoke-virtual {v1, v0, v5, v6, v8}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->writeFileInZip(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;[BI)V

    add-int/lit8 v7, v7, 0x1

    .line 2103
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    move-object v6, v5

    :cond_4
    move-object v5, v4

    move-object/from16 v4, v16

    goto/16 :goto_0

    :cond_5
    move-object/from16 v16, v4

    move-object v4, v5

    .line 2107
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_6

    .line 2108
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v10, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    sget v6, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->ZIP_NO_COMPRESSION:I

    invoke-virtual {v1, v0, v3, v5, v6}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->writeFileInZip(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;[BI)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_6
    if-eqz v2, :cond_7

    .line 2118
    invoke-virtual {v2}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_7
    return-object v4

    :catch_0
    move-exception v0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object/from16 v16, v4

    .line 2113
    :goto_3
    :try_start_5
    const-string v3, "[SdDriveSyncProcess] :: ERROR writeChangedTitleDocumentsInZip: %s"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v2, :cond_8

    .line 2118
    invoke-virtual {v2}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_8
    return-object v16

    :goto_4
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 2120
    :cond_9
    throw v0
.end method

.method protected writeFileInZip(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Ljava/io/File;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p4, :cond_1

    const/16 v0, 0x8

    .line 4210
    invoke-virtual {p1, v0}, Ljava/util/zip/ZipOutputStream;->setMethod(I)V

    .line 4211
    invoke-virtual {p1, p4}, Ljava/util/zip/ZipOutputStream;->setLevel(I)V

    .line 4212
    new-instance p4, Ljava/util/zip/ZipEntry;

    invoke-direct {p4, p2}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 4213
    invoke-virtual {p1, p4}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 4214
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, p3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 p3, 0x2000

    .line 4215
    new-array p3, p3, [B

    .line 4217
    :goto_0
    invoke-virtual {p2, p3}, Ljava/io/FileInputStream;->read([B)I

    move-result p4

    const/4 v0, -0x1

    if-eq p4, v0, :cond_0

    const/4 v0, 0x0

    .line 4218
    invoke-virtual {p1, p3, v0, p4}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_0

    .line 4220
    :cond_0
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V

    .line 4221
    invoke-virtual {p1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    return-void

    .line 4207
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method protected writeFileInZip(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;[BI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p4, :cond_0

    const/4 p4, 0x0

    .line 4179
    invoke-virtual {p1, p4}, Ljava/util/zip/ZipOutputStream;->setMethod(I)V

    .line 4180
    new-instance p4, Ljava/util/zip/ZipEntry;

    invoke-direct {p4, p2}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 4181
    new-instance p2, Ljava/util/zip/CRC32;

    invoke-direct {p2}, Ljava/util/zip/CRC32;-><init>()V

    .line 4182
    invoke-virtual {p2, p3}, Ljava/util/zip/CRC32;->update([B)V

    .line 4183
    array-length v0, p3

    int-to-long v0, v0

    invoke-virtual {p4, v0, v1}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 4184
    invoke-virtual {p2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    .line 4185
    array-length p2, p3

    int-to-long v0, p2

    invoke-virtual {p4, v0, v1}, Ljava/util/zip/ZipEntry;->setCompressedSize(J)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 4187
    invoke-virtual {p1, v0}, Ljava/util/zip/ZipOutputStream;->setMethod(I)V

    .line 4188
    invoke-virtual {p1, p4}, Ljava/util/zip/ZipOutputStream;->setLevel(I)V

    .line 4189
    new-instance p4, Ljava/util/zip/ZipEntry;

    invoke-direct {p4, p2}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 4191
    :goto_0
    invoke-virtual {p1, p4}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 4192
    invoke-virtual {p1, p3}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 4193
    invoke-virtual {p1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    return-void
.end method

.method protected writeTagOrderInZip(Ljava/util/zip/ZipOutputStream;)Z
    .locals 10

    .line 1890
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->getManagedObjectContextManager()Lcom/metamoji/sd/SdDriveContentsMOCManager;

    move-result-object v0

    .line 1891
    new-instance v1, Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-direct {v1, v0}, Lcom/metamoji/sd/SdDriveContentsMOManager;-><init>(Lcom/metamoji/sd/SdManagedObjectContextManager;)V

    .line 1892
    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 1895
    :try_start_0
    iput-boolean v2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_errFlag:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1921
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_0
    return v3

    .line 1899
    :cond_1
    :try_start_1
    invoke-virtual {v1, v0}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getTagOrderByDefaultId(Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMOTagOrder;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_3

    if-eqz v0, :cond_2

    .line 1921
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_2
    return v3

    .line 1905
    :cond_3
    :try_start_2
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 1907
    const-string/jumbo v5, "tagOrder"

    invoke-virtual {v1}, Lcom/metamoji/sd/entities/SdMOTagOrder;->getTagOrder()Ljava/lang/String;

    move-result-object v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v7, ""

    if-nez v6, :cond_4

    move-object v6, v7

    goto :goto_0

    :cond_4
    :try_start_3
    invoke-virtual {v1}, Lcom/metamoji/sd/entities/SdMOTagOrder;->getTagOrder()Ljava/lang/String;

    move-result-object v6

    :goto_0
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1908
    const-string/jumbo v5, "tagOrderOrigin"

    invoke-virtual {v1}, Lcom/metamoji/sd/entities/SdMOTagOrder;->getTagOrderOrigin()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_5

    move-object v6, v7

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Lcom/metamoji/sd/entities/SdMOTagOrder;->getTagOrderOrigin()Ljava/lang/String;

    move-result-object v6

    :goto_1
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1909
    const-string v5, "lastUpdate"

    invoke-virtual {v1}, Lcom/metamoji/sd/entities/SdMOTagOrder;->getUpdate()Ljava/util/Date;

    move-result-object v6

    invoke-static {v6}, Lcom/metamoji/sd/SdUtils;->dateToTime(Ljava/util/Date;)J

    move-result-wide v8

    invoke-virtual {v4, v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1910
    const-string/jumbo v5, "revision"

    invoke-virtual {v1}, Lcom/metamoji/sd/entities/SdMOTagOrder;->getRevision()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v1}, Lcom/metamoji/sd/entities/SdMOTagOrder;->getRevision()Ljava/lang/String;

    move-result-object v7

    :goto_2
    invoke-virtual {v4, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1912
    const-string/jumbo v1, "tagorder.json"

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    sget v5, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->ZIP_NO_COMPRESSION:I

    invoke-virtual {p0, p1, v1, v4, v5}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->writeFileInZip(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;[BI)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_7

    .line 1921
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_7
    return v2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 1916
    :try_start_4
    const-string v1, "[SdDriveSyncProcess] :: ERROR writeTagOrderInZip: %s"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_8

    .line 1921
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_8
    return v3

    :goto_3
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 1923
    :cond_9
    throw p1
.end method
