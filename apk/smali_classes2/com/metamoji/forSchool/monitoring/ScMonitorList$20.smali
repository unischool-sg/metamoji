.class Lcom/metamoji/forSchool/monitoring/ScMonitorList$20;
.super Ljava/lang/Object;
.source "ScMonitorList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/monitoring/ScMonitorList;->submitRevalidateMonitorViewToExecutor(Ljava/util/concurrent/ExecutorService;Lcom/metamoji/forSchool/monitoring/ScMonitorView;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

.field final synthetic val$doForce:Z

.field final synthetic val$monitorView:Lcom/metamoji/forSchool/monitoring/ScMonitorView;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;Lcom/metamoji/forSchool/monitoring/ScMonitorView;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 2264
    iput-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$20;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    iput-object p2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$20;->val$monitorView:Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    iput-boolean p3, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$20;->val$doForce:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2268
    :try_start_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/forSchool/monitoring/ScMonitorList$20$1;

    invoke-direct {v1, p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$20$1;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList$20;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
