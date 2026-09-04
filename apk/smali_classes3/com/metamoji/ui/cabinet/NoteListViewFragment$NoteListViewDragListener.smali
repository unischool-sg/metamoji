.class Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListViewDragListener;
.super Lcom/metamoji/ui/cabinet/SimpleDragListener;
.source "NoteListViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/cabinet/NoteListViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NoteListViewDragListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;


# direct methods
.method private constructor <init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 6825
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListViewDragListener;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/SimpleDragListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Lcom/metamoji/ui/cabinet/NoteListViewFragment-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListViewDragListener;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)V

    return-void
.end method


# virtual methods
.method public onDuringDrag(IIII)I
    .locals 5

    .line 6829
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListViewDragListener;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$id;->folder_tree_view_fragmnet:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;

    if-nez v0, :cond_0

    .line 6831
    invoke-super {p0, p1, p2, p3, p4}, Lcom/metamoji/ui/cabinet/SimpleDragListener;->onDuringDrag(IIII)I

    move-result p1

    return p1

    .line 6834
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 6835
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListViewDragListener;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_NoteListMode(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;

    move-result-object v2

    sget-object v3, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;->NoteListModeType_Normal:Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;

    .line 6837
    iget-object v4, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListViewDragListener;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    if-ne v2, v3, :cond_1

    .line 6836
    invoke-static {v4}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_normalView(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/NoteListGridView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/metamoji/ui/cabinet/NoteListGridView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    goto :goto_0

    .line 6837
    :cond_1
    invoke-static {v4}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_NoteListMode(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;

    move-result-object v2

    sget-object v3, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;->NoteListModeType_Detail:Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;

    .line 6839
    iget-object v4, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListViewDragListener;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    if-ne v2, v3, :cond_2

    .line 6838
    invoke-static {v4}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_detailView(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/DetailGridView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/metamoji/ui/cabinet/DetailGridView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    goto :goto_0

    .line 6839
    :cond_2
    invoke-static {v4}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_NoteListMode(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;

    move-result-object v2

    sget-object v3, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;->NoteListModeType_Simple:Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;

    if-ne v2, v3, :cond_3

    .line 6840
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListViewDragListener;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_simpleView(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/SimpleGridView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/metamoji/ui/cabinet/SimpleGridView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    :cond_3
    :goto_0
    const/4 v2, -0x1

    if-ne v2, p2, :cond_7

    .line 6843
    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int v1, p3, v1

    if-gez v1, :cond_7

    .line 6845
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListViewDragListener;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v1, p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$mgetItem(Lcom/metamoji/ui/cabinet/NoteListViewFragment;I)Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    move-result-object v1

    if-nez v1, :cond_4

    .line 6847
    invoke-super {p0, p1, p2, p3, p4}, Lcom/metamoji/ui/cabinet/SimpleDragListener;->onDuringDrag(IIII)I

    move-result p1

    return p1

    .line 6849
    :cond_4
    iget-object v2, v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_treeView:Lcom/metamoji/ui/cabinet/TreeView;

    iget-boolean v2, v2, Lcom/metamoji/ui/cabinet/TreeView;->_draggingByNoteList:Z

    if-eqz v2, :cond_6

    const/4 v2, 0x2

    .line 6851
    invoke-static {v1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_type(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)I

    move-result v3

    if-ne v2, v3, :cond_5

    const/4 v2, 0x1

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    .line 6852
    :goto_1
    iget-object v0, v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_treeView:Lcom/metamoji/ui/cabinet/TreeView;

    invoke-virtual {v0, p3, p4, v2, v1}, Lcom/metamoji/ui/cabinet/TreeView;->duringDragByNoteList(IIZLcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)V

    goto :goto_2

    .line 6855
    :cond_6
    iget-object v0, v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_treeView:Lcom/metamoji/ui/cabinet/TreeView;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/TreeView;->startDragByNoteList()V

    goto :goto_2

    .line 6858
    :cond_7
    iget-object v1, v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_treeView:Lcom/metamoji/ui/cabinet/TreeView;

    iget-boolean v1, v1, Lcom/metamoji/ui/cabinet/TreeView;->_draggingByNoteList:Z

    if-eqz v1, :cond_8

    .line 6860
    iget-object v0, v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_treeView:Lcom/metamoji/ui/cabinet/TreeView;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/TreeView;->clearOnDraggingBackground()V

    .line 6864
    :cond_8
    :goto_2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/metamoji/ui/cabinet/SimpleDragListener;->onDuringDrag(IIII)I

    move-result p1

    return p1
.end method

.method public onStopDrag(IIII)Z
    .locals 8

    if-ltz p1, :cond_12

    .line 6870
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListViewDragListener;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_itemList(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    goto/16 :goto_6

    .line 6873
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListViewDragListener;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v0, p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$mgetItem(Lcom/metamoji/ui/cabinet/NoteListViewFragment;I)Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    move-result-object v0

    if-nez v0, :cond_1

    .line 6875
    invoke-super {p0, p1, p2, p3, p4}, Lcom/metamoji/ui/cabinet/SimpleDragListener;->onStopDrag(IIII)Z

    move-result p1

    return p1

    .line 6878
    :cond_1
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListViewDragListener;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    sget v2, Lcom/metamoji/noteanytime/R$id;->folder_tree_view_fragmnet:I

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v1, :cond_5

    const/4 v4, -0x1

    if-ne v4, p2, :cond_5

    .line 6880
    invoke-static {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_type(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 6881
    iget-object v1, v1, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_treeView:Lcom/metamoji/ui/cabinet/TreeView;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_content(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {v1, v4, p3, p4}, Lcom/metamoji/ui/cabinet/TreeView;->stopDragByNoteList(Lcom/metamoji/ui/cabinet/CabinetTreeItem;II)V

    goto :goto_1

    .line 6882
    :cond_2
    invoke-static {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_type(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)I

    move-result v4

    if-ne v2, v4, :cond_5

    .line 6883
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 6886
    iget-object v5, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListViewDragListener;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v5}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_multiSelectMode(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 6887
    iget-object v5, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListViewDragListener;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v5}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_multiSelectItems(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_4

    .line 6889
    iget-object v7, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListViewDragListener;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v7}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_multiSelectItems(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    .line 6890
    invoke-virtual {v7}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDocId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 6893
    :cond_3
    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDocId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6896
    :cond_4
    iget-object v1, v1, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_treeView:Lcom/metamoji/ui/cabinet/TreeView;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDriveId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5, v4, p3, p4}, Lcom/metamoji/ui/cabinet/TreeView;->stopDragByNoteList(Ljava/lang/String;Ljava/util/ArrayList;II)V

    :cond_5
    :goto_1
    if-ltz p2, :cond_11

    .line 6901
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListViewDragListener;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_itemList(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, p2, :cond_11

    if-ne p1, p2, :cond_6

    goto/16 :goto_5

    .line 6905
    :cond_6
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListViewDragListener;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v1, p2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$mgetItem(Lcom/metamoji/ui/cabinet/NoteListViewFragment;I)Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    move-result-object v1

    if-nez v1, :cond_7

    .line 6907
    invoke-super {p0, p1, p2, p3, p4}, Lcom/metamoji/ui/cabinet/SimpleDragListener;->onStopDrag(IIII)Z

    move-result p1

    return p1

    .line 6910
    :cond_7
    invoke-static {v1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_type(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)I

    move-result v4

    if-eq v3, v4, :cond_8

    .line 6912
    invoke-super {p0, p1, p2, p3, p4}, Lcom/metamoji/ui/cabinet/SimpleDragListener;->onStopDrag(IIII)Z

    move-result p1

    return p1

    .line 6915
    :cond_8
    invoke-static {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_type(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)I

    move-result v4

    if-ne v3, v4, :cond_c

    .line 6918
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListViewDragListener;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_NoteListMode(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;

    move-result-object v2

    sget-object v3, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;->NoteListModeType_Normal:Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;

    .line 6920
    iget-object v4, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListViewDragListener;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    if-ne v2, v3, :cond_9

    .line 6919
    invoke-static {v4}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_normalView(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/NoteListGridView;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/metamoji/ui/cabinet/NoteListGridView;->getItemView(I)Landroid/view/View;

    move-result-object v2

    goto :goto_2

    .line 6920
    :cond_9
    invoke-static {v4}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_NoteListMode(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;

    move-result-object v2

    sget-object v3, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;->NoteListModeType_Detail:Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;

    .line 6923
    iget-object v4, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListViewDragListener;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    if-ne v2, v3, :cond_a

    .line 6921
    invoke-static {v4}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_detailView(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/DetailGridView;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/metamoji/ui/cabinet/DetailGridView;->getItemView(I)Landroid/view/View;

    move-result-object v2

    goto :goto_2

    .line 6923
    :cond_a
    invoke-static {v4}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_simpleView(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/SimpleGridView;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/metamoji/ui/cabinet/SimpleGridView;->getItemView(I)Landroid/view/View;

    move-result-object v2

    :goto_2
    if-nez v2, :cond_b

    .line 6926
    invoke-super {p0, p1, p2, p3, p4}, Lcom/metamoji/ui/cabinet/SimpleDragListener;->onStopDrag(IIII)Z

    move-result p1

    return p1

    .line 6928
    :cond_b
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListViewDragListener;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    new-instance v4, Lcom/metamoji/ui/cabinet/NoteListViewFragment$DragContextMenuParam;

    iget-object v5, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListViewDragListener;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_content(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-static {v1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_content(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-direct {v4, v5, v0, v1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$DragContextMenuParam;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V

    invoke-static {v3, v2, v4}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$mshowDragContextMenu(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Landroid/view/View;Lcom/metamoji/ui/cabinet/NoteListViewFragment$DragContextMenuParam;)V

    goto :goto_4

    .line 6929
    :cond_c
    invoke-static {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_type(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)I

    move-result v3

    if-ne v2, v3, :cond_10

    .line 6931
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListViewDragListener;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_NoteListMode(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;

    move-result-object v2

    sget-object v3, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;->NoteListModeType_Normal:Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;

    .line 6933
    iget-object v4, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListViewDragListener;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    if-ne v2, v3, :cond_d

    .line 6932
    invoke-static {v4}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_normalView(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/NoteListGridView;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/metamoji/ui/cabinet/NoteListGridView;->getItemView(I)Landroid/view/View;

    move-result-object v2

    goto :goto_3

    .line 6933
    :cond_d
    invoke-static {v4}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_NoteListMode(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;

    move-result-object v2

    sget-object v3, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;->NoteListModeType_Detail:Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;

    .line 6936
    iget-object v4, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListViewDragListener;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    if-ne v2, v3, :cond_e

    .line 6934
    invoke-static {v4}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_detailView(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/DetailGridView;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/metamoji/ui/cabinet/DetailGridView;->getItemView(I)Landroid/view/View;

    move-result-object v2

    goto :goto_3

    .line 6936
    :cond_e
    invoke-static {v4}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_simpleView(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/SimpleGridView;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/metamoji/ui/cabinet/SimpleGridView;->getItemView(I)Landroid/view/View;

    move-result-object v2

    :goto_3
    if-nez v2, :cond_f

    .line 6939
    invoke-super {p0, p1, p2, p3, p4}, Lcom/metamoji/ui/cabinet/SimpleDragListener;->onStopDrag(IIII)Z

    move-result p1

    return p1

    .line 6943
    :cond_f
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 6944
    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDocId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6945
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListViewDragListener;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    new-instance v4, Lcom/metamoji/ui/cabinet/NoteListViewFragment$DragContextMenuParam2;

    iget-object v5, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListViewDragListener;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v5}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_currentDisplayedFolder(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v6

    invoke-static {v1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_content(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-direct {v4, v5, v3, v6, v1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$DragContextMenuParam2;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Ljava/util/ArrayList;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V

    invoke-static {v0, v2, v4}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$mshowDragContextMenuForNote(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Landroid/view/View;Lcom/metamoji/ui/cabinet/NoteListViewFragment$DragContextMenuParam2;)V

    .line 6948
    :cond_10
    :goto_4
    invoke-super {p0, p1, p2, p3, p4}, Lcom/metamoji/ui/cabinet/SimpleDragListener;->onStopDrag(IIII)Z

    move-result p1

    return p1

    .line 6902
    :cond_11
    :goto_5
    invoke-super {p0, p1, p2, p3, p4}, Lcom/metamoji/ui/cabinet/SimpleDragListener;->onStopDrag(IIII)Z

    move-result p1

    return p1

    .line 6871
    :cond_12
    :goto_6
    invoke-super {p0, p1, p2, p3, p4}, Lcom/metamoji/ui/cabinet/SimpleDragListener;->onStopDrag(IIII)Z

    move-result p1

    return p1
.end method
