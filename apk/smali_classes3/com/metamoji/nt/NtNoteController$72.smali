.class Lcom/metamoji/nt/NtNoteController$72;
.super Ljava/lang/Object;
.source "NtNoteController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtNoteController;->updatePageStatusForSchool(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtNoteController;

.field final synthetic val$currentPage:Lcom/metamoji/nt/NtPageController;

.field final synthetic val$directionManager:Lcom/metamoji/ns/direction/NsDirectionManager;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/ns/direction/NsDirectionManager;Lcom/metamoji/nt/NtPageController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 10441
    iput-object p1, p0, Lcom/metamoji/nt/NtNoteController$72;->this$0:Lcom/metamoji/nt/NtNoteController;

    iput-object p2, p0, Lcom/metamoji/nt/NtNoteController$72;->val$directionManager:Lcom/metamoji/ns/direction/NsDirectionManager;

    iput-object p3, p0, Lcom/metamoji/nt/NtNoteController$72;->val$currentPage:Lcom/metamoji/nt/NtPageController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 10445
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->updateSchoolUserMode()V

    .line 10447
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$72;->this$0:Lcom/metamoji/nt/NtNoteController;

    invoke-static {v0}, Lcom/metamoji/nt/NtNoteController;->-$$Nest$fgetm_targetLayerType(Lcom/metamoji/nt/NtNoteController;)Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/nt/NtNoteController$72;->this$0:Lcom/metamoji/nt/NtNoteController;

    invoke-static {v2}, Lcom/metamoji/nt/NtNoteController;->-$$Nest$fgetm_targetPersonalLayerInfo(Lcom/metamoji/nt/NtNoteController;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtNoteController;->changeTargetLayer(Lcom/metamoji/nt/NtNoteController$TargetLayerType;Ljava/util/Map;)V

    .line 10449
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$72;->val$directionManager:Lcom/metamoji/ns/direction/NsDirectionManager;

    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController$72;->val$currentPage:Lcom/metamoji/nt/NtPageController;

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/direction/NsDirectionManager;->attachBoothForSchool(Lcom/metamoji/nt/NtPageController;)V

    .line 10452
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$72;->this$0:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->pageIds()Ljava/util/List;

    move-result-object v0

    .line 10453
    invoke-static {}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->sharedInstance()Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/nt/NtNoteController$72;->val$currentPage:Lcom/metamoji/nt/NtPageController;

    invoke-virtual {v2}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->currentPageChanged(Ljava/util/List;Ljava/lang/String;Z)V

    .line 10458
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->updateScoreInfoViewStatus()V

    return-void
.end method
