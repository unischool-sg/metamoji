.class Lcom/metamoji/forSchool/monitoring/ScMonitorList$1$1;
.super Ljava/lang/Object;
.source "ScMonitorList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/monitoring/ScMonitorList$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/forSchool/monitoring/ScMonitorList$1;

.field final synthetic val$monitorView:Lcom/metamoji/forSchool/monitoring/ScMonitorView;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList$1;Lcom/metamoji/forSchool/monitoring/ScMonitorView;)V
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

    .line 455
    iput-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$1$1;->this$1:Lcom/metamoji/forSchool/monitoring/ScMonitorList$1;

    iput-object p2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$1$1;->val$monitorView:Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 458
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$1$1;->this$1:Lcom/metamoji/forSchool/monitoring/ScMonitorList$1;

    iget-object v0, v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$1;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-virtual {v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->longPressEnd()V

    .line 459
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$1$1;->this$1:Lcom/metamoji/forSchool/monitoring/ScMonitorList$1;

    iget-object v0, v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$1;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-static {v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$mdragCancel(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)V

    .line 460
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$1$1;->this$1:Lcom/metamoji/forSchool/monitoring/ScMonitorList$1;

    iget-object v0, v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$1;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$1$1;->val$monitorView:Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    iget-object v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$1$1;->this$1:Lcom/metamoji/forSchool/monitoring/ScMonitorList$1;

    iget-object v2, v2, Lcom/metamoji/forSchool/monitoring/ScMonitorList$1;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    iget v2, v2, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_longPressX:F

    iget-object v3, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$1$1;->this$1:Lcom/metamoji/forSchool/monitoring/ScMonitorList$1;

    iget-object v3, v3, Lcom/metamoji/forSchool/monitoring/ScMonitorList$1;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    iget v3, v3, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_longPressY:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->monitorLongLongPress(Lcom/metamoji/forSchool/monitoring/ScMonitorView;FF)V

    return-void
.end method
