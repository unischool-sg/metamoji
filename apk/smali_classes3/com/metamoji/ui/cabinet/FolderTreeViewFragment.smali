.class public Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;
.super Landroidx/fragment/app/Fragment;
.source "FolderTreeViewFragment.java"

# interfaces
.implements Lcom/metamoji/ui/MenuEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$OnFolderClickListener;,
        Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$TreeViewDragListener;,
        Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam;,
        Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;
    }
.end annotation


# static fields
.field public static final ALL_NOTE_FOLDER_INFO:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

.field public static final CABINET_ROOT_FOLDER_INFO:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

.field public static final COPIED_SHARE_FOLDER_INFO:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

.field public static final CRBOXOLD_FOLDER_INFO:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

.field public static CRBOX_FOLDER_INFO:Lcom/metamoji/ui/cabinet/CabinetTreeItem; = null

.field static final ICON_IMAGE_TAG:Ljava/lang/String; = "FolderTreeViewFragment.iconImage"

.field private static final IS_OPEN_SAVE_KEY:Ljava/lang/String; = "isOpenSaveKey"

.field public static final RECYCYLE_BIN_FOLDER_INFO:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

.field static final SELECTED_ICON_IMAGE_TAG:Ljava/lang/String; = "FolderTreeViewFragment.selectedIconImage"

.field public static final SHARED_DRIVE_PARENT_FOLDER_INFO:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

.field public static final TEMPLATE_FOLDER_INFO:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

.field static final TITLE_TEXT_TAG:Ljava/lang/String; = "FolderTreeViewFragment.titleText"

.field static final UNDER_LINE_TAG:Ljava/lang/String; = "FolderTreeViewFragment.underLine"

.field static final UPPER_LINE_TAG:Ljava/lang/String; = "FolderTreeViewFragment.upperLine"

.field private static _adapter:Lcom/metamoji/ui/cabinet/TreeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/ui/cabinet/TreeAdapter<",
            "Lcom/metamoji/ui/cabinet/CabinetTreeItem;",
            ">;"
        }
    .end annotation
.end field

.field private static _currentItem:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

.field private static _deletedNoteCount:I

.field public static _driveIdActivatingAfterSync:Ljava/lang/String;

.field public static _isActivateAfterLoginAndSync:Z

.field public static _messageAfterSync:Ljava/lang/String;


# instance fields
.field private _activity:Landroidx/fragment/app/FragmentActivity;

.field private _closeBtn:Landroid/view/View;

.field private _folderChangeEventListener:Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;

.field private _folderClickListener:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$OnFolderClickListener;

.field private _hScrollView:Landroid/widget/HorizontalScrollView;

.field private _openBtn:Landroid/view/View;

.field public _treeView:Lcom/metamoji/ui/cabinet/TreeView;

.field public isOpen:Z


# direct methods
.method static bridge synthetic -$$Nest$fget_activity(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;)Landroidx/fragment/app/FragmentActivity;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_activity:Landroidx/fragment/app/FragmentActivity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_folderChangeEventListener(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;)Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_folderChangeEventListener:Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_folderClickListener(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;)Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$OnFolderClickListener;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_folderClickListener:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$OnFolderClickListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_hScrollView(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;)Landroid/widget/HorizontalScrollView;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_hScrollView:Landroid/widget/HorizontalScrollView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcloseFolderTree(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->closeFolderTree()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetFolderTreeIconResourceId(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;Ljava/lang/String;)Landroid/util/Pair;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->getFolderTreeIconResourceId(Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$monClickArrowView(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->onClickArrowView(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monItemClickCore(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;Landroid/view/View;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->onItemClickCore(Landroid/view/View;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mopenFolderTree(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->openFolderTree()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowDragContextMenuForFolder(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;Landroid/view/View;Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->showDragContextMenuForFolder(Landroid/view/View;Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowDragContextMenuForNote(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;Landroid/view/View;Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->showDragContextMenuForNote(Landroid/view/View;Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowItemContextMenu(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;Landroid/view/View;Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->showItemContextMenu(Landroid/view/View;Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfget_adapter()Lcom/metamoji/ui/cabinet/TreeAdapter;
    .locals 1

    sget-object v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_adapter:Lcom/metamoji/ui/cabinet/TreeAdapter;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfget_deletedNoteCount()I
    .locals 1

    sget v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_deletedNoteCount:I

    return v0
.end method

.method static bridge synthetic -$$Nest$smcreateTextView(Landroid/content/Context;Ljava/lang/String;ZZ)Landroid/view/View;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->createTextView(Landroid/content/Context;Ljava/lang/String;ZZ)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smgetFoldersOrder(Ljava/util/List;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Lcom/metamoji/ui/cabinet/CabinetTreeItem;I)Ljava/util/ArrayList;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->getFoldersOrder(Ljava/util/List;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Lcom/metamoji/ui/cabinet/CabinetTreeItem;I)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 86
    invoke-static {}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->createAsAllNote()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    sput-object v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->ALL_NOTE_FOLDER_INFO:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    .line 88
    invoke-static {}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->createAsRecycleBin()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    sput-object v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->RECYCYLE_BIN_FOLDER_INFO:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    .line 90
    invoke-static {}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->createAsLocalRoot()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    sput-object v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->CABINET_ROOT_FOLDER_INFO:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    .line 92
    invoke-static {}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->createAsTemplateFolder()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v1

    sput-object v1, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->TEMPLATE_FOLDER_INFO:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    .line 94
    invoke-static {}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->createAsSharedDriveRoot()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v1

    sput-object v1, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->SHARED_DRIVE_PARENT_FOLDER_INFO:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    .line 96
    invoke-static {}, Lcom/metamoji/ui/cabinet/CabinetUtils;->getActiveGroupId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->createAsCRBox(Ljava/lang/String;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v1

    sput-object v1, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->CRBOX_FOLDER_INFO:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    .line 98
    invoke-static {}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->createAsCRBoxOld()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v1

    sput-object v1, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->CRBOXOLD_FOLDER_INFO:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    .line 100
    invoke-static {}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->createAsCopiedShare()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v1

    sput-object v1, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->COPIED_SHARE_FOLDER_INFO:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    .line 106
    sput-object v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_currentItem:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    const/4 v0, 0x0

    .line 133
    sput-object v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_messageAfterSync:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 136
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x1

    .line 127
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->isOpen:Z

    const/4 v0, 0x0

    .line 137
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->setRetainInstance(Z)V

    return-void
.end method

.method private closeFolderTree()V
    .locals 3

    .line 271
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_activity:Landroidx/fragment/app/FragmentActivity;

    instance-of v1, v0, Lcom/metamoji/noteanytime/MainActivity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_openBtn:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_closeBtn:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 272
    check-cast v0, Lcom/metamoji/noteanytime/MainActivity;

    invoke-virtual {v0}, Lcom/metamoji/noteanytime/MainActivity;->closeFolderTree()V

    .line 273
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_openBtn:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 274
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_closeBtn:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 275
    iput-boolean v1, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->isOpen:Z

    :cond_0
    return-void
.end method

.method public static correctCurrent(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$OnFolderClickListener;Lcom/metamoji/ui/cabinet/TreeView;)V
    .locals 5

    .line 993
    sget-object v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_adapter:Lcom/metamoji/ui/cabinet/TreeAdapter;

    if-eqz v0, :cond_7

    .line 994
    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/TreeAdapter;->reinitialize()V

    .line 996
    sget-object v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_driveIdActivatingAfterSync:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 998
    invoke-static {}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->getCurrentFolder()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v2

    .line 999
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v3

    .line 1000
    invoke-virtual {v3, v0}, Lcom/metamoji/dvm/DvmDriveManager;->getGroupIdFromDriveId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 1003
    invoke-virtual {v2}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object v3

    sget-object v4, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->SHARED_DRIVE:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-eq v3, v4, :cond_1

    .line 1004
    invoke-virtual {v2}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object v3

    sget-object v4, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->SHARED_DRIVE_OWN:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-eq v3, v4, :cond_1

    .line 1006
    invoke-static {v0}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->getShareDriveRoot(Ljava/lang/String;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v2

    .line 1007
    invoke-static {p0, v2}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->setCurrentFolder(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V

    goto :goto_0

    .line 1011
    :cond_0
    invoke-virtual {v2}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object v3

    sget-object v4, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->CRBOX_CLASS:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-eq v3, v4, :cond_1

    .line 1013
    invoke-static {v0}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->getShareDriveRoot(Ljava/lang/String;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v2

    .line 1014
    invoke-static {p0, v2}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->setCurrentFolder(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V

    .line 1018
    :cond_1
    :goto_0
    sget-object v3, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_adapter:Lcom/metamoji/ui/cabinet/TreeAdapter;

    invoke-virtual {v3, v2}, Lcom/metamoji/ui/cabinet/TreeAdapter;->isExpanded(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1019
    sget-object v3, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_adapter:Lcom/metamoji/ui/cabinet/TreeAdapter;

    invoke-virtual {v3, v2}, Lcom/metamoji/ui/cabinet/TreeAdapter;->expand(Ljava/lang/Object;)V

    .line 1021
    :cond_2
    sget-object v2, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_adapter:Lcom/metamoji/ui/cabinet/TreeAdapter;

    invoke-static {v2, v0}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->findItemByDriveId(Lcom/metamoji/ui/cabinet/TreeAdapter;Ljava/lang/String;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    .line 1024
    sget-object v2, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_messageAfterSync:Ljava/lang/String;

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    .line 1025
    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getLabelName()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1026
    invoke-static {v2, v1, v1}, Lcom/metamoji/cm/CmUtils;->confirmDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1027
    sput-object v1, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_messageAfterSync:Ljava/lang/String;

    :cond_3
    move-object v1, v0

    :cond_4
    if-nez v1, :cond_5

    .line 1031
    sget-object v1, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_currentItem:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    .line 1033
    :cond_5
    invoke-static {p0, v1, p1}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->correctCurrentIfNotExists(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$OnFolderClickListener;)V

    if-eqz p2, :cond_6

    .line 1035
    sget-object p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_adapter:Lcom/metamoji/ui/cabinet/TreeAdapter;

    invoke-virtual {p0, v1}, Lcom/metamoji/ui/cabinet/TreeAdapter;->getPosition(Ljava/lang/Object;)I

    move-result p0

    .line 1036
    invoke-virtual {p2, p0}, Lcom/metamoji/ui/cabinet/TreeView;->setSelection(I)V

    .line 1038
    :cond_6
    sget-boolean p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_isActivateAfterLoginAndSync:Z

    if-eqz p0, :cond_7

    .line 1039
    sget-object p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_adapter:Lcom/metamoji/ui/cabinet/TreeAdapter;

    sget-object p1, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_currentItem:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/cabinet/TreeAdapter;->expand(Ljava/lang/Object;)V

    const/4 p0, 0x0

    .line 1040
    sput-boolean p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_isActivateAfterLoginAndSync:Z

    :cond_7
    return-void
.end method

.method private static correctCurrentIfNotExists(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$OnFolderClickListener;)V
    .locals 8

    if-nez p1, :cond_0

    .line 1046
    sget-object p1, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->CABINET_ROOT_FOLDER_INFO:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    .line 1048
    :cond_0
    sget-object v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_adapter:Lcom/metamoji/ui/cabinet/TreeAdapter;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/TreeAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 1049
    sget-object v3, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_adapter:Lcom/metamoji/ui/cabinet/TreeAdapter;

    invoke-virtual {v3, v2}, Lcom/metamoji/ui/cabinet/TreeAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    if-eqz v3, :cond_1

    .line 1050
    invoke-virtual {v3, p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1051
    sget-object v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_currentItem:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1052
    invoke-interface {p2, p1}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$OnFolderClickListener;->onFolderItemClick(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V

    .line 1053
    invoke-static {p0, p1}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->setCurrentFolder(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V

    .line 1054
    sget-object p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_adapter:Lcom/metamoji/ui/cabinet/TreeAdapter;

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/cabinet/TreeAdapter;->setSelectedItem(Ljava/lang/Object;)Z

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1060
    :cond_2
    sget-object v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->CABINET_ROOT_FOLDER_INFO:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_3

    .line 1063
    :cond_3
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object v0

    .line 1064
    sget-object v2, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->LOCAL_FOLDER:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_4

    .line 1065
    invoke-static {v3}, Lcom/metamoji/dvm/DvmUtil;->sdDocumentManager(Ljava/lang/String;)Lcom/metamoji/sd/SdDriveDocumentManager;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 1066
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getAbsPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/sd/SdDriveDocumentManager;->existsFolder(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto/16 :goto_3

    .line 1069
    :cond_4
    sget-object v2, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->CRBOX_YEAR:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-ne v0, v2, :cond_5

    .line 1070
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getGroupId()Ljava/lang/String;

    move-result-object v0

    .line 1071
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v1

    .line 1072
    invoke-virtual {v1, v0}, Lcom/metamoji/dvm/DvmDriveManager;->getGroupNameByGroupId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 1073
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_10

    goto/16 :goto_3

    .line 1076
    :cond_5
    sget-object v2, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->SHARED_DRIVE_FOLDER:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-eq v0, v2, :cond_6

    sget-object v2, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->CRBOX_CLASS:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-eq v0, v2, :cond_6

    sget-object v2, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->SHARED_DRIVE:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-eq v0, v2, :cond_6

    sget-object v2, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->SHARED_DRIVE_OWN:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-ne v0, v2, :cond_10

    .line 1081
    :cond_6
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v2

    .line 1082
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v4

    .line 1083
    invoke-virtual {v4, v2}, Lcom/metamoji/dvm/DvmDriveManager;->getGroupIdFromDriveId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    .line 1084
    invoke-virtual {v4, v5, v6, v6}, Lcom/metamoji/dvm/DvmDriveManager;->getDrivesByGroupId(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v6

    .line 1087
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;

    .line 1088
    invoke-virtual {v7}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->getDriveId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1089
    invoke-virtual {v4, v2}, Lcom/metamoji/dvm/DvmDriveManager;->getDriveById(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDriveBean;

    move-result-object v3

    if-eqz v3, :cond_7

    :cond_8
    if-eqz v3, :cond_a

    .line 1097
    sget-object v3, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->SHARED_DRIVE_FOLDER:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-ne v0, v3, :cond_d

    .line 1098
    invoke-static {v2}, Lcom/metamoji/dvm/DvmUtil;->sdDocumentManager(Ljava/lang/String;)Lcom/metamoji/sd/SdDriveDocumentManager;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1100
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getAbsPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/sd/SdDriveDocumentManager;->existsFolder(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_3

    .line 1104
    :cond_9
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getParent()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object p1

    .line 1105
    invoke-static {p0, p1, p2}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->correctCurrentIfNotExists(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$OnFolderClickListener;)V

    return-void

    .line 1115
    :cond_a
    sget-object v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->SHARED_DRIVE_PARENT:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-eqz v5, :cond_c

    .line 1117
    invoke-static {}, Lcom/metamoji/ui/cabinet/CabinetUtils;->getActiveGroupId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 1119
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1120
    sget-object v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->CRBOX:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    goto :goto_1

    .line 1123
    :cond_b
    sget-object v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->CRBOX_YEAR:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    .line 1127
    :cond_c
    :goto_1
    sget-object v2, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_adapter:Lcom/metamoji/ui/cabinet/TreeAdapter;

    invoke-virtual {v2}, Lcom/metamoji/ui/cabinet/TreeAdapter;->getCount()I

    move-result v2

    :goto_2
    if-ge v1, v2, :cond_10

    .line 1128
    sget-object v3, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_adapter:Lcom/metamoji/ui/cabinet/TreeAdapter;

    invoke-virtual {v3, v1}, Lcom/metamoji/ui/cabinet/TreeAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    .line 1129
    invoke-virtual {v3}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object v4

    if-ne v4, v0, :cond_f

    .line 1130
    sget-object p1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->SHARED_DRIVE_PARENT:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-eq v0, p1, :cond_e

    .line 1131
    invoke-virtual {v3}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getGroupId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_d

    invoke-virtual {v3}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getGroupId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_4

    :cond_d
    :goto_3
    return-void

    .line 1132
    :cond_e
    :goto_4
    invoke-static {p0, v3, p2}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->correctCurrentIfNotExists(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$OnFolderClickListener;)V

    return-void

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1140
    :cond_10
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getParent()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->correctCurrentIfNotExists(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$OnFolderClickListener;)V

    return-void
.end method

.method private static createTextView(Landroid/content/Context;Ljava/lang/String;ZZ)Landroid/view/View;
    .locals 3

    .line 280
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 281
    const-string p0, "FolderTreeViewFragment.titleText"

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 282
    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {p0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 284
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const v2, -0x333334

    .line 285
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 p0, 0x13

    .line 286
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setGravity(I)V

    const/4 p0, 0x1

    .line 287
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setLines(I)V

    if-eqz p2, :cond_1

    .line 289
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setActivated(Z)V

    :cond_1
    return-object v0
.end method

.method public static existsFolder(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1960
    :cond_0
    sget-object v1, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$9;->$SwitchMap$com$metamoji$ui$cabinet$CabinetTreeItem$Type:[I

    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    return v0

    .line 1974
    :pswitch_1
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/metamoji/dvm/DvmDriveManager;->getDocumentManagerByDriveId(Ljava/lang/String;)Lcom/metamoji/sd/SdDriveDocumentManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1976
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getAbsPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/metamoji/sd/SdDriveDocumentManager;->existsFolder(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    return v0

    :pswitch_2
    const/4 v0, 0x0

    .line 1980
    invoke-static {v0}, Lcom/metamoji/dvm/DvmUtil;->sdDocumentManager(Ljava/lang/String;)Lcom/metamoji/sd/SdDriveDocumentManager;

    move-result-object v0

    .line 1981
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getAbsPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/metamoji/sd/SdDriveDocumentManager;->existsFolder(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 1972
    :pswitch_3
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/metamoji/dvm/DvmDriveManager;->getDriveById(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDriveBean;

    move-result-object p0

    if-eqz p0, :cond_2

    return v2

    :cond_2
    return v0

    :pswitch_4
    return v2

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static findItemByDriveId(Lcom/metamoji/ui/cabinet/TreeAdapter;Ljava/lang/String;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ui/cabinet/TreeAdapter<",
            "Lcom/metamoji/ui/cabinet/CabinetTreeItem;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/metamoji/ui/cabinet/CabinetTreeItem;"
        }
    .end annotation

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    .line 1154
    :cond_0
    sget-object v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_adapter:Lcom/metamoji/ui/cabinet/TreeAdapter;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/TreeAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 1155
    sget-object v2, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_adapter:Lcom/metamoji/ui/cabinet/TreeAdapter;

    invoke-virtual {v2, v1}, Lcom/metamoji/ui/cabinet/TreeAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    .line 1156
    invoke-virtual {v2}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method private getCRBoxOldRoot()Lcom/metamoji/ui/cabinet/CabinetTreeItem;
    .locals 5

    .line 589
    sget-object v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_adapter:Lcom/metamoji/ui/cabinet/TreeAdapter;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/TreeAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 590
    sget-object v2, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_adapter:Lcom/metamoji/ui/cabinet/TreeAdapter;

    invoke-virtual {v2, v1}, Lcom/metamoji/ui/cabinet/TreeAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    if-eqz v2, :cond_0

    .line 591
    invoke-virtual {v2}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object v3

    sget-object v4, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->CRBOX_OLD:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-ne v3, v4, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getCRBoxRoot()Lcom/metamoji/ui/cabinet/CabinetTreeItem;
    .locals 5

    .line 598
    sget-object v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_adapter:Lcom/metamoji/ui/cabinet/TreeAdapter;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/TreeAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 599
    sget-object v2, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_adapter:Lcom/metamoji/ui/cabinet/TreeAdapter;

    invoke-virtual {v2, v1}, Lcom/metamoji/ui/cabinet/TreeAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    if-eqz v2, :cond_0

    .line 600
    invoke-virtual {v2}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object v3

    sget-object v4, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->CRBOX:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-ne v3, v4, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getCurrentFolder()Lcom/metamoji/ui/cabinet/CabinetTreeItem;
    .locals 1

    .line 919
    sget-object v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_currentItem:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    return-object v0
.end method

.method private getFolderTreeIconResourceId(Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;Ljava/lang/String;)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 609
    sget-object v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$9;->$SwitchMap$com$metamoji$ui$cabinet$CabinetTreeItem$Type:[I

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 671
    sget p1, Lcom/metamoji/noteanytime/R$drawable;->cabinet_tree_thumb_folder:I

    .line 672
    sget p2, Lcom/metamoji/noteanytime/R$drawable;->cabinet_tree_thumb_folder_select:I

    goto :goto_0

    .line 667
    :pswitch_0
    sget p1, Lcom/metamoji/noteanytime/R$drawable;->cabinet_tree_thumb_copiedshare:I

    .line 668
    sget p2, Lcom/metamoji/noteanytime/R$drawable;->cabinet_tree_thumb_copiedshare_select:I

    goto :goto_0

    .line 663
    :pswitch_1
    sget p1, Lcom/metamoji/noteanytime/R$drawable;->design1_tree_thumb_mydrive:I

    .line 664
    sget p2, Lcom/metamoji/noteanytime/R$drawable;->design1_tree_thumb_mydrive_select:I

    goto :goto_0

    .line 659
    :pswitch_2
    sget p1, Lcom/metamoji/noteanytime/R$drawable;->design1_tree_thumb_drive:I

    .line 660
    sget p2, Lcom/metamoji/noteanytime/R$drawable;->design1_tree_thumb_drive_select:I

    goto :goto_0

    .line 643
    :pswitch_3
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object p1

    sget-object v0, Lcom/metamoji/nt/NtFeature;->EditClassBoxMember:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {p1, v0}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 644
    sget p1, Lcom/metamoji/noteanytime/R$drawable;->design1_tree_thumb_drive:I

    .line 645
    sget p2, Lcom/metamoji/noteanytime/R$drawable;->design1_tree_thumb_drive_select:I

    goto :goto_0

    .line 647
    :cond_0
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/metamoji/dvm/DvmDriveManager;->getDriveById(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDriveBean;

    move-result-object p1

    .line 648
    invoke-virtual {p1}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->isAdmin()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 649
    sget p1, Lcom/metamoji/noteanytime/R$drawable;->design1_tree_thumb_mydrive:I

    .line 650
    sget p2, Lcom/metamoji/noteanytime/R$drawable;->design1_tree_thumb_mydrive_select:I

    goto :goto_0

    .line 652
    :cond_1
    sget p1, Lcom/metamoji/noteanytime/R$drawable;->design1_tree_thumb_drive:I

    .line 653
    sget p2, Lcom/metamoji/noteanytime/R$drawable;->design1_tree_thumb_drive_select:I

    goto :goto_0

    .line 639
    :pswitch_4
    sget p1, Lcom/metamoji/noteanytime/R$drawable;->design1_tree_thumb_driveall:I

    .line 640
    sget p2, Lcom/metamoji/noteanytime/R$drawable;->design1_tree_thumb_driveall_select:I

    goto :goto_0

    .line 632
    :pswitch_5
    sget p1, Lcom/metamoji/noteanytime/R$drawable;->cabinet_tree_thumb_template:I

    .line 633
    sget p2, Lcom/metamoji/noteanytime/R$drawable;->cabinet_tree_thumb_template_select:I

    goto :goto_0

    .line 623
    :pswitch_6
    invoke-static {p2}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->isTrashEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 624
    sget p1, Lcom/metamoji/noteanytime/R$drawable;->cabinet_tree_trash_empty:I

    .line 625
    sget p2, Lcom/metamoji/noteanytime/R$drawable;->cabinet_tree_trash_empty_select:I

    goto :goto_0

    .line 627
    :cond_2
    sget p1, Lcom/metamoji/noteanytime/R$drawable;->cabinet_tree_trash:I

    .line 628
    sget p2, Lcom/metamoji/noteanytime/R$drawable;->cabinet_tree_trash_select:I

    goto :goto_0

    .line 619
    :pswitch_7
    sget p1, Lcom/metamoji/noteanytime/R$drawable;->design1_tree_thumb_mydrive:I

    .line 620
    sget p2, Lcom/metamoji/noteanytime/R$drawable;->design1_tree_thumb_mydrive_select:I

    goto :goto_0

    .line 615
    :pswitch_8
    sget p1, Lcom/metamoji/noteanytime/R$drawable;->cabinet_tree_thumb_all:I

    .line 616
    sget p2, Lcom/metamoji/noteanytime/R$drawable;->cabinet_tree_thumb_all_select:I

    goto :goto_0

    .line 611
    :pswitch_9
    sget p1, Lcom/metamoji/noteanytime/R$drawable;->tree_calendar:I

    .line 612
    sget p2, Lcom/metamoji/noteanytime/R$drawable;->tree_calendar:I

    .line 675
    :goto_0
    new-instance v0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getFoldersOrder(Ljava/util/List;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Lcom/metamoji/ui/cabinet/CabinetTreeItem;I)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/ui/cabinet/CabinetTreeItem;",
            ">;",
            "Lcom/metamoji/ui/cabinet/CabinetTreeItem;",
            "Lcom/metamoji/ui/cabinet/CabinetTreeItem;",
            "I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1702
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1703
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 1705
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    .line 1706
    invoke-virtual {v3, p2}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez p3, :cond_0

    .line 1708
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTagId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1709
    invoke-virtual {v3}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTagId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const/4 v4, 0x2

    if-ne v4, p3, :cond_2

    .line 1711
    invoke-virtual {v3}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTagId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1712
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTagId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1715
    :cond_1
    invoke-virtual {v3}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTagId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static getShareDriveRoot(Ljava/lang/String;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;
    .locals 2

    if-nez p0, :cond_0

    .line 2005
    sget-object p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->CABINET_ROOT_FOLDER_INFO:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    return-object p0

    .line 2006
    :cond_0
    invoke-static {p0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->getDriveGroupId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 2008
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    .line 2009
    invoke-virtual {v0, p0}, Lcom/metamoji/dvm/DvmDriveManager;->getGroupNameByGroupId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2010
    invoke-static {}, Lcom/metamoji/ui/cabinet/CabinetUtils;->getActiveGroupId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2012
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2013
    invoke-static {p0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->createAsCRBox(Ljava/lang/String;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object p0

    return-object p0

    .line 2016
    :cond_1
    invoke-static {p0, v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->createAsCRBoxYear(Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object p0

    return-object p0

    .line 2020
    :cond_2
    sget-object p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->SHARED_DRIVE_PARENT_FOLDER_INFO:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    return-object p0
.end method

.method private getSharedDriveRoot()Lcom/metamoji/ui/cabinet/CabinetTreeItem;
    .locals 5

    .line 579
    sget-object v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_adapter:Lcom/metamoji/ui/cabinet/TreeAdapter;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/TreeAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 580
    sget-object v2, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_adapter:Lcom/metamoji/ui/cabinet/TreeAdapter;

    invoke-virtual {v2, v1}, Lcom/metamoji/ui/cabinet/TreeAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    if-eqz v2, :cond_0

    .line 581
    invoke-virtual {v2}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object v3

    sget-object v4, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->SHARED_DRIVE_PARENT:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-ne v3, v4, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static hasShareDrive()Z
    .locals 2

    .line 1991
    sget-object v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->SHARED_DRIVE_PARENT_FOLDER_INFO:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 1993
    :cond_0
    sget-object v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->CRBOX_FOLDER_INFO:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 1995
    :cond_1
    sget-object v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->CRBOXOLD_FOLDER_INFO:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private initAdapter()V
    .locals 6

    .line 296
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 298
    invoke-static {}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->createCalendar()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    sget-object v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->CABINET_ROOT_FOLDER_INFO:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    .line 302
    invoke-static {}, Lcom/metamoji/ui/cabinet/CabinetUtils;->getActiveGroupId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->createAsCRBox(Ljava/lang/String;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v1

    sput-object v1, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->CRBOX_FOLDER_INFO:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    .line 303
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 306
    invoke-virtual {v0, v1, v2, v2}, Lcom/metamoji/dvm/DvmDriveManager;->getDrivesByGroupId(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 308
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 313
    :cond_0
    sget-object v1, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->SHARED_DRIVE_PARENT_FOLDER_INFO:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 316
    invoke-virtual {v0, v2, v1}, Lcom/metamoji/dvm/DvmDriveManager;->getDriveGroupAllWithOrderAscending(ZZ)Ljava/util/List;

    move-result-object v0

    .line 317
    invoke-static {}, Lcom/metamoji/ui/cabinet/CabinetUtils;->getActiveGroupId()Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_4

    .line 319
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    .line 323
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v2, :cond_3

    .line 325
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/dvm/fw/bean/DvmDriveGroupBean;

    if-eqz v0, :cond_3

    .line 326
    invoke-virtual {v0}, Lcom/metamoji/dvm/fw/bean/DvmDriveGroupBean;->getGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->equalsString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 331
    :cond_3
    sget-object v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->CRBOXOLD_FOLDER_INFO:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    :cond_4
    :goto_1
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 340
    new-instance v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4;

    const/4 v3, 0x0

    move-object v5, v2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4;-><init>(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;Landroid/content/Context;ILjava/util/List;Landroid/content/Context;)V

    sput-object v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_adapter:Lcom/metamoji/ui/cabinet/TreeAdapter;

    return-void
.end method

.method static isTrashEmpty(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 1194
    :try_start_0
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object p0

    .line 1196
    new-instance v1, Lcom/metamoji/dvm/DvmDocumentSearchConditions;

    invoke-direct {v1}, Lcom/metamoji/dvm/DvmDocumentSearchConditions;-><init>()V

    .line 1197
    sget-object v2, Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;->Trash:Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;

    invoke-virtual {v1, v2}, Lcom/metamoji/dvm/DvmDocumentSearchConditions;->setSearchDomainMask(Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;)V

    const/4 v2, 0x0

    .line 1198
    invoke-virtual {p0, v2, v1}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentIDs(Ljava/util/List;Lcom/metamoji/dvm/DvmDocumentSearchConditions;)Ljava/util/List;

    move-result-object p0

    .line 1199
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0

    :catch_0
    move-exception p0

    .line 1201
    const-string v1, "[FolderTreeViewFragment] :: isTrashEmpty"

    invoke-static {p0, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return v0
.end method

.method private onClickArrowView(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V
    .locals 1

    .line 1187
    sget-object v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_adapter:Lcom/metamoji/ui/cabinet/TreeAdapter;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/cabinet/TreeAdapter;->toggleExpand(Ljava/lang/Object;)V

    return-void
.end method

.method private onItemClickCore(Landroid/view/View;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Z)V
    .locals 3

    .line 714
    invoke-static {}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->getCurrentFolder()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 716
    invoke-virtual {p2}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object v0

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->RECYCLE_BIN:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 717
    sput v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_deletedNoteCount:I

    .line 718
    sget-object v1, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_adapter:Lcom/metamoji/ui/cabinet/TreeAdapter;

    invoke-virtual {v1, p2}, Lcom/metamoji/ui/cabinet/TreeAdapter;->getItemView(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 720
    const-string v2, "FolderTreeViewFragment.iconImage"

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/cabinet/TreeIconView;

    .line 721
    invoke-virtual {v1, v0}, Lcom/metamoji/ui/cabinet/TreeIconView;->setNoteCount(I)V

    .line 728
    :cond_0
    invoke-virtual {p0, p2}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->setSelectedFolder(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 734
    :cond_1
    invoke-virtual {p2}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->needUpdateDrive()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    if-eqz p1, :cond_2

    .line 736
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object p1, v1

    .line 737
    :goto_0
    invoke-virtual {p2}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_3

    .line 738
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    if-nez p1, :cond_5

    if-eqz v0, :cond_5

    .line 739
    :cond_4
    invoke-static {v0}, Lcom/metamoji/noteanytime/MainActivity;->checkCurrentDriveUpdate(Ljava/lang/String;)V

    .line 744
    :cond_5
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    sget v0, Lcom/metamoji/noteanytime/R$id;->cabinet_node_view:I

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    .line 745
    instance-of v0, p1, Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    if-eqz v0, :cond_6

    move-object v1, p1

    check-cast v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    :cond_6
    if-eqz v1, :cond_7

    .line 747
    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->beginWaiting()V

    .line 751
    :cond_7
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$7;

    invoke-direct {v0, p0, p2, p3, v1}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$7;-><init>(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;Lcom/metamoji/ui/cabinet/CabinetTreeItem;ZLcom/metamoji/ui/cabinet/NoteListViewFragment;)V

    const-wide/16 p2, 0x0

    invoke-virtual {p1, v0, p2, p3}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private openFolderTree()V
    .locals 2

    .line 261
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_activity:Landroidx/fragment/app/FragmentActivity;

    instance-of v1, v0, Lcom/metamoji/noteanytime/MainActivity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_openBtn:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_closeBtn:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 262
    check-cast v0, Lcom/metamoji/noteanytime/MainActivity;

    invoke-virtual {v0}, Lcom/metamoji/noteanytime/MainActivity;->openFolderTree()V

    .line 263
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_openBtn:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_closeBtn:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    .line 265
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->isOpen:Z

    :cond_0
    return-void
.end method

.method public static resetCurrentFolder()V
    .locals 2

    const/4 v0, 0x0

    .line 945
    invoke-static {v0}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->setDriveIdActivatingAfterSync(Ljava/lang/String;)V

    .line 947
    sget-object v1, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->CABINET_ROOT_FOLDER_INFO:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    sput-object v1, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_currentItem:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    .line 950
    invoke-static {v0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->setCurrentDrive(Ljava/lang/String;)V

    .line 951
    invoke-static {v0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->setCurrentFolder(Ljava/util/List;)V

    .line 953
    sget-object v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_adapter:Lcom/metamoji/ui/cabinet/TreeAdapter;

    if-eqz v0, :cond_0

    .line 954
    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/TreeAdapter;->resetMap()V

    :cond_0
    return-void
.end method

.method public static searchFolderPath(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 965
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 966
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 967
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->CABINET_ROOT_FOLDER_INFO:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-static {v1, p0, v0}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->searchFolderPathRecursively(Ljava/util/ArrayList;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 969
    :goto_0
    invoke-static {v0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->createAbsPath(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static searchFolderPathRecursively(Ljava/util/ArrayList;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/metamoji/ui/cabinet/CabinetTreeItem;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 973
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getChildren()Ljava/util/List;

    move-result-object p1

    .line 974
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    .line 975
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 976
    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTagId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 977
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 978
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 979
    invoke-static {p0, v0, p2}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->searchFolderPathRecursively(Ljava/util/ArrayList;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Ljava/util/ArrayList;)V

    :cond_2
    return-void
.end method

.method private setAdapter(Lcom/metamoji/ui/cabinet/TreeView;)V
    .locals 1

    .line 679
    new-instance v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$5;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$5;-><init>(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/cabinet/TreeView;->setOnTreeItemClickListener(Lcom/metamoji/ui/cabinet/TreeView$OnTreeItemClickListener;)V

    .line 689
    new-instance v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$6;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$6;-><init>(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/cabinet/TreeView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 702
    sget-object v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_adapter:Lcom/metamoji/ui/cabinet/TreeAdapter;

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/cabinet/TreeView;->setTreeAdapter(Lcom/metamoji/ui/cabinet/TreeAdapter;)V

    return-void
.end method

.method public static setCurrentFolder(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V
    .locals 2

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 923
    sget-object v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_currentItem:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 926
    invoke-static {v0}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->setDriveIdActivatingAfterSync(Ljava/lang/String;)V

    .line 928
    sput-object p1, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_currentItem:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    .line 929
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object v0

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->CALENDAR:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-ne v0, v1, :cond_1

    const/4 p1, 0x1

    .line 930
    invoke-static {p0, p1}, Lcom/metamoji/noteanytime/MainActivity;->calendarMode(Landroidx/fragment/app/FragmentActivity;Z)V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 932
    invoke-static {p0, v0}, Lcom/metamoji/noteanytime/MainActivity;->calendarMode(Landroidx/fragment/app/FragmentActivity;Z)V

    .line 933
    invoke-static {p0}, Lcom/metamoji/noteanytime/MainActivity;->liftSearchCondition(Landroidx/fragment/app/FragmentActivity;)V

    .line 936
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->setCurrentDrive(Ljava/lang/String;)V

    .line 937
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTags()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->setCurrentFolder(Ljava/util/List;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static setDeletedNoteCount(I)V
    .locals 0

    .line 710
    sput p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_deletedNoteCount:I

    return-void
.end method

.method public static setDriveIdActivatingAfterSync(Ljava/lang/String;)V
    .locals 0

    .line 1148
    sput-object p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_driveIdActivatingAfterSync:Ljava/lang/String;

    return-void
.end method

.method private showDragContextMenuForFolder(Landroid/view/View;Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam;)V
    .locals 4

    .line 1534
    sget-object v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$9;->$SwitchMap$com$metamoji$ui$cabinet$CabinetTreeItem$Type:[I

    invoke-static {p2}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam;->-$$Nest$fget_to(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1549
    :pswitch_0
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    .line 1550
    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtFeature;->AppStudentEditClassboxNote:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1567
    :cond_0
    invoke-static {p2}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam;->-$$Nest$fget_to(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {p2}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam;->-$$Nest$fget_from(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    :cond_1
    return-void

    .line 1551
    :cond_2
    :goto_0
    invoke-static {p2}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam;->-$$Nest$fget_to(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object v0

    invoke-static {p2}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam;->-$$Nest$fget_to(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/noteanytime/CabinetCommandManager;->isEnableMoveFolder(Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1572
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1574
    new-instance v1, Lcom/metamoji/ui/UiMenuItem;

    sget-object v2, Lcom/metamoji/ui/PopupCommand;->TREE_MOVE_FOLDER:Lcom/metamoji/ui/PopupCommand;

    sget v3, Lcom/metamoji/noteanytime/R$string;->Cabinet_Folder_Move:I

    invoke-direct {v1, v2, p2, v3}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1576
    new-instance p2, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {p2, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1577
    invoke-virtual {p1, p2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 1578
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_activity:Landroidx/fragment/app/FragmentActivity;

    instance-of v1, p1, Lcom/metamoji/noteanytime/MainActivity;

    if-eqz v1, :cond_4

    .line 1579
    check-cast p1, Lcom/metamoji/noteanytime/MainActivity;

    invoke-virtual {p1, v0, p0, p2}, Lcom/metamoji/noteanytime/MainActivity;->ShowContextMenu(Ljava/util/ArrayList;Lcom/metamoji/ui/MenuEventListener;Landroid/graphics/Rect;)V

    :cond_4
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

.method private showDragContextMenuForNote(Landroid/view/View;Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;Z)V
    .locals 9

    .line 1585
    sget-object v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$9;->$SwitchMap$com$metamoji$ui$cabinet$CabinetTreeItem$Type:[I

    invoke-static {p2}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;->-$$Nest$fget_to(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_10

    const/16 v1, 0xd

    if-eq v0, v1, :cond_10

    packed-switch v0, :pswitch_data_0

    .line 1599
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1603
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    .line 1604
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_2

    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v2

    sget-object v5, Lcom/metamoji/nt/NtFeature;->AppStudentEditClassboxNote:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v2, v5}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 1607
    invoke-static {p2}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;->-$$Nest$fget_to(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {p2}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;->-$$Nest$fget_from(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    if-nez p3, :cond_9

    .line 1610
    invoke-static {p2}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;->-$$Nest$fget_to(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_9

    invoke-static {p2}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;->-$$Nest$fget_from(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 1619
    :cond_2
    :goto_0
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v2

    invoke-static {p2}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;->-$$Nest$fget_from(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object v2

    .line 1620
    invoke-static {p2}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;->-$$Nest$fget_fromDocIds(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentInfo(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    move-result-object v2

    .line 1622
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v5

    const-string v6, "application/vnd.metamoji.model.atshare"

    if-eqz v5, :cond_5

    .line 1623
    invoke-static {p2}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;->-$$Nest$fget_to(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    if-nez p3, :cond_5

    .line 1625
    invoke-static {p2}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;->-$$Nest$fget_fromDocIds(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v3, :cond_4

    .line 1626
    invoke-virtual {v2}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->isTemplate()Z

    move-result v5

    if-nez v5, :cond_5

    .line 1627
    invoke-virtual {v2}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->getContentsMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1628
    new-instance v5, Lcom/metamoji/ui/UiMenuItem;

    sget-object v7, Lcom/metamoji/ui/PopupCommand;->CABINET_DELIVER_NOTE:Lcom/metamoji/ui/PopupCommand;

    sget v8, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_DELIVER_AS_ANOTHER_CLASS_NOTE:I

    invoke-direct {v5, v7, p2, v8}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1630
    :cond_3
    new-instance v5, Lcom/metamoji/ui/UiMenuItem;

    sget-object v7, Lcom/metamoji/ui/PopupCommand;->CABINET_DELIVER_NOTE:Lcom/metamoji/ui/PopupCommand;

    sget v8, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_DELIVER_AS_CLASS_NOTE:I

    invoke-direct {v5, v7, p2, v8}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1636
    :cond_4
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v5

    sget v7, Lcom/metamoji/noteanytime/R$id;->cabinet_node_view:I

    invoke-virtual {v5, v7}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    .line 1637
    invoke-virtual {v5}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->isSelectedNote()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1638
    new-instance v5, Lcom/metamoji/ui/UiMenuItem;

    sget-object v7, Lcom/metamoji/ui/PopupCommand;->CABINET_DISTRIBUTE_NOTES:Lcom/metamoji/ui/PopupCommand;

    sget v8, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_DELIVER_AS_CLASS_NOTE:I

    invoke-direct {v5, v7, p2, v8}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1646
    :cond_5
    :goto_1
    invoke-static {p2}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;->-$$Nest$fget_fromDocIds(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v3, :cond_6

    invoke-static {p2}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;->-$$Nest$fget_to(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    if-nez p3, :cond_6

    .line 1647
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v5

    if-nez v5, :cond_6

    .line 1648
    invoke-virtual {v2}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->isTemplate()Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "application/vnd.metamoji.model.atdoc"

    .line 1649
    invoke-virtual {v2}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->getContentsMimeType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1650
    invoke-static {}, Lcom/metamoji/ui/flexible/FxManager;->isSimpleUiMode()Z

    move-result v5

    if-nez v5, :cond_6

    .line 1651
    new-instance v5, Lcom/metamoji/ui/UiMenuItem;

    sget-object v7, Lcom/metamoji/ui/PopupCommand;->CABINET_SUBMIT_BY_STUDENT:Lcom/metamoji/ui/PopupCommand;

    sget v8, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_CABINET_CTMENU_SUBMIT_BY_STUDENT:I

    invoke-direct {v5, v7, p2, v8}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1654
    :cond_6
    invoke-virtual {v2}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->getContentsMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz p3, :cond_7

    goto :goto_2

    .line 1658
    :cond_7
    new-instance v2, Lcom/metamoji/ui/UiMenuItem;

    sget-object v5, Lcom/metamoji/ui/PopupCommand;->CABINET_COPY_NOTE:Lcom/metamoji/ui/PopupCommand;

    sget v6, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_CREATE_SHORTCUT_FOR_SAME_CLASS_NOTE:I

    invoke-direct {v2, v5, p2, v6}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1661
    :cond_8
    new-instance v2, Lcom/metamoji/ui/UiMenuItem;

    sget-object v5, Lcom/metamoji/ui/PopupCommand;->CABINET_COPY_NOTE:Lcom/metamoji/ui/PopupCommand;

    sget v6, Lcom/metamoji/noteanytime/R$string;->ContextMenu_Copy:I

    invoke-direct {v2, v5, p2, v6}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_2
    if-eqz p3, :cond_f

    .line 1668
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result p3

    if-nez p3, :cond_c

    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object p3

    sget-object v2, Lcom/metamoji/nt/NtFeature;->AppStudentEditClassboxNote:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {p3, v2}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result p3

    if-eqz p3, :cond_a

    goto :goto_4

    .line 1680
    :cond_a
    invoke-static {p2}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;->-$$Nest$fget_to(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object p3

    invoke-virtual {p3}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_b

    invoke-static {p2}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;->-$$Nest$fget_from(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object p3

    invoke-virtual {p3}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_d

    :cond_b
    :goto_3
    move v3, v4

    goto :goto_5

    .line 1669
    :cond_c
    :goto_4
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result p3

    if-nez p3, :cond_d

    .line 1670
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object p3

    invoke-static {p2}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;->-$$Nest$fget_to(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/metamoji/dvm/DvmDriveManager;->getDriveById(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDriveBean;

    move-result-object p3

    if-eqz p3, :cond_d

    .line 1671
    invoke-virtual {p3}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->getGroupId()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_d

    goto :goto_3

    .line 1684
    :cond_d
    :goto_5
    invoke-static {p2}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;->-$$Nest$fget_from(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object p3

    invoke-virtual {p3}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;->-$$Nest$fget_fromDocIds(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p3, v1}, Lcom/metamoji/dvm/DvmUtil;->isCopiedShare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_e

    move v3, v4

    :cond_e
    if-eqz v3, :cond_f

    .line 1688
    new-instance p3, Lcom/metamoji/ui/UiMenuItem;

    sget-object v1, Lcom/metamoji/ui/PopupCommand;->CABINET_MOVE_NOTE:Lcom/metamoji/ui/PopupCommand;

    sget v2, Lcom/metamoji/noteanytime/R$string;->Cabinet_Folder_Move:I

    invoke-direct {p3, v1, p2, v2}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1692
    :cond_f
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_10

    .line 1693
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1694
    invoke-virtual {p1, p2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 1695
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_activity:Landroidx/fragment/app/FragmentActivity;

    instance-of p3, p1, Lcom/metamoji/noteanytime/MainActivity;

    if-eqz p3, :cond_10

    .line 1696
    check-cast p1, Lcom/metamoji/noteanytime/MainActivity;

    invoke-virtual {p1, v0, p0, p2}, Lcom/metamoji/noteanytime/MainActivity;->ShowContextMenu(Ljava/util/ArrayList;Lcom/metamoji/ui/MenuEventListener;Landroid/graphics/Rect;)V

    :cond_10
    :pswitch_0
    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private showItemContextMenu(Landroid/view/View;Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V
    .locals 8

    .line 1211
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 1215
    :cond_0
    invoke-virtual {p2}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object v0

    .line 1216
    sget-object v1, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$9;->$SwitchMap$com$metamoji$ui$cabinet$CabinetTreeItem$Type:[I

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_e

    const/16 v2, 0xd

    if-eq v1, v2, :cond_e

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    .line 1246
    invoke-virtual {p2}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/ui/cabinet/CabinetUtils;->getDriveGroupId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1249
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1251
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v4

    if-nez v4, :cond_1

    if-nez v1, :cond_2

    .line 1252
    :cond_1
    invoke-static {p2}, Lcom/metamoji/noteanytime/CabinetCommandManager;->isEnableMakeFolder(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1253
    new-instance v4, Lcom/metamoji/ui/UiMenuItem;

    sget-object v5, Lcom/metamoji/ui/PopupCommand;->CABINET_CREATE_FOLDER:Lcom/metamoji/ui/PopupCommand;

    sget v6, Lcom/metamoji/noteanytime/R$string;->Cabinet_ContextMenu_CreateFolder:I

    invoke-direct {v4, v5, p2, v6}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1257
    :cond_2
    sget-object v4, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$9;->$SwitchMap$com$metamoji$ui$cabinet$CabinetTreeItem$Type:[I

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    :pswitch_0
    goto/16 :goto_1

    .line 1263
    :pswitch_1
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v4

    if-nez v4, :cond_3

    if-nez v1, :cond_4

    .line 1264
    :cond_3
    invoke-static {p2}, Lcom/metamoji/noteanytime/CabinetCommandManager;->isEnableMakeFolder(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1265
    new-instance v1, Lcom/metamoji/ui/UiMenuItem;

    sget-object v4, Lcom/metamoji/ui/PopupCommand;->CABINET_FOLDER_NAME_SETTING:Lcom/metamoji/ui/PopupCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->Folder_Name_Setting_Menu:I

    invoke-direct {v1, v4, p2, v5}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1268
    :cond_4
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p2}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    .line 1269
    :cond_5
    new-instance v1, Lcom/metamoji/ui/UiMenuItem;

    sget-object v4, Lcom/metamoji/ui/PopupCommand;->CABINET_DELETE_FOLDER:Lcom/metamoji/ui/PopupCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->Cabinet_ContextMenu_Delete:I

    invoke-direct {v1, v4, p2, v5}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1280
    :pswitch_2
    new-instance v1, Lcom/metamoji/ui/UiMenuItem;

    sget-object v4, Lcom/metamoji/ui/PopupCommand;->CABINET_DRIVE_MEMBER:Lcom/metamoji/ui/PopupCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->CabinetSdContextMenu_MemberList:I

    invoke-direct {v1, v4, p2, v5}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1282
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1283
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v4

    invoke-virtual {p2}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/metamoji/dvm/DvmDriveManager;->getDriveById(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDriveBean;

    move-result-object v4

    .line 1284
    invoke-virtual {v4}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->isAdmin()Z

    move-result v4

    if-eqz v4, :cond_6

    sget-object v4, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->CRBOX_CLASS:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-eq v0, v4, :cond_6

    .line 1286
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1287
    new-instance v4, Lcom/metamoji/ui/UiMenuItem;

    sget-object v5, Lcom/metamoji/ui/PopupCommand;->CABINET_RENAME_DRIVE:Lcom/metamoji/ui/PopupCommand;

    sget v6, Lcom/metamoji/noteanytime/R$string;->CabinetSdContextMenu_EditDriveName:I

    invoke-direct {v4, v5, p2, v6}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1288
    new-instance v4, Lcom/metamoji/ui/UiMenuItem;

    sget-object v5, Lcom/metamoji/ui/PopupCommand;->CABINET_DELETE_DRIVE:Lcom/metamoji/ui/PopupCommand;

    sget v6, Lcom/metamoji/noteanytime/R$string;->CabinetSdContextMenu_DeleteDrive:I

    invoke-direct {v4, v5, p2, v6}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1293
    :cond_6
    sget-object v4, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->CRBOX_CLASS:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-ne v0, v4, :cond_8

    .line 1295
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v4

    .line 1296
    invoke-virtual {v4}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 1298
    iget-boolean v4, v4, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->isAdmin:Z

    goto :goto_0

    :cond_7
    move v4, v2

    :goto_0
    if-eqz v4, :cond_8

    .line 1301
    new-instance v4, Lcom/metamoji/ui/UiMenuItem;

    sget-object v5, Lcom/metamoji/ui/PopupCommand;->CABINET_RENAME_DRIVE:Lcom/metamoji/ui/PopupCommand;

    sget v6, Lcom/metamoji/noteanytime/R$string;->CabinetSdContextMenu_EditDriveName:I

    invoke-direct {v4, v5, p2, v6}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1305
    :cond_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    .line 1306
    new-instance v4, Lcom/metamoji/ui/UiMenuItem;

    sget v5, Lcom/metamoji/noteanytime/R$string;->CabinetSdContextMenu_DriveOperations:I

    invoke-direct {v4, v1, v5, v2, v2}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/util/ArrayList;III)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1315
    :cond_9
    :goto_1
    sget-object v1, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$9;->$SwitchMap$com$metamoji$ui$cabinet$CabinetTreeItem$Type:[I

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->ordinal()I

    move-result v4

    aget v1, v1, v4

    const/16 v4, 0xe

    const/4 v5, 0x3

    if-eq v1, v5, :cond_a

    if-eq v1, v4, :cond_a

    const/16 v6, 0xf

    if-eq v1, v6, :cond_a

    goto :goto_2

    .line 1319
    :cond_a
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v1

    sget-object v6, Lcom/metamoji/nt/NtFeature;->CabinetExport:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v1, v6}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1320
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v1

    sget-object v6, Lcom/metamoji/nt/NtFeature;->AppUnavailableSendByFile:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v1, v6}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "application/vnd.metamoji.model.atdoc"

    .line 1321
    invoke-virtual {p2, v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->existNote(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1322
    new-instance v1, Lcom/metamoji/ui/UiMenuItem;

    sget-object v6, Lcom/metamoji/ui/PopupCommand;->CABINET_EXPORT_NOTES:Lcom/metamoji/ui/PopupCommand;

    sget v7, Lcom/metamoji/noteanytime/R$string;->Menu_ExportNote:I

    invoke-direct {v1, v6, p2, v7}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1330
    :cond_b
    :goto_2
    sget-object v1, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$9;->$SwitchMap$com$metamoji$ui$cabinet$CabinetTreeItem$Type:[I

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->ordinal()I

    move-result v0

    aget v0, v1, v0

    if-eq v0, v5, :cond_c

    if-eq v0, v4, :cond_c

    goto :goto_3

    .line 1333
    :cond_c
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtFeature;->CabinetExport:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1334
    new-instance v0, Lcom/metamoji/ui/UiMenuItem;

    sget-object v1, Lcom/metamoji/ui/PopupCommand;->CABINET_IMPORT_NOTES:Lcom/metamoji/ui/PopupCommand;

    sget v4, Lcom/metamoji/noteanytime/R$string;->Menu_ImportNote:I

    invoke-direct {v0, v1, p2, v4}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1341
    :cond_d
    :goto_3
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1342
    invoke-virtual {p1, p2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 1343
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_activity:Landroidx/fragment/app/FragmentActivity;

    instance-of v0, p1, Lcom/metamoji/noteanytime/MainActivity;

    if-eqz v0, :cond_e

    .line 1344
    check-cast p1, Lcom/metamoji/noteanytime/MainActivity;

    invoke-virtual {p1, v3, p0, p2}, Lcom/metamoji/noteanytime/MainActivity;->ShowContextMenu(Ljava/util/ArrayList;Lcom/metamoji/ui/MenuEventListener;Landroid/graphics/Rect;)V

    return-void

    .line 1228
    :pswitch_3
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1230
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1231
    new-instance v1, Lcom/metamoji/ui/UiMenuItem;

    sget-object v3, Lcom/metamoji/ui/PopupCommand;->CABINET_SHARE_DRIVE_DISPLAY_SETTINGS:Lcom/metamoji/ui/PopupCommand;

    sget v4, Lcom/metamoji/noteanytime/R$string;->CABINET_VISIBLE_SELECT_CONTEXTMENU:I

    invoke-direct {v1, v3, p2, v4}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1232
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1233
    invoke-virtual {p1, p2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 1234
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_activity:Landroidx/fragment/app/FragmentActivity;

    instance-of v1, p1, Lcom/metamoji/noteanytime/MainActivity;

    if-eqz v1, :cond_e

    .line 1235
    check-cast p1, Lcom/metamoji/noteanytime/MainActivity;

    invoke-virtual {p1, v0, p0, p2}, Lcom/metamoji/noteanytime/MainActivity;->ShowContextMenu(Ljava/util/ArrayList;Lcom/metamoji/ui/MenuEventListener;Landroid/graphics/Rect;)V

    :cond_e
    :goto_4
    :pswitch_4
    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 151
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    .line 153
    const-string v0, "isOpenSaveKey"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->isOpen:Z

    .line 155
    :cond_0
    iget-boolean p1, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->isOpen:Z

    if-nez p1, :cond_1

    .line 156
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->closeFolderTree()V

    :cond_1
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 143
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 144
    move-object v0, p1

    check-cast v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$OnFolderClickListener;

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_folderClickListener:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$OnFolderClickListener;

    .line 145
    move-object v0, p1

    check-cast v0, Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_folderChangeEventListener:Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;

    .line 146
    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_activity:Landroidx/fragment/app/FragmentActivity;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 181
    sget p3, Lcom/metamoji/noteanytime/R$layout;->fragment_folder_tree:I

    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 183
    sget p2, Lcom/metamoji/noteanytime/R$id;->cabinet_folder_tree_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/cabinet/TreeView;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_treeView:Lcom/metamoji/ui/cabinet/TreeView;

    .line 184
    new-instance p3, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$TreeViewDragListener;

    invoke-direct {p3, p0}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$TreeViewDragListener;-><init>(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;)V

    iput-object p3, p2, Lcom/metamoji/ui/cabinet/TreeView;->_dragListener:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$TreeViewDragListener;

    .line 186
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->initAdapter()V

    .line 187
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_treeView:Lcom/metamoji/ui/cabinet/TreeView;

    invoke-direct {p0, p2}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->setAdapter(Lcom/metamoji/ui/cabinet/TreeView;)V

    .line 189
    sget p2, Lcom/metamoji/noteanytime/R$id;->cabinet_folder_tree_h_scroll_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/HorizontalScrollView;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_hScrollView:Landroid/widget/HorizontalScrollView;

    .line 191
    sget p2, Lcom/metamoji/noteanytime/R$id;->cabinet_open_handle:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_openBtn:Landroid/view/View;

    const/4 p3, 0x4

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 193
    iget-boolean v1, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->isOpen:Z

    if-eqz v1, :cond_0

    .line 194
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 196
    :cond_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 199
    :goto_0
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_openBtn:Landroid/view/View;

    new-instance v1, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$1;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$1;-><init>(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    :cond_1
    sget p2, Lcom/metamoji/noteanytime/R$id;->cabinet_close_handle:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_closeBtn:Landroid/view/View;

    if-eqz p2, :cond_3

    .line 209
    iget-boolean v1, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->isOpen:Z

    if-eqz v1, :cond_2

    .line 210
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 212
    :cond_2
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 215
    :goto_1
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_closeBtn:Landroid/view/View;

    new-instance p3, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$2;

    invoke-direct {p3, p0}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$2;-><init>(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    :cond_3
    sget p2, Lcom/metamoji/noteanytime/R$id;->cabinet_separator:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/cabinet/CabinetSeparatorView;

    if-eqz p2, :cond_4

    .line 225
    new-instance p3, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$3;

    invoke-direct {p3, p0}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$3;-><init>(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/cabinet/CabinetSeparatorView;->setOnGestureListener(Landroid/view/GestureDetector$OnGestureListener;)V

    :cond_4
    return-object p1
.end method

.method public onPause()V
    .locals 1

    .line 249
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 250
    sget-object v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_adapter:Lcom/metamoji/ui/cabinet/TreeAdapter;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/TreeAdapter;->saveTreeExpandedState()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 162
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 163
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->reinitalize()V

    .line 164
    invoke-static {p0}, Lcom/metamoji/noteanytime/MainActivity;->isNeedRemake(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 167
    sput-boolean v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_isActivateAfterLoginAndSync:Z

    .line 169
    invoke-static {p0}, Lcom/metamoji/noteanytime/MainActivity;->finishRemake(Landroidx/fragment/app/Fragment;)V

    .line 171
    :cond_0
    invoke-static {}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->getCurrentFolder()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->updateSelectedFolder(Lcom/metamoji/ui/cabinet/CabinetTreeItem;Z)V

    .line 174
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_activity:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0}, Lcom/metamoji/noteanytime/MainActivity;->refreshSyncButton(Landroidx/fragment/app/FragmentActivity;)V

    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 255
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 256
    const-string v0, "isOpenSaveKey"

    iget-boolean v1, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->isOpen:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onSelect(Landroid/view/View;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    .line 1350
    sget-object p1, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$9;->$SwitchMap$com$metamoji$ui$PopupCommand:[I

    check-cast p2, Lcom/metamoji/ui/PopupCommand;

    invoke-virtual {p2}, Lcom/metamoji/ui/PopupCommand;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 1501
    :pswitch_0
    instance-of p1, p3, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    if-eqz p1, :cond_1

    .line 1502
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_activity:Landroidx/fragment/app/FragmentActivity;

    check-cast p3, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {p3}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getGroupId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/metamoji/noteanytime/MainActivity;->driveDisplaySettings(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    return-void

    .line 1496
    :pswitch_1
    instance-of p1, p3, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    if-eqz p1, :cond_1

    .line 1497
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_activity:Landroidx/fragment/app/FragmentActivity;

    check-cast p3, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {p3}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_folderChangeEventListener:Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;

    invoke-static {p1, p2, p3}, Lcom/metamoji/noteanytime/MainActivity;->deleteDrive(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V

    return-void

    .line 1486
    :pswitch_2
    instance-of p1, p3, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    if-eqz p1, :cond_1

    .line 1488
    check-cast p3, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {p3}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getGroupId()Ljava/lang/String;

    move-result-object p1

    .line 1491
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_activity:Landroidx/fragment/app/FragmentActivity;

    if-eqz p1, :cond_0

    .line 1489
    invoke-virtual {p3}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_folderChangeEventListener:Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;

    invoke-static {p2, p1, p3}, Lcom/metamoji/noteanytime/MainActivity;->renameClassBox(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V

    return-void

    .line 1491
    :cond_0
    invoke-virtual {p3}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_folderChangeEventListener:Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;

    invoke-static {p2, p1, p3}, Lcom/metamoji/noteanytime/MainActivity;->renameDrive(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V

    return-void

    .line 1481
    :pswitch_3
    instance-of p1, p3, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    if-eqz p1, :cond_1

    .line 1482
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_activity:Landroidx/fragment/app/FragmentActivity;

    check-cast p3, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {p3}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/metamoji/noteanytime/MainActivity;->checkDriveUsage(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    return-void

    .line 1476
    :pswitch_4
    instance-of p1, p3, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    if-eqz p1, :cond_1

    .line 1477
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_activity:Landroidx/fragment/app/FragmentActivity;

    check-cast p3, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {p3}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_folderChangeEventListener:Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;

    invoke-static {p1, p2, p3}, Lcom/metamoji/noteanytime/MainActivity;->leaveDrive(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V

    return-void

    .line 1470
    :pswitch_5
    instance-of p1, p3, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    if-eqz p1, :cond_1

    .line 1472
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_activity:Landroidx/fragment/app/FragmentActivity;

    check-cast p3, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {p3}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getGroupId()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/metamoji/noteanytime/MainActivity;->showDriveMember(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1462
    :pswitch_6
    instance-of p1, p3, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;

    if-eqz p1, :cond_1

    .line 1463
    check-cast p3, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;

    .line 1464
    invoke-static {p3}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;->-$$Nest$fget_fromDocIds(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p3}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;->-$$Nest$fget_from(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getAbsPath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;->-$$Nest$fget_from(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->moveNoteForContextmenu(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 1465
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_activity:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p3}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;->-$$Nest$fget_to(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object p2

    invoke-static {p3}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;->-$$Nest$fget_from(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object p3

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_folderChangeEventListener:Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;

    invoke-static {p1, p2, p3, v0}, Lcom/metamoji/noteanytime/MainActivity;->pasteForContextmenu(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V

    return-void

    .line 1449
    :pswitch_7
    instance-of p1, p3, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;

    if-eqz p1, :cond_1

    .line 1450
    check-cast p3, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;

    .line 1451
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    sget v0, Lcom/metamoji/noteanytime/R$id;->cabinet_node_view:I

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    .line 1452
    invoke-static {p3}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;->-$$Nest$fget_from(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v2

    .line 1453
    invoke-static {p3}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;->-$$Nest$fget_to(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v4

    .line 1454
    invoke-static {p3}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;->-$$Nest$fget_to(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getAbsPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/sd/SdUtils;->tagsFromPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 1455
    invoke-static {p3}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;->-$$Nest$fget_fromDocIds(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    .line 1457
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_activity:Landroidx/fragment/app/FragmentActivity;

    const-string/jumbo v6, "submitByStudent"

    invoke-static/range {v0 .. v6}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->deliverNoteForContextmenu(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/NoteListViewFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-void

    .line 1436
    :pswitch_8
    instance-of p1, p3, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;

    if-eqz p1, :cond_1

    .line 1437
    check-cast p3, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;

    .line 1438
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    sget p2, Lcom/metamoji/noteanytime/R$id;->cabinet_node_view:I

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    .line 1439
    invoke-static {p3}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;->-$$Nest$fget_from(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    .line 1440
    invoke-static {p3}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;->-$$Nest$fget_to(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object p2

    .line 1441
    invoke-static {p3}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;->-$$Nest$fget_to(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object p3

    invoke-virtual {p3}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getAbsPath()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/metamoji/sd/SdUtils;->tagsFromPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object p3

    .line 1443
    invoke-static {p1, p2, p3}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->distributeMultiNotesToMultiBoxesForContextMenu(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Ljava/lang/String;Ljava/util/List;)V

    return-void

    .line 1423
    :pswitch_9
    instance-of p1, p3, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;

    if-eqz p1, :cond_1

    .line 1424
    check-cast p3, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;

    .line 1425
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    sget v0, Lcom/metamoji/noteanytime/R$id;->cabinet_node_view:I

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    .line 1426
    invoke-static {p3}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;->-$$Nest$fget_from(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v2

    .line 1427
    invoke-static {p3}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;->-$$Nest$fget_to(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v4

    .line 1428
    invoke-static {p3}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;->-$$Nest$fget_to(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getAbsPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/sd/SdUtils;->tagsFromPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 1429
    invoke-static {p3}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;->-$$Nest$fget_fromDocIds(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    .line 1431
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_activity:Landroidx/fragment/app/FragmentActivity;

    invoke-static/range {v0 .. v5}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->deliverNoteForContextmenu(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/NoteListViewFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void

    .line 1415
    :pswitch_a
    instance-of p1, p3, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;

    if-eqz p1, :cond_1

    .line 1416
    check-cast p3, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;

    .line 1417
    invoke-static {p3}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;->-$$Nest$fget_fromDocIds(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p3}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;->-$$Nest$fget_from(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getAbsPath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;->-$$Nest$fget_from(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->copyNoteForContextmenu(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 1418
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_activity:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p3}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;->-$$Nest$fget_to(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object p2

    invoke-static {p3}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;->-$$Nest$fget_from(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam2;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object p3

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_folderChangeEventListener:Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;

    invoke-static {p1, p2, p3, v0}, Lcom/metamoji/noteanytime/MainActivity;->pasteForContextmenu(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V

    return-void

    .line 1407
    :pswitch_b
    instance-of p1, p3, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam;

    if-eqz p1, :cond_1

    .line 1408
    check-cast p3, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam;

    .line 1409
    invoke-static {p3}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam;->-$$Nest$fget_from(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/noteanytime/MainActivity;->moveFolderForContextmenu(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V

    .line 1410
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_activity:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p3}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam;->-$$Nest$fget_to(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$DragContextMenuParam;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object p2

    invoke-static {}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->getCurrentFolder()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object p3

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_folderChangeEventListener:Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;

    invoke-static {p1, p2, p3, v0}, Lcom/metamoji/noteanytime/MainActivity;->pasteForContextmenu(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V

    return-void

    .line 1393
    :pswitch_c
    instance-of p1, p3, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    if-eqz p1, :cond_1

    .line 1394
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_activity:Landroidx/fragment/app/FragmentActivity;

    check-cast p3, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-static {p1, p3}, Lcom/metamoji/noteanytime/MainActivity;->exportNotes(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V

    return-void

    .line 1388
    :pswitch_d
    instance-of p1, p3, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    if-eqz p1, :cond_1

    .line 1389
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_activity:Landroidx/fragment/app/FragmentActivity;

    check-cast p3, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-static {p1, p3}, Lcom/metamoji/noteanytime/MainActivity;->importNotes(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V

    return-void

    .line 1376
    :pswitch_e
    instance-of p1, p3, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    if-eqz p1, :cond_1

    .line 1377
    check-cast p3, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-static {p3}, Lcom/metamoji/noteanytime/MainActivity;->moveFolderForContextmenu(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V

    return-void

    .line 1364
    :pswitch_f
    instance-of p1, p3, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    if-eqz p1, :cond_1

    .line 1365
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_activity:Landroidx/fragment/app/FragmentActivity;

    check-cast p3, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    iget-object p2, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_folderChangeEventListener:Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;

    invoke-static {p1, p3, p2}, Lcom/metamoji/noteanytime/MainActivity;->deleteFolder(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V

    return-void

    .line 1358
    :pswitch_10
    instance-of p1, p3, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    if-eqz p1, :cond_1

    .line 1359
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_activity:Landroidx/fragment/app/FragmentActivity;

    check-cast p3, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    iget-object p2, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_folderChangeEventListener:Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;

    invoke-static {p1, p3, p2}, Lcom/metamoji/noteanytime/MainActivity;->renameFolder(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V

    return-void

    .line 1352
    :pswitch_11
    instance-of p1, p3, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    if-eqz p1, :cond_1

    .line 1353
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_activity:Landroidx/fragment/app/FragmentActivity;

    check-cast p3, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    iget-object p2, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_folderChangeEventListener:Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;

    invoke-static {p1, p3, p2}, Lcom/metamoji/noteanytime/MainActivity;->createNewFolder(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public reinitalize()V
    .locals 7

    .line 763
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    .line 766
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_3

    const/4 v1, 0x0

    .line 767
    invoke-virtual {v0, v1, v2, v2}, Lcom/metamoji/dvm/DvmDriveManager;->getDrivesByGroupId(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v1

    .line 768
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->getSharedDriveRoot()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v4

    if-eqz v1, :cond_1

    .line 770
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    if-nez v4, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v3

    :goto_2
    if-eq v1, v4, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    move v1, v3

    :goto_3
    if-nez v1, :cond_9

    .line 775
    invoke-virtual {v0, v2, v3}, Lcom/metamoji/dvm/DvmDriveManager;->getDriveGroupAllWithOrderAscending(ZZ)Ljava/util/List;

    move-result-object v0

    .line 776
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->getCRBoxOldRoot()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v4

    .line 777
    invoke-static {}, Lcom/metamoji/ui/cabinet/CabinetUtils;->getActiveGroupId()Ljava/lang/String;

    move-result-object v5

    if-eqz v0, :cond_6

    .line 780
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_4

    goto :goto_4

    .line 783
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v2, :cond_5

    .line 785
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/dvm/fw/bean/DvmDriveGroupBean;

    if-eqz v0, :cond_5

    .line 786
    invoke-virtual {v0}, Lcom/metamoji/dvm/fw/bean/DvmDriveGroupBean;->getGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->equalsString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    move v0, v2

    goto :goto_5

    :cond_6
    :goto_4
    move v0, v3

    :goto_5
    if-eqz v4, :cond_7

    move v3, v2

    :cond_7
    if-eq v0, v3, :cond_8

    move v1, v2

    .line 794
    :cond_8
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->getCRBoxRoot()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 796
    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->equalsString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_6

    :cond_9
    move v2, v1

    :cond_a
    :goto_6
    if-eqz v2, :cond_b

    .line 804
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->initAdapter()V

    .line 805
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_treeView:Lcom/metamoji/ui/cabinet/TreeView;

    invoke-direct {p0, v0}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->setAdapter(Lcom/metamoji/ui/cabinet/TreeView;)V

    return-void

    .line 810
    :cond_b
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_activity:Landroidx/fragment/app/FragmentActivity;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_folderClickListener:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$OnFolderClickListener;

    iget-object v2, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_treeView:Lcom/metamoji/ui/cabinet/TreeView;

    invoke-static {v0, v1, v2}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->correctCurrent(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$OnFolderClickListener;Lcom/metamoji/ui/cabinet/TreeView;)V

    return-void
.end method

.method public setSelectedFolder(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)Z
    .locals 2

    .line 1170
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v0

    .line 1171
    sget-object v1, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_adapter:Lcom/metamoji/ui/cabinet/TreeAdapter;

    invoke-virtual {v1, p1}, Lcom/metamoji/ui/cabinet/TreeAdapter;->setSelectedItem(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1176
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$8;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$8;-><init>(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public updateSelectedFolder(Lcom/metamoji/ui/cabinet/CabinetTreeItem;Z)V
    .locals 7

    .line 820
    sget-object v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$9;->$SwitchMap$com$metamoji$ui$cabinet$CabinetTreeItem$Type:[I

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_4

    .line 858
    :pswitch_1
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    .line 859
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v2

    .line 860
    invoke-virtual {v0, v2}, Lcom/metamoji/dvm/DvmDriveManager;->getGroupIdFromDriveId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 862
    invoke-static {}, Lcom/metamoji/ui/cabinet/CabinetUtils;->getActiveGroupId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 864
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 865
    sget-object v2, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_adapter:Lcom/metamoji/ui/cabinet/TreeAdapter;

    sget-object v3, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->CRBOX_FOLDER_INFO:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {v2, v3}, Lcom/metamoji/ui/cabinet/TreeAdapter;->expand(Ljava/lang/Object;)V

    goto :goto_0

    .line 868
    :cond_0
    sget-object v3, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_adapter:Lcom/metamoji/ui/cabinet/TreeAdapter;

    sget-object v4, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->CRBOXOLD_FOLDER_INFO:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {v3, v4}, Lcom/metamoji/ui/cabinet/TreeAdapter;->expand(Ljava/lang/Object;)V

    .line 869
    invoke-virtual {v0, v2}, Lcom/metamoji/dvm/DvmDriveManager;->getGroupNameByGroupId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 870
    sget-object v4, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_adapter:Lcom/metamoji/ui/cabinet/TreeAdapter;

    invoke-static {v2, v3}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->createAsCRBoxYear(Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/metamoji/ui/cabinet/TreeAdapter;->expand(Ljava/lang/Object;)V

    goto :goto_0

    .line 875
    :cond_1
    sget-object v2, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_adapter:Lcom/metamoji/ui/cabinet/TreeAdapter;

    sget-object v3, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->SHARED_DRIVE_PARENT_FOLDER_INFO:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {v2, v3}, Lcom/metamoji/ui/cabinet/TreeAdapter;->expand(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    if-eqz p2, :cond_9

    .line 879
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTags()Ljava/util/List;

    move-result-object p2

    .line 880
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    .line 881
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v3

    .line 882
    invoke-virtual {v0, v3}, Lcom/metamoji/dvm/DvmDriveManager;->getGroupIdFromDriveId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move v4, v1

    :goto_1
    if-ge v4, v2, :cond_9

    if-nez v4, :cond_4

    if-eqz v0, :cond_3

    .line 886
    sget-object v5, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_adapter:Lcom/metamoji/ui/cabinet/TreeAdapter;

    invoke-static {v3, v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->createAsCRBoxClass(Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/metamoji/ui/cabinet/TreeAdapter;->expand(Ljava/lang/Object;)V

    goto :goto_2

    .line 889
    :cond_3
    sget-object v5, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_adapter:Lcom/metamoji/ui/cabinet/TreeAdapter;

    invoke-static {v3}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->createAsSharedDrive(Ljava/lang/String;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/metamoji/ui/cabinet/TreeAdapter;->expand(Ljava/lang/Object;)V

    goto :goto_2

    .line 892
    :cond_4
    sget-object v5, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_adapter:Lcom/metamoji/ui/cabinet/TreeAdapter;

    .line 893
    invoke-interface {p2, v1, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lcom/metamoji/sd/SdUtils;->pathFromTags(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    .line 892
    invoke-static {v6, v3}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->createAsFolder(Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/metamoji/ui/cabinet/TreeAdapter;->expand(Ljava/lang/Object;)V

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 823
    :pswitch_2
    sget-object v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_adapter:Lcom/metamoji/ui/cabinet/TreeAdapter;

    sget-object v2, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->CABINET_ROOT_FOLDER_INFO:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/cabinet/TreeAdapter;->expand(Ljava/lang/Object;)V

    .line 824
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getAbsPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->getTagNameList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 825
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v1

    :goto_3
    if-ge v3, v2, :cond_9

    add-int/lit8 v4, v2, -0x1

    if-ne v4, v3, :cond_5

    if-eqz p2, :cond_6

    .line 828
    :cond_5
    sget-object v4, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_adapter:Lcom/metamoji/ui/cabinet/TreeAdapter;

    add-int/lit8 v5, v3, 0x1

    .line 829
    invoke-virtual {v0, v1, v5}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/metamoji/ui/cabinet/CabinetUtils;->createAbsPath(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 828
    invoke-static {v5, v6}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->createAsFolder(Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/metamoji/ui/cabinet/TreeAdapter;->expand(Ljava/lang/Object;)V

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 837
    :pswitch_3
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getGroupId()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 839
    invoke-static {}, Lcom/metamoji/ui/cabinet/CabinetUtils;->getActiveGroupId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 841
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 842
    sget-object p2, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_adapter:Lcom/metamoji/ui/cabinet/TreeAdapter;

    sget-object v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->CRBOX_FOLDER_INFO:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {p2, v0}, Lcom/metamoji/ui/cabinet/TreeAdapter;->expand(Ljava/lang/Object;)V

    goto :goto_4

    .line 845
    :cond_7
    sget-object v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_adapter:Lcom/metamoji/ui/cabinet/TreeAdapter;

    sget-object v1, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->CRBOXOLD_FOLDER_INFO:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/cabinet/TreeAdapter;->expand(Ljava/lang/Object;)V

    .line 846
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    .line 847
    invoke-virtual {v0, p2}, Lcom/metamoji/dvm/DvmDriveManager;->getGroupNameByGroupId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 848
    sget-object v1, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_adapter:Lcom/metamoji/ui/cabinet/TreeAdapter;

    invoke-static {p2, v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->createAsCRBoxYear(Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/metamoji/ui/cabinet/TreeAdapter;->expand(Ljava/lang/Object;)V

    goto :goto_4

    .line 853
    :cond_8
    sget-object p2, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_adapter:Lcom/metamoji/ui/cabinet/TreeAdapter;

    sget-object v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->SHARED_DRIVE_PARENT_FOLDER_INFO:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {p2, v0}, Lcom/metamoji/ui/cabinet/TreeAdapter;->expand(Ljava/lang/Object;)V

    goto :goto_4

    .line 900
    :pswitch_4
    sget-object p2, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_adapter:Lcom/metamoji/ui/cabinet/TreeAdapter;

    sget-object v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->CRBOXOLD_FOLDER_INFO:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {p2, v0}, Lcom/metamoji/ui/cabinet/TreeAdapter;->expand(Ljava/lang/Object;)V

    .line 914
    :cond_9
    :goto_4
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->setSelectedFolder(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)Z

    .line 915
    sget-object p2, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->_adapter:Lcom/metamoji/ui/cabinet/TreeAdapter;

    invoke-virtual {p2, p1}, Lcom/metamoji/ui/cabinet/TreeAdapter;->updateState(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
