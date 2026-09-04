.class Lcom/metamoji/ui/cabinet/NoteListViewFragment$35;
.super Ljava/lang/Object;
.source "NoteListViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/NoteListViewFragment;->updateNoteListView(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

.field final synthetic val$item:Lcom/metamoji/ui/cabinet/CabinetTreeItem;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V
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

    .line 4150
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$35;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$35;->val$item:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 4153
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$35;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$35;->val$item:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-static {v0, v1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$mgetItemList(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Lcom/metamoji/ui/cabinet/CabinetTreeItem;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fput_itemList(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Ljava/util/ArrayList;)V

    .line 4154
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$35;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$35;->val$item:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->updateNoteListViewSub(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V

    .line 4155
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$35;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->m_receiver:Ljava/lang/Runnable;

    return-void
.end method
