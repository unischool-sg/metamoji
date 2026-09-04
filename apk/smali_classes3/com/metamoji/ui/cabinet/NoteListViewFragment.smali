.class public Lcom/metamoji/ui/cabinet/NoteListViewFragment;
.super Lcom/metamoji/ui/cabinet/CabinetNodeViewFragment;
.source "NoteListViewFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/metamoji/ui/MenuEventListener;
.implements Lcom/metamoji/nt/ICommandProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;,
        Lcom/metamoji/ui/cabinet/NoteListViewFragment$LowMemoryListener;,
        Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;,
        Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListViewDragListener;,
        Lcom/metamoji/ui/cabinet/NoteListViewFragment$MvDispNoteType;,
        Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalDocumentViewHolder;,
        Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleDocumentViewHolder;,
        Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalViewHolder;,
        Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleViewHolder;,
        Lcom/metamoji/ui/cabinet/NoteListViewFragment$IDriveDocumentEditorOpener;,
        Lcom/metamoji/ui/cabinet/NoteListViewFragment$DragContextMenuParam;,
        Lcom/metamoji/ui/cabinet/NoteListViewFragment$DragContextMenuParam2;,
        Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleNewButtonViewHolder;,
        Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleHeaderViewHolder;,
        Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleNewDriveViewHolder;,
        Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleFolderViewHolder;,
        Lcom/metamoji/ui/cabinet/NoteListViewFragment$ViewHolder;,
        Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalFolderViewHolder;,
        Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalNewDriveViewHolder;,
        Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalNewButtonViewHolder;
    }
.end annotation


# static fields
.field static final TAG_LIBRARY_VIEW_DIALOG:Ljava/lang/String; = "NoteListViewFragment#showLibraryViewDialog"

.field private static static_startSyncFlg:Z


# instance fields
.field private _NoteListMode:Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;

.field private _activity:Landroidx/fragment/app/FragmentActivity;

.field private _commandManager:Lcom/metamoji/nt/NtCommandManager;

.field private _currentDisplayedFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

.field private _currentItem:Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

.field private _currentView:Landroid/view/View;

.field private _detailModeBtn:Landroid/widget/ImageButton;

.field private _detailView:Lcom/metamoji/ui/cabinet/DetailGridView;

.field private _detailViewAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;",
            ">;"
        }
    .end annotation
.end field

.field private _detailViewOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private _dragFlg:Z

.field private _driveMemberBtn:Lcom/metamoji/ui/common/UiButton;

.field private _folderChangeEventListener:Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;

.field private _folderClickListener:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$OnFolderClickListener;

.field private _folderPathMgr:Lcom/metamoji/ui/cabinet/FolderPathManager;

.field private _forLocOnSc:[I

.field _imageCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private _inviteBtn:Lcom/metamoji/ui/common/UiButton;

.field private _isEditing:Z

.field private _isTrash:Z

.field private _itemLinearLayout:Landroid/widget/LinearLayout;

.field private _itemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;",
            ">;"
        }
    .end annotation
.end field

.field private _longClickStarted:Z

.field private _longPressFlg:Z

.field private _longPressTimer:Lcom/metamoji/cm/UiTimer;

.field _lowMemoryListener:Lcom/metamoji/ui/cabinet/NoteListViewFragment$LowMemoryListener;

.field private _multiSelectBtn:Lcom/metamoji/ui/common/UiButton;

.field private _multiSelectCancelBtn:Lcom/metamoji/ui/common/UiButton;

.field private _multiSelectDeleteBtn:Landroid/widget/Button;

.field private _multiSelectEtcBtn:Lcom/metamoji/ui/common/UiButton;

.field private _multiSelectItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;",
            ">;"
        }
    .end annotation
.end field

.field private _multiSelectMode:Z

.field private _multiSelectRevertBtn:Lcom/metamoji/ui/common/UiButton;

.field private _multiSelectSelectBtn:Lcom/metamoji/ui/common/UiButton;

.field private _multiSelectStarBtn:Lcom/metamoji/ui/common/UiButton;

.field private _multiselectLayout:Landroid/widget/FrameLayout;

.field private _newDriveBtn:Landroid/widget/ImageButton;

.field private _newNoteBtn:Landroid/widget/ImageButton;

.field private _nicknameTaskMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/view/View;",
            "Ljava/util/concurrent/Future<",
            "*>;>;"
        }
    .end annotation
.end field

.field private _normalLayout:Landroid/widget/FrameLayout;

.field private _normalModeBtn:Landroid/widget/ImageButton;

.field private _normalNewButtonOnClickListener:Landroid/view/View$OnClickListener;

.field private _normalNewButtonOnTouchListener:Landroid/view/View$OnTouchListener;

.field private _normalNewDriveOnClickListener:Landroid/view/View$OnClickListener;

.field private _normalPressing:Z

.field private _normalThumbOnTouch_x:F

.field private _normalThumbOnTouch_y:F

.field private _normalView:Lcom/metamoji/ui/cabinet/NoteListGridView;

.field private _normalViewAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;",
            ">;"
        }
    .end annotation
.end field

.field private _normalViewOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private _noteCountLabel:Landroid/widget/TextView;

.field private _res:Landroid/content/res/Resources;

.field private _rootView:Landroid/view/View;

.field private _searchLabel:Landroid/widget/TextView;

.field private _searchLabelDmy:Landroid/view/View;

.field private _searchLabelLeft:Landroid/view/View;

.field private _searchLabelRight:Landroid/view/View;

.field private _selectedDocId:Ljava/lang/String;

.field private _shareBtn:Landroid/widget/ImageButton;

.field private _shortPressFlg:Z

.field private _shortPressTimer:Lcom/metamoji/cm/UiTimer;

.field private _simpleModeBtn:Landroid/widget/ImageButton;

.field private _simpleView:Lcom/metamoji/ui/cabinet/SimpleGridView;

.field private _simpleViewAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;",
            ">;"
        }
    .end annotation
.end field

.field private _simpleViewOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private _squeezeShare:Z

.field private _startDragFlg:Z

.field private _syncUser:Z

.field private _thumbTaskMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/view/View;",
            "Ljava/util/concurrent/Future<",
            "*>;>;"
        }
    .end annotation
.end field

.field private _touchStartPoint:Landroid/graphics/Point;

.field private _trashDeleteBtn:Lcom/metamoji/ui/common/UiButton;

.field private _userDefaults:Lcom/metamoji/nt/NtUserDefaults;

.field private _waitingCount:I

.field m_handler:Landroid/os/Handler;

.field private m_nowPage:I

.field private m_pageCounter:I

.field private m_pagingButton:Landroid/view/View;

.field private m_pagingNext:Landroid/widget/ImageButton;

.field private m_pagingNowPage:Landroid/widget/TextView;

.field private m_pagingPrev:Landroid/widget/ImageButton;

.field m_receiver:Ljava/lang/Runnable;

.field private thisViewWidth:I


# direct methods
.method public static synthetic $r8$lambda$Zr9GPNIl9JT3zFA7jN53h7_PotY(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->lambda$prepareSimpleView$1(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$x4tqG7BZNGM0DPaXwXxRA7NA6uo(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->lambda$prepareNormalView$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fget_NoteListMode(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_NoteListMode:Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_activity(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Landroidx/fragment/app/FragmentActivity;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_activity:Landroidx/fragment/app/FragmentActivity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_currentDisplayedFolder(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_currentDisplayedFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_currentItem(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_currentItem:Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_currentView(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_currentView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_detailModeBtn(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_detailModeBtn:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_detailView(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/DetailGridView;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_detailView:Lcom/metamoji/ui/cabinet/DetailGridView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_folderChangeEventListener(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_folderChangeEventListener:Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_forLocOnSc(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)[I
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_forLocOnSc:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_inviteBtn(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/common/UiButton;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_inviteBtn:Lcom/metamoji/ui/common/UiButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_isTrash(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_isTrash:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fget_itemLinearLayout(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_itemLinearLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_itemList(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_itemList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_multiSelectItems(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectItems:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_multiSelectMode(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectMode:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fget_normalModeBtn(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_normalModeBtn:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_normalNewButtonOnClickListener(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_normalNewButtonOnClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_normalNewButtonOnTouchListener(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Landroid/view/View$OnTouchListener;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_normalNewButtonOnTouchListener:Landroid/view/View$OnTouchListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_normalNewDriveOnClickListener(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_normalNewDriveOnClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_normalView(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/NoteListGridView;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_normalView:Lcom/metamoji/ui/cabinet/NoteListGridView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_res(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Landroid/content/res/Resources;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_res:Landroid/content/res/Resources;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_shareBtn(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_shareBtn:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_simpleModeBtn(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_simpleModeBtn:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_simpleView(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/SimpleGridView;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_simpleView:Lcom/metamoji/ui/cabinet/SimpleGridView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_squeezeShare(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_squeezeShare:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fget_userDefaults(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/nt/NtUserDefaults;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_userDefaults:Lcom/metamoji/nt/NtUserDefaults;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetm_nowPage(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->m_nowPage:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fput_NoteListMode(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_NoteListMode:Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;

    return-void
.end method

.method static bridge synthetic -$$Nest$fput_isEditing(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_isEditing:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fput_itemLinearLayout(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Landroid/widget/LinearLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_itemLinearLayout:Landroid/widget/LinearLayout;

    return-void
.end method

.method static bridge synthetic -$$Nest$fput_itemList(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_itemList:Ljava/util/ArrayList;

    return-void
.end method

.method static bridge synthetic -$$Nest$fput_longPressFlg(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_longPressFlg:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fput_selectedDocId(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_selectedDocId:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fput_shortPressFlg(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_shortPressFlg:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fput_squeezeShare(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_squeezeShare:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fput_userDefaults(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Lcom/metamoji/nt/NtUserDefaults;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_userDefaults:Lcom/metamoji/nt/NtUserDefaults;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputm_nowPage(Lcom/metamoji/ui/cabinet/NoteListViewFragment;I)V
    .locals 0

    iput p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->m_nowPage:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputthisViewWidth(Lcom/metamoji/ui/cabinet/NoteListViewFragment;I)V
    .locals 0

    iput p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->thisViewWidth:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mexportNote(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Lcom/metamoji/nt/doceditor/NtDocumentEditorForQuickEdit;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->exportNote(Lcom/metamoji/nt/doceditor/NtDocumentEditorForQuickEdit;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetDateString(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->getDateString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetItem(Lcom/metamoji/ui/cabinet/NoteListViewFragment;I)Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->getItem(I)Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetItemList(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Lcom/metamoji/ui/cabinet/CabinetTreeItem;)Ljava/util/ArrayList;
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->getItemList(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetNoteCountString(Lcom/metamoji/ui/cabinet/NoteListViewFragment;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->getNoteCountString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhandleMultiDeleteButtonTap(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->handleMultiDeleteButtonTap()V

    return-void
.end method

.method static bridge synthetic -$$Nest$misShareTemplate(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->isShareTemplate(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misTemplate(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->isTemplate(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mnewNoteTemplateBasedOnNote(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/nt/NtNoteTemplateSettings;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->newNoteTemplateBasedOnNote(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/nt/NtNoteTemplateSettings;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnewNoteTemplateBasedOnNote2(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/nt/NtNoteTemplateSettings;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->newNoteTemplateBasedOnNote2(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/nt/NtNoteTemplateSettings;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mprepareTagView(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalDocumentViewHolder;Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->prepareTagView(Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalDocumentViewHolder;Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetMultiselectCheckVisibility(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Landroid/widget/ImageView;Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->setMultiselectCheckVisibility(Landroid/widget/ImageView;Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetNormalViewNumColumns(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->setNormalViewNumColumns()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetShareIconVisibility(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Landroid/widget/ImageView;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->setShareIconVisibility(Landroid/widget/ImageView;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetSimpleSyncWaitVisibility(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Landroid/widget/ImageView;Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->setSimpleSyncWaitVisibility(Landroid/widget/ImageView;Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetSyncImageVisibility(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Landroid/widget/ImageView;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->setSyncImageVisibility(Landroid/widget/ImageView;Landroid/widget/ImageView;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetSyncWaitVisibility(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Landroid/widget/ImageView;Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->setSyncWaitVisibility(Landroid/widget/ImageView;Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetTemplateIconVisibility(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Landroid/widget/ImageView;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->setTemplateIconVisibility(Landroid/widget/ImageView;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetThumbnailImage(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;Landroid/widget/ImageView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->setThumbnailImage(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;Landroid/widget/ImageView;Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowDragContextMenu(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Landroid/view/View;Lcom/metamoji/ui/cabinet/NoteListViewFragment$DragContextMenuParam;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->showDragContextMenu(Landroid/view/View;Lcom/metamoji/ui/cabinet/NoteListViewFragment$DragContextMenuParam;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowDragContextMenuForNote(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Landroid/view/View;Lcom/metamoji/ui/cabinet/NoteListViewFragment$DragContextMenuParam2;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->showDragContextMenuForNote(Landroid/view/View;Lcom/metamoji/ui/cabinet/NoteListViewFragment$DragContextMenuParam2;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowItemContextMenu(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Landroid/view/View;Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->showItemContextMenu(Landroid/view/View;Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowLibraryViewDialog(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->showLibraryViewDialog()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowNewDriveDialog(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->showNewDriveDialog()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputstatic_startSyncFlg(Z)V
    .locals 0

    sput-boolean p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->static_startSyncFlg:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$smeditDocument(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/ui/cabinet/NoteListViewFragment$IDriveDocumentEditorOpener;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->editDocument(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/ui/cabinet/NoteListViewFragment$IDriveDocumentEditorOpener;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smeditShareNoteInDrive(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/ui/cabinet/NoteListViewFragment$IDriveDocumentEditorOpener;Z)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->editShareNoteInDrive(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/ui/cabinet/NoteListViewFragment$IDriveDocumentEditorOpener;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smgetTitleString(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->getTitleString(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smisShareNote(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->isShareNote(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 3

    .line 150
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/CabinetNodeViewFragment;-><init>()V

    const/4 v0, 0x0

    .line 462
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_squeezeShare:Z

    .line 470
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectMode:Z

    const/4 v1, 0x0

    .line 488
    iput-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->m_pagingButton:Landroid/view/View;

    .line 489
    iput-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->m_pagingPrev:Landroid/widget/ImageButton;

    .line 490
    iput-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->m_pagingNext:Landroid/widget/ImageButton;

    .line 491
    iput-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->m_pagingNowPage:Landroid/widget/TextView;

    .line 492
    iput v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->m_nowPage:I

    .line 493
    iput v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->m_pageCounter:I

    .line 499
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_isTrash:Z

    .line 517
    iput-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_shortPressTimer:Lcom/metamoji/cm/UiTimer;

    .line 518
    iput-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_longPressTimer:Lcom/metamoji/cm/UiTimer;

    .line 520
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_shortPressFlg:Z

    .line 521
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_longPressFlg:Z

    .line 522
    iput-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_currentView:Landroid/view/View;

    .line 523
    iput-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_currentItem:Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    .line 524
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_dragFlg:Z

    .line 525
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_startDragFlg:Z

    .line 526
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_thumbTaskMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 527
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_nicknameTaskMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 529
    iput v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_waitingCount:I

    .line 843
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_syncUser:Z

    const/4 v2, 0x2

    .line 2058
    new-array v2, v2, [I

    iput-object v2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_forLocOnSc:[I

    .line 2739
    new-instance v2, Lcom/metamoji/ui/cabinet/NoteListViewFragment$27;

    invoke-direct {v2, p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$27;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)V

    iput-object v2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_normalNewButtonOnClickListener:Landroid/view/View$OnClickListener;

    .line 2745
    new-instance v2, Lcom/metamoji/ui/cabinet/NoteListViewFragment$28;

    invoke-direct {v2, p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$28;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)V

    iput-object v2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_normalNewDriveOnClickListener:Landroid/view/View$OnClickListener;

    .line 2751
    new-instance v2, Lcom/metamoji/ui/cabinet/NoteListViewFragment$29;

    invoke-direct {v2, p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$29;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)V

    iput-object v2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_normalNewButtonOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 2769
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_longClickStarted:Z

    .line 2772
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_normalPressing:Z

    .line 3708
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_imageCache:Ljava/util/WeakHashMap;

    .line 3742
    iput-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_lowMemoryListener:Lcom/metamoji/ui/cabinet/NoteListViewFragment$LowMemoryListener;

    .line 4128
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->m_handler:Landroid/os/Handler;

    .line 4301
    iput-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_selectedDocId:Ljava/lang/String;

    return-void
.end method

.method private RemoveMultiselectItem(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)V
    .locals 4

    .line 2688
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2690
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    .line 2691
    invoke-virtual {v2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDocId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDocId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2692
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private cancelNickNameTaskAll()V
    .locals 3

    .line 6960
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_nicknameTaskMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    const/4 v2, 0x0

    .line 6961
    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    .line 6963
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_nicknameTaskMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method private cancelThumbTaskAll()V
    .locals 3

    .line 6953
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_thumbTaskMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    const/4 v2, 0x0

    .line 6954
    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    .line 6956
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_thumbTaskMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method private changeMultiselectButtonEnabled()V
    .locals 4

    .line 2700
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 2702
    :goto_0
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectDeleteBtn:Landroid/widget/Button;

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2703
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectStarBtn:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {v3, v0}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    .line 2704
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectRevertBtn:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {v3, v0}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    .line 2707
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->isEnabledMultiSelectEtcBtn()Z

    move-result v0

    .line 2708
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectEtcBtn:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {v3, v0}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    .line 2712
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    .line 2713
    invoke-static {v3}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_type(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)I

    move-result v3

    if-ne v1, v3, :cond_1

    goto :goto_1

    :cond_2
    move v1, v2

    .line 2718
    :goto_1
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectSelectBtn:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    .line 2722
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectDeleteBtn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2725
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_currentDisplayedFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2727
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectDeleteBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_3
    return-void
.end method

.method private changeMultiselectCheckVisibility(Landroid/widget/ImageView;Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)V
    .locals 6

    .line 2593
    iget-boolean v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectMode:Z

    if-eqz v0, :cond_3

    .line 2595
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_1

    .line 2598
    iget-object v4, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    .line 2599
    invoke-virtual {v4}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDocId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDocId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v1, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    .line 2611
    :goto_1
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectItems:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 2608
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2609
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_2

    .line 2611
    :cond_2
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x2

    .line 2612
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 2615
    :goto_2
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->changeMultiselectButtonEnabled()V

    :cond_3
    return-void
.end method

.method private changeMultiselectCheckVisibility(Z)V
    .locals 8

    .line 2622
    iget-boolean v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectMode:Z

    if-eqz v0, :cond_9

    .line 2623
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_8

    .line 2625
    invoke-direct {p0, v1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->getItem(I)Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    move-result-object v2

    .line 2626
    invoke-static {v2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_type(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)I

    move-result v3

    const/4 v4, 0x1

    if-eq v4, v3, :cond_0

    goto/16 :goto_3

    .line 2629
    :cond_0
    invoke-direct {p0, v2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->isMultiSelectItem(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Z

    move-result v3

    if-ne v3, p1, :cond_1

    goto/16 :goto_3

    .line 2632
    :cond_1
    invoke-direct {p0, v2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->getItemIndexForItem(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)I

    move-result v3

    if-gez v3, :cond_2

    goto :goto_3

    .line 2638
    :cond_2
    iget-object v5, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_NoteListMode:Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;

    invoke-virtual {v5}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;->ordinal()I

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-eqz v5, :cond_4

    if-eq v5, v6, :cond_3

    goto :goto_3

    .line 2653
    :cond_3
    iget-object v5, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_simpleView:Lcom/metamoji/ui/cabinet/SimpleGridView;

    if-eqz v5, :cond_5

    .line 2654
    invoke-virtual {v5, v3}, Lcom/metamoji/ui/cabinet/SimpleGridView;->getItemView(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 2656
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleViewHolder;

    if-eqz v3, :cond_5

    .line 2657
    invoke-virtual {v3}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleViewHolder;->getType()I

    move-result v5

    if-ne v4, v5, :cond_5

    .line 2658
    check-cast v3, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleDocumentViewHolder;

    .line 2659
    iget-object v3, v3, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleDocumentViewHolder;->_multiselectCheck:Landroid/widget/ImageView;

    :goto_1
    move-object v7, v3

    goto :goto_2

    .line 2640
    :cond_4
    iget-object v5, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_normalView:Lcom/metamoji/ui/cabinet/NoteListGridView;

    if-eqz v5, :cond_5

    .line 2641
    invoke-virtual {v5, v3}, Lcom/metamoji/ui/cabinet/NoteListGridView;->getItemView(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 2643
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalViewHolder;

    if-eqz v3, :cond_5

    .line 2644
    invoke-virtual {v3}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalViewHolder;->getType()I

    move-result v5

    if-ne v4, v5, :cond_5

    .line 2645
    check-cast v3, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalDocumentViewHolder;

    .line 2646
    iget-object v3, v3, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalDocumentViewHolder;->_multiselectCheck:Landroid/widget/ImageView;

    goto :goto_1

    :cond_5
    :goto_2
    if-eqz p1, :cond_6

    .line 2669
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v7, :cond_7

    .line 2671
    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_3

    .line 2675
    :cond_6
    invoke-direct {p0, v2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->RemoveMultiselectItem(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)V

    if-eqz v7, :cond_7

    .line 2677
    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setImageLevel(I)V

    :cond_7
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2681
    :cond_8
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->changeMultiselectButtonEnabled()V

    :cond_9
    return-void
.end method

.method private changeStarInfoSetting(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;Ljava/lang/Object;Z)V
    .locals 3

    .line 6638
    invoke-direct {p0, p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->getItemIndexForItem(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)I

    move-result p3

    if-ltz p3, :cond_5

    .line 6641
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_NoteListMode:Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;

    sget-object v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;->NoteListModeType_Normal:Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_2

    .line 6642
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_normalView:Lcom/metamoji/ui/cabinet/NoteListGridView;

    invoke-virtual {v0, p3}, Lcom/metamoji/ui/cabinet/NoteListGridView;->getItemView(I)Landroid/view/View;

    move-result-object p3

    if-nez p3, :cond_0

    goto :goto_0

    .line 6644
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalViewHolder;

    if-eqz p3, :cond_5

    .line 6645
    invoke-virtual {p3}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalViewHolder;->getType()I

    move-result v0

    if-eq v2, v0, :cond_1

    goto :goto_0

    .line 6646
    :cond_1
    check-cast p3, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalDocumentViewHolder;

    .line 6648
    invoke-virtual {p1, p2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->SetMetaData(Ljava/lang/Object;)V

    .line 6650
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p0, p3, p1, p2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->updateIconVisibilityForNormal(Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalDocumentViewHolder;Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;Landroidx/fragment/app/FragmentActivity;)V

    .line 6651
    invoke-static {p1, v2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fput_isWaitingSync(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;Z)V

    .line 6652
    iget-object p2, p3, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalDocumentViewHolder;->_cabinetSyncWait:Landroid/widget/ImageView;

    invoke-direct {p0, p2, p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->setSyncWaitVisibility(Landroid/widget/ImageView;Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)V

    return-void

    .line 6673
    :cond_2
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_NoteListMode:Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;

    sget-object v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;->NoteListModeType_Simple:Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;

    if-ne v0, v1, :cond_5

    .line 6674
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_simpleView:Lcom/metamoji/ui/cabinet/SimpleGridView;

    invoke-virtual {v0, p3}, Lcom/metamoji/ui/cabinet/SimpleGridView;->getItemView(I)Landroid/view/View;

    move-result-object p3

    if-nez p3, :cond_3

    goto :goto_0

    .line 6678
    :cond_3
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleViewHolder;

    if-eqz p3, :cond_5

    .line 6679
    invoke-virtual {p3}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleViewHolder;->getType()I

    move-result v0

    if-eq v2, v0, :cond_4

    goto :goto_0

    .line 6683
    :cond_4
    check-cast p3, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleDocumentViewHolder;

    .line 6684
    invoke-virtual {p1, p2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->SetMetaData(Ljava/lang/Object;)V

    .line 6686
    invoke-virtual {p0, p3, p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->updateIconVisibilityForSimple(Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleDocumentViewHolder;Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)V

    .line 6687
    invoke-static {p1, v2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fput_isWaitingSync(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;Z)V

    .line 6688
    iget-object p2, p3, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleDocumentViewHolder;->_cabinetSyncWait:Landroid/widget/ImageView;

    invoke-direct {p0, p2, p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->setSyncWaitVisibility(Landroid/widget/ImageView;Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private changeTemplateIconVisibility(Landroid/widget/ImageView;Z)V
    .locals 0

    .line 2735
    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->setTemplateIconVisibility(Landroid/widget/ImageView;Z)V

    return-void
.end method

.method private checkCurrentDisplayedFolderExistence()V
    .locals 2

    .line 4404
    sget-object v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$65;->$SwitchMap$com$metamoji$ui$cabinet$CabinetTreeItem$Type:[I

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_currentDisplayedFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 4422
    :pswitch_0
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_currentDisplayedFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/dvm/DvmDriveManager;->getDocumentManagerByDriveId(Ljava/lang/String;)Lcom/metamoji/sd/SdDriveDocumentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4423
    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->getManagedObjectContextManager()Lcom/metamoji/sd/SdDriveContentsMOCManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->isDiscarded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4424
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_currentDisplayedFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getParent()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_currentDisplayedFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    return-void

    .line 4408
    :pswitch_1
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_currentDisplayedFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/dvm/DvmUtil;->sdDocumentManager(Ljava/lang/String;)Lcom/metamoji/sd/SdDriveDocumentManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4409
    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->getManagedObjectContextManager()Lcom/metamoji/sd/SdDriveContentsMOCManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->isDiscarded()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4410
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_currentDisplayedFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getAbsPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/sd/SdDriveDocumentManager;->existsFolder(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4411
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_currentDisplayedFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getParent()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_currentDisplayedFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    .line 4412
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->checkCurrentDisplayedFolderExistence()V

    return-void

    .line 4415
    :cond_1
    sget-object v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->SHARED_DRIVE_PARENT_FOLDER_INFO:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_currentDisplayedFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private clearLongPressTimer()V
    .locals 1

    .line 3699
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_longPressTimer:Lcom/metamoji/cm/UiTimer;

    if-eqz v0, :cond_0

    .line 3700
    invoke-virtual {v0}, Lcom/metamoji/cm/UiTimer;->cancel()V

    const/4 v0, 0x0

    .line 3701
    iput-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_longPressTimer:Lcom/metamoji/cm/UiTimer;

    :cond_0
    return-void
.end method

.method private clearShortPressTimer()V
    .locals 1

    .line 3666
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_shortPressTimer:Lcom/metamoji/cm/UiTimer;

    if-eqz v0, :cond_0

    .line 3667
    invoke-virtual {v0}, Lcom/metamoji/cm/UiTimer;->cancel()V

    const/4 v0, 0x0

    .line 3668
    iput-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_shortPressTimer:Lcom/metamoji/cm/UiTimer;

    :cond_0
    return-void
.end method

.method private copyAndEditNote(Ljava/lang/Object;)V
    .locals 8

    .line 6437
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->isBusy()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6441
    :cond_0
    instance-of v0, p1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    if-eqz v0, :cond_1

    .line 6442
    check-cast p1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    const/4 v0, 0x1

    .line 6443
    invoke-static {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_type(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 6444
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDriveId()Ljava/lang/String;

    move-result-object v7

    .line 6445
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDocId()Ljava/lang/String;

    move-result-object v5

    .line 6448
    invoke-static {v7}, Lcom/metamoji/dvm/DvmUtil;->sdDocumentManager(Ljava/lang/String;)Lcom/metamoji/sd/SdDriveDocumentManager;

    move-result-object v4

    .line 6450
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v6

    .line 6452
    new-instance v2, Lcom/metamoji/ui/cabinet/NoteListViewFragment$54;

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$54;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Lcom/metamoji/sd/SdDriveDocumentManager;Ljava/lang/String;Lcom/metamoji/cm/CmTaskManager;Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Lcom/metamoji/cm/CmTaskManager;->runOnBackground(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private copyAndEditNoteAsNew(Ljava/lang/Object;)V
    .locals 4

    .line 3955
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->isBusy()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3958
    :cond_0
    instance-of v0, p1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    if-eqz v0, :cond_1

    .line 3959
    check-cast p1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    const/4 v0, 0x1

    .line 3960
    invoke-static {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_type(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 3962
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDriveId()Ljava/lang/String;

    move-result-object v0

    .line 3963
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDocId()Ljava/lang/String;

    move-result-object v1

    .line 3965
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v2

    new-instance v3, Lcom/metamoji/ui/cabinet/NoteListViewFragment$34;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$34;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)V

    invoke-virtual {v2, v3}, Lcom/metamoji/cm/CmTaskManager;->runOnBackground(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static copyNoteForContextmenu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 6717
    invoke-static {v0, v1, p0, p1, p2}, Lcom/metamoji/nt/cabinet/NtCabinetClipboard;->setData(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static copyNoteForContextmenu(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 6722
    invoke-static {v0, v1, p0, p1, p2}, Lcom/metamoji/nt/cabinet/NtCabinetClipboard;->setData(IILjava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private copyNotes(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 6121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6122
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6123
    invoke-direct {p0, p1, v0, p3}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->copyNotes(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/List;)V

    return-void
.end method

.method private copyNotes(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 6133
    new-instance v2, Lcom/metamoji/forSchool/ui/ScSelectNote;

    sget v0, Lcom/metamoji/noteanytime/R$string;->Cabinet_Folder_Copy:I

    const/4 v1, 0x0

    invoke-direct {v2, v0, v1}, Lcom/metamoji/forSchool/ui/ScSelectNote;-><init>(ILjava/util/ArrayList;)V

    .line 6134
    new-instance v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$48;

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$48;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Lcom/metamoji/forSchool/ui/ScSelectNote;Ljava/lang/String;Ljava/util/List;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v0}, Lcom/metamoji/forSchool/ui/ScSelectNote;->setOnClosedListener(Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;)V

    .line 6151
    sget-object p1, Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;->CopyNote:Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;

    .line 6152
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object p2

    sget-object p3, Lcom/metamoji/nt/NtFeature;->AppStudentEditClassboxNote:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {p2, p3}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 6153
    sget-object p1, Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;->MoveNote:Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;

    .line 6156
    :cond_0
    iput-object p1, v2, Lcom/metamoji/forSchool/ui/ScSelectNote;->selectMode:Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;

    .line 6157
    invoke-virtual {v2, v3, v4}, Lcom/metamoji/forSchool/ui/ScSelectNote;->setInitDriveId(Ljava/lang/String;Ljava/util/List;)V

    .line 6158
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string p2, "SelectNote"

    invoke-virtual {v2, p1, p2}, Lcom/metamoji/forSchool/ui/ScSelectNote;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private createDocumentFromDocumentTemplate(Lcom/metamoji/cm/CmContext;)V
    .locals 10

    .line 3897
    invoke-static {}, Lcom/metamoji/noteanytime/MainActivity;->getStartSyncFlg()Z

    move-result v0

    sput-boolean v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->static_startSyncFlg:Z

    .line 3901
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_activity:Landroidx/fragment/app/FragmentActivity;

    const-class v2, Lcom/metamoji/noteanytime/EditorActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3902
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_currentDisplayedFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v1

    .line 3903
    const-string v2, "entityId"

    invoke-virtual {p1, v2}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3904
    const-string v3, "noteTemplateDriveId"

    invoke-virtual {p1, v3}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3905
    const-string v5, "noteTemplateDocId"

    invoke-virtual {p1, v5}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 3906
    const-string v7, "command"

    invoke-virtual {p1, v7}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/metamoji/nt/NtCommand;

    .line 3908
    const-string v9, "copyFromTemplate"

    invoke-virtual {v0, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3909
    const-string v7, "driveid"

    invoke-virtual {v0, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3910
    const-string v1, "docid"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3911
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3912
    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3913
    const-string/jumbo v1, "storageFile"

    invoke-virtual {p1, v1}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    const-string v1, "contentsFile"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    if-eqz v8, :cond_0

    .line 3916
    const-string p1, "orgCommand"

    invoke-virtual {v0, p1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3918
    :cond_0
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_currentDisplayedFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getAbsPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->getTagNameStringList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 3919
    const-string/jumbo v1, "tags"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putCharSequenceArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 3922
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$33;

    invoke-direct {v1, p0, v6, v4, v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$33;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0, v0}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void
.end method

.method private deleteNote(Ljava/lang/Object;)V
    .locals 6

    .line 6320
    instance-of v0, p1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    if-nez v0, :cond_0

    goto :goto_0

    .line 6323
    :cond_0
    check-cast p1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    const/4 v0, 0x1

    .line 6324
    invoke-static {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_type(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)I

    move-result v1

    if-eq v0, v1, :cond_1

    :goto_0
    return-void

    .line 6327
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDriveId()Ljava/lang/String;

    move-result-object v0

    .line 6328
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDocId()Ljava/lang/String;

    move-result-object v1

    .line 6330
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_activity:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->createAlertDialog(Landroidx/fragment/app/FragmentActivity;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 6331
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_res:Landroid/content/res/Resources;

    sget v4, Lcom/metamoji/noteanytime/R$string;->Cabinet_Msg_Note_Delete_Title:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 6333
    iget-boolean v3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_isTrash:Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    .line 6334
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_res:Landroid/content/res/Resources;

    sget v3, Lcom/metamoji/noteanytime/R$string;->Cabinet_Msg_Delete_Permanent:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 6335
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_res:Landroid/content/res/Resources;

    sget v3, Lcom/metamoji/noteanytime/R$string;->Msg_YES:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v3, Lcom/metamoji/ui/cabinet/NoteListViewFragment$52;

    invoke-direct {v3, p0, v0, v1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$52;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, p1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_1

    .line 6350
    :cond_2
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDocId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, v0, v4, p1}, Lcom/metamoji/ui/cabinet/CabinetUtils;->prepareDeleteNoteMessage(ZLjava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 6351
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_res:Landroid/content/res/Resources;

    sget v3, Lcom/metamoji/noteanytime/R$string;->Msg_YES:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v3, Lcom/metamoji/ui/cabinet/NoteListViewFragment$53;

    invoke-direct {v3, p0, v0, v1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$53;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, p1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 6388
    :goto_1
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_res:Landroid/content/res/Resources;

    sget v0, Lcom/metamoji/noteanytime/R$string;->Msg_NO:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 6389
    invoke-virtual {v2, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 6391
    new-instance p1, Lcom/metamoji/ui/dialog/UiAlertDialog;

    invoke-direct {p1, v2}, Lcom/metamoji/ui/dialog/UiAlertDialog;-><init>(Landroidx/appcompat/app/AlertDialog$Builder;)V

    .line 6392
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "NoteList_deleteNote"

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/ui/dialog/UiAlertDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public static deliverNoteForContextmenu(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/NoteListViewFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentActivity;",
            "Lcom/metamoji/ui/cabinet/NoteListViewFragment;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 6728
    const-string v6, "deliverCollaborizeByDrop"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->deliverNoteForContextmenu(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/NoteListViewFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public static deliverNoteForContextmenu(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/NoteListViewFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentActivity;",
            "Lcom/metamoji/ui/cabinet/NoteListViewFragment;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 6732
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    .line 6733
    iput-object p4, v0, Lcom/metamoji/forSchool/ScSchoolManager;->deliverDriveId:Ljava/lang/String;

    .line 6734
    iput-object p5, v0, Lcom/metamoji/forSchool/ScSchoolManager;->deliverTags:Ljava/util/List;

    .line 6735
    new-instance p5, Lcom/metamoji/ui/cabinet/NoteListViewFragment$57;

    invoke-direct {p5, p1, p6}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$57;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Ljava/lang/String;)V

    const/4 p6, 0x0

    move-object p1, p2

    move-object p2, p3

    const/4 p3, 0x0

    const/4 p4, 0x0

    invoke-static/range {p0 .. p6}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->editNoteInDrive(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;ZZLcom/metamoji/ui/cabinet/NoteListViewFragment$IDriveDocumentEditorOpener;Z)V

    return-void
.end method

.method public static distributeMultiNotesToMultiBoxesForContextMenu(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ui/cabinet/NoteListViewFragment;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 6748
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    .line 6749
    iput-object p1, v0, Lcom/metamoji/forSchool/ScSchoolManager;->deliverDriveId:Ljava/lang/String;

    .line 6750
    iput-object p2, v0, Lcom/metamoji/forSchool/ScSchoolManager;->deliverTags:Ljava/util/List;

    const/4 p1, 0x0

    .line 6752
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->handleDistributeMultiNotesToMultiBoxes(Z)V

    return-void
.end method

.method private static editDocument(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/ui/cabinet/NoteListViewFragment$IDriveDocumentEditorOpener;)V
    .locals 9

    .line 4723
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object v0

    .line 4725
    new-instance v1, Lcom/metamoji/nt/cabinet/cabinetWaitView;

    invoke-direct {v1}, Lcom/metamoji/nt/cabinet/cabinetWaitView;-><init>()V

    .line 4726
    new-instance v2, Lcom/metamoji/sd/cs/SdRequestCanceller;

    invoke-direct {v2}, Lcom/metamoji/sd/cs/SdRequestCanceller;-><init>()V

    .line 4727
    invoke-virtual {v1, v2}, Lcom/metamoji/nt/cabinet/cabinetWaitView;->show(Lcom/metamoji/sd/cs/SdRequestCanceller;)V

    .line 4730
    invoke-virtual {v0, p1, v2}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentContents(Ljava/lang/String;Lcom/metamoji/sd/cs/SdRequestCanceller;)Lcom/metamoji/dvm/fw/result/DvmDMResultWithOfflineFlag;

    move-result-object v0

    .line 4731
    invoke-virtual {v1}, Lcom/metamoji/nt/cabinet/cabinetWaitView;->hide()V

    .line 4732
    invoke-virtual {v0}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithOfflineFlag;->succeeded()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    .line 4733
    invoke-interface {p4, p1, p3, p2, p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$IDriveDocumentEditorOpener;->openDriveDocumentEditor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 4735
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithOfflineFlag;->GetErrorInfo()Lcom/metamoji/sd/SdError;

    move-result-object v0

    .line 4736
    invoke-virtual {v0}, Lcom/metamoji/sd/SdError;->getErrCode()Lcom/metamoji/dvm/DvmErrCode;

    move-result-object v1

    sget-object v2, Lcom/metamoji/dvm/DvmErrCode;->NotLoginError:Lcom/metamoji/dvm/DvmErrCode;

    if-ne v1, v2, :cond_1

    .line 4738
    :try_start_0
    new-instance v3, Lcom/metamoji/ui/cabinet/NoteListViewFragment$41;

    move-object v4, p0

    move-object v5, p1

    move-object v7, p2

    move-object v6, p3

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$41;-><init>(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/ui/cabinet/NoteListViewFragment$IDriveDocumentEditorOpener;)V

    invoke-static {v3}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->tryUserLogin(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 4752
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "[NoteListViewFragment] :: ERROR tryUserLogin: %s"

    invoke-static {p1, p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    move-object v7, p2

    .line 4754
    invoke-virtual {v0}, Lcom/metamoji/sd/SdError;->getErrCode()Lcom/metamoji/dvm/DvmErrCode;

    move-result-object p0

    sget-object p1, Lcom/metamoji/dvm/DvmErrCode;->RequestCancelError:Lcom/metamoji/dvm/DvmErrCode;

    if-ne p0, p1, :cond_2

    return-void

    .line 4758
    :cond_2
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p0

    new-instance p1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$42;

    invoke-direct {p1, v0, v7}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$42;-><init>(Lcom/metamoji/sd/SdError;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    return-void
.end method

.method private editNote(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;Z)V
    .locals 8

    .line 4577
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->isBusy()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4582
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 4583
    const-string v1, "NoteListViewFragment#showLibraryViewDialog"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4587
    :cond_1
    iget-boolean v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_isEditing:Z

    if-nez v0, :cond_2

    .line 4588
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDriveId()Ljava/lang/String;

    move-result-object v2

    .line 4589
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDocId()Ljava/lang/String;

    move-result-object v3

    .line 4591
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_activity:Landroidx/fragment/app/FragmentActivity;

    new-instance v6, Lcom/metamoji/ui/cabinet/NoteListViewFragment$38;

    invoke-direct {v6, p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$38;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)V

    const/4 v7, 0x0

    const/4 v5, 0x0

    move v4, p2

    invoke-static/range {v1 .. v7}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->editNoteInDrive(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;ZZLcom/metamoji/ui/cabinet/NoteListViewFragment$IDriveDocumentEditorOpener;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static editNoteInDrive(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;ZZLcom/metamoji/ui/cabinet/NoteListViewFragment$IDriveDocumentEditorOpener;Z)V
    .locals 9

    .line 4786
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;

    move-object v4, p0

    move-object v2, p1

    move-object v3, p2

    move v7, p3

    move v8, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v1 .. v8}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43;-><init>(Ljava/lang/String;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/NoteListViewFragment$IDriveDocumentEditorOpener;ZZZ)V

    const/4 p0, 0x0

    invoke-virtual {v0, v1, p0, p0}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void
.end method

.method private editNoteTitle(Ljava/lang/Object;)V
    .locals 3

    .line 6570
    instance-of v0, p1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    if-nez v0, :cond_0

    goto :goto_0

    .line 6574
    :cond_0
    check-cast p1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    const/4 v0, 0x1

    .line 6575
    invoke-static {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_type(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)I

    move-result v1

    if-eq v0, v1, :cond_1

    :goto_0
    return-void

    .line 6579
    :cond_1
    new-instance v0, Lcom/metamoji/ui/dialog/TitleEdit;

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDocId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDriveId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/dialog/TitleEdit;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6580
    new-instance v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$56;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$56;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/dialog/TitleEdit;->setOnClosedListener(Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;)V

    .line 6590
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v1, "TitleEdit"

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/ui/dialog/TitleEdit;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private static editShareNoteInDrive(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/ui/cabinet/NoteListViewFragment$IDriveDocumentEditorOpener;Z)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 4613
    invoke-interface {p3, v1, p1, p2, v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$IDriveDocumentEditorOpener;->openDriveDocumentEditor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 4617
    :cond_0
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object v2

    .line 4621
    invoke-virtual {v2, p1}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->openEditorForQuickEdit(Ljava/lang/String;)Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;

    move-result-object v3

    .line 4623
    invoke-virtual {v3}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;->succeeded()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 4624
    invoke-virtual {v3}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;->getDocumentEditor()Lcom/metamoji/dvm/fw/IDvmDocumentEditor;

    move-result-object v3

    .line 4635
    const-string v4, "collaboCompanyId"

    invoke-interface {v3, v4}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->metaDataForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 4636
    check-cast v4, Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v4, v1

    .line 4637
    :goto_0
    const-string v5, "collaboRoomId"

    invoke-interface {v3, v5}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->metaDataForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 4638
    check-cast v5, Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v5, v1

    .line 4640
    :goto_1
    sget-object v6, Lcom/metamoji/dm/DmDocumentManagerCloseMode;->Discard:Lcom/metamoji/dm/DmDocumentManagerCloseMode;

    invoke-virtual {v2, v3, v6}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->closeDocument(Lcom/metamoji/dvm/fw/IDvmDocumentEditor;Lcom/metamoji/dm/DmDocumentManagerCloseMode;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;

    move-result-object v3

    .line 4641
    invoke-virtual {v3}, Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;->succeeded()Z

    move-result v3

    if-nez v3, :cond_3

    .line 4642
    const-string v3, "ignore error on close"

    invoke-static {v3}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    .line 4645
    :cond_3
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object v3

    .line 4648
    invoke-virtual {v3, v5, v4}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentIDsFromRoom(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_8

    if-eqz p4, :cond_4

    .line 4654
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_2
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4655
    invoke-virtual {v3, v4}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->deleteDocument(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;

    goto :goto_2

    .line 4658
    :cond_4
    invoke-static {}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->isNetworkAvailable()Z

    move-result p4

    .line 4659
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 4661
    invoke-virtual {v3, v5}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentInfo(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 4662
    invoke-virtual {v6}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->isTrashed()Z

    move-result v7

    if-nez v7, :cond_5

    if-nez v1, :cond_6

    move-object v1, v5

    :cond_6
    if-nez p4, :cond_7

    .line 4668
    new-instance v6, Ljava/io/File;

    invoke-virtual {v3, v5}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->contentsPathWithDocId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4669
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_3

    .line 4676
    :cond_7
    invoke-virtual {v6}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->getContentsUpdateFlag()Z

    move-result v6

    if-eqz v6, :cond_5

    :goto_3
    move-object v1, v5

    :cond_8
    if-eqz v1, :cond_9

    .line 4692
    invoke-static {p0, v1, p2, p1, p3}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->editDocument(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/ui/cabinet/NoteListViewFragment$IDriveDocumentEditorOpener;)V

    return-void

    .line 4696
    :cond_9
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 p4, 0x1

    invoke-virtual {v2, p1, v3, p0, p4}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->copyDocument(Ljava/lang/String;Lcom/metamoji/dvm/fw/IDvmDocumentManagerProtocol;Ljava/util/List;Z)Lcom/metamoji/dvm/fw/result/DvmDMResultWithDocId;

    move-result-object p0

    .line 4698
    invoke-virtual {p0}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithDocId;->succeeded()Z

    move-result p4

    if-eqz p4, :cond_a

    .line 4701
    invoke-virtual {p0}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithDocId;->getDocumentId()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p3, p0, p1, p2, v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$IDriveDocumentEditorOpener;->openDriveDocumentEditor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 4704
    :cond_a
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance p2, Lcom/metamoji/ui/cabinet/NoteListViewFragment$40;

    invoke-direct {p2, p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$40;-><init>(Lcom/metamoji/dvm/fw/result/DvmDMResultWithDocId;)V

    invoke-virtual {p1, p2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void

    .line 4626
    :cond_b
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p0

    new-instance p1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$39;

    invoke-direct {p1, v3}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$39;-><init>(Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;)V

    invoke-virtual {p0, p1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private exportNote(Lcom/metamoji/nt/doceditor/NtDocumentEditorForQuickEdit;Ljava/lang/String;)V
    .locals 0

    .line 5180
    invoke-static {p2}, Lcom/metamoji/nt/NtDocument;->getDocumentTitleForFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/metamoji/ui/task/ExportNoteTask;->exportNote(Lcom/metamoji/nt/doceditor/NtDocumentEditorForQuickEdit;Ljava/lang/String;)V

    return-void
.end method

.method private getCreatedDateString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    .line 2953
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2954
    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    .line 2955
    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    .line 2957
    instance-of v2, p1, Lcom/metamoji/dm/impl/metadata/entity/DmDocumentMetaData;

    const-string v3, " "

    if-eqz v2, :cond_0

    .line 2959
    check-cast p1, Lcom/metamoji/dm/impl/metadata/entity/DmDocumentMetaData;

    invoke-virtual {p1}, Lcom/metamoji/dm/impl/metadata/entity/DmDocumentMetaData;->getCreate()Ljava/util/Date;

    move-result-object p1

    .line 2960
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2961
    :cond_0
    instance-of v2, p1, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    if-eqz v2, :cond_1

    .line 2963
    check-cast p1, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    invoke-virtual {p1}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->getContentsCreate()Ljava/util/Date;

    move-result-object p1

    .line 2964
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2966
    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method private getDateString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 2990
    invoke-static {}, Lcom/metamoji/noteanytime/MainActivity;->getNoteListSortKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "create"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2991
    invoke-direct {p0, p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->getCreatedDateString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2993
    :cond_0
    invoke-direct {p0, p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->getUpdatedDateString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getDisplayTagInfos(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;",
            ")",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 3076
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDriveId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/dvm/DvmUtil;->sdDocumentManager(Ljava/lang/String;)Lcom/metamoji/sd/SdDriveDocumentManager;

    move-result-object v0

    .line 3078
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_currentDisplayedFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object v1

    .line 3079
    sget-object v2, Lcom/metamoji/ui/cabinet/NoteListViewFragment$65;->$SwitchMap$com$metamoji$ui$cabinet$CabinetTreeItem$Type:[I

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    move-object p1, v2

    goto :goto_0

    .line 3087
    :pswitch_0
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDocId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->getTagNameListForDocument(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 3088
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_currentDisplayedFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getAbsPath()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 3094
    :pswitch_1
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDocId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->getTagNameListForDocument(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    move-object v3, v2

    move-object v2, p1

    move-object p1, v3

    :goto_0
    if-eqz v2, :cond_1

    if-eqz p1, :cond_0

    .line 3108
    invoke-static {p1}, Lcom/metamoji/ui/cabinet/CabinetUtils;->getTagNameList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 3109
    invoke-interface {v2, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 3111
    :cond_0
    invoke-virtual {v0, v2}, Lcom/metamoji/sd/SdDriveDocumentManager;->getTags(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 3114
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getItem(I)Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;
    .locals 1

    if-ltz p1, :cond_1

    .line 882
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    goto :goto_0

    .line 886
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getItemIndexForItem(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)I
    .locals 3

    .line 4563
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 4565
    invoke-direct {p0, v1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->getItem(I)Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    move-result-object v2

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private getItemList(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)Ljava/util/ArrayList;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ui/cabinet/CabinetTreeItem;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 891
    iget-object v0, v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_normalView:Lcom/metamoji/ui/cabinet/NoteListGridView;

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    .line 892
    iput v2, v0, Lcom/metamoji/ui/cabinet/NoteListGridView;->_selectedPosition:I

    .line 894
    :cond_0
    iget-object v0, v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_detailView:Lcom/metamoji/ui/cabinet/DetailGridView;

    if-eqz v0, :cond_1

    .line 895
    iput v2, v0, Lcom/metamoji/ui/cabinet/DetailGridView;->_selectedPosition:I

    .line 897
    :cond_1
    iget-object v0, v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_simpleView:Lcom/metamoji/ui/cabinet/SimpleGridView;

    if-eqz v0, :cond_2

    .line 898
    iput v2, v0, Lcom/metamoji/ui/cabinet/SimpleGridView;->_selectedPosition:I

    .line 902
    :cond_2
    :try_start_0
    invoke-direct {v1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->refreshSyncStatus()V

    .line 903
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 904
    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object v9

    .line 906
    sget-object v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->LOCAL_ROOT:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    const/4 v10, 0x0

    if-eq v9, v0, :cond_3

    sget-object v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->LOCAL_FOLDER:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-ne v9, v0, :cond_6

    .line 907
    :cond_3
    iget-boolean v0, v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_isTrash:Z

    if-nez v0, :cond_4

    iget-boolean v0, v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectMode:Z

    if-nez v0, :cond_4

    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->TEMPLATE:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-eq v9, v0, :cond_4

    sget-object v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->COPIED_SHARE:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-eq v9, v0, :cond_4

    sget-object v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->SHARED_DRIVE_PARENT:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-eq v9, v0, :cond_4

    .line 912
    new-instance v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    iget-object v2, v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_res:Landroid/content/res/Resources;

    sget v3, Lcom/metamoji/noteanytime/R$string;->Cabinet_CreateNote:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v10, v2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;ILjava/lang/Object;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 915
    :cond_4
    iget-boolean v0, v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectMode:Z

    if-nez v0, :cond_5

    sget-object v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->SHARED_DRIVE_PARENT:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-ne v9, v0, :cond_5

    .line 917
    new-instance v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    iget-object v2, v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_res:Landroid/content/res/Resources;

    sget v3, Lcom/metamoji/noteanytime/R$string;->Cabinet_CreateSharedDrive_BtnCaption:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;ILjava/lang/Object;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 921
    :cond_5
    sget-object v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;->NoteListModeType_Simple:Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;

    .line 926
    :cond_6
    iget-boolean v0, v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectMode:Z

    if-nez v0, :cond_8

    .line 927
    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_7
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    .line 928
    invoke-virtual {v3}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object v0

    .line 929
    sget-object v2, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->ALL_NOTE:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-eq v0, v2, :cond_7

    sget-object v2, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->RECYCLE_BIN:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-eq v0, v2, :cond_7

    sget-object v2, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->TEMPLATE:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-eq v0, v2, :cond_7

    sget-object v2, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->COPIED_SHARE:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-eq v0, v2, :cond_7

    .line 933
    invoke-virtual {v3}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDescendantNoteCount()I

    move-result v6

    .line 934
    new-instance v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x2

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/String;IZ)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 940
    :cond_8
    sget-object v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$65;->$SwitchMap$com$metamoji$ui$cabinet$CabinetTreeItem$Type:[I

    invoke-virtual {v9}, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_6

    .line 951
    :pswitch_0
    iget v0, v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->m_nowPage:I

    .line 952
    iget-object v2, v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_selectedDocId:Ljava/lang/String;

    if-eqz v2, :cond_9

    move v0, v10

    :cond_9
    mul-int/lit16 v2, v0, 0xc8

    .line 959
    iget-boolean v3, v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_squeezeShare:Z

    if-eqz v3, :cond_a

    const-string v3, "application/vnd.metamoji.model.atshare"

    goto :goto_1

    :cond_a
    const/4 v3, 0x0

    :goto_1
    move-object v12, v3

    int-to-long v13, v2

    const/16 v2, 0xc9

    int-to-long v2, v2

    move-object/from16 v11, p1

    move-wide v15, v2

    invoke-static/range {v11 .. v16}, Lcom/metamoji/ui/cabinet/CabinetUtils;->getDvmDocumentIDs(Lcom/metamoji/ui/cabinet/CabinetTreeItem;Ljava/lang/String;JJ)Ljava/util/List;

    move-result-object v2

    .line 960
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0xc8

    if-le v3, v4, :cond_b

    .line 961
    invoke-interface {v2, v10, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    add-int/lit8 v3, v0, 0x2

    .line 962
    iput v3, v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->m_pageCounter:I

    goto :goto_2

    :cond_b
    add-int/lit8 v3, v0, 0x1

    .line 964
    iput v3, v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->m_pageCounter:I

    .line 966
    :goto_2
    iget-object v3, v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_selectedDocId:Ljava/lang/String;

    if-eqz v3, :cond_d

    .line 967
    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    add-int/lit8 v0, v0, 0x1

    .line 969
    iget v3, v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->m_pageCounter:I

    if-gt v3, v0, :cond_9

    goto :goto_3

    .line 974
    :cond_c
    iput v0, v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->m_nowPage:I

    .line 982
    :cond_d
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v7

    .line 983
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object v9

    .line 984
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 985
    invoke-virtual {v9, v2}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentsInfo(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    .line 986
    invoke-virtual {v3}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->getDocId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 988
    :cond_e
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_f
    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ljava/lang/String;

    .line 989
    invoke-virtual {v10, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    .line 990
    invoke-virtual {v9, v12}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentIconImageFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 991
    new-instance v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, v12, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 992
    invoke-virtual {v4}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->isWaitingSync()Z

    move-result v6

    const/4 v2, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 991
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 993
    iget-object v0, v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_selectedDocId:Ljava/lang/String;

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 994
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 995
    iget-object v2, v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_normalView:Lcom/metamoji/ui/cabinet/NoteListGridView;

    if-eqz v2, :cond_10

    .line 996
    iput v0, v2, Lcom/metamoji/ui/cabinet/NoteListGridView;->_selectedPosition:I

    .line 998
    :cond_10
    iget-object v2, v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_detailView:Lcom/metamoji/ui/cabinet/DetailGridView;

    if-eqz v2, :cond_11

    .line 999
    iput v0, v2, Lcom/metamoji/ui/cabinet/DetailGridView;->_selectedPosition:I

    .line 1001
    :cond_11
    iget-object v2, v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_simpleView:Lcom/metamoji/ui/cabinet/SimpleGridView;

    if-eqz v2, :cond_f

    .line 1002
    iput v0, v2, Lcom/metamoji/ui/cabinet/SimpleGridView;->_selectedPosition:I
    :try_end_0
    .catch Lcom/metamoji/cm/CmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :cond_12
    :goto_6
    return-object v8

    :catch_0
    move-exception v0

    .line 1018
    const-string v2, "[NoteListViewFragment] :: ERROR getItemList:"

    invoke-static {v0, v2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1019
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static getMimeType(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 3016
    instance-of v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmDocumentMetaData;

    if-eqz v0, :cond_0

    .line 3017
    check-cast p0, Lcom/metamoji/dm/impl/metadata/entity/DmDocumentMetaData;

    invoke-virtual {p0}, Lcom/metamoji/dm/impl/metadata/entity/DmDocumentMetaData;->getMimeType()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3018
    :cond_0
    instance-of v0, p0, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    if-eqz v0, :cond_1

    .line 3019
    check-cast p0, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    invoke-virtual {p0}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->getContentsMimeType()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3021
    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method private getNoteCountString(I)Ljava/lang/String;
    .locals 2

    .line 3038
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_res:Landroid/content/res/Resources;

    sget v1, Lcom/metamoji/noteanytime/R$string;->Cabinet_Note:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getSelectDocIds()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 6100
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 6104
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6106
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 6108
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    .line 6109
    invoke-virtual {v3}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDocId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getTagNameStringList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 4012
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4013
    invoke-static {p0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->getTagNameList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4015
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 4016
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getThumbnailDrawable(Ljava/lang/String;Lcom/metamoji/cm/Size;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 3825
    iget v0, p2, Lcom/metamoji/cm/Size;->width:I

    iget p2, p2, Lcom/metamoji/cm/Size;->height:I

    invoke-static {p1, v0, p2}, Lcom/metamoji/cm/ImageUtils;->createBitmapFromFile2(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 3827
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/4 p1, 0x0

    .line 3828
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-object p2
.end method

.method private getThumbnailImage(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x2

    .line 3853
    invoke-static {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_type(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 3854
    sget-object v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$65;->$SwitchMap$com$metamoji$ui$cabinet$CabinetTreeItem$Type:[I

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_content(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    .line 3861
    sget p1, Lcom/metamoji/noteanytime/R$drawable;->cabinet_thumb_folder:I

    invoke-static {p1}, Lcom/metamoji/cm/ImageUtils;->loadAssetBitmap(I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 3859
    :cond_0
    sget p1, Lcom/metamoji/noteanytime/R$drawable;->design1_thumb_mydrive:I

    invoke-static {p1}, Lcom/metamoji/cm/ImageUtils;->loadAssetBitmap(I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 3857
    :cond_1
    sget p1, Lcom/metamoji/noteanytime/R$drawable;->design1_thumb_drive:I

    invoke-static {p1}, Lcom/metamoji/cm/ImageUtils;->loadAssetBitmap(I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 3865
    :cond_2
    invoke-static {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_thumbnailPath(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 3866
    sget p1, Lcom/metamoji/noteanytime/R$drawable;->cabinet_thumbnail_any:I

    invoke-static {p1}, Lcom/metamoji/cm/ImageUtils;->loadAssetBitmap(I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 3869
    :cond_3
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDocId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 3870
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_imageCache:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_8

    .line 3872
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_NoteListMode:Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;

    sget-object v2, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;->NoteListModeType_Normal:Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;

    if-ne v1, v2, :cond_5

    .line 3873
    invoke-static {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_thumbnailPath(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Ljava/lang/String;

    move-result-object p1

    sget v1, Lcom/metamoji/ui/cabinet/CabinetDef;->NORMAL_THUMBNAIL_WIDTH_EXCLUDE_SHADOW:I

    sget v2, Lcom/metamoji/ui/cabinet/CabinetDef;->NORMAL_THUMBNAIL_HIGHT_EXCLUDE_SHADOW:I

    invoke-static {p1, v1, v2}, Lcom/metamoji/cm/ImageUtils;->createBitmapFromFile2(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_1

    .line 3876
    :cond_5
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_NoteListMode:Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;

    sget-object v2, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;->NoteListModeType_Detail:Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;

    if-ne v1, v2, :cond_6

    .line 3877
    invoke-static {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_thumbnailPath(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Ljava/lang/String;

    move-result-object p1

    sget v1, Lcom/metamoji/ui/cabinet/CabinetDef;->DETAIL_THUMBNAIL_WIDTH_EXCLUDE_SHADOW:I

    sget v2, Lcom/metamoji/ui/cabinet/CabinetDef;->DETAIL_THUMBNAIL_HEIGHT_EXCLUDE_SHADOW:I

    invoke-static {p1, v1, v2}, Lcom/metamoji/cm/ImageUtils;->createBitmapFromFile2(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_1

    .line 3880
    :cond_6
    invoke-static {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_thumbnailPath(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Ljava/lang/String;

    move-result-object p1

    sget v1, Lcom/metamoji/ui/cabinet/CabinetDef;->DETAIL_THUMBNAIL_WIDTH_EXCLUDE_SHADOW:I

    sget v2, Lcom/metamoji/ui/cabinet/CabinetDef;->DETAIL_THUMBNAIL_HEIGHT_EXCLUDE_SHADOW:I

    invoke-static {p1, v1, v2}, Lcom/metamoji/cm/ImageUtils;->createBitmapFromFile2(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_1
    if-eqz v0, :cond_7

    .line 3884
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_imageCache:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    return-object p1

    :cond_8
    return-object v1
.end method

.method private getThumbnailSize(Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;)Lcom/metamoji/cm/Size;
    .locals 2

    .line 3833
    new-instance v0, Lcom/metamoji/cm/Size;

    invoke-direct {v0}, Lcom/metamoji/cm/Size;-><init>()V

    .line 3834
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;->ordinal()I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    .line 3845
    sget p1, Lcom/metamoji/ui/cabinet/CabinetDef;->NORMAL_THUMBNAIL_WIDTH_EXCLUDE_SHADOW:I

    iput p1, v0, Lcom/metamoji/cm/Size;->width:I

    .line 3846
    sget p1, Lcom/metamoji/ui/cabinet/CabinetDef;->NORMAL_THUMBNAIL_HIGHT_EXCLUDE_SHADOW:I

    iput p1, v0, Lcom/metamoji/cm/Size;->height:I

    return-object v0

    .line 3840
    :cond_0
    sget p1, Lcom/metamoji/ui/cabinet/CabinetDef;->DETAIL_THUMBNAIL_WIDTH_EXCLUDE_SHADOW:I

    iput p1, v0, Lcom/metamoji/cm/Size;->width:I

    .line 3841
    sget p1, Lcom/metamoji/ui/cabinet/CabinetDef;->DETAIL_THUMBNAIL_HEIGHT_EXCLUDE_SHADOW:I

    iput p1, v0, Lcom/metamoji/cm/Size;->height:I

    return-object v0

    .line 3836
    :cond_1
    sget p1, Lcom/metamoji/ui/cabinet/CabinetDef;->DETAIL_THUMBNAIL_WIDTH_EXCLUDE_SHADOW:I

    iput p1, v0, Lcom/metamoji/cm/Size;->width:I

    .line 3837
    sget p1, Lcom/metamoji/ui/cabinet/CabinetDef;->DETAIL_THUMBNAIL_HEIGHT_EXCLUDE_SHADOW:I

    iput p1, v0, Lcom/metamoji/cm/Size;->height:I

    return-object v0
.end method

.method private static getTitleString(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x2

    .line 2935
    invoke-static {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_type(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2936
    invoke-static {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_content(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getLabelName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    .line 2937
    invoke-static {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_type(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 2938
    invoke-static {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_metadata(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/metamoji/dm/impl/metadata/entity/DmDocumentMetaData;

    if-eqz v0, :cond_1

    .line 2939
    invoke-static {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_metadata(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/metamoji/dm/impl/metadata/entity/DmDocumentMetaData;

    invoke-virtual {p0}, Lcom/metamoji/dm/impl/metadata/entity/DmDocumentMetaData;->getTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2940
    :cond_1
    invoke-static {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_metadata(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    if-eqz v0, :cond_2

    .line 2941
    invoke-static {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_metadata(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    invoke-virtual {p0}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->getTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2943
    :cond_2
    const-string p0, ""

    return-object p0

    .line 2946
    :cond_3
    invoke-static {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_content(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private getUpdatedDateString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    .line 2973
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2974
    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    .line 2975
    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    .line 2976
    instance-of v2, p1, Lcom/metamoji/dm/impl/metadata/entity/DmDocumentMetaData;

    const-string v3, " "

    if-eqz v2, :cond_0

    .line 2978
    check-cast p1, Lcom/metamoji/dm/impl/metadata/entity/DmDocumentMetaData;

    invoke-virtual {p1}, Lcom/metamoji/dm/impl/metadata/entity/DmDocumentMetaData;->getUpdate()Ljava/util/Date;

    move-result-object p1

    .line 2979
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2980
    :cond_0
    instance-of v2, p1, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    if-eqz v2, :cond_1

    .line 2982
    check-cast p1, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    invoke-virtual {p1}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->getContentsUpdate()Ljava/util/Date;

    move-result-object p1

    .line 2983
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2985
    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method private handleMergeNotes()V
    .locals 5

    .line 7207
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_currentDisplayedFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v0

    .line 7208
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->selectedNoPasswordNoteDocIds()Ljava/util/ArrayList;

    move-result-object v1

    .line 7210
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->isSelectedNormalNoteOnly()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->isSelectedPasswordNote()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 7227
    :cond_0
    invoke-static {v0, v1}, Lcom/metamoji/forSchool/ScSchoolCommand;->handleMergeNotes(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void

    .line 7211
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_activity:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->createAlertDialog(Landroidx/fragment/app/FragmentActivity;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 7212
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_res:Landroid/content/res/Resources;

    sget v4, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_MERGE_NOTES_DLG_TITLE:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 7213
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_res:Landroid/content/res/Resources;

    sget v4, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_NOTES_THAT_CANNOT_BE_COMBINED_ARE_SELECTED_MSG:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 7214
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_res:Landroid/content/res/Resources;

    sget v4, Lcom/metamoji/noteanytime/R$string;->Msg_YES:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/metamoji/ui/cabinet/NoteListViewFragment$62;

    invoke-direct {v4, p0, v0, v1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$62;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 7221
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_res:Landroid/content/res/Resources;

    sget v1, Lcom/metamoji/noteanytime/R$string;->Msg_NO:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 v0, 0x0

    .line 7222
    invoke-virtual {v2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 7224
    new-instance v0, Lcom/metamoji/ui/dialog/UiAlertDialog;

    invoke-direct {v0, v2}, Lcom/metamoji/ui/dialog/UiAlertDialog;-><init>(Landroidx/appcompat/app/AlertDialog$Builder;)V

    .line 7225
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "handleMergeNotes"

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/ui/dialog/UiAlertDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private handleMultiDeleteButtonTap()V
    .locals 6

    .line 1868
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_activity:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->createAlertDialog(Landroidx/fragment/app/FragmentActivity;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 1869
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_res:Landroid/content/res/Resources;

    sget v2, Lcom/metamoji/noteanytime/R$string;->Cabinet_Msg_Note_Delete_Title:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1870
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_currentDisplayedFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v1

    .line 1872
    iget-boolean v2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_isTrash:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 1873
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_res:Landroid/content/res/Resources;

    sget v2, Lcom/metamoji/noteanytime/R$string;->Cabinet_Msg_All_Trash_Data_Delete:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_1

    .line 1875
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1876
    iget-object v4, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    .line 1877
    invoke-virtual {v5}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDocId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    .line 1879
    invoke-static {v4, v1, v2, v3}, Lcom/metamoji/ui/cabinet/CabinetUtils;->prepareDeleteNoteMessage(ZLjava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1881
    :goto_1
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_res:Landroid/content/res/Resources;

    sget v2, Lcom/metamoji/noteanytime/R$string;->Msg_YES:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/metamoji/ui/cabinet/NoteListViewFragment$25;

    invoke-direct {v2, p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$25;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1947
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_res:Landroid/content/res/Resources;

    sget v2, Lcom/metamoji/noteanytime/R$string;->Msg_NO:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 v1, 0x0

    .line 1948
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1949
    new-instance v1, Lcom/metamoji/ui/dialog/UiAlertDialog;

    invoke-direct {v1, v0}, Lcom/metamoji/ui/dialog/UiAlertDialog;-><init>(Landroidx/appcompat/app/AlertDialog$Builder;)V

    .line 1950
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v2, "NoteList_prepareTrashAllDelete"

    invoke-virtual {v1, v0, v2}, Lcom/metamoji/ui/dialog/UiAlertDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private handleReacquisitionShareNote(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)V
    .locals 2

    .line 7119
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDocId()Ljava/lang/String;

    move-result-object v0

    .line 7120
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDriveId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7121
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    .line 7124
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->ReacquisitionShareNote(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static handleReacquisitionShareNote(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 7111
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/UiCurrentActivityManager;->getCurrentActivityOrNull()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 7112
    invoke-static {v0}, Lcom/metamoji/noteanytime/MainActivity;->getNoteListViewFragment(Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7114
    invoke-virtual {v0, p0, p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->ReacquisitionShareNote(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private handleRestoreCollaboDocument(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)V
    .locals 2

    .line 7168
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDocId()Ljava/lang/String;

    move-result-object v0

    .line 7169
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDriveId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7170
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    .line 7173
    :cond_0
    invoke-static {p1, v0}, Lcom/metamoji/ns/NsCollaboCommand;->handleRestoreCollaboDocument(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private handleScoreListForContextMenu(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 7183
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDriveId()Ljava/lang/String;

    move-result-object v0

    .line 7184
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDocId()Ljava/lang/String;

    move-result-object p1

    .line 7185
    new-instance v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$61;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$61;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/metamoji/forSchool/ScSchoolCommand;->handleScoreList(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private handleScoreListForMultiSelect()V
    .locals 4

    .line 7192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7193
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    if-eqz v3, :cond_0

    if-nez v2, :cond_1

    .line 7196
    invoke-virtual {v3}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDriveId()Ljava/lang/String;

    move-result-object v2

    .line 7198
    :cond_1
    invoke-virtual {v3}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDocId()Ljava/lang/String;

    move-result-object v3

    .line 7199
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7202
    :cond_2
    invoke-static {v2, v0}, Lcom/metamoji/forSchool/ScSchoolCommand;->handleScoreList(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private handleShowURLForContextMenu(Ljava/lang/Object;)V
    .locals 3

    .line 6697
    instance-of v0, p1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    if-nez v0, :cond_0

    goto :goto_0

    .line 6701
    :cond_0
    check-cast p1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    .line 6702
    invoke-static {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_type(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v1, v0, :cond_1

    :goto_0
    return-void

    .line 6706
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDriveId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6707
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    const/4 v0, 0x0

    .line 6710
    :cond_2
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDocId()Ljava/lang/String;

    move-result-object p1

    .line 6713
    invoke-static {v0, p1, v1}, Lcom/metamoji/ui/cabinet/CabinetUtils;->showResourceUrlDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private handleStarInfoSettingForCurrentItem(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;Z)V
    .locals 3

    .line 6597
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDriveId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object v0

    .line 6600
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6601
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDocId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6602
    invoke-virtual {v0, v1, p2}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->setDisplayPriorityToDocuments(Ljava/util/List;Z)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;

    .line 6604
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDocId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentInfo(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->changeStarInfoSetting(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;Ljava/lang/Object;Z)V

    .line 6607
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_currentDisplayedFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 6608
    :goto_0
    invoke-static {p1}, Lcom/metamoji/noteanytime/MainActivity;->checkCurrentDriveUpdate(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/metamoji/cm/CmException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 6611
    const-string p2, "[NoteListViewFragment] :: ERROR handleStarInfoSettingForCurrentItem:"

    invoke-static {p1, p2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method private handleStarInfoSettingForMultiSelectItem(Z)V
    .locals 4

    .line 6621
    :try_start_0
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->getSelectDocIds()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6622
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 6623
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_currentDisplayedFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 6624
    :goto_0
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object v1

    .line 6625
    invoke-virtual {v1, v0, p1}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->setDisplayPriorityToDocuments(Ljava/util/List;Z)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;

    .line 6626
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    if-eqz v2, :cond_1

    .line 6628
    invoke-virtual {v2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDocId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentInfo(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    move-result-object v3

    invoke-direct {p0, v2, v3, p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->changeStarInfoSetting(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;Ljava/lang/Object;Z)V
    :try_end_0
    .catch Lcom/metamoji/cm/CmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    return-void

    :catch_0
    move-exception p1

    .line 6633
    const-string v0, "[NoteListViewFragment] :: ERROR handleStarInfoSettingForMultiSelectItem:"

    invoke-static {p1, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method private initTouchInfo()V
    .locals 2

    .line 3637
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->clearShortPressTimer()V

    .line 3638
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->clearLongPressTimer()V

    const/4 v0, 0x0

    .line 3639
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_shortPressFlg:Z

    .line 3640
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_longPressFlg:Z

    const/4 v1, 0x0

    .line 3641
    iput-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_currentView:Landroid/view/View;

    .line 3642
    iput-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_currentItem:Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    .line 3643
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_dragFlg:Z

    .line 3644
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_startDragFlg:Z

    return-void
.end method

.method private isDisplayPriority(Ljava/lang/Object;)Z
    .locals 1

    .line 3030
    instance-of v0, p1, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    if-eqz v0, :cond_0

    .line 3031
    check-cast p1, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    invoke-virtual {p1}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->isDisplayPriority()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private isMultiSelectItem(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Z
    .locals 5

    .line 6814
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 6816
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    .line 6817
    invoke-virtual {v3}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDocId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDocId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private isNeedUpdate(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 4304
    :cond_0
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_currentDisplayedFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    const/4 v2, 0x1

    if-nez v1, :cond_1

    return v2

    .line 4305
    :cond_1
    invoke-virtual {v1, p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 4307
    :cond_2
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    .line 4308
    sget-boolean p1, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->static_startSyncFlg:Z

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/metamoji/noteanytime/MainActivity;->getStartSyncFlg()Z

    move-result p1

    if-nez p1, :cond_3

    .line 4310
    sput-boolean v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->static_startSyncFlg:Z

    :cond_3
    return v2
.end method

.method private static isShareNote(Ljava/lang/Object;)Z
    .locals 1

    .line 3026
    invoke-static {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->getMimeType(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "application/vnd.metamoji.model.atshare"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isShareTemplate(Ljava/lang/Object;)Z
    .locals 1

    .line 3008
    instance-of v0, p1, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    if-eqz v0, :cond_0

    .line 3009
    check-cast p1, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    invoke-virtual {p1}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->isShareTemplate()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private isTemplate(Ljava/lang/Object;)Z
    .locals 1

    .line 2998
    instance-of v0, p1, Lcom/metamoji/dm/impl/metadata/entity/DmDocumentMetaData;

    if-eqz v0, :cond_0

    .line 2999
    check-cast p1, Lcom/metamoji/dm/impl/metadata/entity/DmDocumentMetaData;

    invoke-virtual {p1}, Lcom/metamoji/dm/impl/metadata/entity/DmDocumentMetaData;->getTemplateFlg()Z

    move-result p1

    return p1

    .line 3000
    :cond_0
    instance-of v0, p1, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    if-eqz v0, :cond_1

    .line 3001
    check-cast p1, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    invoke-virtual {p1}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->isTemplate()Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$prepareNormalView$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    .line 2370
    move-object v0, p1

    check-cast v0, Lcom/metamoji/ui/cabinet/NoteListGridView;

    .line 2371
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_13

    const/4 v5, -0x1

    const/4 v6, 0x4

    if-eq v1, v4, :cond_d

    const/4 v7, 0x2

    if-eq v1, v7, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto/16 :goto_3

    .line 2462
    :cond_0
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_currentItem:Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    if-eqz v1, :cond_2

    invoke-static {v1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_type(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_currentItem:Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    invoke-static {v1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_type(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)I

    move-result v1

    if-ne v6, v1, :cond_2

    .line 2464
    :cond_1
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_normalView:Lcom/metamoji/ui/cabinet/NoteListGridView;

    iget v1, v1, Lcom/metamoji/ui/cabinet/NoteListGridView;->_selectedPosition:I

    invoke-virtual {v0, v1, v3}, Lcom/metamoji/ui/cabinet/NoteListGridView;->setItemViewActivated(IZ)V

    .line 2465
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_normalView:Lcom/metamoji/ui/cabinet/NoteListGridView;

    iput v5, v0, Lcom/metamoji/ui/cabinet/NoteListGridView;->_selectedPosition:I

    .line 2467
    :cond_2
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->initTouchInfo()V

    goto/16 :goto_3

    .line 2413
    :cond_3
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_touchStartPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->pxToDp(F)I

    move-result v0

    sget v1, Lcom/metamoji/ui/cabinet/CabinetDef;->JUDGE_DRAG_MOVE_POINT:I

    add-int/2addr v0, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->pxToDp(F)I

    move-result v1

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_touchStartPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    .line 2414
    invoke-direct {p0, v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->pxToDp(F)I

    move-result v0

    sget v1, Lcom/metamoji/ui/cabinet/CabinetDef;->JUDGE_DRAG_MOVE_POINT:I

    sub-int/2addr v0, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->pxToDp(F)I

    move-result v1

    if-gt v0, v1, :cond_4

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_touchStartPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    .line 2415
    invoke-direct {p0, v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->pxToDp(F)I

    move-result v0

    sget v1, Lcom/metamoji/ui/cabinet/CabinetDef;->JUDGE_DRAG_MOVE_POINT:I

    add-int/2addr v0, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->pxToDp(F)I

    move-result v1

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_touchStartPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    .line 2416
    invoke-direct {p0, v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->pxToDp(F)I

    move-result v0

    sget v1, Lcom/metamoji/ui/cabinet/CabinetDef;->JUDGE_DRAG_MOVE_POINT:I

    sub-int/2addr v0, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->pxToDp(F)I

    move-result v1

    if-le v0, v1, :cond_5

    .line 2417
    :cond_4
    iput-boolean v4, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_dragFlg:Z

    .line 2418
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->clearShortPressTimer()V

    .line 2419
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->clearLongPressTimer()V

    .line 2422
    :cond_5
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2425
    iget-boolean v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_dragFlg:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_shortPressFlg:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_startDragFlg:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_currentItem:Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    if-eqz v0, :cond_c

    .line 2428
    invoke-static {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_type(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)I

    move-result v0

    .line 2434
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_currentItem:Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    if-ne v0, v7, :cond_6

    .line 2429
    invoke-static {v1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_content(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object v0

    .line 2431
    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->SHARED_DRIVE:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-eq v0, v1, :cond_c

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->SHARED_DRIVE_OWN:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-ne v0, v1, :cond_7

    goto :goto_2

    .line 2434
    :cond_6
    invoke-static {v1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_type(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)I

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_currentItem:Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_type(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)I

    move-result v0

    if-ne v0, v6, :cond_7

    goto :goto_2

    .line 2439
    :cond_7
    iget-boolean v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectMode:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_currentItem:Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    invoke-direct {p0, v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->isMultiSelectItem(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Z

    move-result v0

    if-nez v0, :cond_8

    return v3

    .line 2443
    :cond_8
    iput-boolean v4, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_startDragFlg:Z

    .line 2444
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->clearLongPressTimer()V

    .line 2445
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_currentItem:Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_type(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)I

    move-result v0

    .line 2448
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_normalView:Lcom/metamoji/ui/cabinet/NoteListGridView;

    if-ne v0, v7, :cond_a

    .line 2446
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v4, :cond_9

    goto :goto_0

    :cond_9
    move v4, v3

    :goto_0
    invoke-virtual {v1, v3, v2, p2, v4}, Lcom/metamoji/ui/cabinet/NoteListGridView;->startDrag(ILjava/lang/String;Landroid/view/MotionEvent;Z)Z

    goto :goto_2

    .line 2448
    :cond_a
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_currentItem:Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_thumbnailPath(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v4, :cond_b

    move v2, v4

    goto :goto_1

    :cond_b
    move v2, v3

    :goto_1
    invoke-virtual {v1, v4, v0, p2, v2}, Lcom/metamoji/ui/cabinet/NoteListGridView;->startDrag(ILjava/lang/String;Landroid/view/MotionEvent;Z)Z

    .line 2454
    :cond_c
    :goto_2
    iget-boolean v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_shortPressFlg:Z

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_longPressFlg:Z

    if-nez v0, :cond_14

    return v3

    .line 2394
    :cond_d
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_currentItem:Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    if-eqz v1, :cond_f

    invoke-static {v1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_type(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)I

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_currentItem:Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    invoke-static {v1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_type(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)I

    move-result v1

    if-ne v6, v1, :cond_f

    .line 2396
    :cond_e
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_normalView:Lcom/metamoji/ui/cabinet/NoteListGridView;

    iget v1, v1, Lcom/metamoji/ui/cabinet/NoteListGridView;->_selectedPosition:I

    invoke-virtual {v0, v1, v3}, Lcom/metamoji/ui/cabinet/NoteListGridView;->setItemViewActivated(IZ)V

    .line 2397
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_normalView:Lcom/metamoji/ui/cabinet/NoteListGridView;

    iput v5, v0, Lcom/metamoji/ui/cabinet/NoteListGridView;->_selectedPosition:I

    .line 2399
    :cond_f
    iget-boolean v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_shortPressFlg:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_longPressFlg:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_dragFlg:Z

    if-nez v0, :cond_11

    .line 2400
    iget-boolean v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_isTrash:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectMode:Z

    if-eqz v0, :cond_11

    :cond_10
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_currentItem:Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    if-eqz v0, :cond_11

    .line 2401
    invoke-direct {p0, v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->onItemClickCore(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)V

    .line 2404
    :cond_11
    iget-boolean v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_startDragFlg:Z

    if-eqz v0, :cond_12

    .line 2405
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_normalView:Lcom/metamoji/ui/cabinet/NoteListGridView;

    invoke-virtual {v0, p2, v4}, Lcom/metamoji/ui/cabinet/NoteListGridView;->stopDrag(Landroid/view/MotionEvent;Z)Z

    .line 2407
    :cond_12
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->initTouchInfo()V

    goto :goto_3

    .line 2376
    :cond_13
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v0, v1, v5}, Lcom/metamoji/ui/cabinet/NoteListGridView;->pointToPosition(II)I

    move-result v1

    .line 2378
    iget-object v5, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_normalView:Lcom/metamoji/ui/cabinet/NoteListGridView;

    iget v5, v5, Lcom/metamoji/ui/cabinet/NoteListGridView;->_selectedPosition:I

    invoke-virtual {v0, v5, v3}, Lcom/metamoji/ui/cabinet/NoteListGridView;->setItemViewActivated(IZ)V

    .line 2380
    invoke-virtual {v0, v1, v4}, Lcom/metamoji/ui/cabinet/NoteListGridView;->setItemViewActivated(IZ)V

    .line 2381
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_normalView:Lcom/metamoji/ui/cabinet/NoteListGridView;

    iput v1, v3, Lcom/metamoji/ui/cabinet/NoteListGridView;->_selectedPosition:I

    .line 2382
    iput-object v2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_selectedDocId:Ljava/lang/String;

    .line 2385
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->initTouchInfo()V

    .line 2386
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->startShortPressTimer()V

    .line 2387
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->startLongPressTimer()V

    .line 2388
    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_touchStartPoint:Landroid/graphics/Point;

    .line 2389
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_normalView:Lcom/metamoji/ui/cabinet/NoteListGridView;

    iget v1, v1, Lcom/metamoji/ui/cabinet/NoteListGridView;->_selectedPosition:I

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/cabinet/NoteListGridView;->getItemView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_currentView:Landroid/view/View;

    .line 2390
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_normalView:Lcom/metamoji/ui/cabinet/NoteListGridView;

    iget v0, v0, Lcom/metamoji/ui/cabinet/NoteListGridView;->_selectedPosition:I

    invoke-direct {p0, v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->getItem(I)Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_currentItem:Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    .line 2472
    :cond_14
    :goto_3
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method private synthetic lambda$prepareSimpleView$1(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    .line 3514
    move-object v0, p1

    check-cast v0, Lcom/metamoji/ui/cabinet/NoteListGridView;

    .line 3515
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_13

    const/4 v5, -0x1

    const/4 v6, 0x4

    if-eq v1, v4, :cond_d

    const/4 v7, 0x2

    if-eq v1, v7, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto/16 :goto_3

    .line 3606
    :cond_0
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_currentItem:Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    if-eqz v1, :cond_2

    invoke-static {v1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_type(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_currentItem:Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    invoke-static {v1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_type(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)I

    move-result v1

    if-ne v6, v1, :cond_2

    .line 3608
    :cond_1
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_simpleView:Lcom/metamoji/ui/cabinet/SimpleGridView;

    iget v1, v1, Lcom/metamoji/ui/cabinet/SimpleGridView;->_selectedPosition:I

    invoke-virtual {v0, v1, v3}, Lcom/metamoji/ui/cabinet/NoteListGridView;->setItemViewActivated(IZ)V

    .line 3609
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_simpleView:Lcom/metamoji/ui/cabinet/SimpleGridView;

    iput v5, v0, Lcom/metamoji/ui/cabinet/SimpleGridView;->_selectedPosition:I

    .line 3611
    :cond_2
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->initTouchInfo()V

    goto/16 :goto_3

    .line 3557
    :cond_3
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_touchStartPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->pxToDp(F)I

    move-result v0

    sget v1, Lcom/metamoji/ui/cabinet/CabinetDef;->JUDGE_DRAG_MOVE_POINT:I

    add-int/2addr v0, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->pxToDp(F)I

    move-result v1

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_touchStartPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    .line 3558
    invoke-direct {p0, v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->pxToDp(F)I

    move-result v0

    sget v1, Lcom/metamoji/ui/cabinet/CabinetDef;->JUDGE_DRAG_MOVE_POINT:I

    sub-int/2addr v0, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->pxToDp(F)I

    move-result v1

    if-gt v0, v1, :cond_4

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_touchStartPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    .line 3559
    invoke-direct {p0, v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->pxToDp(F)I

    move-result v0

    sget v1, Lcom/metamoji/ui/cabinet/CabinetDef;->JUDGE_DRAG_MOVE_POINT:I

    add-int/2addr v0, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->pxToDp(F)I

    move-result v1

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_touchStartPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    .line 3560
    invoke-direct {p0, v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->pxToDp(F)I

    move-result v0

    sget v1, Lcom/metamoji/ui/cabinet/CabinetDef;->JUDGE_DRAG_MOVE_POINT:I

    sub-int/2addr v0, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->pxToDp(F)I

    move-result v1

    if-le v0, v1, :cond_5

    .line 3561
    :cond_4
    iput-boolean v4, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_dragFlg:Z

    .line 3562
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->clearShortPressTimer()V

    .line 3563
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->clearLongPressTimer()V

    .line 3566
    :cond_5
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3569
    iget-boolean v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_dragFlg:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_shortPressFlg:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_startDragFlg:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_currentItem:Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    if-eqz v0, :cond_c

    .line 3572
    invoke-static {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_type(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)I

    move-result v0

    .line 3578
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_currentItem:Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    if-ne v0, v7, :cond_6

    .line 3573
    invoke-static {v1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_content(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object v0

    .line 3575
    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->SHARED_DRIVE:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-eq v0, v1, :cond_c

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->SHARED_DRIVE_OWN:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-ne v0, v1, :cond_7

    goto :goto_2

    .line 3578
    :cond_6
    invoke-static {v1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_type(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)I

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_currentItem:Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_type(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)I

    move-result v0

    if-ne v0, v6, :cond_7

    goto :goto_2

    .line 3583
    :cond_7
    iget-boolean v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectMode:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_currentItem:Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    invoke-direct {p0, v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->isMultiSelectItem(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Z

    move-result v0

    if-nez v0, :cond_8

    return v3

    .line 3587
    :cond_8
    iput-boolean v4, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_startDragFlg:Z

    .line 3588
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->clearLongPressTimer()V

    .line 3589
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_currentItem:Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_type(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)I

    move-result v0

    .line 3592
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_simpleView:Lcom/metamoji/ui/cabinet/SimpleGridView;

    if-ne v0, v7, :cond_a

    .line 3590
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v4, :cond_9

    goto :goto_0

    :cond_9
    move v4, v3

    :goto_0
    invoke-virtual {v1, v3, v2, p2, v4}, Lcom/metamoji/ui/cabinet/SimpleGridView;->startDrag(ILjava/lang/String;Landroid/view/MotionEvent;Z)Z

    goto :goto_2

    .line 3592
    :cond_a
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_currentItem:Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_thumbnailPath(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v4, :cond_b

    move v2, v4

    goto :goto_1

    :cond_b
    move v2, v3

    :goto_1
    invoke-virtual {v1, v4, v0, p2, v2}, Lcom/metamoji/ui/cabinet/SimpleGridView;->startDrag(ILjava/lang/String;Landroid/view/MotionEvent;Z)Z

    .line 3598
    :cond_c
    :goto_2
    iget-boolean v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_shortPressFlg:Z

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_longPressFlg:Z

    if-nez v0, :cond_14

    return v3

    .line 3538
    :cond_d
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_currentItem:Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    if-eqz v1, :cond_f

    invoke-static {v1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_type(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)I

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_currentItem:Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    invoke-static {v1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_type(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)I

    move-result v1

    if-ne v6, v1, :cond_f

    .line 3540
    :cond_e
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_simpleView:Lcom/metamoji/ui/cabinet/SimpleGridView;

    iget v1, v1, Lcom/metamoji/ui/cabinet/SimpleGridView;->_selectedPosition:I

    invoke-virtual {v0, v1, v3}, Lcom/metamoji/ui/cabinet/NoteListGridView;->setItemViewActivated(IZ)V

    .line 3541
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_simpleView:Lcom/metamoji/ui/cabinet/SimpleGridView;

    iput v5, v0, Lcom/metamoji/ui/cabinet/SimpleGridView;->_selectedPosition:I

    .line 3543
    :cond_f
    iget-boolean v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_shortPressFlg:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_longPressFlg:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_dragFlg:Z

    if-nez v0, :cond_11

    .line 3544
    iget-boolean v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_isTrash:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectMode:Z

    if-eqz v0, :cond_11

    :cond_10
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_currentItem:Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    if-eqz v0, :cond_11

    .line 3545
    invoke-direct {p0, v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->onItemClickCore(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)V

    .line 3548
    :cond_11
    iget-boolean v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_startDragFlg:Z

    if-eqz v0, :cond_12

    .line 3549
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_simpleView:Lcom/metamoji/ui/cabinet/SimpleGridView;

    invoke-virtual {v0, p2, v4}, Lcom/metamoji/ui/cabinet/SimpleGridView;->stopDrag(Landroid/view/MotionEvent;Z)Z

    .line 3551
    :cond_12
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->initTouchInfo()V

    goto :goto_3

    .line 3520
    :cond_13
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v0, v1, v5}, Lcom/metamoji/ui/cabinet/NoteListGridView;->pointToPosition(II)I

    move-result v1

    .line 3522
    iget-object v5, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_simpleView:Lcom/metamoji/ui/cabinet/SimpleGridView;

    iget v5, v5, Lcom/metamoji/ui/cabinet/SimpleGridView;->_selectedPosition:I

    invoke-virtual {v0, v5, v3}, Lcom/metamoji/ui/cabinet/NoteListGridView;->setItemViewActivated(IZ)V

    .line 3524
    invoke-virtual {v0, v1, v4}, Lcom/metamoji/ui/cabinet/NoteListGridView;->setItemViewActivated(IZ)V

    .line 3525
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_simpleView:Lcom/metamoji/ui/cabinet/SimpleGridView;

    iput v1, v3, Lcom/metamoji/ui/cabinet/SimpleGridView;->_selectedPosition:I

    .line 3526
    iput-object v2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_selectedDocId:Ljava/lang/String;

    .line 3529
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->initTouchInfo()V

    .line 3530
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->startShortPressTimer()V

    .line 3531
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->startLongPressTimer()V

    .line 3532
    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_touchStartPoint:Landroid/graphics/Point;

    .line 3533
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_simpleView:Lcom/metamoji/ui/cabinet/SimpleGridView;

    iget v1, v1, Lcom/metamoji/ui/cabinet/SimpleGridView;->_selectedPosition:I

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/cabinet/NoteListGridView;->getItemView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_currentView:Landroid/view/View;

    .line 3534
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_simpleView:Lcom/metamoji/ui/cabinet/SimpleGridView;

    iget v0, v0, Lcom/metamoji/ui/cabinet/SimpleGridView;->_selectedPosition:I

    invoke-direct {p0, v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->getItem(I)Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_currentItem:Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    .line 3616
    :cond_14
    :goto_3
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public static moveNoteForContextmenu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    .line 6757
    invoke-static {v0, v0, p0, p1, p2}, Lcom/metamoji/nt/cabinet/NtCabinetClipboard;->setData(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static moveNoteForContextmenu(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 6762
    invoke-static {v0, v0, p0, p1, p2}, Lcom/metamoji/nt/cabinet/NtCabinetClipboard;->setData(IILjava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private moveNotes(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 6169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6170
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6171
    invoke-direct {p0, p1, v0, p3}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->moveNotes(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/List;)V

    return-void
.end method

.method private moveNotes(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 6181
    new-instance v2, Lcom/metamoji/forSchool/ui/ScSelectNote;

    sget v0, Lcom/metamoji/noteanytime/R$string;->Cabinet_Folder_Move:I

    const/4 v1, 0x0

    invoke-direct {v2, v0, v1}, Lcom/metamoji/forSchool/ui/ScSelectNote;-><init>(ILjava/util/ArrayList;)V

    .line 6182
    new-instance v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$49;

    move-object v1, p0

    move-object v5, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$49;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Lcom/metamoji/forSchool/ui/ScSelectNote;Ljava/util/ArrayList;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/metamoji/forSchool/ui/ScSelectNote;->setOnClosedListener(Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;)V

    .line 6196
    sget-object p1, Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;->MoveNote:Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;

    iput-object p1, v2, Lcom/metamoji/forSchool/ui/ScSelectNote;->selectMode:Lcom/metamoji/forSchool/ui/ScSelectNote$Mode;

    .line 6197
    invoke-virtual {v2, v5, v4}, Lcom/metamoji/forSchool/ui/ScSelectNote;->setInitDriveId(Ljava/lang/String;Ljava/util/List;)V

    .line 6198
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string p2, "SelectNote"

    invoke-virtual {v2, p1, p2}, Lcom/metamoji/forSchool/ui/ScSelectNote;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private newNoteTemplateBasedOnNote(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)V
    .locals 2

    .line 6207
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$50;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$50;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->runOnBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method private newNoteTemplateBasedOnNote(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/nt/NtNoteTemplateSettings;Z)V
    .locals 0

    .line 6303
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p4

    invoke-virtual {p4}, Lcom/metamoji/cm/CmTaskManager;->isBusy()Z

    move-result p4

    if-eqz p4, :cond_0

    return-void

    .line 6306
    :cond_0
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object p4

    invoke-virtual {p4, p1}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object p1

    .line 6307
    invoke-virtual {p1, p2, p3}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->newNoteTemplateBasedOnNoteWithDocId(Ljava/lang/String;Lcom/metamoji/nt/NtNoteTemplateSettings;)Lcom/metamoji/dvm/fw/result/DvmDMResultWithDocId;

    move-result-object p1

    .line 6308
    invoke-virtual {p1}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithDocId;->succeeded()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 6309
    invoke-virtual {p1}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithDocId;->getDocumentId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_selectedDocId:Ljava/lang/String;

    .line 6310
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_currentDisplayedFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->update(Lcom/metamoji/ui/cabinet/CabinetTreeItem;Z)V

    return-void

    .line 6312
    :cond_1
    invoke-static {p1}, Lcom/metamoji/ui/cabinet/CabinetUtils;->dvmErrorAnalize(Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;)V

    return-void
.end method

.method private newNoteTemplateBasedOnNote2(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/nt/NtNoteTemplateSettings;)V
    .locals 6

    .line 6265
    new-instance v2, Lcom/metamoji/ui/dialog/DocumentSettings2;

    sget-object v0, Lcom/metamoji/ui/dialog/DocumentSettings2$DlgType;->NoteTemplateCreate:Lcom/metamoji/ui/dialog/DocumentSettings2$DlgType;

    invoke-direct {v2, v0}, Lcom/metamoji/ui/dialog/DocumentSettings2;-><init>(Lcom/metamoji/ui/dialog/DocumentSettings2$DlgType;)V

    .line 6267
    iget-object v0, p3, Lcom/metamoji/nt/NtNoteTemplateSettings;->titleRule:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/metamoji/ui/dialog/DocumentSettings2;->setTitleRule(Ljava/lang/String;)V

    .line 6268
    iget-object v0, p3, Lcom/metamoji/nt/NtNoteTemplateSettings;->header:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/metamoji/ui/dialog/DocumentSettings2;->setHeader(Ljava/lang/String;)V

    .line 6269
    iget-object v0, p3, Lcom/metamoji/nt/NtNoteTemplateSettings;->footer:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/metamoji/ui/dialog/DocumentSettings2;->setFooter(Ljava/lang/String;)V

    .line 6270
    iget-boolean v0, p3, Lcom/metamoji/nt/NtNoteTemplateSettings;->hasFrontCover:Z

    invoke-virtual {v2, v0}, Lcom/metamoji/ui/dialog/DocumentSettings2;->setFrontCover(Z)V

    .line 6271
    iget-boolean v0, p3, Lcom/metamoji/nt/NtNoteTemplateSettings;->noFrontCoverOnPrinting:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Lcom/metamoji/ui/dialog/DocumentSettings2;->setPrintCover(Z)V

    .line 6272
    iget-boolean v0, p3, Lcom/metamoji/nt/NtNoteTemplateSettings;->useNoteTextSettings:Z

    invoke-virtual {v2, v0}, Lcom/metamoji/ui/dialog/DocumentSettings2;->setUseNoteSettingsForText(Z)V

    .line 6273
    iget-object v0, p3, Lcom/metamoji/nt/NtNoteTemplateSettings;->textUnitStyles:Lcom/metamoji/un/text/model/UnitStyles;

    invoke-virtual {v2, v0}, Lcom/metamoji/ui/dialog/DocumentSettings2;->setUnitStyles(Lcom/metamoji/un/text/model/UnitStyles;)V

    .line 6274
    iget-object v0, p3, Lcom/metamoji/nt/NtNoteTemplateSettings;->passwordHash:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/metamoji/ui/dialog/DocumentSettings2;->setPasswordHash(Ljava/lang/String;)V

    .line 6275
    iget-boolean v0, p3, Lcom/metamoji/nt/NtNoteTemplateSettings;->hasRecordings:Z

    invoke-virtual {v2, v0}, Lcom/metamoji/ui/dialog/DocumentSettings2;->setIsVoiceGroupVisible(Z)V

    .line 6277
    new-instance v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$51;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$51;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Lcom/metamoji/ui/dialog/DocumentSettings2;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/nt/NtNoteTemplateSettings;)V

    invoke-virtual {v2, v0}, Lcom/metamoji/ui/dialog/DocumentSettings2;->setOnClosedListener(Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;)V

    .line 6297
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string p2, "DocumentSettings2"

    invoke-virtual {v2, p1, p2}, Lcom/metamoji/ui/dialog/DocumentSettings2;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private onItemClickCore(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)V
    .locals 4

    .line 4479
    invoke-static {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_type(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)I

    move-result v0

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    if-eq v0, v1, :cond_1

    const/4 p1, 0x4

    if-eq v0, p1, :cond_0

    goto/16 :goto_0

    .line 4484
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->showNewDriveDialog()V

    return-void

    .line 4487
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_detailView:Lcom/metamoji/ui/cabinet/DetailGridView;

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    .line 4488
    iput v1, v0, Lcom/metamoji/ui/cabinet/DetailGridView;->_selectedPosition:I

    .line 4490
    :cond_2
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_normalView:Lcom/metamoji/ui/cabinet/NoteListGridView;

    if-eqz v0, :cond_3

    .line 4491
    iput v1, v0, Lcom/metamoji/ui/cabinet/NoteListGridView;->_selectedPosition:I

    .line 4493
    :cond_3
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_simpleView:Lcom/metamoji/ui/cabinet/SimpleGridView;

    if-eqz v0, :cond_4

    .line 4494
    iput v1, v0, Lcom/metamoji/ui/cabinet/SimpleGridView;->_selectedPosition:I

    :cond_4
    const/4 v0, 0x0

    .line 4496
    iput-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_selectedDocId:Ljava/lang/String;

    .line 4497
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_folderClickListener:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$OnFolderClickListener;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_content(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-interface {v0, v1}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$OnFolderClickListener;->onFolderItemClick(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V

    .line 4498
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_folderChangeEventListener:Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_content(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-interface {v0, p1}, Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;->onFolderOpened(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V

    return-void

    .line 4501
    :cond_5
    iget-boolean v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectMode:Z

    if-eqz v0, :cond_d

    .line 4502
    invoke-direct {p0, p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->getItemIndexForItem(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)I

    move-result v0

    if-ltz v0, :cond_c

    .line 4504
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_NoteListMode:Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;

    invoke-virtual {v3}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;->ordinal()I

    move-result v3

    if-eqz v3, :cond_9

    if-eq v3, v1, :cond_6

    goto :goto_0

    .line 4517
    :cond_6
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_simpleView:Lcom/metamoji/ui/cabinet/SimpleGridView;

    if-eqz v1, :cond_c

    .line 4518
    invoke-virtual {v1, v0}, Lcom/metamoji/ui/cabinet/SimpleGridView;->getItemView(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_0

    .line 4520
    :cond_7
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleViewHolder;

    if-eqz v0, :cond_c

    .line 4521
    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleViewHolder;->getType()I

    move-result v1

    if-eq v2, v1, :cond_8

    goto :goto_0

    .line 4522
    :cond_8
    check-cast v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleDocumentViewHolder;

    .line 4523
    iget-object v0, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleDocumentViewHolder;->_multiselectCheck:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->changeMultiselectCheckVisibility(Landroid/widget/ImageView;Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)V

    return-void

    .line 4506
    :cond_9
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_normalView:Lcom/metamoji/ui/cabinet/NoteListGridView;

    if-eqz v1, :cond_c

    .line 4507
    invoke-virtual {v1, v0}, Lcom/metamoji/ui/cabinet/NoteListGridView;->getItemView(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_a

    goto :goto_0

    .line 4509
    :cond_a
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalViewHolder;

    if-eqz v0, :cond_c

    .line 4510
    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalViewHolder;->getType()I

    move-result v1

    if-eq v2, v1, :cond_b

    goto :goto_0

    .line 4511
    :cond_b
    check-cast v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalDocumentViewHolder;

    .line 4512
    iget-object v0, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalDocumentViewHolder;->_multiselectCheck:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->changeMultiselectCheckVisibility(Landroid/widget/ImageView;Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)V

    :cond_c
    :goto_0
    return-void

    .line 4533
    :cond_d
    invoke-static {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_metadata(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->isTemplate(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_f

    .line 4534
    invoke-static {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_metadata(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->isShareTemplate(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 4536
    invoke-static {}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_e

    .line 4537
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$37;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$37;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;)Z

    return-void

    .line 4549
    :cond_e
    invoke-direct {p0, p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->copyAndEditNoteAsNew(Ljava/lang/Object;)V

    return-void

    :cond_f
    const/4 v0, 0x0

    .line 4551
    invoke-direct {p0, p1, v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->editNote(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;Z)V

    return-void

    .line 4481
    :cond_10
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->showLibraryViewDialog()V

    return-void
.end method

.method private prepareDriveMemberButton()V
    .locals 2

    .line 1241
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_rootView:Landroid/view/View;

    sget v1, Lcom/metamoji/noteanytime/R$id;->cabinet_drive_member_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiButton;

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_driveMemberBtn:Lcom/metamoji/ui/common/UiButton;

    const/16 v1, 0x8

    .line 1242
    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    .line 1243
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_driveMemberBtn:Lcom/metamoji/ui/common/UiButton;

    new-instance v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$11;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$11;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private prepareInviteButton()V
    .locals 2

    .line 1209
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_rootView:Landroid/view/View;

    sget v1, Lcom/metamoji/noteanytime/R$id;->cabinet_invite_box_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiButton;

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_inviteBtn:Lcom/metamoji/ui/common/UiButton;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 1211
    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    .line 1212
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_inviteBtn:Lcom/metamoji/ui/common/UiButton;

    new-instance v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$10;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$10;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private prepareModeChangeButton()V
    .locals 3

    .line 1061
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_rootView:Landroid/view/View;

    sget v1, Lcom/metamoji/noteanytime/R$id;->cabinet_normal_mode_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_normalModeBtn:Landroid/widget/ImageButton;

    .line 1062
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_rootView:Landroid/view/View;

    sget v1, Lcom/metamoji/noteanytime/R$id;->cabinet_detail_mode_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_detailModeBtn:Landroid/widget/ImageButton;

    .line 1063
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_rootView:Landroid/view/View;

    sget v1, Lcom/metamoji/noteanytime/R$id;->cabinet_simple_mode_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_simpleModeBtn:Landroid/widget/ImageButton;

    .line 1065
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_normalModeBtn:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1067
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_detailModeBtn:Landroid/widget/ImageButton;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1071
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_simpleModeBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1073
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_NoteListMode:Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;

    sget-object v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;->NoteListModeType_Normal:Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 1074
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_normalModeBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto :goto_0

    .line 1075
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_NoteListMode:Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;

    sget-object v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;->NoteListModeType_Detail:Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;

    if-ne v0, v1, :cond_1

    .line 1076
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_detailModeBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto :goto_0

    .line 1078
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_simpleModeBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 1081
    :goto_0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_normalModeBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$6;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$6;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1107
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_detailModeBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$7;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$7;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1133
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_simpleModeBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$8;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$8;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private prepareMultiSelectButton()V
    .locals 3

    .line 1412
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_rootView:Landroid/view/View;

    sget v1, Lcom/metamoji/noteanytime/R$id;->cabinet_multiselect_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiButton;

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectBtn:Lcom/metamoji/ui/common/UiButton;

    .line 1413
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_rootView:Landroid/view/View;

    sget v1, Lcom/metamoji/noteanytime/R$id;->cabinet_multiselect_cancel_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiButton;

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectCancelBtn:Lcom/metamoji/ui/common/UiButton;

    .line 1414
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_rootView:Landroid/view/View;

    sget v1, Lcom/metamoji/noteanytime/R$id;->cabinet_multiselect_delete_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectDeleteBtn:Landroid/widget/Button;

    .line 1415
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_rootView:Landroid/view/View;

    sget v1, Lcom/metamoji/noteanytime/R$id;->cabinet_multiselect_select_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiButton;

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectSelectBtn:Lcom/metamoji/ui/common/UiButton;

    .line 1416
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_rootView:Landroid/view/View;

    sget v1, Lcom/metamoji/noteanytime/R$id;->cabinet_multiselect_star_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiButton;

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectStarBtn:Lcom/metamoji/ui/common/UiButton;

    .line 1417
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_rootView:Landroid/view/View;

    sget v1, Lcom/metamoji/noteanytime/R$id;->cabinet_multiselect_etc_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiButton;

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectEtcBtn:Lcom/metamoji/ui/common/UiButton;

    .line 1418
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_rootView:Landroid/view/View;

    sget v1, Lcom/metamoji/noteanytime/R$id;->cabinet_multiselect_revert_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiButton;

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectRevertBtn:Lcom/metamoji/ui/common/UiButton;

    .line 1419
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_rootView:Landroid/view/View;

    sget v1, Lcom/metamoji/noteanytime/R$id;->cabinet_normal_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_normalLayout:Landroid/widget/FrameLayout;

    .line 1420
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_rootView:Landroid/view/View;

    sget v1, Lcom/metamoji/noteanytime/R$id;->cabinet_multiselect_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiselectLayout:Landroid/widget/FrameLayout;

    .line 1422
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectBtn:Lcom/metamoji/ui/common/UiButton;

    new-instance v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$18;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$18;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1434
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectCancelBtn:Lcom/metamoji/ui/common/UiButton;

    new-instance v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$19;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$19;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1444
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectDeleteBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1445
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1446
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectDeleteBtn:Landroid/widget/Button;

    new-instance v2, Lcom/metamoji/ui/cabinet/NoteListViewFragment$20;

    invoke-direct {v2, p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$20;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1455
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectSelectBtn:Lcom/metamoji/ui/common/UiButton;

    if-eqz v0, :cond_1

    .line 1456
    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    .line 1457
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectSelectBtn:Lcom/metamoji/ui/common/UiButton;

    new-instance v2, Lcom/metamoji/ui/cabinet/NoteListViewFragment$21;

    invoke-direct {v2, p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$21;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1469
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectStarBtn:Lcom/metamoji/ui/common/UiButton;

    if-eqz v0, :cond_2

    .line 1470
    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    .line 1471
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectStarBtn:Lcom/metamoji/ui/common/UiButton;

    new-instance v2, Lcom/metamoji/ui/cabinet/NoteListViewFragment$22;

    invoke-direct {v2, p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$22;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1483
    :cond_2
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectEtcBtn:Lcom/metamoji/ui/common/UiButton;

    if-eqz v0, :cond_3

    .line 1484
    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    .line 1485
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectEtcBtn:Lcom/metamoji/ui/common/UiButton;

    new-instance v2, Lcom/metamoji/ui/cabinet/NoteListViewFragment$23;

    invoke-direct {v2, p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$23;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1597
    :cond_3
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectRevertBtn:Lcom/metamoji/ui/common/UiButton;

    if-eqz v0, :cond_4

    .line 1598
    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    .line 1599
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectRevertBtn:Lcom/metamoji/ui/common/UiButton;

    new-instance v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$24;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$24;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    return-void
.end method

.method private prepareNewButton()V
    .locals 2

    .line 1028
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1029
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_rootView:Landroid/view/View;

    sget v1, Lcom/metamoji/noteanytime/R$id;->cabinet_new_drive_icon_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_newDriveBtn:Landroid/widget/ImageButton;

    .line 1031
    new-instance v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$5;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$5;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method private prepareNormalView()V
    .locals 7

    .line 2062
    iget-object v5, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_thumbTaskMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2063
    iget-object v6, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_nicknameTaskMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2064
    new-instance v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$26;

    iget-object v2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_activity:Landroidx/fragment/app/FragmentActivity;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_itemList:Ljava/util/ArrayList;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$26;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Landroid/content/Context;ILjava/util/List;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/ConcurrentHashMap;)V

    iput-object v0, v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_normalViewAdapter:Landroid/widget/ArrayAdapter;

    .line 2368
    iget-object v2, v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_normalView:Lcom/metamoji/ui/cabinet/NoteListGridView;

    invoke-virtual {v2, v0}, Lcom/metamoji/ui/cabinet/NoteListGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2369
    iget-object v0, v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_normalView:Lcom/metamoji/ui/cabinet/NoteListGridView;

    new-instance v2, Lcom/metamoji/ui/cabinet/NoteListViewFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/cabinet/NoteListGridView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2477
    iget-object v0, v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_normalView:Lcom/metamoji/ui/cabinet/NoteListGridView;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/NoteListGridView;->updateScrollPosition()V

    .line 2478
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->setNormalViewVisibility()V

    .line 2480
    iget-object v0, v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_normalViewAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private prepareNoteCountLabel()V
    .locals 2

    .line 2014
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_rootView:Landroid/view/View;

    sget v1, Lcom/metamoji/noteanytime/R$id;->cabinet_notecount_label:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_noteCountLabel:Landroid/widget/TextView;

    return-void
.end method

.method private preparePagingButton()V
    .locals 2

    .line 1334
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_activity:Landroidx/fragment/app/FragmentActivity;

    instance-of v1, v0, Lcom/metamoji/noteanytime/MainActivity;

    if-nez v1, :cond_0

    return-void

    .line 1337
    :cond_0
    sget v1, Lcom/metamoji/noteanytime/R$id;->cabinet_paging_button:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->m_pagingButton:Landroid/view/View;

    .line 1338
    sget v1, Lcom/metamoji/noteanytime/R$id;->cabinet_paging_prev:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->m_pagingPrev:Landroid/widget/ImageButton;

    .line 1339
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->m_pagingButton:Landroid/view/View;

    sget v1, Lcom/metamoji/noteanytime/R$id;->cabinet_paging_next:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->m_pagingNext:Landroid/widget/ImageButton;

    .line 1340
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->m_pagingButton:Landroid/view/View;

    sget v1, Lcom/metamoji/noteanytime/R$id;->cabinet_paging_page_count:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->m_pagingNowPage:Landroid/widget/TextView;

    .line 1342
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->m_pagingButton:Landroid/view/View;

    new-instance v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$15;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$15;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1347
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->m_pagingPrev:Landroid/widget/ImageButton;

    new-instance v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$16;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$16;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1355
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->m_pagingNext:Landroid/widget/ImageButton;

    new-instance v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$17;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$17;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private prepareSearchButton()V
    .locals 3

    .line 1317
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_activity:Landroidx/fragment/app/FragmentActivity;

    instance-of v1, v0, Lcom/metamoji/noteanytime/MainActivity;

    if-nez v1, :cond_0

    goto :goto_0

    .line 1320
    :cond_0
    check-cast v0, Lcom/metamoji/noteanytime/MainActivity;

    .line 1321
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_rootView:Landroid/view/View;

    sget v2, Lcom/metamoji/noteanytime/R$id;->cabinet_search_button:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1323
    new-instance v2, Lcom/metamoji/ui/cabinet/NoteListViewFragment$14;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$14;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Lcom/metamoji/noteanytime/MainActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private prepareSearchLabel()V
    .locals 2

    .line 2004
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_rootView:Landroid/view/View;

    sget v1, Lcom/metamoji/noteanytime/R$id;->cabinet_search_label_left:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_searchLabelLeft:Landroid/view/View;

    .line 2005
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_rootView:Landroid/view/View;

    sget v1, Lcom/metamoji/noteanytime/R$id;->cabinet_search_label_right:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_searchLabelRight:Landroid/view/View;

    .line 2006
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_rootView:Landroid/view/View;

    sget v1, Lcom/metamoji/noteanytime/R$id;->cabinet_search_label_center:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_searchLabel:Landroid/widget/TextView;

    .line 2007
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_rootView:Landroid/view/View;

    sget v1, Lcom/metamoji/noteanytime/R$id;->cabinet_search_label_dmy:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_searchLabelDmy:Landroid/view/View;

    const/16 v0, 0x8

    .line 2010
    invoke-direct {p0, v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->setSearchLabelVisibility(I)V

    return-void
.end method

.method private prepareShareButton()V
    .locals 4

    .line 1274
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_rootView:Landroid/view/View;

    sget v1, Lcom/metamoji/noteanytime/R$id;->cabinet_share_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_shareBtn:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    return-void

    .line 1285
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_userDefaults:Lcom/metamoji/nt/NtUserDefaults;

    const/4 v0, 0x0

    .line 1286
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_squeezeShare:Z

    .line 1287
    invoke-static {}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$MvDispNoteType;->values()[Lcom/metamoji/ui/cabinet/NoteListViewFragment$MvDispNoteType;

    move-result-object v0

    .line 1288
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_userDefaults:Lcom/metamoji/nt/NtUserDefaults;

    sget-object v2, Lcom/metamoji/ui/cabinet/NoteListViewFragment$MvDispNoteType;->MvDispNoteType_Normal:Lcom/metamoji/ui/cabinet/NoteListViewFragment$MvDispNoteType;

    invoke-virtual {v2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$MvDispNoteType;->ordinal()I

    move-result v2

    const-string v3, "MMJNtCabinetDispNoteType"

    invoke-virtual {v1, v3, v2}, Lcom/metamoji/nt/NtUserDefaults;->getIntValue(Ljava/lang/String;I)I

    move-result v1

    .line 1289
    aget-object v0, v0, v1

    .line 1290
    sget-object v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$MvDispNoteType;->MvDispNoteType_ShareOnly:Lcom/metamoji/ui/cabinet/NoteListViewFragment$MvDispNoteType;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 1291
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_squeezeShare:Z

    .line 1294
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_shareBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$13;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$13;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1312
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_shareBtn:Landroid/widget/ImageButton;

    iget-boolean v2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_squeezeShare:Z

    invoke-virtual {p0, v0, v1, v2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->changeShareBtnImage(Landroidx/fragment/app/FragmentActivity;Landroid/widget/ImageButton;Z)V

    return-void
.end method

.method private prepareSimpleView()V
    .locals 7

    .line 3212
    iget-object v5, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_thumbTaskMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3213
    iget-object v6, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_nicknameTaskMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3214
    new-instance v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$30;

    iget-object v2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_activity:Landroidx/fragment/app/FragmentActivity;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_itemList:Ljava/util/ArrayList;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$30;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Landroid/content/Context;ILjava/util/List;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/ConcurrentHashMap;)V

    iput-object v0, v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_simpleViewAdapter:Landroid/widget/ArrayAdapter;

    .line 3510
    iget-object v2, v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_simpleView:Lcom/metamoji/ui/cabinet/SimpleGridView;

    invoke-virtual {v2, v0}, Lcom/metamoji/ui/cabinet/SimpleGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3513
    iget-object v0, v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_simpleView:Lcom/metamoji/ui/cabinet/SimpleGridView;

    new-instance v2, Lcom/metamoji/ui/cabinet/NoteListViewFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/cabinet/SimpleGridView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3618
    iget-object v0, v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_simpleView:Lcom/metamoji/ui/cabinet/SimpleGridView;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/SimpleGridView;->updateScrollPosition()V

    .line 3619
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->setSimpleViewVisibility()V

    .line 3620
    iget-object v0, v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_simpleViewAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private prepareSortButton()V
    .locals 3

    .line 1258
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_activity:Landroidx/fragment/app/FragmentActivity;

    instance-of v1, v0, Lcom/metamoji/noteanytime/MainActivity;

    if-nez v1, :cond_0

    goto :goto_0

    .line 1261
    :cond_0
    check-cast v0, Lcom/metamoji/noteanytime/MainActivity;

    .line 1262
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_rootView:Landroid/view/View;

    sget v2, Lcom/metamoji/noteanytime/R$id;->cabinet_sort_button:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1264
    new-instance v2, Lcom/metamoji/ui/cabinet/NoteListViewFragment$12;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$12;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Lcom/metamoji/noteanytime/MainActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private prepareTagView(Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalDocumentViewHolder;Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)V
    .locals 6

    .line 3118
    invoke-direct {p0, p2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->getDisplayTagInfos(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Ljava/util/List;

    move-result-object p2

    .line 3119
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalDocumentViewHolder;->_tagViews:[Landroid/widget/ImageView;

    array-length v1, v1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 3120
    :goto_0
    iget-object v1, p1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalDocumentViewHolder;->_tagViews:[Landroid/widget/ImageView;

    array-length v1, v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-eqz v0, :cond_1

    add-int/lit8 v1, v1, -0x1

    :cond_1
    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_2

    .line 3125
    iget-object v4, p1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalDocumentViewHolder;->_tagViews:[Landroid/widget/ImageView;

    aget-object v4, v4, v3

    .line 3126
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 3127
    check-cast v5, Lcom/metamoji/dvm/fw/bean/DvmTagBean;

    invoke-virtual {v5}, Lcom/metamoji/dvm/fw/bean/DvmTagBean;->getColor()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 3128
    invoke-static {v5}, Lcom/metamoji/ui/cabinet/CabinetUtils;->getSmallTagImageID(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3129
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3131
    :cond_2
    :goto_2
    iget-object v1, p1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalDocumentViewHolder;->_tagViews:[Landroid/widget/ImageView;

    array-length v1, v1

    const/16 v4, 0x8

    if-ge v3, v1, :cond_3

    .line 3132
    iget-object v1, p1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalDocumentViewHolder;->_tagViews:[Landroid/widget/ImageView;

    aget-object v1, v1, v3

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 3135
    :cond_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_4

    .line 3136
    iget-object p2, p1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalDocumentViewHolder;->_tagViews:[Landroid/widget/ImageView;

    aget-object p2, p2, v2

    const/4 v1, 0x4

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3137
    :cond_4
    iget-object p1, p1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalDocumentViewHolder;->_tagOverflow:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    move v2, v4

    :goto_3
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private prepareTrashAllDeleteButton()V
    .locals 2

    .line 1161
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_rootView:Landroid/view/View;

    sget v1, Lcom/metamoji/noteanytime/R$id;->cabinet_trash_all_delete_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiButton;

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_trashDeleteBtn:Lcom/metamoji/ui/common/UiButton;

    const/16 v1, 0x8

    .line 1162
    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    .line 1164
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_trashDeleteBtn:Lcom/metamoji/ui/common/UiButton;

    new-instance v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$9;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$9;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private pxToDp(F)I
    .locals 2

    .line 3628
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3629
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 3630
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    div-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private refreshSyncStatus()V
    .locals 3

    .line 849
    :try_start_0
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v0

    .line 850
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 853
    iput-boolean v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_syncUser:Z

    .line 854
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_activity:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0}, Lcom/metamoji/noteanytime/MainActivity;->refreshSyncButton(Landroidx/fragment/app/FragmentActivity;)V

    return-void

    .line 858
    :cond_0
    iget v0, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userType:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    .line 859
    iput-boolean v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_syncUser:Z

    .line 860
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_activity:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0}, Lcom/metamoji/noteanytime/MainActivity;->refreshSyncButton(Landroidx/fragment/app/FragmentActivity;)V

    return-void

    .line 864
    :cond_1
    invoke-static {}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->getInstance()Lcom/metamoji/dm/impl/sync/DmDCSyncManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->toDoSync(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 867
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_syncUser:Z

    goto :goto_0

    .line 869
    :cond_2
    iput-boolean v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_syncUser:Z

    .line 872
    :goto_0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_activity:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0}, Lcom/metamoji/noteanytime/MainActivity;->refreshSyncButton(Landroidx/fragment/app/FragmentActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private resolveUserName(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 4361
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    .line 4362
    invoke-virtual {v0, p1}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4364
    invoke-virtual {p1}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->normalizedMemberNameMapCache()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4366
    invoke-virtual {p1}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->updateNormalizedMemberNameMapCache()Ljava/util/Map;

    :cond_0
    return-void
.end method

.method private restoreNote(Ljava/lang/Object;)V
    .locals 6

    .line 6399
    instance-of v0, p1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    if-nez v0, :cond_0

    goto :goto_0

    .line 6402
    :cond_0
    check-cast p1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    .line 6403
    invoke-static {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_type(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v1, v0, :cond_1

    :goto_0
    return-void

    .line 6406
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDriveId()Ljava/lang/String;

    move-result-object v0

    .line 6407
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDocId()Ljava/lang/String;

    move-result-object p1

    .line 6409
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object v2

    .line 6410
    invoke-virtual {v2, p1}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->restoreDocumentFromTrash(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;

    move-result-object v3

    .line 6411
    invoke-virtual {v3}, Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;->succeeded()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 6413
    invoke-virtual {v2, p1}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getTagNameListForDocument(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 6414
    const-string v4, "beforeTags = %s"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6415
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 6417
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, p1, v3}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->setTagToDocument(Ljava/lang/String;Ljava/util/List;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;

    move-result-object v3

    .line 6418
    invoke-virtual {v3}, Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;->succeeded()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6419
    invoke-virtual {v2, p1}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getTagNameListForDocument(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 6420
    const-string v4, "afterTags = %s"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6425
    :cond_2
    invoke-virtual {v2, p1}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentInfo(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    move-result-object p1

    .line 6426
    invoke-virtual {p1}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->getTitle()Ljava/lang/String;

    move-result-object p1

    .line 6427
    invoke-static {v0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->getDriveName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "[ %s ] : %s"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x19e

    .line 6428
    invoke-static {v0, p1}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils;->logOperation(ILjava/lang/String;)V

    .line 6430
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_currentDisplayedFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {p0, p1, v1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->update(Lcom/metamoji/ui/cabinet/CabinetTreeItem;Z)V

    return-void

    .line 6432
    :cond_3
    invoke-static {v3}, Lcom/metamoji/ui/cabinet/CabinetUtils;->dvmErrorAnalize(Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;)V

    return-void
.end method

.method private setDetailViewVisibility()V
    .locals 3

    .line 3052
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_detailView:Lcom/metamoji/ui/cabinet/DetailGridView;

    if-eqz v0, :cond_1

    .line 3053
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_NoteListMode:Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;

    sget-object v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;->NoteListModeType_Detail:Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;

    .line 3056
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_detailView:Lcom/metamoji/ui/cabinet/DetailGridView;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 3054
    invoke-virtual {v2, v0}, Lcom/metamoji/ui/cabinet/DetailGridView;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v0, 0x4

    .line 3056
    invoke-virtual {v2, v0}, Lcom/metamoji/ui/cabinet/DetailGridView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private setMultiselectCheckVisibility(Landroid/widget/ImageView;Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)V
    .locals 2

    .line 2518
    iget-boolean v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectMode:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2519
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2520
    invoke-direct {p0, p2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->isMultiSelectItem(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    .line 2521
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageLevel(I)V

    return-void

    .line 2523
    :cond_0
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    return-void

    :cond_1
    const/4 p2, 0x4

    .line 2526
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2527
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    return-void
.end method

.method private setNormalViewNumColumns()V
    .locals 2

    .line 665
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_normalView:Lcom/metamoji/ui/cabinet/NoteListGridView;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/NoteListGridView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->thisViewWidth:I

    .line 666
    sget v1, Lcom/metamoji/ui/cabinet/CabinetDef;->NORMAL_SELECTOR_WIDTH:I

    div-int/2addr v0, v1

    .line 667
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_normalView:Lcom/metamoji/ui/cabinet/NoteListGridView;

    invoke-virtual {v1, v0}, Lcom/metamoji/ui/cabinet/NoteListGridView;->setNumColumns(I)V

    return-void
.end method

.method private setNormalViewVisibility()V
    .locals 3

    .line 3042
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_normalView:Lcom/metamoji/ui/cabinet/NoteListGridView;

    if-eqz v0, :cond_1

    .line 3043
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_NoteListMode:Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;

    sget-object v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;->NoteListModeType_Normal:Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;

    .line 3046
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_normalView:Lcom/metamoji/ui/cabinet/NoteListGridView;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 3044
    invoke-virtual {v2, v0}, Lcom/metamoji/ui/cabinet/NoteListGridView;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v0, 0x4

    .line 3046
    invoke-virtual {v2, v0}, Lcom/metamoji/ui/cabinet/NoteListGridView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private setSearchLabelVisibility(I)V
    .locals 2

    .line 1989
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_searchLabelLeft:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1990
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1992
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_searchLabelRight:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1993
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1995
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_searchLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 1996
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1998
    :cond_2
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_searchLabelDmy:Landroid/view/View;

    if-eqz v0, :cond_4

    const/16 v1, 0x8

    if-ne p1, v1, :cond_3

    const/4 v1, 0x0

    .line 1999
    :cond_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method private setShareIconVisibility(Landroid/widget/ImageView;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 2540
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_0
    const/16 p2, 0x8

    .line 2542
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private setSimpleSyncWaitVisibility(Landroid/widget/ImageView;Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)V
    .locals 0

    .line 2510
    invoke-static {p2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_isWaitingSync(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils;->isUseSync()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 2511
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_0
    const/4 p2, 0x4

    .line 2513
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private setSimpleViewVisibility()V
    .locals 3

    .line 3062
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_simpleView:Lcom/metamoji/ui/cabinet/SimpleGridView;

    if-eqz v0, :cond_1

    .line 3063
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_NoteListMode:Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;

    sget-object v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;->NoteListModeType_Simple:Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;

    .line 3066
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_simpleView:Lcom/metamoji/ui/cabinet/SimpleGridView;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 3064
    invoke-virtual {v2, v0}, Lcom/metamoji/ui/cabinet/SimpleGridView;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v0, 0x4

    .line 3066
    invoke-virtual {v2, v0}, Lcom/metamoji/ui/cabinet/SimpleGridView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private setSyncImageVisibility(Landroid/widget/ImageView;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2

    .line 2484
    sget-object v0, Lcom/metamoji/noteanytime/MainActivity;->_docIdToSyncWay:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    .line 2485
    sget-object v0, Lcom/metamoji/noteanytime/MainActivity;->_docIdToSyncWay:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 2486
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2487
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 2489
    :cond_0
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2490
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 2494
    :cond_1
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2495
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private setSyncWaitVisibility(Landroid/widget/ImageView;Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)V
    .locals 2

    .line 2500
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isReadOnly()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 2501
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 2502
    :cond_0
    invoke-static {p2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_isWaitingSync(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils;->isUseSync()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 2503
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 2505
    :cond_1
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private setTemplateIconVisibility(Landroid/widget/ImageView;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 2533
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_0
    const/16 p2, 0x8

    .line 2535
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private setThumbnailImage(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;Landroid/widget/ImageView;Landroid/view/View;)V
    .locals 7

    const/4 v0, 0x2

    .line 3748
    invoke-static {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_type(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 3749
    invoke-static {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_content(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object p1

    .line 3750
    sget-object p3, Lcom/metamoji/ui/cabinet/NoteListViewFragment$65;->$SwitchMap$com$metamoji$ui$cabinet$CabinetTreeItem$Type:[I

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->ordinal()I

    move-result p1

    aget p1, p3, p1

    const/4 p3, 0x7

    if-eq p1, p3, :cond_1

    const/16 p3, 0x8

    if-eq p1, p3, :cond_1

    const/16 p3, 0x9

    if-eq p1, p3, :cond_0

    .line 3759
    sget p1, Lcom/metamoji/noteanytime/R$drawable;->cabinet_thumb_folder:I

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 3756
    :cond_0
    sget p1, Lcom/metamoji/noteanytime/R$drawable;->design1_thumb_mydrive:I

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 3753
    :cond_1
    sget p1, Lcom/metamoji/noteanytime/R$drawable;->design1_thumb_drive:I

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    const/4 p1, 0x0

    .line 3762
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    return-void

    .line 3764
    :cond_2
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_NoteListMode:Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;

    invoke-direct {p0, v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->getThumbnailSize(Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;)Lcom/metamoji/cm/Size;

    move-result-object v6

    .line 3765
    invoke-static {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_thumbnailPath(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 3766
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDocId()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    if-eqz p3, :cond_3

    .line 3767
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_imageCache:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p3}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_3
    move-object v1, v0

    :goto_1
    if-nez v1, :cond_4

    .line 3769
    invoke-static {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_thumbnailPath(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Ljava/lang/String;

    move-result-object p1

    iget v1, v6, Lcom/metamoji/cm/Size;->width:I

    iget v2, v6, Lcom/metamoji/cm/Size;->height:I

    invoke-static {p1, v1, v2}, Lcom/metamoji/cm/ImageUtils;->createBitmapFromFile2(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz p3, :cond_4

    if-eqz v1, :cond_4

    .line 3772
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_imageCache:Ljava/util/WeakHashMap;

    invoke-virtual {p1, p3, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-eqz v1, :cond_5

    .line 3776
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-direct {p1, p3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 3777
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3778
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_2

    .line 3782
    :cond_5
    sget p1, Lcom/metamoji/noteanytime/R$drawable;->cabinet_thumbnail_hatena:I

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2
    move-object v5, p2

    goto :goto_4

    .line 3785
    :cond_6
    invoke-static {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_metadata(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    if-eqz v0, :cond_9

    .line 3786
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDriveId()Ljava/lang/String;

    move-result-object v2

    .line 3787
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDocId()Ljava/lang/String;

    move-result-object v3

    .line 3788
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    .line 3789
    invoke-static {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_metadata(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    .line 3791
    invoke-virtual {p1}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->isProtected()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 3793
    sget p1, Lcom/metamoji/noteanytime/R$drawable;->design1_lock_note:I

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 3797
    :cond_7
    invoke-virtual {v0, v2}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object p1

    .line 3798
    invoke-virtual {p1, v3}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentIconImageFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 3800
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 3801
    invoke-direct {p0, p1, v6}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->getThumbnailDrawable(Ljava/lang/String;Lcom/metamoji/cm/Size;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 3802
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 3804
    :cond_8
    sget p1, Lcom/metamoji/noteanytime/R$drawable;->cabinet_thumbnail_hatena:I

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3808
    :goto_3
    invoke-static {}, Lcom/metamoji/sd/SdThumbnailLoader;->getInstance()Lcom/metamoji/sd/SdThumbnailLoader;

    move-result-object v1

    .line 3809
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    move-object v5, p2

    .line 3808
    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/sd/SdThumbnailLoader;->addTask(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/widget/ImageView;Lcom/metamoji/cm/Size;)Ljava/util/concurrent/Future;

    move-result-object p1

    if-eqz p3, :cond_a

    .line 3812
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_thumbTaskMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_9
    move-object v5, p2

    .line 3817
    sget p1, Lcom/metamoji/noteanytime/R$drawable;->cabinet_thumbnail_hatena:I

    invoke-virtual {v5, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3820
    :cond_a
    :goto_4
    sget p1, Lcom/metamoji/noteanytime/R$drawable;->cabinet_thumbnail_dropshadow:I

    invoke-virtual {v5, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    return-void
.end method

.method private showDragContextMenu(Landroid/view/View;Lcom/metamoji/ui/cabinet/NoteListViewFragment$DragContextMenuParam;)V
    .locals 4

    .line 5643
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5647
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$DragContextMenuParam;->-$$Nest$fget_to(Lcom/metamoji/ui/cabinet/NoteListViewFragment$DragContextMenuParam;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v1

    sget-object v2, Lcom/metamoji/nt/NtFeature;->AppStudentEditClassboxNote:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 5650
    :cond_0
    invoke-static {p2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$DragContextMenuParam;->-$$Nest$fget_to(Lcom/metamoji/ui/cabinet/NoteListViewFragment$DragContextMenuParam;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 5658
    :cond_1
    :goto_0
    new-instance v1, Lcom/metamoji/ui/UiMenuItem;

    sget-object v2, Lcom/metamoji/ui/PopupCommand;->DRAG_DROP_MOVE_FOLDER:Lcom/metamoji/ui/PopupCommand;

    sget v3, Lcom/metamoji/noteanytime/R$string;->Cabinet_Folder_Move:I

    invoke-direct {v1, v2, p2, v3}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5661
    :goto_1
    new-instance p2, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {p2, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 5662
    invoke-virtual {p1, p2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 5663
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_activity:Landroidx/fragment/app/FragmentActivity;

    instance-of v1, p1, Lcom/metamoji/noteanytime/MainActivity;

    if-eqz v1, :cond_2

    .line 5664
    check-cast p1, Lcom/metamoji/noteanytime/MainActivity;

    invoke-virtual {p1, v0, p0, p2}, Lcom/metamoji/noteanytime/MainActivity;->ShowContextMenu(Ljava/util/ArrayList;Lcom/metamoji/ui/MenuEventListener;Landroid/graphics/Rect;)V

    :cond_2
    return-void
.end method

.method private showDragContextMenuForNote(Landroid/view/View;Lcom/metamoji/ui/cabinet/NoteListViewFragment$DragContextMenuParam2;)V
    .locals 5

    .line 5670
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5674
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    .line 5675
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v1

    sget-object v3, Lcom/metamoji/nt/NtFeature;->AppStudentEditClassboxNote:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v1, v3}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 5678
    :cond_0
    invoke-static {p2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$DragContextMenuParam2;->-$$Nest$fget_to(Lcom/metamoji/ui/cabinet/NoteListViewFragment$DragContextMenuParam2;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {p2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$DragContextMenuParam2;->-$$Nest$fget_from(Lcom/metamoji/ui/cabinet/NoteListViewFragment$DragContextMenuParam2;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 5687
    :cond_1
    :goto_0
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v1

    invoke-static {p2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$DragContextMenuParam2;->-$$Nest$fget_from(Lcom/metamoji/ui/cabinet/NoteListViewFragment$DragContextMenuParam2;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object v1

    .line 5688
    invoke-static {p2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$DragContextMenuParam2;->-$$Nest$fget_fromDocIds(Lcom/metamoji/ui/cabinet/NoteListViewFragment$DragContextMenuParam2;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentInfo(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    move-result-object v1

    .line 5689
    invoke-static {v1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->isShareNote(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 5690
    new-instance v1, Lcom/metamoji/ui/UiMenuItem;

    sget-object v3, Lcom/metamoji/ui/PopupCommand;->CABINET_COPY_NOTE:Lcom/metamoji/ui/PopupCommand;

    sget v4, Lcom/metamoji/noteanytime/R$string;->ContextMenu_Copy:I

    invoke-direct {v1, v3, p2, v4}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5693
    :cond_2
    invoke-static {p2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$DragContextMenuParam2;->-$$Nest$fget_to(Lcom/metamoji/ui/cabinet/NoteListViewFragment$DragContextMenuParam2;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/noteanytime/CabinetCommandManager;->isEnableMakeFolder(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5694
    new-instance v1, Lcom/metamoji/ui/UiMenuItem;

    sget-object v3, Lcom/metamoji/ui/PopupCommand;->CABINET_MOVE_NOTE:Lcom/metamoji/ui/PopupCommand;

    sget v4, Lcom/metamoji/noteanytime/R$string;->Cabinet_Folder_Move:I

    invoke-direct {v1, v3, p2, v4}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5697
    :cond_3
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 5698
    invoke-virtual {p1, p2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 5699
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_activity:Landroidx/fragment/app/FragmentActivity;

    instance-of v1, p1, Lcom/metamoji/noteanytime/MainActivity;

    if-eqz v1, :cond_4

    .line 5700
    check-cast p1, Lcom/metamoji/noteanytime/MainActivity;

    invoke-virtual {p1, v0, p0, p2}, Lcom/metamoji/noteanytime/MainActivity;->ShowContextMenu(Ljava/util/ArrayList;Lcom/metamoji/ui/MenuEventListener;Landroid/graphics/Rect;)V

    :cond_4
    return-void
.end method

.method private showItemContextMenu(Landroid/view/View;Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)V
    .locals 11

    .line 5315
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 5316
    invoke-static {p2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_type(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)I

    move-result v0

    const/4 v7, 0x0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_1d

    .line 5317
    iget-boolean v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_isTrash:Z

    const-string/jumbo v8, "\u30c7\u30d0\u30c3\u30b0\u30e1\u30cb\u30e5\u30fc"

    if-eqz v0, :cond_1

    .line 5318
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_a

    .line 5320
    :cond_0
    new-instance v0, Lcom/metamoji/ui/UiMenuItem;

    sget-object v1, Lcom/metamoji/ui/PopupCommand;->CABINET_RESTORE_NOTE:Lcom/metamoji/ui/PopupCommand;

    sget v3, Lcom/metamoji/noteanytime/R$string;->Cabinet_Restore:I

    invoke-direct {v0, v1, p2, v3}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5321
    new-instance v0, Lcom/metamoji/ui/UiMenuItem;

    sget-object v1, Lcom/metamoji/ui/PopupCommand;->CABINET_DELETE_NOTE:Lcom/metamoji/ui/PopupCommand;

    sget v3, Lcom/metamoji/noteanytime/R$string;->Cabinet_ContextMenu_Delete:I

    invoke-direct {v0, v1, p2, v3}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5324
    sget-boolean v0, Lcom/metamoji/noteanytime/ModelInfo;->isEvalEdition:Z

    if-eqz v0, :cond_2c

    .line 5325
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 5327
    new-instance v0, Lcom/metamoji/ui/UiMenuItem;

    sget-object v1, Lcom/metamoji/ui/PopupCommand;->CABINET_DUMP_NOTE_FOR_DEBUG:Lcom/metamoji/ui/PopupCommand;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v3, "\uff0a\u30c7\u30d0\u30c3\u30b0\u66f8\u304d\u51fa\u3057"

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/ui/UiMenuItem;-><init>(Lcom/metamoji/ui/PopupCommand;Ljava/lang/Object;Ljava/lang/String;II)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5328
    new-instance v0, Lcom/metamoji/ui/UiMenuItem;

    sget-object v1, Lcom/metamoji/ui/PopupCommand;->CABINET_DEBUG_CMD_NOTEINFO:Lcom/metamoji/ui/PopupCommand;

    const-string/jumbo v3, "\uff0a\u30ce\u30fc\u30c8\u60c5\u5831"

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/ui/UiMenuItem;-><init>(Lcom/metamoji/ui/PopupCommand;Ljava/lang/Object;Ljava/lang/String;II)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5330
    new-instance v0, Lcom/metamoji/ui/UiMenuItem;

    invoke-direct {v0, v9, v8, v7, v7}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/util/ArrayList;Ljava/lang/String;II)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 5333
    :cond_1
    invoke-static {p2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_metadata(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->isShareNote(Ljava/lang/Object;)Z

    move-result v0

    .line 5335
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/forSchool/ScSchoolManager;->isReadOnly()Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez v0, :cond_2

    .line 5337
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtFeature;->CabinetExport:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5338
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtFeature;->AppUnavailableSendByFile:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5339
    new-instance v0, Lcom/metamoji/ui/UiMenuItem;

    sget-object v1, Lcom/metamoji/ui/PopupCommand;->EXPORT_ATDOC:Lcom/metamoji/ui/PopupCommand;

    sget v3, Lcom/metamoji/noteanytime/R$string;->Menu_ExportNote:I

    invoke-direct {v0, v1, p2, v3}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5342
    :cond_2
    new-instance v0, Lcom/metamoji/ui/UiMenuItem;

    sget-object v1, Lcom/metamoji/ui/PopupCommand;->CABINET_SHOW_URL:Lcom/metamoji/ui/PopupCommand;

    sget v3, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SCHOOL_MENU_SHOW_URL:I

    invoke-direct {v0, v1, p2, v3}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 5344
    :cond_3
    invoke-static {p2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_metadata(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->isTemplate(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 5346
    new-instance v3, Lcom/metamoji/ui/UiMenuItem;

    sget-object v4, Lcom/metamoji/ui/PopupCommand;->CABINET_NOTETEMPLATE_EDIT:Lcom/metamoji/ui/PopupCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->CABINET_EDIT_NOTESTYLE2:I

    invoke-direct {v3, v4, p2, v5}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    if-nez v0, :cond_8

    .line 5351
    new-instance v3, Lcom/metamoji/ui/UiMenuItem;

    sget-object v4, Lcom/metamoji/ui/PopupCommand;->CABINET_VIEW_NOTE:Lcom/metamoji/ui/PopupCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->CabinetSdContextMenu_OpenAsReadOnly:I

    invoke-direct {v3, v4, p2, v5}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5354
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v3

    .line 5355
    invoke-virtual {v3}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v4

    sget-object v5, Lcom/metamoji/nt/NtFeature;->AppStudentEditClassboxNote:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v4, v5}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_0

    .line 5358
    :cond_5
    iget-object v4, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_currentDisplayedFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {v4}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    goto :goto_1

    .line 5364
    :cond_6
    :goto_0
    new-instance v4, Lcom/metamoji/ui/UiMenuItem;

    sget-object v5, Lcom/metamoji/ui/PopupCommand;->CABINET_COPY_OPEN_NOTE:Lcom/metamoji/ui/PopupCommand;

    sget v9, Lcom/metamoji/noteanytime/R$string;->Cabinet_ContextMenu_CopyNote:I

    invoke-direct {v4, v5, p2, v9}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5366
    iget-object v4, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_currentDisplayedFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {v4}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v3}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 5368
    :cond_7
    new-instance v3, Lcom/metamoji/ui/UiMenuItem;

    sget-object v4, Lcom/metamoji/ui/PopupCommand;->CABINET_NEW_NOTETEMPLATE_BASED_ON_NOTE:Lcom/metamoji/ui/PopupCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->CABINET_NEW_NOTETEMPLATE_BASED_ON_NOTE:I

    invoke-direct {v3, v4, p2, v5}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5378
    :cond_8
    :goto_1
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_currentDisplayedFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {v3}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/ui/cabinet/CabinetUtils;->getDriveGroupId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5380
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v4

    if-nez v4, :cond_9

    if-nez v3, :cond_b

    .line 5382
    :cond_9
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_currentDisplayedFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {v4}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_b

    .line 5383
    :cond_a
    new-instance v4, Lcom/metamoji/ui/UiMenuItem;

    sget-object v5, Lcom/metamoji/ui/PopupCommand;->CABINET_DELETE_NOTE:Lcom/metamoji/ui/PopupCommand;

    sget v9, Lcom/metamoji/noteanytime/R$string;->Cabinet_ContextMenu_Delete:I

    invoke-direct {v4, v5, p2, v9}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5389
    :cond_b
    invoke-static {}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->getCurrentFolder()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object v4

    .line 5391
    sget-object v5, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->TEMPLATE:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-eq v4, v5, :cond_e

    .line 5394
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v5

    .line 5395
    invoke-virtual {v5}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v5

    if-nez v5, :cond_d

    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v5

    sget-object v9, Lcom/metamoji/nt/NtFeature;->AppStudentEditClassboxNote:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v5, v9}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v5

    if-eqz v5, :cond_c

    goto :goto_2

    .line 5398
    :cond_c
    iget-object v5, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_currentDisplayedFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {v5}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_d

    move v5, v7

    goto :goto_3

    :cond_d
    :goto_2
    move v5, v1

    :goto_3
    if-eqz v5, :cond_e

    if-nez v0, :cond_e

    .line 5405
    new-instance v5, Lcom/metamoji/ui/UiMenuItem;

    sget-object v9, Lcom/metamoji/ui/PopupCommand;->CABINET_COPY_NOTE:Lcom/metamoji/ui/PopupCommand;

    sget v10, Lcom/metamoji/noteanytime/R$string;->ContextMenu_Copy:I

    invoke-direct {v5, v9, p2, v10}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5410
    :cond_e
    sget-object v5, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->ALL_NOTE:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-eq v4, v5, :cond_13

    sget-object v5, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->TEMPLATE:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-eq v4, v5, :cond_13

    .line 5412
    iget-object v4, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_currentDisplayedFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {v4}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/metamoji/ui/cabinet/CabinetUtils;->hasFolder(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 5414
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v4

    if-nez v4, :cond_f

    if-nez v3, :cond_13

    .line 5417
    :cond_f
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v4

    .line 5418
    invoke-virtual {v4}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v4

    if-nez v4, :cond_11

    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v4

    sget-object v5, Lcom/metamoji/nt/NtFeature;->AppStudentEditClassboxNote:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v4, v5}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v4

    if-eqz v4, :cond_10

    goto :goto_4

    .line 5421
    :cond_10
    iget-object v4, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_currentDisplayedFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {v4}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_11

    move v1, v7

    .line 5425
    :cond_11
    :goto_4
    iget-object v4, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_currentDisplayedFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {v4}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDocId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/metamoji/dvm/DvmUtil;->isCopiedShare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    move v1, v7

    :cond_12
    if-eqz v1, :cond_13

    .line 5429
    new-instance v1, Lcom/metamoji/ui/UiMenuItem;

    sget-object v4, Lcom/metamoji/ui/PopupCommand;->CABINET_MOVE_NOTE:Lcom/metamoji/ui/PopupCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->Cabinet_Folder_Move:I

    invoke-direct {v1, v4, p2, v5}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5437
    :cond_13
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v1

    if-nez v1, :cond_14

    if-nez v3, :cond_15

    .line 5438
    :cond_14
    new-instance v1, Lcom/metamoji/ui/UiMenuItem;

    sget-object v3, Lcom/metamoji/ui/PopupCommand;->CABINET_EDIT_TITLE:Lcom/metamoji/ui/PopupCommand;

    sget v4, Lcom/metamoji/noteanytime/R$string;->Cabinet_ContextMenu_Edit_Title:I

    invoke-direct {v1, v3, p2, v4}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    if-nez v0, :cond_16

    .line 5441
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v1

    sget-object v3, Lcom/metamoji/nt/NtFeature;->CabinetExport:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v1, v3}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 5442
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v1

    sget-object v3, Lcom/metamoji/nt/NtFeature;->AppUnavailableSendByFile:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v1, v3}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 5443
    new-instance v1, Lcom/metamoji/ui/UiMenuItem;

    sget-object v3, Lcom/metamoji/ui/PopupCommand;->EXPORT_ATDOC:Lcom/metamoji/ui/PopupCommand;

    sget v4, Lcom/metamoji/noteanytime/R$string;->Menu_ExportNote:I

    invoke-direct {v1, v3, p2, v4}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5448
    :cond_16
    new-instance v1, Lcom/metamoji/ui/UiMenuItem;

    sget-object v3, Lcom/metamoji/ui/PopupCommand;->CABINET_SHOW_URL:Lcom/metamoji/ui/PopupCommand;

    sget v4, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SCHOOL_MENU_SHOW_URL:I

    invoke-direct {v1, v3, p2, v4}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5451
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v1

    sget-object v3, Lcom/metamoji/nt/NtFeature;->Star:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v1, v3}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 5452
    invoke-static {p2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_metadata(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->isDisplayPriority(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 5453
    new-instance v1, Lcom/metamoji/ui/UiMenuItem;

    sget-object v3, Lcom/metamoji/ui/PopupCommand;->CABINET_STAR_REMOVE:Lcom/metamoji/ui/PopupCommand;

    sget v4, Lcom/metamoji/noteanytime/R$string;->Cabinet_Multiselect_Star_Remove:I

    invoke-direct {v1, v3, p2, v4}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 5455
    :cond_17
    new-instance v1, Lcom/metamoji/ui/UiMenuItem;

    sget-object v3, Lcom/metamoji/ui/PopupCommand;->CABINET_STAR_ADD:Lcom/metamoji/ui/PopupCommand;

    sget v4, Lcom/metamoji/noteanytime/R$string;->Cabinet_Multiselect_Star_Add:I

    invoke-direct {v1, v3, p2, v4}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5460
    :cond_18
    :goto_5
    invoke-virtual {p2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDriveId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_19

    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v1

    if-eqz v1, :cond_19

    if-eqz v0, :cond_19

    .line 5461
    new-instance v1, Lcom/metamoji/ui/UiMenuItem;

    sget-object v3, Lcom/metamoji/ui/PopupCommand;->CABINET_SCORE_LIST:Lcom/metamoji/ui/PopupCommand;

    sget v4, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SCOREINFOVIEW_MENU_SCORELIST:I

    invoke-direct {v1, v3, p2, v4}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5466
    :cond_19
    invoke-virtual {p2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDriveId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1a

    if-eqz v0, :cond_1a

    .line 5468
    new-instance v3, Lcom/metamoji/ui/UiMenuItem;

    sget-object v4, Lcom/metamoji/ui/PopupCommand;->CABINET_REACQUISITION_SHARE_NOTE:Lcom/metamoji/ui/PopupCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->REACQUISITION_SHARE_NOTE:I

    invoke-direct {v3, v4, p2, v5}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1a
    if-eqz v1, :cond_1b

    if-eqz v0, :cond_1b

    .line 5472
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 5473
    new-instance v0, Lcom/metamoji/ui/UiMenuItem;

    sget-object v1, Lcom/metamoji/ui/PopupCommand;->CABINET_RESTORE_COLLABODOCUMENT:Lcom/metamoji/ui/PopupCommand;

    sget v3, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SHAREMENU_RESTORE_COLLABODOCUMENT:I

    invoke-direct {v0, v1, p2, v3}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5477
    :cond_1b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5480
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1c

    .line 5481
    new-instance v1, Lcom/metamoji/ui/UiMenuItem;

    sget v3, Lcom/metamoji/noteanytime/R$string;->ContextMenu_TextUnitOthers:I

    invoke-direct {v1, v0, v3, v7, v7}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/util/ArrayList;III)V

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5489
    :cond_1c
    sget-boolean v0, Lcom/metamoji/noteanytime/ModelInfo;->isEvalEdition:Z

    if-eqz v0, :cond_2c

    .line 5490
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 5492
    new-instance v0, Lcom/metamoji/ui/UiMenuItem;

    sget-object v1, Lcom/metamoji/ui/PopupCommand;->CABINET_DUMP_NOTE_FOR_DEBUG:Lcom/metamoji/ui/PopupCommand;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v3, "\uff0a\u30c7\u30d0\u30c3\u30b0\u66f8\u304d\u51fa\u3057"

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/ui/UiMenuItem;-><init>(Lcom/metamoji/ui/PopupCommand;Ljava/lang/Object;Ljava/lang/String;II)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5493
    new-instance v0, Lcom/metamoji/ui/UiMenuItem;

    sget-object v1, Lcom/metamoji/ui/PopupCommand;->CABINET_DEBUG_CMD_NOTEINFO:Lcom/metamoji/ui/PopupCommand;

    const-string/jumbo v3, "\uff0a\u30ce\u30fc\u30c8\u60c5\u5831"

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/ui/UiMenuItem;-><init>(Lcom/metamoji/ui/PopupCommand;Ljava/lang/Object;Ljava/lang/String;II)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5495
    new-instance v0, Lcom/metamoji/ui/UiMenuItem;

    invoke-direct {v0, v9, v8, v7, v7}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/util/ArrayList;Ljava/lang/String;II)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    :cond_1d
    const/4 v0, 0x2

    .line 5499
    invoke-static {p2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_type(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)I

    move-result v1

    if-ne v0, v1, :cond_2c

    .line 5500
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_1e

    goto/16 :goto_a

    .line 5502
    :cond_1e
    invoke-virtual {p2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDriveId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->getDriveGroupId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5503
    invoke-static {p2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_content(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object v1

    .line 5504
    sget-object v3, Lcom/metamoji/ui/cabinet/NoteListViewFragment$65;->$SwitchMap$com$metamoji$ui$cabinet$CabinetTreeItem$Type:[I

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/16 v4, 0xe

    if-eq v3, v4, :cond_27

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_7

    .line 5524
    :pswitch_0
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v3

    if-nez v3, :cond_1f

    if-nez v0, :cond_20

    .line 5525
    :cond_1f
    invoke-static {p2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_content(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-static {v0}, Lcom/metamoji/noteanytime/CabinetCommandManager;->isEnableMakeFolder(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 5526
    new-instance v0, Lcom/metamoji/ui/UiMenuItem;

    sget-object v3, Lcom/metamoji/ui/PopupCommand;->CABINET_CREATE_FOLDER:Lcom/metamoji/ui/PopupCommand;

    sget v4, Lcom/metamoji/noteanytime/R$string;->Cabinet_ContextMenu_CreateFolder:I

    invoke-direct {v0, v3, p2, v4}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5535
    :cond_20
    new-instance v0, Lcom/metamoji/ui/UiMenuItem;

    sget-object v3, Lcom/metamoji/ui/PopupCommand;->CABINET_DRIVE_MEMBER:Lcom/metamoji/ui/PopupCommand;

    sget v4, Lcom/metamoji/noteanytime/R$string;->CabinetSdContextMenu_MemberList:I

    invoke-direct {v0, v3, p2, v4}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5537
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5538
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v3

    invoke-virtual {p2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDriveId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/metamoji/dvm/DvmDriveManager;->getDriveById(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDriveBean;

    move-result-object v3

    .line 5539
    invoke-virtual {v3}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->isAdmin()Z

    move-result v3

    if-eqz v3, :cond_21

    sget-object v3, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->CRBOX_CLASS:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-eq v1, v3, :cond_21

    .line 5541
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 5542
    new-instance v3, Lcom/metamoji/ui/UiMenuItem;

    sget-object v4, Lcom/metamoji/ui/PopupCommand;->CABINET_RENAME_DRIVE:Lcom/metamoji/ui/PopupCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->CabinetSdContextMenu_EditDriveName:I

    invoke-direct {v3, v4, p2, v5}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5543
    new-instance v3, Lcom/metamoji/ui/UiMenuItem;

    sget-object v4, Lcom/metamoji/ui/PopupCommand;->CABINET_DELETE_DRIVE:Lcom/metamoji/ui/PopupCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->CabinetSdContextMenu_DeleteDrive:I

    invoke-direct {v3, v4, p2, v5}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5549
    :cond_21
    sget-object v3, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->CRBOX_CLASS:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-ne v1, v3, :cond_23

    .line 5551
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v3

    .line 5552
    invoke-virtual {v3}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v3

    if-eqz v3, :cond_22

    .line 5554
    iget-boolean v3, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->isAdmin:Z

    goto :goto_6

    :cond_22
    move v3, v7

    :goto_6
    if-eqz v3, :cond_23

    .line 5557
    new-instance v3, Lcom/metamoji/ui/UiMenuItem;

    sget-object v4, Lcom/metamoji/ui/PopupCommand;->CABINET_RENAME_DRIVE:Lcom/metamoji/ui/PopupCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->CabinetSdContextMenu_EditDriveName:I

    invoke-direct {v3, v4, p2, v5}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5570
    :cond_23
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_28

    .line 5571
    new-instance v3, Lcom/metamoji/ui/UiMenuItem;

    sget v4, Lcom/metamoji/noteanytime/R$string;->CabinetSdContextMenu_DriveOperations:I

    invoke-direct {v3, v0, v4, v7, v7}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/util/ArrayList;III)V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 5510
    :pswitch_1
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v3

    if-nez v3, :cond_24

    if-nez v0, :cond_25

    .line 5511
    :cond_24
    invoke-static {p2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_content(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-static {v0}, Lcom/metamoji/noteanytime/CabinetCommandManager;->isEnableMakeFolder(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 5512
    new-instance v0, Lcom/metamoji/ui/UiMenuItem;

    sget-object v3, Lcom/metamoji/ui/PopupCommand;->CABINET_CREATE_FOLDER:Lcom/metamoji/ui/PopupCommand;

    sget v4, Lcom/metamoji/noteanytime/R$string;->Cabinet_ContextMenu_CreateFolder:I

    invoke-direct {v0, v3, p2, v4}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5513
    new-instance v0, Lcom/metamoji/ui/UiMenuItem;

    sget-object v3, Lcom/metamoji/ui/PopupCommand;->CABINET_FOLDER_NAME_SETTING:Lcom/metamoji/ui/PopupCommand;

    sget v4, Lcom/metamoji/noteanytime/R$string;->Folder_Name_Setting_Menu:I

    invoke-direct {v0, v3, p2, v4}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5516
    :cond_25
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v0

    if-nez v0, :cond_26

    invoke-virtual {p2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDriveId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_28

    .line 5517
    :cond_26
    new-instance v0, Lcom/metamoji/ui/UiMenuItem;

    sget-object v3, Lcom/metamoji/ui/PopupCommand;->CABINET_DELETE_FOLDER:Lcom/metamoji/ui/PopupCommand;

    sget v4, Lcom/metamoji/noteanytime/R$string;->Cabinet_ContextMenu_Delete:I

    invoke-direct {v0, v3, p2, v4}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 5577
    :cond_27
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 5579
    new-instance v0, Lcom/metamoji/ui/UiMenuItem;

    sget-object v3, Lcom/metamoji/ui/PopupCommand;->CABINET_SHARE_DRIVE_DISPLAY_SETTINGS:Lcom/metamoji/ui/PopupCommand;

    sget v4, Lcom/metamoji/noteanytime/R$string;->CABINET_VISIBLE_SELECT_CONTEXTMENU:I

    invoke-direct {v0, v3, p2, v4}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5588
    :cond_28
    :goto_7
    sget-object v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$65;->$SwitchMap$com$metamoji$ui$cabinet$CabinetTreeItem$Type:[I

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->ordinal()I

    move-result v3

    aget v0, v0, v3

    const/4 v3, 0x6

    if-eq v0, v3, :cond_29

    const/16 v4, 0xa

    if-eq v0, v4, :cond_29

    goto :goto_8

    .line 5591
    :cond_29
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v0

    sget-object v4, Lcom/metamoji/nt/NtFeature;->CabinetExport:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v0, v4}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 5592
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v0

    sget-object v4, Lcom/metamoji/nt/NtFeature;->AppUnavailableSendByFile:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v0, v4}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-static {p2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_content(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    const-string v4, "application/vnd.metamoji.model.atdoc"

    .line 5593
    invoke-virtual {v0, v4}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->existNote(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 5594
    new-instance v0, Lcom/metamoji/ui/UiMenuItem;

    sget-object v4, Lcom/metamoji/ui/PopupCommand;->CABINET_EXPORT_NOTES:Lcom/metamoji/ui/PopupCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->Menu_ExportNote:I

    invoke-direct {v0, v4, p2, v5}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5602
    :cond_2a
    :goto_8
    sget-object v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$65;->$SwitchMap$com$metamoji$ui$cabinet$CabinetTreeItem$Type:[I

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v3, :cond_2b

    goto :goto_9

    .line 5604
    :cond_2b
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtFeature;->CabinetExport:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 5605
    new-instance v0, Lcom/metamoji/ui/UiMenuItem;

    sget-object v1, Lcom/metamoji/ui/PopupCommand;->CABINET_IMPORT_NOTES:Lcom/metamoji/ui/PopupCommand;

    sget v3, Lcom/metamoji/noteanytime/R$string;->Menu_ImportNote:I

    invoke-direct {v0, v1, p2, v3}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5613
    :cond_2c
    :goto_9
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v7, v7, v7, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 5614
    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 5615
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_activity:Landroidx/fragment/app/FragmentActivity;

    instance-of v2, v1, Lcom/metamoji/ui/cabinet/CabinetActivityInterface;

    if-eqz v2, :cond_2d

    .line 5616
    check-cast v1, Lcom/metamoji/ui/cabinet/CabinetActivityInterface;

    invoke-interface {v1, v6, p0, v0}, Lcom/metamoji/ui/cabinet/CabinetActivityInterface;->ShowContextMenu(Ljava/util/ArrayList;Lcom/metamoji/ui/MenuEventListener;Landroid/graphics/Rect;)V

    :cond_2d
    :goto_a
    return-void

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showLibraryViewDialog()V
    .locals 4

    .line 4027
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->isBusy()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4031
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 4032
    const-string v1, "NoteListViewFragment#showLibraryViewDialog"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_1

    :goto_0
    return-void

    .line 4036
    :cond_1
    new-instance v2, Lcom/metamoji/ui/library/note/LibraryNoteViewDialog;

    invoke-direct {v2}, Lcom/metamoji/ui/library/note/LibraryNoteViewDialog;-><init>()V

    const/4 v3, 0x0

    .line 4037
    invoke-virtual {v2, v3}, Lcom/metamoji/ui/library/note/LibraryNoteViewDialog;->setCmContext(Lcom/metamoji/cm/CmContext;)V

    .line 4038
    invoke-virtual {v2, v0, v1}, Lcom/metamoji/ui/library/note/LibraryNoteViewDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showNewDriveDialog()V
    .locals 1

    .line 7019
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_activity:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0}, Lcom/metamoji/noteanytime/MainActivity;->createDrive(Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method

.method public static startEditorActivity(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentActivity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 5033
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$46;

    move-object v2, p0

    move-object v8, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    move-object/from16 v3, p6

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$46;-><init>(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    return-void
.end method

.method private startLongPressTimer()V
    .locals 4

    .line 3676
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->clearLongPressTimer()V

    .line 3678
    new-instance v0, Lcom/metamoji/cm/UiTimer;

    invoke-direct {v0}, Lcom/metamoji/cm/UiTimer;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_longPressTimer:Lcom/metamoji/cm/UiTimer;

    .line 3679
    new-instance v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$32;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$32;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)V

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Lcom/metamoji/cm/UiTimer;->schedule(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private startShortPressTimer()V
    .locals 4

    .line 3651
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->clearShortPressTimer()V

    .line 3653
    new-instance v0, Lcom/metamoji/cm/UiTimer;

    invoke-direct {v0}, Lcom/metamoji/cm/UiTimer;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_shortPressTimer:Lcom/metamoji/cm/UiTimer;

    .line 3654
    new-instance v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$31;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$31;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/metamoji/cm/UiTimer;->schedule(Ljava/lang/Runnable;J)V

    return-void
.end method

.method protected static tryUserLogin(Ljava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4994
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    .line 4995
    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->revokeWaitScreenNow()V

    .line 4997
    invoke-static {}, Lcom/metamoji/nt/cabinet/user/CabinetUserManager;->getInstance()Lcom/metamoji/nt/cabinet/user/CabinetUserManager;

    move-result-object v0

    .line 4998
    new-instance v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$44;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$44;-><init>(Ljava/lang/Runnable;)V

    sget-object p0, Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;->WithLoginDialogIfRegisterd:Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;

    invoke-virtual {v0, v1, p0}, Lcom/metamoji/nt/cabinet/user/CabinetUserManager;->UpdateUserInfoCacheAsync(Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;)V

    return-void
.end method

.method private updateButtons(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V
    .locals 7

    .line 4180
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object v0

    .line 4183
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isReadOnly()Z

    move-result v1

    .line 4186
    sget-object v2, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->RECYCLE_BIN:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-ne v0, v2, :cond_2

    .line 4187
    iget-boolean v2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectMode:Z

    if-eqz v2, :cond_0

    .line 4188
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_trashDeleteBtn:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {v2, v4}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    .line 4190
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_trashDeleteBtn:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {v2, v3}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 4192
    iput-boolean v2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_isTrash:Z

    goto :goto_1

    .line 4194
    :cond_2
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_trashDeleteBtn:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {v2, v4}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    .line 4195
    iput-boolean v3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_isTrash:Z

    .line 4199
    :goto_1
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_driveMemberBtn:Lcom/metamoji/ui/common/UiButton;

    if-eqz v2, :cond_6

    if-eqz v1, :cond_3

    .line 4201
    invoke-virtual {v2, v4}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    goto :goto_3

    .line 4202
    :cond_3
    sget-object v2, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->SHARED_DRIVE:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-eq v0, v2, :cond_5

    sget-object v2, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->SHARED_DRIVE_OWN:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-eq v0, v2, :cond_5

    sget-object v2, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->CRBOX_CLASS:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-ne v0, v2, :cond_4

    goto :goto_2

    .line 4207
    :cond_4
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_driveMemberBtn:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {v0, v4}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    goto :goto_3

    .line 4205
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_driveMemberBtn:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {v0, v3}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    .line 4213
    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_inviteBtn:Lcom/metamoji/ui/common/UiButton;

    if-eqz v0, :cond_8

    if-eqz v1, :cond_7

    .line 4215
    invoke-virtual {v0, v4}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    goto :goto_4

    .line 4217
    :cond_7
    new-instance v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$36;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$36;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)V

    invoke-static {v0}, Lcom/metamoji/noteanytime/MainActivity;->isEnableInviteButton(Lcom/metamoji/noteanytime/MainActivity$IEnableInvideButtonCompletionAction;)V

    .line 4237
    :cond_8
    :goto_4
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object v0

    sget-object v2, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->SHARED_DRIVE_PARENT:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-eq v0, v2, :cond_a

    .line 4238
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object v0

    sget-object v2, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->CRBOX:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-eq v0, v2, :cond_a

    .line 4239
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object v0

    sget-object v2, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->CRBOX_OLD:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-eq v0, v2, :cond_a

    .line 4240
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object v0

    sget-object v2, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->CRBOX_YEAR:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-ne v0, v2, :cond_9

    goto :goto_5

    :cond_9
    move v0, v3

    goto :goto_6

    :cond_a
    :goto_5
    const/4 v0, 0x4

    .line 4241
    :goto_6
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_newDriveBtn:Landroid/widget/ImageButton;

    if-eqz v2, :cond_c

    .line 4242
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object v5

    sget-object v6, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->SHARED_DRIVE_PARENT:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-ne v5, v6, :cond_b

    move v5, v3

    goto :goto_7

    :cond_b
    move v5, v4

    :goto_7
    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 4244
    :cond_c
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_newNoteBtn:Landroid/widget/ImageButton;

    if-eqz v2, :cond_e

    if-nez v0, :cond_d

    move v5, v3

    goto :goto_8

    :cond_d
    move v5, v4

    .line 4245
    :goto_8
    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 4247
    :cond_e
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_shareBtn:Landroid/widget/ImageButton;

    if-eqz v2, :cond_f

    .line 4248
    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 4250
    :cond_f
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectBtn:Lcom/metamoji/ui/common/UiButton;

    if-eqz v2, :cond_11

    if-eqz v1, :cond_10

    move v1, v4

    goto :goto_9

    :cond_10
    move v1, v0

    .line 4251
    :goto_9
    invoke-virtual {v2, v1}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    .line 4253
    :cond_11
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_noteCountLabel:Landroid/widget/TextView;

    if-eqz v1, :cond_13

    if-nez v0, :cond_12

    goto :goto_a

    :cond_12
    move v3, v4

    .line 4254
    :goto_a
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v1, 0x0

    .line 4255
    invoke-static {p1, v1}, Lcom/metamoji/ui/cabinet/CabinetUtils;->getDocumentCount(Lcom/metamoji/ui/cabinet/CabinetTreeItem;Ljava/lang/String;)J

    move-result-wide v1

    .line 4256
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v3, Lcom/metamoji/noteanytime/R$string;->Cabinet_Note_Count:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 4257
    const-string v3, "%@"

    const-string v4, "%s"

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 4258
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_noteCountLabel:Landroid/widget/TextView;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4261
    :cond_13
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_activity:Landroidx/fragment/app/FragmentActivity;

    sget v1, Lcom/metamoji/noteanytime/R$id;->cabinet_search_button:I

    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 4263
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4265
    :cond_14
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_activity:Landroidx/fragment/app/FragmentActivity;

    sget v1, Lcom/metamoji/noteanytime/R$id;->cabinet_sort_button:I

    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 4267
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_15
    return-void
.end method

.method private updateSearchLabel(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    .line 4274
    invoke-direct {p0, v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->setSearchLabelVisibility(I)V

    .line 4275
    invoke-static {}, Lcom/metamoji/noteanytime/MainActivity;->getSearchTags()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4276
    sget v1, Lcom/metamoji/noteanytime/R$string;->Cabinet_Search_Tag:I

    :goto_0
    move v2, v0

    goto :goto_2

    .line 4277
    :cond_0
    invoke-static {}, Lcom/metamoji/noteanytime/MainActivity;->getSearchTitleString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/metamoji/noteanytime/MainActivity;->getSearchTextString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 4279
    :cond_1
    invoke-static {}, Lcom/metamoji/noteanytime/MainActivity;->getSearchNothings()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4280
    sget v1, Lcom/metamoji/noteanytime/R$string;->Cabinet_Search_NothingTag:I

    goto :goto_0

    :cond_2
    const/16 v1, 0x8

    move v2, v1

    move v1, v0

    goto :goto_2

    .line 4278
    :cond_3
    :goto_1
    sget v1, Lcom/metamoji/noteanytime/R$string;->Cabinet_Search_Tilte_String_Label:I

    goto :goto_0

    :goto_2
    if-eqz v1, :cond_4

    .line 4286
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_searchLabel:Landroid/widget/TextView;

    if-eqz v3, :cond_4

    .line 4287
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_res:Landroid/content/res/Resources;

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4288
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_trashDeleteBtn:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    goto :goto_3

    .line 4290
    :cond_4
    iget-boolean v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_isTrash:Z

    if-eqz v1, :cond_6

    .line 4291
    invoke-static {p1}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->isTrashEmpty(Ljava/lang/String;)Z

    move-result p1

    .line 4294
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_trashDeleteBtn:Lcom/metamoji/ui/common/UiButton;

    if-eqz p1, :cond_5

    .line 4292
    invoke-virtual {v1, v0}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    goto :goto_3

    :cond_5
    const/4 p1, 0x1

    .line 4294
    invoke-virtual {v1, p1}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    .line 4298
    :cond_6
    :goto_3
    invoke-direct {p0, v2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->setSearchLabelVisibility(I)V

    return-void
.end method


# virtual methods
.method public ReacquisitionShareNote(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 7128
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_activity:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->createAlertDialog(Landroidx/fragment/app/FragmentActivity;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 7129
    sget v1, Lcom/metamoji/noteanytime/R$string;->REACQUISITION_SHARE_NOTE:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 7130
    sget v1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_REACQUISITION_SHARE_NOTE_MESSAGE2:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 7131
    sget v1, Lcom/metamoji/noteanytime/R$string;->Msg_YES:I

    new-instance v2, Lcom/metamoji/ui/cabinet/NoteListViewFragment$58;

    invoke-direct {v2, p0, p1, p2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$58;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 7148
    sget p1, Lcom/metamoji/noteanytime/R$string;->Msg_NO:I

    new-instance p2, Lcom/metamoji/ui/cabinet/NoteListViewFragment$59;

    invoke-direct {p2, p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$59;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)V

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 7154
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance p2, Lcom/metamoji/ui/cabinet/NoteListViewFragment$60;

    invoke-direct {p2, p0, v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$60;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Landroidx/appcompat/app/AlertDialog$Builder;)V

    invoke-virtual {p1, p2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    return-void
.end method

.method public beginWaiting()V
    .locals 2

    .line 7023
    iget v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_waitingCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_waitingCount:I

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 7027
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7030
    sget v1, Lcom/metamoji/noteanytime/R$id;->note_list_root:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const v1, 0x3f19999a    # 0.6f

    .line 7032
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public changeMultiSelectMode(Z)V
    .locals 4

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    .line 1956
    iput-boolean p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectMode:Z

    .line 1957
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_normalLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1958
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiselectLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1959
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectCancelBtn:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {v2, v1}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    .line 1961
    iget-boolean v2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_isTrash:Z

    if-eqz v2, :cond_0

    .line 1962
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectSelectBtn:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {p1, v1}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    .line 1963
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectStarBtn:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    .line 1964
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectEtcBtn:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    .line 1965
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectRevertBtn:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {p1, v1}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    goto :goto_1

    .line 1967
    :cond_0
    invoke-static {}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->getCurrentFolder()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object v2

    sget-object v3, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->TEMPLATE:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    move p1, v1

    .line 1968
    :goto_0
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectSelectBtn:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {v2, v1}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    .line 1969
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectStarBtn:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {v2, v1}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    .line 1970
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectEtcBtn:Lcom/metamoji/ui/common/UiButton;

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object p1

    sget-object v3, Lcom/metamoji/nt/NtFeature;->AppUnavailableSendByFile:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {p1, v3}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result p1

    if-eqz p1, :cond_2

    move v1, v0

    :cond_2
    invoke-virtual {v2, v1}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    .line 1971
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectRevertBtn:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    .line 1973
    :goto_1
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->changeMultiselectButtonEnabled()V

    return-void

    .line 1976
    :cond_3
    iput-boolean v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectMode:Z

    .line 1977
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiselectLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1978
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectCancelBtn:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    .line 1979
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_normalLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public changeShareBtnImage(Landroidx/fragment/app/FragmentActivity;Landroid/widget/ImageButton;Z)V
    .locals 2

    .line 1383
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1385
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/high16 v1, 0x42140000    # 37.0f

    .line 1386
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1387
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    const/high16 v1, 0x42400000    # 48.0f

    .line 1388
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 v1, 0x41200000    # 10.0f

    .line 1389
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1391
    :cond_0
    invoke-virtual {p2, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1394
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p3, :cond_1

    .line 1396
    sget p3, Lcom/metamoji/noteanytime/R$drawable;->cabinet_btn_share_on:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 1398
    :cond_1
    sget p3, Lcom/metamoji/noteanytime/R$drawable;->cabinet_btn_share_off:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_2
    if-eqz p3, :cond_3

    .line 1402
    sget p3, Lcom/metamoji/noteanytime/R$drawable;->cabinet_btn_share_phone_on:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 1404
    :cond_3
    sget p3, Lcom/metamoji/noteanytime/R$drawable;->cabinet_btn_share_phone_off:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public dumpNoteForDebug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 5060
    invoke-static {p1, p2, p3}, Lcom/metamoji/ui/cabinet/NoteListViewFragmentExt;->dumpNoteForDebug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public editCopiedNoteInDrive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 6509
    invoke-static {p1}, Lcom/metamoji/dvm/DvmUtil;->sdDocumentManager(Ljava/lang/String;)Lcom/metamoji/sd/SdDriveDocumentManager;

    move-result-object v2

    .line 6511
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v4

    .line 6512
    new-instance v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$55;

    move-object v1, p0

    move-object v5, p1

    move-object v3, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$55;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Lcom/metamoji/sd/SdDriveDocumentManager;Ljava/lang/String;Lcom/metamoji/cm/CmTaskManager;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v4, v0}, Lcom/metamoji/cm/CmTaskManager;->runOnBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method public endWaiting()V
    .locals 2

    .line 7044
    iget v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_waitingCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_waitingCount:I

    if-lez v0, :cond_0

    goto :goto_0

    .line 7048
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7050
    sget v1, Lcom/metamoji/noteanytime/R$id;->note_list_root:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 7052
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public exportNote(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 5126
    invoke-static {p1}, Lcom/metamoji/dvm/DvmUtil;->sdDocumentManager(Ljava/lang/String;)Lcom/metamoji/sd/SdDriveDocumentManager;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 5131
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v6

    new-instance v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$47;

    move-object v1, p0

    move-object v4, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$47;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Lcom/metamoji/sd/SdDriveDocumentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/metamoji/cm/CmTaskManager;->runOnBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getCommandManager()Lcom/metamoji/nt/NtCommandManager;
    .locals 1

    .line 6806
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_commandManager:Lcom/metamoji/nt/NtCommandManager;

    return-object v0
.end method

.method public getNewNoteView()Landroid/view/View;
    .locals 5

    .line 7068
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-ge v1, v0, :cond_6

    .line 7071
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_NoteListMode:Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;

    sget-object v4, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;->NoteListModeType_Normal:Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;

    if-ne v3, v4, :cond_2

    .line 7072
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_normalView:Lcom/metamoji/ui/cabinet/NoteListGridView;

    invoke-virtual {v3, v1}, Lcom/metamoji/ui/cabinet/NoteListGridView;->getItemView(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 7074
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalViewHolder;

    if-eqz v3, :cond_5

    .line 7075
    invoke-virtual {v3}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalViewHolder;->getType()I

    move-result v4

    if-nez v4, :cond_5

    .line 7076
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7077
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_normalView:Lcom/metamoji/ui/cabinet/NoteListGridView;

    invoke-virtual {v1, v0}, Lcom/metamoji/ui/cabinet/NoteListGridView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 7078
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 7079
    iget-object v4, v3, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalViewHolder;->_thumbnail:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 7080
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7081
    iget-object v0, v3, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalViewHolder;->_thumbnail:Landroid/widget/ImageView;

    return-object v0

    :cond_1
    return-object v2

    .line 7085
    :cond_2
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_NoteListMode:Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;

    sget-object v4, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;->NoteListModeType_Simple:Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;

    if-ne v3, v4, :cond_5

    .line 7086
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_simpleView:Lcom/metamoji/ui/cabinet/SimpleGridView;

    invoke-virtual {v3, v1}, Lcom/metamoji/ui/cabinet/SimpleGridView;->getItemView(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_1

    .line 7088
    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleNewButtonViewHolder;

    if-eqz v4, :cond_5

    .line 7089
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleNewButtonViewHolder;

    if-eqz v3, :cond_5

    .line 7091
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7092
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_simpleView:Lcom/metamoji/ui/cabinet/SimpleGridView;

    invoke-virtual {v1, v0}, Lcom/metamoji/ui/cabinet/SimpleGridView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 7093
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 7094
    iget-object v4, v3, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleNewButtonViewHolder;->_thumbnail:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 7095
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7096
    iget-object v0, v3, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleNewButtonViewHolder;->_thumbnail:Landroid/widget/ImageView;

    return-object v0

    :cond_4
    return-object v2

    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return-object v2
.end method

.method public handleDistributeMultiNotesToMultiBoxes(Z)V
    .locals 8

    .line 7234
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_currentDisplayedFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v2

    .line 7235
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->selectedNoteDocIds()Ljava/util/ArrayList;

    move-result-object v0

    .line 7237
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 7238
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->isSelectedNormalNoteOnly()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7239
    sget p1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_NOTES_THAT_CANNOT_DISTRIBUTE_TO_MULTI_BOXS_ARE_SELECTED_MSG:I

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/CabinetUtils;->showCabinetAlertDialog(Ljava/lang/String;)Z

    return-void

    .line 7241
    :cond_0
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_activity:Landroidx/fragment/app/FragmentActivity;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    new-instance v6, Lcom/metamoji/ui/cabinet/NoteListViewFragment$63;

    invoke-direct {v6, p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$63;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)V

    const/4 v7, 0x0

    const/4 v4, 0x0

    move v5, p1

    invoke-static/range {v1 .. v7}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->editNoteInDrive(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;ZZLcom/metamoji/ui/cabinet/NoteListViewFragment$IDriveDocumentEditorOpener;Z)V

    return-void

    :cond_1
    move v5, p1

    .line 7254
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->isSelectedNormalNoteOnly()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->isSelectedPasswordNote()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 7257
    :cond_2
    new-instance p1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$64;

    invoke-direct {p1, p0, v2, v0, v5}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$64;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Ljava/lang/String;Ljava/util/List;Z)V

    invoke-static {v2, p1}, Lcom/metamoji/noteanytime/MainActivity;->doAutoSyncDrive(Ljava/lang/String;Lcom/metamoji/noteanytime/MainActivity$IDoAutoSyncDriveBlock;)V

    return-void

    .line 7255
    :cond_3
    :goto_0
    sget p1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_NOTES_THAT_CANNOT_DISTRIBUTE_TO_MULTI_BOXS_ARE_SELECTED_MSG:I

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/CabinetUtils;->showCabinetAlertDialog(Ljava/lang/String;)Z

    return-void
.end method

.method public hideNoteListSyncInfo(Ljava/lang/String;)V
    .locals 6

    .line 5755
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_7

    .line 5757
    invoke-direct {p0, v1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->getItem(I)Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    move-result-object v2

    .line 5758
    invoke-static {v2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_type(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)I

    move-result v3

    const/4 v4, 0x1

    if-eq v4, v3, :cond_0

    goto/16 :goto_1

    :cond_0
    if-eqz p1, :cond_6

    .line 5762
    invoke-virtual {v2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDocId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 5763
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_NoteListMode:Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;

    sget-object v3, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;->NoteListModeType_Normal:Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;

    const/16 v5, 0x8

    if-ne v2, v3, :cond_3

    .line 5764
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_normalView:Lcom/metamoji/ui/cabinet/NoteListGridView;

    invoke-virtual {v2, v1}, Lcom/metamoji/ui/cabinet/NoteListGridView;->getItemView(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_2

    .line 5766
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalViewHolder;

    if-eqz v2, :cond_7

    .line 5767
    invoke-virtual {v2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalViewHolder;->getType()I

    move-result v3

    if-eq v4, v3, :cond_2

    goto :goto_2

    .line 5768
    :cond_2
    check-cast v2, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalDocumentViewHolder;

    .line 5771
    iget-object v3, v2, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalDocumentViewHolder;->_cabinetSync_Waiting:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5772
    iget-object v3, v2, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalDocumentViewHolder;->_cabinetSync_Syncing:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5773
    iget-object v2, v2, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalDocumentViewHolder;->_cabinetSyncWait:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 5774
    :cond_3
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_NoteListMode:Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;

    sget-object v3, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;->NoteListModeType_Simple:Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;

    if-ne v2, v3, :cond_6

    .line 5775
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_simpleView:Lcom/metamoji/ui/cabinet/SimpleGridView;

    invoke-virtual {v2, v1}, Lcom/metamoji/ui/cabinet/SimpleGridView;->getItemView(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_2

    .line 5777
    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleViewHolder;

    if-eqz v2, :cond_7

    .line 5778
    invoke-virtual {v2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleViewHolder;->getType()I

    move-result v3

    if-eq v4, v3, :cond_5

    goto :goto_2

    .line 5779
    :cond_5
    check-cast v2, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleDocumentViewHolder;

    .line 5782
    iget-object v3, v2, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleDocumentViewHolder;->_cabinetSync_Waiting:Landroid/widget/ImageView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5783
    iget-object v3, v2, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleDocumentViewHolder;->_cabinetSync_Syncing:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5784
    iget-object v2, v2, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleDocumentViewHolder;->_cabinetSyncWait:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    :goto_2
    return-void
.end method

.method isEnabledMultiSelectEtcBtn()Z
    .locals 7

    .line 1650
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1657
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, v1

    move v3, v2

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    if-eqz v4, :cond_1

    if-nez v2, :cond_2

    .line 1659
    invoke-static {v4}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_metadata(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->isShareNote(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v2, v5

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    if-nez v3, :cond_1

    .line 1665
    invoke-static {v4}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_metadata(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->isTemplate(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v3, v5

    if-eqz v2, :cond_1

    .line 1675
    :cond_3
    :goto_0
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v0

    sget-object v4, Lcom/metamoji/nt/NtFeature;->AppUnavailableHistoryTab:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v0, v4}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1676
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_userDefaults:Lcom/metamoji/nt/NtUserDefaults;

    const-string v4, "MMJNtHistoryBarShow"

    invoke-virtual {v0, v4, v1}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_1

    :cond_4
    move v0, v1

    :goto_1
    if-nez v3, :cond_7

    if-eqz v0, :cond_5

    .line 1683
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, v5, :cond_7

    :cond_6
    return v5

    .line 1689
    :cond_7
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v0

    sget-object v3, Lcom/metamoji/nt/NtFeature;->CabinetExport:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v0, v3}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v0

    if-eqz v0, :cond_8

    if-nez v2, :cond_8

    .line 1690
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v0

    sget-object v3, Lcom/metamoji/nt/NtFeature;->AppUnavailableSendByFile:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v0, v3}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v0

    if-nez v0, :cond_8

    return v5

    .line 1696
    :cond_8
    invoke-static {}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->getCurrentFolder()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object v0

    sget-object v3, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->TEMPLATE:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-eq v0, v3, :cond_11

    .line 1699
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    .line 1700
    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v0

    sget-object v3, Lcom/metamoji/nt/NtFeature;->AppStudentEditClassboxNote:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v0, v3}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_2

    .line 1703
    :cond_9
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_currentDisplayedFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    move v0, v1

    goto :goto_3

    :cond_a
    :goto_2
    move v0, v5

    :goto_3
    if-eqz v0, :cond_b

    if-nez v2, :cond_b

    return v5

    .line 1716
    :cond_b
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v2

    if-nez v2, :cond_c

    invoke-static {}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->getCurrentFolder()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getGroupId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_d

    .line 1719
    :cond_c
    invoke-static {}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->getCurrentFolder()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object v2

    sget-object v3, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->ALL_NOTE:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-eq v2, v3, :cond_d

    .line 1722
    invoke-static {}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->getCurrentFolder()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/noteanytime/CabinetCommandManager;->isEnableMakeFolder(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1724
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_currentDisplayedFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {v2}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/ui/cabinet/CabinetUtils;->hasFolder(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    return v5

    :cond_d
    if-eqz v0, :cond_e

    .line 1733
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->isMultiSelectedNote()Z

    move-result v0

    if-eqz v0, :cond_e

    return v5

    .line 1738
    :cond_e
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1739
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->isSelectedNote()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1740
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->isMultiSelectedNote()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->isSelectedShareNoteOnly()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_4

    :cond_f
    return v5

    .line 1749
    :cond_10
    :goto_4
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_currentDisplayedFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->isSelectedShareNoteOnly()Z

    move-result v0

    if-eqz v0, :cond_11

    return v5

    :cond_11
    return v1
.end method

.method public isMultiSelectedNote()Z
    .locals 2

    .line 1799
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSelectedNormalNoteOnly()Z
    .locals 4

    .line 1775
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    if-eqz v1, :cond_0

    .line 1778
    invoke-static {v1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_metadata(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->isTemplate(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    return v3

    .line 1784
    :cond_1
    invoke-static {v1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_metadata(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->getMimeType(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "application/vnd.metamoji.model.atdoc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return v3

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public isSelectedNote()Z
    .locals 1

    .line 1795
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSelectedPasswordNote()Z
    .locals 2

    .line 1760
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    if-eqz v1, :cond_0

    .line 1763
    invoke-static {v1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_metadata(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    .line 1764
    invoke-virtual {v1}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->isProtected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method isSelectedShareNoteOnly()Z
    .locals 3

    .line 1852
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1855
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    if-eqz v2, :cond_2

    .line 1856
    invoke-static {v2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_metadata(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->isShareNote(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_2
    return v1

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 534
    invoke-super {p0, p1}, Lcom/metamoji/ui/cabinet/CabinetNodeViewFragment;->onAttach(Landroid/content/Context;)V

    .line 535
    move-object v0, p1

    check-cast v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$OnFolderClickListener;

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_folderClickListener:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$OnFolderClickListener;

    .line 536
    check-cast p1, Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_folderChangeEventListener:Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 839
    invoke-super {p0, p1}, Lcom/metamoji/ui/cabinet/CabinetNodeViewFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 840
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_currentDisplayedFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->update(Lcom/metamoji/ui/cabinet/CabinetTreeItem;Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 542
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_rootView:Landroid/view/View;

    if-eqz v0, :cond_0

    return-object v0

    .line 545
    :cond_0
    invoke-super {p0, p3}, Lcom/metamoji/ui/cabinet/CabinetNodeViewFragment;->onCreate(Landroid/os/Bundle;)V

    .line 547
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_res:Landroid/content/res/Resources;

    if-eqz p3, :cond_1

    .line 548
    iget-object p3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectItems:Ljava/util/ArrayList;

    if-nez p3, :cond_2

    .line 549
    :cond_1
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectItems:Ljava/util/ArrayList;

    :cond_2
    const/4 p3, 0x1

    .line 553
    invoke-virtual {p0, p3}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->setRetainInstance(Z)V

    .line 555
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object p3

    iput-object p3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_userDefaults:Lcom/metamoji/nt/NtUserDefaults;

    .line 556
    invoke-static {}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;->values()[Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;

    move-result-object p3

    .line 557
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_userDefaults:Lcom/metamoji/nt/NtUserDefaults;

    sget-object v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;->NoteListModeType_Normal:Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;->ordinal()I

    move-result v1

    const-string v2, "CabinetViewMode2"

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/nt/NtUserDefaults;->getIntValue(Ljava/lang/String;I)I

    move-result v0

    .line 558
    aget-object p3, p3, v0

    .line 559
    iput-object p3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_NoteListMode:Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;

    .line 561
    iget-object p3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_userDefaults:Lcom/metamoji/nt/NtUserDefaults;

    const-string v0, "CabinetSortKey"

    const-string/jumbo v1, "update"

    invoke-virtual {p3, v0, v1}, Lcom/metamoji/nt/NtUserDefaults;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/metamoji/noteanytime/MainActivity;->setNoteListSortKey(Ljava/lang/String;)V

    .line 562
    iget-object p3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_userDefaults:Lcom/metamoji/nt/NtUserDefaults;

    const-string v0, "CabinetAscending"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result p3

    invoke-static {p3}, Lcom/metamoji/noteanytime/MainActivity;->setNoteListAscending(Z)V

    .line 564
    new-instance p3, Lcom/metamoji/nt/NtCommandManager;

    invoke-direct {p3, p0}, Lcom/metamoji/nt/NtCommandManager;-><init>(Lcom/metamoji/nt/ICommandProcessor;)V

    iput-object p3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_commandManager:Lcom/metamoji/nt/NtCommandManager;

    .line 565
    sget p3, Lcom/metamoji/noteanytime/R$layout;->fragment_note_list:I

    invoke-virtual {p1, p3, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_rootView:Landroid/view/View;

    .line 566
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_activity:Landroidx/fragment/app/FragmentActivity;

    .line 568
    instance-of p2, p1, Lcom/metamoji/noteanytime/MainActivity;

    const/4 p3, 0x0

    if-eqz p2, :cond_3

    .line 569
    check-cast p1, Lcom/metamoji/noteanytime/MainActivity;

    invoke-virtual {p1}, Lcom/metamoji/noteanytime/MainActivity;->getFxManager()Lcom/metamoji/ui/flexible/FxManager;

    move-result-object p1

    goto :goto_0

    :cond_3
    move-object p1, p3

    :goto_0
    if-eqz p1, :cond_5

    .line 572
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_rootView:Landroid/view/View;

    sget v0, Lcom/metamoji/noteanytime/R$id;->cabinet_search_button:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 574
    sget-object v0, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_CABINET_SEARCH_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    sget-object v2, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->CENTER:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    invoke-virtual {p1, v0, p2, v1, v2}, Lcom/metamoji/ui/flexible/FxManager;->putHelpItem(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Landroid/view/View;Landroid/graphics/Rect;Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;)V

    .line 575
    :cond_4
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_rootView:Landroid/view/View;

    sget v0, Lcom/metamoji/noteanytime/R$id;->cabinet_multiselect_button:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 577
    sget-object v0, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_CABINET_EDIT_BTN:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    sget-object v2, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->CENTER:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    invoke-virtual {p1, v0, p2, v1, v2}, Lcom/metamoji/ui/flexible/FxManager;->putHelpItem(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Landroid/view/View;Landroid/graphics/Rect;Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;)V

    .line 579
    :cond_5
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_rootView:Landroid/view/View;

    sget p2, Lcom/metamoji/noteanytime/R$id;->cabinet_folder_path_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/HorizontalScrollView;

    .line 580
    new-instance p2, Lcom/metamoji/ui/cabinet/FolderPathManager;

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_activity:Landroidx/fragment/app/FragmentActivity;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_folderClickListener:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$OnFolderClickListener;

    iget-object v2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_folderChangeEventListener:Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;

    invoke-direct {p2, p1, v0, v1, v2}, Lcom/metamoji/ui/cabinet/FolderPathManager;-><init>(Landroid/widget/HorizontalScrollView;Landroid/content/Context;Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$OnFolderClickListener;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_folderPathMgr:Lcom/metamoji/ui/cabinet/FolderPathManager;

    .line 582
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->prepareNewButton()V

    .line 583
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->prepareModeChangeButton()V

    .line 584
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->prepareNoteCountLabel()V

    .line 589
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->prepareTrashAllDeleteButton()V

    .line 591
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->prepareInviteButton()V

    .line 592
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->prepareDriveMemberButton()V

    .line 593
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->prepareMultiSelectButton()V

    .line 594
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->prepareSearchLabel()V

    .line 595
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->prepareSortButton()V

    .line 599
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->prepareSearchButton()V

    .line 601
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->preparePagingButton()V

    .line 603
    new-instance p1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListViewDragListener;

    invoke-direct {p1, p0, p3}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListViewDragListener;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Lcom/metamoji/ui/cabinet/NoteListViewFragment-IA;)V

    .line 604
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_rootView:Landroid/view/View;

    sget p3, Lcom/metamoji/noteanytime/R$id;->cabinet_normal_view:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/cabinet/NormalGridView;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_normalView:Lcom/metamoji/ui/cabinet/NoteListGridView;

    .line 605
    invoke-virtual {p2, p1}, Lcom/metamoji/ui/cabinet/NoteListGridView;->setDragListener(Lcom/metamoji/ui/cabinet/SimpleDragListener;)V

    .line 606
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_normalView:Lcom/metamoji/ui/cabinet/NoteListGridView;

    sget p3, Lcom/metamoji/noteanytime/R$drawable;->cabinet_new_select_drag:I

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/cabinet/NoteListGridView;->setDragBackgroundResource(I)V

    .line 607
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_normalView:Lcom/metamoji/ui/cabinet/NoteListGridView;

    invoke-virtual {p2}, Lcom/metamoji/ui/cabinet/NoteListGridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    .line 608
    new-instance p3, Lcom/metamoji/ui/cabinet/NoteListViewFragment$1;

    invoke-direct {p3, p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$1;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)V

    iput-object p3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_normalViewOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 614
    invoke-virtual {p2, p3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 616
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_rootView:Landroid/view/View;

    sget p3, Lcom/metamoji/noteanytime/R$id;->cabinet_detail_view:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/cabinet/DetailGridView;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_detailView:Lcom/metamoji/ui/cabinet/DetailGridView;

    .line 617
    invoke-virtual {p2, p1}, Lcom/metamoji/ui/cabinet/DetailGridView;->setDragListener(Lcom/metamoji/ui/cabinet/SimpleDragListener;)V

    .line 618
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_detailView:Lcom/metamoji/ui/cabinet/DetailGridView;

    sget p3, Lcom/metamoji/noteanytime/R$drawable;->cabinet_drag_detail_select2:I

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/cabinet/DetailGridView;->setDragBackgroundResource(I)V

    .line 619
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_detailView:Lcom/metamoji/ui/cabinet/DetailGridView;

    invoke-virtual {p2}, Lcom/metamoji/ui/cabinet/DetailGridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    .line 620
    new-instance p3, Lcom/metamoji/ui/cabinet/NoteListViewFragment$2;

    invoke-direct {p3, p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$2;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)V

    iput-object p3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_detailViewOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 627
    invoke-virtual {p2, p3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 629
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_rootView:Landroid/view/View;

    sget p3, Lcom/metamoji/noteanytime/R$id;->cabinet_simple_view:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/cabinet/SimpleGridView;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_simpleView:Lcom/metamoji/ui/cabinet/SimpleGridView;

    .line 630
    invoke-virtual {p2, p1}, Lcom/metamoji/ui/cabinet/SimpleGridView;->setDragListener(Lcom/metamoji/ui/cabinet/SimpleDragListener;)V

    .line 631
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_simpleView:Lcom/metamoji/ui/cabinet/SimpleGridView;

    sget p2, Lcom/metamoji/noteanytime/R$drawable;->cabinet_drag_detail_select2:I

    invoke-virtual {p1, p2}, Lcom/metamoji/ui/cabinet/SimpleGridView;->setDragBackgroundResource(I)V

    .line 632
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_simpleView:Lcom/metamoji/ui/cabinet/SimpleGridView;

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/SimpleGridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 633
    new-instance p2, Lcom/metamoji/ui/cabinet/NoteListViewFragment$3;

    invoke-direct {p2, p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$3;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)V

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_simpleViewOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 640
    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 643
    invoke-static {}, Lcom/metamoji/ui/cabinet/user/NoteListObserver;->getInstance()Lcom/metamoji/ui/cabinet/user/NoteListObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/metamoji/ui/cabinet/user/NoteListObserver;->onCreate(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)V

    .line 654
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_lowMemoryListener:Lcom/metamoji/ui/cabinet/NoteListViewFragment$LowMemoryListener;

    if-nez p1, :cond_6

    .line 655
    new-instance p1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$LowMemoryListener;

    iget-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_imageCache:Ljava/util/WeakHashMap;

    invoke-direct {p1, p2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$LowMemoryListener;-><init>(Ljava/util/WeakHashMap;)V

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_lowMemoryListener:Lcom/metamoji/ui/cabinet/NoteListViewFragment$LowMemoryListener;

    .line 656
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getAppLowMemoryManager()Lcom/metamoji/cm/ICmAppLowMemory;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_lowMemoryListener:Lcom/metamoji/ui/cabinet/NoteListViewFragment$LowMemoryListener;

    invoke-interface {p1, p2}, Lcom/metamoji/cm/ICmAppLowMemory;->addLowMemoryEventListener(Lcom/metamoji/cm/ICmAppLowMemory$ILowMemoryListener;)V

    .line 661
    :cond_6
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_rootView:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    .line 834
    invoke-super {p0}, Lcom/metamoji/ui/cabinet/CabinetNodeViewFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 3

    .line 816
    invoke-super {p0}, Lcom/metamoji/ui/cabinet/CabinetNodeViewFragment;->onDestroyView()V

    .line 819
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->cancelThumbTaskAll()V

    .line 820
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->cancelNickNameTaskAll()V

    .line 823
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_lowMemoryListener:Lcom/metamoji/ui/cabinet/NoteListViewFragment$LowMemoryListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 824
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getAppLowMemoryManager()Lcom/metamoji/cm/ICmAppLowMemory;

    move-result-object v0

    iget-object v2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_lowMemoryListener:Lcom/metamoji/ui/cabinet/NoteListViewFragment$LowMemoryListener;

    invoke-interface {v0, v2}, Lcom/metamoji/cm/ICmAppLowMemory;->removeLowMemoryEventListener(Lcom/metamoji/cm/ICmAppLowMemory$ILowMemoryListener;)V

    .line 825
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_lowMemoryListener:Lcom/metamoji/ui/cabinet/NoteListViewFragment$LowMemoryListener;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$LowMemoryListener;->dispose()V

    .line 826
    iput-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_lowMemoryListener:Lcom/metamoji/ui/cabinet/NoteListViewFragment$LowMemoryListener;

    .line 828
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_imageCache:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 829
    iput-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_rootView:Landroid/view/View;

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 4462
    invoke-direct {p0, p3}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->getItem(I)Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    move-result-object p1

    .line 4464
    iget-boolean p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectMode:Z

    if-eqz p2, :cond_0

    if-eqz p1, :cond_2

    .line 4466
    invoke-direct {p0, p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->onItemClickCore(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)V

    return-void

    .line 4469
    :cond_0
    iget-boolean p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_isTrash:Z

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 4472
    invoke-direct {p0, p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->onItemClickCore(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 5295
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_detailView:Lcom/metamoji/ui/cabinet/DetailGridView;

    const/4 p4, 0x1

    if-eqz p1, :cond_0

    iget-boolean p1, p1, Lcom/metamoji/ui/cabinet/DetailGridView;->_dragging:Z

    if-eqz p1, :cond_0

    return p4

    .line 5299
    :cond_0
    invoke-direct {p0, p3}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->getItem(I)Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    move-result-object p1

    const/4 p3, 0x0

    if-nez p1, :cond_1

    return p3

    .line 5302
    :cond_1
    invoke-static {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_type(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)I

    move-result p5

    if-ne p4, p5, :cond_2

    .line 5303
    invoke-direct {p0, p2, p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->showItemContextMenu(Landroid/view/View;Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)V

    goto :goto_0

    :cond_2
    const/4 p5, 0x2

    .line 5304
    invoke-static {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_type(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)I

    move-result v0

    if-ne p5, v0, :cond_3

    .line 5305
    invoke-direct {p0, p2, p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->showItemContextMenu(Landroid/view/View;Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)V

    :goto_0
    return p4

    :cond_3
    return p3
.end method

.method public onPause()V
    .locals 2

    .line 785
    invoke-super {p0}, Lcom/metamoji/ui/cabinet/CabinetNodeViewFragment;->onPause()V

    .line 788
    invoke-static {}, Lcom/metamoji/ui/cabinet/user/NoteListObserver;->getInstance()Lcom/metamoji/ui/cabinet/user/NoteListObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/NoteListObserver;->onPause()V

    .line 797
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_normalView:Lcom/metamoji/ui/cabinet/NoteListGridView;

    if-eqz v0, :cond_0

    .line 798
    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/NoteListGridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 799
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_normalViewOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 801
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_detailView:Lcom/metamoji/ui/cabinet/DetailGridView;

    if-eqz v0, :cond_1

    .line 802
    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/DetailGridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 803
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_detailViewOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 805
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_simpleView:Lcom/metamoji/ui/cabinet/SimpleGridView;

    if-eqz v0, :cond_2

    .line 806
    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/SimpleGridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 807
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_simpleViewOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 672
    invoke-super {p0}, Lcom/metamoji/ui/cabinet/CabinetNodeViewFragment;->onResume()V

    .line 676
    invoke-static {}, Lcom/metamoji/ui/cabinet/user/NoteListObserver;->getInstance()Lcom/metamoji/ui/cabinet/user/NoteListObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/NoteListObserver;->onResume()V

    .line 679
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_activity:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0}, Lcom/metamoji/noteanytime/MainActivity;->refreshSyncButton(Landroidx/fragment/app/FragmentActivity;)V

    .line 684
    invoke-static {p0}, Lcom/metamoji/noteanytime/MainActivity;->isNeedRemake(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 685
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$4;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$4;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 776
    invoke-static {p0}, Lcom/metamoji/noteanytime/MainActivity;->finishRemake(Landroidx/fragment/app/Fragment;)V

    :cond_0
    const/4 v0, 0x0

    .line 779
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_isEditing:Z

    return-void
.end method

.method public onSelect(Landroid/view/View;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    .line 5792
    instance-of p1, p3, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 5793
    move-object p1, p3

    check-cast p1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    .line 5794
    sget-object v2, Lcom/metamoji/ui/cabinet/NoteListViewFragment$65;->$SwitchMap$com$metamoji$ui$PopupCommand:[I

    check-cast p2, Lcom/metamoji/ui/PopupCommand;

    invoke-virtual {p2}, Lcom/metamoji/ui/PopupCommand;->ordinal()I

    move-result p2

    aget p2, v2, p2

    const/4 v2, 0x2

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 5958
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->handleRestoreCollaboDocument(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)V

    return-void

    .line 5955
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->handleReacquisitionShareNote(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)V

    return-void

    .line 5952
    :pswitch_3
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getGroupId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/metamoji/noteanytime/MainActivity;->driveDisplaySettings(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    return-void

    .line 5949
    :pswitch_4
    invoke-direct {p0, p3}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->handleShowURLForContextMenu(Ljava/lang/Object;)V

    return-void

    .line 5946
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->handleScoreListForContextMenu(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)V

    return-void

    .line 5943
    :pswitch_6
    invoke-direct {p0, p1, v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->handleStarInfoSettingForCurrentItem(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;Z)V

    return-void

    .line 5940
    :pswitch_7
    invoke-direct {p0, p1, v1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->handleStarInfoSettingForCurrentItem(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;Z)V

    return-void

    .line 5932
    :pswitch_8
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDriveId()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_folderChangeEventListener:Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;

    invoke-static {p2, p1, p3}, Lcom/metamoji/noteanytime/MainActivity;->deleteDrive(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V

    return-void

    .line 5925
    :pswitch_9
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getGroupId()Ljava/lang/String;

    move-result-object p2

    .line 5928
    iget-object p3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_activity:Landroidx/fragment/app/FragmentActivity;

    if-eqz p2, :cond_0

    .line 5926
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDriveId()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_folderChangeEventListener:Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;

    invoke-static {p3, p1, p2}, Lcom/metamoji/noteanytime/MainActivity;->renameClassBox(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V

    return-void

    .line 5928
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDriveId()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_folderChangeEventListener:Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;

    invoke-static {p3, p1, p2}, Lcom/metamoji/noteanytime/MainActivity;->renameDrive(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V

    return-void

    .line 5921
    :pswitch_a
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDriveId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/metamoji/noteanytime/MainActivity;->checkDriveUsage(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    return-void

    .line 5918
    :pswitch_b
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDriveId()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_folderChangeEventListener:Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;

    invoke-static {p2, p1, p3}, Lcom/metamoji/noteanytime/MainActivity;->leaveDrive(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V

    return-void

    .line 5915
    :pswitch_c
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDriveId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getGroupId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3, p1}, Lcom/metamoji/noteanytime/MainActivity;->showDriveMember(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5909
    :pswitch_d
    invoke-static {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_type(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)I

    move-result p2

    if-ne v1, p2, :cond_8

    .line 5910
    invoke-direct {p0, p1, v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->editNote(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;Z)V

    return-void

    .line 5906
    :pswitch_e
    invoke-direct {p0, p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->newNoteTemplateBasedOnNote(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)V

    return-void

    .line 5901
    :pswitch_f
    invoke-static {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_type(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)I

    move-result p2

    if-ne v2, p2, :cond_8

    .line 5902
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_activity:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_content(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-static {p2, p1}, Lcom/metamoji/noteanytime/MainActivity;->exportNotes(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V

    return-void

    .line 5896
    :pswitch_10
    invoke-static {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_type(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)I

    move-result p2

    if-ne v2, p2, :cond_8

    .line 5897
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_activity:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_content(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-static {p2, p1}, Lcom/metamoji/noteanytime/MainActivity;->importNotes(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V

    return-void

    .line 5886
    :pswitch_11
    invoke-static {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_type(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)I

    move-result p2

    if-ne v2, p2, :cond_8

    .line 5887
    invoke-static {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_content(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-static {p1}, Lcom/metamoji/noteanytime/MainActivity;->moveFolderForContextmenu(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V

    return-void

    .line 5876
    :pswitch_12
    invoke-static {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_type(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)I

    move-result p2

    if-ne v2, p2, :cond_8

    .line 5877
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_activity:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_content(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    iget-object p3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_folderChangeEventListener:Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;

    invoke-static {p2, p1, p3}, Lcom/metamoji/noteanytime/MainActivity;->deleteFolder(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V

    return-void

    .line 5871
    :pswitch_13
    invoke-static {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_type(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)I

    move-result p2

    if-ne v2, p2, :cond_8

    .line 5872
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_activity:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_content(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    iget-object p3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_folderChangeEventListener:Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;

    invoke-static {p2, p1, p3}, Lcom/metamoji/noteanytime/MainActivity;->renameFolder(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V

    return-void

    .line 5866
    :pswitch_14
    invoke-static {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_type(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)I

    move-result p2

    if-ne v2, p2, :cond_8

    .line 5867
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_activity:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_content(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    iget-object p3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_folderChangeEventListener:Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;

    invoke-static {p2, p1, p3}, Lcom/metamoji/noteanytime/MainActivity;->createNewFolder(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V

    return-void

    .line 5861
    :pswitch_15
    invoke-static {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_type(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)I

    move-result p2

    if-ne v1, p2, :cond_8

    .line 5862
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDriveId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDocId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/metamoji/nt/mv/MvDebug;->noteInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5852
    :pswitch_16
    invoke-static {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_type(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)I

    move-result p2

    if-ne v1, p2, :cond_8

    .line 5853
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDriveId()Ljava/lang/String;

    move-result-object p2

    .line 5854
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDocId()Ljava/lang/String;

    move-result-object p3

    .line 5855
    invoke-static {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->getTitleString(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Ljava/lang/String;

    move-result-object p1

    .line 5856
    new-instance v0, Lcom/metamoji/ui/cabinet/NoteItemInfo;

    invoke-direct {v0, p2, p3, p1}, Lcom/metamoji/ui/cabinet/NoteItemInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5857
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_activity:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p1, v0}, Lcom/metamoji/noteanytime/MainActivity;->dumpNoteForDebug(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/NoteItemInfo;)V

    return-void

    .line 5840
    :pswitch_17
    invoke-static {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_type(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)I

    move-result p2

    if-ne v1, p2, :cond_8

    .line 5841
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDriveId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDocId()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_currentDisplayedFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {p3}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTags()Ljava/util/List;

    move-result-object p3

    invoke-direct {p0, p2, p1, p3}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->moveNotes(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void

    .line 5831
    :pswitch_18
    invoke-static {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_type(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)I

    move-result p2

    if-ne v1, p2, :cond_8

    .line 5832
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDriveId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDocId()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_currentDisplayedFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {p3}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTags()Ljava/util/List;

    move-result-object p3

    invoke-direct {p0, p2, p1, p3}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->copyNotes(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void

    .line 5828
    :pswitch_19
    invoke-direct {p0, p3}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->editNoteTitle(Ljava/lang/Object;)V

    return-void

    .line 5825
    :pswitch_1a
    invoke-direct {p0, p3}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->restoreNote(Ljava/lang/Object;)V

    return-void

    .line 5822
    :pswitch_1b
    invoke-direct {p0, p3}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->deleteNote(Ljava/lang/Object;)V

    return-void

    .line 5819
    :pswitch_1c
    invoke-direct {p0, p3}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->copyAndEditNote(Ljava/lang/Object;)V

    return-void

    .line 5810
    :pswitch_1d
    invoke-static {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_type(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)I

    move-result p2

    if-ne v1, p2, :cond_8

    .line 5811
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDriveId()Ljava/lang/String;

    move-result-object p2

    .line 5812
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDocId()Ljava/lang/String;

    move-result-object p3

    .line 5813
    invoke-static {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->getTitleString(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Ljava/lang/String;

    move-result-object p1

    .line 5814
    new-instance v0, Lcom/metamoji/ui/cabinet/NoteItemInfo;

    invoke-direct {v0, p2, p3, p1}, Lcom/metamoji/ui/cabinet/NoteItemInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5815
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_activity:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p1, v0}, Lcom/metamoji/noteanytime/MainActivity;->exportAtDoc(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/NoteItemInfo;)V

    return-void

    .line 5807
    :pswitch_1e
    invoke-direct {p0, p1, v1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->editNote(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;Z)V

    return-void

    .line 5796
    :pswitch_1f
    invoke-static {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_type(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)I

    move-result p2

    if-ne v1, p2, :cond_8

    .line 5798
    invoke-static {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_metadata(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->isTemplate(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 5799
    invoke-direct {p0, p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->copyAndEditNoteAsNew(Ljava/lang/Object;)V

    return-void

    .line 5801
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->editNote(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;Z)V

    return-void

    .line 5964
    :cond_2
    instance-of p1, p3, Lcom/metamoji/ui/cabinet/NoteListViewFragment$DragContextMenuParam;

    if-eqz p1, :cond_4

    .line 5965
    sget-object p1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$65;->$SwitchMap$com$metamoji$ui$PopupCommand:[I

    check-cast p2, Lcom/metamoji/ui/PopupCommand;

    invoke-virtual {p2}, Lcom/metamoji/ui/PopupCommand;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/16 p2, 0x21

    if-eq p1, p2, :cond_3

    goto/16 :goto_0

    .line 5973
    :cond_3
    check-cast p3, Lcom/metamoji/ui/cabinet/NoteListViewFragment$DragContextMenuParam;

    .line 5974
    invoke-static {p3}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$DragContextMenuParam;->-$$Nest$fget_from(Lcom/metamoji/ui/cabinet/NoteListViewFragment$DragContextMenuParam;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/noteanytime/MainActivity;->moveFolderForContextmenu(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V

    .line 5975
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_activity:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p3}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$DragContextMenuParam;->-$$Nest$fget_to(Lcom/metamoji/ui/cabinet/NoteListViewFragment$DragContextMenuParam;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object p2

    invoke-static {}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->getCurrentFolder()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object p3

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_folderChangeEventListener:Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;

    invoke-static {p1, p2, p3, v0}, Lcom/metamoji/noteanytime/MainActivity;->pasteForContextmenu(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V

    return-void

    .line 5981
    :cond_4
    instance-of p1, p3, Lcom/metamoji/ui/cabinet/NoteListViewFragment$DragContextMenuParam2;

    const/16 v2, 0x9

    const/16 v3, 0x8

    if-eqz p1, :cond_7

    .line 5982
    sget-object p1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$65;->$SwitchMap$com$metamoji$ui$PopupCommand:[I

    check-cast p2, Lcom/metamoji/ui/PopupCommand;

    invoke-virtual {p2}, Lcom/metamoji/ui/PopupCommand;->ordinal()I

    move-result p2

    aget p1, p1, p2

    if-eq p1, v3, :cond_6

    if-eq p1, v2, :cond_5

    goto :goto_0

    .line 5984
    :cond_5
    check-cast p3, Lcom/metamoji/ui/cabinet/NoteListViewFragment$DragContextMenuParam2;

    .line 5985
    invoke-static {p3}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$DragContextMenuParam2;->-$$Nest$fget_fromDocIds(Lcom/metamoji/ui/cabinet/NoteListViewFragment$DragContextMenuParam2;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p3}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$DragContextMenuParam2;->-$$Nest$fget_from(Lcom/metamoji/ui/cabinet/NoteListViewFragment$DragContextMenuParam2;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getAbsPath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$DragContextMenuParam2;->-$$Nest$fget_from(Lcom/metamoji/ui/cabinet/NoteListViewFragment$DragContextMenuParam2;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->moveNoteForContextmenu(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 5986
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_activity:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p3}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$DragContextMenuParam2;->-$$Nest$fget_to(Lcom/metamoji/ui/cabinet/NoteListViewFragment$DragContextMenuParam2;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object p2

    invoke-static {p3}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$DragContextMenuParam2;->-$$Nest$fget_from(Lcom/metamoji/ui/cabinet/NoteListViewFragment$DragContextMenuParam2;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object p3

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_folderChangeEventListener:Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;

    invoke-static {p1, p2, p3, v0}, Lcom/metamoji/noteanytime/MainActivity;->pasteForContextmenu(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V

    return-void

    .line 5990
    :cond_6
    check-cast p3, Lcom/metamoji/ui/cabinet/NoteListViewFragment$DragContextMenuParam2;

    .line 5991
    invoke-static {p3}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$DragContextMenuParam2;->-$$Nest$fget_fromDocIds(Lcom/metamoji/ui/cabinet/NoteListViewFragment$DragContextMenuParam2;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p3}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$DragContextMenuParam2;->-$$Nest$fget_from(Lcom/metamoji/ui/cabinet/NoteListViewFragment$DragContextMenuParam2;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getAbsPath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$DragContextMenuParam2;->-$$Nest$fget_from(Lcom/metamoji/ui/cabinet/NoteListViewFragment$DragContextMenuParam2;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->copyNoteForContextmenu(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 5992
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_activity:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p3}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$DragContextMenuParam2;->-$$Nest$fget_to(Lcom/metamoji/ui/cabinet/NoteListViewFragment$DragContextMenuParam2;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object p2

    invoke-static {p3}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$DragContextMenuParam2;->-$$Nest$fget_from(Lcom/metamoji/ui/cabinet/NoteListViewFragment$DragContextMenuParam2;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object p3

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_folderChangeEventListener:Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;

    invoke-static {p1, p2, p3, v0}, Lcom/metamoji/noteanytime/MainActivity;->pasteForContextmenu(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V

    return-void

    .line 5999
    :cond_7
    sget-object p1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$65;->$SwitchMap$com$metamoji$ui$PopupCommand:[I

    check-cast p2, Lcom/metamoji/ui/PopupCommand;

    invoke-virtual {p2}, Lcom/metamoji/ui/PopupCommand;->ordinal()I

    move-result p2

    aget p1, p1, p2

    if-eq p1, v1, :cond_d

    const/16 p2, 0x11

    if-eq p1, p2, :cond_c

    const/16 p2, 0x1c

    if-eq p1, p2, :cond_b

    if-eq p1, v3, :cond_a

    if-eq p1, v2, :cond_9

    packed-switch p1, :pswitch_data_1

    :cond_8
    :goto_0
    return-void

    .line 6086
    :pswitch_20
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->handleDistributeMultiNotesToMultiBoxes(Z)V

    return-void

    .line 6081
    :pswitch_21
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->handleMergeNotes()V

    return-void

    .line 6071
    :pswitch_22
    invoke-static {}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->getCurrentFolder()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object p1

    .line 6072
    invoke-static {p1, v0}, Lcom/metamoji/noteanytime/MainActivity;->setAllowToParticipateBox(Ljava/lang/String;Z)V

    return-void

    .line 6066
    :pswitch_23
    invoke-static {}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->getCurrentFolder()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object p1

    .line 6067
    invoke-static {p1}, Lcom/metamoji/noteanytime/MainActivity;->displayParticipationCode(Ljava/lang/String;)V

    return-void

    .line 6022
    :pswitch_24
    invoke-direct {p0, v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->handleStarInfoSettingForMultiSelectItem(Z)V

    return-void

    .line 6018
    :pswitch_25
    invoke-direct {p0, v1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->handleStarInfoSettingForMultiSelectItem(Z)V

    return-void

    .line 6014
    :pswitch_26
    invoke-direct {p0, v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->changeMultiselectCheckVisibility(Z)V

    return-void

    .line 6010
    :pswitch_27
    invoke-direct {p0, v1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->changeMultiselectCheckVisibility(Z)V

    return-void

    .line 6006
    :pswitch_28
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_folderClickListener:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$OnFolderClickListener;

    sget-object p2, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->CABINET_ROOT_FOLDER_INFO:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-interface {p1, p2}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$OnFolderClickListener;->onFolderItemClick(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V

    .line 6007
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_folderChangeEventListener:Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;

    sget-object p2, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->CABINET_ROOT_FOLDER_INFO:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-interface {p1, p2}, Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;->onFolderOpened(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V

    return-void

    .line 6001
    :pswitch_29
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_folderClickListener:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$OnFolderClickListener;

    sget-object p2, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->ALL_NOTE_FOLDER_INFO:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-interface {p1, p2}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$OnFolderClickListener;->onFolderItemClick(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V

    .line 6002
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_folderChangeEventListener:Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;

    sget-object p2, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->ALL_NOTE_FOLDER_INFO:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-interface {p1, p2}, Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;->onFolderOpened(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V

    return-void

    .line 6061
    :cond_9
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_currentDisplayedFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->getSelectDocIds()Ljava/util/ArrayList;

    move-result-object p2

    iget-object p3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_currentDisplayedFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {p3}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTags()Ljava/util/List;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->moveNotes(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/List;)V

    return-void

    .line 6057
    :cond_a
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_currentDisplayedFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->getSelectDocIds()Ljava/util/ArrayList;

    move-result-object p2

    iget-object p3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_currentDisplayedFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {p3}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTags()Ljava/util/List;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->copyNotes(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/List;)V

    return-void

    .line 6076
    :cond_b
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->handleScoreListForMultiSelect()V

    return-void

    .line 6050
    :cond_c
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_currentDisplayedFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object p1

    .line 6051
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->getSelectDocIds()Ljava/util/ArrayList;

    move-result-object p2

    .line 6052
    new-instance p3, Lcom/metamoji/ui/cabinet/NoteItemsInfo;

    invoke-direct {p3, p1, p2}, Lcom/metamoji/ui/cabinet/NoteItemsInfo;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 6053
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_activity:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p1, p3}, Lcom/metamoji/noteanytime/MainActivity;->exportNotes(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/NoteItemsInfo;)V

    return-void

    .line 6027
    :cond_d
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 6029
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectItems:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    if-eqz v1, :cond_e

    move v1, v0

    goto :goto_1

    .line 6035
    :cond_e
    new-instance v2, Lcom/metamoji/nt/NtMRUDocList$MinItem;

    invoke-virtual {p3}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDriveId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDocId()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v2, v3, p3, v0}, Lcom/metamoji/nt/NtMRUDocList$MinItem;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 6037
    :cond_f
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_10

    .line 6038
    invoke-static {}, Lcom/metamoji/nt/NtMRUDocList;->getInstance()Lcom/metamoji/nt/NtMRUDocList;

    move-result-object p2

    .line 6039
    invoke-virtual {p2, p1}, Lcom/metamoji/nt/NtMRUDocList;->addUsedDocs(Ljava/util/List;)V

    .line 6043
    :cond_10
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    invoke-direct {p0, p1, v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->editNote(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;Z)V

    .line 6046
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->changeMultiSelectMode(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
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
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x22
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
    .end packed-switch
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 2908
    instance-of v0, p1, Lcom/metamoji/ui/cabinet/NoteListGridView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2911
    :cond_0
    check-cast p1, Lcom/metamoji/ui/cabinet/NoteListGridView;

    .line 2913
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_activity:Landroidx/fragment/app/FragmentActivity;

    sget v2, Lcom/metamoji/noteanytime/R$id;->CustomMenuView:I

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/CustomMenuView;

    .line 2914
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v2, 0x2

    if-eq p2, v2, :cond_1

    goto :goto_0

    .line 2916
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/ui/CustomMenuView;->isCurrentPopupVisible()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 2918
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/NoteListGridView;->isDragStarted()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 2919
    invoke-virtual {v0}, Lcom/metamoji/ui/CustomMenuView;->CloseMenu()Z

    goto :goto_0

    .line 2921
    :cond_2
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/NoteListGridView;->clearDragState()V

    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    return v1
.end method

.method public performCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z
    .locals 1

    .line 6769
    sget-object v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$65;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    invoke-virtual {p1}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return v0

    .line 6771
    :cond_1
    invoke-direct {p0, p2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->createDocumentFromDocumentTemplate(Lcom/metamoji/cm/CmContext;)V

    return v0
.end method

.method public processEnableCommand(Lcom/metamoji/nt/NtCommand;Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public processInhibitCommand(Lcom/metamoji/nt/NtCommand;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public processSelectCommand(Lcom/metamoji/nt/NtCommand;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public reloadAllView()V
    .locals 2

    .line 4443
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_currentDisplayedFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->update(Lcom/metamoji/ui/cabinet/CabinetTreeItem;Z)V

    .line 4444
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_folderChangeEventListener:Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;

    invoke-interface {v0}, Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;->onFolderChanged()V

    .line 4445
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_folderChangeEventListener:Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_currentDisplayedFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-interface {v0, v1}, Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;->onFolderOpened(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V

    return-void
.end method

.method public resetPagingButton()V
    .locals 1

    const/4 v0, 0x0

    .line 1377
    iput v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->m_pageCounter:I

    .line 1378
    iput v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->m_nowPage:I

    return-void
.end method

.method selectedNoPasswordNoteDocIds()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1821
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1822
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    if-eqz v2, :cond_0

    .line 1825
    invoke-static {v2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_metadata(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->isTemplate(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 1830
    :cond_1
    invoke-static {v2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_metadata(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->getMimeType(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "application/vnd.metamoji.model.atdoc"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 1835
    :cond_2
    invoke-static {v2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_metadata(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    .line 1836
    invoke-virtual {v3}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->isProtected()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    .line 1840
    :cond_3
    invoke-virtual {v2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDocId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method selectedNoteDocIds()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1809
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1810
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    if-eqz v2, :cond_0

    .line 1812
    invoke-virtual {v2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDocId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public showNoteListSyncInfo(Ljava/lang/String;Z)V
    .locals 7

    .line 5707
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_9

    .line 5709
    invoke-direct {p0, v2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->getItem(I)Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    move-result-object v3

    .line 5710
    invoke-static {v3}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_type(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)I

    move-result v4

    const/4 v5, 0x1

    if-eq v5, v4, :cond_0

    goto/16 :goto_3

    :cond_0
    if-eqz p1, :cond_8

    .line 5714
    invoke-virtual {v3}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDocId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 5715
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_NoteListMode:Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;

    sget-object v4, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;->NoteListModeType_Normal:Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;

    const/16 v6, 0x8

    if-ne v3, v4, :cond_4

    .line 5716
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_normalView:Lcom/metamoji/ui/cabinet/NoteListGridView;

    invoke-virtual {v3, v2}, Lcom/metamoji/ui/cabinet/NoteListGridView;->getItemView(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_1

    goto/16 :goto_4

    .line 5718
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalViewHolder;

    if-eqz v3, :cond_9

    .line 5719
    invoke-virtual {v3}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalViewHolder;->getType()I

    move-result v4

    if-eq v5, v4, :cond_2

    goto :goto_4

    .line 5720
    :cond_2
    check-cast v3, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalDocumentViewHolder;

    if-eqz p2, :cond_3

    .line 5723
    iget-object v4, v3, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalDocumentViewHolder;->_cabinetSync_Waiting:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5724
    iget-object v4, v3, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalDocumentViewHolder;->_cabinetSync_Syncing:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 5727
    :cond_3
    iget-object v4, v3, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalDocumentViewHolder;->_cabinetSync_Waiting:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5728
    iget-object v4, v3, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalDocumentViewHolder;->_cabinetSync_Syncing:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5730
    :goto_1
    iget-object v3, v3, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalDocumentViewHolder;->_cabinetSyncWait:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 5731
    :cond_4
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_NoteListMode:Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;

    sget-object v4, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;->NoteListModeType_Simple:Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;

    if-ne v3, v4, :cond_8

    .line 5732
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_simpleView:Lcom/metamoji/ui/cabinet/SimpleGridView;

    invoke-virtual {v3, v2}, Lcom/metamoji/ui/cabinet/SimpleGridView;->getItemView(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_5

    goto :goto_4

    .line 5734
    :cond_5
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleViewHolder;

    if-eqz v3, :cond_9

    .line 5735
    invoke-virtual {v3}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleViewHolder;->getType()I

    move-result v4

    if-eq v5, v4, :cond_6

    goto :goto_4

    .line 5736
    :cond_6
    check-cast v3, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleDocumentViewHolder;

    if-eqz p2, :cond_7

    .line 5739
    iget-object v4, v3, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleDocumentViewHolder;->_cabinetSync_Waiting:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5740
    iget-object v4, v3, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleDocumentViewHolder;->_cabinetSync_Syncing:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 5743
    :cond_7
    iget-object v4, v3, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleDocumentViewHolder;->_cabinetSync_Waiting:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5744
    iget-object v4, v3, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleDocumentViewHolder;->_cabinetSync_Syncing:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5746
    :goto_2
    iget-object v3, v3, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleDocumentViewHolder;->_cabinetSyncWait:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_8
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_9
    :goto_4
    return-void
.end method

.method public startEditorActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    .line 5017
    invoke-virtual/range {v0 .. v7}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->startEditorActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public startEditorActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 5020
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$45;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$45;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    return-void
.end method

.method public update(Lcom/metamoji/ui/cabinet/CabinetTreeItem;Z)V
    .locals 1

    .line 4324
    invoke-super {p0, p1, p2}, Lcom/metamoji/ui/cabinet/CabinetNodeViewFragment;->update(Lcom/metamoji/ui/cabinet/CabinetTreeItem;Z)V

    if-nez p2, :cond_0

    .line 4325
    invoke-direct {p0, p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->isNeedUpdate(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 4327
    :cond_0
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_activity:Landroidx/fragment/app/FragmentActivity;

    sget v0, Lcom/metamoji/noteanytime/R$id;->CustomMenuView:I

    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/CustomMenuView;

    if-eqz p2, :cond_1

    .line 4328
    invoke-virtual {p2}, Lcom/metamoji/ui/CustomMenuView;->isCurrentPopupVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4329
    invoke-virtual {p2}, Lcom/metamoji/ui/CustomMenuView;->CloseMenu()Z

    .line 4332
    :cond_1
    iget-boolean p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectMode:Z

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 4333
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_currentDisplayedFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    if-eqz p2, :cond_2

    invoke-virtual {p2, p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 4334
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectItems:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 4335
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->changeMultiselectButtonEnabled()V

    .line 4339
    :cond_2
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_currentDisplayedFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    .line 4340
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->checkCurrentDisplayedFolderExistence()V

    .line 4341
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_folderPathMgr:Lcom/metamoji/ui/cabinet/FolderPathManager;

    if-nez p2, :cond_3

    .line 4342
    const-string p1, "NoteListViewFragment update : _folderPathMgr is null"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    return-void

    .line 4345
    :cond_3
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_currentDisplayedFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {p2, v0}, Lcom/metamoji/ui/cabinet/FolderPathManager;->updateView(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V

    .line 4346
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_currentDisplayedFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-direct {p0, p2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->updateButtons(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V

    .line 4347
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->updateSearchLabel(Ljava/lang/String;)V

    .line 4348
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_currentDisplayedFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->updateNoteListView(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V

    .line 4350
    iget-boolean p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectMode:Z

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    .line 4351
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->changeMultiSelectMode(Z)V

    .line 4355
    :cond_4
    invoke-static {}, Lcom/metamoji/noteanytime/MainActivity;->simpleChangedDriveAutoSyncWithDelay()V

    return-void
.end method

.method public update(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 4376
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_imageCache:Ljava/util/WeakHashMap;

    if-nez p2, :cond_0

    .line 4375
    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    goto :goto_0

    .line 4376
    :cond_0
    invoke-virtual {v0}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4377
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_imageCache:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p2}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4379
    :cond_1
    :goto_0
    iput-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_selectedDocId:Ljava/lang/String;

    if-eqz p2, :cond_3

    .line 4381
    invoke-static {}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->getCurrentFolder()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    sget-object v1, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->TEMPLATE_FOLDER_INFO:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    if-ne v0, v1, :cond_3

    .line 4383
    :try_start_0
    invoke-static {p1, p2}, Lcom/metamoji/dvm/DvmUtil;->isTemplate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 4385
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    sget p2, Lcom/metamoji/noteanytime/R$id;->folder_tree_view_fragmnet:I

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;

    if-eqz p1, :cond_2

    .line 4387
    sget-object p2, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->CABINET_ROOT_FOLDER_INFO:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {p1, p2}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->setSelectedFolder(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)Z

    goto :goto_1

    .line 4390
    :cond_2
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_activity:Landroidx/fragment/app/FragmentActivity;

    sget-object p2, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->CABINET_ROOT_FOLDER_INFO:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-static {p1, p2}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->setCurrentFolder(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V
    :try_end_0
    .catch Lcom/metamoji/cm/CmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4396
    :catch_0
    :cond_3
    :goto_1
    invoke-static {}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->getCurrentFolder()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->update(Lcom/metamoji/ui/cabinet/CabinetTreeItem;Z)V

    return-void
.end method

.method public updateIconVisibilityForNormal(Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalDocumentViewHolder;Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;Landroidx/fragment/app/FragmentActivity;)V
    .locals 6

    .line 2554
    iget-object v0, p1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalDocumentViewHolder;->_mainText:Landroid/widget/TextView;

    .line 2556
    invoke-virtual {p2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDriveId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDocId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/metamoji/dvm/DvmUtil;->hasCache(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 2557
    invoke-virtual {p3}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/metamoji/noteanytime/R$dimen;->cabinetLocalCacheIconWidth:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    if-eqz v1, :cond_0

    .line 2559
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    .line 2561
    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v4

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2562
    iget-object v0, p1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalDocumentViewHolder;->_localCache:Landroid/widget/ImageView;

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    .line 2563
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2566
    invoke-static {p2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_metadata(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->isDisplayPriority(Ljava/lang/Object;)Z

    move-result p2

    .line 2567
    iget-object v0, p1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalDocumentViewHolder;->_subText:Landroid/widget/TextView;

    .line 2568
    invoke-virtual {p3}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcom/metamoji/noteanytime/R$dimen;->cabinetNormalStarWidth:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    if-nez p2, :cond_2

    .line 2570
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result p3

    .line 2572
    :cond_2
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v4

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v0, p3, v1, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2574
    iget-object p1, p1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalDocumentViewHolder;->_starIcon:Landroid/widget/ImageView;

    if-eqz p2, :cond_3

    move v2, v3

    .line 2575
    :cond_3
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public updateIconVisibilityForSimple(Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleDocumentViewHolder;Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)V
    .locals 4

    .line 2580
    invoke-static {p2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_metadata(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->isDisplayPriority(Ljava/lang/Object;)Z

    move-result v0

    .line 2581
    invoke-virtual {p2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDriveId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDocId()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/metamoji/dvm/DvmUtil;->hasCache(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    .line 2585
    iget-object v1, p1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleDocumentViewHolder;->_starIcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    .line 2586
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2587
    iget-object p1, p1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleDocumentViewHolder;->_localCache:Landroid/widget/ImageView;

    if-eqz p2, :cond_1

    move v2, v3

    .line 2588
    :cond_1
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public updateNoteListView(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V
    .locals 3

    .line 4133
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->m_receiver:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 4134
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->m_handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4143
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_itemList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 4144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_itemList:Ljava/util/ArrayList;

    goto :goto_0

    .line 4146
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4148
    :goto_0
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->updateNoteListViewSub(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V

    .line 4150
    new-instance v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$35;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$35;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->m_receiver:Ljava/lang/Runnable;

    .line 4158
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->m_handler:Landroid/os/Handler;

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public updateNoteListViewSub(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V
    .locals 1

    .line 4163
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->cancelThumbTaskAll()V

    .line 4164
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->cancelNickNameTaskAll()V

    .line 4167
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_NoteListMode:Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;

    sget-object v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;->NoteListModeType_Normal:Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;

    if-ne p1, v0, :cond_0

    .line 4168
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->prepareNormalView()V

    goto :goto_0

    .line 4170
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->prepareSimpleView()V

    .line 4172
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->updatePagingButton()V

    .line 4174
    iget-boolean p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->_multiSelectMode:Z

    if-eqz p1, :cond_1

    .line 4175
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->changeMultiselectButtonEnabled()V

    :cond_1
    return-void
.end method

.method updatePagingButton()V
    .locals 6

    .line 1366
    iget v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->m_pageCounter:I

    const/16 v1, 0x8

    const/4 v2, 0x1

    if-le v0, v2, :cond_2

    invoke-static {}, Lcom/metamoji/noteanytime/MainActivity;->isCalendarMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1367
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->m_pagingButton:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1368
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->m_pagingPrev:Landroid/widget/ImageButton;

    iget v4, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->m_nowPage:I

    if-lez v4, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1369
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->m_pagingNext:Landroid/widget/ImageButton;

    iget v4, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->m_nowPage:I

    iget v5, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->m_pageCounter:I

    sub-int/2addr v5, v2

    if-ge v4, v5, :cond_1

    move v1, v3

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1370
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->m_pagingNowPage:Landroid/widget/TextView;

    iget v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->m_nowPage:I

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toUnsignedString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 1372
    :cond_2
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->m_pagingButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
