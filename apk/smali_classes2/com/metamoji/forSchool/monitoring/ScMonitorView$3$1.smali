.class Lcom/metamoji/forSchool/monitoring/ScMonitorView$3$1;
.super Ljava/lang/Object;
.source "ScMonitorView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/monitoring/ScMonitorView$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/forSchool/monitoring/ScMonitorView$3;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/monitoring/ScMonitorView$3;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 223
    iput-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView$3$1;->this$1:Lcom/metamoji/forSchool/monitoring/ScMonitorView$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView$3$1;->this$1:Lcom/metamoji/forSchool/monitoring/ScMonitorView$3;

    iget-object v0, v0, Lcom/metamoji/forSchool/monitoring/ScMonitorView$3;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView$3$1;->this$1:Lcom/metamoji/forSchool/monitoring/ScMonitorView$3;

    iget-boolean v1, v1, Lcom/metamoji/forSchool/monitoring/ScMonitorView$3;->val$isPersonal:Z

    invoke-virtual {v0, v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->setRevalidateTarget(Z)V

    .line 227
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView$3$1;->this$1:Lcom/metamoji/forSchool/monitoring/ScMonitorView$3;

    iget-object v0, v0, Lcom/metamoji/forSchool/monitoring/ScMonitorView$3;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    invoke-virtual {v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->revalidate()V

    return-void
.end method
