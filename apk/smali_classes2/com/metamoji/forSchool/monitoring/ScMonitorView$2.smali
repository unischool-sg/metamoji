.class Lcom/metamoji/forSchool/monitoring/ScMonitorView$2;
.super Ljava/util/TimerTask;
.source "ScMonitorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/monitoring/ScMonitorView;->endReceiveData(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorView;

.field final synthetic val$isPersonal:Z


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

    .line 189
    iput-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView$2;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    iput-boolean p2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView$2;->val$isPersonal:Z

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView$2;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    iget-boolean v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView$2;->val$isPersonal:Z

    invoke-static {v0, v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->-$$Nest$mhandleReceivingTimer(Lcom/metamoji/forSchool/monitoring/ScMonitorView;Z)V

    return-void
.end method
