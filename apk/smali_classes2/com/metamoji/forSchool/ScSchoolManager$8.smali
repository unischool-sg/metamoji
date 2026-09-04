.class Lcom/metamoji/forSchool/ScSchoolManager$8;
.super Ljava/lang/Object;
.source "ScSchoolManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/ScSchoolManager;->hideLockScreenView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/forSchool/ScSchoolManager;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/ScSchoolManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 702
    iput-object p1, p0, Lcom/metamoji/forSchool/ScSchoolManager$8;->this$0:Lcom/metamoji/forSchool/ScSchoolManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 705
    iget-object v0, p0, Lcom/metamoji/forSchool/ScSchoolManager$8;->this$0:Lcom/metamoji/forSchool/ScSchoolManager;

    iget-object v0, v0, Lcom/metamoji/forSchool/ScSchoolManager;->_lockScreen:Lcom/metamoji/forSchool/ui/ScLockScreenView;

    if-eqz v0, :cond_0

    .line 706
    iget-object v0, p0, Lcom/metamoji/forSchool/ScSchoolManager$8;->this$0:Lcom/metamoji/forSchool/ScSchoolManager;

    iget-object v0, v0, Lcom/metamoji/forSchool/ScSchoolManager;->_lockScreen:Lcom/metamoji/forSchool/ui/ScLockScreenView;

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ui/ScLockScreenView;->hide()V

    .line 709
    :cond_0
    iget-object v0, p0, Lcom/metamoji/forSchool/ScSchoolManager$8;->this$0:Lcom/metamoji/forSchool/ScSchoolManager;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/metamoji/forSchool/ScSchoolManager;->_lockScreen:Lcom/metamoji/forSchool/ui/ScLockScreenView;

    .line 710
    iget-object v0, p0, Lcom/metamoji/forSchool/ScSchoolManager$8;->this$0:Lcom/metamoji/forSchool/ScSchoolManager;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/metamoji/forSchool/ScSchoolManager;->_isScreenLocked:Z

    .line 712
    iget-object v0, p0, Lcom/metamoji/forSchool/ScSchoolManager$8;->this$0:Lcom/metamoji/forSchool/ScSchoolManager;

    iput-boolean v2, v0, Lcom/metamoji/forSchool/ScSchoolManager;->_isScreenLocking:Z

    .line 713
    iget-object v0, p0, Lcom/metamoji/forSchool/ScSchoolManager$8;->this$0:Lcom/metamoji/forSchool/ScSchoolManager;

    iput-boolean v2, v0, Lcom/metamoji/forSchool/ScSchoolManager;->_isScreenUnlocking:Z

    .line 716
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 717
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCollaboModeBar()Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 719
    invoke-virtual {v2}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->updateSchoolTeacherModeBtn()V

    .line 723
    :cond_1
    iget-object v2, p0, Lcom/metamoji/forSchool/ScSchoolManager$8;->this$0:Lcom/metamoji/forSchool/ScSchoolManager;

    iget-object v2, v2, Lcom/metamoji/forSchool/ScSchoolManager;->_saveLockScreenInfo:Lcom/metamoji/forSchool/ScSchoolManager$ScLockScreenInfo;

    if-eqz v2, :cond_2

    .line 724
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v2

    .line 725
    iget-object v3, p0, Lcom/metamoji/forSchool/ScSchoolManager$8;->this$0:Lcom/metamoji/forSchool/ScSchoolManager;

    iget-object v3, v3, Lcom/metamoji/forSchool/ScSchoolManager;->_saveLockScreenInfo:Lcom/metamoji/forSchool/ScSchoolManager$ScLockScreenInfo;

    iget-object v3, v3, Lcom/metamoji/forSchool/ScSchoolManager$ScLockScreenInfo;->pageId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/metamoji/nt/NtNoteController;->pageIndexFromPageId(Ljava/lang/String;)I

    move-result v2

    .line 727
    new-instance v3, Lcom/metamoji/cm/CmContext;

    invoke-direct {v3}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 728
    const-string v4, "pageIndex"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 729
    iget-object v2, p0, Lcom/metamoji/forSchool/ScSchoolManager$8;->this$0:Lcom/metamoji/forSchool/ScSchoolManager;

    iget-object v2, v2, Lcom/metamoji/forSchool/ScSchoolManager;->_saveLockScreenInfo:Lcom/metamoji/forSchool/ScSchoolManager$ScLockScreenInfo;

    iget v2, v2, Lcom/metamoji/forSchool/ScSchoolManager$ScLockScreenInfo;->zoom:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v4, "zoom"

    invoke-virtual {v3, v4, v2}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 730
    iget-object v2, p0, Lcom/metamoji/forSchool/ScSchoolManager$8;->this$0:Lcom/metamoji/forSchool/ScSchoolManager;

    iget-object v2, v2, Lcom/metamoji/forSchool/ScSchoolManager;->_saveLockScreenInfo:Lcom/metamoji/forSchool/ScSchoolManager$ScLockScreenInfo;

    iget-object v2, v2, Lcom/metamoji/forSchool/ScSchoolManager$ScLockScreenInfo;->viewportOffset:Landroid/graphics/PointF;

    const-string v4, "offset"

    invoke-virtual {v3, v4, v2}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 731
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_PAGE_JUMP:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v2, v3}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    .line 733
    iget-object v0, p0, Lcom/metamoji/forSchool/ScSchoolManager$8;->this$0:Lcom/metamoji/forSchool/ScSchoolManager;

    iput-object v1, v0, Lcom/metamoji/forSchool/ScSchoolManager;->_saveLockScreenInfo:Lcom/metamoji/forSchool/ScSchoolManager$ScLockScreenInfo;

    :cond_2
    return-void
.end method
