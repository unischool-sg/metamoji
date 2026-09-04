.class Lcom/metamoji/forSchool/monitoring/ScMonitorList$36$1;
.super Ljava/lang/Object;
.source "ScMonitorList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/monitoring/ScMonitorList$36;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/forSchool/monitoring/ScMonitorList$36;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList$36;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 3612
    iput-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$36$1;->this$1:Lcom/metamoji/forSchool/monitoring/ScMonitorList$36;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 3615
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$36$1;->this$1:Lcom/metamoji/forSchool/monitoring/ScMonitorList$36;

    iget-boolean v0, v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$36;->val$isFeatureMode:Z

    if-eqz v0, :cond_2

    .line 3616
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->presenterUserInfo()Lcom/metamoji/ns/NsCollaboUserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3617
    iget-boolean v0, v0, Lcom/metamoji/ns/NsCollaboUserInfo;->isMyself:Z

    if-nez v0, :cond_1

    .line 3619
    :cond_0
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->schoolTeacherModePresenter()V

    .line 3622
    :cond_1
    new-instance v0, Lcom/metamoji/nt/cabinet/cabinetWaitView;

    invoke-direct {v0}, Lcom/metamoji/nt/cabinet/cabinetWaitView;-><init>()V

    .line 3623
    invoke-virtual {v0}, Lcom/metamoji/nt/cabinet/cabinetWaitView;->show()V

    .line 3624
    new-instance v1, Lcom/metamoji/forSchool/monitoring/ScMonitorList$36$1$1;

    invoke-direct {v1, p0, v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$36$1$1;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList$36$1;Lcom/metamoji/nt/cabinet/cabinetWaitView;)V

    invoke-static {v1}, Lcom/metamoji/forSchool/ScSchoolCommand;->waitTillPresenter(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3643
    :cond_2
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$36$1;->this$1:Lcom/metamoji/forSchool/monitoring/ScMonitorList$36;

    iget-boolean v1, v1, Lcom/metamoji/forSchool/monitoring/ScMonitorList$36;->val$isGroupFinal:Z

    iget-object v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$36$1;->this$1:Lcom/metamoji/forSchool/monitoring/ScMonitorList$36;

    iget-object v2, v2, Lcom/metamoji/forSchool/monitoring/ScMonitorList$36;->val$layerId:Ljava/lang/String;

    .line 3644
    invoke-static {v2}, Lcom/metamoji/nt/NtPageController;->getUserOrGroupIdFromPersonalLayerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$36$1;->this$1:Lcom/metamoji/forSchool/monitoring/ScMonitorList$36;

    iget-object v3, v3, Lcom/metamoji/forSchool/monitoring/ScMonitorList$36;->val$layerName:Ljava/lang/String;

    .line 3643
    invoke-virtual {v0, v1, v2, v3}, Lcom/metamoji/forSchool/ScSchoolManager;->startPersonalMode(ZLjava/lang/String;Ljava/lang/String;)V

    .line 3649
    :goto_0
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$36$1;->this$1:Lcom/metamoji/forSchool/monitoring/ScMonitorList$36;

    iget-object v0, v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$36;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-virtual {v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3650
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3652
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCollaboModeBar()Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;

    .line 3653
    invoke-virtual {v0}, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->closeView()V

    :cond_3
    return-void
.end method
