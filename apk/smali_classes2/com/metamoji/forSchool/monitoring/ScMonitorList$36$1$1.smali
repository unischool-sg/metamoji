.class Lcom/metamoji/forSchool/monitoring/ScMonitorList$36$1$1;
.super Ljava/lang/Object;
.source "ScMonitorList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/monitoring/ScMonitorList$36$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/metamoji/forSchool/monitoring/ScMonitorList$36$1;

.field final synthetic val$wait:Lcom/metamoji/nt/cabinet/cabinetWaitView;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList$36$1;Lcom/metamoji/nt/cabinet/cabinetWaitView;)V
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

    .line 3624
    iput-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$36$1$1;->this$2:Lcom/metamoji/forSchool/monitoring/ScMonitorList$36$1;

    iput-object p2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$36$1$1;->val$wait:Lcom/metamoji/nt/cabinet/cabinetWaitView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 3627
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/forSchool/monitoring/ScMonitorList$36$1$1$1;

    invoke-direct {v1, p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$36$1$1$1;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList$36$1$1;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;J)Z

    return-void
.end method
