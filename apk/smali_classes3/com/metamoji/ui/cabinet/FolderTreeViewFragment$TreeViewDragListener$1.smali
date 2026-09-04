.class Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$TreeViewDragListener$1;
.super Ljava/lang/Object;
.source "FolderTreeViewFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$TreeViewDragListener;->onStopDrag(Ljava/lang/String;Ljava/util/ArrayList;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$TreeViewDragListener;

.field final synthetic val$docIds:Ljava/util/List;

.field final synthetic val$driveId:Ljava/lang/String;

.field final synthetic val$fromFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$TreeViewDragListener;Ljava/lang/String;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Ljava/util/List;)V
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

    .line 1874
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$TreeViewDragListener$1;->this$1:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$TreeViewDragListener;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$TreeViewDragListener$1;->val$driveId:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$TreeViewDragListener$1;->val$fromFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    iput-object p4, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$TreeViewDragListener$1;->val$docIds:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1877
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$TreeViewDragListener$1;->val$driveId:Ljava/lang/String;

    iget-object p2, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$TreeViewDragListener$1;->val$fromFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {p2}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getAbsPath()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$TreeViewDragListener$1;->val$docIds:Ljava/util/List;

    invoke-static {p1, p2, v0}, Lcom/metamoji/dvm/DvmUtil;->moveDocumentsToTrash(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 1878
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$TreeViewDragListener$1;->this$1:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$TreeViewDragListener;

    iget-object p1, p1, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$TreeViewDragListener;->this$0:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    sget p2, Lcom/metamoji/noteanytime/R$id;->cabinet_node_view:I

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    if-eqz p1, :cond_0

    .line 1880
    invoke-static {}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->getCurrentFolder()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/metamoji/ui/cabinet/CabinetNodeViewFragment;->update(Lcom/metamoji/ui/cabinet/CabinetTreeItem;Z)V

    :cond_0
    return-void
.end method
