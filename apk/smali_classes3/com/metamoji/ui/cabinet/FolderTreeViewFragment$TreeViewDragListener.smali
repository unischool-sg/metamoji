.class Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$TreeViewDragListener;
.super Ljava/lang/Object;
.source "FolderTreeViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TreeViewDragListener"
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

    .line 1723
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$TreeViewDragListener;->this$0:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method onDuringDrag(IIIIZLcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)V
    .locals 1

    .line 1725
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$TreeViewDragListener;->this$0:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->-$$Nest$fget_activity(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;)Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/metamoji/noteanytime/MainActivity;

    if-eqz v0, :cond_0

    .line 1726
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$TreeViewDragListener;->this$0:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->-$$Nest$fget_activity(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;)Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/metamoji/noteanytime/MainActivity;

    invoke-virtual {v0}, Lcom/metamoji/noteanytime/MainActivity;->CloseContextMenu()V

    :cond_0
    if-eqz p6, :cond_1

    .line 1731
    invoke-virtual {p6}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDriveId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    if-ltz p1, :cond_2

    .line 1733
    invoke-static {}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->-$$Nest$sfget_adapter()Lcom/metamoji/ui/cabinet/TreeAdapter;

    move-result-object p6

    invoke-virtual {p6}, Lcom/metamoji/ui/cabinet/TreeAdapter;->getCount()I

    move-result p6

    if-le p6, p1, :cond_2

    .line 1734
    invoke-static {}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->-$$Nest$sfget_adapter()Lcom/metamoji/ui/cabinet/TreeAdapter;

    move-result-object p6

    invoke-virtual {p6, p1}, Lcom/metamoji/ui/cabinet/TreeAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 1738
    :goto_0
    iget-object p6, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$TreeViewDragListener;->this$0:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;

    invoke-static {p6}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->-$$Nest$fget_hScrollView(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;)Landroid/widget/HorizontalScrollView;

    move-result-object p6

    invoke-virtual {p6, p3, p4}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 1739
    invoke-static {}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->-$$Nest$sfget_adapter()Lcom/metamoji/ui/cabinet/TreeAdapter;

    move-result-object p3

    invoke-virtual {p3, p2, p4, p5, p1}, Lcom/metamoji/ui/cabinet/TreeAdapter;->onDuringDrag(IIZLjava/lang/String;)V

    return-void
.end method

.method onStopDrag(IIII)V
    .locals 1

    .line 1744
    invoke-static {}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->-$$Nest$sfget_adapter()Lcom/metamoji/ui/cabinet/TreeAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/TreeAdapter;->onStopDrag()V

    if-ltz p1, :cond_3

    .line 1747
    invoke-static {}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->-$$Nest$sfget_adapter()Lcom/metamoji/ui/cabinet/TreeAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/TreeAdapter;->getCount()I

    move-result v0

    if-gt v0, p1, :cond_0

    goto :goto_0

    :cond_0
    if-ltz p2, :cond_3

    .line 1750
    invoke-static {}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->-$$Nest$sfget_adapter()Lcom/metamoji/ui/cabinet/TreeAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/TreeAdapter;->getCount()I

    move-result v0

    if-gt v0, p2, :cond_1

    goto :goto_0

    :cond_1
    if-ne p1, p2, :cond_2

    goto :goto_0

    .line 1757
    :cond_2
    invoke-static {}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->-$$Nest$sfget_adapter()Lcom/metamoji/ui/cabinet/TreeAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/cabinet/TreeAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    .line 1758
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$TreeViewDragListener;->onStopDrag(Lcom/metamoji/ui/cabinet/CabinetTreeItem;III)V

    :cond_3
    :goto_0
    return-void
.end method

.method onStopDrag(Lcom/metamoji/ui/cabinet/CabinetTreeItem;III)V
    .locals 3

    .line 1763
    invoke-static {}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->-$$Nest$sfget_adapter()Lcom/metamoji/ui/cabinet/TreeAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/TreeAdapter;->onStopDrag()V

    if-eqz p1, :cond_9

    if-ltz p2, :cond_9

    .line 1765
    invoke-static {}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->-$$Nest$sfget_adapter()Lcom/metamoji/ui/cabinet/TreeAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/TreeAdapter;->getCount()I

    move-result v0

    if-le v0, p2, :cond_9

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$TreeViewDragListener;->this$0:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;

    iget-boolean v0, v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->isOpen:Z

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 1769
    :cond_0
    invoke-static {}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->-$$Nest$sfget_adapter()Lcom/metamoji/ui/cabinet/TreeAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/metamoji/ui/cabinet/TreeAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    if-eqz v0, :cond_9

    .line 1770
    invoke-virtual {v0, p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_3

    .line 1774
    :cond_1
    sget-object v1, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$9;->$SwitchMap$com$metamoji$ui$cabinet$CabinetTreeItem$Type:[I

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1785
    :pswitch_0
    invoke-virtual {v0, p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->isSameDrive(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_3

    .line 1793
    :cond_2
    invoke-static {}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->getCurrentFolder()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1794
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$TreeViewDragListener;->this$0:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->-$$Nest$fget_activity(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;)Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->createAlertDialog(Landroidx/fragment/app/FragmentActivity;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 1795
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 1796
    sget p3, Lcom/metamoji/noteanytime/R$string;->Cabinet_Not_Move_Folder:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1797
    sget p3, Lcom/metamoji/noteanytime/R$string;->Msg_OK:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 p2, 0x0

    .line 1798
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1799
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void

    .line 1803
    :cond_3
    invoke-static {}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->-$$Nest$sfget_adapter()Lcom/metamoji/ui/cabinet/TreeAdapter;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Lcom/metamoji/ui/cabinet/TreeAdapter;->getDropPosition(II)I

    move-result p3

    const/4 p4, 0x1

    if-eq p4, p2, :cond_8

    if-ne p4, p3, :cond_4

    goto :goto_2

    .line 1810
    :cond_4
    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getParent()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 1811
    invoke-virtual {p2}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getChildren()Ljava/util/List;

    move-result-object p4

    goto :goto_0

    :cond_5
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 1813
    :goto_0
    invoke-static {p1}, Lcom/metamoji/noteanytime/MainActivity;->moveFolderForContextmenu(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V

    .line 1814
    invoke-interface {p4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1816
    invoke-interface {p4, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1817
    invoke-static {p4, p1, v0, p3}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->-$$Nest$smgetFoldersOrder(Ljava/util/List;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Lcom/metamoji/ui/cabinet/CabinetTreeItem;I)Ljava/util/ArrayList;

    move-result-object p3

    if-eqz p2, :cond_6

    .line 1818
    invoke-virtual {p2}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTagsObject()Ljava/util/ArrayList;

    move-result-object p2

    goto :goto_1

    :cond_6
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 1819
    :goto_1
    iget-object p4, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$TreeViewDragListener;->this$0:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;

    invoke-static {p4}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->-$$Nest$fget_activity(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;)Landroidx/fragment/app/FragmentActivity;

    move-result-object p4

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$TreeViewDragListener;->this$0:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->-$$Nest$fget_folderChangeEventListener(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;)Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;

    move-result-object v0

    invoke-static {p1, p2, p3, p4, v0}, Lcom/metamoji/noteanytime/MainActivity;->reOrderFolder(Lcom/metamoji/ui/cabinet/CabinetTreeItem;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V

    return-void

    .line 1822
    :cond_7
    invoke-static {}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->-$$Nest$sfget_adapter()Lcom/metamoji/ui/cabinet/TreeAdapter;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/metamoji/ui/cabinet/TreeAdapter;->getItemView(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p2

    .line 1823
    iget-object p3, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$TreeViewDragListener;->this$0:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;

    new-instance p4, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$TreeViewDragListener;->this$0:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;

    invoke-direct {p4, v1, p1, v0}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam;-><init>(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V

    invoke-static {p3, p2, p4}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->-$$Nest$mshowDragContextMenuForFolder(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;Landroid/view/View;Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam;)V

    return-void

    .line 1806
    :cond_8
    :goto_2
    invoke-static {}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->-$$Nest$sfget_adapter()Lcom/metamoji/ui/cabinet/TreeAdapter;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/metamoji/ui/cabinet/TreeAdapter;->getItemView(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p2

    .line 1807
    iget-object p3, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$TreeViewDragListener;->this$0:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;

    new-instance p4, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$TreeViewDragListener;->this$0:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;

    invoke-direct {p4, v1, p1, v0}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam;-><init>(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V

    invoke-static {p3, p2, p4}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->-$$Nest$mshowDragContextMenuForFolder(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;Landroid/view/View;Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam;)V

    :cond_9
    :goto_3
    :pswitch_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method onStopDrag(Ljava/lang/String;Ljava/util/ArrayList;III)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;III)V"
        }
    .end annotation

    .line 1833
    invoke-static {}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->-$$Nest$sfget_adapter()Lcom/metamoji/ui/cabinet/TreeAdapter;

    move-result-object p4

    invoke-virtual {p4}, Lcom/metamoji/ui/cabinet/TreeAdapter;->onStopDrag()V

    if-eqz p2, :cond_a

    if-ltz p3, :cond_a

    .line 1835
    invoke-static {}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->-$$Nest$sfget_adapter()Lcom/metamoji/ui/cabinet/TreeAdapter;

    move-result-object p4

    invoke-virtual {p4}, Lcom/metamoji/ui/cabinet/TreeAdapter;->getCount()I

    move-result p4

    if-le p4, p3, :cond_a

    iget-object p4, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$TreeViewDragListener;->this$0:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;

    iget-boolean p4, p4, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->isOpen:Z

    if-nez p4, :cond_0

    goto/16 :goto_4

    .line 1839
    :cond_0
    invoke-static {}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->getCurrentFolder()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object p4

    .line 1840
    invoke-static {}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->-$$Nest$sfget_adapter()Lcom/metamoji/ui/cabinet/TreeAdapter;

    move-result-object p5

    invoke-virtual {p5, p3}, Lcom/metamoji/ui/cabinet/TreeAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    if-eqz p4, :cond_1

    .line 1842
    invoke-virtual {p4}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object p5

    sget-object v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->COPIED_SHARE:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-ne p5, v0, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_a

    .line 1844
    invoke-virtual {p3, p4}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_2

    goto/16 :goto_4

    .line 1849
    :cond_2
    :goto_0
    invoke-virtual {p3}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object p5

    .line 1850
    sget-object v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$9;->$SwitchMap$com$metamoji$ui$cabinet$CabinetTreeItem$Type:[I

    invoke-virtual {p5}, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    const/4 v2, 0x2

    if-eq v0, v2, :cond_a

    const/16 v3, 0xd

    if-eq v0, v3, :cond_a

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1897
    invoke-virtual {p4, p3}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->isSameDrive(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1899
    sget-object p1, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$9;->$SwitchMap$com$metamoji$ui$cabinet$CabinetTreeItem$Type:[I

    invoke-virtual {p5}, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->ordinal()I

    move-result p5

    aget p1, p1, p5

    const/4 p5, 0x3

    if-eq p1, p5, :cond_6

    const/16 v0, 0xe

    if-eq p1, v0, :cond_3

    const/16 v0, 0xf

    if-eq p1, v0, :cond_3

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_4

    .line 1914
    :cond_3
    sget-object p1, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$9;->$SwitchMap$com$metamoji$ui$cabinet$CabinetTreeItem$Type:[I

    invoke-virtual {p4}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->ordinal()I

    move-result v0

    aget p1, p1, v0

    if-eq p1, v2, :cond_4

    if-eq p1, p5, :cond_4

    packed-switch p1, :pswitch_data_2

    goto/16 :goto_4

    .line 1924
    :cond_4
    :pswitch_0
    invoke-virtual {p4}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object p1

    sget-object p5, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->ALL_NOTE:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-eq p1, p5, :cond_5

    goto :goto_1

    :cond_5
    move v1, v3

    .line 1926
    :goto_1
    invoke-static {}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->-$$Nest$sfget_adapter()Lcom/metamoji/ui/cabinet/TreeAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/metamoji/ui/cabinet/TreeAdapter;->getItemView(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    .line 1927
    iget-object p5, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$TreeViewDragListener;->this$0:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;

    new-instance v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;

    iget-object v2, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$TreeViewDragListener;->this$0:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;

    invoke-direct {v0, v2, p2, p4, p3}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;-><init>(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;Ljava/util/ArrayList;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V

    invoke-static {p5, p1, v0, v1}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->-$$Nest$mshowDragContextMenuForNote(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;Landroid/view/View;Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;Z)V

    return-void

    .line 1905
    :cond_6
    :pswitch_1
    invoke-virtual {p4}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object p1

    sget-object p5, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->ALL_NOTE:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-eq p1, p5, :cond_7

    goto :goto_2

    :cond_7
    move v1, v3

    .line 1907
    :goto_2
    invoke-static {}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->-$$Nest$sfget_adapter()Lcom/metamoji/ui/cabinet/TreeAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/metamoji/ui/cabinet/TreeAdapter;->getItemView(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    .line 1908
    iget-object p5, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$TreeViewDragListener;->this$0:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;

    new-instance v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;

    iget-object v2, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$TreeViewDragListener;->this$0:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;

    invoke-direct {v0, v2, p2, p4, p3}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;-><init>(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;Ljava/util/ArrayList;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V

    invoke-static {p5, p1, v0, v1}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->-$$Nest$mshowDragContextMenuForNote(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;Landroid/view/View;Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;Z)V

    return-void

    .line 1938
    :cond_8
    invoke-static {}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->-$$Nest$sfget_adapter()Lcom/metamoji/ui/cabinet/TreeAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/metamoji/ui/cabinet/TreeAdapter;->getItemView(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    .line 1939
    iget-object p5, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$TreeViewDragListener;->this$0:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;

    new-instance v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$TreeViewDragListener;->this$0:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;

    invoke-direct {v0, v1, p2, p4, p3}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;-><init>(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;Ljava/util/ArrayList;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V

    invoke-static {p5, p1, v0, v3}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->-$$Nest$mshowDragContextMenuForNote(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;Landroid/view/View;Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;Z)V

    return-void

    .line 1864
    :pswitch_2
    invoke-virtual {p4}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object p3

    invoke-static {p5, p3}, Lcom/metamoji/sd/SdUtils;->isSameDrive(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_a

    .line 1865
    iget-object p3, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$TreeViewDragListener;->this$0:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;

    invoke-static {p3}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->-$$Nest$fget_activity(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;)Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-static {p3}, Lcom/metamoji/cm/CmUtils;->createAlertDialog(Landroidx/fragment/app/FragmentActivity;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p3

    .line 1866
    iget-object p5, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$TreeViewDragListener;->this$0:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;

    invoke-static {p5}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->-$$Nest$fget_activity(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;)Landroidx/fragment/app/FragmentActivity;

    move-result-object p5

    invoke-virtual {p5}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    sget v0, Lcom/metamoji/noteanytime/R$string;->Cabinet_Msg_Note_Delete_Title:I

    invoke-virtual {p5, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1867
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p5

    const/4 v0, 0x0

    if-ne p5, v1, :cond_9

    .line 1868
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    invoke-static {v3, v0, v0, p5}, Lcom/metamoji/ui/cabinet/CabinetUtils;->prepareDeleteNoteMessage(ZLjava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_3

    .line 1870
    :cond_9
    invoke-static {v1, v0, p2, v0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->prepareDeleteNoteMessage(ZLjava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1874
    :goto_3
    iget-object p5, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$TreeViewDragListener;->this$0:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;

    invoke-static {p5}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->-$$Nest$fget_activity(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;)Landroidx/fragment/app/FragmentActivity;

    move-result-object p5

    invoke-virtual {p5}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    sget v1, Lcom/metamoji/noteanytime/R$string;->Msg_YES:I

    invoke-virtual {p5, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p5

    new-instance v1, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$TreeViewDragListener$1;

    invoke-direct {v1, p0, p1, p4, p2}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$TreeViewDragListener$1;-><init>(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$TreeViewDragListener;Ljava/lang/String;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Ljava/util/List;)V

    invoke-virtual {p3, p5, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1884
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$TreeViewDragListener;->this$0:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->-$$Nest$fget_activity(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;)Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/metamoji/noteanytime/R$string;->Msg_NO:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1885
    invoke-virtual {p3, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1886
    new-instance p1, Lcom/metamoji/ui/dialog/UiAlertDialog;

    invoke-direct {p1, p3}, Lcom/metamoji/ui/dialog/UiAlertDialog;-><init>(Landroidx/appcompat/app/AlertDialog$Builder;)V

    .line 1887
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$TreeViewDragListener;->this$0:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;

    invoke-virtual {p2}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    const-string p3, "FolderTree_dropToTrash"

    invoke-virtual {p1, p2, p3}, Lcom/metamoji/ui/dialog/UiAlertDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_a
    :goto_4
    :pswitch_3
    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xa
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
