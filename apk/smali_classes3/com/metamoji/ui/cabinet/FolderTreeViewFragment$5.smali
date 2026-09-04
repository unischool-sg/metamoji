.class Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$5;
.super Ljava/lang/Object;
.source "FolderTreeViewFragment.java"

# interfaces
.implements Lcom/metamoji/ui/cabinet/TreeView$OnTreeItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->setAdapter(Lcom/metamoji/ui/cabinet/TreeView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 679
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$5;->this$0:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .line 682
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$5;->this$0:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->-$$Nest$fget_activity(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;)Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/metamoji/noteanytime/MainActivity;

    if-eqz p1, :cond_0

    .line 683
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$5;->this$0:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->-$$Nest$fget_activity(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;)Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/metamoji/noteanytime/MainActivity;

    invoke-virtual {p1}, Lcom/metamoji/noteanytime/MainActivity;->CloseContextMenu()V

    .line 685
    :cond_0
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$5;->this$0:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;

    check-cast p3, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    const/4 p4, 0x0

    invoke-static {p1, p2, p3, p4}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->-$$Nest$monItemClickCore(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;Landroid/view/View;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Z)V

    return-void
.end method
