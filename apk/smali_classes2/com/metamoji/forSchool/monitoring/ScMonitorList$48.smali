.class Lcom/metamoji/forSchool/monitoring/ScMonitorList$48;
.super Ljava/lang/Object;
.source "ScMonitorList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/monitoring/ScMonitorList;->pageRemoved(Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringPageRemovedEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

.field final synthetic val$event:Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringPageRemovedEvent;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringPageRemovedEvent;)V
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

    .line 4928
    iput-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$48;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    iput-object p2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$48;->val$event:Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringPageRemovedEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 4931
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$48;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-static {v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$fgetm_pageListViewAdapter(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)Lcom/metamoji/forSchool/monitoring/ScMonitorList$PageListViewAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$48;->val$event:Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringPageRemovedEvent;

    iget-object v1, v1, Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringPageRemovedEvent;->pageIds:Ljava/util/List;

    iput-object v1, v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$PageListViewAdapter;->m_pageIds:Ljava/util/List;

    .line 4932
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$48;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->setMonitorViewThumbnailCache(Landroid/graphics/Bitmap;)V

    .line 4933
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$48;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-static {v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$fgetm_pageListViewAdapter(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)Lcom/metamoji/forSchool/monitoring/ScMonitorList$PageListViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$PageListViewAdapter;->notifyDataSetChanged()V

    .line 4936
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$48;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$mcurrentPageChanged(Lcom/metamoji/forSchool/monitoring/ScMonitorList;ZZ)V

    return-void
.end method
