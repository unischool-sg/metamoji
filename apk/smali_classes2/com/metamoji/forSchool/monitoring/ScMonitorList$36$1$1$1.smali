.class Lcom/metamoji/forSchool/monitoring/ScMonitorList$36$1$1$1;
.super Ljava/lang/Object;
.source "ScMonitorList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/monitoring/ScMonitorList$36$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/metamoji/forSchool/monitoring/ScMonitorList$36$1$1;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList$36$1$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 3627
    iput-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$36$1$1$1;->this$3:Lcom/metamoji/forSchool/monitoring/ScMonitorList$36$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 3630
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$36$1$1$1;->this$3:Lcom/metamoji/forSchool/monitoring/ScMonitorList$36$1$1;

    iget-object v0, v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$36$1$1;->val$wait:Lcom/metamoji/nt/cabinet/cabinetWaitView;

    invoke-virtual {v0}, Lcom/metamoji/nt/cabinet/cabinetWaitView;->hide()V

    .line 3632
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$36$1$1$1;->this$3:Lcom/metamoji/forSchool/monitoring/ScMonitorList$36$1$1;

    iget-object v1, v1, Lcom/metamoji/forSchool/monitoring/ScMonitorList$36$1$1;->this$2:Lcom/metamoji/forSchool/monitoring/ScMonitorList$36$1;

    iget-object v1, v1, Lcom/metamoji/forSchool/monitoring/ScMonitorList$36$1;->this$1:Lcom/metamoji/forSchool/monitoring/ScMonitorList$36;

    iget-boolean v1, v1, Lcom/metamoji/forSchool/monitoring/ScMonitorList$36;->val$isGroupFinal:Z

    iget-object v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$36$1$1$1;->this$3:Lcom/metamoji/forSchool/monitoring/ScMonitorList$36$1$1;

    iget-object v2, v2, Lcom/metamoji/forSchool/monitoring/ScMonitorList$36$1$1;->this$2:Lcom/metamoji/forSchool/monitoring/ScMonitorList$36$1;

    iget-object v2, v2, Lcom/metamoji/forSchool/monitoring/ScMonitorList$36$1;->this$1:Lcom/metamoji/forSchool/monitoring/ScMonitorList$36;

    iget-object v2, v2, Lcom/metamoji/forSchool/monitoring/ScMonitorList$36;->val$layerId:Ljava/lang/String;

    .line 3633
    invoke-static {v2}, Lcom/metamoji/nt/NtPageController;->getUserOrGroupIdFromPersonalLayerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$36$1$1$1;->this$3:Lcom/metamoji/forSchool/monitoring/ScMonitorList$36$1$1;

    iget-object v3, v3, Lcom/metamoji/forSchool/monitoring/ScMonitorList$36$1$1;->this$2:Lcom/metamoji/forSchool/monitoring/ScMonitorList$36$1;

    iget-object v3, v3, Lcom/metamoji/forSchool/monitoring/ScMonitorList$36$1;->this$1:Lcom/metamoji/forSchool/monitoring/ScMonitorList$36;

    iget-object v3, v3, Lcom/metamoji/forSchool/monitoring/ScMonitorList$36;->val$layerName:Ljava/lang/String;

    const/4 v4, 0x0

    .line 3632
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/metamoji/forSchool/ScSchoolManager;->startFeaturedPersonalMode(ZLjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
