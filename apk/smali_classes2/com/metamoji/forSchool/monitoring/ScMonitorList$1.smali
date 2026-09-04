.class Lcom/metamoji/forSchool/monitoring/ScMonitorList$1;
.super Ljava/lang/Object;
.source "ScMonitorList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/forSchool/monitoring/ScMonitorList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 449
    iput-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$1;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 453
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$1;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    iget-object v0, v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_heldMonitorViewForLongPress:Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$1;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    iget-object v0, v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_heldMonitorViewForLongPress:Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    .line 455
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    new-instance v2, Lcom/metamoji/forSchool/monitoring/ScMonitorList$1$1;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$1$1;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList$1;Lcom/metamoji/forSchool/monitoring/ScMonitorView;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
