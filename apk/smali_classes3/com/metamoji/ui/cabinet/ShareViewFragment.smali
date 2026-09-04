.class public Lcom/metamoji/ui/cabinet/ShareViewFragment;
.super Landroidx/fragment/app/Fragment;
.source "ShareViewFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/metamoji/ui/MenuEventListener;
.implements Lcom/metamoji/nt/ICommandProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/cabinet/ShareViewFragment$Item;,
        Lcom/metamoji/ui/cabinet/ShareViewFragment$LowMemoryListener;,
        Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewCategory;,
        Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewType;,
        Lcom/metamoji/ui/cabinet/ShareViewFragment$Header;,
        Lcom/metamoji/ui/cabinet/ShareViewFragment$SimpleBlankViewHolder;,
        Lcom/metamoji/ui/cabinet/ShareViewFragment$SimpleHeaderViewHolder;,
        Lcom/metamoji/ui/cabinet/ShareViewFragment$SimpleDateViewHolder;,
        Lcom/metamoji/ui/cabinet/ShareViewFragment$SimpleDocumentViewHolder;,
        Lcom/metamoji/ui/cabinet/ShareViewFragment$SimpleViewHolder;,
        Lcom/metamoji/ui/cabinet/ShareViewFragment$ViewHolder;,
        Lcom/metamoji/ui/cabinet/ShareViewFragment$NormalDocumentViewHolder;,
        Lcom/metamoji/ui/cabinet/ShareViewFragment$NormalDateViewHolder;,
        Lcom/metamoji/ui/cabinet/ShareViewFragment$NormalBlankViewHolder;,
        Lcom/metamoji/ui/cabinet/ShareViewFragment$NormalViewHolder;,
        Lcom/metamoji/ui/cabinet/ShareViewFragment$DayTarget;,
        Lcom/metamoji/ui/cabinet/ShareViewFragment$IDriveDocumentEditorOpener;
    }
.end annotation


# static fields
.field private static _isEditing:Z = false

.field private static s_searchCondOwnerNameArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static s_searchCondRoomTitle:Ljava/lang/String;

.field private static static_startSyncFlg:Z


# instance fields
.field private _ShareViewCategory:Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewCategory;

.field private _ShareViewType:Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewType;

.field private _activity:Landroidx/fragment/app/FragmentActivity;

.field private _categoryGrp:Lcom/metamoji/ui/common/UiRadioGroup;

.field private _currentItem:Lcom/metamoji/ui/cabinet/ShareViewFragment$Item;

.field private _currentView:Landroid/view/View;

.field private _headerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ui/cabinet/ShareViewFragment$Header;",
            ">;"
        }
    .end annotation
.end field

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

.field private _itemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ui/cabinet/ShareViewFragment$Item;",
            ">;"
        }
    .end annotation
.end field

.field _lowMemoryListener:Lcom/metamoji/ui/cabinet/ShareViewFragment$LowMemoryListener;

.field private _normalModeBtn:Landroid/widget/ImageButton;

.field private _normalView:Lcom/metamoji/ui/cabinet/ShareViewNormalGridView;

.field private _normalViewAdapter:Lcom/metamoji/ui/cabinet/ShareViewAdapter;

.field private _normalViewOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private _normalViewOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private _normalViewOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private _normalViewOnTouchListner:Landroid/view/View$OnTouchListener;

.field private _pullToRefreshView:Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;

.field private _refreshIndicatorAnimation:Landroid/view/animation/Animation;

.field private _refreshIndicatorImageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private _refreshIndicatorView:Landroid/widget/ImageView;

.field private _res:Landroid/content/res/Resources;

.field private _roomArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private _rootView:Landroid/view/View;

.field private _searchModeBtn:Landroid/widget/ImageButton;

.field private _searchedRoomArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private _simpleModeBtn:Landroid/widget/ImageButton;

.field private _simpleView:Lcom/metamoji/ui/cabinet/ShareViewSimpleGridView;

.field private _simpleViewAdapter:Lcom/metamoji/ui/cabinet/ShareViewAdapter;

.field private _simpleViewOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private _simpleViewOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private _simpleViewOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private _simpleViewOnTouchListener:Landroid/view/View$OnTouchListener;

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

.field private _userDefaults:Lcom/metamoji/nt/NtUserDefaults;

.field private _waitingView:Landroid/view/View;

.field private m_ownerNamePibotArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private thisViewWidth:I


# direct methods
.method static bridge synthetic -$$Nest$fget_ShareViewCategory(Lcom/metamoji/ui/cabinet/ShareViewFragment;)Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewCategory;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_ShareViewCategory:Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewCategory;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_ShareViewType(Lcom/metamoji/ui/cabinet/ShareViewFragment;)Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewType;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_ShareViewType:Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewType;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_activity(Lcom/metamoji/ui/cabinet/ShareViewFragment;)Landroidx/fragment/app/FragmentActivity;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_activity:Landroidx/fragment/app/FragmentActivity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_categoryGrp(Lcom/metamoji/ui/cabinet/ShareViewFragment;)Lcom/metamoji/ui/common/UiRadioGroup;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_categoryGrp:Lcom/metamoji/ui/common/UiRadioGroup;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_currentItem(Lcom/metamoji/ui/cabinet/ShareViewFragment;)Lcom/metamoji/ui/cabinet/ShareViewFragment$Item;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_currentItem:Lcom/metamoji/ui/cabinet/ShareViewFragment$Item;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_currentView(Lcom/metamoji/ui/cabinet/ShareViewFragment;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_currentView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_normalModeBtn(Lcom/metamoji/ui/cabinet/ShareViewFragment;)Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_normalModeBtn:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_normalView(Lcom/metamoji/ui/cabinet/ShareViewFragment;)Lcom/metamoji/ui/cabinet/ShareViewNormalGridView;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_normalView:Lcom/metamoji/ui/cabinet/ShareViewNormalGridView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_pullToRefreshView(Lcom/metamoji/ui/cabinet/ShareViewFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_pullToRefreshView:Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_refreshIndicatorAnimation(Lcom/metamoji/ui/cabinet/ShareViewFragment;)Landroid/view/animation/Animation;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_refreshIndicatorAnimation:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_refreshIndicatorImageList(Lcom/metamoji/ui/cabinet/ShareViewFragment;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_refreshIndicatorImageList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_refreshIndicatorView(Lcom/metamoji/ui/cabinet/ShareViewFragment;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_refreshIndicatorView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_simpleModeBtn(Lcom/metamoji/ui/cabinet/ShareViewFragment;)Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_simpleModeBtn:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_simpleView(Lcom/metamoji/ui/cabinet/ShareViewFragment;)Lcom/metamoji/ui/cabinet/ShareViewSimpleGridView;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_simpleView:Lcom/metamoji/ui/cabinet/ShareViewSimpleGridView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_userDefaults(Lcom/metamoji/ui/cabinet/ShareViewFragment;)Lcom/metamoji/nt/NtUserDefaults;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_userDefaults:Lcom/metamoji/nt/NtUserDefaults;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_waitingView(Lcom/metamoji/ui/cabinet/ShareViewFragment;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_waitingView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fput_ShareViewCategory(Lcom/metamoji/ui/cabinet/ShareViewFragment;Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewCategory;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_ShareViewCategory:Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewCategory;

    return-void
.end method

.method static bridge synthetic -$$Nest$fput_ShareViewType(Lcom/metamoji/ui/cabinet/ShareViewFragment;Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewType;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_ShareViewType:Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewType;

    return-void
.end method

.method static bridge synthetic -$$Nest$fput_currentItem(Lcom/metamoji/ui/cabinet/ShareViewFragment;Lcom/metamoji/ui/cabinet/ShareViewFragment$Item;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_currentItem:Lcom/metamoji/ui/cabinet/ShareViewFragment$Item;

    return-void
.end method

.method static bridge synthetic -$$Nest$fput_currentView(Lcom/metamoji/ui/cabinet/ShareViewFragment;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_currentView:Landroid/view/View;

    return-void
.end method

.method static bridge synthetic -$$Nest$fput_userDefaults(Lcom/metamoji/ui/cabinet/ShareViewFragment;Lcom/metamoji/nt/NtUserDefaults;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_userDefaults:Lcom/metamoji/nt/NtUserDefaults;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputthisViewWidth(Lcom/metamoji/ui/cabinet/ShareViewFragment;I)V
    .locals 0

    iput p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->thisViewWidth:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetItem(Lcom/metamoji/ui/cabinet/ShareViewFragment;I)Lcom/metamoji/ui/cabinet/ShareViewFragment$Item;
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->getItem(I)Lcom/metamoji/ui/cabinet/ShareViewFragment$Item;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$monItemClickCore(Lcom/metamoji/ui/cabinet/ShareViewFragment;Lcom/metamoji/ui/cabinet/ShareViewFragment$Item;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->onItemClickCore(Lcom/metamoji/ui/cabinet/ShareViewFragment$Item;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetNormalViewNumColumns(Lcom/metamoji/ui/cabinet/ShareViewFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->setNormalViewNumColumns()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowItemContextMenu(Lcom/metamoji/ui/cabinet/ShareViewFragment;Landroid/view/View;Lcom/metamoji/ui/cabinet/ShareViewFragment$Item;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->showItemContextMenu(Landroid/view/View;Lcom/metamoji/ui/cabinet/ShareViewFragment$Item;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSearchBtnStatus(Lcom/metamoji/ui/cabinet/ShareViewFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->updateSearchBtnStatus()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateShareList(Lcom/metamoji/ui/cabinet/ShareViewFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->updateShareList()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfput_isEditing(Z)V
    .locals 0

    sput-boolean p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_isEditing:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputstatic_startSyncFlg(Z)V
    .locals 0

    sput-boolean p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->static_startSyncFlg:Z

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 104
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 374
    iput-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_currentView:Landroid/view/View;

    .line 375
    iput-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_currentItem:Lcom/metamoji/ui/cabinet/ShareViewFragment$Item;

    .line 376
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_thumbTaskMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1280
    new-instance v1, Lcom/metamoji/ui/cabinet/ShareViewFragment$11;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/cabinet/ShareViewFragment$11;-><init>(Lcom/metamoji/ui/cabinet/ShareViewFragment;)V

    iput-object v1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_normalViewOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1299
    new-instance v1, Lcom/metamoji/ui/cabinet/ShareViewFragment$12;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/cabinet/ShareViewFragment$12;-><init>(Lcom/metamoji/ui/cabinet/ShareViewFragment;)V

    iput-object v1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_normalViewOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 1315
    new-instance v1, Lcom/metamoji/ui/cabinet/ShareViewFragment$13;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/cabinet/ShareViewFragment$13;-><init>(Lcom/metamoji/ui/cabinet/ShareViewFragment;)V

    iput-object v1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_normalViewOnTouchListner:Landroid/view/View$OnTouchListener;

    .line 1722
    new-instance v1, Lcom/metamoji/ui/cabinet/ShareViewFragment$14;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/cabinet/ShareViewFragment$14;-><init>(Lcom/metamoji/ui/cabinet/ShareViewFragment;)V

    iput-object v1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_simpleViewOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1740
    new-instance v1, Lcom/metamoji/ui/cabinet/ShareViewFragment$15;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/cabinet/ShareViewFragment$15;-><init>(Lcom/metamoji/ui/cabinet/ShareViewFragment;)V

    iput-object v1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_simpleViewOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 1755
    new-instance v1, Lcom/metamoji/ui/cabinet/ShareViewFragment$16;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/cabinet/ShareViewFragment$16;-><init>(Lcom/metamoji/ui/cabinet/ShareViewFragment;)V

    iput-object v1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_simpleViewOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 1794
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_imageCache:Ljava/util/WeakHashMap;

    .line 1828
    iput-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_lowMemoryListener:Lcom/metamoji/ui/cabinet/ShareViewFragment$LowMemoryListener;

    return-void
.end method

.method private beginShareViewWaiting()V
    .locals 2

    .line 2165
    :try_start_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ui/cabinet/ShareViewFragment$17;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/cabinet/ShareViewFragment$17;-><init>(Lcom/metamoji/ui/cabinet/ShareViewFragment;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2183
    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return-void
.end method

.method private cancelThumbTaskAll()V
    .locals 3

    .line 2686
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_thumbTaskMap:Ljava/util/concurrent/ConcurrentHashMap;

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

    .line 2687
    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    .line 2689
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_thumbTaskMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public static clearSearchCondition()V
    .locals 1

    const/4 v0, 0x0

    .line 2049
    sput-object v0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->s_searchCondRoomTitle:Ljava/lang/String;

    .line 2050
    sput-object v0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->s_searchCondOwnerNameArray:Ljava/util/List;

    return-void
.end method

.method private static editNote(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const/4 p0, 0x0

    .line 2318
    invoke-static {p2, p3, p0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->navigateToDrive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private endShareViewWaiting()V
    .locals 2

    .line 2193
    :try_start_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ui/cabinet/ShareViewFragment$18;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/cabinet/ShareViewFragment$18;-><init>(Lcom/metamoji/ui/cabinet/ShareViewFragment;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2210
    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return-void
.end method

.method private getHeader(I)Lcom/metamoji/ui/cabinet/ShareViewFragment$Header;
    .locals 1

    if-ltz p1, :cond_1

    .line 746
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_headerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    goto :goto_0

    .line 750
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_headerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/cabinet/ShareViewFragment$Header;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getItem(I)Lcom/metamoji/ui/cabinet/ShareViewFragment$Item;
    .locals 1

    if-ltz p1, :cond_1

    .line 738
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    goto :goto_0

    .line 742
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/cabinet/ShareViewFragment$Item;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private static getMimeType(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 1399
    instance-of v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmDocumentMetaData;

    if-eqz v0, :cond_0

    .line 1400
    check-cast p0, Lcom/metamoji/dm/impl/metadata/entity/DmDocumentMetaData;

    invoke-virtual {p0}, Lcom/metamoji/dm/impl/metadata/entity/DmDocumentMetaData;->getMimeType()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1401
    :cond_0
    instance-of v0, p0, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    if-eqz v0, :cond_1

    .line 1402
    check-cast p0, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    invoke-virtual {p0}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->getContentsMimeType()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1404
    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method private getNoteCountString(I)Ljava/lang/String;
    .locals 2

    .line 1409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_res:Landroid/content/res/Resources;

    sget v1, Lcom/metamoji/noteanytime/R$string;->Cabinet_Note:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getThumbnailDrawable(Ljava/lang/String;Lcom/metamoji/cm/Size;)Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1909
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 1912
    :cond_0
    iget v1, p2, Lcom/metamoji/cm/Size;->width:I

    iget p2, p2, Lcom/metamoji/cm/Size;->height:I

    invoke-static {p1, v1, p2}, Lcom/metamoji/cm/ImageUtils;->createBitmapFromFile2(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    .line 1917
    :cond_1
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p2, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1919
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    :cond_2
    :goto_0
    return-object v0
.end method

.method private getThumbnailSize(Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewType;)Lcom/metamoji/cm/Size;
    .locals 1

    .line 1928
    new-instance v0, Lcom/metamoji/cm/Size;

    invoke-direct {v0}, Lcom/metamoji/cm/Size;-><init>()V

    .line 1929
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewType;->ordinal()I

    .line 1932
    sget p1, Lcom/metamoji/ui/cabinet/CabinetDef;->NORMAL_THUMBNAIL_WIDTH_EXCLUDE_SHADOW:I

    iput p1, v0, Lcom/metamoji/cm/Size;->width:I

    .line 1933
    sget p1, Lcom/metamoji/ui/cabinet/CabinetDef;->NORMAL_THUMBNAIL_HIGHT_EXCLUDE_SHADOW:I

    iput p1, v0, Lcom/metamoji/cm/Size;->height:I

    return-object v0
.end method

.method private static getTitleString(Lcom/metamoji/ui/cabinet/ShareViewFragment$Item;)Ljava/lang/String;
    .locals 1

    .line 1348
    invoke-static {p0}, Lcom/metamoji/ui/cabinet/ShareViewFragment$Item;->-$$Nest$fget_type(Lcom/metamoji/ui/cabinet/ShareViewFragment$Item;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1349
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/ShareViewFragment$Item;->getTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1351
    :cond_0
    invoke-static {p0}, Lcom/metamoji/ui/cabinet/ShareViewFragment$Item;->-$$Nest$fget_metadata(Lcom/metamoji/ui/cabinet/ShareViewFragment$Item;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private hideView()V
    .locals 2

    .line 1429
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_normalView:Lcom/metamoji/ui/cabinet/ShareViewNormalGridView;

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    .line 1430
    invoke-virtual {v0, v1}, Lcom/metamoji/ui/cabinet/ShareViewNormalGridView;->setVisibility(I)V

    .line 1432
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_simpleView:Lcom/metamoji/ui/cabinet/ShareViewSimpleGridView;

    if-eqz v0, :cond_1

    .line 1433
    invoke-virtual {v0, v1}, Lcom/metamoji/ui/cabinet/ShareViewSimpleGridView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private makeShareList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ui/cabinet/ShareViewFragment$Item;",
            ">;"
        }
    .end annotation

    .line 757
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_searchedRoomArray:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 761
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method private onItemClickCore(Lcom/metamoji/ui/cabinet/ShareViewFragment$Item;)V
    .locals 0

    return-void
.end method

.method private prepareCategoryChangeButton()V
    .locals 2

    .line 950
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_rootView:Landroid/view/View;

    sget v1, Lcom/metamoji/noteanytime/R$id;->group_category:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiRadioGroup;

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_categoryGrp:Lcom/metamoji/ui/common/UiRadioGroup;

    .line 951
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_ShareViewCategory:Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewCategory;

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewCategory;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiRadioGroup;->setCurrentButtonIndex(I)V

    .line 953
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_categoryGrp:Lcom/metamoji/ui/common/UiRadioGroup;

    new-instance v1, Lcom/metamoji/ui/cabinet/ShareViewFragment$8;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/cabinet/ShareViewFragment$8;-><init>(Lcom/metamoji/ui/cabinet/ShareViewFragment;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiRadioGroup;->setOnClickListener(Lcom/metamoji/ui/common/UiRadioButton$OnClickedListener;)V

    return-void
.end method

.method private prepareModeChangeButton()V
    .locals 3

    .line 973
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_rootView:Landroid/view/View;

    sget v1, Lcom/metamoji/noteanytime/R$id;->cabinet_normal_mode_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_normalModeBtn:Landroid/widget/ImageButton;

    .line 974
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_rootView:Landroid/view/View;

    sget v1, Lcom/metamoji/noteanytime/R$id;->cabinet_simple_mode_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_simpleModeBtn:Landroid/widget/ImageButton;

    .line 976
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_ShareViewType:Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewType;

    sget-object v1, Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewType;->ShareViewType_Normal:Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewType;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 977
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_normalModeBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto :goto_0

    .line 979
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_simpleModeBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 982
    :goto_0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_normalModeBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/metamoji/ui/cabinet/ShareViewFragment$9;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/cabinet/ShareViewFragment$9;-><init>(Lcom/metamoji/ui/cabinet/ShareViewFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1001
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_simpleModeBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/metamoji/ui/cabinet/ShareViewFragment$10;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/cabinet/ShareViewFragment$10;-><init>(Lcom/metamoji/ui/cabinet/ShareViewFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1021
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_rootView:Landroid/view/View;

    sget v1, Lcom/metamoji/noteanytime/R$id;->shareview_search_mode_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_searchModeBtn:Landroid/widget/ImageButton;

    .line 1022
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->updateSearchBtnStatus()V

    return-void
.end method

.method private refreshSyncStatus()V
    .locals 3

    .line 715
    :try_start_0
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v0

    .line 716
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 719
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_activity:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0}, Lcom/metamoji/noteanytime/MainActivity;->refreshSyncButton(Landroidx/fragment/app/FragmentActivity;)V

    return-void

    .line 723
    :cond_0
    iget v0, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userType:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 728
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_activity:Landroidx/fragment/app/FragmentActivity;

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    .line 724
    :try_start_1
    invoke-static {v1}, Lcom/metamoji/noteanytime/MainActivity;->refreshSyncButton(Landroidx/fragment/app/FragmentActivity;)V

    return-void

    .line 728
    :cond_1
    invoke-static {v1}, Lcom/metamoji/noteanytime/MainActivity;->refreshSyncButton(Landroidx/fragment/app/FragmentActivity;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void
.end method

.method private setNormalViewNumColumns()V
    .locals 2

    .line 599
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_normalView:Lcom/metamoji/ui/cabinet/ShareViewNormalGridView;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/ShareViewNormalGridView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->thisViewWidth:I

    .line 600
    sget v1, Lcom/metamoji/ui/cabinet/CabinetDef;->NORMAL_SELECTOR_WIDTH:I

    div-int/2addr v0, v1

    .line 601
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_normalView:Lcom/metamoji/ui/cabinet/ShareViewNormalGridView;

    invoke-virtual {v1, v0}, Lcom/metamoji/ui/cabinet/ShareViewNormalGridView;->setNumColumns(I)V

    return-void
.end method

.method private setNormalViewVisibility()V
    .locals 3

    .line 1413
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_ShareViewType:Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewType;

    sget-object v1, Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewType;->ShareViewType_Normal:Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewType;

    .line 1416
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_normalView:Lcom/metamoji/ui/cabinet/ShareViewNormalGridView;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 1414
    invoke-virtual {v2, v0}, Lcom/metamoji/ui/cabinet/ShareViewNormalGridView;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v0, 0x4

    .line 1416
    invoke-virtual {v2, v0}, Lcom/metamoji/ui/cabinet/ShareViewNormalGridView;->setVisibility(I)V

    return-void
.end method

.method private setSimpleViewVisibility()V
    .locals 3

    .line 1421
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_ShareViewType:Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewType;

    sget-object v1, Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewType;->ShareViewType_Simple:Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewType;

    .line 1424
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_simpleView:Lcom/metamoji/ui/cabinet/ShareViewSimpleGridView;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 1422
    invoke-virtual {v2, v0}, Lcom/metamoji/ui/cabinet/ShareViewSimpleGridView;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v0, 0x4

    .line 1424
    invoke-virtual {v2, v0}, Lcom/metamoji/ui/cabinet/ShareViewSimpleGridView;->setVisibility(I)V

    return-void
.end method

.method private showItemContextMenu(Landroid/view/View;Lcom/metamoji/ui/cabinet/ShareViewFragment$Item;)V
    .locals 4

    .line 2463
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2464
    invoke-static {p2}, Lcom/metamoji/ui/cabinet/ShareViewFragment$Item;->-$$Nest$fget_type(Lcom/metamoji/ui/cabinet/ShareViewFragment$Item;)I

    move-result v1

    if-nez v1, :cond_3

    .line 2466
    invoke-virtual {p2}, Lcom/metamoji/ui/cabinet/ShareViewFragment$Item;->isDisplayPriority()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2467
    new-instance v1, Lcom/metamoji/ui/UiMenuItem;

    sget-object v2, Lcom/metamoji/ui/PopupCommand;->SHAREVIEW_PRIVATEFLAG_OFF:Lcom/metamoji/ui/PopupCommand;

    sget v3, Lcom/metamoji/noteanytime/R$string;->ShareView_Menu_PrivateFlag_Off:I

    invoke-direct {v1, v2, p2, v3}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2470
    :cond_0
    new-instance v1, Lcom/metamoji/ui/UiMenuItem;

    sget-object v2, Lcom/metamoji/ui/PopupCommand;->SHAREVIEW_PRIVATEFLAG_ON:Lcom/metamoji/ui/PopupCommand;

    sget v3, Lcom/metamoji/noteanytime/R$string;->ShareView_Menu_PrivateFlag_On:I

    invoke-direct {v1, v2, p2, v3}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2473
    :goto_0
    new-instance v1, Lcom/metamoji/ui/UiMenuItem;

    sget-object v2, Lcom/metamoji/ui/PopupCommand;->SHAREVIEW_ROOMINFO:Lcom/metamoji/ui/PopupCommand;

    sget v3, Lcom/metamoji/noteanytime/R$string;->ShareView_Menu_RoomInfo:I

    invoke-direct {v1, v2, p2, v3}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2475
    invoke-virtual {p2}, Lcom/metamoji/ui/cabinet/ShareViewFragment$Item;->isOwner()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2476
    invoke-virtual {p2}, Lcom/metamoji/ui/cabinet/ShareViewFragment$Item;->isReadOnly()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2477
    new-instance v1, Lcom/metamoji/ui/UiMenuItem;

    sget-object v2, Lcom/metamoji/ui/PopupCommand;->SHAREVIEW_ENABLE_WRITEACCESS:Lcom/metamoji/ui/PopupCommand;

    sget v3, Lcom/metamoji/noteanytime/R$string;->ShareMenu_Enable_WriteAccess:I

    invoke-direct {v1, v2, p2, v3}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2480
    :cond_1
    new-instance v1, Lcom/metamoji/ui/UiMenuItem;

    sget-object v2, Lcom/metamoji/ui/PopupCommand;->SHAREVIEW_DISABLE_WRITEACCESS:Lcom/metamoji/ui/PopupCommand;

    sget v3, Lcom/metamoji/noteanytime/R$string;->ShareMenu_Disable_WriteAccess:I

    invoke-direct {v1, v2, p2, v3}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2484
    :cond_2
    :goto_1
    new-instance v1, Lcom/metamoji/ui/UiMenuItem;

    sget-object v2, Lcom/metamoji/ui/PopupCommand;->SHAREVIEW_SHARENOTE_PATH:Lcom/metamoji/ui/PopupCommand;

    sget v3, Lcom/metamoji/noteanytime/R$string;->ShareView_Menu_ShareNote_Path:I

    invoke-direct {v1, v2, p2, v3}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2487
    :cond_3
    new-instance p2, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {p2, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2488
    invoke-virtual {p1, p2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 2489
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_activity:Landroidx/fragment/app/FragmentActivity;

    instance-of v1, p1, Lcom/metamoji/ui/cabinet/CabinetActivityInterface;

    if-eqz v1, :cond_4

    .line 2490
    check-cast p1, Lcom/metamoji/ui/cabinet/CabinetActivityInterface;

    invoke-interface {p1, v0, p0, p2}, Lcom/metamoji/ui/cabinet/CabinetActivityInterface;->ShowContextMenu(Ljava/util/ArrayList;Lcom/metamoji/ui/MenuEventListener;Landroid/graphics/Rect;)V

    :cond_4
    return-void
.end method

.method protected static startEditorActivity(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    .line 2431
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ui/cabinet/ShareViewFragment$20;

    move-object v2, p0

    move-object v6, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/ui/cabinet/ShareViewFragment$20;-><init>(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    return-void
.end method

.method protected static tryUserLogin(Ljava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2408
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    .line 2409
    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->revokeWaitScreenNow()V

    .line 2411
    invoke-static {}, Lcom/metamoji/nt/cabinet/user/CabinetUserManager;->getInstance()Lcom/metamoji/nt/cabinet/user/CabinetUserManager;

    move-result-object v0

    .line 2412
    new-instance v1, Lcom/metamoji/ui/cabinet/ShareViewFragment$19;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/cabinet/ShareViewFragment$19;-><init>(Ljava/lang/Runnable;)V

    sget-object p0, Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;->WithLoginDialogIfRegisterd:Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;

    invoke-virtual {v0, v1, p0}, Lcom/metamoji/nt/cabinet/user/CabinetUserManager;->UpdateUserInfoCacheAsync(Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;)V

    return-void
.end method

.method private updateButtons()V
    .locals 0

    return-void
.end method

.method private updateSearchBtnStatus()V
    .locals 2

    .line 2067
    sget-object v0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->s_searchCondRoomTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->s_searchCondOwnerNameArray:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 2068
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 2069
    :goto_0
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_searchModeBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setSelected(Z)V

    return-void
.end method

.method private updateShareList()V
    .locals 0

    return-void
.end method


# virtual methods
.method public beginWaiting()V
    .locals 2

    .line 2693
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2696
    sget v1, Lcom/metamoji/noteanytime/R$id;->note_list_root:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x3f19999a    # 0.6f

    .line 2698
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public clearShareView()V
    .locals 2

    .line 1941
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_roomArray:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1942
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1943
    iput-object v1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_roomArray:Ljava/util/List;

    .line 1945
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_searchedRoomArray:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1946
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1947
    iput-object v1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_searchedRoomArray:Ljava/util/List;

    .line 1949
    :cond_1
    iput-object v1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->m_ownerNamePibotArray:Ljava/util/List;

    return-void
.end method

.method public endWaiting()V
    .locals 2

    .line 2710
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2712
    sget v1, Lcom/metamoji/noteanytime/R$id;->note_list_root:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 2714
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public isShareViewWaiting()Z
    .locals 1

    .line 2216
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_waitingView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 389
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 708
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 p1, 0x1

    .line 709
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->update(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .line 396
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_rootView:Landroid/view/View;

    if-eqz v0, :cond_0

    return-object v0

    .line 399
    :cond_0
    invoke-super {p0, p3}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 401
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    iput-object p3, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_res:Landroid/content/res/Resources;

    const/4 p3, 0x1

    .line 404
    invoke-virtual {p0, p3}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->setRetainInstance(Z)V

    .line 406
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object p3

    iput-object p3, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_userDefaults:Lcom/metamoji/nt/NtUserDefaults;

    .line 417
    invoke-static {}, Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewCategory;->values()[Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewCategory;

    move-result-object p3

    .line 418
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_userDefaults:Lcom/metamoji/nt/NtUserDefaults;

    sget-object v1, Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewCategory;->ShareViewCategory_OpenDate:Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewCategory;

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewCategory;->ordinal()I

    move-result v1

    const-string v2, "MMJNtCabinetShareViewMode"

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/nt/NtUserDefaults;->getIntValue(Ljava/lang/String;I)I

    move-result v0

    .line 419
    aget-object p3, p3, v0

    .line 420
    iput-object p3, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_ShareViewCategory:Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewCategory;

    .line 423
    invoke-static {}, Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewType;->values()[Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewType;

    move-result-object p3

    .line 424
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_userDefaults:Lcom/metamoji/nt/NtUserDefaults;

    sget-object v1, Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewType;->ShareViewType_Normal:Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewType;

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewType;->ordinal()I

    move-result v1

    const-string v2, "MMJNtCabinetShareViewType"

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/nt/NtUserDefaults;->getIntValue(Ljava/lang/String;I)I

    move-result v0

    .line 425
    aget-object p3, p3, v0

    .line 426
    iput-object p3, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_ShareViewType:Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewType;

    .line 428
    sget p3, Lcom/metamoji/noteanytime/R$layout;->fragment_share_view:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_rootView:Landroid/view/View;

    .line 429
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_activity:Landroidx/fragment/app/FragmentActivity;

    .line 430
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->prepareCategoryChangeButton()V

    .line 431
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->prepareModeChangeButton()V

    .line 433
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_rootView:Landroid/view/View;

    sget p2, Lcom/metamoji/noteanytime/R$id;->cabinet_normal_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/cabinet/ShareViewNormalGridView;

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_normalView:Lcom/metamoji/ui/cabinet/ShareViewNormalGridView;

    .line 434
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/ShareViewNormalGridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 435
    new-instance p2, Lcom/metamoji/ui/cabinet/ShareViewFragment$1;

    invoke-direct {p2, p0}, Lcom/metamoji/ui/cabinet/ShareViewFragment$1;-><init>(Lcom/metamoji/ui/cabinet/ShareViewFragment;)V

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_normalViewOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 441
    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 442
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_normalView:Lcom/metamoji/ui/cabinet/ShareViewNormalGridView;

    iget-object p2, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_normalViewOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p1, p2}, Lcom/metamoji/ui/cabinet/ShareViewNormalGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 443
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_normalView:Lcom/metamoji/ui/cabinet/ShareViewNormalGridView;

    iget-object p2, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_normalViewOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {p1, p2}, Lcom/metamoji/ui/cabinet/ShareViewNormalGridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 444
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_normalView:Lcom/metamoji/ui/cabinet/ShareViewNormalGridView;

    iget-object p2, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_normalViewOnTouchListner:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, p2}, Lcom/metamoji/ui/cabinet/ShareViewNormalGridView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 445
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_normalView:Lcom/metamoji/ui/cabinet/ShareViewNormalGridView;

    new-instance p2, Lcom/metamoji/ui/cabinet/ShareViewFragment$2;

    invoke-direct {p2, p0}, Lcom/metamoji/ui/cabinet/ShareViewFragment$2;-><init>(Lcom/metamoji/ui/cabinet/ShareViewFragment;)V

    invoke-virtual {p1, p2}, Lcom/metamoji/ui/cabinet/ShareViewNormalGridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 471
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_rootView:Landroid/view/View;

    sget p2, Lcom/metamoji/noteanytime/R$id;->cabinet_simple_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/cabinet/ShareViewSimpleGridView;

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_simpleView:Lcom/metamoji/ui/cabinet/ShareViewSimpleGridView;

    .line 472
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/ShareViewSimpleGridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 473
    new-instance p2, Lcom/metamoji/ui/cabinet/ShareViewFragment$3;

    invoke-direct {p2, p0}, Lcom/metamoji/ui/cabinet/ShareViewFragment$3;-><init>(Lcom/metamoji/ui/cabinet/ShareViewFragment;)V

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_simpleViewOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 480
    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 481
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_simpleView:Lcom/metamoji/ui/cabinet/ShareViewSimpleGridView;

    iget-object p2, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_simpleViewOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p1, p2}, Lcom/metamoji/ui/cabinet/ShareViewSimpleGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 482
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_simpleView:Lcom/metamoji/ui/cabinet/ShareViewSimpleGridView;

    iget-object p2, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_simpleViewOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {p1, p2}, Lcom/metamoji/ui/cabinet/ShareViewSimpleGridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 483
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_simpleView:Lcom/metamoji/ui/cabinet/ShareViewSimpleGridView;

    iget-object p2, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_simpleViewOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, p2}, Lcom/metamoji/ui/cabinet/ShareViewSimpleGridView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 484
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_simpleView:Lcom/metamoji/ui/cabinet/ShareViewSimpleGridView;

    new-instance p2, Lcom/metamoji/ui/cabinet/ShareViewFragment$4;

    invoke-direct {p2, p0}, Lcom/metamoji/ui/cabinet/ShareViewFragment$4;-><init>(Lcom/metamoji/ui/cabinet/ShareViewFragment;)V

    invoke-virtual {p1, p2}, Lcom/metamoji/ui/cabinet/ShareViewSimpleGridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 510
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_rootView:Landroid/view/View;

    sget p2, Lcom/metamoji/noteanytime/R$id;->pull_refresh_scrollview:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_pullToRefreshView:Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;

    .line 511
    new-instance p2, Lcom/metamoji/ui/cabinet/ShareViewFragment$5;

    invoke-direct {p2, p0}, Lcom/metamoji/ui/cabinet/ShareViewFragment$5;-><init>(Lcom/metamoji/ui/cabinet/ShareViewFragment;)V

    invoke-virtual {p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V

    .line 529
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_pullToRefreshView:Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;

    new-instance p2, Lcom/metamoji/ui/cabinet/ShareViewFragment$6;

    invoke-direct {p2, p0}, Lcom/metamoji/ui/cabinet/ShareViewFragment$6;-><init>(Lcom/metamoji/ui/cabinet/ShareViewFragment;)V

    invoke-virtual {p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;->setOnPullEventListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnPullEventListener;)V

    .line 557
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_activity:Landroidx/fragment/app/FragmentActivity;

    instance-of p1, p1, Lcom/metamoji/ui/cabinet/ShareViewActivity;

    .line 560
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_rootView:Landroid/view/View;

    sget p2, Lcom/metamoji/noteanytime/R$id;->share_view_waiting:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_waitingView:Landroid/view/View;

    .line 561
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_rootView:Landroid/view/View;

    sget p2, Lcom/metamoji/noteanytime/R$id;->share_view_refresh_image:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_refreshIndicatorView:Landroid/widget/ImageView;

    const/16 p2, 0x8

    .line 562
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 563
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v1, -0x3c4c0000    # -360.0f

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_refreshIndicatorAnimation:Landroid/view/animation/Animation;

    .line 565
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 566
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_refreshIndicatorAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, p1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 567
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_refreshIndicatorAnimation:Landroid/view/animation/Animation;

    const-wide/16 p2, 0x3e8

    invoke-virtual {p1, p2, p3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 568
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_refreshIndicatorAnimation:Landroid/view/animation/Animation;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 570
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_refreshIndicatorImageList:Ljava/util/ArrayList;

    .line 571
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_res:Landroid/content/res/Resources;

    sget p3, Lcom/metamoji/noteanytime/R$drawable;->shareview_update_indicator_0:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 572
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_refreshIndicatorImageList:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_res:Landroid/content/res/Resources;

    sget p3, Lcom/metamoji/noteanytime/R$drawable;->shareview_update_indicator_1:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 573
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_refreshIndicatorImageList:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_res:Landroid/content/res/Resources;

    sget p3, Lcom/metamoji/noteanytime/R$drawable;->shareview_update_indicator_2:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 574
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_refreshIndicatorImageList:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_res:Landroid/content/res/Resources;

    sget p3, Lcom/metamoji/noteanytime/R$drawable;->shareview_update_indicator_3:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 575
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_refreshIndicatorImageList:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_res:Landroid/content/res/Resources;

    sget p3, Lcom/metamoji/noteanytime/R$drawable;->shareview_update_indicator_4:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 576
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_refreshIndicatorImageList:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_res:Landroid/content/res/Resources;

    sget p3, Lcom/metamoji/noteanytime/R$drawable;->shareview_update_indicator_5:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 577
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_refreshIndicatorImageList:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_res:Landroid/content/res/Resources;

    sget p3, Lcom/metamoji/noteanytime/R$drawable;->shareview_update_indicator_6:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 578
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_refreshIndicatorImageList:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_res:Landroid/content/res/Resources;

    sget p3, Lcom/metamoji/noteanytime/R$drawable;->shareview_update_indicator_7:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 579
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_refreshIndicatorImageList:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_res:Landroid/content/res/Resources;

    sget p3, Lcom/metamoji/noteanytime/R$drawable;->shareview_update_indicator_8:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 580
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_refreshIndicatorImageList:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_res:Landroid/content/res/Resources;

    sget p3, Lcom/metamoji/noteanytime/R$drawable;->shareview_update_indicator_9:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 581
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_refreshIndicatorImageList:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_res:Landroid/content/res/Resources;

    sget p3, Lcom/metamoji/noteanytime/R$drawable;->shareview_update_indicator_10:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 582
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_refreshIndicatorImageList:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_res:Landroid/content/res/Resources;

    sget p3, Lcom/metamoji/noteanytime/R$drawable;->shareview_update_indicator_11:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 585
    invoke-static {}, Lcom/metamoji/ui/cabinet/ShareViewObserver;->getInstance()Lcom/metamoji/ui/cabinet/ShareViewObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/metamoji/ui/cabinet/ShareViewObserver;->onCreate(Lcom/metamoji/ui/cabinet/ShareViewFragment;)V

    .line 588
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_lowMemoryListener:Lcom/metamoji/ui/cabinet/ShareViewFragment$LowMemoryListener;

    if-nez p1, :cond_1

    .line 589
    new-instance p1, Lcom/metamoji/ui/cabinet/ShareViewFragment$LowMemoryListener;

    iget-object p2, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_imageCache:Ljava/util/WeakHashMap;

    invoke-direct {p1, p2}, Lcom/metamoji/ui/cabinet/ShareViewFragment$LowMemoryListener;-><init>(Ljava/util/WeakHashMap;)V

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_lowMemoryListener:Lcom/metamoji/ui/cabinet/ShareViewFragment$LowMemoryListener;

    .line 590
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getAppLowMemoryManager()Lcom/metamoji/cm/ICmAppLowMemory;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_lowMemoryListener:Lcom/metamoji/ui/cabinet/ShareViewFragment$LowMemoryListener;

    invoke-interface {p1, p2}, Lcom/metamoji/cm/ICmAppLowMemory;->addLowMemoryEventListener(Lcom/metamoji/cm/ICmAppLowMemory$ILowMemoryListener;)V

    .line 595
    :cond_1
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_rootView:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    .line 703
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 3

    .line 686
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 689
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->cancelThumbTaskAll()V

    .line 692
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_lowMemoryListener:Lcom/metamoji/ui/cabinet/ShareViewFragment$LowMemoryListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 693
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getAppLowMemoryManager()Lcom/metamoji/cm/ICmAppLowMemory;

    move-result-object v0

    iget-object v2, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_lowMemoryListener:Lcom/metamoji/ui/cabinet/ShareViewFragment$LowMemoryListener;

    invoke-interface {v0, v2}, Lcom/metamoji/cm/ICmAppLowMemory;->removeLowMemoryEventListener(Lcom/metamoji/cm/ICmAppLowMemory$ILowMemoryListener;)V

    .line 694
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_lowMemoryListener:Lcom/metamoji/ui/cabinet/ShareViewFragment$LowMemoryListener;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/ShareViewFragment$LowMemoryListener;->dispose()V

    .line 695
    iput-object v1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_lowMemoryListener:Lcom/metamoji/ui/cabinet/ShareViewFragment$LowMemoryListener;

    .line 697
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_imageCache:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 698
    iput-object v1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_rootView:Landroid/view/View;

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

    .line 2273
    invoke-direct {p0, p3}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->getItem(I)Lcom/metamoji/ui/cabinet/ShareViewFragment$Item;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2275
    invoke-direct {p0, p1}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->onItemClickCore(Lcom/metamoji/ui/cabinet/ShareViewFragment$Item;)V

    :cond_0
    return-void
.end method

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

    .line 2450
    invoke-direct {p0, p3}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->getItem(I)Lcom/metamoji/ui/cabinet/ShareViewFragment$Item;

    move-result-object p1

    const/4 p3, 0x0

    if-nez p1, :cond_0

    return p3

    .line 2453
    :cond_0
    invoke-static {p1}, Lcom/metamoji/ui/cabinet/ShareViewFragment$Item;->-$$Nest$fget_type(Lcom/metamoji/ui/cabinet/ShareViewFragment$Item;)I

    move-result p4

    if-nez p4, :cond_1

    .line 2454
    invoke-direct {p0, p2, p1}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->showItemContextMenu(Landroid/view/View;Lcom/metamoji/ui/cabinet/ShareViewFragment$Item;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return p3
.end method

.method public onPause()V
    .locals 2

    .line 663
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 666
    invoke-static {}, Lcom/metamoji/ui/cabinet/ShareViewObserver;->getInstance()Lcom/metamoji/ui/cabinet/ShareViewObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/ShareViewObserver;->onPause()V

    .line 674
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_normalView:Lcom/metamoji/ui/cabinet/ShareViewNormalGridView;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/ShareViewNormalGridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 675
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_normalViewOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 677
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_simpleView:Lcom/metamoji/ui/cabinet/ShareViewSimpleGridView;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/ShareViewSimpleGridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 678
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_simpleViewOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 606
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 610
    invoke-static {}, Lcom/metamoji/ui/cabinet/ShareViewObserver;->getInstance()Lcom/metamoji/ui/cabinet/ShareViewObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/ShareViewObserver;->onResume()V

    .line 615
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_activity:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0}, Lcom/metamoji/noteanytime/MainActivity;->refreshSyncButton(Landroidx/fragment/app/FragmentActivity;)V

    .line 620
    invoke-static {p0}, Lcom/metamoji/noteanytime/MainActivity;->isNeedRemake(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 621
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ui/cabinet/ShareViewFragment$7;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/cabinet/ShareViewFragment$7;-><init>(Lcom/metamoji/ui/cabinet/ShareViewFragment;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 654
    invoke-static {p0}, Lcom/metamoji/noteanytime/MainActivity;->finishRemake(Landroidx/fragment/app/Fragment;)V

    :cond_0
    const/4 v0, 0x0

    .line 657
    sput-boolean v0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_isEditing:Z

    return-void
.end method

.method public onSelect(Landroid/view/View;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 2496
    instance-of p1, p3, Lcom/metamoji/ui/cabinet/ShareViewFragment$Item;

    if-eqz p1, :cond_0

    .line 2497
    check-cast p3, Lcom/metamoji/ui/cabinet/ShareViewFragment$Item;

    .line 2498
    sget-object p1, Lcom/metamoji/ui/cabinet/ShareViewFragment$21;->$SwitchMap$com$metamoji$ui$PopupCommand:[I

    check-cast p2, Lcom/metamoji/ui/PopupCommand;

    invoke-virtual {p2}, Lcom/metamoji/ui/PopupCommand;->ordinal()I

    move-result p2

    aget p1, p1, p2

    :cond_0
    return-void
.end method

.method public performCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
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
    .locals 0

    return-void
.end method

.method public update(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 2259
    invoke-virtual {p0, p1, p2, v0}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->update(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public update(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 2236
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_imageCache:Ljava/util/WeakHashMap;

    if-nez p2, :cond_0

    .line 2235
    invoke-virtual {p1}, Ljava/util/WeakHashMap;->clear()V

    goto :goto_0

    .line 2236
    :cond_0
    invoke-virtual {p1}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 2237
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_imageCache:Ljava/util/WeakHashMap;

    invoke-virtual {p1, p2}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2240
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_activity:Landroidx/fragment/app/FragmentActivity;

    sget p2, Lcom/metamoji/noteanytime/R$id;->CustomMenuView:I

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/CustomMenuView;

    if-eqz p1, :cond_2

    .line 2241
    invoke-virtual {p1}, Lcom/metamoji/ui/CustomMenuView;->isCurrentPopupVisible()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 2242
    invoke-virtual {p1}, Lcom/metamoji/ui/CustomMenuView;->CloseMenu()Z

    .line 2245
    :cond_2
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->updateButtons()V

    if-nez p3, :cond_3

    .line 2247
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;->_roomArray:Ljava/util/List;

    if-eqz p1, :cond_3

    .line 2249
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->updateShareList()V

    return-void

    .line 2253
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->updateShareView()V

    return-void
.end method

.method public update(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 2230
    invoke-virtual {p0, v0, v0, p1}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->update(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public updateShareView()V
    .locals 0

    return-void
.end method
