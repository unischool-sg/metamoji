.class Lcom/metamoji/ui/dialog/ScMergeNoteDialog$1;
.super Ljava/lang/Object;
.source "ScMergeNoteDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/ScMergeNoteDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/ScMergeNoteDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/ScMergeNoteDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 189
    iput-object p1, p0, Lcom/metamoji/ui/dialog/ScMergeNoteDialog$1;->this$0:Lcom/metamoji/ui/dialog/ScMergeNoteDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 192
    iget-object p1, p0, Lcom/metamoji/ui/dialog/ScMergeNoteDialog$1;->this$0:Lcom/metamoji/ui/dialog/ScMergeNoteDialog;

    iget-object p1, p1, Lcom/metamoji/ui/dialog/ScMergeNoteDialog;->m_noteListView:Lcom/metamoji/forSchool/ui/ScListView;

    invoke-virtual {p1}, Lcom/metamoji/forSchool/ui/ScListView;->getSortable()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 196
    :cond_0
    iget-object p1, p0, Lcom/metamoji/ui/dialog/ScMergeNoteDialog$1;->this$0:Lcom/metamoji/ui/dialog/ScMergeNoteDialog;

    iget-object p1, p1, Lcom/metamoji/ui/dialog/ScMergeNoteDialog;->m_noteListView:Lcom/metamoji/forSchool/ui/ScListView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/metamoji/forSchool/ui/ScListView;->startDrag(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
