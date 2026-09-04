.class Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4$5;
.super Ljava/lang/Object;
.source "FolderTreeViewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 526
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4$5;->this$1:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4$5;->val$item:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 529
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4$5;->this$1:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4;->this$0:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->-$$Nest$fget_activity(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;)Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/metamoji/noteanytime/MainActivity;

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4$5;->this$1:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4;->this$0:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->-$$Nest$fget_activity(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;)Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/metamoji/noteanytime/MainActivity;

    invoke-virtual {v0}, Lcom/metamoji/noteanytime/MainActivity;->CloseContextMenu()V

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4$5;->this$1:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4;->this$0:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4$5;->val$item:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->-$$Nest$monItemClickCore(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;Landroid/view/View;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Z)V

    return-void
.end method
