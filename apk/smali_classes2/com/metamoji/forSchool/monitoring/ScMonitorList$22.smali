.class Lcom/metamoji/forSchool/monitoring/ScMonitorList$22;
.super Ljava/lang/Object;
.source "ScMonitorList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/monitoring/ScMonitorList;->updateMonitorSize(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

.field final synthetic val$monitoringManager:Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;)V
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

    .line 2347
    iput-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$22;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    iput-object p2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$22;->val$monitoringManager:Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2350
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$22;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-static {v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$fgetm_scrollView(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)Lcom/metamoji/forSchool/monitoring/ScMonitorScrollView;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$22;->val$monitoringManager:Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;

    iget-wide v1, v1, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->offsetY:D

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorScrollView;->setScrollY(I)V

    .line 2351
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$22;->val$monitoringManager:Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->offsetY:D

    return-void
.end method
