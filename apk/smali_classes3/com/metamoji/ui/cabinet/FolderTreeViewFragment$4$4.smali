.class Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4$4;
.super Ljava/lang/Object;
.source "FolderTreeViewFragment.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4;->getTreeItemView(Lcom/metamoji/ui/cabinet/CabinetTreeItem;ZI)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4;

.field final synthetic val$item:Lcom/metamoji/ui/cabinet/CabinetTreeItem;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4;Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V
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

    .line 514
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4$4;->this$1:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4$4;->val$item:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    .line 517
    invoke-static {}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->getCurrentFolder()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4$4;->val$item:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4$4;->this$1:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4;->this$0:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;

    iget-object v2, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4$4;->val$item:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-static {v0, p1, v2, v1}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->-$$Nest$monItemClickCore(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;Landroid/view/View;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Z)V

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4$4;->this$1:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4;->this$0:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;

    iget-object v2, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4$4;->val$item:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-static {v0, p1, v2}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->-$$Nest$mshowItemContextMenu(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;Landroid/view/View;Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V

    return v1
.end method
