.class public Lcom/metamoji/ui/UiDungeonMapView;
.super Landroid/view/View;
.source "UiDungeonMapView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/UiDungeonMapView$ShowInvoker;,
        Lcom/metamoji/ui/UiDungeonMapView$CmContextEventHandler;,
        Lcom/metamoji/ui/UiDungeonMapView$PageControllerEventHandler;,
        Lcom/metamoji/ui/UiDungeonMapView$VoidEventHandler;,
        Lcom/metamoji/ui/UiDungeonMapView$PageEventListener;,
        Lcom/metamoji/ui/UiDungeonMapView$MapPositionChangedEventListener;,
        Lcom/metamoji/ui/UiDungeonMapView$MapStateChangedEventListener;,
        Lcom/metamoji/ui/UiDungeonMapView$Position;
    }
.end annotation


# static fields
.field private static final BOTTOM_MARGIN:I = 0x3c

.field private static final EDGE_MARGIN:I = 0xf

.field private static final EDGE_MARGIN2:I = 0x2a

.field private static final FADEOUT_DURATION:I = 0x12c

.field private static final LIFETIME:I = 0x3e8

.field private static MARGIN_X:I = 0xf

.field private static final MARGIN_X_PHONE:I = 0x5

.field private static final MARGIN_X_TABLET:I = 0xf

.field private static MARGIN_Y:I = 0xf

.field private static final MARGIN_Y_PHONE:I = 0x5

.field private static final MARGIN_Y_TABLET:I = 0xf

.field private static MAX_HEIGHT:I = 0x96

.field private static final MAX_HEIGHT_PHONE:I = 0x50

.field private static final MAX_HEIGHT_TABLET:I = 0x96

.field private static MAX_WIDTH:I = 0x96

.field private static final MAX_WIDTH_PHONE:I = 0x50

.field private static final MAX_WIDTH_TABLET:I = 0x96

.field private static final TOP_MARGIN:I = 0x4b


# instance fields
.field private _closing:Z

.field _contextEventHandler:Lcom/metamoji/ui/UiDungeonMapView$CmContextEventHandler;

.field private _edgeMargin:I

.field _eventListenerRegistered:Z

.field private _hideViolently:Z

.field private _lastActionTime:Ljava/util/Date;

.field private _mainSheet:Lcom/metamoji/nt/NtNoteController;

.field private _mapPositionChangedListener:Lcom/metamoji/ui/UiDungeonMapView$MapPositionChangedEventListener;

.field private _mapStateChangedListener:Lcom/metamoji/ui/UiDungeonMapView$MapStateChangedEventListener;

.field private _needtoinitpos:Z

.field private _noteRect:Landroid/graphics/Rect;

.field _pageControllerEventHandler:Lcom/metamoji/ui/UiDungeonMapView$PageControllerEventHandler;

.field _pageEventListener:Lcom/metamoji/ui/UiDungeonMapView$PageEventListener;

.field private _pageRectTemp:Landroid/graphics/Rect;

.field private _position:I

.field private _scopeRect:Landroid/graphics/Rect;

.field private _scopeRectTemp:Landroid/graphics/Rect;

.field _showInvoker:Lcom/metamoji/ui/UiDungeonMapView$ShowInvoker;

.field private _thumbnail:Landroid/graphics/Bitmap;

.field private _timer:Lcom/metamoji/cm/UiTimer;

.field private _visibilityState:Z

.field private _visible:Z

.field _voidEventHandler:Lcom/metamoji/ui/UiDungeonMapView$VoidEventHandler;

.field private mPaint:Landroid/graphics/Paint;

.field private mRect:Landroid/graphics/Rect;

.field private mRect2:Landroid/graphics/Rect;


# direct methods
.method static bridge synthetic -$$Nest$fget_closing(Lcom/metamoji/ui/UiDungeonMapView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/metamoji/ui/UiDungeonMapView;->_closing:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fget_lastActionTime(Lcom/metamoji/ui/UiDungeonMapView;)Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/UiDungeonMapView;->_lastActionTime:Ljava/util/Date;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_scopeRect(Lcom/metamoji/ui/UiDungeonMapView;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/UiDungeonMapView;->_scopeRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_timer(Lcom/metamoji/ui/UiDungeonMapView;)Lcom/metamoji/cm/UiTimer;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/UiDungeonMapView;->_timer:Lcom/metamoji/cm/UiTimer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_visible(Lcom/metamoji/ui/UiDungeonMapView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/metamoji/ui/UiDungeonMapView;->_visible:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fput_hideViolently(Lcom/metamoji/ui/UiDungeonMapView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/metamoji/ui/UiDungeonMapView;->_hideViolently:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fput_timer(Lcom/metamoji/ui/UiDungeonMapView;Lcom/metamoji/cm/UiTimer;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/ui/UiDungeonMapView;->_timer:Lcom/metamoji/cm/UiTimer;

    return-void
.end method

.method static bridge synthetic -$$Nest$mshow(Lcom/metamoji/ui/UiDungeonMapView;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/UiDungeonMapView;->show()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateNoteDimension(Lcom/metamoji/ui/UiDungeonMapView;Z)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/UiDungeonMapView;->updateNoteDimension(Z)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mupdateThumbnail(Lcom/metamoji/ui/UiDungeonMapView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/UiDungeonMapView;->updateThumbnail(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 80
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 61
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/UiDungeonMapView;->_noteRect:Landroid/graphics/Rect;

    .line 62
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/UiDungeonMapView;->_scopeRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/metamoji/ui/UiDungeonMapView;->_mainSheet:Lcom/metamoji/nt/NtNoteController;

    .line 64
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, p0, Lcom/metamoji/ui/UiDungeonMapView;->_lastActionTime:Ljava/util/Date;

    const/4 v1, 0x0

    .line 65
    iput-boolean v1, p0, Lcom/metamoji/ui/UiDungeonMapView;->_closing:Z

    .line 66
    iput-boolean v1, p0, Lcom/metamoji/ui/UiDungeonMapView;->_visible:Z

    .line 67
    iput-boolean v1, p0, Lcom/metamoji/ui/UiDungeonMapView;->_hideViolently:Z

    const/4 v2, 0x1

    .line 68
    iput-boolean v2, p0, Lcom/metamoji/ui/UiDungeonMapView;->_needtoinitpos:Z

    .line 69
    iput v1, p0, Lcom/metamoji/ui/UiDungeonMapView;->_edgeMargin:I

    .line 72
    iput-boolean v2, p0, Lcom/metamoji/ui/UiDungeonMapView;->_visibilityState:Z

    .line 73
    iput v1, p0, Lcom/metamoji/ui/UiDungeonMapView;->_position:I

    .line 74
    iput-object v0, p0, Lcom/metamoji/ui/UiDungeonMapView;->_timer:Lcom/metamoji/cm/UiTimer;

    .line 194
    iput-boolean v1, p0, Lcom/metamoji/ui/UiDungeonMapView;->_eventListenerRegistered:Z

    .line 286
    new-instance v3, Lcom/metamoji/ui/UiDungeonMapView$ShowInvoker;

    invoke-direct {v3, p0}, Lcom/metamoji/ui/UiDungeonMapView$ShowInvoker;-><init>(Lcom/metamoji/ui/UiDungeonMapView;)V

    iput-object v3, p0, Lcom/metamoji/ui/UiDungeonMapView;->_showInvoker:Lcom/metamoji/ui/UiDungeonMapView$ShowInvoker;

    .line 511
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/metamoji/ui/UiDungeonMapView;->_pageRectTemp:Landroid/graphics/Rect;

    .line 512
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/metamoji/ui/UiDungeonMapView;->_scopeRectTemp:Landroid/graphics/Rect;

    .line 573
    new-instance v3, Lcom/metamoji/ui/UiDungeonMapView$CmContextEventHandler;

    invoke-direct {v3, p0}, Lcom/metamoji/ui/UiDungeonMapView$CmContextEventHandler;-><init>(Lcom/metamoji/ui/UiDungeonMapView;)V

    iput-object v3, p0, Lcom/metamoji/ui/UiDungeonMapView;->_contextEventHandler:Lcom/metamoji/ui/UiDungeonMapView$CmContextEventHandler;

    .line 581
    new-instance v3, Lcom/metamoji/ui/UiDungeonMapView$PageControllerEventHandler;

    invoke-direct {v3, p0}, Lcom/metamoji/ui/UiDungeonMapView$PageControllerEventHandler;-><init>(Lcom/metamoji/ui/UiDungeonMapView;)V

    iput-object v3, p0, Lcom/metamoji/ui/UiDungeonMapView;->_pageControllerEventHandler:Lcom/metamoji/ui/UiDungeonMapView$PageControllerEventHandler;

    .line 589
    new-instance v3, Lcom/metamoji/ui/UiDungeonMapView$VoidEventHandler;

    invoke-direct {v3, p0}, Lcom/metamoji/ui/UiDungeonMapView$VoidEventHandler;-><init>(Lcom/metamoji/ui/UiDungeonMapView;)V

    iput-object v3, p0, Lcom/metamoji/ui/UiDungeonMapView;->_voidEventHandler:Lcom/metamoji/ui/UiDungeonMapView$VoidEventHandler;

    .line 613
    new-instance v3, Lcom/metamoji/ui/UiDungeonMapView$PageEventListener;

    invoke-direct {v3, p0, v0}, Lcom/metamoji/ui/UiDungeonMapView$PageEventListener;-><init>(Lcom/metamoji/ui/UiDungeonMapView;Lcom/metamoji/ui/UiDungeonMapView-IA;)V

    iput-object v3, p0, Lcom/metamoji/ui/UiDungeonMapView;->_pageEventListener:Lcom/metamoji/ui/UiDungeonMapView$PageEventListener;

    .line 638
    new-instance v3, Lcom/metamoji/ui/UiDungeonMapView$MapPositionChangedEventListener;

    invoke-direct {v3, p0, v0}, Lcom/metamoji/ui/UiDungeonMapView$MapPositionChangedEventListener;-><init>(Lcom/metamoji/ui/UiDungeonMapView;Lcom/metamoji/ui/UiDungeonMapView-IA;)V

    iput-object v3, p0, Lcom/metamoji/ui/UiDungeonMapView;->_mapPositionChangedListener:Lcom/metamoji/ui/UiDungeonMapView$MapPositionChangedEventListener;

    .line 652
    new-instance v3, Lcom/metamoji/ui/UiDungeonMapView$MapStateChangedEventListener;

    invoke-direct {v3, p0, v0}, Lcom/metamoji/ui/UiDungeonMapView$MapStateChangedEventListener;-><init>(Lcom/metamoji/ui/UiDungeonMapView;Lcom/metamoji/ui/UiDungeonMapView-IA;)V

    iput-object v3, p0, Lcom/metamoji/ui/UiDungeonMapView;->_mapStateChangedListener:Lcom/metamoji/ui/UiDungeonMapView$MapStateChangedEventListener;

    .line 695
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/UiDungeonMapView;->mPaint:Landroid/graphics/Paint;

    .line 696
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/metamoji/ui/UiDungeonMapView;->mRect:Landroid/graphics/Rect;

    .line 697
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/metamoji/ui/UiDungeonMapView;->mRect2:Landroid/graphics/Rect;

    .line 82
    check-cast p1, Lcom/metamoji/noteanytime/EditorActivity;

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result p1

    if-nez p1, :cond_0

    const/16 p1, 0x50

    .line 83
    sput p1, Lcom/metamoji/ui/UiDungeonMapView;->MAX_WIDTH:I

    .line 84
    sput p1, Lcom/metamoji/ui/UiDungeonMapView;->MAX_HEIGHT:I

    const/4 p1, 0x5

    .line 85
    sput p1, Lcom/metamoji/ui/UiDungeonMapView;->MARGIN_X:I

    .line 86
    sput p1, Lcom/metamoji/ui/UiDungeonMapView;->MARGIN_Y:I

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/UiDungeonMapView;->loadSettings()V

    .line 97
    iput-boolean v2, p0, Lcom/metamoji/ui/UiDungeonMapView;->_needtoinitpos:Z

    const/4 p1, 0x4

    .line 98
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/UiDungeonMapView;->setVisibility(I)V

    return-void
.end method

.method private calcMeasuredSize(II)I
    .locals 2

    .line 678
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 679
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    return p2

    :cond_0
    return p1

    .line 687
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private calcRange(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 10

    .line 470
    iget-object v0, p0, Lcom/metamoji/ui/UiDungeonMapView;->_mainSheet:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v0

    .line 471
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Viewport;->getZoomScale()F

    move-result v1

    .line 472
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Viewport;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 473
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Viewport;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 475
    iget-object v4, p0, Lcom/metamoji/ui/UiDungeonMapView;->_mainSheet:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v4}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v4

    .line 476
    invoke-virtual {v4}, Lcom/metamoji/nt/NtPageController;->getPaperWidth()F

    move-result v5

    mul-float/2addr v5, v1

    .line 477
    invoke-virtual {v4}, Lcom/metamoji/nt/NtPageController;->getPaperHeight()F

    move-result v4

    mul-float/2addr v4, v1

    .line 479
    invoke-virtual {p0}, Lcom/metamoji/ui/UiDungeonMapView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 480
    invoke-virtual {p0}, Lcom/metamoji/ui/UiDungeonMapView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    .line 482
    sget v7, Lcom/metamoji/ui/UiDungeonMapView;->MARGIN_X:I

    int-to-float v7, v7

    invoke-static {v7}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v7, v8

    sub-float v7, v1, v7

    .line 483
    sget v9, Lcom/metamoji/ui/UiDungeonMapView;->MARGIN_Y:I

    int-to-float v9, v9

    invoke-static {v9}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v9

    mul-float/2addr v9, v8

    sub-float v9, v6, v9

    div-float/2addr v7, v5

    div-float/2addr v9, v4

    .line 488
    invoke-static {v9, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    mul-float/2addr v5, v7

    mul-float/2addr v4, v7

    sub-float/2addr v1, v5

    div-float/2addr v1, v8

    sub-float/2addr v6, v4

    div-float/2addr v6, v8

    .line 493
    invoke-static {p1, v1, v6, v5, v4}, Lcom/metamoji/cm/RectEx;->setRect(Landroid/graphics/Rect;FFFF)V

    .line 496
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Viewport;->getContentOffset()Landroid/graphics/PointF;

    move-result-object v0

    .line 498
    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v4, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v4, v7

    add-float/2addr v1, v4

    iget v4, p1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iget v0, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v0, v7

    add-float/2addr v4, v0

    mul-float/2addr v2, v7

    mul-float/2addr v3, v7

    invoke-static {p2, v1, v4, v2, v3}, Lcom/metamoji/cm/RectEx;->setRect(Landroid/graphics/Rect;FFFF)V

    .line 504
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    if-lt v0, v1, :cond_0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    if-ge v0, v1, :cond_1

    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    if-lt v0, v1, :cond_2

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    if-ge p2, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private isPositionLeft()Z
    .locals 2

    .line 107
    iget v0, p0, Lcom/metamoji/ui/UiDungeonMapView;->_position:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isPositionTop()Z
    .locals 2

    .line 116
    iget v0, p0, Lcom/metamoji/ui/UiDungeonMapView;->_position:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isVisible()Z
    .locals 1

    .line 379
    iget-boolean v0, p0, Lcom/metamoji/ui/UiDungeonMapView;->_visible:Z

    return v0
.end method

.method private requestHide()V
    .locals 1

    .line 405
    invoke-direct {p0}, Lcom/metamoji/ui/UiDungeonMapView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 406
    iput-boolean v0, p0, Lcom/metamoji/ui/UiDungeonMapView;->_closing:Z

    :cond_0
    return-void
.end method

.method private requestShow()V
    .locals 2

    const/4 v0, 0x0

    .line 387
    iput-boolean v0, p0, Lcom/metamoji/ui/UiDungeonMapView;->_closing:Z

    .line 388
    iput-boolean v0, p0, Lcom/metamoji/ui/UiDungeonMapView;->_hideViolently:Z

    .line 390
    invoke-direct {p0}, Lcom/metamoji/ui/UiDungeonMapView;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 391
    invoke-direct {p0}, Lcom/metamoji/ui/UiDungeonMapView;->touch()V

    return-void

    .line 395
    :cond_0
    invoke-direct {p0, v0}, Lcom/metamoji/ui/UiDungeonMapView;->updateThumbnail(Z)V

    .line 398
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/ui/UiDungeonMapView;->_showInvoker:Lcom/metamoji/ui/UiDungeonMapView$ShowInvoker;

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setPageDimension(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Z
    .locals 1

    .line 450
    iget-object v0, p0, Lcom/metamoji/ui/UiDungeonMapView;->_scopeRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/ui/UiDungeonMapView;->_noteRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/UiDungeonMapView;->_scopeRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 454
    iget-object p2, p0, Lcom/metamoji/ui/UiDungeonMapView;->_noteRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-eqz p3, :cond_1

    .line 456
    iget-boolean p1, p0, Lcom/metamoji/ui/UiDungeonMapView;->_visible:Z

    if-eqz p1, :cond_1

    .line 457
    invoke-virtual {p0}, Lcom/metamoji/ui/UiDungeonMapView;->postInvalidate()V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private setThumbnail(Lcom/metamoji/cm/Blob;)V
    .locals 2

    .line 414
    iget-object v0, p0, Lcom/metamoji/ui/UiDungeonMapView;->_thumbnail:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 415
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 416
    iput-object v1, p0, Lcom/metamoji/ui/UiDungeonMapView;->_thumbnail:Landroid/graphics/Bitmap;

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 419
    invoke-static {p1, v0, v0, v1}, Lcom/metamoji/cm/ImageUtils;->createBitmapFromBlob(Lcom/metamoji/cm/Blob;IILcom/metamoji/cm/Size;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/UiDungeonMapView;->_thumbnail:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method

.method private show()V
    .locals 7

    .line 292
    iget-boolean v0, p0, Lcom/metamoji/ui/UiDungeonMapView;->_visibilityState:Z

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/UiDungeonMapView;->_mainSheet:Lcom/metamoji/nt/NtNoteController;

    if-nez v0, :cond_1

    goto/16 :goto_2

    .line 298
    :cond_1
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-nez v0, :cond_2

    goto/16 :goto_2

    .line 305
    :cond_2
    iget-boolean v0, p0, Lcom/metamoji/ui/UiDungeonMapView;->_visible:Z

    if-nez v0, :cond_6

    .line 306
    invoke-direct {p0}, Lcom/metamoji/ui/UiDungeonMapView;->touch()V

    .line 308
    iget-boolean v0, p0, Lcom/metamoji/ui/UiDungeonMapView;->_needtoinitpos:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    .line 309
    iput-boolean v0, p0, Lcom/metamoji/ui/UiDungeonMapView;->_needtoinitpos:Z

    .line 310
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    sget v1, Lcom/metamoji/ui/UiDungeonMapView;->MAX_WIDTH:I

    int-to-float v1, v1

    .line 311
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v1

    float-to-int v1, v1

    sget v2, Lcom/metamoji/ui/UiDungeonMapView;->MAX_HEIGHT:I

    int-to-float v2, v2

    .line 312
    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 313
    invoke-direct {p0}, Lcom/metamoji/ui/UiDungeonMapView;->isPositionLeft()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_3

    const/16 v1, 0x9

    .line 315
    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 316
    iget v1, p0, Lcom/metamoji/ui/UiDungeonMapView;->_edgeMargin:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    :cond_3
    const/16 v1, 0xb

    .line 319
    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 320
    iget v1, p0, Lcom/metamoji/ui/UiDungeonMapView;->_edgeMargin:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 322
    :goto_0
    invoke-direct {p0}, Lcom/metamoji/ui/UiDungeonMapView;->isPositionTop()Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0xa

    .line 324
    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/high16 v1, 0x42960000    # 75.0f

    .line 325
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_1

    :cond_4
    const/16 v1, 0xc

    .line 327
    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/high16 v1, 0x42700000    # 60.0f

    .line 328
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 330
    :goto_1
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/UiDungeonMapView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    const/4 v0, 0x1

    .line 333
    iput-boolean v0, p0, Lcom/metamoji/ui/UiDungeonMapView;->_visible:Z

    .line 335
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x12c

    .line 336
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 337
    invoke-virtual {v1, v0}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    .line 338
    invoke-virtual {v1, v0}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 339
    invoke-virtual {p0, v1}, Lcom/metamoji/ui/UiDungeonMapView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 342
    iget-object v0, p0, Lcom/metamoji/ui/UiDungeonMapView;->_timer:Lcom/metamoji/cm/UiTimer;

    if-nez v0, :cond_6

    .line 343
    new-instance v1, Lcom/metamoji/cm/UiTimer;

    invoke-direct {v1}, Lcom/metamoji/cm/UiTimer;-><init>()V

    iput-object v1, p0, Lcom/metamoji/ui/UiDungeonMapView;->_timer:Lcom/metamoji/cm/UiTimer;

    .line 344
    new-instance v2, Lcom/metamoji/ui/UiDungeonMapView$1;

    invoke-direct {v2, p0}, Lcom/metamoji/ui/UiDungeonMapView$1;-><init>(Lcom/metamoji/ui/UiDungeonMapView;)V

    const-wide/16 v3, 0x3e8

    const-wide/16 v5, 0xc8

    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/cm/UiTimer;->schedule(Ljava/lang/Runnable;JJ)V

    :cond_6
    :goto_2
    return-void
.end method

.method private touch()V
    .locals 3

    .line 257
    iget-object v0, p0, Lcom/metamoji/ui/UiDungeonMapView;->_lastActionTime:Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V

    return-void
.end method

.method private updateNoteDimension(Z)Z
    .locals 3

    .line 518
    invoke-direct {p0}, Lcom/metamoji/ui/UiDungeonMapView;->touch()V

    const/4 v0, 0x0

    .line 525
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/ui/UiDungeonMapView;->_pageRectTemp:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/metamoji/ui/UiDungeonMapView;->_scopeRectTemp:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v2}, Lcom/metamoji/ui/UiDungeonMapView;->calcRange(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    .line 526
    iget-object v1, p0, Lcom/metamoji/ui/UiDungeonMapView;->_pageRectTemp:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/metamoji/ui/UiDungeonMapView;->_scopeRectTemp:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v2, p1}, Lcom/metamoji/ui/UiDungeonMapView;->setPageDimension(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 528
    invoke-direct {p0}, Lcom/metamoji/ui/UiDungeonMapView;->requestShow()V

    :cond_0
    if-nez v0, :cond_1

    .line 532
    invoke-direct {p0}, Lcom/metamoji/ui/UiDungeonMapView;->requestHide()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return v0

    :catch_0
    move-exception p1

    .line 535
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return v0
.end method

.method private updateThumbnail(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 544
    invoke-direct {p0, v0}, Lcom/metamoji/ui/UiDungeonMapView;->setThumbnail(Lcom/metamoji/cm/Blob;)V

    .line 545
    iget-object v0, p0, Lcom/metamoji/ui/UiDungeonMapView;->_mainSheet:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    .line 547
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getParent()Lcom/metamoji/df/controller/DfController;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 555
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getThumbnail()Lcom/metamoji/cm/Blob;

    move-result-object v0

    .line 556
    invoke-direct {p0, v0}, Lcom/metamoji/ui/UiDungeonMapView;->setThumbnail(Lcom/metamoji/cm/Blob;)V

    if-eqz p1, :cond_1

    .line 558
    iget-boolean p1, p0, Lcom/metamoji/ui/UiDungeonMapView;->_visible:Z

    if-eqz p1, :cond_1

    .line 559
    invoke-virtual {p0}, Lcom/metamoji/ui/UiDungeonMapView;->postInvalidate()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public bind(Lcom/metamoji/nt/NtNoteController;)V
    .locals 3

    .line 156
    invoke-virtual {p0}, Lcom/metamoji/ui/UiDungeonMapView;->unbind()V

    .line 158
    iput-object p1, p0, Lcom/metamoji/ui/UiDungeonMapView;->_mainSheet:Lcom/metamoji/nt/NtNoteController;

    .line 160
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object p1

    .line 161
    iget-object v0, p0, Lcom/metamoji/ui/UiDungeonMapView;->_mapStateChangedListener:Lcom/metamoji/ui/UiDungeonMapView$MapStateChangedEventListener;

    const-string v1, "DungeonMapState"

    invoke-virtual {p1, v1, v0}, Lcom/metamoji/nt/NtUserDefaults;->addOnChangeListener(Ljava/lang/String;Lcom/metamoji/cm/ICmEventHandler;)V

    .line 162
    const-string v0, "DungeonMapPos"

    iget-object v2, p0, Lcom/metamoji/ui/UiDungeonMapView;->_mapPositionChangedListener:Lcom/metamoji/ui/UiDungeonMapView$MapPositionChangedEventListener;

    invoke-virtual {p1, v0, v2}, Lcom/metamoji/nt/NtUserDefaults;->addOnChangeListener(Ljava/lang/String;Lcom/metamoji/cm/ICmEventHandler;)V

    .line 163
    const-string v0, "OneTapScroller"

    iget-object v2, p0, Lcom/metamoji/ui/UiDungeonMapView;->_mapPositionChangedListener:Lcom/metamoji/ui/UiDungeonMapView$MapPositionChangedEventListener;

    invoke-virtual {p1, v0, v2}, Lcom/metamoji/nt/NtUserDefaults;->addOnChangeListener(Ljava/lang/String;Lcom/metamoji/cm/ICmEventHandler;)V

    .line 164
    const-string v0, "OneTapScrollerLocation"

    iget-object v2, p0, Lcom/metamoji/ui/UiDungeonMapView;->_mapPositionChangedListener:Lcom/metamoji/ui/UiDungeonMapView$MapPositionChangedEventListener;

    invoke-virtual {p1, v0, v2}, Lcom/metamoji/nt/NtUserDefaults;->addOnChangeListener(Ljava/lang/String;Lcom/metamoji/cm/ICmEventHandler;)V

    const/4 v0, 0x1

    .line 165
    invoke-virtual {p1, v1, v0}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/metamoji/ui/UiDungeonMapView;->registerEventListeners()V

    :cond_0
    const/4 p1, 0x0

    .line 169
    invoke-direct {p0, p1}, Lcom/metamoji/ui/UiDungeonMapView;->setThumbnail(Lcom/metamoji/cm/Blob;)V

    return-void
.end method

.method public hide()V
    .locals 3

    .line 365
    iget-boolean v0, p0, Lcom/metamoji/ui/UiDungeonMapView;->_visible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 366
    iput-boolean v0, p0, Lcom/metamoji/ui/UiDungeonMapView;->_visible:Z

    .line 367
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x12c

    .line 368
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v1, 0x1

    .line 369
    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    .line 370
    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 371
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/UiDungeonMapView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public loadSettings()V
    .locals 5

    .line 123
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 125
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v1

    sget-object v2, Lcom/metamoji/nt/NtFeature;->PositionMap:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 126
    const-string v1, "DungeonMapState"

    invoke-virtual {v0, v1, v3}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/metamoji/ui/UiDungeonMapView;->_visibilityState:Z

    goto :goto_0

    .line 128
    :cond_0
    iput-boolean v2, p0, Lcom/metamoji/ui/UiDungeonMapView;->_visibilityState:Z

    .line 130
    :goto_0
    const-string v1, "DungeonMapPos"

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtUserDefaults;->getIntValue(Ljava/lang/String;I)I

    move-result v1

    .line 131
    iget v4, p0, Lcom/metamoji/ui/UiDungeonMapView;->_position:I

    if-ne v1, v4, :cond_1

    iget-boolean v4, p0, Lcom/metamoji/ui/UiDungeonMapView;->_visibilityState:Z

    if-nez v4, :cond_2

    .line 132
    :cond_1
    iput-boolean v3, p0, Lcom/metamoji/ui/UiDungeonMapView;->_needtoinitpos:Z

    .line 134
    :cond_2
    iput v1, p0, Lcom/metamoji/ui/UiDungeonMapView;->_position:I

    .line 137
    invoke-static {}, Lcom/metamoji/noteanytime/EditorActivity;->isOneTapScrollerEnabled()Z

    move-result v1

    .line 138
    const-string v4, "OneTapScrollerLocation"

    invoke-virtual {v0, v4, v2}, Lcom/metamoji/nt/NtUserDefaults;->getIntValue(Ljava/lang/String;I)I

    move-result v0

    .line 140
    invoke-direct {p0}, Lcom/metamoji/ui/UiDungeonMapView;->isPositionTop()Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/metamoji/ui/UiDungeonMapView;->isPositionLeft()Z

    move-result v1

    xor-int/2addr v1, v3

    if-ne v0, v1, :cond_3

    const/high16 v0, 0x42280000    # 42.0f

    .line 142
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    goto :goto_1

    :cond_3
    const/high16 v0, 0x41700000    # 15.0f

    .line 144
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    :goto_1
    float-to-int v0, v0

    .line 146
    iget v1, p0, Lcom/metamoji/ui/UiDungeonMapView;->_edgeMargin:I

    if-eq v0, v1, :cond_4

    .line 147
    iput-boolean v3, p0, Lcom/metamoji/ui/UiDungeonMapView;->_needtoinitpos:Z

    .line 148
    iput v0, p0, Lcom/metamoji/ui/UiDungeonMapView;->_edgeMargin:I

    :cond_4
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 706
    iget-object v0, p0, Lcom/metamoji/ui/UiDungeonMapView;->mPaint:Landroid/graphics/Paint;

    .line 707
    iget-object v1, p0, Lcom/metamoji/ui/UiDungeonMapView;->mRect:Landroid/graphics/Rect;

    .line 708
    invoke-virtual {p0}, Lcom/metamoji/ui/UiDungeonMapView;->getWidth()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/metamoji/ui/UiDungeonMapView;->getHeight()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v1, v3, v3, v2, v4}, Landroid/graphics/Rect;->set(IIII)V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 710
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 711
    iget-boolean v2, p0, Lcom/metamoji/ui/UiDungeonMapView;->_hideViolently:Z

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/metamoji/ui/UiDungeonMapView;->_scopeRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/metamoji/ui/UiDungeonMapView;->_noteRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 712
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 713
    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 714
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void

    :cond_0
    const v2, -0x2f2b2c

    .line 719
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 720
    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 721
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 723
    iget-object v2, p0, Lcom/metamoji/ui/UiDungeonMapView;->_thumbnail:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 725
    iget-object v5, p0, Lcom/metamoji/ui/UiDungeonMapView;->mRect2:Landroid/graphics/Rect;

    .line 726
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v6, p0, Lcom/metamoji/ui/UiDungeonMapView;->_thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v5, v4, v4, v2, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 727
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 728
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 729
    iget-object v2, p0, Lcom/metamoji/ui/UiDungeonMapView;->_thumbnail:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/metamoji/ui/UiDungeonMapView;->_noteRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2, v5, v3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 730
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 731
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    .line 733
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 734
    iget-object v2, p0, Lcom/metamoji/ui/UiDungeonMapView;->_noteRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :goto_0
    const v2, -0xf26042

    .line 738
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 739
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 740
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 743
    iget-object v3, p0, Lcom/metamoji/ui/UiDungeonMapView;->mRect2:Landroid/graphics/Rect;

    .line 744
    iget-object v4, p0, Lcom/metamoji/ui/UiDungeonMapView;->_scopeRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 745
    invoke-static {v3, v1}, Lcom/metamoji/cm/RectUtils;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    const v1, 0x330d9fbe

    .line 746
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 747
    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 748
    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 751
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 752
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 753
    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 666
    sget v0, Lcom/metamoji/ui/UiDungeonMapView;->MAX_WIDTH:I

    int-to-float v0, v0

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    float-to-int v0, v0

    invoke-direct {p0, p1, v0}, Lcom/metamoji/ui/UiDungeonMapView;->calcMeasuredSize(II)I

    move-result p1

    sget v0, Lcom/metamoji/ui/UiDungeonMapView;->MAX_HEIGHT:I

    int-to-float v0, v0

    .line 667
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    float-to-int v0, v0

    invoke-direct {p0, p2, v0}, Lcom/metamoji/ui/UiDungeonMapView;->calcMeasuredSize(II)I

    move-result p2

    .line 666
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/UiDungeonMapView;->setMeasuredDimension(II)V

    return-void
.end method

.method public registerEventListeners()V
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/metamoji/ui/UiDungeonMapView;->_mainSheet:Lcom/metamoji/nt/NtNoteController;

    if-nez v0, :cond_0

    goto :goto_0

    .line 202
    :cond_0
    iget-boolean v1, p0, Lcom/metamoji/ui/UiDungeonMapView;->_eventListenerRegistered:Z

    if-eqz v1, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x1

    .line 205
    iput-boolean v1, p0, Lcom/metamoji/ui/UiDungeonMapView;->_eventListenerRegistered:Z

    .line 207
    iget-object v0, v0, Lcom/metamoji/nt/NtNoteController;->onPageChangedEventListener:Lcom/metamoji/cm/CmEventListener;

    iget-object v1, p0, Lcom/metamoji/ui/UiDungeonMapView;->_pageEventListener:Lcom/metamoji/ui/UiDungeonMapView$PageEventListener;

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmEventListener;->add(Lcom/metamoji/cm/ICmEventHandler;)V

    .line 209
    iget-object v0, p0, Lcom/metamoji/ui/UiDungeonMapView;->_mainSheet:Lcom/metamoji/nt/NtNoteController;

    iget-object v0, v0, Lcom/metamoji/nt/NtNoteController;->onViewportScrollStartEventListener:Lcom/metamoji/cm/CmEventListener;

    iget-object v1, p0, Lcom/metamoji/ui/UiDungeonMapView;->_contextEventHandler:Lcom/metamoji/ui/UiDungeonMapView$CmContextEventHandler;

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmEventListener;->add(Lcom/metamoji/cm/ICmEventHandler;)V

    .line 210
    iget-object v0, p0, Lcom/metamoji/ui/UiDungeonMapView;->_mainSheet:Lcom/metamoji/nt/NtNoteController;

    iget-object v0, v0, Lcom/metamoji/nt/NtNoteController;->onViewportScrollChangedEventListener:Lcom/metamoji/cm/CmEventListener;

    iget-object v1, p0, Lcom/metamoji/ui/UiDungeonMapView;->_contextEventHandler:Lcom/metamoji/ui/UiDungeonMapView$CmContextEventHandler;

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmEventListener;->add(Lcom/metamoji/cm/ICmEventHandler;)V

    .line 211
    iget-object v0, p0, Lcom/metamoji/ui/UiDungeonMapView;->_mainSheet:Lcom/metamoji/nt/NtNoteController;

    iget-object v0, v0, Lcom/metamoji/nt/NtNoteController;->onViewportScrollEndEventListener:Lcom/metamoji/cm/CmEventListener;

    iget-object v1, p0, Lcom/metamoji/ui/UiDungeonMapView;->_contextEventHandler:Lcom/metamoji/ui/UiDungeonMapView$CmContextEventHandler;

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmEventListener;->add(Lcom/metamoji/cm/ICmEventHandler;)V

    .line 212
    iget-object v0, p0, Lcom/metamoji/ui/UiDungeonMapView;->_mainSheet:Lcom/metamoji/nt/NtNoteController;

    iget-object v0, v0, Lcom/metamoji/nt/NtNoteController;->onViewportScrollChangingEventListener:Lcom/metamoji/cm/CmEventListener;

    iget-object v1, p0, Lcom/metamoji/ui/UiDungeonMapView;->_voidEventHandler:Lcom/metamoji/ui/UiDungeonMapView$VoidEventHandler;

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmEventListener;->add(Lcom/metamoji/cm/ICmEventHandler;)V

    .line 214
    iget-object v0, p0, Lcom/metamoji/ui/UiDungeonMapView;->_mainSheet:Lcom/metamoji/nt/NtNoteController;

    iget-object v0, v0, Lcom/metamoji/nt/NtNoteController;->onViewportZoomStartEventListener:Lcom/metamoji/cm/CmEventListener;

    iget-object v1, p0, Lcom/metamoji/ui/UiDungeonMapView;->_contextEventHandler:Lcom/metamoji/ui/UiDungeonMapView$CmContextEventHandler;

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmEventListener;->add(Lcom/metamoji/cm/ICmEventHandler;)V

    .line 215
    iget-object v0, p0, Lcom/metamoji/ui/UiDungeonMapView;->_mainSheet:Lcom/metamoji/nt/NtNoteController;

    iget-object v0, v0, Lcom/metamoji/nt/NtNoteController;->onViewportZoomEndEventListener:Lcom/metamoji/cm/CmEventListener;

    iget-object v1, p0, Lcom/metamoji/ui/UiDungeonMapView;->_contextEventHandler:Lcom/metamoji/ui/UiDungeonMapView$CmContextEventHandler;

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmEventListener;->add(Lcom/metamoji/cm/ICmEventHandler;)V

    .line 216
    iget-object v0, p0, Lcom/metamoji/ui/UiDungeonMapView;->_mainSheet:Lcom/metamoji/nt/NtNoteController;

    iget-object v0, v0, Lcom/metamoji/nt/NtNoteController;->onViewportZoomChangedEventListener:Lcom/metamoji/cm/CmEventListener;

    iget-object v1, p0, Lcom/metamoji/ui/UiDungeonMapView;->_contextEventHandler:Lcom/metamoji/ui/UiDungeonMapView$CmContextEventHandler;

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmEventListener;->add(Lcom/metamoji/cm/ICmEventHandler;)V

    .line 217
    iget-object v0, p0, Lcom/metamoji/ui/UiDungeonMapView;->_mainSheet:Lcom/metamoji/nt/NtNoteController;

    iget-object v0, v0, Lcom/metamoji/nt/NtNoteController;->onViewportZoomChangingEventListener:Lcom/metamoji/cm/CmEventListener;

    iget-object v1, p0, Lcom/metamoji/ui/UiDungeonMapView;->_voidEventHandler:Lcom/metamoji/ui/UiDungeonMapView$VoidEventHandler;

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmEventListener;->add(Lcom/metamoji/cm/ICmEventHandler;)V

    .line 219
    iget-object v0, p0, Lcom/metamoji/ui/UiDungeonMapView;->_mainSheet:Lcom/metamoji/nt/NtNoteController;

    iget-object v0, v0, Lcom/metamoji/nt/NtNoteController;->onWorkareaChangedEventListener:Lcom/metamoji/cm/CmEventListener;

    iget-object v1, p0, Lcom/metamoji/ui/UiDungeonMapView;->_pageControllerEventHandler:Lcom/metamoji/ui/UiDungeonMapView$PageControllerEventHandler;

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmEventListener;->add(Lcom/metamoji/cm/ICmEventHandler;)V

    .line 220
    iget-object v0, p0, Lcom/metamoji/ui/UiDungeonMapView;->_mainSheet:Lcom/metamoji/nt/NtNoteController;

    iget-object v0, v0, Lcom/metamoji/nt/NtNoteController;->onPaperSizeChangedEventListener:Lcom/metamoji/cm/CmEventListener;

    iget-object v1, p0, Lcom/metamoji/ui/UiDungeonMapView;->_pageControllerEventHandler:Lcom/metamoji/ui/UiDungeonMapView$PageControllerEventHandler;

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmEventListener;->add(Lcom/metamoji/cm/ICmEventHandler;)V

    .line 221
    iget-object v0, p0, Lcom/metamoji/ui/UiDungeonMapView;->_mainSheet:Lcom/metamoji/nt/NtNoteController;

    iget-object v0, v0, Lcom/metamoji/nt/NtNoteController;->onOrientationChangeEventListener:Lcom/metamoji/cm/CmEventListener;

    iget-object v1, p0, Lcom/metamoji/ui/UiDungeonMapView;->_contextEventHandler:Lcom/metamoji/ui/UiDungeonMapView$CmContextEventHandler;

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmEventListener;->add(Lcom/metamoji/cm/ICmEventHandler;)V

    return-void
.end method

.method public unbind()V
    .locals 5

    .line 176
    iget-object v0, p0, Lcom/metamoji/ui/UiDungeonMapView;->_mainSheet:Lcom/metamoji/nt/NtNoteController;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 177
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 178
    iget-object v2, p0, Lcom/metamoji/ui/UiDungeonMapView;->_mapStateChangedListener:Lcom/metamoji/ui/UiDungeonMapView$MapStateChangedEventListener;

    const-string v3, "DungeonMapState"

    invoke-virtual {v0, v3, v2}, Lcom/metamoji/nt/NtUserDefaults;->removeOnChangeListener(Ljava/lang/String;Lcom/metamoji/cm/ICmEventHandler;)V

    .line 179
    const-string v2, "DungeonMapPos"

    iget-object v4, p0, Lcom/metamoji/ui/UiDungeonMapView;->_mapPositionChangedListener:Lcom/metamoji/ui/UiDungeonMapView$MapPositionChangedEventListener;

    invoke-virtual {v0, v2, v4}, Lcom/metamoji/nt/NtUserDefaults;->removeOnChangeListener(Ljava/lang/String;Lcom/metamoji/cm/ICmEventHandler;)V

    .line 180
    const-string v2, "OneTapScroller"

    iget-object v4, p0, Lcom/metamoji/ui/UiDungeonMapView;->_mapPositionChangedListener:Lcom/metamoji/ui/UiDungeonMapView$MapPositionChangedEventListener;

    invoke-virtual {v0, v2, v4}, Lcom/metamoji/nt/NtUserDefaults;->removeOnChangeListener(Ljava/lang/String;Lcom/metamoji/cm/ICmEventHandler;)V

    .line 181
    const-string v2, "OneTapScrollerLocation"

    iget-object v4, p0, Lcom/metamoji/ui/UiDungeonMapView;->_mapPositionChangedListener:Lcom/metamoji/ui/UiDungeonMapView$MapPositionChangedEventListener;

    invoke-virtual {v0, v2, v4}, Lcom/metamoji/nt/NtUserDefaults;->removeOnChangeListener(Ljava/lang/String;Lcom/metamoji/cm/ICmEventHandler;)V

    const/4 v2, 0x1

    .line 182
    invoke-virtual {v0, v3, v2}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {p0}, Lcom/metamoji/ui/UiDungeonMapView;->unregisterEventListeners()V

    .line 185
    :cond_0
    iput-object v1, p0, Lcom/metamoji/ui/UiDungeonMapView;->_mainSheet:Lcom/metamoji/nt/NtNoteController;

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ui/UiDungeonMapView;->_thumbnail:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 188
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 189
    iput-object v1, p0, Lcom/metamoji/ui/UiDungeonMapView;->_thumbnail:Landroid/graphics/Bitmap;

    :cond_2
    return-void
.end method

.method public unregisterEventListeners()V
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/metamoji/ui/UiDungeonMapView;->_mainSheet:Lcom/metamoji/nt/NtNoteController;

    if-nez v0, :cond_0

    goto :goto_0

    .line 231
    :cond_0
    iget-boolean v1, p0, Lcom/metamoji/ui/UiDungeonMapView;->_eventListenerRegistered:Z

    if-nez v1, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    .line 234
    iput-boolean v1, p0, Lcom/metamoji/ui/UiDungeonMapView;->_eventListenerRegistered:Z

    .line 236
    iget-object v0, v0, Lcom/metamoji/nt/NtNoteController;->onPageChangedEventListener:Lcom/metamoji/cm/CmEventListener;

    iget-object v1, p0, Lcom/metamoji/ui/UiDungeonMapView;->_pageEventListener:Lcom/metamoji/ui/UiDungeonMapView$PageEventListener;

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmEventListener;->remove(Ljava/lang/Object;)V

    .line 238
    iget-object v0, p0, Lcom/metamoji/ui/UiDungeonMapView;->_mainSheet:Lcom/metamoji/nt/NtNoteController;

    iget-object v0, v0, Lcom/metamoji/nt/NtNoteController;->onViewportScrollStartEventListener:Lcom/metamoji/cm/CmEventListener;

    iget-object v1, p0, Lcom/metamoji/ui/UiDungeonMapView;->_contextEventHandler:Lcom/metamoji/ui/UiDungeonMapView$CmContextEventHandler;

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmEventListener;->remove(Ljava/lang/Object;)V

    .line 239
    iget-object v0, p0, Lcom/metamoji/ui/UiDungeonMapView;->_mainSheet:Lcom/metamoji/nt/NtNoteController;

    iget-object v0, v0, Lcom/metamoji/nt/NtNoteController;->onViewportScrollChangedEventListener:Lcom/metamoji/cm/CmEventListener;

    iget-object v1, p0, Lcom/metamoji/ui/UiDungeonMapView;->_contextEventHandler:Lcom/metamoji/ui/UiDungeonMapView$CmContextEventHandler;

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmEventListener;->remove(Ljava/lang/Object;)V

    .line 240
    iget-object v0, p0, Lcom/metamoji/ui/UiDungeonMapView;->_mainSheet:Lcom/metamoji/nt/NtNoteController;

    iget-object v0, v0, Lcom/metamoji/nt/NtNoteController;->onViewportScrollEndEventListener:Lcom/metamoji/cm/CmEventListener;

    iget-object v1, p0, Lcom/metamoji/ui/UiDungeonMapView;->_contextEventHandler:Lcom/metamoji/ui/UiDungeonMapView$CmContextEventHandler;

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmEventListener;->remove(Ljava/lang/Object;)V

    .line 241
    iget-object v0, p0, Lcom/metamoji/ui/UiDungeonMapView;->_mainSheet:Lcom/metamoji/nt/NtNoteController;

    iget-object v0, v0, Lcom/metamoji/nt/NtNoteController;->onViewportScrollChangingEventListener:Lcom/metamoji/cm/CmEventListener;

    iget-object v1, p0, Lcom/metamoji/ui/UiDungeonMapView;->_voidEventHandler:Lcom/metamoji/ui/UiDungeonMapView$VoidEventHandler;

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmEventListener;->remove(Ljava/lang/Object;)V

    .line 243
    iget-object v0, p0, Lcom/metamoji/ui/UiDungeonMapView;->_mainSheet:Lcom/metamoji/nt/NtNoteController;

    iget-object v0, v0, Lcom/metamoji/nt/NtNoteController;->onViewportZoomStartEventListener:Lcom/metamoji/cm/CmEventListener;

    iget-object v1, p0, Lcom/metamoji/ui/UiDungeonMapView;->_contextEventHandler:Lcom/metamoji/ui/UiDungeonMapView$CmContextEventHandler;

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmEventListener;->remove(Ljava/lang/Object;)V

    .line 244
    iget-object v0, p0, Lcom/metamoji/ui/UiDungeonMapView;->_mainSheet:Lcom/metamoji/nt/NtNoteController;

    iget-object v0, v0, Lcom/metamoji/nt/NtNoteController;->onViewportZoomEndEventListener:Lcom/metamoji/cm/CmEventListener;

    iget-object v1, p0, Lcom/metamoji/ui/UiDungeonMapView;->_contextEventHandler:Lcom/metamoji/ui/UiDungeonMapView$CmContextEventHandler;

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmEventListener;->remove(Ljava/lang/Object;)V

    .line 245
    iget-object v0, p0, Lcom/metamoji/ui/UiDungeonMapView;->_mainSheet:Lcom/metamoji/nt/NtNoteController;

    iget-object v0, v0, Lcom/metamoji/nt/NtNoteController;->onViewportZoomChangedEventListener:Lcom/metamoji/cm/CmEventListener;

    iget-object v1, p0, Lcom/metamoji/ui/UiDungeonMapView;->_contextEventHandler:Lcom/metamoji/ui/UiDungeonMapView$CmContextEventHandler;

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmEventListener;->remove(Ljava/lang/Object;)V

    .line 246
    iget-object v0, p0, Lcom/metamoji/ui/UiDungeonMapView;->_mainSheet:Lcom/metamoji/nt/NtNoteController;

    iget-object v0, v0, Lcom/metamoji/nt/NtNoteController;->onViewportZoomChangingEventListener:Lcom/metamoji/cm/CmEventListener;

    iget-object v1, p0, Lcom/metamoji/ui/UiDungeonMapView;->_voidEventHandler:Lcom/metamoji/ui/UiDungeonMapView$VoidEventHandler;

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmEventListener;->remove(Ljava/lang/Object;)V

    .line 248
    iget-object v0, p0, Lcom/metamoji/ui/UiDungeonMapView;->_mainSheet:Lcom/metamoji/nt/NtNoteController;

    iget-object v0, v0, Lcom/metamoji/nt/NtNoteController;->onWorkareaChangedEventListener:Lcom/metamoji/cm/CmEventListener;

    iget-object v1, p0, Lcom/metamoji/ui/UiDungeonMapView;->_pageControllerEventHandler:Lcom/metamoji/ui/UiDungeonMapView$PageControllerEventHandler;

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmEventListener;->remove(Ljava/lang/Object;)V

    .line 249
    iget-object v0, p0, Lcom/metamoji/ui/UiDungeonMapView;->_mainSheet:Lcom/metamoji/nt/NtNoteController;

    iget-object v0, v0, Lcom/metamoji/nt/NtNoteController;->onPaperSizeChangedEventListener:Lcom/metamoji/cm/CmEventListener;

    iget-object v1, p0, Lcom/metamoji/ui/UiDungeonMapView;->_pageControllerEventHandler:Lcom/metamoji/ui/UiDungeonMapView$PageControllerEventHandler;

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmEventListener;->remove(Ljava/lang/Object;)V

    .line 250
    iget-object v0, p0, Lcom/metamoji/ui/UiDungeonMapView;->_mainSheet:Lcom/metamoji/nt/NtNoteController;

    iget-object v0, v0, Lcom/metamoji/nt/NtNoteController;->onOrientationChangeEventListener:Lcom/metamoji/cm/CmEventListener;

    iget-object v1, p0, Lcom/metamoji/ui/UiDungeonMapView;->_contextEventHandler:Lcom/metamoji/ui/UiDungeonMapView$CmContextEventHandler;

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmEventListener;->remove(Ljava/lang/Object;)V

    return-void
.end method
