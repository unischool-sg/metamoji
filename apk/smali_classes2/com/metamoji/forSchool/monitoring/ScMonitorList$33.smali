.class Lcom/metamoji/forSchool/monitoring/ScMonitorList$33;
.super Ljava/lang/Object;
.source "ScMonitorList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/monitoring/ScMonitorList;->updateStatusFrameColor(Lcom/metamoji/forSchool/monitoring/ScMonitorView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

.field final synthetic val$monitorView:Lcom/metamoji/forSchool/monitoring/ScMonitorView;

.field final synthetic val$status:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;Lcom/metamoji/forSchool/monitoring/ScMonitorView;Ljava/lang/String;)V
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

    .line 3012
    iput-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$33;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    iput-object p2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$33;->val$monitorView:Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    iput-object p3, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$33;->val$status:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 3015
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$33;->val$monitorView:Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$33;->val$status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->setStatus(Ljava/lang/String;)V

    .line 3018
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$33;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-static {v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$mupdateStatusNum(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)V

    .line 3020
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$33;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-static {v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$fgetm_monitors(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)Lcom/metamoji/forSchool/monitoring/ScMonitorGridView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorGridView;->getFirstVisiblePosition()I

    move-result v0

    .line 3021
    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$33;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-static {v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$fgetm_monitorViewArrayAdapter(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$33;->val$monitorView:Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    invoke-virtual {v1, v2}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v1

    .line 3022
    iget-object v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$33;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-static {v2}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$fgetm_monitors(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)Lcom/metamoji/forSchool/monitoring/ScMonitorGridView;

    move-result-object v2

    sub-int v0, v1, v0

    invoke-virtual {v2, v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3023
    iget-object v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$33;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-static {v2}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$fgetm_monitorViewArrayAdapter(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$33;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-static {v3}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$fgetm_monitors(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)Lcom/metamoji/forSchool/monitoring/ScMonitorGridView;

    move-result-object v3

    invoke-virtual {v2, v1, v0, v3}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method
