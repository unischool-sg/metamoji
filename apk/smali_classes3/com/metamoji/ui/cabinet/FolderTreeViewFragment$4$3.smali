.class Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4$3;
.super Landroid/widget/FrameLayout;
.source "FolderTreeViewFragment.java"


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

.field final synthetic val$position:I

.field final synthetic val$type:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4;Landroid/content/Context;Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;Lcom/metamoji/ui/cabinet/CabinetTreeItem;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
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

    .line 448
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4$3;->this$1:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4;

    iput-object p3, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4$3;->val$type:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    iput-object p4, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4$3;->val$item:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    iput p5, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4$3;->val$position:I

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 452
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4$3;->val$type:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->ALL_NOTE:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4$3;->val$type:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->LOCAL_ROOT:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4$3;->val$type:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->RECYCLE_BIN:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4$3;->val$type:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->TEMPLATE:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4$3;->val$type:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->SHARED_DRIVE:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4$3;->val$type:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->SHARED_DRIVE_OWN:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4$3;->val$type:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->SHARED_DRIVE_PARENT:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4$3;->val$type:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->CRBOX:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4$3;->val$type:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->CRBOX_CLASS:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4$3;->val$type:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->CRBOX_OLD:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4$3;->val$type:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->CRBOX_YEAR:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4$3;->val$type:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->COPIED_SHARE:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4$3;->this$1:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4;->this$0:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;

    .line 464
    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 465
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4$3;->this$1:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4;->this$0:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->-$$Nest$fget_hScrollView(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->requestDisallowInterceptTouchEvent(Z)V

    .line 470
    invoke-static {}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->getCurrentFolder()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4$3;->val$item:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 474
    invoke-static {}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->getCurrentFolder()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/noteanytime/CabinetCommandManager;->isEnableMoveFolder(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 476
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4$3;->this$1:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4;->this$0:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_treeView:Lcom/metamoji/ui/cabinet/TreeView;

    iget v1, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4$3;->val$position:I

    iget-object v2, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4$3;->this$1:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4;

    iget-object v2, v2, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4;->this$0:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;

    invoke-static {v2}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->-$$Nest$fget_hScrollView(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;)Landroid/widget/HorizontalScrollView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/metamoji/ui/cabinet/TreeView;->startDrag(Landroid/view/MotionEvent;II)Z

    .line 482
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
