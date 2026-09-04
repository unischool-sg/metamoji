.class public Lcom/metamoji/forSchool/monitoring/ScMonitorList;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "ScMonitorList.java"

# interfaces
.implements Lcom/metamoji/forSchool/monitoring/ScMonitorScrollView$IScMonitorScrollViewListener;
.implements Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;,
        Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScScaleGestureListener;,
        Lcom/metamoji/forSchool/monitoring/ScMonitorList$PageListViewAdapter;,
        Lcom/metamoji/forSchool/monitoring/ScMonitorList$NumClassNumberComparator;,
        Lcom/metamoji/forSchool/monitoring/ScMonitorList$StrClassNumberComparator;,
        Lcom/metamoji/forSchool/monitoring/ScMonitorList$LoginNameComparator;,
        Lcom/metamoji/forSchool/monitoring/ScMonitorList$LayerNameComparator;,
        Lcom/metamoji/forSchool/monitoring/ScMonitorList$Completion;,
        Lcom/metamoji/forSchool/monitoring/ScMonitorList$ViewHolder;,
        Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScGestureListener;
    }
.end annotation


# static fields
.field private static final AUTOSCROLL_AREA:I = 0x1e

.field private static final DELAYTIME_AUTOSCROLL_VERTICAL:I = 0x14

.field private static final OfflineUserModeType_GRAY:I = 0x1

.field private static final OfflineUserModeType_HIDE:I = 0x0

.field private static final OfflineUserModeType_NORMAL:I = 0x2

.field private static final SCROLL_MODE_DELAY:I = 0x12c

.field private static final SCROLL_SNAP_DELAY:I = 0x3e8

.field private static final ZOOM_REFLECTION_DELAY:I = 0x64


# instance fields
.field LONG_LONG_PRESS_TIME:J

.field private m_autoScrollTimer:Ljava/util/Timer;

.field private m_bInitialized:Z

.field private m_displayMonitorTypeLayout:Landroid/widget/LinearLayout;

.field m_displayMonitorTypeSwitch:Lcom/metamoji/ui/common/UiSwitch;

.field private m_doItNumLabel:Landroid/widget/TextView;

.field private m_dragBitmap:Landroid/graphics/Bitmap;

.field private m_dragMonitorViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/forSchool/monitoring/ScMonitorView;",
            ">;"
        }
    .end annotation
.end field

.field private m_dragView:Landroid/widget/ImageView;

.field private m_dragViewSize:Lcom/metamoji/cm/Size;

.field private m_dragWindowParams:Landroid/view/WindowManager$LayoutParams;

.field private m_dragragThreshold:F

.field private m_globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private m_guidanceLabel:Landroid/widget/TextView;

.field private m_heldMonitorView:Lcom/metamoji/forSchool/monitoring/ScMonitorView;

.field m_heldMonitorViewForLongPress:Lcom/metamoji/forSchool/monitoring/ScMonitorView;

.field private m_heldMonitorViewIndex:I

.field private m_heldMonitorViewRect:Landroid/graphics/RectF;

.field private m_helpNumLabel:Landroid/widget/TextView;

.field private m_hideMonitorViewArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/forSchool/monitoring/ScMonitorView;",
            ">;"
        }
    .end annotation
.end field

.field private m_isPhone:Z

.field private m_itemHeight:D

.field private m_itemWidth:D

.field m_longLongPressHandler:Landroid/os/Handler;

.field m_longLongPressReceiver:Ljava/lang/Runnable;

.field m_longPressX:F

.field m_longPressY:F

.field private m_masterMonitorViewArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/forSchool/monitoring/ScMonitorView;",
            ">;"
        }
    .end annotation
.end field

.field private m_monitorThumbnailBase:Landroid/graphics/Bitmap;

.field private m_monitorViewArrayAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

.field m_monitorViewThumbnailCache:Landroid/graphics/Bitmap;

.field private m_monitors:Lcom/metamoji/forSchool/monitoring/ScMonitorGridView;

.field m_needUpdateFlag:Z

.field private m_notYetNumLabel:Landroid/widget/TextView;

.field private m_offlineUserBtn:Lcom/metamoji/ui/common/UiButton;

.field private m_offlineUserMode:I

.field private m_pageController:Lcom/metamoji/nt/NtPageController;

.field private m_pageLabel:Landroid/widget/TextView;

.field private m_pageListView:Landroidx/recyclerview/widget/RecyclerView;

.field private m_pageListViewAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$PageListViewAdapter;

.field private m_pageNextBtn:Landroid/widget/ImageButton;

.field private m_pagePrevBtn:Landroid/widget/ImageButton;

.field private m_pinchFocusMonitorViewIndex:I

.field private m_pinchStartZoom:D

.field private m_pinchingFlag:Z

.field private m_prevFirstVisiblePosition:I

.field private m_prevLastVisiblePosition:I

.field private m_revalidateExecutor:Ljava/util/concurrent/ExecutorService;

.field private m_revalidateTimer:Ljava/util/Timer;

.field private m_scaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private m_scrollCount:I

.field private m_scrollSnap:Z

.field private m_scrollSnapTimer:Ljava/util/Timer;

.field private m_scrollView:Lcom/metamoji/forSchool/monitoring/ScMonitorScrollView;

.field private m_selectItemsBtn:Lcom/metamoji/ui/common/UiButton;

.field private m_selectedMonitorViewArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/forSchool/monitoring/ScMonitorView;",
            ">;"
        }
    .end annotation
.end field

.field private m_showAllItemsBtn:Lcom/metamoji/ui/common/UiButton;

.field private m_showedMonitoringMaxMsg:Z

.field private m_touchPointInMonitorView:Landroid/graphics/PointF;

.field private m_updateMonitorSizeTimer:Ljava/util/Timer;

.field private m_visibleStudentName:Z

.field private m_visibleStudentNameBtn:Lcom/metamoji/ui/common/UiButton;

.field private m_zoom:D

.field private m_zoomInBtn:Landroid/widget/ImageView;

.field private m_zoomMax:D

.field private m_zoomOutBtn:Landroid/widget/ImageView;

.field monitorDoubleTapped:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetm_dragragThreshold(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)F
    .locals 0

    iget p0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_dragragThreshold:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetm_globalLayoutListener(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetm_heldMonitorView(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)Lcom/metamoji/forSchool/monitoring/ScMonitorView;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_heldMonitorView:Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetm_hideMonitorViewArray(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_hideMonitorViewArray:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetm_isPhone(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_isPhone:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetm_itemHeight(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)D
    .locals 2

    iget-wide v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_itemHeight:D

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetm_itemWidth(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)D
    .locals 2

    iget-wide v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_itemWidth:D

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetm_monitorThumbnailBase(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorThumbnailBase:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetm_monitorViewArrayAdapter(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewArrayAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetm_monitors(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)Lcom/metamoji/forSchool/monitoring/ScMonitorGridView;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitors:Lcom/metamoji/forSchool/monitoring/ScMonitorGridView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetm_pageController(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)Lcom/metamoji/nt/NtPageController;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_pageController:Lcom/metamoji/nt/NtPageController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetm_pageListView(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_pageListView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetm_pageListViewAdapter(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)Lcom/metamoji/forSchool/monitoring/ScMonitorList$PageListViewAdapter;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_pageListViewAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$PageListViewAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetm_pageNextBtn(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_pageNextBtn:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetm_pagePrevBtn(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_pagePrevBtn:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetm_pinchFocusMonitorViewIndex(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_pinchFocusMonitorViewIndex:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetm_scaleGestureDetector(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)Landroid/view/ScaleGestureDetector;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetm_scrollView(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)Lcom/metamoji/forSchool/monitoring/ScMonitorScrollView;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_scrollView:Lcom/metamoji/forSchool/monitoring/ScMonitorScrollView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetm_visibleStudentName(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_visibleStudentName:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetm_zoom(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)D
    .locals 2

    iget-wide v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_zoom:D

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fputm_bInitialized(Lcom/metamoji/forSchool/monitoring/ScMonitorList;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_bInitialized:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputm_visibleStudentName(Lcom/metamoji/forSchool/monitoring/ScMonitorList;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_visibleStudentName:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearSelectedMonitorViews(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->clearSelectedMonitorViews()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcurrentPageChanged(Lcom/metamoji/forSchool/monitoring/ScMonitorList;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->currentPageChanged(ZZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdragCancel(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->dragCancel()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdragEnd(Lcom/metamoji/forSchool/monitoring/ScMonitorList;FF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->dragEnd(FF)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdragMoved(Lcom/metamoji/forSchool/monitoring/ScMonitorList;FF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->dragMoved(FF)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetMonitorViewImageSize(Lcom/metamoji/forSchool/monitoring/ScMonitorList;Z)Lcom/metamoji/cm/Size;
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->getMonitorViewImageSize(Z)Lcom/metamoji/cm/Size;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetSchoolPageType(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)I
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->getSchoolPageType()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mhandleLabelTap(Lcom/metamoji/forSchool/monitoring/ScMonitorList;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->handleLabelTap(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleOfflineUserButtonTap(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->handleOfflineUserButtonTap()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleOfflineUserMenuTapped(Lcom/metamoji/forSchool/monitoring/ScMonitorList;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->handleOfflineUserMenuTapped(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandlePageNextButtonTap(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->handlePageNextButtonTap()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandlePagePrevButtonTap(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->handlePagePrevButtonTap()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSelectItemsButtonTap(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->handleSelectItemsButtonTap()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleShowAllItemsButtonTap(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->handleShowAllItemsButtonTap()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleZoomInButtonTap(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->handleZoomInButtonTap()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleZoomOutButtonTap(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->handleZoomOutButtonTap()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrecalcItemSize(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->recalcItemSize()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrevalidateMonitorViewForScroll(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->revalidateMonitorViewForScroll()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msaveMonitoringStateForList(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->saveMonitoringStateForList()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mscrollPageDown(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->scrollPageDown()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mscrollPageUp(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->scrollPageUp()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mscrollSnap(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->scrollSnap()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateGuidanceLabel(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->updateGuidanceLabel()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateMonitorSize(Lcom/metamoji/forSchool/monitoring/ScMonitorList;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->updateMonitorSize(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateMonitorSizeWithAnimation(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->updateMonitorSizeWithAnimation()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateShowHideBtnVisible(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->updateShowHideBtnVisible()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateStatusNum(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->updateStatusNum()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateUserStatus(Lcom/metamoji/forSchool/monitoring/ScMonitorList;Lcom/metamoji/forSchool/monitoring/ScMonitorView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->updateUserStatus(Lcom/metamoji/forSchool/monitoring/ScMonitorView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 877
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    const-wide/16 v0, 0x3e8

    .line 444
    iput-wide v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->LONG_LONG_PRESS_TIME:J

    .line 448
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_longLongPressHandler:Landroid/os/Handler;

    .line 449
    new-instance v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$1;

    invoke-direct {v0, p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$1;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)V

    iput-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_longLongPressReceiver:Ljava/lang/Runnable;

    const/4 v0, -0x1

    .line 809
    iput v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_prevFirstVisiblePosition:I

    .line 810
    iput v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_prevLastVisiblePosition:I

    const/4 v0, 0x0

    .line 843
    iput-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_heldMonitorView:Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    .line 847
    iput-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_dragBitmap:Landroid/graphics/Bitmap;

    .line 848
    iput-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_dragView:Landroid/widget/ImageView;

    .line 863
    iput-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    const/high16 v1, 0x40a00000    # 5.0f

    .line 866
    iput v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_dragragThreshold:F

    .line 868
    iput-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_revalidateExecutor:Ljava/util/concurrent/ExecutorService;

    .line 869
    iput-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_revalidateTimer:Ljava/util/Timer;

    .line 870
    iput-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorThumbnailBase:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    .line 872
    iput-boolean v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_needUpdateFlag:Z

    .line 874
    iput-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewThumbnailCache:Landroid/graphics/Bitmap;

    .line 3535
    iput-boolean v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->monitorDoubleTapped:Z

    .line 4053
    iput v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_scrollCount:I

    .line 880
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 881
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    .line 882
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->hiddenStudentName()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_visibleStudentName:Z

    return-void
.end method

.method private cancelAutoScrollTimer()V
    .locals 1

    .line 4056
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_autoScrollTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 4057
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 4058
    iput-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_autoScrollTimer:Ljava/util/Timer;

    :cond_0
    const/4 v0, 0x0

    .line 4060
    iput v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_scrollCount:I

    return-void
.end method

.method private changeZoom(D)V
    .locals 2

    .line 2691
    iget-wide v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_zoom:D

    cmpl-double v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 2694
    :cond_0
    iput-wide p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_zoom:D

    .line 2697
    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->updateZoomBtnEnabled()V

    .line 2700
    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->notifyGridItemSizeChanged()V

    .line 2703
    iget-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_updateMonitorSizeTimer:Ljava/util/Timer;

    if-eqz p1, :cond_1

    .line 2704
    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    .line 2706
    :cond_1
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_updateMonitorSizeTimer:Ljava/util/Timer;

    .line 2707
    new-instance p2, Lcom/metamoji/forSchool/monitoring/ScMonitorList$25;

    invoke-direct {p2, p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$25;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p2, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    const/4 p1, -0x1

    .line 2720
    iput p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_prevFirstVisiblePosition:I

    .line 2721
    iput p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_prevLastVisiblePosition:I

    .line 2724
    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->saveMonitoringStateForZoom()V

    return-void
.end method

.method private clearMonitoringState(Z)V
    .locals 3

    .line 4414
    invoke-static {}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->sharedInstance()Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;

    move-result-object v0

    .line 4417
    invoke-virtual {v0}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->getDisplayMonitorType()I

    move-result v1

    if-nez v1, :cond_1

    .line 4418
    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->getSchoolPageType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 4433
    :goto_1
    invoke-virtual {v0, v1, p1}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->resetMonitoringState(ZZ)V

    return-void
.end method

.method private clearSelectedMonitorViews()V
    .locals 2

    .line 2600
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2601
    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_selectedMonitorViewArray:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2602
    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_selectedMonitorViewArray:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2603
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    .line 2604
    invoke-virtual {v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->selectStatusChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private createRevalidateExecuter()Ljava/util/concurrent/ExecutorService;
    .locals 1

    const/4 v0, 0x1

    .line 2261
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method private currentPageChanged(ZZ)V
    .locals 6

    .line 1591
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 1592
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v1

    .line 1593
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1596
    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->hideWaitView()V

    return-void

    :cond_0
    if-nez p2, :cond_2

    .line 1601
    iget-object p2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_pageController:Lcom/metamoji/nt/NtPageController;

    if-eqz p2, :cond_2

    .line 1602
    invoke-virtual {p2}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 1603
    invoke-virtual {v2}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1605
    :cond_1
    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->hideWaitView()V

    return-void

    .line 1610
    :cond_2
    iput-object v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_pageController:Lcom/metamoji/nt/NtPageController;

    const/4 p2, 0x0

    if-nez p1, :cond_4

    move v2, p2

    .line 1614
    :goto_0
    iget-object v3, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewArrayAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    invoke-virtual {v3}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->getCount()I

    move-result v3

    .line 1618
    iget-object v4, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewArrayAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    if-ge v2, v3, :cond_3

    .line 1615
    invoke-virtual {v4, v2}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    .line 1616
    invoke-virtual {v3}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->closeMonitorInfoDialog()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1618
    :cond_3
    invoke-virtual {v4}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->clear()V

    .line 1619
    iget-object v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_hideMonitorViewArray:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1620
    iget-object v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_selectedMonitorViewArray:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1622
    iget-object v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_masterMonitorViewArray:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1626
    :cond_4
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    .line 1627
    const-string v2, "MMJNtDocumentSettings"

    invoke-virtual {v0, v2}, Lcom/metamoji/nt/NtDocument;->getDocumentSettingsForType(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtDocumentSettings;

    .line 1628
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocumentSettings;->hasFrontCover()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, -0x1

    goto :goto_1

    :cond_5
    move v0, p2

    .line 1629
    :goto_1
    iget-object v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_pageLabel:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getCurrentPageIndex()I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    add-int/2addr v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1630
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getNumberOfPages()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1629
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1633
    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->updatePageJumpBtnEnabled()V

    .line 1635
    invoke-static {}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->sharedInstance()Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;

    move-result-object v0

    .line 1637
    invoke-virtual {v0}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->getDisplayMonitorType()I

    move-result v0

    if-nez v0, :cond_7

    .line 1638
    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->getSchoolPageType()I

    move-result v0

    if-eq v0, v5, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    .line 1645
    invoke-virtual {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->prepareMonitorViewForClassOrNormal()Z

    move-result v0

    goto :goto_2

    .line 1641
    :cond_6
    invoke-virtual {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->prepareMonitorViewForUserOrGroup()Z

    move-result v0

    goto :goto_2

    .line 1684
    :cond_7
    invoke-virtual {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->prepareMonitorViewForViewingPage()Z

    move-result v0

    :goto_2
    if-eqz v0, :cond_8

    .line 1689
    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->updateStatusNum()V

    .line 1693
    :cond_8
    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->recalcItemSize()V

    .line 1696
    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->updateGuidanceLabel()V

    if-eqz p1, :cond_9

    .line 1702
    invoke-direct {p0, p2}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->updateMonitorSize(Z)V

    .line 1705
    :cond_9
    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->updateShowHideBtnVisible()V

    .line 1708
    iget-boolean p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_visibleStudentName:Z

    invoke-virtual {p0, p1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->setVisibleNameLabel(Z)V

    .line 1711
    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->hideWaitView()V

    const/4 p1, 0x0

    .line 1713
    invoke-virtual {p0, p1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->setMonitorViewThumbnailCache(Landroid/graphics/Bitmap;)V

    .line 1716
    iget-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewArrayAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    invoke-virtual {p1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->notifyDataSetChanged()V

    .line 1719
    iget-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_pageListViewAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$PageListViewAdapter;

    iget-object p2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_pageController:Lcom/metamoji/nt/NtPageController;

    invoke-virtual {p2}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$PageListViewAdapter;->getPosition(Ljava/lang/String;)I

    move-result p1

    .line 1720
    iget-object p2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_pageListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method private dragCancel()V
    .locals 4

    .line 4136
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_heldMonitorView:Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 4140
    :cond_0
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_dragView:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 4144
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 4145
    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_dragView:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 4146
    iput-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_dragView:Landroid/widget/ImageView;

    .line 4147
    iput-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_dragBitmap:Landroid/graphics/Bitmap;

    .line 4149
    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_dragMonitorViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 4151
    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_heldMonitorView:Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    const/4 v3, 0x0

    .line 4152
    iput-boolean v3, v1, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->isDragging:Z

    .line 4153
    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_heldMonitorView:Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    invoke-virtual {v1, v2}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->revalidate(Z)V

    .line 4154
    iput-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_heldMonitorView:Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    .line 4157
    :cond_2
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_scrollView:Lcom/metamoji/forSchool/monitoring/ScMonitorScrollView;

    invoke-virtual {v0, v2}, Lcom/metamoji/forSchool/monitoring/ScMonitorScrollView;->enableScroll(Z)V

    return-void
.end method

.method private dragEnd(FF)V
    .locals 10

    .line 4165
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_heldMonitorView:Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 4169
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->moveDragView(FF)V

    .line 4172
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v0, 0x64

    .line 4173
    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 4174
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 4176
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_dragView:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 4180
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 4181
    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_dragView:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 4182
    iput-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_dragView:Landroid/widget/ImageView;

    .line 4183
    iput-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_dragBitmap:Landroid/graphics/Bitmap;

    .line 4184
    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewArrayAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    invoke-virtual {v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->clear()V

    .line 4185
    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewArrayAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    iget-object v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_dragMonitorViews:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->addAll(Ljava/util/Collection;)V

    .line 4188
    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitors:Lcom/metamoji/forSchool/monitoring/ScMonitorGridView;

    invoke-virtual {v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorGridView;->getFirstVisiblePosition()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    .line 4189
    :goto_1
    iget-object v4, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewArrayAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    invoke-virtual {v4}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->getCount()I

    move-result v4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_4

    .line 4190
    iget-object v4, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewArrayAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    invoke-virtual {v4, v3}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    .line 4191
    iget-object v6, v4, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->rect:Landroid/graphics/RectF;

    .line 4192
    iget-object v7, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitors:Lcom/metamoji/forSchool/monitoring/ScMonitorGridView;

    sub-int v8, v3, v1

    invoke-virtual {v7, v8}, Lcom/metamoji/forSchool/monitoring/ScMonitorGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 4194
    iget v8, v6, Landroid/graphics/RectF;->left:F

    new-array v9, v5, [F

    aput v8, v9, v2

    const-string v8, "x"

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-interface {p2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4195
    iget v6, v6, Landroid/graphics/RectF;->top:F

    new-array v8, v5, [F

    aput v6, v8, v2

    const-string v6, "y"

    invoke-static {v7, v6, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4197
    :cond_2
    invoke-virtual {p0, v4}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->checkVisibleActually(Lcom/metamoji/forSchool/monitoring/ScMonitorView;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 4198
    invoke-virtual {v4, v5}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->revalidate(Z)V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4202
    :cond_4
    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_dragMonitorViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 4204
    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_heldMonitorView:Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    if-eqz v1, :cond_5

    .line 4205
    iput-boolean v2, v1, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->isDragging:Z

    .line 4206
    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_heldMonitorView:Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    invoke-virtual {v1, v5}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->revalidate(Z)V

    .line 4207
    iput-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_heldMonitorView:Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    .line 4211
    :cond_5
    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->saveMonitoringStateForList()V

    .line 4215
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 4216
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 4218
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 4221
    :goto_2
    iget-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_scrollView:Lcom/metamoji/forSchool/monitoring/ScMonitorScrollView;

    invoke-virtual {p1, v5}, Lcom/metamoji/forSchool/monitoring/ScMonitorScrollView;->enableScroll(Z)V

    return-void
.end method

.method private dragMoved(FF)V
    .locals 1

    .line 4069
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_heldMonitorView:Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    if-nez v0, :cond_0

    return-void

    .line 4073
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->getContextMenu()Lcom/metamoji/ui/CustomMenuView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4074
    invoke-virtual {v0}, Lcom/metamoji/ui/CustomMenuView;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4076
    invoke-direct {p0, p1, p2}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->dragEnd(FF)V

    return-void

    .line 4080
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->moveDragView(FF)V

    return-void
.end method

.method private dragStart(Lcom/metamoji/forSchool/monitoring/ScMonitorView;FF)V
    .locals 3

    .line 3910
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_heldMonitorView:Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    if-eqz v0, :cond_0

    return-void

    .line 3913
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 3914
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 3917
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_scrollView:Lcom/metamoji/forSchool/monitoring/ScMonitorScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorScrollView;->enableScroll(Z)V

    .line 3920
    iput-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_heldMonitorView:Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    const/4 v0, 0x1

    .line 3921
    iput-boolean v0, p1, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->isDragging:Z

    .line 3922
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewArrayAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    invoke-virtual {v0, p1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->getPosition(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_heldMonitorViewIndex:I

    .line 3924
    iget-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitors:Lcom/metamoji/forSchool/monitoring/ScMonitorGridView;

    invoke-virtual {p1}, Lcom/metamoji/forSchool/monitoring/ScMonitorGridView;->getFirstVisiblePosition()I

    move-result p1

    .line 3925
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitors:Lcom/metamoji/forSchool/monitoring/ScMonitorGridView;

    iget v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_heldMonitorViewIndex:I

    sub-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorGridView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 3926
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_dragBitmap:Landroid/graphics/Bitmap;

    .line 3927
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    .line 3928
    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_dragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 3929
    invoke-virtual {p1, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 3930
    new-instance v0, Lcom/metamoji/cm/Size;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/cm/Size;-><init>(II)V

    iput-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_dragViewSize:Lcom/metamoji/cm/Size;

    .line 3932
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_dragView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 3933
    invoke-virtual {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 3934
    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_dragView:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 3937
    :cond_1
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_dragView:Landroid/widget/ImageView;

    .line 3938
    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_dragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3941
    invoke-direct {p0, p2, p3}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->updateDragViewLayout(FF)V

    .line 3963
    invoke-virtual {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p2

    .line 3964
    iget-object p3, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_dragView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_dragWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p2, p3, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3967
    iget-object p2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_dragView:Landroid/widget/ImageView;

    const p3, 0x3f8ccccd    # 1.1f

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 3968
    iget-object p2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_dragView:Landroid/widget/ImageView;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 3969
    iget-object p2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_dragView:Landroid/widget/ImageView;

    const p3, 0x3f4ccccd    # 0.8f

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setAlpha(F)V

    const/4 p2, 0x0

    .line 3970
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 3972
    invoke-virtual {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->createDragMonitorViews()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_dragMonitorViews:Ljava/util/List;

    .line 3973
    new-instance p1, Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_heldMonitorView:Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    iget-object p2, p2, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->rect:Landroid/graphics/RectF;

    invoke-direct {p1, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_heldMonitorViewRect:Landroid/graphics/RectF;

    return-void
.end method

.method private getContextMenu()Lcom/metamoji/ui/CustomMenuView;
    .locals 2

    .line 4666
    invoke-virtual {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->getDialogView()Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$id;->CustomMenuView:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/CustomMenuView;

    return-object v0
.end method

.method private getMonitorViewImageSize(Z)Lcom/metamoji/cm/Size;
    .locals 8

    .line 2297
    iget-wide v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_itemWidth:D

    iget-wide v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_zoom:D

    mul-double/2addr v0, v2

    .line 2298
    iget-wide v4, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_itemHeight:D

    mul-double/2addr v4, v2

    const/high16 v2, 0x40800000    # 4.0f

    .line 2299
    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v2

    float-to-double v2, v2

    if-eqz p1, :cond_0

    const/high16 p1, 0x41f00000    # 30.0f

    .line 2301
    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result p1

    float-to-double v2, p1

    :cond_0
    const/high16 p1, 0x41000000    # 8.0f

    .line 2304
    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result p1

    float-to-double v6, p1

    sub-double/2addr v4, v6

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result p1

    float-to-double v6, p1

    sub-double/2addr v4, v6

    const/high16 p1, 0x41d00000    # 26.0f

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result p1

    float-to-double v6, p1

    sub-double/2addr v4, v6

    sub-double/2addr v4, v2

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    cmpg-double p1, v4, v2

    if-gez p1, :cond_1

    move-wide v4, v2

    .line 2310
    :cond_1
    new-instance p1, Lcom/metamoji/cm/Size;

    double-to-int v0, v0

    double-to-int v1, v4

    invoke-direct {p1, v0, v1}, Lcom/metamoji/cm/Size;-><init>(II)V

    return-object p1
.end method

.method public static getResolution(DDZ)F
    .locals 2

    .line 684
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    const-wide p2, 0x4066800000000000L    # 180.0

    cmpg-double p2, p0, p2

    const/high16 p3, 0x40000000    # 2.0f

    if-gtz p2, :cond_0

    const/high16 p0, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x407e000000000000L    # 480.0

    cmpg-double p2, p0, v0

    if-gtz p2, :cond_1

    const p0, 0x3f4ccccd    # 0.8f

    goto :goto_0

    :cond_1
    const-wide/high16 v0, 0x40b0000000000000L    # 4096.0

    cmpg-double p0, p0, v0

    if-gtz p0, :cond_2

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    move p0, p3

    :goto_0
    if-eqz p4, :cond_3

    div-float/2addr p0, p3

    :cond_3
    return p0
.end method

.method private getSchoolPageType()I
    .locals 1

    .line 1526
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_pageController:Lcom/metamoji/nt/NtPageController;

    if-eqz v0, :cond_0

    .line 1527
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private handleLabelTap(Landroid/view/View;)V
    .locals 6

    .line 3243
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3246
    new-instance v0, Lcom/metamoji/ui/UiMenuItem;

    invoke-direct {v0}, Lcom/metamoji/ui/UiMenuItem;-><init>()V

    .line 3247
    sget v2, Lcom/metamoji/noteanytime/R$string;->SchoolMenu_Reset_Personal_Status:I

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/UiMenuItem;->set_captionid(I)V

    .line 3248
    sget-object v2, Lcom/metamoji/ui/UiMenuItem$MenuKind;->NORMAL:Lcom/metamoji/ui/UiMenuItem$MenuKind;

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/UiMenuItem;->set_kind(Lcom/metamoji/ui/UiMenuItem$MenuKind;)V

    .line 3249
    invoke-static {}, Lcom/metamoji/nt/NtLocaleUtils;->getCurrentLocale()Lcom/metamoji/nt/NtLocale;

    move-result-object v2

    sget-object v3, Lcom/metamoji/nt/NtLocale;->ja:Lcom/metamoji/nt/NtLocale;

    if-ne v2, v3, :cond_0

    .line 3250
    sget v2, Lcom/metamoji/noteanytime/R$drawable;->mnu_icon_school_reset_personal_status_jp:I

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/UiMenuItem;->set_NormalIcon_resid(I)V

    goto :goto_0

    .line 3252
    :cond_0
    sget v2, Lcom/metamoji/noteanytime/R$drawable;->mnu_icon_school_reset_personal_status:I

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/UiMenuItem;->set_NormalIcon_resid(I)V

    .line 3254
    :goto_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3257
    sget-object v3, Lcom/metamoji/ui/CustomMenuView$MenuDirection;->MENU_DOWN:Lcom/metamoji/ui/CustomMenuView$MenuDirection;

    new-instance v5, Lcom/metamoji/forSchool/monitoring/ScMonitorList$34;

    invoke-direct {v5, p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$34;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)V

    const/4 v4, 0x1

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->showActionMenu(Ljava/util/List;Landroid/view/View;Lcom/metamoji/ui/CustomMenuView$MenuDirection;ZLcom/metamoji/forSchool/monitoring/ScMonitorList$Completion;)V

    return-void
.end method

.method private handleOfflineUserButtonTap()V
    .locals 6

    .line 3266
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3269
    new-instance v0, Lcom/metamoji/ui/UiMenuItem;

    invoke-direct {v0}, Lcom/metamoji/ui/UiMenuItem;-><init>()V

    .line 3270
    sget v2, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_HIDE_ABSENTEES:I

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/UiMenuItem;->set_captionid(I)V

    .line 3271
    sget-object v2, Lcom/metamoji/ui/UiMenuItem$MenuKind;->HASCHECK:Lcom/metamoji/ui/UiMenuItem$MenuKind;

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/UiMenuItem;->set_kind(Lcom/metamoji/ui/UiMenuItem$MenuKind;)V

    .line 3272
    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/UiMenuItem;->set_command(Ljava/lang/Object;)V

    .line 3273
    iget v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_offlineUserMode:I

    if-nez v2, :cond_0

    .line 3274
    sget-object v2, Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;->MMJUI_MENU_CHECKSTATE_ON:Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/UiMenuItem;->set_checkState(Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;)V

    goto :goto_0

    .line 3276
    :cond_0
    sget-object v2, Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;->MMJUI_MENU_CHECKSTATE_OFF:Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/UiMenuItem;->set_checkState(Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;)V

    .line 3280
    :goto_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3284
    new-instance v0, Lcom/metamoji/ui/UiMenuItem;

    invoke-direct {v0}, Lcom/metamoji/ui/UiMenuItem;-><init>()V

    .line 3285
    sget v2, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_DARKLY_DISPLAY_ABSENTEES:I

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/UiMenuItem;->set_captionid(I)V

    .line 3286
    sget-object v2, Lcom/metamoji/ui/UiMenuItem$MenuKind;->HASCHECK:Lcom/metamoji/ui/UiMenuItem$MenuKind;

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/UiMenuItem;->set_kind(Lcom/metamoji/ui/UiMenuItem$MenuKind;)V

    .line 3287
    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/UiMenuItem;->set_command(Ljava/lang/Object;)V

    .line 3288
    iget v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_offlineUserMode:I

    if-ne v2, v3, :cond_1

    .line 3289
    sget-object v2, Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;->MMJUI_MENU_CHECKSTATE_ON:Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/UiMenuItem;->set_checkState(Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;)V

    goto :goto_1

    .line 3291
    :cond_1
    sget-object v2, Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;->MMJUI_MENU_CHECKSTATE_OFF:Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/UiMenuItem;->set_checkState(Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;)V

    .line 3294
    :goto_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3298
    new-instance v0, Lcom/metamoji/ui/UiMenuItem;

    invoke-direct {v0}, Lcom/metamoji/ui/UiMenuItem;-><init>()V

    .line 3299
    sget v2, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_BRIGHTLY_DISPLAY_ABSENTEES:I

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/UiMenuItem;->set_captionid(I)V

    .line 3300
    sget-object v2, Lcom/metamoji/ui/UiMenuItem$MenuKind;->HASCHECK:Lcom/metamoji/ui/UiMenuItem$MenuKind;

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/UiMenuItem;->set_kind(Lcom/metamoji/ui/UiMenuItem$MenuKind;)V

    .line 3301
    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/UiMenuItem;->set_command(Ljava/lang/Object;)V

    .line 3302
    iget v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_offlineUserMode:I

    if-ne v2, v3, :cond_2

    .line 3303
    sget-object v2, Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;->MMJUI_MENU_CHECKSTATE_ON:Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/UiMenuItem;->set_checkState(Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;)V

    goto :goto_2

    .line 3305
    :cond_2
    sget-object v2, Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;->MMJUI_MENU_CHECKSTATE_OFF:Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/UiMenuItem;->set_checkState(Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;)V

    .line 3308
    :goto_2
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3311
    iget-object v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_offlineUserBtn:Lcom/metamoji/ui/common/UiButton;

    sget-object v3, Lcom/metamoji/ui/CustomMenuView$MenuDirection;->MENU_DOWN:Lcom/metamoji/ui/CustomMenuView$MenuDirection;

    new-instance v5, Lcom/metamoji/forSchool/monitoring/ScMonitorList$35;

    invoke-direct {v5, p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$35;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)V

    const/4 v4, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->showActionMenu(Ljava/util/List;Landroid/view/View;Lcom/metamoji/ui/CustomMenuView$MenuDirection;ZLcom/metamoji/forSchool/monitoring/ScMonitorList$Completion;)V

    return-void
.end method

.method private handleOfflineUserMenuTapped(I)V
    .locals 0

    .line 3323
    invoke-direct {p0, p1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->offlineUserTypeChange(I)V

    return-void
.end method

.method private handlePageNextButtonTap()V
    .locals 3

    .line 2126
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2128
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v1

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_PAGE_FORW:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2129
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v1

    .line 2130
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2134
    :cond_0
    iget-object v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_pageController:Lcom/metamoji/nt/NtPageController;

    if-eqz v2, :cond_1

    .line 2135
    invoke-virtual {v2}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v2

    .line 2136
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 2142
    :cond_1
    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->showWaitView()V

    .line 2144
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_PAGE_FORW:Lcom/metamoji/nt/NtCommand;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private handlePagePrevButtonTap()V
    .locals 3

    .line 2098
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2100
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v1

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_PAGE_BACKW:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2101
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v1

    .line 2102
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2106
    :cond_0
    iget-object v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_pageController:Lcom/metamoji/nt/NtPageController;

    if-eqz v2, :cond_1

    .line 2107
    invoke-virtual {v2}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v2

    .line 2108
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 2114
    :cond_1
    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->showWaitView()V

    .line 2116
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_PAGE_BACKW:Lcom/metamoji/nt/NtCommand;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private handleSelectItemsButtonTap()V
    .locals 4

    const/4 v0, 0x1

    .line 3501
    invoke-direct {p0, v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->clearMonitoringState(Z)V

    .line 3504
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 3505
    :goto_0
    iget-object v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewArrayAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    invoke-virtual {v2}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3506
    iget-object v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewArrayAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    invoke-virtual {v2, v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    .line 3507
    invoke-virtual {p0, v2}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->isSelected(Lcom/metamoji/forSchool/monitoring/ScMonitorView;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3508
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3511
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    .line 3512
    iget-object v3, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewArrayAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    invoke-virtual {v3, v2}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->remove(Ljava/lang/Object;)V

    goto :goto_1

    .line 3514
    :cond_2
    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_hideMonitorViewArray:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3515
    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->clearSelectedMonitorViews()V

    .line 3519
    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->recalcItemSize()V

    .line 3521
    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->updateMonitorSizeWithAnimation()V

    .line 3524
    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->updateShowHideBtnVisible()V

    .line 3527
    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->updateGuidanceLabel()V

    .line 3530
    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->saveMonitoringStateForList()V

    .line 3532
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewArrayAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    invoke-virtual {v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private handleShowAllItemsButtonTap()V
    .locals 1

    const/4 v0, 0x1

    .line 3458
    invoke-direct {p0, v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->handleShowAllItemsButtonTapInner(Z)V

    return-void
.end method

.method private handleShowAllItemsButtonTapInner(Z)V
    .locals 2

    .line 3463
    invoke-direct {p0, p1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->clearMonitoringState(Z)V

    .line 3467
    iget-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewArrayAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    invoke-virtual {p1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->clear()V

    .line 3468
    iget-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_masterMonitorViewArray:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    .line 3469
    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewArrayAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    invoke-virtual {v1, v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 3471
    :cond_0
    iget-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_hideMonitorViewArray:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 3474
    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->hideOfflineUser()V

    .line 3478
    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->recalcItemSize()V

    .line 3480
    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->updateMonitorSizeWithAnimation()V

    .line 3483
    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->updateShowHideBtnVisible()V

    .line 3486
    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->updateGuidanceLabel()V

    .line 3490
    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->saveMonitoringStateForList()V

    .line 3492
    iget-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewArrayAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    invoke-virtual {p1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private handleZoomInButtonTap()V
    .locals 8

    .line 2665
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitors:Lcom/metamoji/forSchool/monitoring/ScMonitorGridView;

    invoke-virtual {v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorGridView;->getWidth()I

    move-result v0

    int-to-double v0, v0

    .line 2666
    iget-object v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewArrayAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    invoke-virtual {v2}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->getCount()I

    move-result v2

    int-to-double v2, v2

    .line 2667
    iget-wide v4, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_itemWidth:D

    iget-wide v6, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_zoom:D

    mul-double/2addr v4, v6

    div-double v4, v0, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    double-to-int v2, v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    .line 2668
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    .line 2669
    iget-wide v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_itemWidth:D

    div-double/2addr v0, v2

    .line 2670
    iget-object v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitors:Lcom/metamoji/forSchool/monitoring/ScMonitorGridView;

    invoke-virtual {v2}, Lcom/metamoji/forSchool/monitoring/ScMonitorGridView;->getFirstVisiblePosition()I

    move-result v2

    iput v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_pinchFocusMonitorViewIndex:I

    .line 2672
    iget-wide v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_zoomMax:D

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->changeZoom(D)V

    return-void
.end method

.method private handleZoomOutButtonTap()V
    .locals 6

    .line 2680
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitors:Lcom/metamoji/forSchool/monitoring/ScMonitorGridView;

    invoke-virtual {v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorGridView;->getWidth()I

    move-result v0

    int-to-double v0, v0

    .line 2681
    iget-wide v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_itemWidth:D

    iget-wide v4, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_zoom:D

    mul-double/2addr v2, v4

    div-double v2, v0, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    double-to-int v2, v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    .line 2682
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    .line 2683
    iget-wide v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_itemWidth:D

    div-double/2addr v0, v2

    .line 2684
    iget-object v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitors:Lcom/metamoji/forSchool/monitoring/ScMonitorGridView;

    invoke-virtual {v2}, Lcom/metamoji/forSchool/monitoring/ScMonitorGridView;->getFirstVisiblePosition()I

    move-result v2

    iput v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_pinchFocusMonitorViewIndex:I

    .line 2686
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->changeZoom(D)V

    return-void
.end method

.method private hideOfflineUser()V
    .locals 5

    .line 3203
    iget v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_offlineUserMode:I

    if-eqz v0, :cond_0

    return-void

    .line 3207
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 3208
    :goto_0
    iget-object v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewArrayAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    invoke-virtual {v2}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 3209
    iget-object v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewArrayAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    invoke-virtual {v2, v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    .line 3210
    const-string v3, "offline"

    invoke-virtual {v2}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->getStatus()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3211
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3215
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    .line 3216
    iget-object v3, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewArrayAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    invoke-virtual {v3, v2}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->remove(Ljava/lang/Object;)V

    goto :goto_1

    .line 3219
    :cond_3
    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_hideMonitorViewArray:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private hideWaitView()V
    .locals 1

    .line 4407
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->revokeWaitScreenNow()V

    return-void
.end method

.method private moveUnheldMonitorViewsAwayFromPointOfView(FF)V
    .locals 17

    move-object/from16 v0, p0

    .line 4247
    iget-object v1, v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitors:Lcom/metamoji/forSchool/monitoring/ScMonitorGridView;

    invoke-virtual {v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorGridView;->getFirstVisiblePosition()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    .line 4252
    :goto_0
    iget-object v4, v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_dragMonitorViews:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, -0x1

    if-ge v3, v4, :cond_1

    .line 4253
    iget-object v4, v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_dragMonitorViews:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    .line 4254
    iget-object v6, v4, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->rect:Landroid/graphics/RectF;

    move/from16 v7, p1

    move/from16 v8, p2

    .line 4255
    invoke-virtual {v6, v7, v8}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    move v3, v5

    :goto_1
    if-eqz v4, :cond_9

    if-eq v3, v5, :cond_9

    .line 4263
    iget v5, v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_heldMonitorViewIndex:I

    if-ne v3, v5, :cond_2

    goto/16 :goto_5

    .line 4271
    :cond_2
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 4272
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 4275
    iget-object v7, v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewArrayAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    iget-object v8, v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_heldMonitorView:Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    invoke-virtual {v7, v8}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v7

    .line 4276
    iget-object v8, v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitors:Lcom/metamoji/forSchool/monitoring/ScMonitorGridView;

    sub-int/2addr v7, v1

    invoke-virtual {v8, v7}, Lcom/metamoji/forSchool/monitoring/ScMonitorGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 4277
    iget-object v4, v4, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->rect:Landroid/graphics/RectF;

    .line 4278
    const-string v8, "y"

    const-string v9, "x"

    const/4 v10, 0x1

    if-eqz v7, :cond_3

    .line 4279
    iget v11, v4, Landroid/graphics/RectF;->left:F

    new-array v12, v10, [F

    aput v11, v12, v2

    invoke-static {v7, v9, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4280
    iget v4, v4, Landroid/graphics/RectF;->top:F

    new-array v11, v10, [F

    aput v4, v11, v2

    invoke-static {v7, v8, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4284
    :cond_3
    new-instance v4, Landroid/graphics/RectF;

    iget-object v7, v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_heldMonitorViewRect:Landroid/graphics/RectF;

    invoke-direct {v4, v7}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 4285
    iget v7, v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_heldMonitorViewIndex:I

    if-ge v3, v7, :cond_4

    :goto_2
    if-le v7, v3, :cond_5

    .line 4288
    iget-object v11, v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_dragMonitorViews:Ljava/util/List;

    add-int/lit8 v12, v7, -0x1

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    .line 4289
    iget-object v12, v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewArrayAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    invoke-virtual {v12, v11}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v12

    .line 4291
    iget-object v13, v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitors:Lcom/metamoji/forSchool/monitoring/ScMonitorGridView;

    sub-int/2addr v12, v1

    invoke-virtual {v13, v12}, Lcom/metamoji/forSchool/monitoring/ScMonitorGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 4292
    new-instance v13, Landroid/graphics/RectF;

    iget-object v14, v11, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->rect:Landroid/graphics/RectF;

    invoke-direct {v13, v14}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 4294
    iget v14, v4, Landroid/graphics/RectF;->left:F

    new-array v15, v10, [F

    aput v14, v15, v2

    invoke-static {v12, v9, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    invoke-interface {v6, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4295
    iget v14, v4, Landroid/graphics/RectF;->top:F

    new-array v15, v10, [F

    aput v14, v15, v2

    invoke-static {v12, v8, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4296
    new-instance v12, Landroid/graphics/RectF;

    invoke-direct {v12, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v12, v11, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->rect:Landroid/graphics/RectF;

    .line 4299
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v13}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 4302
    iget-object v12, v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_dragMonitorViews:Ljava/util/List;

    invoke-interface {v12, v7, v11}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    :cond_4
    if-ge v7, v3, :cond_5

    :goto_3
    if-ge v7, v3, :cond_5

    .line 4307
    iget-object v11, v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_dragMonitorViews:Ljava/util/List;

    add-int/lit8 v12, v7, 0x1

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    .line 4308
    iget-object v13, v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewArrayAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    invoke-virtual {v13, v11}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v13

    .line 4310
    iget-object v14, v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitors:Lcom/metamoji/forSchool/monitoring/ScMonitorGridView;

    sub-int/2addr v13, v1

    invoke-virtual {v14, v13}, Lcom/metamoji/forSchool/monitoring/ScMonitorGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 4311
    new-instance v14, Landroid/graphics/RectF;

    iget-object v15, v11, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->rect:Landroid/graphics/RectF;

    invoke-direct {v14, v15}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 4313
    iget v15, v4, Landroid/graphics/RectF;->left:F

    move/from16 v16, v2

    new-array v2, v10, [F

    aput v15, v2, v16

    invoke-static {v13, v9, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4314
    iget v2, v4, Landroid/graphics/RectF;->top:F

    new-array v15, v10, [F

    aput v2, v15, v16

    invoke-static {v13, v8, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4315
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v2, v11, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->rect:Landroid/graphics/RectF;

    .line 4318
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v14}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 4321
    iget-object v2, v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_dragMonitorViews:Ljava/util/List;

    invoke-interface {v2, v7, v11}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v7, v12

    move/from16 v2, v16

    goto :goto_3

    :cond_5
    move/from16 v16, v2

    .line 4326
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v1, v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_heldMonitorViewRect:Landroid/graphics/RectF;

    .line 4327
    iput v3, v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_heldMonitorViewIndex:I

    .line 4328
    iget-object v1, v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_heldMonitorView:Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_heldMonitorViewRect:Landroid/graphics/RectF;

    invoke-direct {v2, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v2, v1, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->rect:Landroid/graphics/RectF;

    .line 4332
    iget-object v1, v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_dragMonitorViews:Ljava/util/List;

    iget v2, v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_heldMonitorViewIndex:I

    iget-object v3, v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_heldMonitorView:Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    invoke-interface {v1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4335
    iget-object v1, v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_showAllItemsBtn:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {v1}, Lcom/metamoji/ui/common/UiButton;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_8

    .line 4336
    iget-object v1, v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_masterMonitorViewArray:Ljava/util/List;

    iget-object v2, v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_heldMonitorView:Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4337
    iget v1, v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_heldMonitorViewIndex:I

    if-lez v1, :cond_7

    .line 4338
    iget-object v2, v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_dragMonitorViews:Ljava/util/List;

    sub-int/2addr v1, v10

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    .line 4339
    iget-object v2, v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_masterMonitorViewArray:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 4340
    iget-object v2, v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_masterMonitorViewArray:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v10

    .line 4343
    iget-object v3, v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_masterMonitorViewArray:Ljava/util/List;

    if-ne v2, v1, :cond_6

    .line 4341
    iget-object v1, v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_heldMonitorView:Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 4343
    :cond_6
    iget-object v2, v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_heldMonitorView:Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    invoke-interface {v3, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_4

    :cond_7
    if-nez v1, :cond_8

    .line 4346
    iget-object v1, v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_masterMonitorViewArray:Ljava/util/List;

    iget-object v2, v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_heldMonitorView:Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    move/from16 v3, v16

    invoke-interface {v1, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4351
    :cond_8
    :goto_4
    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 4352
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    :cond_9
    :goto_5
    return-void
.end method

.method private notifyGridItemSizeChanged()V
    .locals 13

    .line 2197
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitors:Lcom/metamoji/forSchool/monitoring/ScMonitorGridView;

    iget-wide v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_itemWidth:D

    iget-wide v3, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_zoom:D

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorGridView;->setColumnWidth(I)V

    .line 2201
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_pageController:Lcom/metamoji/nt/NtPageController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getPaperWidth()F

    move-result v0

    .line 2202
    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_pageController:Lcom/metamoji/nt/NtPageController;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getPaperHeight()F

    move-result v1

    .line 2204
    iget-object v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewArrayAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    invoke-virtual {v2}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->getCount()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_0

    .line 2205
    iget-object v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewArrayAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    invoke-virtual {v2, v3}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    .line 2206
    invoke-virtual {v2}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->isGroup()Z

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    .line 2208
    :goto_0
    invoke-direct {p0, v2}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->getMonitorViewImageSize(Z)Lcom/metamoji/cm/Size;

    move-result-object v2

    .line 2209
    iget v4, v2, Lcom/metamoji/cm/Size;->width:I

    int-to-double v4, v4

    iget-wide v6, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_zoom:D

    mul-double/2addr v4, v6

    iget v6, v2, Lcom/metamoji/cm/Size;->height:I

    int-to-double v6, v6

    iget-wide v8, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_zoom:D

    mul-double/2addr v6, v8

    iget-boolean v8, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_isPhone:Z

    invoke-static {v4, v5, v6, v7, v8}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->getResolution(DDZ)F

    move-result v4

    .line 2210
    iget v5, v2, Lcom/metamoji/cm/Size;->width:I

    int-to-float v5, v5

    div-float/2addr v5, v0

    iget v6, v2, Lcom/metamoji/cm/Size;->height:I

    int-to-float v6, v6

    div-float/2addr v6, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    mul-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v6, v4, v5

    if-lez v6, :cond_1

    .line 2213
    const-string v4, "notifyGridItemSizeChanged:scale"

    invoke-static {v4}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    move v7, v5

    goto :goto_1

    :cond_1
    move v7, v4

    :goto_1
    const/4 v4, 0x0

    cmpl-float v5, v1, v4

    if-lez v5, :cond_2

    cmpl-float v5, v0, v4

    if-lez v5, :cond_2

    float-to-double v5, v7

    const-wide/16 v8, 0x0

    cmpl-double v5, v5, v8

    if-lez v5, :cond_2

    .line 2216
    iget-object v6, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_pageController:Lcom/metamoji/nt/NtPageController;

    new-instance v8, Landroid/graphics/PointF;

    invoke-direct {v8, v4, v4}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v9, Lcom/metamoji/cm/SizeF;

    invoke-direct {v9, v0, v1}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v6 .. v12}, Lcom/metamoji/nt/NtPageController;->takeSnapshotForSchool(FLandroid/graphics/PointF;Lcom/metamoji/cm/SizeF;Lcom/metamoji/df/sprite/PaintSolid;ZLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2219
    iput-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorThumbnailBase:Landroid/graphics/Bitmap;

    .line 2222
    :cond_2
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_revalidateExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_3

    .line 2224
    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-interface {v0, v4, v5, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2225
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_revalidateExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 2228
    :catch_0
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_revalidateExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 2232
    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->createRevalidateExecuter()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_revalidateExecutor:Ljava/util/concurrent/ExecutorService;

    .line 2234
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2235
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2236
    :goto_3
    iget-object v4, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewArrayAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    invoke-virtual {v4}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 2237
    iget-object v4, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewArrayAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    invoke-virtual {v4, v3}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    .line 2239
    invoke-virtual {v4, v2}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->setThumbnailSize(Lcom/metamoji/cm/Size;)V

    .line 2240
    invoke-virtual {p0, v4}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->checkVisibleActually(Lcom/metamoji/forSchool/monitoring/ScMonitorView;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2241
    iget-object v5, v4, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->thumbnail:Landroid/graphics/Bitmap;

    if-nez v5, :cond_4

    .line 2242
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 2244
    :cond_4
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 2249
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    .line 2250
    iget-object v4, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_revalidateExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0, v4, v2, v3}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->submitRevalidateMonitorViewToExecutor(Ljava/util/concurrent/ExecutorService;Lcom/metamoji/forSchool/monitoring/ScMonitorView;Z)V

    goto :goto_5

    .line 2252
    :cond_7
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    .line 2253
    iget-object v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_revalidateExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0, v2, v1, v3}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->submitRevalidateMonitorViewToExecutor(Ljava/util/concurrent/ExecutorService;Lcom/metamoji/forSchool/monitoring/ScMonitorView;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    .line 2256
    :cond_8
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_revalidateExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_revalidateExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 2257
    throw v0
.end method

.method private offlineUserTypeChange(I)V
    .locals 5

    .line 3329
    iget v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_offlineUserMode:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez p1, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    if-eq v0, v3, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    .line 3331
    :goto_2
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v3

    .line 3332
    const-string v4, "forSchoolMonitoringOfflineUserMode"

    invoke-virtual {v3, v4, p1}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;I)V

    .line 3334
    iput p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_offlineUserMode:I

    .line 3335
    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->updateOfflineUserBtnCaption()V

    move p1, v1

    .line 3337
    :goto_3
    iget-object v3, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewArrayAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    invoke-virtual {v3}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->getCount()I

    move-result v3

    if-ge p1, v3, :cond_4

    .line 3338
    iget-object v3, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewArrayAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    invoke-virtual {v3, p1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    .line 3339
    invoke-virtual {p0, v3}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->checkVisibleActually(Lcom/metamoji/forSchool/monitoring/ScMonitorView;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3340
    invoke-virtual {v3, v2}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->updateBgColor(Z)V

    .line 3342
    iget-boolean v4, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_visibleStudentName:Z

    invoke-virtual {v3, v4}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->setVisibleNameLabel(Z)V

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 3345
    :cond_4
    iget-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_hideMonitorViewArray:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    .line 3346
    invoke-virtual {p0, v3}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->checkVisibleActually(Lcom/metamoji/forSchool/monitoring/ScMonitorView;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3347
    invoke-virtual {v3, v2}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->updateBgColor(Z)V

    goto :goto_4

    :cond_6
    if-nez v0, :cond_7

    return-void

    .line 3358
    :cond_7
    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->clearSelectedMonitorViews()V

    .line 3360
    invoke-direct {p0, v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->handleShowAllItemsButtonTapInner(Z)V

    return-void
.end method

.method private recalcItemSize()V
    .locals 10

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 2154
    iput-wide v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_zoom:D

    iput-wide v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_zoomMax:D

    const-wide/16 v0, 0x0

    .line 2155
    iput-wide v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_itemWidth:D

    .line 2156
    iput-wide v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_itemHeight:D

    .line 2158
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewArrayAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    invoke-virtual {v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 2160
    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->updateZoomBtnEnabled()V

    return-void

    .line 2164
    :cond_0
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitors:Lcom/metamoji/forSchool/monitoring/ScMonitorGridView;

    invoke-virtual {v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorGridView;->getWidth()I

    move-result v0

    int-to-double v0, v0

    .line 2165
    iget-object v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_scrollView:Lcom/metamoji/forSchool/monitoring/ScMonitorScrollView;

    invoke-virtual {v2}, Lcom/metamoji/forSchool/monitoring/ScMonitorScrollView;->getHeight()I

    move-result v2

    int-to-double v2, v2

    const/4 v4, 0x1

    move v5, v4

    :goto_0
    mul-int v6, v4, v5

    .line 2169
    iget-object v7, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewArrayAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    invoke-virtual {v7}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->getCount()I

    move-result v7

    if-ge v6, v7, :cond_2

    int-to-double v6, v4

    div-double v6, v0, v6

    .line 2170
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    int-to-double v8, v5

    div-double v8, v2, v8

    .line 2171
    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    int-to-double v6, v4

    div-double v6, v0, v6

    .line 2178
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_itemWidth:D

    int-to-double v4, v5

    div-double v4, v2, v4

    .line 2179
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_itemHeight:D

    .line 2182
    iget-wide v4, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_itemWidth:D

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    .line 2183
    iget-wide v4, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_itemHeight:D

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    .line 2184
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_zoomMax:D

    .line 2187
    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->restoreMonitoringStateForZoom()V

    .line 2190
    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->notifyGridItemSizeChanged()V

    .line 2193
    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->updateZoomBtnEnabled()V

    return-void
.end method

.method private restoreMonitoringStateForList()V
    .locals 10

    .line 4498
    invoke-static {}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->sharedInstance()Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;

    move-result-object v0

    .line 4502
    invoke-virtual {v0}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->getDisplayMonitorType()I

    move-result v1

    if-nez v1, :cond_1

    .line 4503
    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->getSchoolPageType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 4511
    iget-object v1, v0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->visibleMonitorIdArrayForUser:Ljava/util/List;

    goto :goto_0

    .line 4506
    :cond_0
    iget-object v1, v0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->visibleMonitorIdArrayForGroup:Ljava/util/List;

    goto :goto_0

    .line 4518
    :cond_1
    iget-object v1, v0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->visibleMonitorIdArrayForUser:Ljava/util/List;

    :goto_0
    if-eqz v1, :cond_f

    .line 4523
    iget-object v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewArrayAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    invoke-virtual {v2}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    const/4 v3, 0x3

    if-ltz v2, :cond_7

    .line 4524
    iget-object v4, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewArrayAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    invoke-virtual {v4, v2}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    .line 4527
    invoke-virtual {v0}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->getDisplayMonitorType()I

    move-result v5

    if-nez v5, :cond_3

    .line 4528
    invoke-virtual {v4}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->getLayerId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/metamoji/nt/NtPageController;->getUserOrGroupIdFromPersonalLayerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4529
    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->getSchoolPageType()I

    move-result v6

    if-eq v6, v3, :cond_2

    .line 4530
    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->getSchoolPageType()I

    move-result v3

    if-nez v3, :cond_4

    .line 4531
    :cond_2
    invoke-virtual {v4}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->getUserId()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 4534
    :cond_3
    invoke-virtual {v4}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->getUserId()Ljava/lang/String;

    move-result-object v5

    :cond_4
    :goto_2
    if-eqz v5, :cond_5

    .line 4536
    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 4537
    :cond_5
    iget-object v3, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_hideMonitorViewArray:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 4542
    :cond_7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_3
    if-ltz v2, :cond_e

    .line 4543
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x0

    move v6, v5

    .line 4545
    :goto_4
    iget-object v7, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewArrayAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    invoke-virtual {v7}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->getCount()I

    move-result v7

    if-ge v6, v7, :cond_c

    .line 4546
    iget-object v7, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewArrayAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    invoke-virtual {v7, v6}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    .line 4549
    invoke-virtual {v0}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->getDisplayMonitorType()I

    move-result v8

    if-nez v8, :cond_9

    .line 4550
    invoke-virtual {v7}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->getLayerId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/metamoji/nt/NtPageController;->getUserOrGroupIdFromPersonalLayerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 4551
    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->getSchoolPageType()I

    move-result v9

    if-eq v9, v3, :cond_8

    .line 4552
    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->getSchoolPageType()I

    move-result v9

    if-nez v9, :cond_a

    .line 4553
    :cond_8
    invoke-virtual {v7}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->getUserId()Ljava/lang/String;

    move-result-object v8

    goto :goto_5

    .line 4556
    :cond_9
    invoke-virtual {v7}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->getUserId()Ljava/lang/String;

    move-result-object v8

    .line 4559
    :cond_a
    :goto_5
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    goto :goto_6

    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_c
    const/4 v7, 0x0

    :goto_6
    if-eqz v7, :cond_d

    .line 4566
    iget-object v4, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewArrayAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    invoke-virtual {v4, v7}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->remove(Ljava/lang/Object;)V

    .line 4567
    iget-object v4, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewArrayAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    invoke-virtual {v4, v7, v5}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->insert(Ljava/lang/Object;I)V

    .line 4568
    iget-object v4, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_masterMonitorViewArray:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4569
    iget-object v4, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_masterMonitorViewArray:Ljava/util/List;

    invoke-interface {v4, v5, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_d
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 4573
    :cond_e
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_hideMonitorViewArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    .line 4574
    iget-object v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewArrayAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    invoke-virtual {v2, v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->remove(Ljava/lang/Object;)V

    goto :goto_7

    :cond_f
    return-void
.end method

.method private restoreMonitoringStateForZoom()V
    .locals 4

    .line 4610
    invoke-static {}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->sharedInstance()Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;

    move-result-object v0

    .line 4613
    invoke-virtual {v0}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->getDisplayMonitorType()I

    move-result v1

    if-nez v1, :cond_1

    .line 4614
    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->getSchoolPageType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 4622
    iget-wide v0, v0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->zoomForUser:D

    goto :goto_0

    .line 4617
    :cond_0
    iget-wide v0, v0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->zoomForGroup:D

    goto :goto_0

    .line 4629
    :cond_1
    iget-wide v0, v0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->zoomForUser:D

    .line 4631
    :goto_0
    iget-wide v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_zoomMax:D

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_zoom:D

    return-void
.end method

.method private revalidateMonitorViewForScroll()V
    .locals 9

    .line 2407
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewArrayAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    invoke-virtual {v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->getCount()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v4, v1

    move v3, v2

    :goto_0
    const/4 v5, 0x1

    if-ge v3, v0, :cond_2

    .line 2410
    iget-object v6, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewArrayAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    invoke-virtual {v6, v3}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    .line 2411
    invoke-virtual {p0, v6}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->checkVisibleActually(Lcom/metamoji/forSchool/monitoring/ScMonitorView;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-gez v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_0
    if-ltz v4, :cond_1

    add-int/lit8 v1, v3, -0x1

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    if-gez v1, :cond_3

    add-int/lit8 v1, v0, -0x1

    .line 2427
    :cond_3
    iget-object v3, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_revalidateExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v3, :cond_4

    .line 2429
    :try_start_0
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0x1

    invoke-interface {v3, v7, v8, v6}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 2430
    iget-object v3, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_revalidateExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 2433
    :catch_0
    iget-object v3, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_revalidateExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 2437
    :cond_4
    :goto_3
    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->createRevalidateExecuter()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    iput-object v3, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_revalidateExecutor:Ljava/util/concurrent/ExecutorService;

    :goto_4
    if-ge v2, v4, :cond_8

    if-gt v0, v2, :cond_5

    goto :goto_6

    :cond_5
    if-gez v2, :cond_6

    goto :goto_5

    .line 2446
    :cond_6
    :try_start_1
    iget-object v3, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewArrayAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    invoke-virtual {v3, v2}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    .line 2447
    iget-object v6, v3, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_7

    .line 2449
    iget-object v6, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_revalidateExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0, v6, v3}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->submitReleseImageMonitorViewToExecutor(Ljava/util/concurrent/ExecutorService;Lcom/metamoji/forSchool/monitoring/ScMonitorView;)V

    :cond_7
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 2453
    :cond_8
    :goto_6
    iget v3, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_prevFirstVisiblePosition:I

    if-le v3, v4, :cond_b

    move v2, v4

    .line 2455
    :goto_7
    iget v3, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_prevFirstVisiblePosition:I

    if-gt v2, v3, :cond_f

    if-gt v0, v2, :cond_9

    goto :goto_b

    :cond_9
    if-gez v2, :cond_a

    goto :goto_8

    .line 2462
    :cond_a
    iget-object v3, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewArrayAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    invoke-virtual {v3, v2}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    .line 2463
    iget-object v6, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_revalidateExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0, v6, v3, v5}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->submitRevalidateMonitorViewToExecutor(Ljava/util/concurrent/ExecutorService;Lcom/metamoji/forSchool/monitoring/ScMonitorView;Z)V

    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_b
    if-gez v3, :cond_e

    :goto_9
    if-gt v2, v4, :cond_f

    if-gt v0, v2, :cond_c

    goto :goto_b

    :cond_c
    if-gez v2, :cond_d

    goto :goto_a

    .line 2473
    :cond_d
    iget-object v3, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewArrayAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    invoke-virtual {v3, v2}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    .line 2474
    iget-object v6, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_revalidateExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0, v6, v3, v5}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->submitRevalidateMonitorViewToExecutor(Ljava/util/concurrent/ExecutorService;Lcom/metamoji/forSchool/monitoring/ScMonitorView;Z)V

    :goto_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_e
    move v2, v4

    .line 2480
    :cond_f
    :goto_b
    iget v3, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_prevLastVisiblePosition:I

    if-ge v3, v1, :cond_13

    if-lez v3, :cond_10

    move v2, v3

    :cond_10
    :goto_c
    if-gt v2, v1, :cond_18

    if-gt v0, v2, :cond_11

    goto :goto_10

    :cond_11
    if-gez v2, :cond_12

    goto :goto_d

    .line 2491
    :cond_12
    iget-object v3, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewArrayAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    invoke-virtual {v3, v2}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    .line 2492
    iget-object v6, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_revalidateExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0, v6, v3, v5}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->submitRevalidateMonitorViewToExecutor(Ljava/util/concurrent/ExecutorService;Lcom/metamoji/forSchool/monitoring/ScMonitorView;Z)V

    :goto_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_13
    if-ne v3, v1, :cond_17

    :goto_e
    if-gt v2, v1, :cond_18

    if-gt v0, v2, :cond_14

    goto :goto_10

    :cond_14
    if-gez v2, :cond_15

    goto :goto_f

    .line 2502
    :cond_15
    iget-object v3, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewArrayAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    invoke-virtual {v3, v2}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    .line 2503
    iget-object v6, v3, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->thumbnail:Landroid/graphics/Bitmap;

    if-nez v6, :cond_16

    .line 2504
    iget-object v6, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_revalidateExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0, v6, v3, v5}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->submitRevalidateMonitorViewToExecutor(Ljava/util/concurrent/ExecutorService;Lcom/metamoji/forSchool/monitoring/ScMonitorView;Z)V

    :cond_16
    :goto_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_17
    move v2, v1

    :cond_18
    :goto_10
    add-int/2addr v2, v5

    :goto_11
    if-ge v2, v0, :cond_1b

    if-gez v2, :cond_19

    goto :goto_12

    .line 2518
    :cond_19
    iget-object v3, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewArrayAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    invoke-virtual {v3, v2}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    .line 2519
    iget-object v5, v3, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_1a

    .line 2521
    iget-object v5, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_revalidateExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0, v5, v3}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->submitReleseImageMonitorViewToExecutor(Ljava/util/concurrent/ExecutorService;Lcom/metamoji/forSchool/monitoring/ScMonitorView;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1a
    :goto_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 2525
    :cond_1b
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_revalidateExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 2528
    iput v4, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_prevFirstVisiblePosition:I

    .line 2529
    iput v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_prevLastVisiblePosition:I

    return-void

    :catchall_0
    move-exception v0

    .line 2525
    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_revalidateExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 2526
    throw v0
.end method

.method private saveMonitoringStateForList()V
    .locals 7

    .line 4440
    invoke-static {}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->sharedInstance()Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;

    move-result-object v0

    .line 4444
    invoke-virtual {v0}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->getDisplayMonitorType()I

    move-result v1

    if-nez v1, :cond_3

    .line 4445
    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->getSchoolPageType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 4456
    iget-object v1, v0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->visibleMonitorIdArrayForUser:Ljava/util/List;

    if-nez v1, :cond_0

    .line 4457
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->visibleMonitorIdArrayForUser:Ljava/util/List;

    .line 4459
    :cond_0
    iget-object v1, v0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->visibleMonitorIdArrayForUser:Ljava/util/List;

    goto :goto_0

    .line 4448
    :cond_1
    iget-object v1, v0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->visibleMonitorIdArrayForGroup:Ljava/util/List;

    if-nez v1, :cond_2

    .line 4449
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->visibleMonitorIdArrayForGroup:Ljava/util/List;

    .line 4451
    :cond_2
    iget-object v1, v0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->visibleMonitorIdArrayForGroup:Ljava/util/List;

    goto :goto_0

    .line 4466
    :cond_3
    iget-object v1, v0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->visibleMonitorIdArrayForUser:Ljava/util/List;

    if-nez v1, :cond_4

    .line 4467
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->visibleMonitorIdArrayForUser:Ljava/util/List;

    .line 4469
    :cond_4
    iget-object v1, v0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->visibleMonitorIdArrayForUser:Ljava/util/List;

    .line 4472
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v2, 0x0

    .line 4474
    :goto_1
    iget-object v3, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_masterMonitorViewArray:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_9

    .line 4475
    iget-object v3, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_masterMonitorViewArray:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    .line 4478
    invoke-virtual {v0}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->getDisplayMonitorType()I

    move-result v4

    if-nez v4, :cond_6

    .line 4479
    invoke-virtual {v3}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->getLayerId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/metamoji/nt/NtPageController;->getUserOrGroupIdFromPersonalLayerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4480
    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->getSchoolPageType()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_5

    .line 4481
    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->getSchoolPageType()I

    move-result v5

    if-nez v5, :cond_7

    .line 4482
    :cond_5
    invoke-virtual {v3}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->getUserId()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 4485
    :cond_6
    invoke-virtual {v3}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->getUserId()Ljava/lang/String;

    move-result-object v4

    :cond_7
    :goto_2
    if-eqz v4, :cond_8

    .line 4489
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_9
    return-void
.end method

.method private saveMonitoringStateForZoom()V
    .locals 5

    .line 4584
    invoke-static {}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->sharedInstance()Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;

    move-result-object v0

    .line 4586
    invoke-virtual {v0}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->getDisplayMonitorType()I

    move-result v1

    if-nez v1, :cond_1

    .line 4587
    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->getSchoolPageType()I

    move-result v1

    .line 4590
    iget-wide v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_zoom:D

    const/4 v4, 0x2

    if-eq v1, v4, :cond_0

    .line 4595
    iput-wide v2, v0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->zoomForUser:D

    return-void

    .line 4590
    :cond_0
    iput-wide v2, v0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->zoomForGroup:D

    return-void

    .line 4602
    :cond_1
    iget-wide v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_zoom:D

    iput-wide v1, v0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->zoomForUser:D

    return-void
.end method

.method private scrollPageDown()V
    .locals 11

    .line 4382
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitors:Lcom/metamoji/forSchool/monitoring/ScMonitorGridView;

    invoke-virtual {v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorGridView;->getBottom()I

    move-result v0

    .line 4383
    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_scrollView:Lcom/metamoji/forSchool/monitoring/ScMonitorScrollView;

    invoke-virtual {v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorScrollView;->getScrollY()I

    move-result v1

    .line 4385
    iget-object v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_scrollView:Lcom/metamoji/forSchool/monitoring/ScMonitorScrollView;

    invoke-virtual {v2}, Lcom/metamoji/forSchool/monitoring/ScMonitorScrollView;->getHeight()I

    move-result v2

    add-int/2addr v2, v1

    if-ge v2, v0, :cond_0

    .line 4386
    iget-wide v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_itemHeight:D

    iget-wide v4, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_zoom:D

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    .line 4387
    iget v4, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_scrollCount:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_scrollCount:I

    int-to-double v5, v5

    mul-double/2addr v5, v2

    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    div-double/2addr v5, v7

    int-to-double v9, v4

    mul-double/2addr v2, v9

    div-double/2addr v2, v7

    sub-double/2addr v5, v2

    double-to-int v2, v5

    .line 4390
    iget-object v3, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_scrollView:Lcom/metamoji/forSchool/monitoring/ScMonitorScrollView;

    invoke-virtual {v3}, Lcom/metamoji/forSchool/monitoring/ScMonitorScrollView;->getHeight()I

    move-result v4

    sub-int/2addr v0, v4

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v3, v1, v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorScrollView;->smoothScrollTo(II)V

    return-void

    .line 4393
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->cancelAutoScrollTimer()V

    return-void
.end method

.method private scrollPageUp()V
    .locals 10

    .line 4364
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitors:Lcom/metamoji/forSchool/monitoring/ScMonitorGridView;

    invoke-virtual {v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorGridView;->getTop()I

    move-result v0

    .line 4365
    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_scrollView:Lcom/metamoji/forSchool/monitoring/ScMonitorScrollView;

    invoke-virtual {v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorScrollView;->getScrollY()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 4367
    iget-wide v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_itemHeight:D

    iget-wide v4, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_zoom:D

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    .line 4368
    iget v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_scrollCount:I

    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_scrollCount:I

    int-to-double v4, v4

    mul-double/2addr v4, v2

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    div-double/2addr v4, v6

    int-to-double v8, v0

    mul-double/2addr v2, v8

    div-double/2addr v2, v6

    sub-double/2addr v4, v2

    double-to-int v0, v4

    .line 4371
    iget-object v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_scrollView:Lcom/metamoji/forSchool/monitoring/ScMonitorScrollView;

    sub-int/2addr v1, v0

    const/4 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorScrollView;->smoothScrollTo(II)V

    return-void

    .line 4374
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->cancelAutoScrollTimer()V

    return-void
.end method

.method private scrollSnap()V
    .locals 4

    .line 2538
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_scrollSnapTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 2539
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 2540
    iput-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_scrollSnapTimer:Ljava/util/Timer;

    .line 2543
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_scrollSnap:Z

    if-nez v0, :cond_1

    return-void

    .line 2550
    :cond_1
    iget-wide v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_itemHeight:D

    iget-wide v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_zoom:D

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 2551
    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_scrollView:Lcom/metamoji/forSchool/monitoring/ScMonitorScrollView;

    invoke-virtual {v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorScrollView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-le v1, v0, :cond_2

    .line 2553
    div-int/lit8 v1, v0, 0x2

    .line 2555
    :cond_2
    iget-object v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_scrollView:Lcom/metamoji/forSchool/monitoring/ScMonitorScrollView;

    invoke-virtual {v2}, Lcom/metamoji/forSchool/monitoring/ScMonitorScrollView;->getScrollY()I

    move-result v2

    add-int/2addr v2, v1

    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_scrollView:Lcom/metamoji/forSchool/monitoring/ScMonitorScrollView;

    invoke-virtual {v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorScrollView;->getY()F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v2, v1

    .line 2556
    div-int/2addr v2, v0

    int-to-double v1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    mul-int/2addr v0, v1

    .line 2558
    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitors:Lcom/metamoji/forSchool/monitoring/ScMonitorGridView;

    invoke-virtual {v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorGridView;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_scrollView:Lcom/metamoji/forSchool/monitoring/ScMonitorScrollView;

    invoke-virtual {v2}, Lcom/metamoji/forSchool/monitoring/ScMonitorScrollView;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2560
    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_scrollView:Lcom/metamoji/forSchool/monitoring/ScMonitorScrollView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorScrollView;->smoothScrollTo(II)V

    return-void
.end method

.method private showActionMenu(Ljava/util/List;Landroid/view/View;Lcom/metamoji/ui/CustomMenuView$MenuDirection;ZLcom/metamoji/forSchool/monitoring/ScMonitorList$Completion;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/ui/UiMenuItem;",
            ">;",
            "Landroid/view/View;",
            "Lcom/metamoji/ui/CustomMenuView$MenuDirection;",
            "Z",
            "Lcom/metamoji/forSchool/monitoring/ScMonitorList$Completion;",
            ")V"
        }
    .end annotation

    .line 4636
    invoke-virtual {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->getDialogView()Landroid/view/ViewGroup;

    move-result-object p4

    sget v0, Lcom/metamoji/noteanytime/R$id;->CustomMenuView:I

    invoke-virtual {p4, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p4

    move-object v0, p4

    check-cast v0, Lcom/metamoji/ui/CustomMenuView;

    .line 4637
    invoke-virtual {v0}, Lcom/metamoji/ui/CustomMenuView;->cancelAllMenus()V

    .line 4639
    new-instance p4, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p4, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v1, 0x0

    .line 4640
    invoke-static {p4, p2, v1}, Lcom/metamoji/cm/CmUtils;->transformRect(Landroid/graphics/Rect;Landroid/view/View;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v5

    .line 4641
    new-instance p4, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p4, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 4642
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 4643
    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_0

    .line 4644
    move-object p4, v1

    check-cast p4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 4646
    :cond_0
    iget v1, v5, Landroid/graphics/Rect;->left:I

    iget v2, p4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v1, v2

    iput v1, v5, Landroid/graphics/Rect;->left:I

    .line 4647
    iget v1, v5, Landroid/graphics/Rect;->top:I

    iget v2, p4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v1, v2

    iput v1, v5, Landroid/graphics/Rect;->top:I

    .line 4648
    iget v1, v5, Landroid/graphics/Rect;->right:I

    iget v2, p4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    iput v1, v5, Landroid/graphics/Rect;->right:I

    .line 4649
    iget v1, v5, Landroid/graphics/Rect;->bottom:I

    iget p4, p4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, p4

    iput v1, v5, Landroid/graphics/Rect;->bottom:I

    .line 4651
    new-instance v2, Lcom/metamoji/forSchool/monitoring/ScMonitorList$40;

    invoke-direct {v2, p0, p5}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$40;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;Lcom/metamoji/forSchool/monitoring/ScMonitorList$Completion;)V

    new-instance v3, Lcom/metamoji/forSchool/monitoring/ScMonitorList$41;

    invoke-direct {v3, p0, v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$41;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;Lcom/metamoji/ui/CustomMenuView;)V

    move-object v1, p1

    move-object v4, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/metamoji/ui/CustomMenuView;->ShowActionMenu(Ljava/util/List;Lcom/metamoji/ui/MenuEventListener;Lcom/metamoji/ui/MenuCloseEventListener;Landroid/view/View;Landroid/graphics/Rect;Lcom/metamoji/ui/CustomMenuView$MenuDirection;)V

    return-void
.end method

.method private showWaitView()V
    .locals 1

    .line 4402
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->invokeWaitScreenNow()V

    return-void
.end method

.method private submitReleseImageMonitorViewToExecutor(Ljava/util/concurrent/ExecutorService;Lcom/metamoji/forSchool/monitoring/ScMonitorView;)V
    .locals 1

    .line 2280
    new-instance v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$21;

    invoke-direct {v0, p0, p2}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$21;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;Lcom/metamoji/forSchool/monitoring/ScMonitorView;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private submitRevalidateMonitorViewToExecutor(Ljava/util/concurrent/ExecutorService;Lcom/metamoji/forSchool/monitoring/ScMonitorView;Z)V
    .locals 1

    .line 2264
    new-instance v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$20;

    invoke-direct {v0, p0, p2, p3}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$20;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;Lcom/metamoji/forSchool/monitoring/ScMonitorView;Z)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private updateDragViewLayout(FF)V
    .locals 6

    .line 3885
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3886
    invoke-virtual {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 3887
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 3888
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 3891
    invoke-virtual {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->isChromeOs(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 3893
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3894
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 3895
    iget v0, v0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_0
    move v0, v3

    move v1, v0

    :goto_0
    const/4 v2, 0x2

    .line 3898
    new-array v4, v2, [I

    .line 3899
    iget-object v5, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitors:Lcom/metamoji/forSchool/monitoring/ScMonitorGridView;

    invoke-virtual {v5, v4}, Lcom/metamoji/forSchool/monitoring/ScMonitorGridView;->getLocationOnScreen([I)V

    .line 3901
    iget-object v5, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_dragWindowParams:Landroid/view/WindowManager$LayoutParams;

    float-to-int p1, p1

    aget v3, v4, v3

    add-int/2addr p1, v3

    iget-object v3, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_dragViewSize:Lcom/metamoji/cm/Size;

    iget v3, v3, Lcom/metamoji/cm/Size;->width:I

    div-int/2addr v3, v2

    sub-int/2addr p1, v3

    sub-int/2addr p1, v1

    iput p1, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 3902
    iget-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_dragWindowParams:Landroid/view/WindowManager$LayoutParams;

    float-to-int p2, p2

    const/4 v1, 0x1

    aget v1, v4, v1

    add-int/2addr p2, v1

    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_dragViewSize:Lcom/metamoji/cm/Size;

    iget v1, v1, Lcom/metamoji/cm/Size;->height:I

    div-int/2addr v1, v2

    sub-int/2addr p2, v1

    sub-int/2addr p2, v0

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    return-void
.end method

.method private updateGuidanceLabel()V
    .locals 6

    .line 3131
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v0

    .line 3133
    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewArrayAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    invoke-virtual {v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->getCount()I

    move-result v1

    .line 3134
    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->getSchoolPageType()I

    move-result v2

    const-string v3, ""

    const/4 v4, 0x1

    if-eq v2, v4, :cond_3

    const/4 v5, 0x2

    if-eq v2, v5, :cond_3

    if-eqz v1, :cond_7

    if-eq v1, v4, :cond_7

    .line 3159
    invoke-static {}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->sharedInstance()Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;

    move-result-object v1

    .line 3161
    invoke-virtual {v1}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->getDisplayMonitorType()I

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    .line 3162
    sget v0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SCHOOL_MONITORLISTDLG_MSG_DRAG:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_EVERYONE_ANSWER_STATUS_MSG_3:I

    :goto_0
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_1
    if-eqz v0, :cond_2

    .line 3164
    sget v0, Lcom/metamoji/noteanytime/R$string;->School_MonitorListDlg_Msg_Drag_And_DoubleTap:I

    goto :goto_1

    :cond_2
    sget v0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_EVERYONE_ANSWER_STATUS_MSG_2:I

    :goto_1
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_3
    if-eqz v1, :cond_7

    if-eq v1, v4, :cond_5

    if-eqz v0, :cond_4

    .line 3145
    sget v0, Lcom/metamoji/noteanytime/R$string;->School_MonitorListDlg_Msg_Drag_And_DoubleTap:I

    goto :goto_2

    :cond_4
    sget v0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_EVERYONE_ANSWER_STATUS_MSG_2:I

    :goto_2
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_5
    if-eqz v0, :cond_6

    .line 3142
    sget v0, Lcom/metamoji/noteanytime/R$string;->School_MonitorListDlg_Msg_DoubleTap:I

    goto :goto_3

    :cond_6
    sget v0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_EVERYONE_ANSWER_STATUS_MSG_1:I

    :goto_3
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v3

    .line 3172
    :cond_7
    :goto_4
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_guidanceLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateMonitorSize(Z)V
    .locals 6

    .line 2325
    iget-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_scrollSnapTimer:Ljava/util/Timer;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2326
    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    .line 2327
    iput-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_scrollSnapTimer:Ljava/util/Timer;

    .line 2331
    :cond_0
    iget-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_updateMonitorSizeTimer:Ljava/util/Timer;

    if-eqz p1, :cond_1

    .line 2332
    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    .line 2333
    iput-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_updateMonitorSizeTimer:Ljava/util/Timer;

    .line 2337
    :cond_1
    iget-wide v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_itemHeight:D

    iget-wide v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_zoom:D

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    .line 2343
    iget-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_scrollView:Lcom/metamoji/forSchool/monitoring/ScMonitorScrollView;

    invoke-virtual {p1}, Lcom/metamoji/forSchool/monitoring/ScMonitorScrollView;->getHeight()I

    move-result p1

    int-to-double v2, p1

    const-wide v4, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v2, v4

    cmpg-double p1, v2, v0

    if-gez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_scrollSnap:Z

    .line 2345
    invoke-static {}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->sharedInstance()Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;

    move-result-object p1

    .line 2346
    iget-wide v0, p1, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->offsetY:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_3

    .line 2347
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/forSchool/monitoring/ScMonitorList$22;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$22;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void
.end method

.method private updateMonitorSizeWithAnimation()V
    .locals 1

    const/4 v0, 0x1

    .line 2320
    invoke-direct {p0, v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->updateMonitorSize(Z)V

    return-void
.end method

.method private updateMonitorUserStatus(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .line 2840
    invoke-static {}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->sharedInstance()Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;

    move-result-object v0

    .line 2841
    invoke-virtual {v0}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->getDisplayMonitorType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_7

    .line 2842
    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->getSchoolPageType()I

    move-result v0

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    move v0, v1

    .line 2886
    :goto_0
    iget-object v3, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewArrayAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    invoke-virtual {v3}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 2887
    iget-object v3, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewArrayAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    invoke-virtual {v3, v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    .line 2888
    invoke-virtual {v3}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2889
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/forSchool/monitoring/ScMonitorList$29;

    invoke-direct {v1, p0, v3, p1, p2}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$29;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;Lcom/metamoji/forSchool/monitoring/ScMonitorView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2900
    :cond_1
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_hideMonitorViewArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    .line 2901
    invoke-virtual {v3}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2902
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/forSchool/monitoring/ScMonitorList$30;

    invoke-direct {v1, p0, v3, p1, p2}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$30;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;Lcom/metamoji/forSchool/monitoring/ScMonitorView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return v2

    .line 2847
    :cond_3
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_pageController:Lcom/metamoji/nt/NtPageController;

    invoke-virtual {v0, p1}, Lcom/metamoji/nt/NtPageController;->getPersonalLayerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    move v3, v1

    .line 2850
    :goto_1
    iget-object v4, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewArrayAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    invoke-virtual {v4}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 2851
    iget-object v4, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewArrayAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    invoke-virtual {v4, v3}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    .line 2852
    invoke-virtual {v4}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->getLayerId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2853
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/forSchool/monitoring/ScMonitorList$27;

    invoke-direct {v1, p0, v4, p1, p2}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$27;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;Lcom/metamoji/forSchool/monitoring/ScMonitorView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return v2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2864
    :cond_5
    iget-object v3, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_hideMonitorViewArray:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    .line 2865
    invoke-virtual {v4}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->getLayerId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2866
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/forSchool/monitoring/ScMonitorList$28;

    invoke-direct {v1, p0, v4, p1, p2}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$28;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;Lcom/metamoji/forSchool/monitoring/ScMonitorView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return v2

    :cond_7
    move v0, v1

    .line 2918
    :goto_2
    iget-object v3, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewArrayAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    invoke-virtual {v3}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_9

    .line 2919
    iget-object v3, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewArrayAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    invoke-virtual {v3, v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    .line 2920
    invoke-virtual {v3}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2921
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/forSchool/monitoring/ScMonitorList$31;

    invoke-direct {v1, p0, v3, p1, p2}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$31;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;Lcom/metamoji/forSchool/monitoring/ScMonitorView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return v2

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2932
    :cond_9
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_hideMonitorViewArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    .line 2933
    invoke-virtual {v3}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 2934
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/forSchool/monitoring/ScMonitorList$32;

    invoke-direct {v1, p0, v3, p1, p2}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$32;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;Lcom/metamoji/forSchool/monitoring/ScMonitorView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return v2

    :cond_b
    return v1
.end method

.method private updateOfflineUserBtnCaption()V
    .locals 2

    .line 3227
    iget v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_offlineUserMode:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 3235
    sget v0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_BRIGHTLY_DISPLAY_ABSENTEES:I

    goto :goto_0

    .line 3232
    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_DARKLY_DISPLAY_ABSENTEES:I

    goto :goto_0

    .line 3229
    :cond_1
    sget v0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_HIDE_ABSENTEES:I

    .line 3238
    :goto_0
    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_offlineUserBtn:Lcom/metamoji/ui/common/UiButton;

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/metamoji/ui/common/UiButton;->setMainTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updatePageJumpBtnEnabled()V
    .locals 2

    .line 2732
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/forSchool/monitoring/ScMonitorList$26;

    invoke-direct {v1, p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$26;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateShowHideBtnVisible()V
    .locals 9

    .line 3368
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_selectedMonitorViewArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_selectedMonitorViewArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v3, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewArrayAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    invoke-virtual {v3}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->getCount()I

    move-result v3

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 3371
    :cond_0
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_selectItemsBtn:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    goto :goto_1

    .line 3369
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_selectItemsBtn:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    .line 3376
    :goto_1
    iget v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_offlineUserMode:I

    .line 3386
    iget-object v3, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_hideMonitorViewArray:Ljava/util/List;

    if-nez v0, :cond_3

    .line 3378
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    .line 3379
    const-string v4, "offline"

    invoke-virtual {v3}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->getStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    .line 3386
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_5

    .line 3389
    :cond_4
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_showAllItemsBtn:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    goto :goto_3

    .line 3391
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_showAllItemsBtn:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    .line 3396
    :goto_3
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_showAllItemsBtn:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiButton;->getVisibility()I

    .line 3409
    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->getSchoolPageType()I

    .line 3427
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_offlineUserBtn:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    .line 3429
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_visibleStudentNameBtn:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    .line 3433
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_displayMonitorTypeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 3434
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    int-to-double v3, v0

    .line 3435
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_displayMonitorTypeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    int-to-double v5, v0

    .line 3436
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_showAllItemsBtn:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_showAllItemsBtn:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiButton;->getWidth()I

    move-result v0

    goto :goto_4

    :cond_6
    move v0, v1

    :goto_4
    int-to-double v7, v0

    add-double/2addr v5, v7

    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_selectItemsBtn:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_selectItemsBtn:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiButton;->getWidth()I

    move-result v0

    goto :goto_5

    :cond_7
    move v0, v1

    :goto_5
    int-to-double v7, v0

    add-double/2addr v5, v7

    .line 3437
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_showAllItemsBtn:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    cmpg-double v0, v3, v5

    if-ltz v0, :cond_9

    :cond_8
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_selectItemsBtn:Lcom/metamoji/ui/common/UiButton;

    .line 3438
    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a

    cmpg-double v0, v3, v5

    if-gez v0, :cond_a

    .line 3439
    :cond_9
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_displayMonitorTypeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_6

    .line 3441
    :cond_a
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_displayMonitorTypeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3444
    :goto_6
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v0

    if-nez v0, :cond_b

    .line 3445
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_doItNumLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3446
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_notYetNumLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3447
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_helpNumLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3448
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_offlineUserBtn:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    .line 3449
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_visibleStudentNameBtn:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    .line 3450
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_displayMonitorTypeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_b
    return-void
.end method

.method private updateStatusFrameColor(Lcom/metamoji/forSchool/monitoring/ScMonitorView;Ljava/lang/String;)V
    .locals 2

    .line 3012
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/forSchool/monitoring/ScMonitorList$33;

    invoke-direct {v1, p0, p1, p2}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$33;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;Lcom/metamoji/forSchool/monitoring/ScMonitorView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateStatusNum()V
    .locals 2

    .line 3032
    invoke-static {}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->sharedInstance()Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;

    move-result-object v0

    .line 3034
    invoke-virtual {v0}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->getDisplayMonitorType()I

    move-result v0

    if-nez v0, :cond_1

    .line 3035
    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->getSchoolPageType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 3043
    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->updateStatusNumForNormalAndClassPage()V

    return-void

    .line 3038
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->updateStatusNumFromUserAndGroupPage()V

    return-void

    .line 3047
    :cond_1
    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->updateStatusNumForNormalAndClassPage()V

    return-void
.end method

.method private updateStatusNumForNormalAndClassPage()V
    .locals 7

    .line 3096
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->schoolPersonalStatusDic()Ljava/util/Map;

    move-result-object v0

    .line 3097
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3099
    invoke-static {v5}, Lcom/metamoji/forSchool/ScSchoolUtils;->isBelongClassStudentWithUserId(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_0

    .line 3103
    :cond_1
    invoke-static {v0, v5}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3104
    const-string v6, "doit"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3107
    :cond_2
    const-string v6, "help"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3110
    :cond_3
    const-string v6, "notyet"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3115
    :cond_4
    invoke-direct {p0, v2, v3, v4}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->updateStatusNumWithDoItNum(III)V

    return-void
.end method

.method private updateStatusNumFromUserAndGroupPage()V
    .locals 9

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    .line 3058
    :goto_0
    iget-object v4, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewArrayAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    invoke-virtual {v4}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->getCount()I

    move-result v4

    const-string v5, "notyet"

    const-string v6, "help"

    const-string v7, "doit"

    if-ge v0, v4, :cond_3

    .line 3059
    iget-object v4, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewArrayAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    invoke-virtual {v4, v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    .line 3060
    invoke-virtual {v4}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->getStatus()Ljava/lang/String;

    move-result-object v4

    .line 3061
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3064
    :cond_0
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3067
    :cond_1
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3072
    :cond_3
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_hideMonitorViewArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    .line 3073
    invoke-virtual {v4}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->getStatus()Ljava/lang/String;

    move-result-object v4

    .line 3074
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3077
    :cond_5
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3080
    :cond_6
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 3086
    :cond_7
    invoke-direct {p0, v1, v3, v2}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->updateStatusNumWithDoItNum(III)V

    return-void
.end method

.method private updateStatusNumWithDoItNum(III)V
    .locals 1

    .line 3119
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%d"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 3120
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 3121
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-static {v0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 3122
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_doItNumLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3123
    iget-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_notYetNumLabel:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3124
    iget-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_helpNumLabel:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateUserStatus(Lcom/metamoji/forSchool/monitoring/ScMonitorView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 2953
    invoke-virtual {p1}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->isGroup()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2954
    invoke-direct {p0, p1, p3}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->updateStatusFrameColor(Lcom/metamoji/forSchool/monitoring/ScMonitorView;Ljava/lang/String;)V

    return-void

    .line 2960
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2961
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2962
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2963
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2964
    invoke-virtual {p1}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->getMemberList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "doit"

    const-string v7, "notyet"

    const-string v8, "help"

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 2965
    const-string v9, "user-id"

    invoke-static {v5, v9}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 2966
    const-string v10, "personalStatus"

    if-eqz p2, :cond_2

    invoke-virtual {v9, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2967
    invoke-interface {v5, v10, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2969
    :cond_2
    const-string v9, "user-name"

    invoke-static {v5, v9}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 2970
    invoke-static {v5, v10}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v9, :cond_1

    if-eqz v5, :cond_3

    .line 2972
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2974
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    if-eqz v5, :cond_4

    .line 2975
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2977
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    if-eqz v5, :cond_5

    .line 2978
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2980
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2983
    :cond_5
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2987
    :cond_6
    invoke-virtual {p1, v1, v0, v2, v3}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->setGroupStatus(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 2991
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p3

    add-int/2addr p2, p3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p3

    add-int/2addr p2, p3

    .line 2992
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_7

    move-object v6, v8

    goto :goto_1

    :cond_7
    if-lez p2, :cond_9

    .line 2996
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p3

    if-ne p3, p2, :cond_8

    goto :goto_1

    :cond_8
    move-object v6, v7

    goto :goto_1

    .line 2995
    :cond_9
    const-string v6, "offline"

    .line 3004
    :goto_1
    invoke-direct {p0, p1, v6}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->updateStatusFrameColor(Lcom/metamoji/forSchool/monitoring/ScMonitorView;Ljava/lang/String;)V

    return-void
.end method

.method private updateZoomBtnEnabled()V
    .locals 8

    .line 2650
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_zoomInBtn:Landroid/widget/ImageView;

    iget-wide v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_zoom:D

    iget-wide v3, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_zoomMax:D

    cmpg-double v1, v1, v3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2651
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_zoomOutBtn:Landroid/widget/ImageView;

    iget-wide v4, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_zoom:D

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, v4, v6

    if-lez v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2654
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_zoomInBtn:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_zoomOutBtn:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v3, 0x8

    .line 2656
    :cond_2
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_zoomInBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2657
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_zoomOutBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public appendStudent(Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringAppendStudentEvent;)V
    .locals 8

    .line 4757
    invoke-virtual {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->updateStudentCountViewingPage()V

    .line 4759
    invoke-static {}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->sharedInstance()Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;

    move-result-object v0

    .line 4761
    iget v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_offlineUserMode:I

    if-nez v1, :cond_0

    const/4 p1, 0x1

    .line 4762
    iput-boolean p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_needUpdateFlag:Z

    .line 4763
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$43;

    invoke-direct {v0, p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$43;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void

    .line 4770
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->getDisplayMonitorType()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 4774
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4775
    iget-object p1, p1, Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringAppendStudentEvent;->studentViewingPageInfo:Ljava/util/List;

    .line 4776
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "pageId"

    const-string v3, "layerId"

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/forSchool/monitoring/ScStudentViewingPageInfo;

    .line 4777
    iget-object v4, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_pageController:Lcom/metamoji/nt/NtPageController;

    iget-object v5, v1, Lcom/metamoji/forSchool/monitoring/ScStudentViewingPageInfo;->userId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/metamoji/nt/NtPageController;->getPersonalLayerInfo(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    if-nez v4, :cond_2

    const/4 v4, 0x0

    goto :goto_1

    .line 4778
    :cond_2
    invoke-static {v4, v3}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4779
    :goto_1
    iget-object v5, v1, Lcom/metamoji/forSchool/monitoring/ScStudentViewingPageInfo;->pageId:Ljava/lang/String;

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_pageController:Lcom/metamoji/nt/NtPageController;

    invoke-virtual {v5}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_3
    iget-object v5, v1, Lcom/metamoji/forSchool/monitoring/ScStudentViewingPageInfo;->pageId:Ljava/lang/String;

    .line 4780
    :goto_2
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 4781
    invoke-interface {v6, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4782
    invoke-interface {v6, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4783
    iget-object v1, v1, Lcom/metamoji/forSchool/monitoring/ScStudentViewingPageInfo;->userId:Ljava/lang/String;

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    .line 4786
    :goto_3
    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewArrayAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    invoke-virtual {v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_6

    .line 4787
    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewArrayAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    invoke-virtual {v1, p1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    .line 4789
    invoke-virtual {v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->getUserId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 4791
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 4792
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 4793
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4794
    invoke-virtual {v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->getPageId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 4795
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v6

    new-instance v7, Lcom/metamoji/forSchool/monitoring/ScMonitorList$44;

    invoke-direct {v7, p0, v1, v5, v4}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$44;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;Lcom/metamoji/forSchool/monitoring/ScMonitorView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 4814
    :cond_6
    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->hideOfflineUser()V

    return-void
.end method

.method public checkVisibleActually(Lcom/metamoji/forSchool/monitoring/ScMonitorView;)Z
    .locals 7

    .line 2568
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewArrayAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    invoke-virtual {v0, p1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->getPosition(Ljava/lang/Object;)I

    move-result p1

    .line 2569
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitors:Lcom/metamoji/forSchool/monitoring/ScMonitorGridView;

    invoke-virtual {v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorGridView;->getWidth()I

    move-result v0

    .line 2571
    iget-wide v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_itemWidth:D

    iget-wide v3, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_zoom:D

    mul-double/2addr v1, v3

    double-to-int v1, v1

    .line 2572
    iget-wide v5, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_itemHeight:D

    mul-double/2addr v5, v3

    double-to-int v2, v5

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 2578
    :cond_0
    div-int/2addr v0, v1

    .line 2579
    rem-int v3, p1, v0

    mul-int/2addr v3, v1

    .line 2580
    div-int/2addr p1, v0

    mul-int/2addr p1, v2

    .line 2582
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v4, v3

    int-to-float v5, p1

    add-int/2addr v3, v1

    int-to-float v1, v3

    add-int/2addr p1, v2

    int-to-float p1, p1

    invoke-direct {v0, v4, v5, v1, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 2584
    new-instance p1, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_scrollView:Lcom/metamoji/forSchool/monitoring/ScMonitorScrollView;

    invoke-virtual {v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorScrollView;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_scrollView:Lcom/metamoji/forSchool/monitoring/ScMonitorScrollView;

    invoke-virtual {v2}, Lcom/metamoji/forSchool/monitoring/ScMonitorScrollView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_scrollView:Lcom/metamoji/forSchool/monitoring/ScMonitorScrollView;

    invoke-virtual {v3}, Lcom/metamoji/forSchool/monitoring/ScMonitorScrollView;->getScrollY()I

    move-result v3

    iget-object v4, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_scrollView:Lcom/metamoji/forSchool/monitoring/ScMonitorScrollView;

    invoke-virtual {v4}, Lcom/metamoji/forSchool/monitoring/ScMonitorScrollView;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {p1, v4, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 2585
    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public closeDialog()V
    .locals 2

    .line 5154
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/forSchool/monitoring/ScMonitorList$54;

    invoke-direct {v1, p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$54;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method createDragMonitorViews()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/forSchool/monitoring/ScMonitorView;",
            ">;"
        }
    .end annotation

    .line 3985
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3987
    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitors:Lcom/metamoji/forSchool/monitoring/ScMonitorGridView;

    invoke-virtual {v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorGridView;->getNumColumns()I

    move-result v1

    .line 3988
    iget-wide v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_itemWidth:D

    iget-wide v4, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_zoom:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    .line 3989
    iget-wide v6, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_itemHeight:D

    mul-double/2addr v6, v4

    double-to-int v3, v6

    const/4 v4, 0x0

    .line 3991
    :goto_0
    iget-object v5, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewArrayAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    invoke-virtual {v5}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->getCount()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 3992
    iget-object v5, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewArrayAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    invoke-virtual {v5, v4}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    .line 3993
    rem-int v6, v4, v1

    mul-int/2addr v6, v2

    .line 3994
    div-int v7, v4, v1

    mul-int/2addr v7, v3

    .line 3995
    new-instance v8, Landroid/graphics/RectF;

    int-to-float v9, v6

    int-to-float v10, v7

    add-int/2addr v6, v2

    int-to-float v6, v6

    add-int/2addr v7, v3

    int-to-float v7, v7

    invoke-direct {v8, v9, v10, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 3996
    iput-object v8, v5, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->rect:Landroid/graphics/RectF;

    .line 3998
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public currentPageChanged(Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringCurrentPageChangedEvent;)V
    .locals 3

    .line 4975
    iget-boolean v0, p1, Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringCurrentPageChangedEvent;->force:Z

    .line 4977
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    new-instance v2, Lcom/metamoji/forSchool/monitoring/ScMonitorList$51;

    invoke-direct {v2, p0, p1, v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$51;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringCurrentPageChangedEvent;Z)V

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public dismiss()V
    .locals 0

    .line 1502
    invoke-super {p0}, Lcom/metamoji/ui/dialog/NtDialog;->dismiss()V

    return-void
.end method

.method public dismissAllowingStateLoss()V
    .locals 0

    .line 1490
    invoke-super {p0}, Lcom/metamoji/ui/dialog/NtDialog;->dismissAllowingStateLoss()V

    return-void
.end method

.method public endReceivingData(Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringReceivingDataEndedEvent;)V
    .locals 5

    .line 5058
    iget-object p1, p1, Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringReceivingDataEndedEvent;->layerId:Ljava/lang/String;

    .line 5060
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_pageController:Lcom/metamoji/nt/NtPageController;

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 5065
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_4

    .line 5070
    :cond_1
    invoke-static {p1}, Lcom/metamoji/forSchool/ScSchoolUtils;->isPersonalLayerId(Ljava/lang/String;)Z

    move-result v0

    .line 5071
    invoke-static {p1}, Lcom/metamoji/forSchool/ScSchoolUtils;->isClassLayerId(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    .line 5074
    invoke-virtual {p0, v2}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->setMonitorViewThumbnailCache(Landroid/graphics/Bitmap;)V

    .line 5076
    invoke-static {}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->sharedInstance()Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;

    move-result-object v2

    .line 5077
    invoke-virtual {v2}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->getDisplayMonitorType()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_4

    .line 5078
    :goto_0
    iget-object v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewArrayAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    invoke-virtual {v2}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->getCount()I

    move-result v2

    if-ge v3, v2, :cond_6

    .line 5079
    iget-object v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewArrayAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    invoke-virtual {v2, v3}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    .line 5080
    invoke-virtual {v2}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->getLayerId()Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_2

    if-eqz v4, :cond_2

    .line 5083
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    .line 5088
    :cond_2
    invoke-virtual {v2, v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->endReceiveData(Z)V

    if-eqz v0, :cond_3

    if-nez v1, :cond_3

    goto :goto_4

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5096
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewArrayAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    invoke-virtual {v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->getCount()I

    move-result v1

    if-ge v3, v1, :cond_6

    .line 5097
    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewArrayAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    invoke-virtual {v1, v3}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    .line 5098
    invoke-virtual {v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->getLayerId()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_5

    if-eqz v2, :cond_5

    .line 5101
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_3

    .line 5106
    :cond_5
    invoke-virtual {v1, v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->endReceiveData(Z)V

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    :goto_4
    return-void
.end method

.method public getGridView()Landroid/widget/GridView;
    .locals 1

    .line 4671
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitors:Lcom/metamoji/forSchool/monitoring/ScMonitorGridView;

    return-object v0
.end method

.method public getMonitorViewThumbnailCache()Landroid/graphics/Bitmap;
    .locals 1

    .line 5197
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewThumbnailCache:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getPageController()Lcom/metamoji/nt/NtPageController;
    .locals 1

    .line 5201
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_pageController:Lcom/metamoji/nt/NtPageController;

    return-object v0
.end method

.method public handlePinchGesture(F)V
    .locals 1

    .line 2641
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "*** Scale :%f"

    invoke-static {v0, p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public handlePinchGestureBegan(I)V
    .locals 2

    .line 2612
    iget-wide v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_zoom:D

    iput-wide v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_pinchStartZoom:D

    const/4 v0, 0x1

    .line 2615
    iput-boolean v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_pinchingFlag:Z

    .line 2616
    iput p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_pinchFocusMonitorViewIndex:I

    return-void
.end method

.method public handlePinchGestureEnd(F)V
    .locals 11

    .line 2619
    iget-wide v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_pinchStartZoom:D

    float-to-double v2, p1

    mul-double/2addr v0, v2

    .line 2621
    iget-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitors:Lcom/metamoji/forSchool/monitoring/ScMonitorGridView;

    invoke-virtual {p1}, Lcom/metamoji/forSchool/monitoring/ScMonitorGridView;->getWidth()I

    move-result p1

    int-to-double v2, p1

    .line 2622
    iget-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewArrayAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    invoke-virtual {p1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->getCount()I

    move-result p1

    .line 2624
    iget-wide v4, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_pinchStartZoom:D

    cmpg-double v4, v4, v0

    .line 2627
    iget-wide v5, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_itemWidth:D

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    if-gez v4, :cond_0

    int-to-double v9, p1

    mul-double/2addr v5, v0

    div-double v0, v2, v5

    .line 2625
    invoke-static {v9, v10, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    goto :goto_0

    :cond_0
    mul-double/2addr v5, v0

    div-double v0, v2, v5

    .line 2627
    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    :goto_0
    double-to-int p1, v0

    int-to-double v0, p1

    div-double/2addr v2, v0

    .line 2629
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    .line 2630
    iget-wide v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_itemWidth:D

    div-double/2addr v0, v2

    const/4 p1, 0x0

    .line 2633
    iput-boolean p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_pinchingFlag:Z

    .line 2634
    iget-object v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewArrayAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    invoke-virtual {v2}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->notifyDataSetChanged()V

    .line 2635
    iput p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_pinchFocusMonitorViewIndex:I

    .line 2637
    iget-wide v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_zoomMax:D

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->changeZoom(D)V

    return-void
.end method

.method handleVisibleStudentNameButtonTap()V
    .locals 3

    .line 4695
    iget-boolean v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_visibleStudentName:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_visibleStudentName:Z

    .line 4698
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 4699
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    .line 4700
    iget-boolean v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_visibleStudentName:Z

    xor-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/metamoji/nt/NtNoteController;->setHiddenStudentName(Z)V

    .line 4704
    invoke-static {}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->sharedInstance()Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;

    move-result-object v0

    .line 4705
    iput-boolean v1, v0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->resetMonitoringStateWhenClose:Z

    .line 4707
    invoke-virtual {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->updateVisibleStudentNameBtnCaption()V

    .line 4709
    iget-boolean v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_visibleStudentName:Z

    invoke-virtual {p0, v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->setVisibleNameLabel(Z)V

    return-void
.end method

.method public isGray()Z
    .locals 3

    .line 3179
    invoke-static {}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->sharedInstance()Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;

    move-result-object v0

    .line 3181
    invoke-virtual {v0}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->getDisplayMonitorType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 3182
    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->getSchoolPageType()I

    .line 3187
    iget v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_offlineUserMode:I

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    return v1

    .line 3193
    :cond_1
    iget v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_offlineUserMode:I

    if-ne v0, v2, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public isSelected(Lcom/metamoji/forSchool/monitoring/ScMonitorView;)Z
    .locals 1

    .line 2593
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_selectedMonitorViewArray:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method longPressEnd()V
    .locals 2

    .line 4235
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_longLongPressHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_longLongPressReceiver:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 4237
    iput-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_heldMonitorViewForLongPress:Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    const/4 v0, 0x0

    .line 4238
    iput v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_longPressX:F

    .line 4239
    iput v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_longPressY:F

    return-void
.end method

.method public monitorDoubleTap(Lcom/metamoji/forSchool/monitoring/ScMonitorView;Z)V
    .locals 12

    .line 3541
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isScreenLock()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3543
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->existPresenter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3544
    sget p1, Lcom/metamoji/noteanytime/R$string;->School_MonitorListDlg_Msg_Error_EditLayer_Personal:I

    invoke-static {p1}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(I)V

    return-void

    .line 3549
    :cond_0
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->isAttentionMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3551
    sget p1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_MSG_ERROR_ATTENTION:I

    invoke-static {p1}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(I)V

    return-void

    .line 3555
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->getPageId()Ljava/lang/String;

    move-result-object v0

    .line 3559
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v1

    .line 3560
    invoke-virtual {v1}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v1

    .line 3562
    invoke-static {}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->sharedInstance()Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;

    move-result-object v2

    .line 3563
    invoke-virtual {v2}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->getDisplayMonitorType()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v2, :cond_2

    .line 3564
    invoke-virtual {p1}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->getLayerId()Ljava/lang/String;

    move-result-object v2

    .line 3565
    invoke-virtual {p1}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->getLayerName()Ljava/lang/String;

    move-result-object p1

    .line 3568
    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->getSchoolPageType()I

    move-result v6

    if-eq v6, v4, :cond_6

    if-eq v6, v3, :cond_4

    .line 3575
    sget p1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_COULDNT_EXEC_ACTION:I

    invoke-static {p1}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(I)V

    return-void

    .line 3579
    :cond_2
    invoke-virtual {v1, v0}, Lcom/metamoji/nt/NtNoteController;->pageFromPageId(Ljava/lang/String;)Lcom/metamoji/nt/NtPageController;

    move-result-object v2

    .line 3581
    invoke-virtual {v2}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result v6

    if-eq v6, v4, :cond_5

    if-eq v6, v3, :cond_3

    .line 3596
    sget p1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_COULDNT_EXEC_ACTION:I

    invoke-static {p1}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(I)V

    return-void

    .line 3585
    :cond_3
    invoke-virtual {p1}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/metamoji/nt/NtNoteController;->getBelongGroupDic(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 3586
    invoke-virtual {p1}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->getUserId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/metamoji/nt/NtPageController;->getPersonalLayerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3587
    const-string p1, "group-name"

    invoke-static {v3, p1}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :cond_4
    move-object v11, p1

    move-object v10, v2

    move v9, v4

    goto :goto_0

    .line 3592
    :cond_5
    invoke-virtual {p1}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/metamoji/nt/NtPageController;->getPersonalLayerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3593
    invoke-virtual {p1}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->getLayerName()Ljava/lang/String;

    move-result-object p1

    :cond_6
    move-object v11, p1

    move-object v10, v2

    move v9, v5

    .line 3601
    :goto_0
    iput-boolean v4, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->monitorDoubleTapped:Z

    .line 3605
    invoke-virtual {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->dismiss()V

    .line 3609
    new-instance v6, Lcom/metamoji/forSchool/monitoring/ScMonitorList$36;

    move-object v7, p0

    move v8, p2

    invoke-direct/range {v6 .. v11}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$36;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;ZZLjava/lang/String;Ljava/lang/String;)V

    .line 3661
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object p1

    if-eqz v0, :cond_7

    .line 3662
    invoke-virtual {p1}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 3664
    invoke-virtual {p0, v0, v6}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->pageJump(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void

    .line 3666
    :cond_7
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public monitorLongLongPress(Lcom/metamoji/forSchool/monitoring/ScMonitorView;FF)V
    .locals 6

    .line 3710
    iget-boolean p2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->monitorDoubleTapped:Z

    if-eqz p2, :cond_0

    goto/16 :goto_1

    .line 3717
    :cond_0
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/forSchool/ScSchoolManager;->isScreenLock()Z

    move-result p2

    if-nez p2, :cond_1

    .line 3719
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/ns/NsCollaboManager;->existPresenter()Z

    move-result p2

    if-eqz p2, :cond_1

    goto/16 :goto_1

    .line 3724
    :cond_1
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->isAttentionMode()Z

    move-result p2

    if-eqz p2, :cond_2

    goto/16 :goto_1

    .line 3730
    :cond_2
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object p2

    .line 3731
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object p3

    .line 3733
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3736
    invoke-virtual {p3}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_1

    .line 3752
    :cond_3
    invoke-virtual {p2}, Lcom/metamoji/ns/NsCollaboManager;->existPresenter()Z

    move-result p2

    if-nez p2, :cond_5

    invoke-virtual {p3}, Lcom/metamoji/forSchool/ScSchoolManager;->isScreenLock()Z

    move-result p2

    if-nez p2, :cond_5

    .line 3753
    invoke-static {}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->sharedInstance()Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;

    move-result-object p2

    .line 3755
    invoke-virtual {p2}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->getDisplayMonitorType()I

    move-result p2

    if-nez p2, :cond_4

    .line 3756
    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->getSchoolPageType()I

    move-result p2

    goto :goto_0

    .line 3758
    :cond_4
    invoke-virtual {p1}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->getPageId()Ljava/lang/String;

    move-result-object p2

    .line 3759
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 3760
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    .line 3761
    invoke-virtual {v0, p2}, Lcom/metamoji/nt/NtNoteController;->pageFromPageId(Ljava/lang/String;)Lcom/metamoji/nt/NtPageController;

    move-result-object p2

    .line 3762
    invoke-virtual {p2}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result p2

    :goto_0
    if-eqz p2, :cond_5

    const/4 v0, 0x3

    if-eq p2, v0, :cond_5

    .line 3766
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 3767
    new-instance p2, Lcom/metamoji/ui/UiMenuItem;

    invoke-direct {p2}, Lcom/metamoji/ui/UiMenuItem;-><init>()V

    .line 3768
    sget v0, Lcom/metamoji/noteanytime/R$string;->SCHOOLMENU_USERLIST_START_FEATURED_PERSONAL_MODE:I

    invoke-virtual {p2, v0}, Lcom/metamoji/ui/UiMenuItem;->set_captionid(I)V

    .line 3769
    sget-object v0, Lcom/metamoji/ui/UiMenuItem$MenuKind;->NORMAL:Lcom/metamoji/ui/UiMenuItem$MenuKind;

    invoke-virtual {p2, v0}, Lcom/metamoji/ui/UiMenuItem;->set_kind(Lcom/metamoji/ui/UiMenuItem$MenuKind;)V

    .line 3770
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->view_answer:I

    invoke-virtual {p2, v0}, Lcom/metamoji/ui/UiMenuItem;->set_NormalIcon_resid(I)V

    .line 3771
    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_CONTEXTMENU_USERLIST_START_FEATURED_PERSONAL_MODE_BY_USER:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p2, v0}, Lcom/metamoji/ui/UiMenuItem;->set_command(Ljava/lang/Object;)V

    .line 3772
    invoke-virtual {p2, p1}, Lcom/metamoji/ui/UiMenuItem;->set_options(Ljava/lang/Object;)V

    .line 3774
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3781
    :cond_5
    invoke-virtual {p3}, Lcom/metamoji/forSchool/ScSchoolManager;->isScreenLock()Z

    move-result p2

    if-nez p2, :cond_6

    .line 3782
    invoke-virtual {p1}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->isGroup()Z

    move-result p2

    if-nez p2, :cond_6

    invoke-virtual {p1}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->getStatus()Ljava/lang/String;

    move-result-object p2

    const-string p3, "offline"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 3783
    new-instance p2, Lcom/metamoji/ui/UiMenuItem;

    invoke-direct {p2}, Lcom/metamoji/ui/UiMenuItem;-><init>()V

    .line 3784
    sget p3, Lcom/metamoji/noteanytime/R$string;->ShareMenu_Context_UserList_Become_Presenter:I

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/UiMenuItem;->set_captionid(I)V

    .line 3785
    sget-object p3, Lcom/metamoji/ui/UiMenuItem$MenuKind;->NORMAL:Lcom/metamoji/ui/UiMenuItem$MenuKind;

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/UiMenuItem;->set_kind(Lcom/metamoji/ui/UiMenuItem$MenuKind;)V

    .line 3786
    sget p3, Lcom/metamoji/noteanytime/R$drawable;->menu_icon_share_chair_mode_n:I

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/UiMenuItem;->set_NormalIcon_resid(I)V

    .line 3787
    sget-object p3, Lcom/metamoji/nt/NtCommand;->CMD_COLLABO_CONTEXTMENU_USERLIST_BECOME_PRESENTER:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/UiMenuItem;->set_command(Ljava/lang/Object;)V

    .line 3788
    invoke-virtual {p2, p1}, Lcom/metamoji/ui/UiMenuItem;->set_options(Ljava/lang/Object;)V

    .line 3790
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3794
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_7

    .line 3795
    iget-object p2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitors:Lcom/metamoji/forSchool/monitoring/ScMonitorGridView;

    invoke-virtual {p2}, Lcom/metamoji/forSchool/monitoring/ScMonitorGridView;->getFirstVisiblePosition()I

    move-result p2

    .line 3796
    iget-object p3, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewArrayAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    invoke-virtual {p3, p1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->getPosition(Ljava/lang/Object;)I

    move-result p1

    .line 3797
    iget-object p3, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitors:Lcom/metamoji/forSchool/monitoring/ScMonitorGridView;

    sub-int/2addr p1, p2

    invoke-virtual {p3, p1}, Lcom/metamoji/forSchool/monitoring/ScMonitorGridView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 3798
    sget p2, Lcom/metamoji/noteanytime/R$id;->image_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 3799
    sget-object v3, Lcom/metamoji/ui/CustomMenuView$MenuDirection;->MENU_UP:Lcom/metamoji/ui/CustomMenuView$MenuDirection;

    new-instance v5, Lcom/metamoji/forSchool/monitoring/ScMonitorList$37;

    invoke-direct {v5, p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$37;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)V

    const/4 v4, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->showActionMenu(Ljava/util/List;Landroid/view/View;Lcom/metamoji/ui/CustomMenuView$MenuDirection;ZLcom/metamoji/forSchool/monitoring/ScMonitorList$Completion;)V

    :cond_7
    :goto_1
    return-void
.end method

.method public monitorLongPress(Lcom/metamoji/forSchool/monitoring/ScMonitorView;FF)V
    .locals 1

    .line 3693
    iget-boolean v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->monitorDoubleTapped:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3697
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->dragStart(Lcom/metamoji/forSchool/monitoring/ScMonitorView;FF)V

    .line 3698
    invoke-direct {p0, p2, p3}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->updateDragViewLayout(FF)V

    .line 3699
    invoke-virtual {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3700
    iget-object p2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_dragView:Landroid/widget/ImageView;

    if-eqz p2, :cond_1

    .line 3701
    iget-object p3, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_dragWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p2, p3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public monitorSingleTap(Lcom/metamoji/forSchool/monitoring/ScMonitorView;)V
    .locals 2

    .line 3674
    invoke-virtual {p0, p1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->isSelected(Lcom/metamoji/forSchool/monitoring/ScMonitorView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3675
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_selectedMonitorViewArray:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3678
    :cond_0
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewArrayAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    invoke-virtual {v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    return-void

    .line 3681
    :cond_1
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_selectedMonitorViewArray:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3683
    :goto_0
    invoke-virtual {p1}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->selectStatusChanged()V

    .line 3686
    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->updateShowHideBtnVisible()V

    return-void
.end method

.method moveDragView(FF)V
    .locals 6

    .line 4085
    invoke-direct {p0, p1, p2}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->updateDragViewLayout(FF)V

    .line 4086
    invoke-virtual {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4087
    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_dragView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 4088
    iget-object v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_dragWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4092
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->moveUnheldMonitorViewsAwayFromPointOfView(FF)V

    .line 4095
    iget-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_scrollView:Lcom/metamoji/forSchool/monitoring/ScMonitorScrollView;

    invoke-virtual {p1}, Lcom/metamoji/forSchool/monitoring/ScMonitorScrollView;->getScrollY()I

    move-result p1

    .line 4096
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_scrollView:Lcom/metamoji/forSchool/monitoring/ScMonitorScrollView;

    invoke-virtual {v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorScrollView;->getScrollY()I

    move-result v0

    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_scrollView:Lcom/metamoji/forSchool/monitoring/ScMonitorScrollView;

    invoke-virtual {v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorScrollView;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1e

    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-gez p1, :cond_1

    .line 4098
    iget-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_autoScrollTimer:Ljava/util/Timer;

    if-nez p1, :cond_2

    .line 4099
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_autoScrollTimer:Ljava/util/Timer;

    .line 4100
    new-instance v1, Lcom/metamoji/forSchool/monitoring/ScMonitorList$38;

    invoke-direct {v1, p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$38;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)V

    const-wide/16 v2, 0x14

    const-wide/16 v4, 0x14

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void

    :cond_1
    add-int/lit8 v0, v0, -0x1e

    int-to-float p1, v0

    cmpl-float p1, p2, p1

    if-lez p1, :cond_3

    .line 4114
    iget-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_autoScrollTimer:Ljava/util/Timer;

    if-nez p1, :cond_2

    .line 4115
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_autoScrollTimer:Ljava/util/Timer;

    .line 4116
    new-instance v1, Lcom/metamoji/forSchool/monitoring/ScMonitorList$39;

    invoke-direct {v1, p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$39;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)V

    const-wide/16 v2, 0x14

    const-wide/16 v4, 0x14

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_2
    return-void

    .line 4132
    :cond_3
    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->cancelAutoScrollTimer()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .line 890
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onActivityCreated(Landroid/os/Bundle;)V

    .line 892
    invoke-virtual {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 893
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_dragragThreshold:F

    .line 895
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    .line 898
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v1, 0x33

    .line 899
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, -0x2

    .line 900
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 901
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v1, 0x398

    .line 902
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v1, -0x3

    .line 907
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v1, 0x0

    .line 908
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 909
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 910
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 911
    iput-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_dragWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 912
    iput-boolean v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_showedMonitoringMaxMsg:Z

    .line 913
    iput-boolean v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_pinchingFlag:Z

    const/4 v0, -0x1

    .line 914
    iput v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_pinchFocusMonitorViewIndex:I

    .line 916
    invoke-virtual {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->getDialogView()Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$id;->monitor_list_view:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/forSchool/monitoring/ScMonitorGridView;

    iput-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitors:Lcom/metamoji/forSchool/monitoring/ScMonitorGridView;

    const/4 v1, 0x1

    .line 917
    invoke-virtual {v0, v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorGridView;->setExpanded(Z)V

    .line 918
    invoke-static {}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->sharedInstance()Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;

    move-result-object v0

    .line 919
    invoke-virtual {v0}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->getDisplayMonitorType()I

    move-result v0

    .line 923
    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitors:Lcom/metamoji/forSchool/monitoring/ScMonitorGridView;

    const/16 v2, 0xff

    const/16 v3, 0x4c

    if-nez v0, :cond_0

    .line 920
    invoke-static {v2, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorGridView;->setBackgroundColor(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x60

    .line 923
    invoke-static {v2, v3, v3, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorGridView;->setBackgroundColor(I)V

    .line 926
    :goto_0
    new-instance v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    invoke-virtual {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewArrayAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    .line 927
    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitors:Lcom/metamoji/forSchool/monitoring/ScMonitorGridView;

    invoke-virtual {v1, v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 934
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_hideMonitorViewArray:Ljava/util/List;

    .line 935
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_selectedMonitorViewArray:Ljava/util/List;

    .line 937
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_masterMonitorViewArray:Ljava/util/List;

    .line 939
    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->updateStatusNum()V

    .line 940
    invoke-virtual {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->updateVisibleStudentNameBtnCaption()V

    .line 941
    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->updateOfflineUserBtnCaption()V

    .line 943
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewArrayAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    invoke-virtual {v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 944
    new-instance v1, Landroid/view/ScaleGestureDetector;

    new-instance v2, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScScaleGestureListener;

    iget-object v3, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitors:Lcom/metamoji/forSchool/monitoring/ScMonitorGridView;

    invoke-direct {v2, p0, v3}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScScaleGestureListener;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;Landroid/widget/GridView;)V

    invoke-direct {v1, v0, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 946
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitors:Lcom/metamoji/forSchool/monitoring/ScMonitorGridView;

    new-instance v1, Lcom/metamoji/forSchool/monitoring/ScMonitorList$2;

    invoke-direct {v1, p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$2;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorGridView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 998
    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->updateGuidanceLabel()V

    if-eqz p1, :cond_1

    .line 1002
    const-string v0, "visibleMonitorViews"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1003
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1004
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 1008
    :goto_1
    new-instance p1, Lcom/metamoji/forSchool/monitoring/ScMonitorList$3;

    invoke-direct {p1, p0, v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$3;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;Ljava/util/ArrayList;)V

    iput-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 1117
    iget-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitors:Lcom/metamoji/forSchool/monitoring/ScMonitorGridView;

    invoke-virtual {p1}, Lcom/metamoji/forSchool/monitoring/ScMonitorGridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .line 1127
    invoke-virtual {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    iput-boolean v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_isPhone:Z

    if-nez v0, :cond_0

    .line 1129
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_school_monitor_list_phone:I

    iput v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->mViewId:I

    goto :goto_0

    .line 1131
    :cond_0
    invoke-static {}, Lcom/metamoji/noteanytime/NoteAnytimeApplication;->getInstance()Lcom/metamoji/noteanytime/NoteAnytimeApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/noteanytime/NoteAnytimeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1132
    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1133
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1134
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1135
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1136
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v1, 0x640

    if-le v0, v1, :cond_1

    .line 1137
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_school_monitor_list:I

    iput v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->mViewId:I

    goto :goto_0

    .line 1139
    :cond_1
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_school_monitor_list_phone:I

    iput v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->mViewId:I

    .line 1142
    :goto_0
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/metamoji/noteanytime/R$string;->School_MonitorListDlg_Title:I

    goto :goto_1

    :cond_2
    sget v0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_EVERYONE_ANSWER:I

    :goto_1
    iput v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->mTitleId:I

    const/4 v0, 0x0

    .line 1143
    iput-boolean v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->mDone:Z

    const/4 v1, 0x1

    .line 1144
    iput-boolean v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->mClose:Z

    .line 1145
    iput-boolean v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->mCancel:Z

    .line 1146
    iput-boolean v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->mModal:Z

    .line 1148
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 1149
    invoke-virtual {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 1150
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object p3

    .line 1153
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/forSchool/ScSchoolManager;->isScreenLock()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1154
    sget v2, Lcom/metamoji/noteanytime/R$id;->dlgHeaderLayout:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const/16 v3, 0xd1

    const/16 v4, 0x54

    const/16 v5, 0xff

    const/16 v6, 0x72

    .line 1155
    invoke-static {v5, v6, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1158
    :cond_3
    sget v2, Lcom/metamoji/noteanytime/R$id;->do_it_num_text:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_doItNumLabel:Landroid/widget/TextView;

    .line 1159
    sget v3, Lcom/metamoji/forSchool/ScSchoolConstants;->SCHOOL_STATUS_COLOR_DOIT:I

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1161
    iget-object v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_doItNumLabel:Landroid/widget/TextView;

    new-instance v3, Lcom/metamoji/forSchool/monitoring/ScMonitorList$4;

    invoke-direct {v3, p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$4;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1167
    sget v2, Lcom/metamoji/noteanytime/R$id;->not_yet_num_text:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_notYetNumLabel:Landroid/widget/TextView;

    .line 1169
    new-instance v3, Lcom/metamoji/forSchool/monitoring/ScMonitorList$5;

    invoke-direct {v3, p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$5;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1175
    sget v2, Lcom/metamoji/noteanytime/R$id;->help_num_text:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_helpNumLabel:Landroid/widget/TextView;

    .line 1176
    sget v3, Lcom/metamoji/forSchool/ScSchoolConstants;->SCHOOL_STATUS_COLOR_HELP:I

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1178
    iget-object p2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_helpNumLabel:Landroid/widget/TextView;

    new-instance v2, Lcom/metamoji/forSchool/monitoring/ScMonitorList$6;

    invoke-direct {v2, p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$6;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)V

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1185
    sget p2, Lcom/metamoji/noteanytime/R$id;->offline_user_btn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButton;

    iput-object p2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_offlineUserBtn:Lcom/metamoji/ui/common/UiButton;

    .line 1186
    new-instance v2, Lcom/metamoji/forSchool/monitoring/ScMonitorList$7;

    invoke-direct {v2, p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$7;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)V

    invoke-virtual {p2, v2}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1194
    sget p2, Lcom/metamoji/noteanytime/R$id;->visible_student_name_btn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButton;

    iput-object p2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_visibleStudentNameBtn:Lcom/metamoji/ui/common/UiButton;

    .line 1195
    new-instance v2, Lcom/metamoji/forSchool/monitoring/ScMonitorList$8;

    invoke-direct {v2, p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$8;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)V

    invoke-virtual {p2, v2}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1202
    sget p2, Lcom/metamoji/noteanytime/R$id;->displayMonitorTypeLayout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_displayMonitorTypeLayout:Landroid/widget/LinearLayout;

    .line 1203
    sget p2, Lcom/metamoji/noteanytime/R$id;->displayMonitorTypeSwitch:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiSwitch;

    iput-object p2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_displayMonitorTypeSwitch:Lcom/metamoji/ui/common/UiSwitch;

    .line 1204
    invoke-static {}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->sharedInstance()Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->getDisplayMonitorType()I

    move-result v2

    if-ne v2, v1, :cond_4

    move v2, v1

    goto :goto_2

    :cond_4
    move v2, v0

    :goto_2
    invoke-virtual {p2, v2}, Lcom/metamoji/ui/common/UiSwitch;->setChecked(Z)V

    .line 1205
    iget-object p2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_displayMonitorTypeSwitch:Lcom/metamoji/ui/common/UiSwitch;

    new-instance v2, Lcom/metamoji/forSchool/monitoring/ScMonitorList$9;

    invoke-direct {v2, p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$9;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)V

    invoke-virtual {p2, v2}, Lcom/metamoji/ui/common/UiSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1311
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result p2

    const/4 v2, 0x2

    if-eqz p2, :cond_5

    .line 1312
    const-string p2, "forSchoolMonitoringOfflineUserMode"

    invoke-virtual {p3, p2, v1}, Lcom/metamoji/nt/NtUserDefaults;->getIntValue(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_offlineUserMode:I

    goto :goto_3

    .line 1315
    :cond_5
    iput v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_offlineUserMode:I

    .line 1318
    :goto_3
    sget p2, Lcom/metamoji/noteanytime/R$id;->show_all_items_btn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButton;

    iput-object p2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_showAllItemsBtn:Lcom/metamoji/ui/common/UiButton;

    .line 1319
    new-instance p3, Lcom/metamoji/forSchool/monitoring/ScMonitorList$10;

    invoke-direct {p3, p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$10;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1325
    sget p2, Lcom/metamoji/noteanytime/R$id;->select_items_btn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButton;

    iput-object p2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_selectItemsBtn:Lcom/metamoji/ui/common/UiButton;

    .line 1326
    new-instance p3, Lcom/metamoji/forSchool/monitoring/ScMonitorList$11;

    invoke-direct {p3, p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$11;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1332
    sget p2, Lcom/metamoji/noteanytime/R$id;->zoom_in_btn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_zoomInBtn:Landroid/widget/ImageView;

    .line 1333
    new-instance p3, Lcom/metamoji/forSchool/monitoring/ScMonitorList$12;

    invoke-direct {p3, p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$12;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1339
    sget p2, Lcom/metamoji/noteanytime/R$id;->zoom_out_btn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_zoomOutBtn:Landroid/widget/ImageView;

    .line 1340
    new-instance p3, Lcom/metamoji/forSchool/monitoring/ScMonitorList$13;

    invoke-direct {p3, p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$13;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1347
    sget p2, Lcom/metamoji/noteanytime/R$id;->monitor_list_scroll_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/forSchool/monitoring/ScMonitorScrollView;

    iput-object p2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_scrollView:Lcom/metamoji/forSchool/monitoring/ScMonitorScrollView;

    .line 1348
    invoke-virtual {p2, p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorScrollView;->setOnScrollViewListener(Lcom/metamoji/forSchool/monitoring/ScMonitorScrollView$IScMonitorScrollViewListener;)V

    .line 1350
    sget p2, Lcom/metamoji/noteanytime/R$id;->page_prev_btn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_pagePrevBtn:Landroid/widget/ImageButton;

    .line 1351
    new-instance p3, Lcom/metamoji/forSchool/monitoring/ScMonitorList$14;

    invoke-direct {p3, p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$14;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1357
    sget p2, Lcom/metamoji/noteanytime/R$id;->editor_bottombar_pagelist_tab:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    .line 1358
    new-instance p3, Lcom/metamoji/forSchool/monitoring/ScMonitorList$15;

    invoke-direct {p3, p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$15;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1376
    sget p2, Lcom/metamoji/noteanytime/R$id;->editor_bottombar_pagelist_tab_label:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_pageLabel:Landroid/widget/TextView;

    .line 1377
    sget p2, Lcom/metamoji/noteanytime/R$id;->page_next_btn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_pageNextBtn:Landroid/widget/ImageButton;

    .line 1378
    new-instance p3, Lcom/metamoji/forSchool/monitoring/ScMonitorList$16;

    invoke-direct {p3, p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$16;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1385
    sget p2, Lcom/metamoji/noteanytime/R$id;->page_list_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_pageListView:Landroidx/recyclerview/widget/RecyclerView;

    .line 1387
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-direct {p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 1388
    invoke-virtual {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    iget p3, p3, Landroid/content/res/Configuration;->orientation:I

    if-ne p3, v2, :cond_6

    .line 1389
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    goto :goto_4

    .line 1391
    :cond_6
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 1393
    :goto_4
    iget-object p3, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_pageListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1395
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p2

    .line 1396
    invoke-virtual {p2}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object p2

    .line 1397
    invoke-virtual {p2}, Lcom/metamoji/nt/NtNoteController;->pageIds()Ljava/util/List;

    move-result-object p2

    .line 1398
    new-instance p3, Lcom/metamoji/forSchool/monitoring/ScMonitorList$PageListViewAdapter;

    invoke-direct {p3, p0, p2}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$PageListViewAdapter;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;Ljava/util/List;)V

    iput-object p3, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_pageListViewAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$PageListViewAdapter;

    .line 1399
    iget-object p2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_pageListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1400
    invoke-static {}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->sharedInstance()Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;

    move-result-object p2

    iget-boolean p2, p2, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->isPageListOpened:Z

    .line 1403
    iget-object p3, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_pageListView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p2, :cond_7

    .line 1401
    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    goto :goto_5

    :cond_7
    const/16 p2, 0x8

    .line 1403
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 1406
    :goto_5
    sget p2, Lcom/metamoji/noteanytime/R$id;->guidance_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_guidanceLabel:Landroid/widget/TextView;

    .line 1408
    invoke-virtual {p0, p1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->restoreInstanceStateIfAvailable(Landroid/view/View;)Z

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    const/4 v0, 0x0

    .line 1461
    invoke-virtual {p0, v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->setMonitorViewThumbnailCache(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    .line 1463
    :goto_0
    iget-object v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewArrayAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    invoke-virtual {v2}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->getCount()I

    move-result v2

    .line 1467
    iget-object v3, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewArrayAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    if-ge v1, v2, :cond_0

    .line 1464
    invoke-virtual {v3, v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    .line 1465
    invoke-virtual {v2}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->releaseImage()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1467
    :cond_0
    invoke-virtual {v3}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->clear()V

    .line 1468
    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewArrayAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    invoke-virtual {v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->notifyDataSetChanged()V

    .line 1470
    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_scrollSnapTimer:Ljava/util/Timer;

    if-eqz v1, :cond_1

    .line 1471
    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 1472
    iput-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_scrollSnapTimer:Ljava/util/Timer;

    .line 1474
    :cond_1
    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->cancelAutoScrollTimer()V

    .line 1475
    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_updateMonitorSizeTimer:Ljava/util/Timer;

    if-eqz v1, :cond_2

    .line 1476
    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 1477
    iput-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_updateMonitorSizeTimer:Ljava/util/Timer;

    .line 1480
    :cond_2
    invoke-static {}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->sharedInstance()Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;

    move-result-object v0

    .line 1481
    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_scrollView:Lcom/metamoji/forSchool/monitoring/ScMonitorScrollView;

    invoke-virtual {v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorScrollView;->getScrollY()I

    move-result v1

    int-to-double v1, v1

    iput-wide v1, v0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->offsetY:D

    .line 1483
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1515
    invoke-static {}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->sharedInstance()Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;

    move-result-object v0

    .line 1516
    invoke-virtual {v0, p0}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->removeEventListener(Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener;)V

    .line 1518
    invoke-super {p0}, Lcom/metamoji/ui/dialog/NtDialog;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1507
    invoke-super {p0}, Lcom/metamoji/ui/dialog/NtDialog;->onResume()V

    .line 1509
    invoke-static {}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->sharedInstance()Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;

    move-result-object v0

    .line 1510
    invoke-virtual {v0, p0}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->addEventListener(Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5

    if-eqz p1, :cond_3

    .line 1418
    sget-object v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->Key_ReconstructDialogFlag:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1419
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewArrayAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    invoke-virtual {v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->getCount()I

    move-result v0

    .line 1420
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1421
    invoke-static {}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->sharedInstance()Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;

    move-result-object v3

    .line 1422
    invoke-virtual {v3}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->getDisplayMonitorType()I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    .line 1423
    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->getSchoolPageType()I

    move-result v3

    if-eq v3, v1, :cond_0

    const/4 v1, 0x2

    if-eq v3, v1, :cond_0

    :goto_0
    if-ge v4, v0, :cond_2

    .line 1436
    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewArrayAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    invoke-virtual {v1, v4}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    .line 1437
    invoke-virtual {v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 1438
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v4, v0, :cond_2

    .line 1427
    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewArrayAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    invoke-virtual {v1, v4}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    .line 1428
    invoke-virtual {v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->getLayerId()Ljava/lang/String;

    move-result-object v1

    .line 1429
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v4, v0, :cond_2

    .line 1445
    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewArrayAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    invoke-virtual {v1, v4}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    .line 1446
    invoke-virtual {v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 1447
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    if-lez v0, :cond_3

    .line 1451
    const-string v0, "visibleMonitorViews"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1454
    :cond_3
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onScrollChanged(Lcom/metamoji/forSchool/monitoring/ScMonitorScrollView;IIII)V
    .locals 0

    .line 2361
    iget-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_heldMonitorViewForLongPress:Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    if-eqz p1, :cond_0

    .line 2362
    invoke-virtual {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->longPressEnd()V

    .line 2366
    :cond_0
    iget-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_scrollSnapTimer:Ljava/util/Timer;

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 2367
    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    .line 2368
    iput-object p2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_scrollSnapTimer:Ljava/util/Timer;

    .line 2371
    :cond_1
    iget-boolean p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_scrollSnap:Z

    if-eqz p1, :cond_2

    .line 2372
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_scrollSnapTimer:Ljava/util/Timer;

    .line 2373
    new-instance p3, Lcom/metamoji/forSchool/monitoring/ScMonitorList$23;

    invoke-direct {p3, p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$23;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)V

    const-wide/16 p4, 0x3e8

    invoke-virtual {p1, p3, p4, p5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 2387
    :cond_2
    iget-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_revalidateTimer:Ljava/util/Timer;

    if-eqz p1, :cond_3

    .line 2388
    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    .line 2389
    iput-object p2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_revalidateTimer:Ljava/util/Timer;

    .line 2393
    :cond_3
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_revalidateTimer:Ljava/util/Timer;

    .line 2394
    new-instance p1, Lcom/metamoji/forSchool/monitoring/ScMonitorList$24;

    invoke-direct {p1, p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$24;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)V

    .line 2401
    iget-object p2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_revalidateTimer:Ljava/util/Timer;

    const-wide/16 p3, 0x12c

    invoke-virtual {p2, p1, p3, p4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public pageAdded(Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringPageAddedEvent;)V
    .locals 2

    .line 4944
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/forSchool/monitoring/ScMonitorList$49;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$49;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringPageAddedEvent;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method pageJump(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 3

    .line 4731
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 4732
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v1

    .line 4733
    invoke-virtual {v1, p1}, Lcom/metamoji/nt/NtNoteController;->pageIndexFromPageId(Ljava/lang/String;)I

    move-result p1

    const/4 v2, -0x1

    if-eq v2, p1, :cond_2

    .line 4735
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getCurrentPageIndex()I

    move-result v1

    if-ne v1, p1, :cond_0

    goto :goto_0

    .line 4739
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v1

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_PAGE_JUMP:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4741
    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->showWaitView()V

    .line 4744
    new-instance v1, Lcom/metamoji/cm/CmContext;

    invoke-direct {v1}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 4745
    const-string v2, "pageIndex"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p2, :cond_1

    .line 4747
    const-string p1, "completionBlock"

    invoke-virtual {v1, p1, p2}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4749
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object p2, Lcom/metamoji/nt/NtCommand;->CMD_PAGE_JUMP:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, p2, v1}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public pageMoved(Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringPageMovedEvent;)V
    .locals 2

    .line 4960
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/forSchool/monitoring/ScMonitorList$50;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$50;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringPageMovedEvent;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public pageRemoved(Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringPageRemovedEvent;)V
    .locals 2

    .line 4928
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/forSchool/monitoring/ScMonitorList$48;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$48;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringPageRemovedEvent;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public pageThumbnailUpdated(Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringPageThumbnailUpdatedEvent;)V
    .locals 1

    .line 5142
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$53;

    invoke-direct {v0, p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$53;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public pageTypeChanged(Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringPageTypeChangedEvent;)V
    .locals 1

    .line 5132
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$52;

    invoke-direct {v0, p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$52;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method prepareMonitorViewForClassOrNormal()Z
    .locals 23

    move-object/from16 v1, p0

    .line 1974
    iget-object v0, v1, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_pageController:Lcom/metamoji/nt/NtPageController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    .line 1977
    invoke-static {}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->sharedInstance()Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;

    move-result-object v9

    .line 1978
    invoke-virtual {v9}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->getStudentViewingPageInfos()Ljava/util/List;

    move-result-object v0

    .line 1980
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1981
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1982
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1986
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    .line 1987
    const-string v2, "MMJAppMonitorSortOrder"

    const-string v3, "userid"

    invoke-static {v2, v3}, Lcom/metamoji/nt/NtFeatureManager;->getCustomizeSettingString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1988
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    .line 1991
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1992
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    move/from16 v17, v0

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_7

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/forSchool/monitoring/ScStudentViewingPageInfo;

    .line 1993
    iget-object v4, v1, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_pageController:Lcom/metamoji/nt/NtPageController;

    iget-object v5, v2, Lcom/metamoji/forSchool/monitoring/ScStudentViewingPageInfo;->userId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/metamoji/nt/NtPageController;->getPersonalLayerInfo(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    .line 1994
    :cond_0
    const-string v5, "layerId"

    invoke-static {v4, v5}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1995
    :goto_1
    iget-object v5, v1, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_pageController:Lcom/metamoji/nt/NtPageController;

    invoke-virtual {v5}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v5

    move v6, v0

    .line 1996
    new-instance v0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    move v7, v3

    move-object v3, v4

    iget-object v4, v2, Lcom/metamoji/forSchool/monitoring/ScStudentViewingPageInfo;->userName:Ljava/lang/String;

    move v8, v6

    iget-object v6, v2, Lcom/metamoji/forSchool/monitoring/ScStudentViewingPageInfo;->classNumber:Ljava/lang/String;

    move/from16 v18, v7

    iget-object v7, v2, Lcom/metamoji/forSchool/monitoring/ScStudentViewingPageInfo;->loginName:Ljava/lang/String;

    move/from16 v19, v8

    iget-object v8, v2, Lcom/metamoji/forSchool/monitoring/ScStudentViewingPageInfo;->userId:Ljava/lang/String;

    move-object/from16 v20, v2

    move-object v2, v5

    const/4 v5, 0x0

    move/from16 v21, v13

    move/from16 v13, v19

    move-object/from16 v22, v20

    invoke-direct/range {v0 .. v8}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x12c

    if-lt v13, v2, :cond_1

    .line 2007
    iget-boolean v0, v1, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_showedMonitoringMaxMsg:Z

    const/4 v7, 0x1

    if-nez v0, :cond_8

    .line 2008
    iput-boolean v7, v1, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_showedMonitoringMaxMsg:Z

    .line 2010
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v2, Lcom/metamoji/forSchool/monitoring/ScMonitorList$19;

    invoke-direct {v2, v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$19;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/cm/CmTaskManager;->requestRunOnBackground(Ljava/lang/Runnable;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_4

    :cond_1
    move-object/from16 v2, v22

    const/4 v7, 0x1

    .line 2021
    iget-object v3, v2, Lcom/metamoji/forSchool/monitoring/ScStudentViewingPageInfo;->classNumber:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, v2, Lcom/metamoji/forSchool/monitoring/ScStudentViewingPageInfo;->classNumber:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    .line 2030
    :cond_2
    iget-object v2, v2, Lcom/metamoji/forSchool/monitoring/ScStudentViewingPageInfo;->classNumber:Ljava/lang/String;

    invoke-static {v2}, Lcom/metamoji/forSchool/ScSchoolUtils;->isBigDecimal(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2032
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 2034
    :cond_3
    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 2022
    :cond_4
    :goto_2
    iget-object v3, v2, Lcom/metamoji/forSchool/monitoring/ScStudentViewingPageInfo;->loginName:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v2, v2, Lcom/metamoji/forSchool/monitoring/ScStudentViewingPageInfo;->loginName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    move/from16 v17, v7

    :cond_5
    if-nez v21, :cond_6

    move/from16 v17, v16

    .line 2028
    :cond_6
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v0, v13, 0x1

    move/from16 v13, v21

    goto/16 :goto_0

    :cond_7
    move v7, v3

    .line 2042
    :cond_8
    :goto_4
    new-instance v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$NumClassNumberComparator;

    invoke-direct {v0, v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$NumClassNumberComparator;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)V

    invoke-static {v10, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2043
    new-instance v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$StrClassNumberComparator;

    invoke-direct {v0, v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$StrClassNumberComparator;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)V

    invoke-static {v11, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-eqz v17, :cond_9

    .line 2045
    new-instance v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$LoginNameComparator;

    invoke-direct {v0, v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$LoginNameComparator;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)V

    invoke-static {v12, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_5

    .line 2047
    :cond_9
    new-instance v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$LayerNameComparator;

    invoke-direct {v0, v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$LayerNameComparator;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)V

    invoke-static {v12, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2050
    :goto_5
    invoke-interface {v14, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2051
    invoke-interface {v14, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2052
    invoke-interface {v14, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2055
    iget-boolean v0, v1, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_visibleStudentName:Z

    if-nez v0, :cond_b

    .line 2056
    iget-object v0, v9, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->visibleMonitorIdArrayForUser:Ljava/util/List;

    if-nez v0, :cond_a

    .line 2058
    invoke-static {v14}, Lcom/metamoji/forSchool/ScSchoolUtils;->shuffleArray(Ljava/util/List;)V

    .line 2061
    :cond_a
    iget-object v0, v1, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_masterMonitorViewArray:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2063
    iget-object v0, v9, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->visibleMonitorIdArrayForUser:Ljava/util/List;

    if-nez v0, :cond_c

    .line 2064
    invoke-direct {v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->saveMonitoringStateForList()V

    goto :goto_6

    .line 2067
    :cond_b
    iget-object v0, v1, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_masterMonitorViewArray:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2071
    :cond_c
    :goto_6
    iget-object v0, v1, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewArrayAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    invoke-virtual {v0, v14}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->addAll(Ljava/util/Collection;)V

    .line 2074
    invoke-direct {v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->restoreMonitoringStateForList()V

    .line 2077
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->schoolPersonalStatusDic()Ljava/util/Map;

    move-result-object v0

    .line 2078
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v7

    :cond_d
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2079
    invoke-static {v0, v4}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_d

    .line 2081
    invoke-direct {v1, v4, v5}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->updateMonitorUserStatus(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    move/from16 v3, v16

    goto :goto_7

    .line 2088
    :cond_e
    invoke-direct {v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->hideOfflineUser()V

    return v3
.end method

.method prepareMonitorViewForUserOrGroup()Z
    .locals 20

    move-object/from16 v1, p0

    .line 1844
    iget-object v0, v1, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_pageController:Lcom/metamoji/nt/NtPageController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    .line 1847
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1848
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1849
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1854
    iget-object v0, v1, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_pageController:Lcom/metamoji/nt/NtPageController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getPersonalLayerInfoList()Ljava/util/List;

    move-result-object v0

    const/4 v12, 0x1

    if-eqz v0, :cond_11

    .line 1857
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    .line 1858
    const-string v2, "MMJAppMonitorSortOrder"

    const-string v3, "userid"

    invoke-static {v2, v3}, Lcom/metamoji/nt/NtFeatureManager;->getCustomizeSettingString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1859
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    .line 1860
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1861
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    move/from16 v17, v0

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 1862
    const-string v3, "layerId"

    invoke-static {v2, v3}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1863
    const-string v4, "layerName"

    invoke-static {v2, v4}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1864
    const-string v5, "classNumber"

    invoke-static {v2, v5}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ljava/lang/String;

    .line 1865
    const-string v5, "loginName"

    invoke-static {v2, v5}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Ljava/lang/String;

    .line 1866
    const-string v5, "memberList"

    invoke-static {v2, v5}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/util/List;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x12c

    if-lt v0, v2, :cond_1

    .line 1873
    iget-boolean v0, v1, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_showedMonitoringMaxMsg:Z

    if-nez v0, :cond_9

    .line 1874
    iput-boolean v12, v1, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_showedMonitoringMaxMsg:Z

    .line 1876
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v2, Lcom/metamoji/forSchool/monitoring/ScMonitorList$18;

    invoke-direct {v2, v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$18;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/cm/CmTaskManager;->requestRunOnBackground(Ljava/lang/Runnable;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_4

    :cond_1
    if-eqz v5, :cond_2

    .line 1889
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    if-eqz v5, :cond_3

    const/4 v2, 0x0

    goto :goto_1

    .line 1893
    :cond_3
    invoke-static {v3}, Lcom/metamoji/nt/NtPageController;->getUserOrGroupIdFromPersonalLayerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    move-object v8, v2

    move v2, v0

    .line 1894
    new-instance v0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    iget-object v12, v1, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_pageController:Lcom/metamoji/nt/NtPageController;

    invoke-virtual {v12}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v19, v12

    move v12, v2

    move-object/from16 v2, v19

    invoke-direct/range {v0 .. v8}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_6

    .line 1895
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    goto :goto_2

    .line 1904
    :cond_4
    invoke-static {v6}, Lcom/metamoji/forSchool/ScSchoolUtils;->isBigDecimal(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1906
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1908
    :cond_5
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    :goto_2
    if-eqz v7, :cond_7

    .line 1896
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7

    const/16 v17, 0x1

    :cond_7
    if-nez v13, :cond_8

    move/from16 v17, v16

    .line 1902
    :cond_8
    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v0, v12, 0x1

    const/4 v12, 0x1

    goto/16 :goto_0

    .line 1916
    :cond_9
    :goto_4
    invoke-direct {v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->getSchoolPageType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_b

    .line 1918
    new-instance v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$NumClassNumberComparator;

    invoke-direct {v0, v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$NumClassNumberComparator;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)V

    invoke-static {v9, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1919
    new-instance v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$StrClassNumberComparator;

    invoke-direct {v0, v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$StrClassNumberComparator;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)V

    invoke-static {v10, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-eqz v17, :cond_a

    .line 1921
    new-instance v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$LoginNameComparator;

    invoke-direct {v0, v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$LoginNameComparator;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)V

    invoke-static {v11, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_5

    .line 1923
    :cond_a
    new-instance v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$LayerNameComparator;

    invoke-direct {v0, v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$LayerNameComparator;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)V

    invoke-static {v11, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1927
    :cond_b
    :goto_5
    invoke-interface {v14, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1928
    invoke-interface {v14, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1929
    invoke-interface {v14, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1932
    invoke-direct {v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->getSchoolPageType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_d

    iget-boolean v0, v1, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_visibleStudentName:Z

    if-nez v0, :cond_d

    .line 1934
    invoke-static {}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->sharedInstance()Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;

    move-result-object v0

    .line 1935
    iget-object v2, v0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->visibleMonitorIdArrayForUser:Ljava/util/List;

    if-nez v2, :cond_c

    .line 1937
    invoke-static {v14}, Lcom/metamoji/forSchool/ScSchoolUtils;->shuffleArray(Ljava/util/List;)V

    .line 1940
    :cond_c
    iget-object v2, v1, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_masterMonitorViewArray:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1942
    iget-object v0, v0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->visibleMonitorIdArrayForUser:Ljava/util/List;

    if-nez v0, :cond_e

    .line 1943
    invoke-direct {v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->saveMonitoringStateForList()V

    goto :goto_6

    .line 1946
    :cond_d
    iget-object v0, v1, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_masterMonitorViewArray:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1950
    :cond_e
    :goto_6
    iget-object v0, v1, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewArrayAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    invoke-virtual {v0, v14}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->addAll(Ljava/util/Collection;)V

    .line 1953
    invoke-direct {v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->restoreMonitoringStateForList()V

    .line 1956
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->schoolPersonalStatusDic()Ljava/util/Map;

    move-result-object v0

    .line 1957
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v12, 0x1

    :cond_f
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1958
    invoke-static {v0, v3}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_f

    .line 1960
    invoke-direct {v1, v3, v4}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->updateMonitorUserStatus(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    move/from16 v12, v16

    goto :goto_7

    .line 1967
    :cond_10
    invoke-direct {v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->hideOfflineUser()V

    return v12

    :cond_11
    move/from16 v18, v12

    return v18
.end method

.method prepareMonitorViewForViewingPage()Z
    .locals 22

    move-object/from16 v1, p0

    .line 1724
    invoke-static {}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->sharedInstance()Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;

    move-result-object v9

    .line 1725
    iget-object v0, v1, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_pageController:Lcom/metamoji/nt/NtPageController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    .line 1728
    invoke-virtual {v9}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->getStudentViewingPageInfos()Ljava/util/List;

    move-result-object v0

    .line 1730
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1731
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1732
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1736
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1738
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    .line 1739
    const-string v2, "MMJAppMonitorSortOrder"

    const-string v3, "userid"

    invoke-static {v2, v3}, Lcom/metamoji/nt/NtFeatureManager;->getCustomizeSettingString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1740
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    .line 1741
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    move/from16 v17, v0

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_8

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/forSchool/monitoring/ScStudentViewingPageInfo;

    const/16 v4, 0x12c

    if-lt v0, v4, :cond_0

    .line 1745
    iget-boolean v0, v1, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_showedMonitoringMaxMsg:Z

    if-nez v0, :cond_8

    .line 1746
    iput-boolean v3, v1, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_showedMonitoringMaxMsg:Z

    .line 1748
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v2, Lcom/metamoji/forSchool/monitoring/ScMonitorList$17;

    invoke-direct {v2, v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$17;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/cm/CmTaskManager;->requestRunOnBackground(Ljava/lang/Runnable;)Ljava/util/concurrent/ScheduledFuture;

    goto/16 :goto_5

    .line 1759
    :cond_0
    iget-object v4, v1, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_pageController:Lcom/metamoji/nt/NtPageController;

    iget-object v5, v2, Lcom/metamoji/forSchool/monitoring/ScStudentViewingPageInfo;->userId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/metamoji/nt/NtPageController;->getPersonalLayerInfo(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    if-nez v4, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    .line 1760
    :cond_1
    const-string v5, "layerId"

    invoke-static {v4, v5}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1761
    :goto_1
    iget-object v5, v2, Lcom/metamoji/forSchool/monitoring/ScStudentViewingPageInfo;->pageId:Ljava/lang/String;

    if-nez v5, :cond_2

    iget-object v5, v1, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_pageController:Lcom/metamoji/nt/NtPageController;

    invoke-virtual {v5}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_2
    iget-object v5, v2, Lcom/metamoji/forSchool/monitoring/ScStudentViewingPageInfo;->pageId:Ljava/lang/String;

    :goto_2
    move v6, v0

    .line 1762
    new-instance v0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    move v7, v3

    move-object v3, v4

    iget-object v4, v2, Lcom/metamoji/forSchool/monitoring/ScStudentViewingPageInfo;->userName:Ljava/lang/String;

    move v8, v6

    iget-object v6, v2, Lcom/metamoji/forSchool/monitoring/ScStudentViewingPageInfo;->classNumber:Ljava/lang/String;

    move/from16 v18, v7

    iget-object v7, v2, Lcom/metamoji/forSchool/monitoring/ScStudentViewingPageInfo;->loginName:Ljava/lang/String;

    move/from16 v19, v8

    iget-object v8, v2, Lcom/metamoji/forSchool/monitoring/ScStudentViewingPageInfo;->userId:Ljava/lang/String;

    move-object/from16 v20, v2

    move-object v2, v5

    const/4 v5, 0x0

    move/from16 v21, v19

    move/from16 v19, v14

    move-object/from16 v14, v20

    move/from16 v20, v21

    invoke-direct/range {v0 .. v8}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1771
    iget-object v2, v14, Lcom/metamoji/forSchool/monitoring/ScStudentViewingPageInfo;->classNumber:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, v14, Lcom/metamoji/forSchool/monitoring/ScStudentViewingPageInfo;->classNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    goto :goto_3

    .line 1780
    :cond_3
    iget-object v2, v14, Lcom/metamoji/forSchool/monitoring/ScStudentViewingPageInfo;->classNumber:Ljava/lang/String;

    invoke-static {v2}, Lcom/metamoji/forSchool/ScSchoolUtils;->isBigDecimal(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1782
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1784
    :cond_4
    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1772
    :cond_5
    :goto_3
    iget-object v2, v14, Lcom/metamoji/forSchool/monitoring/ScStudentViewingPageInfo;->loginName:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, v14, Lcom/metamoji/forSchool/monitoring/ScStudentViewingPageInfo;->loginName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    move/from16 v17, v18

    :cond_6
    if-nez v19, :cond_7

    move/from16 v17, v16

    .line 1778
    :cond_7
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v0, v20, 0x1

    move/from16 v14, v19

    goto/16 :goto_0

    :cond_8
    :goto_5
    move/from16 v18, v3

    .line 1792
    new-instance v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$NumClassNumberComparator;

    invoke-direct {v0, v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$NumClassNumberComparator;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)V

    invoke-static {v10, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1793
    new-instance v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$StrClassNumberComparator;

    invoke-direct {v0, v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$StrClassNumberComparator;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)V

    invoke-static {v11, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-eqz v17, :cond_9

    .line 1795
    new-instance v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$LoginNameComparator;

    invoke-direct {v0, v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$LoginNameComparator;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)V

    invoke-static {v12, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_6

    .line 1797
    :cond_9
    new-instance v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$LayerNameComparator;

    invoke-direct {v0, v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$LayerNameComparator;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)V

    invoke-static {v12, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1800
    :goto_6
    invoke-interface {v13, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1801
    invoke-interface {v13, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1802
    invoke-interface {v13, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1805
    iget-boolean v0, v1, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_visibleStudentName:Z

    if-nez v0, :cond_b

    .line 1806
    iget-object v0, v9, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->visibleMonitorIdArrayForUser:Ljava/util/List;

    if-nez v0, :cond_a

    .line 1808
    invoke-static {v13}, Lcom/metamoji/forSchool/ScSchoolUtils;->shuffleArray(Ljava/util/List;)V

    .line 1811
    :cond_a
    iget-object v0, v1, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_masterMonitorViewArray:Ljava/util/List;

    invoke-interface {v0, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1813
    iget-object v0, v9, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->visibleMonitorIdArrayForUser:Ljava/util/List;

    if-nez v0, :cond_c

    .line 1814
    invoke-direct {v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->saveMonitoringStateForList()V

    goto :goto_7

    .line 1817
    :cond_b
    iget-object v0, v1, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_masterMonitorViewArray:Ljava/util/List;

    invoke-interface {v0, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1821
    :cond_c
    :goto_7
    iget-object v0, v1, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewArrayAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    invoke-virtual {v0, v13}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->addAll(Ljava/util/Collection;)V

    .line 1824
    invoke-direct {v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->restoreMonitoringStateForList()V

    .line 1827
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->schoolPersonalStatusDic()Ljava/util/Map;

    move-result-object v0

    .line 1828
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move/from16 v3, v18

    :cond_d
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1829
    invoke-static {v0, v4}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_d

    .line 1831
    invoke-direct {v1, v4, v5}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->updateMonitorUserStatus(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    move/from16 v3, v16

    goto :goto_8

    .line 1838
    :cond_e
    invoke-direct {v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->hideOfflineUser()V

    return v3
.end method

.method public removeStudent(Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringRemoveStudentEvent;)V
    .locals 8

    .line 4820
    invoke-virtual {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->updateStudentCountViewingPage()V

    .line 4822
    invoke-static {}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->sharedInstance()Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;

    move-result-object v0

    .line 4823
    iget v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_offlineUserMode:I

    if-nez v1, :cond_0

    const/4 p1, 0x1

    .line 4824
    iput-boolean p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_needUpdateFlag:Z

    .line 4825
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$45;

    invoke-direct {v0, p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$45;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void

    .line 4832
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->getDisplayMonitorType()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 4836
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4837
    iget-object p1, p1, Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringRemoveStudentEvent;->studentViewingPageInfo:Ljava/util/List;

    .line 4838
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "pageId"

    const-string v3, "layerId"

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/forSchool/monitoring/ScStudentViewingPageInfo;

    .line 4839
    iget-object v4, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_pageController:Lcom/metamoji/nt/NtPageController;

    iget-object v5, v1, Lcom/metamoji/forSchool/monitoring/ScStudentViewingPageInfo;->userId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/metamoji/nt/NtPageController;->getPersonalLayerInfo(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    if-nez v4, :cond_2

    const/4 v4, 0x0

    goto :goto_1

    .line 4840
    :cond_2
    invoke-static {v4, v3}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4841
    :goto_1
    iget-object v5, v1, Lcom/metamoji/forSchool/monitoring/ScStudentViewingPageInfo;->pageId:Ljava/lang/String;

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_pageController:Lcom/metamoji/nt/NtPageController;

    invoke-virtual {v5}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_3
    iget-object v5, v1, Lcom/metamoji/forSchool/monitoring/ScStudentViewingPageInfo;->pageId:Ljava/lang/String;

    .line 4842
    :goto_2
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 4843
    invoke-interface {v6, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4844
    invoke-interface {v6, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4845
    iget-object v1, v1, Lcom/metamoji/forSchool/monitoring/ScStudentViewingPageInfo;->userId:Ljava/lang/String;

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    .line 4848
    :goto_3
    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewArrayAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    invoke-virtual {v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_6

    .line 4849
    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewArrayAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    invoke-virtual {v1, p1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    .line 4851
    invoke-virtual {v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->getUserId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 4853
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 4854
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 4855
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4856
    invoke-virtual {v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->getPageId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 4857
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v6

    new-instance v7, Lcom/metamoji/forSchool/monitoring/ScMonitorList$46;

    invoke-direct {v7, p0, v1, v5, v4}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$46;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;Lcom/metamoji/forSchool/monitoring/ScMonitorView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 4876
    :cond_6
    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->hideOfflineUser()V

    return-void
.end method

.method public screenLockChanged(Z)V
    .locals 2

    .line 5180
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/forSchool/monitoring/ScMonitorList$56;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$56;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;Z)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setMonitorViewThumbnailCache(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 5193
    iput-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewThumbnailCache:Landroid/graphics/Bitmap;

    return-void
.end method

.method setVisibleNameLabel(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 4714
    :goto_0
    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_masterMonitorViewArray:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 4715
    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_masterMonitorViewArray:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    .line 4716
    invoke-virtual {v1, p1}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->setVisibleNameLabel(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public startReceivingData(Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringReceivingDataStartedEvent;)V
    .locals 5

    .line 4991
    iget-object p1, p1, Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringReceivingDataStartedEvent;->layerId:Ljava/lang/String;

    .line 4993
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_pageController:Lcom/metamoji/nt/NtPageController;

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 4997
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_4

    .line 5002
    :cond_1
    invoke-static {p1}, Lcom/metamoji/forSchool/ScSchoolUtils;->isTeacherPersonalLayerId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_4

    .line 5007
    :cond_2
    invoke-static {p1}, Lcom/metamoji/forSchool/ScSchoolUtils;->isPersonalLayerId(Ljava/lang/String;)Z

    move-result v0

    .line 5008
    invoke-static {p1}, Lcom/metamoji/forSchool/ScSchoolUtils;->isClassLayerId(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    .line 5011
    invoke-virtual {p0, v2}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->setMonitorViewThumbnailCache(Landroid/graphics/Bitmap;)V

    .line 5013
    invoke-static {}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->sharedInstance()Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;

    move-result-object v2

    .line 5014
    invoke-virtual {v2}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->getDisplayMonitorType()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_5

    .line 5015
    :goto_0
    iget-object v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewArrayAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    invoke-virtual {v2}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->getCount()I

    move-result v2

    if-ge v3, v2, :cond_7

    .line 5016
    iget-object v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewArrayAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    invoke-virtual {v2, v3}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    .line 5017
    invoke-virtual {v2}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->getLayerId()Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_3

    if-eqz v4, :cond_3

    .line 5020
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    .line 5025
    :cond_3
    invoke-virtual {v2, v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->startReceiveData(Z)V

    .line 5028
    invoke-virtual {v2, v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->setRevalidateTarget(Z)V

    .line 5029
    invoke-virtual {v2}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->revalidateDelay()V

    if-eqz v0, :cond_4

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5037
    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewArrayAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    invoke-virtual {v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->getCount()I

    move-result v1

    if-ge v3, v1, :cond_7

    .line 5038
    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewArrayAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    invoke-virtual {v1, v3}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    .line 5039
    invoke-virtual {v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->getLayerId()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_6

    if-eqz v2, :cond_6

    .line 5042
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_3

    .line 5047
    :cond_6
    invoke-virtual {v1, v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->startReceiveData(Z)V

    .line 5050
    invoke-virtual {v1, v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->setRevalidateTarget(Z)V

    .line 5051
    invoke-virtual {v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->revalidateDelay()V

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    :goto_4
    return-void
.end method

.method public studentViewingPageChanged(Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringStudentViewingPageChangedEvent;)V
    .locals 5

    .line 4882
    invoke-virtual {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->updateStudentCountViewingPage()V

    .line 4884
    invoke-static {}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->sharedInstance()Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;

    move-result-object v0

    .line 4885
    invoke-virtual {v0}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->getDisplayMonitorType()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    .line 4889
    :cond_0
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_pageController:Lcom/metamoji/nt/NtPageController;

    iget-object v1, p1, Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringStudentViewingPageChangedEvent;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtPageController;->getPersonalLayerInfo(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4892
    const-string v1, "layerId"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    .line 4896
    :goto_1
    iget-object v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewArrayAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    invoke-virtual {v2}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 4897
    iget-object v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_monitorViewArrayAdapter:Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    invoke-virtual {v2, v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    .line 4900
    iget-object v3, p1, Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringStudentViewingPageChangedEvent;->userId:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4901
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    new-instance v3, Lcom/metamoji/forSchool/monitoring/ScMonitorList$47;

    invoke-direct {v3, p0, v2, p1, v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$47;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;Lcom/metamoji/forSchool/monitoring/ScMonitorView;Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringStudentViewingPageChangedEvent;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4919
    :cond_3
    :goto_2
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->schoolPersonalStatusDic()Ljava/util/Map;

    move-result-object v0

    .line 4920
    iget-object v1, p1, Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringStudentViewingPageChangedEvent;->userId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 4922
    iget-object p1, p1, Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringStudentViewingPageChangedEvent;->userId:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->updateMonitorUserStatus(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_4
    :goto_3
    return-void
.end method

.method public updateHiddenStudentName(Z)V
    .locals 2

    .line 5164
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/forSchool/monitoring/ScMonitorList$55;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$55;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;Z)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updatePageJumpState()V
    .locals 0

    .line 5127
    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->updatePageJumpBtnEnabled()V

    return-void
.end method

.method public updatePersonalUserStatus(Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringPersonalUserStatusUpdatedEvent;)V
    .locals 1

    .line 5113
    iget-object v0, p1, Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringPersonalUserStatusUpdatedEvent;->userId:Ljava/lang/String;

    .line 5114
    iget-object p1, p1, Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringPersonalUserStatusUpdatedEvent;->status:Ljava/lang/String;

    .line 5116
    invoke-direct {p0, v0, p1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->updateMonitorUserStatus(Ljava/lang/String;Ljava/lang/String;)Z

    .line 5118
    iget-boolean p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_needUpdateFlag:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 5119
    iput-boolean p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_needUpdateFlag:Z

    const/4 v0, 0x1

    .line 5121
    invoke-direct {p0, p1, v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->currentPageChanged(ZZ)V

    :cond_0
    return-void
.end method

.method updateStudentCountViewingPage()V
    .locals 2

    .line 4721
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/forSchool/monitoring/ScMonitorList$42;

    invoke-direct {v1, p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$42;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method updateVisibleStudentNameBtnCaption()V
    .locals 2

    .line 4681
    iget-boolean v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_visibleStudentName:Z

    if-eqz v0, :cond_0

    .line 4682
    sget v0, Lcom/metamoji/noteanytime/R$string;->SCHOOL_HIDE_STUDENT_NAME:I

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4684
    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$string;->SCHOOL_SHOW_STUDENT_NAME:I

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v0

    .line 4687
    :goto_0
    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_visibleStudentNameBtn:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {v1, v0}, Lcom/metamoji/ui/common/UiButton;->setMainTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
