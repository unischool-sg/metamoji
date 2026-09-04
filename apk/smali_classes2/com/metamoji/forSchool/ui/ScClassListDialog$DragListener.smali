.class Lcom/metamoji/forSchool/ui/ScClassListDialog$DragListener;
.super Lcom/metamoji/ui/cabinet/SimpleDragListener;
.source "ScClassListDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/forSchool/ui/ScClassListDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DragListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/forSchool/ui/ScClassListDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/ui/ScClassListDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 81
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog$DragListener;->this$0:Lcom/metamoji/forSchool/ui/ScClassListDialog;

    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/SimpleDragListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartDrag(I)I
    .locals 0

    return p1
.end method

.method public onStopDrag(IIII)Z
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog$DragListener;->this$0:Lcom/metamoji/forSchool/ui/ScClassListDialog;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScClassListDialog;->m_listDataAdapter:Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter;

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter;->getCount()I

    move-result v0

    if-gez p2, :cond_1

    if-gez p4, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 p2, v0, -0x1

    :cond_1
    :goto_0
    if-lt p2, v0, :cond_2

    add-int/lit8 p2, v0, -0x1

    .line 104
    :cond_2
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog$DragListener;->this$0:Lcom/metamoji/forSchool/ui/ScClassListDialog;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScClassListDialog;->m_listDataAdapter:Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter;

    invoke-virtual {v0, p1}, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListItemData;

    .line 105
    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog$DragListener;->this$0:Lcom/metamoji/forSchool/ui/ScClassListDialog;

    iget-object v1, v1, Lcom/metamoji/forSchool/ui/ScClassListDialog;->m_listDataAdapter:Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter;

    invoke-virtual {v1, v0}, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter;->remove(Ljava/lang/Object;)V

    .line 106
    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog$DragListener;->this$0:Lcom/metamoji/forSchool/ui/ScClassListDialog;

    iget-object v1, v1, Lcom/metamoji/forSchool/ui/ScClassListDialog;->m_listDataAdapter:Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter;

    invoke-virtual {v1, v0, p2}, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter;->insert(Ljava/lang/Object;I)V

    .line 107
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog$DragListener;->this$0:Lcom/metamoji/forSchool/ui/ScClassListDialog;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScClassListDialog;->m_listDataAdapter:Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter;

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter;->notifyDataSetChanged()V

    .line 110
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog$DragListener;->this$0:Lcom/metamoji/forSchool/ui/ScClassListDialog;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScClassListDialog;->m_listView:Lcom/metamoji/forSchool/ui/ScListView;

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ui/ScListView;->invalidateViews()V

    .line 115
    invoke-super {p0, p1, p2, p3, p4}, Lcom/metamoji/ui/cabinet/SimpleDragListener;->onStopDrag(IIII)Z

    move-result p1

    return p1
.end method
