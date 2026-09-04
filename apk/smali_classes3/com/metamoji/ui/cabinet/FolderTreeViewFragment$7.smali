.class Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$7;
.super Ljava/lang/Object;
.source "FolderTreeViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->onItemClickCore(Landroid/view/View;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;

.field final synthetic val$cabinet:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

.field final synthetic val$folderInfo:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

.field final synthetic val$fromLongClick:Z


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;Lcom/metamoji/ui/cabinet/CabinetTreeItem;ZLcom/metamoji/ui/cabinet/NoteListViewFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 751
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$7;->this$0:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$7;->val$folderInfo:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    iput-boolean p3, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$7;->val$fromLongClick:Z

    iput-object p4, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$7;->val$cabinet:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 754
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$7;->this$0:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->-$$Nest$fget_folderClickListener(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;)Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$OnFolderClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$7;->val$folderInfo:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    iget-boolean v2, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$7;->val$fromLongClick:Z

    invoke-interface {v0, v1, v2}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$OnFolderClickListener;->onFolderItemClickEx(Lcom/metamoji/ui/cabinet/CabinetTreeItem;Z)V

    .line 755
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$7;->val$cabinet:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    if-eqz v0, :cond_0

    .line 756
    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->endWaiting()V

    :cond_0
    return-void
.end method
