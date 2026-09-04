.class Lcom/metamoji/ui/cabinet/NoteListViewFragment$16;
.super Ljava/lang/Object;
.source "NoteListViewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/NoteListViewFragment;->preparePagingButton()V
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

    .line 1347
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$16;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1350
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$16;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fput_selectedDocId(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Ljava/lang/String;)V

    .line 1351
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$16;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fgetm_nowPage(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fputm_nowPage(Lcom/metamoji/ui/cabinet/NoteListViewFragment;I)V

    .line 1352
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$16;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->getCurrentFolder()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->updateNoteListView(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V

    return-void
.end method
