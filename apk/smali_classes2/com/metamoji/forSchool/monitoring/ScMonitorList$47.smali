.class Lcom/metamoji/forSchool/monitoring/ScMonitorList$47;
.super Ljava/lang/Object;
.source "ScMonitorList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/monitoring/ScMonitorList;->studentViewingPageChanged(Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringStudentViewingPageChangedEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

.field final synthetic val$event:Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringStudentViewingPageChangedEvent;

.field final synthetic val$finalLayerId:Ljava/lang/String;

.field final synthetic val$monitorView:Lcom/metamoji/forSchool/monitoring/ScMonitorView;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;Lcom/metamoji/forSchool/monitoring/ScMonitorView;Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringStudentViewingPageChangedEvent;Ljava/lang/String;)V
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

    .line 4901
    iput-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$47;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    iput-object p2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$47;->val$monitorView:Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    iput-object p3, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$47;->val$event:Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringStudentViewingPageChangedEvent;

    iput-object p4, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$47;->val$finalLayerId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 4904
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$47;->val$monitorView:Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->startReceiveData(Z)V

    .line 4906
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$47;->val$monitorView:Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    iget-object v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$47;->val$event:Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringStudentViewingPageChangedEvent;

    iget-object v2, v2, Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringStudentViewingPageChangedEvent;->pageId:Ljava/lang/String;

    iget-object v3, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$47;->val$finalLayerId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->setPageId(Ljava/lang/String;Ljava/lang/String;)V

    .line 4909
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$47;->val$monitorView:Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    invoke-virtual {v0, v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->setRevalidateTarget(Z)V

    .line 4910
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$47;->val$monitorView:Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    invoke-virtual {v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->revalidateDelay()V

    .line 4912
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$47;->val$monitorView:Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    invoke-virtual {v0, v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->endReceiveData(Z)V

    return-void
.end method
