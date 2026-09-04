.class Lcom/metamoji/forSchool/monitoring/ScMonitorList$55;
.super Ljava/lang/Object;
.source "ScMonitorList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/monitoring/ScMonitorList;->updateHiddenStudentName(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

.field final synthetic val$value:Z


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;Z)V
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

    .line 5164
    iput-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$55;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    iput-boolean p2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$55;->val$value:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 5167
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$55;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    iget-boolean v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$55;->val$value:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$fputm_visibleStudentName(Lcom/metamoji/forSchool/monitoring/ScMonitorList;Z)V

    .line 5169
    invoke-static {}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->sharedInstance()Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;

    move-result-object v0

    iput-boolean v2, v0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->resetMonitoringStateWhenClose:Z

    .line 5171
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$55;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-virtual {v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->updateVisibleStudentNameBtnCaption()V

    .line 5173
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$55;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-static {v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$fgetm_visibleStudentName(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->setVisibleNameLabel(Z)V

    return-void
.end method
