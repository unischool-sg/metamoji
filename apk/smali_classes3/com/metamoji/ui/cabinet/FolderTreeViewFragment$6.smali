.class Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$6;
.super Ljava/lang/Object;
.source "FolderTreeViewFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


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

    .line 689
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$6;->this$0:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 692
    invoke-static {}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->-$$Nest$sfget_adapter()Lcom/metamoji/ui/cabinet/TreeAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/metamoji/ui/cabinet/TreeAdapter;->getTarget(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    .line 693
    invoke-static {}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->getCurrentFolder()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 p4, 0x1

    if-nez p3, :cond_0

    .line 695
    iget-object p3, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$6;->this$0:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;

    invoke-static {p3, p2, p1, p4}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->-$$Nest$monItemClickCore(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;Landroid/view/View;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Z)V

    .line 697
    :cond_0
    iget-object p3, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$6;->this$0:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;

    invoke-static {p3, p2, p1}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->-$$Nest$mshowItemContextMenu(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;Landroid/view/View;Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V

    return p4
.end method
