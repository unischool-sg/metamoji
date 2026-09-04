.class Lcom/metamoji/nt/NtNoteController$74;
.super Ljava/lang/Object;
.source "NtNoteController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtNoteController;->setAllowEveryoneAnswer(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtNoteController;

.field final synthetic val$value:Z


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

    .line 10768
    iput-object p1, p0, Lcom/metamoji/nt/NtNoteController$74;->this$0:Lcom/metamoji/nt/NtNoteController;

    iput-boolean p2, p0, Lcom/metamoji/nt/NtNoteController$74;->val$value:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 10771
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 10772
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCollaboModeBar()Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10774
    invoke-virtual {v0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->updateSchoolPersonalModeTypeBtn()V

    .line 10776
    invoke-virtual {v0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->updateSchoolBtn()V

    .line 10778
    :cond_0
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$74;->this$0:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 10780
    invoke-virtual {v0}, Lcom/metamoji/ns/direction/NsDirectionManager;->updateViewLocationRelatedCommandStatus()V

    .line 10781
    invoke-virtual {v0}, Lcom/metamoji/ns/direction/NsDirectionManager;->updateNoteModeRelatedCommandStatus()V

    .line 10784
    :cond_1
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v0

    if-nez v0, :cond_2

    .line 10786
    iget-boolean v0, p0, Lcom/metamoji/nt/NtNoteController$74;->val$value:Z

    if-nez v0, :cond_2

    .line 10788
    invoke-static {}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->sharedInstance()Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;

    move-result-object v0

    .line 10789
    invoke-virtual {v0}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->closeDialog()V

    :cond_2
    return-void
.end method
