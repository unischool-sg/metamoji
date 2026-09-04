.class Lcom/metamoji/nt/NtNoteController$16;
.super Ljava/lang/Object;
.source "NtNoteController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtNoteController;->correctCurrentPageLayer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtNoteController;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtNoteController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 3553
    iput-object p1, p0, Lcom/metamoji/nt/NtNoteController$16;->this$0:Lcom/metamoji/nt/NtNoteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 3556
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$16;->this$0:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->updateEditLayerInfo()V

    .line 3558
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->correctPersonalMode()V

    .line 3560
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->correctFeaturedPersonalMode()V

    .line 3562
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$16;->this$0:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getFlipUnitManager()Lcom/metamoji/un/flip/UnFlipUnitManager;

    move-result-object v0

    .line 3563
    invoke-virtual {v0}, Lcom/metamoji/un/flip/UnFlipUnitManager;->updateAllFlipUnit()V

    .line 3566
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$16;->this$0:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getSurveyUnitManager()Lcom/metamoji/un/survey/UnSurveyUnitManager;

    move-result-object v0

    .line 3567
    invoke-virtual {v0}, Lcom/metamoji/un/survey/UnSurveyUnitManager;->updateAllUnit()V

    .line 3571
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    .line 3572
    invoke-static {}, Lcom/metamoji/ns/NsCollaboCommand;->processingBgTaskForLogin()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->connectStatus()Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    move-result-object v0

    sget-object v1, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->OFFLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3573
    :goto_0
    invoke-static {}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;->sharedInstance()Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;->updateOfflineEditModeInfo(Z)V

    return-void
.end method
