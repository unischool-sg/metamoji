.class Lcom/metamoji/forSchool/monitoring/ScMonitorList$PageListViewAdapter$1;
.super Ljava/lang/Object;
.source "ScMonitorList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/monitoring/ScMonitorList$PageListViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/metamoji/forSchool/monitoring/ScMonitorList$PageListViewAdapter$PageViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/forSchool/monitoring/ScMonitorList$PageListViewAdapter;

.field final synthetic val$holder:Lcom/metamoji/forSchool/monitoring/ScMonitorList$PageListViewAdapter$PageViewHolder;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList$PageListViewAdapter;Lcom/metamoji/forSchool/monitoring/ScMonitorList$PageListViewAdapter$PageViewHolder;)V
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

    .line 140
    iput-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$PageListViewAdapter$1;->this$1:Lcom/metamoji/forSchool/monitoring/ScMonitorList$PageListViewAdapter;

    iput-object p2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$PageListViewAdapter$1;->val$holder:Lcom/metamoji/forSchool/monitoring/ScMonitorList$PageListViewAdapter$PageViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 143
    iget-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$PageListViewAdapter$1;->val$holder:Lcom/metamoji/forSchool/monitoring/ScMonitorList$PageListViewAdapter$PageViewHolder;

    invoke-virtual {p1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$PageListViewAdapter$PageViewHolder;->getBindingAdapterPosition()I

    move-result p1

    .line 144
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$PageListViewAdapter$1;->this$1:Lcom/metamoji/forSchool/monitoring/ScMonitorList$PageListViewAdapter;

    iget-object v0, v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$PageListViewAdapter;->m_pageIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$PageListViewAdapter$1;->this$1:Lcom/metamoji/forSchool/monitoring/ScMonitorList$PageListViewAdapter;

    iget-object v0, v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$PageListViewAdapter;->m_pageIds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 148
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$PageListViewAdapter$1;->this$1:Lcom/metamoji/forSchool/monitoring/ScMonitorList$PageListViewAdapter;

    invoke-virtual {v0, p1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$PageListViewAdapter;->onPageTapped(Ljava/lang/String;)V

    return-void
.end method
