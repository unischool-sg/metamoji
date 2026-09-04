.class Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4$2;
.super Ljava/lang/Object;
.source "FolderTreeViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$imgView:Lcom/metamoji/ui/cabinet/TreeIconView;

.field final synthetic val$item:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

.field final synthetic val$selectedImgView:Landroid/widget/ImageView;

.field final synthetic val$type:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4;Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Lcom/metamoji/ui/cabinet/TreeIconView;Landroid/widget/ImageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
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

    .line 405
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4$2;->this$1:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4$2;->val$type:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    iput-object p3, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4$2;->val$item:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    iput-object p4, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4$2;->val$imgView:Lcom/metamoji/ui/cabinet/TreeIconView;

    iput-object p5, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4$2;->val$selectedImgView:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 408
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4$2;->this$1:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4;->this$0:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4$2;->val$type:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    iget-object v2, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4$2;->val$item:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {v2}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->-$$Nest$mgetFolderTreeIconResourceId(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 409
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    new-instance v2, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4$2$1;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4$2$1;-><init>(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4$2;Landroid/util/Pair;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method
