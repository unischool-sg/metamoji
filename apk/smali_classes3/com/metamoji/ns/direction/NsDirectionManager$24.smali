.class Lcom/metamoji/ns/direction/NsDirectionManager$24;
.super Ljava/lang/Object;
.source "NsDirectionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/direction/NsDirectionManager;->connectStatusChanged(Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/direction/NsDirectionManager;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/direction/NsDirectionManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1655
    iput-object p1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$24;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1658
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager$24;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iget-object v0, v0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_document:Lcom/metamoji/nt/NtDocument;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 1660
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtNoteController;->setEditLayerEditable(Z)V

    .line 1665
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getTargetLayerType()Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtNoteController;->changeTargetLayer(Lcom/metamoji/nt/NtNoteController$TargetLayerType;)V

    .line 1667
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    new-instance v2, Lcom/metamoji/ns/direction/NsDirectionManager$24$1;

    invoke-direct {v2, p0}, Lcom/metamoji/ns/direction/NsDirectionManager$24$1;-><init>(Lcom/metamoji/ns/direction/NsDirectionManager$24;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 1684
    invoke-static {}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;->sharedInstance()Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;

    move-result-object v1

    .line 1685
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->isOfflineEditMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1686
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v2

    .line 1687
    invoke-virtual {v1, v2}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;->isOfflineEditEnabledPage(Lcom/metamoji/nt/NtPageController;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 1688
    invoke-virtual {v0, v2}, Lcom/metamoji/nt/NtNoteController;->setEditLayerEditable(Z)V

    .line 1692
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v2, Lcom/metamoji/ns/direction/NsDirectionManager$24$2;

    invoke-direct {v2, p0, v1}, Lcom/metamoji/ns/direction/NsDirectionManager$24$2;-><init>(Lcom/metamoji/ns/direction/NsDirectionManager$24;Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 1703
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager$24;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    invoke-virtual {v0}, Lcom/metamoji/ns/direction/NsDirectionManager;->updateViewLocationRelatedCommandStatus()V

    .line 1704
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager$24;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    invoke-virtual {v0}, Lcom/metamoji/ns/direction/NsDirectionManager;->updateNoteModeRelatedCommandStatus()V

    return-void
.end method
