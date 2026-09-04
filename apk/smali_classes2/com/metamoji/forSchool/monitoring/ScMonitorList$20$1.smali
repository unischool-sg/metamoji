.class Lcom/metamoji/forSchool/monitoring/ScMonitorList$20$1;
.super Ljava/lang/Object;
.source "ScMonitorList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/monitoring/ScMonitorList$20;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/forSchool/monitoring/ScMonitorList$20;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList$20;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2268
    iput-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$20$1;->this$1:Lcom/metamoji/forSchool/monitoring/ScMonitorList$20;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2271
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$20$1;->this$1:Lcom/metamoji/forSchool/monitoring/ScMonitorList$20;

    iget-object v0, v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$20;->val$monitorView:Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$20$1;->this$1:Lcom/metamoji/forSchool/monitoring/ScMonitorList$20;

    iget-boolean v1, v1, Lcom/metamoji/forSchool/monitoring/ScMonitorList$20;->val$doForce:Z

    invoke-virtual {v0, v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->revalidate(Z)V

    return-void
.end method
