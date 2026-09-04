.class Lcom/metamoji/ui/cabinet/NoteListViewFragment$18;
.super Ljava/lang/Object;
.source "NoteListViewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/NoteListViewFragment;->prepareMultiSelectButton()V
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

    .line 1422
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$18;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1426
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$18;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->changeMultiSelectMode(Z)V

    .line 1427
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$18;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_multiSelectItems(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1429
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$18;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_currentDisplayedFolder(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->update(Lcom/metamoji/ui/cabinet/CabinetTreeItem;Z)V

    return-void
.end method
