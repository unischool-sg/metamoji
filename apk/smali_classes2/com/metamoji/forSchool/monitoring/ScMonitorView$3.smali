.class Lcom/metamoji/forSchool/monitoring/ScMonitorView$3;
.super Ljava/lang/Object;
.source "ScMonitorView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/monitoring/ScMonitorView;->handleReceivingTimer(Z)V
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 220
    iput-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView$3;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    iput-boolean p2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView$3;->val$isPersonal:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 223
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/forSchool/monitoring/ScMonitorView$3$1;

    invoke-direct {v1, p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorView$3$1;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorView$3;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;)Z

    return-void
.end method
