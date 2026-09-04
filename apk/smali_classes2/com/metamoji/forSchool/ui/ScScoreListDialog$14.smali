.class Lcom/metamoji/forSchool/ui/ScScoreListDialog$14;
.super Ljava/lang/Object;
.source "ScScoreListDialog.java"

# interfaces
.implements Lcom/metamoji/forSchool/ui/UiHeaderListView$IHeaderListViewSortAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/ui/ScScoreListDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/forSchool/ui/ScScoreListDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/ui/ScScoreListDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 502
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$14;->this$0:Lcom/metamoji/forSchool/ui/ScScoreListDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sort(I)V
    .locals 2

    .line 506
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$14;->this$0:Lcom/metamoji/forSchool/ui/ScScoreListDialog;

    iget v0, v0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_sortColumnIndex:I

    .line 509
    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$14;->this$0:Lcom/metamoji/forSchool/ui/ScScoreListDialog;

    if-ne v0, p1, :cond_0

    .line 507
    iget-boolean p1, v1, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_sortIsDesending:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, v1, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_sortIsDesending:Z

    goto :goto_0

    .line 509
    :cond_0
    iput p1, v1, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_sortColumnIndex:I

    .line 512
    :goto_0
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$14;->this$0:Lcom/metamoji/forSchool/ui/ScScoreListDialog;

    iget-object p1, p1, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_listView:Lcom/metamoji/forSchool/ui/UiHeaderListView;

    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$14;->this$0:Lcom/metamoji/forSchool/ui/ScScoreListDialog;

    iget v0, v0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_sortColumnIndex:I

    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$14;->this$0:Lcom/metamoji/forSchool/ui/ScScoreListDialog;

    iget-boolean v1, v1, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_sortIsDesending:Z

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/forSchool/ui/UiHeaderListView;->setSortColumnIndex(IZ)V

    .line 513
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$14;->this$0:Lcom/metamoji/forSchool/ui/ScScoreListDialog;

    invoke-virtual {p1}, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->sortOriginalDataArray()V

    .line 514
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$14;->this$0:Lcom/metamoji/forSchool/ui/ScScoreListDialog;

    iget-object p1, p1, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_listView:Lcom/metamoji/forSchool/ui/UiHeaderListView;

    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$14;->this$0:Lcom/metamoji/forSchool/ui/ScScoreListDialog;

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->getStringRowDataArray()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/forSchool/ui/UiHeaderListView;->setDataArray(Ljava/util/List;)V

    return-void
.end method
