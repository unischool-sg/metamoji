.class Lcom/metamoji/forSchool/monitoring/ScMonitorList$25$1;
.super Ljava/lang/Object;
.source "ScMonitorList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/monitoring/ScMonitorList$25;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/forSchool/monitoring/ScMonitorList$25;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList$25;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2710
    iput-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$25$1;->this$1:Lcom/metamoji/forSchool/monitoring/ScMonitorList$25;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2713
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$25$1;->this$1:Lcom/metamoji/forSchool/monitoring/ScMonitorList$25;

    iget-object v0, v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$25;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-static {v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$fgetm_monitors(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)Lcom/metamoji/forSchool/monitoring/ScMonitorGridView;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$25$1;->this$1:Lcom/metamoji/forSchool/monitoring/ScMonitorList$25;

    iget-object v1, v1, Lcom/metamoji/forSchool/monitoring/ScMonitorList$25;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-static {v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$fgetm_pinchFocusMonitorViewIndex(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorGridView;->setSelection(I)V

    .line 2714
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$25$1;->this$1:Lcom/metamoji/forSchool/monitoring/ScMonitorList$25;

    iget-object v0, v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$25;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-static {v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$mupdateMonitorSizeWithAnimation(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)V

    return-void
.end method
