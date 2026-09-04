.class Lcom/metamoji/ui/cabinet/NoteListViewFragment$2;
.super Ljava/lang/Object;
.source "NoteListViewFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/NoteListViewFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 620
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$2;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 623
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$2;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_detailView(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/DetailGridView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/DetailGridView;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fputthisViewWidth(Lcom/metamoji/ui/cabinet/NoteListViewFragment;I)V

    .line 624
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$2;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_detailView(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/DetailGridView;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$2;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_detailView(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/DetailGridView;

    move-result-object v1

    iget v1, v1, Lcom/metamoji/ui/cabinet/DetailGridView;->_columns:I

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/cabinet/DetailGridView;->setNumColumns(I)V

    return-void
.end method
