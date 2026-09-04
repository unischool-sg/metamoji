.class Lcom/metamoji/nt/NtNoteController$80$1;
.super Ljava/lang/Object;
.source "NtNoteController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtNoteController$80;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/nt/NtNoteController$80;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtNoteController$80;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 11016
    iput-object p1, p0, Lcom/metamoji/nt/NtNoteController$80$1;->this$1:Lcom/metamoji/nt/NtNoteController$80;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 11020
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 11021
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCollaboModeBar()Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 11022
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCollaboModeBar()Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->updateSchoolUserList()V

    .line 11025
    :cond_0
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$80$1;->this$1:Lcom/metamoji/nt/NtNoteController$80;

    iget-object v0, v0, Lcom/metamoji/nt/NtNoteController$80;->this$0:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 11027
    invoke-virtual {v0}, Lcom/metamoji/ns/direction/NsDirectionManager;->updateViewLocationRelatedCommandStatus()V

    .line 11028
    invoke-virtual {v0}, Lcom/metamoji/ns/direction/NsDirectionManager;->updateNoteModeRelatedCommandStatus()V

    .line 11031
    :cond_1
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$80$1;->this$1:Lcom/metamoji/nt/NtNoteController$80;

    iget-object v0, v0, Lcom/metamoji/nt/NtNoteController$80;->this$0:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->updateEditLayerInfo()V

    .line 11033
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    .line 11034
    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isPersonalMode()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isFeaturedPersonalMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 11035
    :cond_2
    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->updatePersonalModeInfoView()V

    .line 11037
    :cond_3
    invoke-static {}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;->sharedInstance()Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;

    move-result-object v0

    .line 11038
    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController$80$1;->this$1:Lcom/metamoji/nt/NtNoteController$80;

    iget-boolean v1, v1, Lcom/metamoji/nt/NtNoteController$80;->val$isOfflineEditMode:Z

    invoke-virtual {v0, v1}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;->updateOfflineEditModeInfo(Z)V

    return-void
.end method
