.class Lcom/metamoji/sd/SdDriveUpdateChecker$Task;
.super Ljava/lang/Object;
.source "SdDriveUpdateChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/sd/SdDriveUpdateChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Task"
.end annotation


# instance fields
.field private m_driveId:Ljava/lang/String;

.field final synthetic this$0:Lcom/metamoji/sd/SdDriveUpdateChecker;


# direct methods
.method constructor <init>(Lcom/metamoji/sd/SdDriveUpdateChecker;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lcom/metamoji/sd/SdDriveUpdateChecker$Task;->this$0:Lcom/metamoji/sd/SdDriveUpdateChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p2, p0, Lcom/metamoji/sd/SdDriveUpdateChecker$Task;->m_driveId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 43
    :try_start_0
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/sd/SdDriveUpdateChecker$Task;->m_driveId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {v0}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->checkUpdate()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 48
    :goto_0
    invoke-static {}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->getInstance()Lcom/metamoji/dm/impl/sync/DmDCSyncManager;

    move-result-object v1

    .line 49
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/ui/UiCurrentActivityManager;->getCurrentActivityOrNull()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 55
    :cond_1
    invoke-virtual {v1}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->isProcessing()Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    return-void

    :cond_2
    if-eqz v0, :cond_4

    .line 61
    invoke-virtual {v1}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->canSync()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 62
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveUpdateChecker$Task;->m_driveId:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 63
    invoke-virtual {v1, v0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->startSharedDriveAutoSync(Ljava/lang/String;)Z

    goto :goto_2

    .line 65
    :cond_3
    invoke-virtual {v1}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->startLocalAutoSync()Z

    goto :goto_2

    .line 68
    :cond_4
    invoke-static {}, Lcom/metamoji/noteanytime/MainActivity;->isKeepSyncCancel()Z

    move-result v0

    if-nez v0, :cond_5

    .line 70
    invoke-virtual {v1}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->canSync()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 71
    invoke-virtual {v1}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->startAutoSyncForChanges()Z

    .line 76
    :cond_5
    :goto_2
    invoke-static {}, Lcom/metamoji/sd/SdDriveInvitationChecker;->getInstance()Lcom/metamoji/sd/SdDriveInvitationChecker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveInvitationChecker;->doCheck()Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 79
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "[SdDriveUpdateChecker] :: ERROR run:%s"

    invoke-static {v1, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
