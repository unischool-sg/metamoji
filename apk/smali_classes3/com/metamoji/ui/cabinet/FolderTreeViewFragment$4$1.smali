.class Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4$1;
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

    .line 375
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4$1;->this$1:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4$1;->val$item:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 378
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4$1;->this$1:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4;

    iget-object p1, p1, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4;->this$0:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4$1;->val$item:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-static {p1, v0}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->-$$Nest$monClickArrowView(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V

    return-void
.end method
