.class Lcom/metamoji/ns/direction/NsDirectionManager$40;
.super Ljava/lang/Object;
.source "NsDirectionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/direction/NsDirectionManager;->logModeChanged(Ljava/lang/String;Lcom/metamoji/ns/INsCollaboHandler$CollaboLogModeStatus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

.field final synthetic val$boothId:Ljava/lang/String;

.field final synthetic val$finalExistBgTaskForReceiveAllData:Z

.field final synthetic val$logModeStatus:Lcom/metamoji/ns/INsCollaboHandler$CollaboLogModeStatus;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/direction/NsDirectionManager;ZLcom/metamoji/ns/INsCollaboHandler$CollaboLogModeStatus;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2487
    iput-object p1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$40;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iput-boolean p2, p0, Lcom/metamoji/ns/direction/NsDirectionManager$40;->val$finalExistBgTaskForReceiveAllData:Z

    iput-object p3, p0, Lcom/metamoji/ns/direction/NsDirectionManager$40;->val$logModeStatus:Lcom/metamoji/ns/INsCollaboHandler$CollaboLogModeStatus;

    iput-object p4, p0, Lcom/metamoji/ns/direction/NsDirectionManager$40;->val$boothId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2494
    iget-boolean v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager$40;->val$finalExistBgTaskForReceiveAllData:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/metamoji/ns/INsCollaboHandler$CollaboLogModeStatus;->LOGMODE_END:Lcom/metamoji/ns/INsCollaboHandler$CollaboLogModeStatus;

    iget-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$40;->val$logModeStatus:Lcom/metamoji/ns/INsCollaboHandler$CollaboLogModeStatus;

    if-ne v0, v1, :cond_1

    .line 2495
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager$40;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iget-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$40;->val$boothId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/direction/NsDirectionManager;->isAttachedBooth(Ljava/lang/String;)Z

    move-result v0

    .line 2496
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/ns/direction/NsDirectionManager$40;->val$boothId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/metamoji/ns/NsCollaboManager;->isAcceptingBooth(Ljava/lang/String;)Z

    move-result v1

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 2498
    :cond_0
    const-string v0, "[DirectionManager] removeUpdatedBoothId : skip\uff01"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    return-void

    .line 2505
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager$40;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iget-object v0, v0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_document:Lcom/metamoji/nt/NtDocument;

    const-string v1, "MMJNsShareSettings"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtDocument;->getDocumentSettingsForType(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ns/NsCollaboSettings;

    .line 2509
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/ns/direction/NsDirectionManager$40;->val$boothId:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/metamoji/forSchool/ScSchoolManager;->removeUpdatedBoothId(Ljava/lang/String;Lcom/metamoji/ns/NsCollaboSettings;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2516
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->touch()V

    .line 2519
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager$40;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iget-object v0, v0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_document:Lcom/metamoji/nt/NtDocument;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtDocument;->setSaveOnEnd(Z)V

    .line 2522
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ns/direction/NsDirectionManager$40$1;

    invoke-direct {v1, p0}, Lcom/metamoji/ns/direction/NsDirectionManager$40$1;-><init>(Lcom/metamoji/ns/direction/NsDirectionManager$40;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method
