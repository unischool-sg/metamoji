.class Lcom/metamoji/ui/cabinet/NoteListViewFragment$56;
.super Ljava/lang/Object;
.source "NoteListViewFragment.java"

# interfaces
.implements Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/NoteListViewFragment;->editNoteTitle(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

.field final synthetic val$item:Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)V
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

    .line 6580
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$56;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$56;->val$item:Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogClosed(Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 0

    if-eqz p3, :cond_0

    .line 6585
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$56;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    iget-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$56;->val$item:Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    invoke-virtual {p2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDocId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fput_selectedDocId(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Ljava/lang/String;)V

    .line 6586
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$56;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_currentDisplayedFolder(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->update(Lcom/metamoji/ui/cabinet/CabinetTreeItem;Z)V

    :cond_0
    return-void
.end method
