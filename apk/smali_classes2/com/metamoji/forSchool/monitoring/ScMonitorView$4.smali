.class Lcom/metamoji/forSchool/monitoring/ScMonitorView$4;
.super Ljava/util/TimerTask;
.source "ScMonitorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/monitoring/ScMonitorView;->revalidateDelay(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorView;

.field final synthetic val$doForce:Z


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/monitoring/ScMonitorView;Z)V
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

    .line 270
    iput-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView$4;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    iput-boolean p2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView$4;->val$doForce:Z

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 273
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/forSchool/monitoring/ScMonitorView$4$1;

    invoke-direct {v1, p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorView$4$1;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorView$4;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method
