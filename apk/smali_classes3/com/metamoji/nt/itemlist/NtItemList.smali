.class public abstract Lcom/metamoji/nt/itemlist/NtItemList;
.super Landroidx/fragment/app/Fragment;
.source "NtItemList.java"

# interfaces
.implements Lcom/metamoji/ui/MenuEventListener;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Lcom/metamoji/nt/itemlist/NtItemListAdapter$NtItemListListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/nt/itemlist/NtItemList$Selection;,
        Lcom/metamoji/nt/itemlist/NtItemList$SingleSelectAction;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/widget/FrameLayout;",
        ":",
        "Lcom/metamoji/nt/itemlist/NtItemListScrollView;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/fragment/app/Fragment;",
        "Lcom/metamoji/ui/MenuEventListener;",
        "Landroid/view/GestureDetector$OnGestureListener;",
        "Lcom/metamoji/nt/itemlist/NtItemListAdapter$NtItemListListener;"
    }
.end annotation


# static fields
.field private static final DRAG_ITEM_POSITION_UNSET:I = -0x1

.field private static final ITEM_VIEW_COUNT_UNSET:I = -0x1

.field private static final ITEM_VIEW_LENGTH_UNSET:I = -0x1

.field private static final POSITION_ERROR:I = -0x1

.field private static final POSITION_FIRST_OUTER:I = -0x2

.field private static final POSITION_LAST_OUTER:I = -0x3

.field private static PURGE_THRESHOLD:I = 0x5

.field protected static final THUMBNAIL_SIZE:I = 0x78


# instance fields
.field protected _adapter:Lcom/metamoji/nt/itemlist/NtItemListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/nt/itemlist/NtItemListAdapter<",
            "TU;>;"
        }
    .end annotation
.end field

.field private _detector:Landroid/view/GestureDetector;

.field private _isInMultipleSelectionMode:Z

.field protected _listView:Landroid/widget/LinearLayout;

.field protected _scrollView:Landroid/widget/FrameLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private _selectedCount:I

.field private _selection:Lcom/metamoji/nt/itemlist/NtItemList$Selection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/nt/itemlist/NtItemList<",
            "TT;TU;>.Selection;"
        }
    .end annotation
.end field

.field private m_dragItemPosition:I

.field private m_isDestroyed:Z

.field private m_itemViewLength:I

.field private m_loadedEnd:I

.field private m_loadedStart:I

.field private m_tapPointXY:I

.field private m_timer:Lcom/metamoji/cm/UiTimer;

.field private m_viewItems:I


# direct methods
.method static bridge synthetic -$$Nest$fget_detector(Lcom/metamoji/nt/itemlist/NtItemList;)Landroid/view/GestureDetector;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_detector:Landroid/view/GestureDetector;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetm_dragItemPosition(Lcom/metamoji/nt/itemlist/NtItemList;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/nt/itemlist/NtItemList;->m_dragItemPosition:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputm_dragItemPosition(Lcom/metamoji/nt/itemlist/NtItemList;I)V
    .locals 0

    iput p1, p0, Lcom/metamoji/nt/itemlist/NtItemList;->m_dragItemPosition:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputm_tapPointXY(Lcom/metamoji/nt/itemlist/NtItemList;I)V
    .locals 0

    iput p1, p0, Lcom/metamoji/nt/itemlist/NtItemList;->m_tapPointXY:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mautoScroll(Lcom/metamoji/nt/itemlist/NtItemList;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/nt/itemlist/NtItemList;->autoScroll(IIZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mautoScrollStop(Lcom/metamoji/nt/itemlist/NtItemList;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/nt/itemlist/NtItemList;->autoScrollStop(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mscroll(Lcom/metamoji/nt/itemlist/NtItemList;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/nt/itemlist/NtItemList;->scroll(IZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 44
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 90
    iput-boolean v0, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_isInMultipleSelectionMode:Z

    .line 91
    iput v0, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_selectedCount:I

    const/4 v1, -0x1

    .line 100
    iput v1, p0, Lcom/metamoji/nt/itemlist/NtItemList;->m_loadedStart:I

    .line 101
    iput v0, p0, Lcom/metamoji/nt/itemlist/NtItemList;->m_loadedEnd:I

    .line 102
    iput v1, p0, Lcom/metamoji/nt/itemlist/NtItemList;->m_itemViewLength:I

    .line 103
    iput v1, p0, Lcom/metamoji/nt/itemlist/NtItemList;->m_viewItems:I

    const/4 v2, 0x0

    .line 107
    iput-object v2, p0, Lcom/metamoji/nt/itemlist/NtItemList;->m_timer:Lcom/metamoji/cm/UiTimer;

    .line 108
    iput v0, p0, Lcom/metamoji/nt/itemlist/NtItemList;->m_tapPointXY:I

    .line 109
    iput v1, p0, Lcom/metamoji/nt/itemlist/NtItemList;->m_dragItemPosition:I

    return-void
.end method

.method private declared-synchronized autoScroll(IIZ)V
    .locals 7

    monitor-enter p0

    .line 614
    :try_start_0
    iget v0, p0, Lcom/metamoji/nt/itemlist/NtItemList;->m_tapPointXY:I

    const/4 v1, 0x0

    if-ge v0, p1, :cond_0

    sub-int v0, p1, v0

    .line 615
    div-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    sub-int v2, p2, p1

    if-ge v2, v0, :cond_1

    sub-int/2addr v0, v2

    .line 617
    div-int/lit8 v0, v0, 0x5

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-nez v0, :cond_2

    .line 621
    invoke-direct {p0, p1}, Lcom/metamoji/nt/itemlist/NtItemList;->autoScrollStop(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 622
    monitor-exit p0

    return-void

    .line 628
    :cond_2
    iget-object v2, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_scrollView:Landroid/widget/FrameLayout;

    if-eqz p3, :cond_3

    .line 626
    :try_start_1
    check-cast v2, Lcom/metamoji/nt/itemlist/NtItemListScrollView;

    invoke-interface {v2, v1, v0}, Lcom/metamoji/nt/itemlist/NtItemListScrollView;->smoothScrollBy(II)V

    goto :goto_1

    .line 628
    :cond_3
    check-cast v2, Lcom/metamoji/nt/itemlist/NtItemListScrollView;

    invoke-interface {v2, v0, v1}, Lcom/metamoji/nt/itemlist/NtItemListScrollView;->smoothScrollBy(II)V

    .line 630
    :goto_1
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemList;->m_timer:Lcom/metamoji/cm/UiTimer;

    if-nez v0, :cond_4

    .line 632
    new-instance v1, Lcom/metamoji/cm/UiTimer;

    invoke-direct {v1}, Lcom/metamoji/cm/UiTimer;-><init>()V

    iput-object v1, p0, Lcom/metamoji/nt/itemlist/NtItemList;->m_timer:Lcom/metamoji/cm/UiTimer;

    .line 633
    new-instance v2, Lcom/metamoji/nt/itemlist/NtItemList$8;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/metamoji/nt/itemlist/NtItemList$8;-><init>(Lcom/metamoji/nt/itemlist/NtItemList;IIZ)V

    const-wide/16 v3, 0x10

    const-wide/16 v5, 0x10

    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/cm/UiTimer;->schedule(Ljava/lang/Runnable;JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 645
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private autoScrollStop(I)V
    .locals 1

    .line 650
    iput p1, p0, Lcom/metamoji/nt/itemlist/NtItemList;->m_tapPointXY:I

    .line 651
    iget-object p1, p0, Lcom/metamoji/nt/itemlist/NtItemList;->m_timer:Lcom/metamoji/cm/UiTimer;

    if-nez p1, :cond_0

    return-void

    .line 653
    :cond_0
    monitor-enter p1

    .line 654
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemList;->m_timer:Lcom/metamoji/cm/UiTimer;

    invoke-virtual {v0}, Lcom/metamoji/cm/UiTimer;->cancel()V

    const/4 v0, 0x0

    .line 655
    iput-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemList;->m_timer:Lcom/metamoji/cm/UiTimer;

    .line 656
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private clearListView()V
    .locals 3

    .line 232
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_listView:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    .line 234
    :cond_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 237
    iget-object v2, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_listView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;

    .line 238
    invoke-virtual {v2}, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->destroy()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 240
    :cond_1
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/itemlist/NtItemList$2;

    invoke-direct {v1, p0}, Lcom/metamoji/nt/itemlist/NtItemList$2;-><init>(Lcom/metamoji/nt/itemlist/NtItemList;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private dpToPx(I)I
    .locals 2

    .line 588
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtItemList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    int-to-float p1, p1

    .line 589
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method private isAllowEdit()Z
    .locals 1

    .line 662
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->isBusy()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private loadThumbnailAsync(II)V
    .locals 2

    .line 1260
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/itemlist/NtItemList$12;

    invoke-direct {v1, p0, p1, p2}, Lcom/metamoji/nt/itemlist/NtItemList$12;-><init>(Lcom/metamoji/nt/itemlist/NtItemList;II)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->requestRunOnBackground(Ljava/lang/Runnable;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method private purgeThumbnailAsync(II)V
    .locals 2

    .line 1234
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/itemlist/NtItemList$11;

    invoke-direct {v1, p0, p1, p2}, Lcom/metamoji/nt/itemlist/NtItemList$11;-><init>(Lcom/metamoji/nt/itemlist/NtItemList;II)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->requestRunOnBackground(Ljava/lang/Runnable;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method private pxToDp(I)I
    .locals 2

    .line 595
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtItemList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 596
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    int-to-float p1, p1

    .line 597
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    div-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private scroll(IZ)V
    .locals 3

    .line 488
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtItemList;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 490
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/nt/itemlist/NtItemList;->m_isDestroyed:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 491
    :cond_1
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    .line 495
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/itemlist/NtItemList;->getViewAt(I)Lcom/metamoji/nt/itemlist/NtItemListItemContainer;

    move-result-object v1

    if-nez v1, :cond_2

    :goto_0
    return-void

    .line 497
    :cond_2
    invoke-virtual {v1}, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->isPurged()Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez p2, :cond_3

    const/4 p2, 0x0

    .line 501
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/nt/itemlist/NtItemList;->loadThumbnail(IZ)V

    .line 504
    :cond_3
    new-instance p2, Lcom/metamoji/nt/itemlist/NtItemList$6;

    invoke-direct {p2, p0, p1}, Lcom/metamoji/nt/itemlist/NtItemList$6;-><init>(Lcom/metamoji/nt/itemlist/NtItemList;I)V

    const-wide/16 v1, 0x64

    const/4 p1, 0x0

    invoke-virtual {v0, p2, v1, v2, p1}, Lcom/metamoji/cm/CmTaskManager;->requestRunOnBackground(Ljava/lang/Runnable;JLcom/metamoji/cm/CmTaskManager$IOnCompleted;)Ljava/util/concurrent/ScheduledFuture;

    return-void

    .line 515
    :cond_4
    new-instance p2, Lcom/metamoji/nt/itemlist/NtItemList$7;

    invoke-direct {p2, p0, v0, p1}, Lcom/metamoji/nt/itemlist/NtItemList$7;-><init>(Lcom/metamoji/nt/itemlist/NtItemList;Lcom/metamoji/cm/CmTaskManager;I)V

    invoke-virtual {v0, p2}, Lcom/metamoji/cm/CmTaskManager;->requestRunOnBackground(Ljava/lang/Runnable;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method private settingItemViewLengthAndViewItems(Z)V
    .locals 6

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    .line 1084
    iput v0, p0, Lcom/metamoji/nt/itemlist/NtItemList;->m_itemViewLength:I

    .line 1086
    :cond_0
    iget p1, p0, Lcom/metamoji/nt/itemlist/NtItemList;->m_itemViewLength:I

    if-eq p1, v0, :cond_1

    return-void

    .line 1088
    :cond_1
    iget-object p1, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_scrollView:Landroid/widget/FrameLayout;

    check-cast p1, Lcom/metamoji/nt/itemlist/NtItemListScrollView;

    invoke-interface {p1}, Lcom/metamoji/nt/itemlist/NtItemListScrollView;->isVertical()Z

    move-result p1

    .line 1089
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtItemList;->getCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_5

    .line 1094
    invoke-virtual {p0, v3}, Lcom/metamoji/nt/itemlist/NtItemList;->getViewAt(I)Lcom/metamoji/nt/itemlist/NtItemListItemContainer;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 1095
    invoke-virtual {v4}, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->isPurged()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_3

    .line 1096
    invoke-virtual {v4}, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->getHeight()I

    move-result v1

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->getWidth()I

    move-result v1

    :goto_1
    iput v1, p0, Lcom/metamoji/nt/itemlist/NtItemList;->m_itemViewLength:I

    if-nez v1, :cond_5

    .line 1099
    iput v0, p0, Lcom/metamoji/nt/itemlist/NtItemList;->m_itemViewLength:I

    goto :goto_3

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1103
    :cond_5
    :goto_3
    iget v1, p0, Lcom/metamoji/nt/itemlist/NtItemList;->m_itemViewLength:I

    if-ne v1, v0, :cond_6

    .line 1105
    invoke-direct {p0, v2, v2}, Lcom/metamoji/nt/itemlist/NtItemList;->loadThumbnailAsync(II)V

    return-void

    .line 1109
    :cond_6
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_scrollView:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_7

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p1

    goto :goto_4

    :cond_7
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    .line 1110
    :goto_4
    iget v0, p0, Lcom/metamoji/nt/itemlist/NtItemList;->m_itemViewLength:I

    div-int/2addr p1, v0

    int-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    iput p1, p0, Lcom/metamoji/nt/itemlist/NtItemList;->m_viewItems:I

    return-void
.end method

.method private showContextMenu(Landroid/view/View;I)V
    .locals 1

    .line 667
    invoke-direct {p0}, Lcom/metamoji/nt/itemlist/NtItemList;->isAllowEdit()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 672
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 673
    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 676
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/nt/itemlist/NtItemList;->getContextMenus(Landroid/view/View;I)Ljava/util/ArrayList;

    move-result-object p1

    .line 677
    invoke-static {p1, p0, v0}, Lcom/metamoji/nt/NtEditorWindowController;->ShowContextMenu(Ljava/util/ArrayList;Lcom/metamoji/ui/MenuEventListener;Landroid/graphics/Rect;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected checkAllItem()V
    .locals 4

    .line 467
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtItemList;->getCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 469
    invoke-virtual {p0, v1}, Lcom/metamoji/nt/itemlist/NtItemList;->getViewAt(I)Lcom/metamoji/nt/itemlist/NtItemListItemContainer;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    .line 470
    invoke-virtual {v2, v3}, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->setChecked(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 472
    :cond_1
    iput v0, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_selectedCount:I

    return-void
.end method

.method public destroy()V
    .locals 4

    const/4 v0, 0x1

    .line 183
    iput-boolean v0, p0, Lcom/metamoji/nt/itemlist/NtItemList;->m_isDestroyed:Z

    .line 185
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_listView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 186
    invoke-direct {p0}, Lcom/metamoji/nt/itemlist/NtItemList;->clearListView()V

    .line 187
    iput-object v1, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_listView:Landroid/widget/LinearLayout;

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_adapter:Lcom/metamoji/nt/itemlist/NtItemListAdapter;

    if-eqz v0, :cond_1

    .line 191
    invoke-virtual {v0}, Lcom/metamoji/nt/itemlist/NtItemListAdapter;->removeItemListener()V

    .line 192
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_adapter:Lcom/metamoji/nt/itemlist/NtItemListAdapter;

    invoke-virtual {v0}, Lcom/metamoji/nt/itemlist/NtItemListAdapter;->destroy()V

    .line 193
    iput-object v1, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_adapter:Lcom/metamoji/nt/itemlist/NtItemListAdapter;

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_detector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_2

    .line 197
    iput-object v1, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_detector:Landroid/view/GestureDetector;

    .line 200
    :cond_2
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_scrollView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_3

    .line 201
    check-cast v0, Lcom/metamoji/nt/itemlist/NtItemListScrollView;

    invoke-interface {v0, v1}, Lcom/metamoji/nt/itemlist/NtItemListScrollView;->setNtItemListListener(Lcom/metamoji/nt/itemlist/NtItemListAdapter$NtItemListListener;)V

    .line 202
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_scrollView:Landroid/widget/FrameLayout;

    check-cast v0, Lcom/metamoji/nt/itemlist/NtItemListScrollView;

    invoke-interface {v0}, Lcom/metamoji/nt/itemlist/NtItemListScrollView;->destroy()V

    .line 203
    iput-object v1, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_scrollView:Landroid/widget/FrameLayout;

    .line 207
    :cond_3
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_selection:Lcom/metamoji/nt/itemlist/NtItemList$Selection;

    if-eqz v0, :cond_4

    .line 208
    invoke-virtual {v0}, Lcom/metamoji/nt/itemlist/NtItemList$Selection;->destroy()V

    .line 209
    iput-object v1, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_selection:Lcom/metamoji/nt/itemlist/NtItemList$Selection;

    :cond_4
    const/4 v0, 0x0

    .line 211
    iput-boolean v0, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_isInMultipleSelectionMode:Z

    .line 212
    iput v0, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_selectedCount:I

    const/4 v2, -0x1

    .line 215
    iput v2, p0, Lcom/metamoji/nt/itemlist/NtItemList;->m_loadedStart:I

    .line 216
    iput v0, p0, Lcom/metamoji/nt/itemlist/NtItemList;->m_loadedEnd:I

    .line 217
    iput v2, p0, Lcom/metamoji/nt/itemlist/NtItemList;->m_itemViewLength:I

    .line 218
    iput v2, p0, Lcom/metamoji/nt/itemlist/NtItemList;->m_viewItems:I

    .line 221
    iget-object v3, p0, Lcom/metamoji/nt/itemlist/NtItemList;->m_timer:Lcom/metamoji/cm/UiTimer;

    if-eqz v3, :cond_5

    .line 222
    invoke-direct {p0, v2}, Lcom/metamoji/nt/itemlist/NtItemList;->autoScrollStop(I)V

    .line 223
    iput-object v1, p0, Lcom/metamoji/nt/itemlist/NtItemList;->m_timer:Lcom/metamoji/cm/UiTimer;

    .line 225
    :cond_5
    iput v0, p0, Lcom/metamoji/nt/itemlist/NtItemList;->m_tapPointXY:I

    .line 226
    iput v2, p0, Lcom/metamoji/nt/itemlist/NtItemList;->m_dragItemPosition:I

    return-void
.end method

.method protected abstract getAdapter(Lcom/metamoji/nt/NtNoteController;)Lcom/metamoji/nt/itemlist/NtItemListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/nt/NtNoteController;",
            ")",
            "Lcom/metamoji/nt/itemlist/NtItemListAdapter<",
            "TU;>;"
        }
    .end annotation
.end method

.method protected abstract getContextMenus(Landroid/view/View;I)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "I)",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ui/UiMenuItem;",
            ">;"
        }
    .end annotation
.end method

.method public getCount()I
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_listView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getItemAt(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TU;"
        }
    .end annotation

    .line 344
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_adapter:Lcom/metamoji/nt/itemlist/NtItemListAdapter;

    invoke-virtual {v0, p1}, Lcom/metamoji/nt/itemlist/NtItemListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getSelectedIndex()I
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_selection:Lcom/metamoji/nt/itemlist/NtItemList$Selection;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/metamoji/nt/itemlist/NtItemList$Selection;->index:I

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getSelectedItemIndexes()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 683
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 684
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtItemList;->getCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 686
    invoke-virtual {p0, v2}, Lcom/metamoji/nt/itemlist/NtItemList;->getViewAt(I)Lcom/metamoji/nt/itemlist/NtItemListItemContainer;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 687
    invoke-virtual {v3}, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 688
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method protected getSelectionCount()I
    .locals 1

    .line 253
    iget v0, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_selectedCount:I

    return v0
.end method

.method protected getSelectionPosition()I
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_selection:Lcom/metamoji/nt/itemlist/NtItemList$Selection;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/metamoji/nt/itemlist/NtItemList$Selection;->index:I

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method protected getSingleSelectAction()Lcom/metamoji/nt/itemlist/NtItemList$SingleSelectAction;
    .locals 1

    .line 379
    new-instance v0, Lcom/metamoji/nt/itemlist/NtItemList$5;

    invoke-direct {v0, p0}, Lcom/metamoji/nt/itemlist/NtItemList$5;-><init>(Lcom/metamoji/nt/itemlist/NtItemList;)V

    return-object v0
.end method

.method public getViewAt(I)Lcom/metamoji/nt/itemlist/NtItemListItemContainer;
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_listView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 337
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getViewByPosition(I)Landroid/view/View;
    .locals 2

    .line 421
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_listView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 422
    :cond_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-gt v0, p1, :cond_1

    return-object v1

    .line 423
    :cond_1
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_listView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public handleMenuBarStateChanged(I)V
    .locals 4

    .line 545
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_scrollView:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    goto :goto_0

    .line 548
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtItemList;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 552
    :cond_1
    iget-object v1, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_scrollView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v1, :cond_2

    :goto_0
    return-void

    .line 558
    :cond_2
    iget-object v2, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_scrollView:Landroid/widget/FrameLayout;

    check-cast v2, Lcom/metamoji/nt/itemlist/NtItemListScrollView;

    invoke-interface {v2}, Lcom/metamoji/nt/itemlist/NtItemListScrollView;->isVertical()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 561
    sget v2, Lcom/metamoji/noteanytime/R$id;->nt_itemlist_commandpanel:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 562
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 563
    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_1

    :cond_3
    const/16 v0, 0x22

    .line 565
    invoke-direct {p0, v0}, Lcom/metamoji/nt/itemlist/NtItemList;->dpToPx(I)I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 568
    :goto_1
    iput p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_2

    .line 579
    :cond_4
    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 580
    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 582
    :goto_2
    iget-object p1, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_scrollView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected initializeList(Lcom/metamoji/nt/NtNoteController;)V
    .locals 4

    .line 116
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtItemList;->destroy()V

    const/4 v0, 0x0

    .line 118
    iput-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_scrollView:Landroid/widget/FrameLayout;

    .line 119
    iput-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_listView:Landroid/widget/LinearLayout;

    .line 121
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtItemList;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/metamoji/noteanytime/R$id;->nt_itemlist_horizontal_scrollview:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 122
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtItemList;->getView()Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/metamoji/noteanytime/R$id;->nt_itemlist_vertical_scrollview:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    .line 124
    iput-object v1, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_scrollView:Landroid/widget/FrameLayout;

    goto :goto_0

    .line 126
    :cond_0
    iput-object v2, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_scrollView:Landroid/widget/FrameLayout;

    .line 128
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtItemList;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/metamoji/noteanytime/R$id;->nt_itemlist_listview:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_listView:Landroid/widget/LinearLayout;

    .line 129
    new-instance v1, Landroid/animation/LayoutTransition;

    invoke-direct {v1}, Landroid/animation/LayoutTransition;-><init>()V

    const-wide/16 v2, 0x64

    .line 131
    invoke-virtual {v1, v2, v3}, Landroid/animation/LayoutTransition;->setDuration(J)V

    const/4 v2, 0x2

    .line 132
    invoke-virtual {v1, v2}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    const/4 v2, 0x3

    .line 133
    invoke-virtual {v1, v2}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 135
    iget-object v2, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_listView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 139
    iget-object v1, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_listView:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 140
    iget-object v1, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_listView:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/metamoji/nt/itemlist/NtItemList$1;

    invoke-direct {v3, p0}, Lcom/metamoji/nt/itemlist/NtItemList$1;-><init>(Lcom/metamoji/nt/itemlist/NtItemList;)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 150
    iget-object v1, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_listView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLongClickable(Z)V

    .line 152
    new-instance v1, Landroid/view/GestureDetector;

    iget-object v3, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_listView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_detector:Landroid/view/GestureDetector;

    const/4 v1, 0x0

    .line 154
    iput-boolean v1, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_isInMultipleSelectionMode:Z

    .line 155
    iput v1, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_selectedCount:I

    .line 156
    iput-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_selection:Lcom/metamoji/nt/itemlist/NtItemList$Selection;

    .line 158
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/itemlist/NtItemList;->getAdapter(Lcom/metamoji/nt/NtNoteController;)Lcom/metamoji/nt/itemlist/NtItemListAdapter;

    move-result-object p1

    .line 159
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/itemlist/NtItemList;->setAdapter(Lcom/metamoji/nt/itemlist/NtItemListAdapter;)V

    const/4 p1, -0x1

    .line 161
    iput p1, p0, Lcom/metamoji/nt/itemlist/NtItemList;->m_itemViewLength:I

    .line 162
    iput p1, p0, Lcom/metamoji/nt/itemlist/NtItemList;->m_viewItems:I

    .line 163
    iget-object p1, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_scrollView:Landroid/widget/FrameLayout;

    check-cast p1, Lcom/metamoji/nt/itemlist/NtItemListScrollView;

    invoke-interface {p1, p0}, Lcom/metamoji/nt/itemlist/NtItemListScrollView;->setNtItemListListener(Lcom/metamoji/nt/itemlist/NtItemListAdapter$NtItemListListener;)V

    .line 166
    iput-boolean v1, p0, Lcom/metamoji/nt/itemlist/NtItemList;->m_isDestroyed:Z

    .line 168
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtItemList;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 170
    invoke-virtual {p0, v2}, Lcom/metamoji/nt/itemlist/NtItemList;->onHiddenChanged(Z)V

    :cond_1
    return-void
.end method

.method protected isItemInScreen(I)Z
    .locals 1

    .line 535
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/itemlist/NtItemList;->getViewByPosition(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 537
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_scrollView:Landroid/widget/FrameLayout;

    check-cast v0, Lcom/metamoji/nt/itemlist/NtItemListScrollView;

    invoke-interface {v0, p1}, Lcom/metamoji/nt/itemlist/NtItemListScrollView;->isViewInScreen(Landroid/view/View;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isMultiSelectMode()Z
    .locals 1

    .line 695
    iget-boolean v0, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_isInMultipleSelectionMode:Z

    return v0
.end method

.method protected abstract isShowContextMenuOnSelectedItemShortTap()Z
.end method

.method public itemAdded(I)Z
    .locals 2

    .line 998
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_adapter:Lcom/metamoji/nt/itemlist/NtItemListAdapter;

    iget-object v1, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_listView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/nt/itemlist/NtItemListAdapter;->getItemView(ILandroid/view/ViewGroup;)Lcom/metamoji/nt/itemlist/NtItemListItemContainer;

    move-result-object p1

    .line 999
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_adapter:Lcom/metamoji/nt/itemlist/NtItemListAdapter;

    invoke-virtual {v0, p1}, Lcom/metamoji/nt/itemlist/NtItemListAdapter;->toItemLoaded(Lcom/metamoji/nt/itemlist/NtItemListItemContainer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1000
    invoke-virtual {p1}, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->initialize()V

    .line 1001
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_listView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public itemAddedAll(I)Z
    .locals 4

    .line 1010
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_adapter:Lcom/metamoji/nt/itemlist/NtItemListAdapter;

    invoke-virtual {v0}, Lcom/metamoji/nt/itemlist/NtItemListAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    if-ge p1, v0, :cond_0

    .line 1014
    iget-object v2, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_adapter:Lcom/metamoji/nt/itemlist/NtItemListAdapter;

    iget-object v3, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_listView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1, v3}, Lcom/metamoji/nt/itemlist/NtItemListAdapter;->getItemView(ILandroid/view/ViewGroup;)Lcom/metamoji/nt/itemlist/NtItemListItemContainer;

    move-result-object v2

    .line 1015
    iget-object v3, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_adapter:Lcom/metamoji/nt/itemlist/NtItemListAdapter;

    invoke-virtual {v3, v2}, Lcom/metamoji/nt/itemlist/NtItemListAdapter;->toItemLoaded(Lcom/metamoji/nt/itemlist/NtItemListItemContainer;)Z

    move-result v3

    and-int/2addr v1, v3

    .line 1016
    invoke-virtual {v2}, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->initialize()V

    .line 1017
    iget-object v3, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_listView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public itemInserted(I)Z
    .locals 3

    .line 1025
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_adapter:Lcom/metamoji/nt/itemlist/NtItemListAdapter;

    iget-object v1, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_listView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/nt/itemlist/NtItemListAdapter;->getItemView(ILandroid/view/ViewGroup;)Lcom/metamoji/nt/itemlist/NtItemListItemContainer;

    move-result-object v0

    .line 1026
    iget-object v1, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_adapter:Lcom/metamoji/nt/itemlist/NtItemListAdapter;

    invoke-virtual {v1, v0}, Lcom/metamoji/nt/itemlist/NtItemListAdapter;->toItemLoaded(Lcom/metamoji/nt/itemlist/NtItemListItemContainer;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 1027
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->initialize()V

    .line 1028
    iget-object v1, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_listView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    const/4 p1, -0x1

    .line 1030
    invoke-virtual {p0, v2, p1}, Lcom/metamoji/nt/itemlist/NtItemList;->updateLabel(II)V

    const/4 p1, 0x1

    return p1
.end method

.method public itemMoved(II)Z
    .locals 2

    .line 1051
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_listView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1054
    iget-object v1, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_listView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 1055
    iget-object v1, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_listView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    if-ge p1, p2, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    if-ge p1, p2, :cond_1

    move p1, p2

    :cond_1
    const/4 p2, 0x1

    add-int/2addr p1, p2

    .line 1062
    invoke-virtual {p0, v0, p1}, Lcom/metamoji/nt/itemlist/NtItemList;->updateLabel(II)V

    return p2
.end method

.method public itemRemoved(I)Z
    .locals 2

    .line 1037
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_listView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 1041
    iget v0, p0, Lcom/metamoji/nt/itemlist/NtItemList;->m_loadedEnd:I

    const/4 v1, 0x1

    if-ge p1, v0, :cond_0

    sub-int/2addr v0, v1

    .line 1042
    iput v0, p0, Lcom/metamoji/nt/itemlist/NtItemList;->m_loadedEnd:I

    :cond_0
    const/4 p1, 0x0

    const/4 v0, -0x1

    .line 1044
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/nt/itemlist/NtItemList;->updateLabel(II)V

    return v1
.end method

.method protected loadThumbnail(IZ)V
    .locals 4

    .line 1285
    iget-boolean v0, p0, Lcom/metamoji/nt/itemlist/NtItemList;->m_isDestroyed:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1287
    :cond_0
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_adapter:Lcom/metamoji/nt/itemlist/NtItemListAdapter;

    invoke-virtual {v0}, Lcom/metamoji/nt/itemlist/NtItemListAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    .line 1290
    invoke-virtual {p0, v1}, Lcom/metamoji/nt/itemlist/NtItemList;->getViewAt(I)Lcom/metamoji/nt/itemlist/NtItemListItemContainer;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 1292
    invoke-virtual {v2}, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->isPurged()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_4

    .line 1305
    :cond_2
    iget-object p2, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_scrollView:Landroid/widget/FrameLayout;

    check-cast p2, Lcom/metamoji/nt/itemlist/NtItemListScrollView;

    invoke-interface {p2}, Lcom/metamoji/nt/itemlist/NtItemListScrollView;->isVertical()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1306
    invoke-virtual {v2}, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->getHeight()I

    move-result v2

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->getWidth()I

    move-result v2

    .line 1307
    :goto_1
    iget-object v3, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_scrollView:Landroid/widget/FrameLayout;

    if-eqz p2, :cond_4

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p2

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p2

    :goto_2
    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    const/16 v2, 0x78

    .line 1308
    invoke-direct {p0, v2}, Lcom/metamoji/nt/itemlist/NtItemList;->dpToPx(I)I

    move-result v2

    :goto_3
    div-int/2addr p2, v2

    int-to-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p2, v2

    add-int/lit8 p2, p2, 0x1

    add-int/2addr p2, p1

    .line 1311
    sget v2, Lcom/metamoji/nt/itemlist/NtItemList;->PURGE_THRESHOLD:I

    sub-int/2addr p1, v2

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1312
    sget v2, Lcom/metamoji/nt/itemlist/NtItemList;->PURGE_THRESHOLD:I

    add-int/2addr p2, v2

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 1314
    invoke-direct {p0, p1, p2}, Lcom/metamoji/nt/itemlist/NtItemList;->loadThumbnailAsync(II)V

    return-void

    :cond_6
    :goto_4
    if-nez p2, :cond_7

    .line 1293
    invoke-direct {p0, v1, v1}, Lcom/metamoji/nt/itemlist/NtItemList;->loadThumbnailAsync(II)V

    .line 1296
    :cond_7
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p2

    new-instance v0, Lcom/metamoji/nt/itemlist/NtItemList$13;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/nt/itemlist/NtItemList$13;-><init>(Lcom/metamoji/nt/itemlist/NtItemList;I)V

    const-wide/16 v1, 0x64

    const/4 p1, 0x0

    invoke-virtual {p2, v0, v1, v2, p1}, Lcom/metamoji/cm/CmTaskManager;->requestRunOnBackground(Ljava/lang/Runnable;JLcom/metamoji/cm/CmTaskManager$IOnCompleted;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method protected logPurgeInfo()V
    .locals 5

    .line 1320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1321
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unpurged :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/metamoji/nt/itemlist/NtItemList;->m_loadedStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/metamoji/nt/itemlist/NtItemList;->m_loadedEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1322
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "scroll   :"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_scrollView:Landroid/widget/FrameLayout;

    check-cast v3, Lcom/metamoji/nt/itemlist/NtItemListScrollView;

    invoke-interface {v3}, Lcom/metamoji/nt/itemlist/NtItemListScrollView;->getDistance()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1323
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "viewItems:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/metamoji/nt/itemlist/NtItemList;->m_viewItems:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1324
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "itemLen  :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/metamoji/nt/itemlist/NtItemList;->m_itemViewLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/metamoji/nt/itemlist/NtItemList;->m_itemViewLength:I

    invoke-direct {p0, v2}, Lcom/metamoji/nt/itemlist/NtItemList;->pxToDp(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "dp)\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1326
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtItemList;->getCount()I

    move-result v1

    .line 1327
    const-string v2, "now loaded:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 1329
    invoke-virtual {p0, v2}, Lcom/metamoji/nt/itemlist/NtItemList;->getViewAt(I)Lcom/metamoji/nt/itemlist/NtItemListItemContainer;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1330
    invoke-virtual {v3}, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->isPurged()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 1331
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1333
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtItemList;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1334
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method protected abstract move(II)V
.end method

.method public onDestroy()V
    .locals 0

    .line 177
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 178
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtItemList;->destroy()V

    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onHiddenChanged(Z)V
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 280
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtItemList;->getSelectedIndex()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    .line 285
    invoke-direct {p0, v0}, Lcom/metamoji/nt/itemlist/NtItemList;->settingItemViewLengthAndViewItems(Z)V

    .line 288
    iget-object v1, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_scrollView:Landroid/widget/FrameLayout;

    check-cast v1, Lcom/metamoji/nt/itemlist/NtItemListScrollView;

    invoke-interface {v1}, Lcom/metamoji/nt/itemlist/NtItemListScrollView;->getDistance()I

    move-result v1

    .line 289
    iget v2, p0, Lcom/metamoji/nt/itemlist/NtItemList;->m_itemViewLength:I

    div-int/2addr v1, v2

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 290
    invoke-virtual {p0, v1, v0}, Lcom/metamoji/nt/itemlist/NtItemList;->loadThumbnail(IZ)V

    .line 293
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    .line 294
    new-instance v1, Lcom/metamoji/nt/itemlist/NtItemList$3;

    invoke-direct {v1, p0, v0, p1}, Lcom/metamoji/nt/itemlist/NtItemList$3;-><init>(Lcom/metamoji/nt/itemlist/NtItemList;Lcom/metamoji/cm/CmTaskManager;I)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->requestRunOnBackground(Ljava/lang/Runnable;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 5

    .line 772
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_listView:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    goto :goto_0

    .line 773
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/nt/itemlist/NtItemList;->pointToPosition(II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    const/4 v1, -0x2

    if-eq v0, v1, :cond_3

    const/4 v1, -0x3

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 778
    :cond_1
    iget-object v1, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_listView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 781
    invoke-direct {p0, v1, v0}, Lcom/metamoji/nt/itemlist/NtItemList;->showContextMenu(Landroid/view/View;I)V

    .line 783
    iget-boolean v2, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_isInMultipleSelectionMode:Z

    if-eqz v2, :cond_2

    goto :goto_0

    .line 787
    :cond_2
    sget v2, Lcom/metamoji/noteanytime/R$id;->nt_pagelist_item_thumbnail:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 788
    new-instance v3, Lcom/metamoji/nt/itemlist/NtItemList$9;

    invoke-direct {v3, p0, v2, p1}, Lcom/metamoji/nt/itemlist/NtItemList$9;-><init>(Lcom/metamoji/nt/itemlist/NtItemList;Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 821
    const-string p1, "dummy"

    invoke-static {p1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    .line 823
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_listView:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v1, p1, v3, v2, v4}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 827
    iget-object p1, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_listView:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/metamoji/nt/itemlist/NtItemList$10;

    invoke-direct {v2, p0, v0, v1}, Lcom/metamoji/nt/itemlist/NtItemList$10;-><init>(Lcom/metamoji/nt/itemlist/NtItemList;ILandroid/view/View;)V

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    :catch_0
    :cond_3
    :goto_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onScrollViewScrollChanged(IIII)V
    .locals 5

    .line 1116
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_scrollView:Landroid/widget/FrameLayout;

    check-cast v0, Lcom/metamoji/nt/itemlist/NtItemListScrollView;

    invoke-interface {v0}, Lcom/metamoji/nt/itemlist/NtItemListScrollView;->isVertical()Z

    move-result v0

    if-eqz v0, :cond_0

    move p1, p2

    :cond_0
    if-eqz v0, :cond_1

    move p3, p4

    :cond_1
    if-ne p1, p3, :cond_2

    goto/16 :goto_4

    .line 1121
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtItemList;->getCount()I

    move-result p2

    if-gtz p2, :cond_3

    goto/16 :goto_4

    :cond_3
    const/4 p4, 0x0

    .line 1125
    invoke-direct {p0, p4}, Lcom/metamoji/nt/itemlist/NtItemList;->settingItemViewLengthAndViewItems(Z)V

    .line 1130
    iget v0, p0, Lcom/metamoji/nt/itemlist/NtItemList;->m_itemViewLength:I

    div-int v0, p1, v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 1131
    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1132
    iget v1, p0, Lcom/metamoji/nt/itemlist/NtItemList;->m_viewItems:I

    add-int/2addr v1, v0

    add-int/lit8 v2, p2, -0x1

    .line 1133
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1136
    iget v3, p0, Lcom/metamoji/nt/itemlist/NtItemList;->m_loadedStart:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_7

    move v3, v0

    :goto_0
    if-ltz v3, :cond_5

    .line 1139
    invoke-virtual {p0, v3}, Lcom/metamoji/nt/itemlist/NtItemList;->getViewAt(I)Lcom/metamoji/nt/itemlist/NtItemListItemContainer;

    move-result-object v4

    .line 1140
    iput v3, p0, Lcom/metamoji/nt/itemlist/NtItemList;->m_loadedStart:I

    if-eqz v4, :cond_4

    .line 1141
    invoke-virtual {v4}, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->isPurged()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_5
    :goto_1
    move v3, v0

    :goto_2
    if-ge v3, p2, :cond_7

    .line 1144
    invoke-virtual {p0, v3}, Lcom/metamoji/nt/itemlist/NtItemList;->getViewAt(I)Lcom/metamoji/nt/itemlist/NtItemListItemContainer;

    move-result-object v4

    .line 1145
    iput v3, p0, Lcom/metamoji/nt/itemlist/NtItemList;->m_loadedEnd:I

    if-eqz v4, :cond_6

    .line 1146
    invoke-virtual {v4}, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->isPurged()Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1150
    :cond_7
    :goto_3
    sget v3, Lcom/metamoji/nt/itemlist/NtItemList;->PURGE_THRESHOLD:I

    if-ge p3, p1, :cond_9

    sub-int/2addr v0, v3

    .line 1157
    iget p1, p0, Lcom/metamoji/nt/itemlist/NtItemList;->m_loadedStart:I

    sub-int p3, v0, v3

    if-ge p1, p3, :cond_8

    add-int/lit8 p3, v0, -0x1

    .line 1162
    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-static {p4, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    if-eq p1, p3, :cond_8

    .line 1165
    invoke-direct {p0, p1, p3}, Lcom/metamoji/nt/itemlist/NtItemList;->purgeThumbnailAsync(II)V

    add-int/lit8 v0, p3, 0x1

    .line 1168
    iput v0, p0, Lcom/metamoji/nt/itemlist/NtItemList;->m_loadedStart:I

    .line 1173
    :cond_8
    iget p1, p0, Lcom/metamoji/nt/itemlist/NtItemList;->m_loadedEnd:I

    add-int/2addr v1, v3

    if-ge p1, v1, :cond_b

    .line 1179
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/2addr v1, v3

    .line 1181
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p4, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    if-eq p1, p2, :cond_b

    .line 1184
    invoke-direct {p0, p1, p2}, Lcom/metamoji/nt/itemlist/NtItemList;->loadThumbnailAsync(II)V

    .line 1186
    iput p2, p0, Lcom/metamoji/nt/itemlist/NtItemList;->m_loadedEnd:I

    return-void

    :cond_9
    add-int/2addr v1, v3

    add-int p1, v1, v3

    .line 1195
    iget p2, p0, Lcom/metamoji/nt/itemlist/NtItemList;->m_loadedEnd:I

    if-ge p1, p2, :cond_a

    .line 1200
    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    if-eq v1, p1, :cond_a

    .line 1203
    invoke-direct {p0, v1, p1}, Lcom/metamoji/nt/itemlist/NtItemList;->purgeThumbnailAsync(II)V

    add-int/lit8 v1, v1, -0x1

    .line 1206
    iput v1, p0, Lcom/metamoji/nt/itemlist/NtItemList;->m_loadedEnd:I

    :cond_a
    sub-int/2addr v0, v3

    .line 1211
    iget p1, p0, Lcom/metamoji/nt/itemlist/NtItemList;->m_loadedStart:I

    if-ge v0, p1, :cond_b

    sub-int/2addr v0, v3

    .line 1218
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1219
    iget p2, p0, Lcom/metamoji/nt/itemlist/NtItemList;->m_loadedStart:I

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    if-eq p1, p2, :cond_b

    .line 1222
    invoke-direct {p0, p1, p2}, Lcom/metamoji/nt/itemlist/NtItemList;->loadThumbnailAsync(II)V

    .line 1224
    iput p1, p0, Lcom/metamoji/nt/itemlist/NtItemList;->m_loadedStart:I

    :cond_b
    :goto_4
    return-void
.end method

.method public onScrollViewSizeChanged(IIII)V
    .locals 0

    .line 1341
    iget-object p3, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_listView:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p1}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    .line 1342
    iget-object p1, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_listView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    const/4 p1, 0x1

    .line 1345
    invoke-direct {p0, p1}, Lcom/metamoji/nt/itemlist/NtItemList;->settingItemViewLengthAndViewItems(Z)V

    return-void
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 955
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 956
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_JUMP_JUMP:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 958
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v0, v2}, Lcom/metamoji/nt/itemlist/NtItemList;->pointToPosition(II)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_6

    const/4 v2, -0x2

    if-eq v0, v2, :cond_6

    const/4 v2, -0x3

    if-ne v0, v2, :cond_1

    goto :goto_2

    .line 963
    :cond_1
    invoke-virtual {p0, v0}, Lcom/metamoji/nt/itemlist/NtItemList;->getViewAt(I)Lcom/metamoji/nt/itemlist/NtItemListItemContainer;

    move-result-object v2

    if-nez v2, :cond_2

    return v1

    .line 969
    :cond_2
    iget-boolean v3, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_isInMultipleSelectionMode:Z

    if-eqz v3, :cond_4

    .line 970
    invoke-virtual {v2}, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->isChecked()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {v2, p1}, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->setChecked(Z)V

    .line 971
    invoke-virtual {v2}, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->isChecked()Z

    move-result p1

    .line 974
    iget v0, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_selectedCount:I

    if-eqz p1, :cond_3

    add-int/2addr v0, v1

    .line 972
    iput v0, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_selectedCount:I

    goto :goto_0

    :cond_3
    sub-int/2addr v0, v1

    .line 974
    iput v0, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_selectedCount:I

    .line 976
    :goto_0
    invoke-virtual {v2}, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->invalidate()V

    return v1

    .line 979
    :cond_4
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtItemList;->getSingleSelectAction()Lcom/metamoji/nt/itemlist/NtItemList$SingleSelectAction;

    move-result-object v3

    .line 980
    iget-object v4, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_selection:Lcom/metamoji/nt/itemlist/NtItemList$Selection;

    if-eqz v4, :cond_5

    iget v4, v4, Lcom/metamoji/nt/itemlist/NtItemList$Selection;->index:I

    if-ne v4, v0, :cond_5

    invoke-interface {v3, v2, p1}, Lcom/metamoji/nt/itemlist/NtItemList$SingleSelectAction;->isShowContextMenuOnSelectedItemShortTap(Lcom/metamoji/nt/itemlist/NtItemListItemContainer;Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 982
    invoke-direct {p0, v2, v0}, Lcom/metamoji/nt/itemlist/NtItemList;->showContextMenu(Landroid/view/View;I)V

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    .line 985
    invoke-virtual {p0, v0, v4, v4}, Lcom/metamoji/nt/itemlist/NtItemList;->selectItem(IZZ)V

    .line 988
    :goto_1
    invoke-interface {v3, v2, p1}, Lcom/metamoji/nt/itemlist/NtItemList$SingleSelectAction;->performAdditionalAction(Lcom/metamoji/nt/itemlist/NtItemListItemContainer;Landroid/view/MotionEvent;)V

    :cond_6
    :goto_2
    return v1
.end method

.method protected pointToPosition(II)I
    .locals 3

    .line 1357
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_listView:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-lez p1, :cond_4

    if-gtz p2, :cond_1

    goto :goto_1

    .line 1360
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1361
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtItemList;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_3

    .line 1363
    iget-object v2, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_listView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1364
    invoke-virtual {v2, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1365
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    const/4 p1, -0x3

    return p1

    :cond_4
    :goto_1
    const/4 p1, -0x2

    return p1
.end method

.method protected selectItem(IZZ)V
    .locals 3

    .line 440
    iget-object p3, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_selection:Lcom/metamoji/nt/itemlist/NtItemList$Selection;

    .line 441
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/itemlist/NtItemList;->getViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 443
    :cond_0
    new-instance v1, Lcom/metamoji/nt/itemlist/NtItemList$Selection;

    invoke-direct {v1, p0, v0, p1}, Lcom/metamoji/nt/itemlist/NtItemList$Selection;-><init>(Lcom/metamoji/nt/itemlist/NtItemList;Landroid/view/View;I)V

    iput-object v1, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_selection:Lcom/metamoji/nt/itemlist/NtItemList$Selection;

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    .line 444
    iget-object v2, p3, Lcom/metamoji/nt/itemlist/NtItemList$Selection;->view:Landroid/view/View;

    if-eq v2, v0, :cond_1

    iget-object v2, p3, Lcom/metamoji/nt/itemlist/NtItemList$Selection;->view:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 445
    iget-object p3, p3, Lcom/metamoji/nt/itemlist/NtItemList$Selection;->view:Landroid/view/View;

    invoke-virtual {p3, v1}, Landroid/view/View;->setSelected(Z)V

    :cond_1
    const/4 p3, 0x1

    .line 447
    invoke-virtual {v0, p3}, Landroid/view/View;->setSelected(Z)V

    if-eqz p2, :cond_3

    .line 450
    iget p2, p0, Lcom/metamoji/nt/itemlist/NtItemList;->m_viewItems:I

    const/4 p3, -0x1

    if-ne p2, p3, :cond_2

    .line 451
    invoke-direct {p0, p1, v1}, Lcom/metamoji/nt/itemlist/NtItemList;->scroll(IZ)V

    return-void

    .line 458
    :cond_2
    invoke-direct {p0, p1, v1}, Lcom/metamoji/nt/itemlist/NtItemList;->scroll(IZ)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected setAdapter(Lcom/metamoji/nt/itemlist/NtItemListAdapter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/nt/itemlist/NtItemListAdapter<",
            "TU;>;)V"
        }
    .end annotation

    .line 398
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_adapter:Lcom/metamoji/nt/itemlist/NtItemListAdapter;

    if-eqz v0, :cond_0

    .line 399
    invoke-virtual {v0}, Lcom/metamoji/nt/itemlist/NtItemListAdapter;->removeItemListener()V

    .line 400
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_adapter:Lcom/metamoji/nt/itemlist/NtItemListAdapter;

    invoke-virtual {v0}, Lcom/metamoji/nt/itemlist/NtItemListAdapter;->destroy()V

    const/4 v0, 0x0

    .line 401
    iput-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_adapter:Lcom/metamoji/nt/itemlist/NtItemListAdapter;

    .line 404
    :cond_0
    iput-object p1, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_adapter:Lcom/metamoji/nt/itemlist/NtItemListAdapter;

    .line 407
    invoke-direct {p0}, Lcom/metamoji/nt/itemlist/NtItemList;->clearListView()V

    const/4 p1, 0x0

    .line 408
    :goto_0
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_adapter:Lcom/metamoji/nt/itemlist/NtItemListAdapter;

    invoke-virtual {v0}, Lcom/metamoji/nt/itemlist/NtItemListAdapter;->getCount()I

    move-result v0

    .line 415
    iget-object v1, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_adapter:Lcom/metamoji/nt/itemlist/NtItemListAdapter;

    if-ge p1, v0, :cond_1

    .line 409
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_listView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1, v0}, Lcom/metamoji/nt/itemlist/NtItemListAdapter;->getItemView(ILandroid/view/ViewGroup;)Lcom/metamoji/nt/itemlist/NtItemListItemContainer;

    move-result-object v0

    .line 411
    invoke-virtual {v0}, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->initialize()V

    .line 412
    iget-object v1, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_listView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 415
    :cond_1
    invoke-virtual {v1, p0}, Lcom/metamoji/nt/itemlist/NtItemListAdapter;->setItemListener(Lcom/metamoji/nt/itemlist/NtItemListAdapter$NtItemListListener;)V

    return-void
.end method

.method protected setMultiselectMode(ZZ)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 700
    iput-boolean p1, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_isInMultipleSelectionMode:Z

    .line 702
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtItemList;->getCount()I

    move-result p1

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_3

    .line 704
    iget-object v2, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_listView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;

    if-eqz p2, :cond_0

    .line 705
    invoke-virtual {v2, v0}, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->setChecked(Z)V

    .line 706
    :cond_0
    invoke-virtual {v2, v0}, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->setCheckIconVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 709
    :cond_1
    iput-boolean v0, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_isInMultipleSelectionMode:Z

    .line 711
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtItemList;->getCount()I

    move-result p1

    move v1, v0

    :goto_1
    if-ge v1, p1, :cond_3

    .line 713
    iget-object v2, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_listView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;

    if-eqz p2, :cond_2

    .line 714
    invoke-virtual {v2, v0}, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->setChecked(Z)V

    :cond_2
    const/4 v3, 0x4

    .line 715
    invoke-virtual {v2, v3}, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->setCheckIconVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_4

    .line 719
    iput v0, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_selectedCount:I

    :cond_4
    return-void
.end method

.method public setMultiselections(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 728
    iput-boolean v0, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_isInMultipleSelectionMode:Z

    .line 729
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtItemList;->getCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 733
    iget-object v4, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_listView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;

    if-eqz v4, :cond_0

    .line 735
    invoke-virtual {v4, v2}, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->setChecked(Z)V

    .line 736
    invoke-virtual {v4, v2}, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->setCheckIconVisibility(I)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 742
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 743
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gt v1, v4, :cond_3

    goto :goto_1

    .line 744
    :cond_3
    iget-object v4, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_listView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;

    if-eqz v3, :cond_2

    .line 746
    invoke-virtual {v3, v0}, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->setChecked(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 750
    :cond_4
    iput v2, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_selectedCount:I

    return-void
.end method

.method public setViewEnabled(Landroid/view/View;Z)V
    .locals 2

    .line 314
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/itemlist/NtItemList$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/metamoji/nt/itemlist/NtItemList$4;-><init>(Lcom/metamoji/nt/itemlist/NtItemList;Landroid/view/View;Z)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected uncheckAllItem()V
    .locals 4

    .line 477
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtItemList;->getCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 479
    invoke-virtual {p0, v2}, Lcom/metamoji/nt/itemlist/NtItemList;->getViewAt(I)Lcom/metamoji/nt/itemlist/NtItemListItemContainer;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 480
    invoke-virtual {v3, v1}, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->setChecked(Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 482
    :cond_1
    iput v1, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_selectedCount:I

    return-void
.end method

.method protected updateLabel(II)V
    .locals 2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 1071
    :cond_0
    iget-object p2, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_adapter:Lcom/metamoji/nt/itemlist/NtItemListAdapter;

    invoke-virtual {p2}, Lcom/metamoji/nt/itemlist/NtItemListAdapter;->getCount()I

    move-result p2

    :goto_0
    if-ge p1, p2, :cond_2

    .line 1073
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_listView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;

    .line 1074
    invoke-virtual {v0, p1}, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->setPosition(I)V

    .line 1075
    invoke-virtual {v0}, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->isPurged()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 1076
    :cond_1
    iget-object v1, p0, Lcom/metamoji/nt/itemlist/NtItemList;->_adapter:Lcom/metamoji/nt/itemlist/NtItemListAdapter;

    invoke-virtual {v1, v0}, Lcom/metamoji/nt/itemlist/NtItemListAdapter;->updateLabel(Lcom/metamoji/nt/itemlist/NtItemListItemContainer;)V

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public updateListMargin()V
    .locals 0

    return-void
.end method

.method public abstract updateTabLabel(Lcom/metamoji/nt/NtNoteController;Landroid/widget/TextView;)V
.end method
