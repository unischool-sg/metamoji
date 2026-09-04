.class Lcom/metamoji/forSchool/monitoring/ScMonitorList$21$1;
.super Ljava/lang/Object;
.source "ScMonitorList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/monitoring/ScMonitorList$21;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/forSchool/monitoring/ScMonitorList$21;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList$21;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2284
    iput-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$21$1;->this$1:Lcom/metamoji/forSchool/monitoring/ScMonitorList$21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 2287
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$21$1;->this$1:Lcom/metamoji/forSchool/monitoring/ScMonitorList$21;

    iget-object v0, v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$21;->val$monitorView:Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    invoke-virtual {v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->releaseImage()V

    return-void
.end method
