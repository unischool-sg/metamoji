.class Lcom/metamoji/nt/NtNoteController$79;
.super Ljava/lang/Object;
.source "NtNoteController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtNoteController;->handleForSchoolHiddenStudentNameChangeDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;Lcom/metamoji/ns/direction/INsDirectionObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtNoteController;

.field final synthetic val$hiddenStudentName:Z


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtNoteController;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 10953
    iput-object p1, p0, Lcom/metamoji/nt/NtNoteController$79;->this$0:Lcom/metamoji/nt/NtNoteController;

    iput-boolean p2, p0, Lcom/metamoji/nt/NtNoteController$79;->val$hiddenStudentName:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 10957
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 10958
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCollaboModeBar()Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 10959
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCollaboModeBar()Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->updateSchoolUserList()V

    .line 10961
    :cond_0
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$79;->this$0:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 10963
    invoke-virtual {v0}, Lcom/metamoji/ns/direction/NsDirectionManager;->updateViewLocationRelatedCommandStatus()V

    .line 10964
    invoke-virtual {v0}, Lcom/metamoji/ns/direction/NsDirectionManager;->updateNoteModeRelatedCommandStatus()V

    .line 10966
    :cond_1
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$79;->this$0:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->updateEditLayerInfo()V

    .line 10967
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    .line 10968
    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isPersonalMode()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isFeaturedPersonalMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10969
    :cond_2
    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->updatePersonalModeInfoView()V

    .line 10972
    :cond_3
    invoke-static {}, Lcom/metamoji/un/text/UnTextUnitStateManager;->sharedInstance()Lcom/metamoji/un/text/UnTextUnitStateManager;

    move-result-object v0

    .line 10973
    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnitStateManager;->updateEditUserInfos()V

    .line 10974
    invoke-static {}, Lcom/metamoji/nt/NtUnitStateManager;->sharedInstance()Lcom/metamoji/nt/NtUnitStateManager;

    move-result-object v0

    .line 10975
    invoke-virtual {v0}, Lcom/metamoji/nt/NtUnitStateManager;->updateEditUserInfos()V

    .line 10977
    invoke-static {}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->sharedInstance()Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;

    move-result-object v0

    .line 10978
    iget-boolean v1, p0, Lcom/metamoji/nt/NtNoteController$79;->val$hiddenStudentName:Z

    invoke-virtual {v0, v1}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->updateHiddenStudentName(Z)V

    return-void
.end method
