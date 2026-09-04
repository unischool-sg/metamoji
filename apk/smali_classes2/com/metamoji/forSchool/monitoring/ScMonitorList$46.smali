.class Lcom/metamoji/forSchool/monitoring/ScMonitorList$46;
.super Ljava/lang/Object;
.source "ScMonitorList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/monitoring/ScMonitorList;->removeStudent(Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringRemoveStudentEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

.field final synthetic val$layerId:Ljava/lang/String;

.field final synthetic val$monitorView:Lcom/metamoji/forSchool/monitoring/ScMonitorView;

.field final synthetic val$pageId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;Lcom/metamoji/forSchool/monitoring/ScMonitorView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
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

    .line 4857
    iput-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$46;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    iput-object p2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$46;->val$monitorView:Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    iput-object p3, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$46;->val$pageId:Ljava/lang/String;

    iput-object p4, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$46;->val$layerId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 4860
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$46;->val$monitorView:Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->startReceiveData(Z)V

    .line 4862
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$46;->val$monitorView:Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    iget-object v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$46;->val$pageId:Ljava/lang/String;

    iget-object v3, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$46;->val$layerId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->setPageId(Ljava/lang/String;Ljava/lang/String;)V

    .line 4865
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$46;->val$monitorView:Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    invoke-virtual {v0, v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->setRevalidateTarget(Z)V

    .line 4866
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$46;->val$monitorView:Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    invoke-virtual {v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->revalidateDelay()V

    .line 4868
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$46;->val$monitorView:Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    invoke-virtual {v0, v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->endReceiveData(Z)V

    return-void
.end method
