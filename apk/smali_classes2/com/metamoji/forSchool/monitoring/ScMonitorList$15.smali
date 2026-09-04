.class Lcom/metamoji/forSchool/monitoring/ScMonitorList$15;
.super Ljava/lang/Object;
.source "ScMonitorList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/monitoring/ScMonitorList;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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

    .line 1358
    iput-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$15;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1361
    invoke-static {}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->sharedInstance()Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;

    move-result-object p1

    invoke-static {}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->sharedInstance()Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->isPageListOpened:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p1, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->isPageListOpened:Z

    .line 1362
    iget-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$15;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-static {p1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$fgetm_pageListView(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getVisibility()I

    move-result p1

    .line 1365
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$15;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    if-nez p1, :cond_0

    .line 1363
    invoke-static {v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$fgetm_pageListView(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    goto :goto_0

    .line 1365
    :cond_0
    invoke-static {v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$fgetm_pageListView(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 1368
    :goto_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$15$1;

    invoke-direct {v0, p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$15$1;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList$15;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;J)Z

    return-void
.end method
