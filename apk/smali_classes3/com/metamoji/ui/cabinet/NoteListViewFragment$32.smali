.class Lcom/metamoji/ui/cabinet/NoteListViewFragment$32;
.super Ljava/lang/Object;
.source "NoteListViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/NoteListViewFragment;->startLongPressTimer()V
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

    .line 3679
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$32;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 3682
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$32;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_currentItem(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$32;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_currentView(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3683
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$32;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_currentItem(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_type(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)I

    move-result v0

    .line 3686
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$32;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    if-ne v1, v0, :cond_0

    .line 3684
    invoke-static {v2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_currentView(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$32;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v3}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_currentItem(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$mshowItemContextMenu(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Landroid/view/View;Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)V

    goto :goto_0

    .line 3686
    :cond_0
    invoke-static {v2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_currentItem(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_type(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)I

    move-result v0

    const/4 v2, 0x2

    if-ne v2, v0, :cond_1

    .line 3687
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$32;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_currentView(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$32;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v3}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_currentItem(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$mshowItemContextMenu(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Landroid/view/View;Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)V

    .line 3690
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$32;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v0, v1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fput_longPressFlg(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Z)V

    return-void
.end method
