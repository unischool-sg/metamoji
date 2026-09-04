.class Lcom/metamoji/forSchool/monitoring/ScMonitorList$3;
.super Ljava/lang/Object;
.source "ScMonitorList.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/monitoring/ScMonitorList;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

.field final synthetic val$finalVisibleMonitorViews:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;Ljava/util/ArrayList;)V
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

    .line 1008
    iput-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$3;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    iput-object p2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$3;->val$finalVisibleMonitorViews:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .line 1011
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$3;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-static {v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$fgetm_monitors(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)Lcom/metamoji/forSchool/monitoring/ScMonitorGridView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorGridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$3;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-static {v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$fgetm_globalLayoutListener(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1013
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/forSchool/monitoring/ScMonitorList$3$1;

    invoke-direct {v1, p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$3$1;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList$3;)V

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;J)Z

    .line 1113
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$3;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$fputm_bInitialized(Lcom/metamoji/forSchool/monitoring/ScMonitorList;Z)V

    return-void
.end method
