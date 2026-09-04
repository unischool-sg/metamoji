.class Lcom/metamoji/forSchool/ScSchoolManager$7;
.super Ljava/lang/Object;
.source "ScSchoolManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/ScSchoolManager;->showLockScreenView()V
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

    .line 667
    iput-object p1, p0, Lcom/metamoji/forSchool/ScSchoolManager$7;->this$0:Lcom/metamoji/forSchool/ScSchoolManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 670
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 671
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboManager;->isPresenter()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/metamoji/forSchool/ScSchoolManager$7;->this$0:Lcom/metamoji/forSchool/ScSchoolManager;

    invoke-static {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->-$$Nest$fget_isTeacher(Lcom/metamoji/forSchool/ScSchoolManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 674
    :cond_0
    iget-object v1, p0, Lcom/metamoji/forSchool/ScSchoolManager$7;->this$0:Lcom/metamoji/forSchool/ScSchoolManager;

    iget-object v1, v1, Lcom/metamoji/forSchool/ScSchoolManager;->_lockScreen:Lcom/metamoji/forSchool/ui/ScLockScreenView;

    if-nez v1, :cond_2

    .line 676
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v1

    .line 677
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v1

    .line 678
    iget-object v2, p0, Lcom/metamoji/forSchool/ScSchoolManager$7;->this$0:Lcom/metamoji/forSchool/ScSchoolManager;

    new-instance v3, Lcom/metamoji/forSchool/ScSchoolManager$ScLockScreenInfo;

    invoke-direct {v3}, Lcom/metamoji/forSchool/ScSchoolManager$ScLockScreenInfo;-><init>()V

    iput-object v3, v2, Lcom/metamoji/forSchool/ScSchoolManager;->_saveLockScreenInfo:Lcom/metamoji/forSchool/ScSchoolManager$ScLockScreenInfo;

    .line 679
    iget-object v2, p0, Lcom/metamoji/forSchool/ScSchoolManager$7;->this$0:Lcom/metamoji/forSchool/ScSchoolManager;

    iget-object v2, v2, Lcom/metamoji/forSchool/ScSchoolManager;->_saveLockScreenInfo:Lcom/metamoji/forSchool/ScSchoolManager$ScLockScreenInfo;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/metamoji/forSchool/ScSchoolManager$ScLockScreenInfo;->pageId:Ljava/lang/String;

    .line 680
    iget-object v2, p0, Lcom/metamoji/forSchool/ScSchoolManager$7;->this$0:Lcom/metamoji/forSchool/ScSchoolManager;

    iget-object v2, v2, Lcom/metamoji/forSchool/ScSchoolManager;->_saveLockScreenInfo:Lcom/metamoji/forSchool/ScSchoolManager$ScLockScreenInfo;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getZoom()F

    move-result v3

    iput v3, v2, Lcom/metamoji/forSchool/ScSchoolManager$ScLockScreenInfo;->zoom:F

    .line 681
    iget-object v2, p0, Lcom/metamoji/forSchool/ScSchoolManager$7;->this$0:Lcom/metamoji/forSchool/ScSchoolManager;

    iget-object v2, v2, Lcom/metamoji/forSchool/ScSchoolManager;->_saveLockScreenInfo:Lcom/metamoji/forSchool/ScSchoolManager$ScLockScreenInfo;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getViewportOffset()Landroid/graphics/PointF;

    move-result-object v1

    iput-object v1, v2, Lcom/metamoji/forSchool/ScSchoolManager$ScLockScreenInfo;->viewportOffset:Landroid/graphics/PointF;

    .line 683
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getCurrentActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 685
    iget-object v1, p0, Lcom/metamoji/forSchool/ScSchoolManager$7;->this$0:Lcom/metamoji/forSchool/ScSchoolManager;

    new-instance v2, Lcom/metamoji/forSchool/ui/ScLockScreenView;

    invoke-direct {v2}, Lcom/metamoji/forSchool/ui/ScLockScreenView;-><init>()V

    iput-object v2, v1, Lcom/metamoji/forSchool/ScSchoolManager;->_lockScreen:Lcom/metamoji/forSchool/ui/ScLockScreenView;

    .line 686
    iget-object v1, p0, Lcom/metamoji/forSchool/ScSchoolManager$7;->this$0:Lcom/metamoji/forSchool/ScSchoolManager;

    iget-object v1, v1, Lcom/metamoji/forSchool/ScSchoolManager;->_lockScreen:Lcom/metamoji/forSchool/ui/ScLockScreenView;

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ui/ScLockScreenView;->show()V

    goto :goto_1

    .line 673
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/metamoji/forSchool/ScSchoolManager$7;->this$0:Lcom/metamoji/forSchool/ScSchoolManager;

    invoke-static {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->-$$Nest$mhideLockScreenView(Lcom/metamoji/forSchool/ScSchoolManager;)V

    .line 689
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/metamoji/forSchool/ScSchoolManager$7;->this$0:Lcom/metamoji/forSchool/ScSchoolManager;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/metamoji/forSchool/ScSchoolManager;->_isScreenLocked:Z

    .line 691
    iget-object v1, p0, Lcom/metamoji/forSchool/ScSchoolManager$7;->this$0:Lcom/metamoji/forSchool/ScSchoolManager;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/metamoji/forSchool/ScSchoolManager;->_isScreenLocking:Z

    .line 692
    iget-object v1, p0, Lcom/metamoji/forSchool/ScSchoolManager$7;->this$0:Lcom/metamoji/forSchool/ScSchoolManager;

    iput-boolean v2, v1, Lcom/metamoji/forSchool/ScSchoolManager;->_isScreenUnlocking:Z

    .line 695
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCollaboModeBar()Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->updateSchoolTeacherModeBtn()V

    return-void
.end method
