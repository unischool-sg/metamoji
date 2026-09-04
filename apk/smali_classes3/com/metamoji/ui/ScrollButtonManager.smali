.class public Lcom/metamoji/ui/ScrollButtonManager;
.super Ljava/lang/Object;
.source "ScrollButtonManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;
    }
.end annotation


# static fields
.field private static final ACTION_PAGEJUMP:I = 0x1

.field private static final ACTION_PAGENEW:I = 0x2

.field private static final ACTION_SCROLL:I = 0x0

.field private static final ADJUSTMARGINS_DELAY:I = 0x64

.field private static final ALLOW_UNDOREDO:I = 0x20

.field private static final BOTTOM_MARGIN:F = 37.0f

.field private static final BUTTON_IMAGE:[[I

.field private static final COMMANDBUTTONS_WIDTH:F = 92.0f

.field public static final COND_DETAILWINDOW:I = 0x10

.field public static final COND_JUMPLIST:I = 0x8

.field public static final COND_PAGELIST:I = 0x4

.field public static final COND_SHARENOTE:I = 0x40

.field public static final COND_SHOWNAVIBAR:I = 0x2

.field public static final COND_TEXTMODE:I = 0x20

.field public static final COND_UNUSED:I = 0x80

.field public static final COND_VIEWMODE:I = 0x1

.field private static final DIFF_PAGEJUMP:F = 24.0f

.field private static final DRAG_THRESHOLD:F = 10.0f

.field private static final HITAREA_WIDTH:F = 60.0f

.field private static final LEFT_MARGIN:F = 141.0f

.field private static final LONGPRESS_TIME:I = 0xfa

.field private static final MAX_ZOOM_BAR_SPACE:F = 255.0f

.field private static final MIN_HEIGHT:F = 161.0f

.field private static final MOVE_RATIO:F = 0.6f

.field private static final OVER_SCROLL:F = 10.0f

.field private static final OVER_SCROLL_UP:F = 50.0f

.field private static final PAGELIST_WIDTH:F = 174.0f

.field private static final REPEAT_INTERVAL:I = 0x21

.field private static final REPEAT_VELOCITY:F = 400.0f

.field private static final RIGHT_MARGIN:F = -40.0f

.field private static final SIZE_X:F = 60.0f

.field private static final SIZE_Y:F = 80.0f

.field private static final TOP_MARGIN:F = 40.0f

.field private static final TYPE_DOWN:I = 0x3

.field private static final TYPE_LEFT:I = 0x0

.field private static final TYPE_RIGHT:I = 0x1

.field private static final TYPE_UP:I = 0x2


# instance fields
.field private _buttons:[Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;

.field private _currentPage:I

.field private _editorPage:Lcom/metamoji/noteanytime/EditorActivity;

.field private _hideConditionFloater:I

.field private _hideConditions:I

.field private _leftHitArea:Landroid/view/View;

.field private _leftPageButton:Landroid/widget/ImageView;

.field private _onLocationChanged:Lcom/metamoji/cm/ICmEventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/cm/ICmEventHandler<",
            "Lcom/metamoji/nt/NtUserDefaults;",
            ">;"
        }
    .end annotation
.end field

.field private _onShowDelayChanged:Lcom/metamoji/cm/ICmEventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/cm/ICmEventHandler<",
            "Lcom/metamoji/nt/NtUserDefaults;",
            ">;"
        }
    .end annotation
.end field

.field private _pageChangedListener:Lcom/metamoji/cm/ICmEventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/cm/ICmEventHandler<",
            "Lcom/metamoji/df/controller/PageEventContext;",
            ">;"
        }
    .end annotation
.end field

.field private _pages:I

.field private _paperSizeChangedListener:Lcom/metamoji/cm/ICmEventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/cm/ICmEventHandler<",
            "Lcom/metamoji/df/controller/DfPageController;",
            ">;"
        }
    .end annotation
.end field

.field private _prevTime:J

.field private _rightHitArea:Landroid/view/View;

.field private _rightPageButton:Landroid/widget/ImageView;

.field private _sheet:Lcom/metamoji/nt/NtNoteController;

.field private _showDelay:I

.field _sliderArrowsTimer:Lcom/metamoji/cm/UiTimer;

.field private _tapListener:Lcom/metamoji/df/sprite/TapListener;

.field _timer:Lcom/metamoji/cm/UiTimer;

.field private _timerAdjustMargins:Lcom/metamoji/cm/UiTimer;

.field private _touchListener:Lcom/metamoji/df/sprite/TouchListener;

.field private _viewport:Lcom/metamoji/df/sprite/Viewport;

.field private _viewportListener:Lcom/metamoji/df/sprite/ViewportListener;

.field private _zoomBar:Lcom/metamoji/ui/ZoomBar;


# direct methods
.method static bridge synthetic -$$Nest$fget_currentPage(Lcom/metamoji/ui/ScrollButtonManager;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_currentPage:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fget_editorPage(Lcom/metamoji/ui/ScrollButtonManager;)Lcom/metamoji/noteanytime/EditorActivity;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_editorPage:Lcom/metamoji/noteanytime/EditorActivity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_hideConditions(Lcom/metamoji/ui/ScrollButtonManager;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_hideConditions:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fget_leftPageButton(Lcom/metamoji/ui/ScrollButtonManager;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_leftPageButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_pages(Lcom/metamoji/ui/ScrollButtonManager;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_pages:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fget_prevTime(Lcom/metamoji/ui/ScrollButtonManager;)J
    .locals 2

    iget-wide v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_prevTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fget_rightPageButton(Lcom/metamoji/ui/ScrollButtonManager;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_rightPageButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_sheet(Lcom/metamoji/ui/ScrollButtonManager;)Lcom/metamoji/nt/NtNoteController;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_sheet:Lcom/metamoji/nt/NtNoteController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_viewport(Lcom/metamoji/ui/ScrollButtonManager;)Lcom/metamoji/df/sprite/Viewport;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_viewport:Lcom/metamoji/df/sprite/Viewport;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_zoomBar(Lcom/metamoji/ui/ScrollButtonManager;)Lcom/metamoji/ui/ZoomBar;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_zoomBar:Lcom/metamoji/ui/ZoomBar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fput_currentPage(Lcom/metamoji/ui/ScrollButtonManager;I)V
    .locals 0

    iput p1, p0, Lcom/metamoji/ui/ScrollButtonManager;->_currentPage:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fput_pages(Lcom/metamoji/ui/ScrollButtonManager;I)V
    .locals 0

    iput p1, p0, Lcom/metamoji/ui/ScrollButtonManager;->_pages:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fput_prevTime(Lcom/metamoji/ui/ScrollButtonManager;J)V
    .locals 0

    iput-wide p1, p0, Lcom/metamoji/ui/ScrollButtonManager;->_prevTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fput_showDelay(Lcom/metamoji/ui/ScrollButtonManager;I)V
    .locals 0

    iput p1, p0, Lcom/metamoji/ui/ScrollButtonManager;->_showDelay:I

    return-void
.end method

.method static bridge synthetic -$$Nest$maddPage(Lcom/metamoji/ui/ScrollButtonManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/ScrollButtonManager;->addPage(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$madjustMargins(Lcom/metamoji/ui/ScrollButtonManager;Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/ScrollButtonManager;->adjustMargins(Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcancelButtonTimer(Lcom/metamoji/ui/ScrollButtonManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/ScrollButtonManager;->cancelButtonTimer()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mchangePage(Lcom/metamoji/ui/ScrollButtonManager;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/ScrollButtonManager;->changePage(ZLjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckHitArea(Lcom/metamoji/ui/ScrollButtonManager;Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/ScrollButtonManager;->checkHitArea(Lcom/metamoji/df/sprite/TouchEvent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetCommandManager(Lcom/metamoji/ui/ScrollButtonManager;)Lcom/metamoji/nt/NtCommandManager;
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/ScrollButtonManager;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhideCommand(Lcom/metamoji/ui/ScrollButtonManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/ScrollButtonManager;->hideCommand()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmoveDown(Lcom/metamoji/ui/ScrollButtonManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/ScrollButtonManager;->moveDown(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmoveLeft(Lcom/metamoji/ui/ScrollButtonManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/ScrollButtonManager;->moveLeft(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmoveRight(Lcom/metamoji/ui/ScrollButtonManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/ScrollButtonManager;->moveRight(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmoveUp(Lcom/metamoji/ui/ScrollButtonManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/ScrollButtonManager;->moveUp(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpan(Lcom/metamoji/ui/ScrollButtonManager;FF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/ScrollButtonManager;->pan(FF)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreshowButtons(Lcom/metamoji/ui/ScrollButtonManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/ScrollButtonManager;->reshowButtons()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowCommand(Lcom/metamoji/ui/ScrollButtonManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/ScrollButtonManager;->showCommand()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetBUTTON_IMAGE()[[I
    .locals 1

    sget-object v0, Lcom/metamoji/ui/ScrollButtonManager;->BUTTON_IMAGE:[[I

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 1115
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->onetap_scrollbutton_l:I

    sget v1, Lcom/metamoji/noteanytime/R$drawable;->onetap_pagebutton_l:I

    const/4 v2, 0x0

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$drawable;->onetap_scrollbutton_r:I

    sget v3, Lcom/metamoji/noteanytime/R$drawable;->onetap_pagebutton_r:I

    sget v4, Lcom/metamoji/noteanytime/R$drawable;->onetap_pagebutton_rn:I

    filled-new-array {v1, v3, v4}, [I

    move-result-object v1

    sget v3, Lcom/metamoji/noteanytime/R$drawable;->onetap_scrollbutton_u:I

    sget v4, Lcom/metamoji/noteanytime/R$drawable;->onetap_pagebutton_u:I

    filled-new-array {v3, v4, v2}, [I

    move-result-object v2

    sget v3, Lcom/metamoji/noteanytime/R$drawable;->onetap_scrollbutton_d:I

    sget v4, Lcom/metamoji/noteanytime/R$drawable;->onetap_pagebutton_d:I

    sget v5, Lcom/metamoji/noteanytime/R$drawable;->onetap_pagebutton_dn:I

    filled-new-array {v3, v4, v5}, [I

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [[I

    move-result-object v0

    sput-object v0, Lcom/metamoji/ui/ScrollButtonManager;->BUTTON_IMAGE:[[I

    return-void
.end method

.method public constructor <init>(Landroid/widget/RelativeLayout;)V
    .locals 3

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 114
    iput-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_sheet:Lcom/metamoji/nt/NtNoteController;

    .line 115
    iput-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_viewport:Lcom/metamoji/df/sprite/Viewport;

    .line 116
    iput-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_editorPage:Lcom/metamoji/noteanytime/EditorActivity;

    .line 117
    iput-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_leftHitArea:Landroid/view/View;

    .line 118
    iput-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_rightHitArea:Landroid/view/View;

    const/4 v1, 0x4

    .line 120
    new-array v1, v1, [Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;

    iput-object v1, p0, Lcom/metamoji/ui/ScrollButtonManager;->_buttons:[Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;

    .line 125
    new-instance v1, Lcom/metamoji/cm/UiTimer;

    invoke-direct {v1}, Lcom/metamoji/cm/UiTimer;-><init>()V

    iput-object v1, p0, Lcom/metamoji/ui/ScrollButtonManager;->_sliderArrowsTimer:Lcom/metamoji/cm/UiTimer;

    const/4 v1, 0x0

    .line 127
    iput v1, p0, Lcom/metamoji/ui/ScrollButtonManager;->_hideConditions:I

    .line 128
    iput v1, p0, Lcom/metamoji/ui/ScrollButtonManager;->_hideConditionFloater:I

    const/16 v2, 0x64

    .line 134
    iput v2, p0, Lcom/metamoji/ui/ScrollButtonManager;->_showDelay:I

    .line 136
    iput-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_zoomBar:Lcom/metamoji/ui/ZoomBar;

    .line 138
    iput v1, p0, Lcom/metamoji/ui/ScrollButtonManager;->_pages:I

    const/4 v0, -0x1

    .line 139
    iput v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_currentPage:I

    .line 373
    new-instance v0, Lcom/metamoji/cm/UiTimer;

    invoke-direct {v0}, Lcom/metamoji/cm/UiTimer;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_timerAdjustMargins:Lcom/metamoji/cm/UiTimer;

    .line 522
    new-instance v0, Lcom/metamoji/ui/ScrollButtonManager$7;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/ScrollButtonManager$7;-><init>(Lcom/metamoji/ui/ScrollButtonManager;)V

    iput-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_onShowDelayChanged:Lcom/metamoji/cm/ICmEventHandler;

    .line 532
    new-instance v0, Lcom/metamoji/ui/ScrollButtonManager$8;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/ScrollButtonManager$8;-><init>(Lcom/metamoji/ui/ScrollButtonManager;)V

    iput-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_onLocationChanged:Lcom/metamoji/cm/ICmEventHandler;

    .line 548
    new-instance v0, Lcom/metamoji/cm/UiTimer;

    invoke-direct {v0}, Lcom/metamoji/cm/UiTimer;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_timer:Lcom/metamoji/cm/UiTimer;

    .line 550
    new-instance v0, Lcom/metamoji/ui/ScrollButtonManager$9;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/ScrollButtonManager$9;-><init>(Lcom/metamoji/ui/ScrollButtonManager;)V

    iput-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_touchListener:Lcom/metamoji/df/sprite/TouchListener;

    .line 589
    new-instance v0, Lcom/metamoji/ui/ScrollButtonManager$10;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/ScrollButtonManager$10;-><init>(Lcom/metamoji/ui/ScrollButtonManager;)V

    iput-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_viewportListener:Lcom/metamoji/df/sprite/ViewportListener;

    .line 687
    new-instance v0, Lcom/metamoji/ui/ScrollButtonManager$11;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/ScrollButtonManager$11;-><init>(Lcom/metamoji/ui/ScrollButtonManager;)V

    iput-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_tapListener:Lcom/metamoji/df/sprite/TapListener;

    .line 697
    new-instance v0, Lcom/metamoji/ui/ScrollButtonManager$12;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/ScrollButtonManager$12;-><init>(Lcom/metamoji/ui/ScrollButtonManager;)V

    iput-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_pageChangedListener:Lcom/metamoji/cm/ICmEventHandler;

    .line 717
    new-instance v0, Lcom/metamoji/ui/ScrollButtonManager$13;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/ScrollButtonManager$13;-><init>(Lcom/metamoji/ui/ScrollButtonManager;)V

    iput-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_paperSizeChangedListener:Lcom/metamoji/cm/ICmEventHandler;

    .line 142
    invoke-direct {p0, p1}, Lcom/metamoji/ui/ScrollButtonManager;->layoutButtons(Landroid/widget/RelativeLayout;)V

    .line 143
    invoke-virtual {p0}, Lcom/metamoji/ui/ScrollButtonManager;->hideButtons()V

    .line 146
    invoke-virtual {p0}, Lcom/metamoji/ui/ScrollButtonManager;->hideSliderArrowButtonsTmp()V

    return-void
.end method

.method private addPage(Ljava/lang/String;)V
    .locals 3

    .line 981
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 982
    new-instance v1, Lcom/metamoji/cm/CmContext;

    invoke-direct {v1}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 983
    const-string/jumbo v2, "scrollTo"

    invoke-virtual {v1, v2, p1}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 984
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_NEW_PAGE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return-void
.end method

.method private adjustBottomMargin(Landroidx/fragment/app/FragmentActivity;Z)V
    .locals 3

    .line 407
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_buttons:[Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz p2, :cond_0

    .line 408
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x43db0000    # 438.0f

    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    move p2, v1

    :cond_0
    const/4 v0, 0x0

    if-nez p2, :cond_2

    .line 413
    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/high16 p1, 0x430d0000    # 141.0f

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    goto :goto_1

    :cond_2
    :goto_0
    move p1, v0

    :goto_1
    if-eqz p2, :cond_3

    const/high16 p2, 0x42140000    # 37.0f

    .line 414
    invoke-static {p2}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result p2

    neg-float v0, p2

    .line 416
    :cond_3
    iget-object p2, p0, Lcom/metamoji/ui/ScrollButtonManager;->_buttons:[Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;

    const/4 v1, 0x3

    aget-object p2, p2, v1

    invoke-virtual {p2, p1}, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->setX(F)V

    .line 417
    iget-object p1, p0, Lcom/metamoji/ui/ScrollButtonManager;->_buttons:[Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;

    aget-object p1, p1, v1

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->setY(F)V

    return-void
.end method

.method private adjustMargins(Landroidx/fragment/app/FragmentActivity;)V
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_timerAdjustMargins:Lcom/metamoji/cm/UiTimer;

    invoke-virtual {v0}, Lcom/metamoji/cm/UiTimer;->cancel()V

    .line 380
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_editorPage:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-virtual {v0}, Lcom/metamoji/noteanytime/EditorActivity;->getTopAppBarHeight()I

    move-result v0

    .line 381
    invoke-direct {p0, p1, v0}, Lcom/metamoji/ui/ScrollButtonManager;->adjustTopMargin(Landroidx/fragment/app/FragmentActivity;I)V

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 382
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/metamoji/ui/ScrollButtonManager;->adjustBottomMargin(Landroidx/fragment/app/FragmentActivity;Z)V

    return-void
.end method

.method private adjustTopMargin(Landroidx/fragment/app/FragmentActivity;I)V
    .locals 3

    .line 389
    invoke-static {}, Lcom/metamoji/nt/NtTrialManager;->getInstance()Lcom/metamoji/nt/NtTrialManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtTrialManager;->isTrialMode()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/metamoji/ui/ScrollButtonManager;->_editorPage:Lcom/metamoji/noteanytime/EditorActivity;

    .line 390
    invoke-virtual {p1}, Lcom/metamoji/noteanytime/EditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne p1, v1, :cond_0

    move p2, v2

    .line 394
    :cond_0
    iget-object p1, p0, Lcom/metamoji/ui/ScrollButtonManager;->_buttons:[Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;

    const/4 v0, 0x2

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 395
    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 396
    iget-object p1, p0, Lcom/metamoji/ui/ScrollButtonManager;->_buttons:[Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->requestLayout()V

    .line 398
    invoke-virtual {p0}, Lcom/metamoji/ui/ScrollButtonManager;->getZoomBarSpace()I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    const/high16 p2, 0x42200000    # 40.0f

    invoke-static {p2}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result p2

    add-float/2addr p1, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    float-to-int p1, p1

    .line 399
    iget-object p2, p0, Lcom/metamoji/ui/ScrollButtonManager;->_buttons:[Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;

    aget-object p2, p2, v2

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->setY(F)V

    .line 400
    iget-object p2, p0, Lcom/metamoji/ui/ScrollButtonManager;->_buttons:[Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;

    aget-object p2, p2, v1

    invoke-virtual {p2, p1}, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->setY(F)V

    .line 402
    iget-object p1, p0, Lcom/metamoji/ui/ScrollButtonManager;->_zoomBar:Lcom/metamoji/ui/ZoomBar;

    invoke-virtual {p1}, Lcom/metamoji/ui/ZoomBar;->adjustHeight()V

    return-void
.end method

.method private cancelButtonTimer()V
    .locals 4

    .line 438
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_buttons:[Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 439
    invoke-virtual {v3}, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->cancelTimer()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private changePage(ZLjava/lang/String;)V
    .locals 3

    .line 974
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 975
    new-instance v1, Lcom/metamoji/cm/CmContext;

    invoke-direct {v1}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 976
    const-string/jumbo v2, "scrollTo"

    invoke-virtual {v1, v2, p2}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 977
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p2

    if-eqz p1, :cond_0

    sget-object p1, Lcom/metamoji/nt/NtCommand;->CMD_PAGE_FORW:Lcom/metamoji/nt/NtCommand;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/metamoji/nt/NtCommand;->CMD_PAGE_BACKW:Lcom/metamoji/nt/NtCommand;

    :goto_0
    invoke-virtual {p2, p1, v1}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return-void
.end method

.method private checkHitArea(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 0

    return-void
.end method

.method private createButton(Landroid/content/Context;I)Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;
    .locals 2

    .line 330
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_buttons:[Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;

    new-instance v1, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;

    invoke-direct {v1, p0, p1, p2}, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;-><init>(Lcom/metamoji/ui/ScrollButtonManager;Landroid/content/Context;I)V

    aput-object v1, v0, p2

    .line 331
    iget-object p1, p0, Lcom/metamoji/ui/ScrollButtonManager;->_buttons:[Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;

    aget-object p1, p1, p2

    return-object p1
.end method

.method private doHitAction(Z)V
    .locals 3

    .line 1074
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_editorPage:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-virtual {v0}, Lcom/metamoji/noteanytime/EditorActivity;->isJumpListActive()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1081
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_editorPage:Lcom/metamoji/noteanytime/EditorActivity;

    if-eqz p1, :cond_1

    .line 1076
    invoke-virtual {v0}, Lcom/metamoji/noteanytime/EditorActivity;->canPerformLinkJumpForward()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1079
    :cond_0
    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_JUMP_FORW:Lcom/metamoji/nt/NtCommand;

    goto :goto_1

    .line 1081
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/noteanytime/EditorActivity;->canPerformLinkJumpBackward()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 1084
    :cond_2
    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_JUMP_BACKW:Lcom/metamoji/nt/NtCommand;

    goto :goto_1

    .line 1093
    :cond_3
    iget v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_currentPage:I

    if-eqz p1, :cond_5

    .line 1088
    iget v1, p0, Lcom/metamoji/ui/ScrollButtonManager;->_pages:I

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_4

    goto :goto_0

    .line 1091
    :cond_4
    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_PAGE_FORW:Lcom/metamoji/nt/NtCommand;

    goto :goto_1

    :cond_5
    if-gtz v0, :cond_6

    :goto_0
    return-void

    .line 1096
    :cond_6
    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_PAGE_BACKW:Lcom/metamoji/nt/NtCommand;

    :goto_1
    if-eqz p1, :cond_7

    .line 1100
    iget-object p1, p0, Lcom/metamoji/ui/ScrollButtonManager;->_rightHitArea:Landroid/view/View;

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lcom/metamoji/ui/ScrollButtonManager;->_leftHitArea:Landroid/view/View;

    :goto_2
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1101
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    const/4 v1, 0x0

    .line 1102
    invoke-virtual {p1, v1}, Landroid/view/View;->playSoundEffect(I)V

    .line 1104
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v1

    .line 1105
    invoke-virtual {v1}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    .line 1107
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private getCenter()Landroid/graphics/PointF;
    .locals 4

    .line 1029
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_viewport:Lcom/metamoji/df/sprite/Viewport;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Viewport;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v0

    .line 1030
    new-instance v1, Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/metamoji/ui/ScrollButtonManager;->_viewport:Lcom/metamoji/df/sprite/Viewport;

    invoke-virtual {v2}, Lcom/metamoji/df/sprite/Viewport;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/metamoji/ui/ScrollButtonManager;->_viewport:Lcom/metamoji/df/sprite/Viewport;

    invoke-virtual {v3}, Lcom/metamoji/df/sprite/Viewport;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1031
    iget-object v2, p0, Lcom/metamoji/ui/ScrollButtonManager;->_viewport:Lcom/metamoji/df/sprite/Viewport;

    invoke-virtual {v2, v1}, Lcom/metamoji/df/sprite/Viewport;->viewportToStage(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v1

    .line 1032
    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Stage;->stageToSprite(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method private getCommandManager()Lcom/metamoji/nt/NtCommandManager;
    .locals 1

    .line 1555
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1559
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    return-object v0
.end method

.method private getRepeatOffset()F
    .locals 5

    .line 915
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/high16 v2, 0x43c80000    # 400.0f

    .line 916
    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v2

    iget-wide v3, p0, Lcom/metamoji/ui/ScrollButtonManager;->_prevTime:J

    sub-long v3, v0, v3

    long-to-float v3, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    .line 917
    iput-wide v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_prevTime:J

    return v2
.end method

.method private getVisibleRect()Landroid/graphics/RectF;
    .locals 4

    .line 898
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_viewport:Lcom/metamoji/df/sprite/Viewport;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 899
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0

    .line 901
    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/metamoji/ui/ScrollButtonManager;->_viewport:Lcom/metamoji/df/sprite/Viewport;

    invoke-virtual {v2}, Lcom/metamoji/df/sprite/Viewport;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/metamoji/ui/ScrollButtonManager;->_viewport:Lcom/metamoji/df/sprite/Viewport;

    invoke-virtual {v3}, Lcom/metamoji/df/sprite/Viewport;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 902
    iget-object v1, p0, Lcom/metamoji/ui/ScrollButtonManager;->_viewport:Lcom/metamoji/df/sprite/Viewport;

    invoke-virtual {v1, v0}, Lcom/metamoji/df/sprite/Viewport;->viewportToStage(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    .line 903
    iget-object v1, p0, Lcom/metamoji/ui/ScrollButtonManager;->_viewport:Lcom/metamoji/df/sprite/Viewport;

    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Viewport;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v1

    .line 904
    invoke-virtual {v1, v0}, Lcom/metamoji/df/sprite/Stage;->stageToSprite(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method private hideCommand()V
    .locals 1

    .line 884
    invoke-direct {p0}, Lcom/metamoji/ui/ScrollButtonManager;->undoRedoHideConditions()I

    move-result v0

    if-eqz v0, :cond_0

    .line 885
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_editorPage:Lcom/metamoji/noteanytime/EditorActivity;

    if-eqz v0, :cond_0

    .line 886
    invoke-virtual {v0}, Lcom/metamoji/noteanytime/EditorActivity;->hideCommandFloater()V

    :cond_0
    return-void
.end method

.method private layoutButtons(Landroid/widget/RelativeLayout;)V
    .locals 3

    .line 335
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 337
    instance-of v1, v0, Lcom/metamoji/noteanytime/EditorActivity;

    if-eqz v1, :cond_0

    .line 338
    move-object v1, v0

    check-cast v1, Lcom/metamoji/noteanytime/EditorActivity;

    iput-object v1, p0, Lcom/metamoji/ui/ScrollButtonManager;->_editorPage:Lcom/metamoji/noteanytime/EditorActivity;

    .line 339
    sget v2, Lcom/metamoji/noteanytime/R$id;->left_hitarea:I

    invoke-virtual {v1, v2}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/ui/ScrollButtonManager;->_leftHitArea:Landroid/view/View;

    .line 340
    iget-object v1, p0, Lcom/metamoji/ui/ScrollButtonManager;->_editorPage:Lcom/metamoji/noteanytime/EditorActivity;

    sget v2, Lcom/metamoji/noteanytime/R$id;->right_hitarea:I

    invoke-virtual {v1, v2}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/ui/ScrollButtonManager;->_rightHitArea:Landroid/view/View;

    .line 344
    :cond_0
    iget-object v1, p0, Lcom/metamoji/ui/ScrollButtonManager;->_editorPage:Lcom/metamoji/noteanytime/EditorActivity;

    if-eqz v1, :cond_1

    .line 345
    invoke-virtual {v1}, Lcom/metamoji/noteanytime/EditorActivity;->createZoomBar()Lcom/metamoji/ui/ZoomBar;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/ui/ScrollButtonManager;->_zoomBar:Lcom/metamoji/ui/ZoomBar;

    .line 346
    invoke-virtual {v1, p0}, Lcom/metamoji/ui/ZoomBar;->setScrollButtonManager(Lcom/metamoji/ui/ScrollButtonManager;)V

    .line 348
    iget-object v1, p0, Lcom/metamoji/ui/ScrollButtonManager;->_editorPage:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-virtual {v1}, Lcom/metamoji/noteanytime/EditorActivity;->createCommandFloater()Lcom/metamoji/ui/CommandFloater;

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_2

    .line 352
    invoke-direct {p0, v0, v1}, Lcom/metamoji/ui/ScrollButtonManager;->createButton(Landroid/content/Context;I)Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 357
    :cond_2
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/ui/ScrollButtonManager;->makeLeftPageButton(Landroid/widget/RelativeLayout;Landroid/content/Context;)Landroid/widget/ImageView;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/ui/ScrollButtonManager;->_leftPageButton:Landroid/widget/ImageView;

    .line 358
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/ui/ScrollButtonManager;->makeRightPageButton(Landroid/widget/RelativeLayout;Landroid/content/Context;)Landroid/widget/ImageView;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/ScrollButtonManager;->_rightPageButton:Landroid/widget/ImageView;

    .line 361
    iget-object p1, p0, Lcom/metamoji/ui/ScrollButtonManager;->_editorPage:Lcom/metamoji/noteanytime/EditorActivity;

    if-eqz p1, :cond_3

    .line 362
    invoke-virtual {p1}, Lcom/metamoji/noteanytime/EditorActivity;->getTopAppBar()Lcom/metamoji/noteanytime/ActionBar;

    move-result-object p1

    iget-object p1, p1, Lcom/metamoji/noteanytime/ActionBar;->onStatusChangedListener:Lcom/metamoji/cm/CmEventListener;

    new-instance v0, Lcom/metamoji/ui/ScrollButtonManager$6;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/ScrollButtonManager$6;-><init>(Lcom/metamoji/ui/ScrollButtonManager;)V

    invoke-virtual {p1, p0, v0}, Lcom/metamoji/cm/CmEventListener;->add(Ljava/lang/Object;Lcom/metamoji/cm/ICmEventHandler;)V

    :cond_3
    return-void
.end method

.method private moveDown(Z)V
    .locals 7

    .line 935
    invoke-direct {p0}, Lcom/metamoji/ui/ScrollButtonManager;->getVisibleRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 936
    iget-object v1, p0, Lcom/metamoji/ui/ScrollButtonManager;->_sheet:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Stage;->getZoom()F

    move-result v1

    .line 937
    iget-object v2, p0, Lcom/metamoji/ui/ScrollButtonManager;->_sheet:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v2}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v2

    .line 938
    invoke-virtual {v2}, Lcom/metamoji/nt/NtPageController;->getViewportOffset()Landroid/graphics/PointF;

    move-result-object v3

    .line 939
    iget v4, v3, Landroid/graphics/PointF;->y:F

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v5

    const v6, 0x3f19999a    # 0.6f

    mul-float/2addr v5, v6

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/metamoji/ui/ScrollButtonManager;->getRepeatOffset()F

    move-result v5

    div-float/2addr v5, v1

    :goto_0
    add-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/PointF;->y:F

    .line 940
    invoke-virtual {v2}, Lcom/metamoji/nt/NtPageController;->getPaperHeight()F

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    sub-float/2addr v4, v0

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    div-float/2addr v0, v1

    add-float/2addr v4, v0

    .line 941
    iget v0, v3, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_1

    .line 942
    iput v4, v3, Landroid/graphics/PointF;->y:F

    .line 944
    :cond_1
    invoke-virtual {v2, v3, p1}, Lcom/metamoji/nt/NtPageController;->setViewportOffset(Landroid/graphics/PointF;Z)V

    return-void
.end method

.method private moveLeft(Z)V
    .locals 6

    .line 948
    invoke-direct {p0}, Lcom/metamoji/ui/ScrollButtonManager;->getVisibleRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 949
    iget-object v1, p0, Lcom/metamoji/ui/ScrollButtonManager;->_sheet:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Stage;->getZoom()F

    move-result v1

    .line 950
    iget-object v2, p0, Lcom/metamoji/ui/ScrollButtonManager;->_sheet:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v2}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v2

    .line 951
    invoke-virtual {v2}, Lcom/metamoji/nt/NtPageController;->getViewportOffset()Landroid/graphics/PointF;

    move-result-object v3

    .line 952
    iget v4, v3, Landroid/graphics/PointF;->x:F

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const v5, 0x3f19999a    # 0.6f

    mul-float/2addr v0, v5

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/metamoji/ui/ScrollButtonManager;->getRepeatOffset()F

    move-result v0

    div-float/2addr v0, v1

    :goto_0
    sub-float/2addr v4, v0

    iput v4, v3, Landroid/graphics/PointF;->x:F

    const/high16 v0, 0x41200000    # 10.0f

    .line 953
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    neg-float v0, v0

    div-float/2addr v0, v1

    .line 954
    iget v1, v3, Landroid/graphics/PointF;->x:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_1

    .line 955
    iput v0, v3, Landroid/graphics/PointF;->x:F

    .line 957
    :cond_1
    invoke-virtual {v2, v3, p1}, Lcom/metamoji/nt/NtPageController;->setViewportOffset(Landroid/graphics/PointF;Z)V

    return-void
.end method

.method private moveRight(Z)V
    .locals 7

    .line 961
    invoke-direct {p0}, Lcom/metamoji/ui/ScrollButtonManager;->getVisibleRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 962
    iget-object v1, p0, Lcom/metamoji/ui/ScrollButtonManager;->_sheet:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Stage;->getZoom()F

    move-result v1

    .line 963
    iget-object v2, p0, Lcom/metamoji/ui/ScrollButtonManager;->_sheet:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v2}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v2

    .line 964
    invoke-virtual {v2}, Lcom/metamoji/nt/NtPageController;->getViewportOffset()Landroid/graphics/PointF;

    move-result-object v3

    .line 965
    iget v4, v3, Landroid/graphics/PointF;->x:F

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v5

    const v6, 0x3f19999a    # 0.6f

    mul-float/2addr v5, v6

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/metamoji/ui/ScrollButtonManager;->getRepeatOffset()F

    move-result v5

    div-float/2addr v5, v1

    :goto_0
    add-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/PointF;->x:F

    .line 966
    invoke-virtual {v2}, Lcom/metamoji/nt/NtPageController;->getPaperWidth()F

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    sub-float/2addr v4, v0

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    div-float/2addr v0, v1

    add-float/2addr v4, v0

    .line 967
    iget v0, v3, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_1

    .line 968
    iput v4, v3, Landroid/graphics/PointF;->x:F

    .line 970
    :cond_1
    invoke-virtual {v2, v3, p1}, Lcom/metamoji/nt/NtPageController;->setViewportOffset(Landroid/graphics/PointF;Z)V

    return-void
.end method

.method private moveUp(Z)V
    .locals 6

    .line 922
    invoke-direct {p0}, Lcom/metamoji/ui/ScrollButtonManager;->getVisibleRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 923
    iget-object v1, p0, Lcom/metamoji/ui/ScrollButtonManager;->_sheet:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Stage;->getZoom()F

    move-result v1

    .line 924
    iget-object v2, p0, Lcom/metamoji/ui/ScrollButtonManager;->_sheet:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v2}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v2

    .line 925
    invoke-virtual {v2}, Lcom/metamoji/nt/NtPageController;->getViewportOffset()Landroid/graphics/PointF;

    move-result-object v3

    .line 926
    iget v4, v3, Landroid/graphics/PointF;->y:F

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    const v5, 0x3f19999a    # 0.6f

    mul-float/2addr v0, v5

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/metamoji/ui/ScrollButtonManager;->getRepeatOffset()F

    move-result v0

    div-float/2addr v0, v1

    :goto_0
    sub-float/2addr v4, v0

    iput v4, v3, Landroid/graphics/PointF;->y:F

    const/high16 v0, 0x42480000    # 50.0f

    .line 927
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    neg-float v0, v0

    div-float/2addr v0, v1

    .line 928
    iget v1, v3, Landroid/graphics/PointF;->y:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_1

    .line 929
    iput v0, v3, Landroid/graphics/PointF;->y:F

    .line 931
    :cond_1
    invoke-virtual {v2, v3, p1}, Lcom/metamoji/nt/NtPageController;->setViewportOffset(Landroid/graphics/PointF;Z)V

    return-void
.end method

.method private pan(FF)V
    .locals 4

    .line 993
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_sheet:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Stage;->getZoom()F

    move-result v0

    .line 994
    iget-object v1, p0, Lcom/metamoji/ui/ScrollButtonManager;->_sheet:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v1

    .line 995
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getViewportOffset()Landroid/graphics/PointF;

    move-result-object v2

    .line 996
    iget v3, v2, Landroid/graphics/PointF;->x:F

    div-float/2addr p1, v0

    sub-float/2addr v3, p1

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 997
    iget p1, v2, Landroid/graphics/PointF;->y:F

    div-float/2addr p2, v0

    sub-float/2addr p1, p2

    iput p1, v2, Landroid/graphics/PointF;->y:F

    const/4 p1, 0x0

    .line 998
    invoke-virtual {v1, v2, p1}, Lcom/metamoji/nt/NtPageController;->setViewportOffset(Landroid/graphics/PointF;Z)V

    return-void
.end method

.method private reshowButtons()V
    .locals 4

    .line 802
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_timer:Lcom/metamoji/cm/UiTimer;

    new-instance v1, Lcom/metamoji/ui/ScrollButtonManager$14;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/ScrollButtonManager$14;-><init>(Lcom/metamoji/ui/ScrollButtonManager;)V

    iget v2, p0, Lcom/metamoji/ui/ScrollButtonManager;->_showDelay:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/metamoji/cm/UiTimer;->schedule(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private showCommand()V
    .locals 2

    .line 875
    invoke-direct {p0}, Lcom/metamoji/ui/ScrollButtonManager;->undoRedoHideConditions()I

    move-result v0

    if-nez v0, :cond_0

    .line 876
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_editorPage:Lcom/metamoji/noteanytime/EditorActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 877
    invoke-virtual {v0, v1}, Lcom/metamoji/noteanytime/EditorActivity;->showCommandFloater(Z)V

    :cond_0
    return-void
.end method

.method private undoRedoHideConditions()I
    .locals 1

    .line 130
    iget v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_hideConditionFloater:I

    and-int/lit8 v0, v0, -0x21

    return v0
.end method

.method private updateHideConditions()V
    .locals 2

    const/4 v0, 0x0

    .line 268
    iput v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_hideConditions:I

    .line 269
    invoke-static {}, Lcom/metamoji/noteanytime/EditorActivity;->isOneTapScrollerEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x80

    .line 270
    iput v1, p0, Lcom/metamoji/ui/ScrollButtonManager;->_hideConditions:I

    .line 272
    :cond_0
    iput v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_hideConditionFloater:I

    .line 274
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_sheet:Lcom/metamoji/nt/NtNoteController;

    if-eqz v0, :cond_3

    .line 275
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getEditMode()Lcom/metamoji/nt/NtDocument$EditMode;

    move-result-object v0

    .line 276
    sget-object v1, Lcom/metamoji/nt/NtDocument$EditMode;->VIEWMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/metamoji/nt/NtDocument$EditMode;->LASERMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    if-ne v0, v1, :cond_2

    .line 277
    :cond_1
    iget v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_hideConditions:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_hideConditions:I

    .line 278
    iget v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_hideConditionFloater:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_hideConditionFloater:I

    .line 281
    :cond_2
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_sheet:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getToolMode()Lcom/metamoji/nt/NtDocument$ToolMode;

    move-result-object v0

    .line 282
    sget-object v1, Lcom/metamoji/nt/NtDocument$ToolMode;->TEXT:Lcom/metamoji/nt/NtDocument$ToolMode;

    if-ne v0, v1, :cond_3

    .line 283
    iget v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_hideConditions:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_hideConditions:I

    .line 284
    iget v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_hideConditionFloater:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_hideConditionFloater:I

    .line 296
    :cond_3
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_editorPage:Lcom/metamoji/noteanytime/EditorActivity;

    if-eqz v0, :cond_7

    .line 297
    invoke-virtual {v0}, Lcom/metamoji/noteanytime/EditorActivity;->isShowEditorBars()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 298
    iget v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_hideConditions:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_hideConditions:I

    .line 299
    iget v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_hideConditionFloater:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_hideConditionFloater:I

    .line 301
    :cond_4
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_editorPage:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-virtual {v0}, Lcom/metamoji/noteanytime/EditorActivity;->getPageListViewStatus()I

    move-result v0

    if-nez v0, :cond_5

    .line 302
    iget v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_hideConditions:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_hideConditions:I

    .line 303
    iget v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_hideConditionFloater:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_hideConditionFloater:I

    .line 305
    :cond_5
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_editorPage:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-virtual {v0}, Lcom/metamoji/noteanytime/EditorActivity;->getJumpListViewStatus()I

    move-result v0

    if-nez v0, :cond_6

    .line 306
    iget v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_hideConditions:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_hideConditions:I

    .line 307
    iget v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_hideConditionFloater:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_hideConditionFloater:I

    .line 309
    :cond_6
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_editorPage:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-virtual {v0}, Lcom/metamoji/noteanytime/EditorActivity;->isDetailWindowOpen()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 310
    iget v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_hideConditions:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_hideConditions:I

    .line 311
    iget v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_hideConditionFloater:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_hideConditionFloater:I

    .line 315
    :cond_7
    iget v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_hideConditions:I

    and-int/lit8 v0, v0, -0x21

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_viewport:Lcom/metamoji/df/sprite/Viewport;

    if-eqz v0, :cond_8

    .line 316
    invoke-virtual {p0}, Lcom/metamoji/ui/ScrollButtonManager;->show()V

    .line 318
    :cond_8
    iget v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_hideConditions:I

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_viewport:Lcom/metamoji/df/sprite/Viewport;

    if-nez v0, :cond_a

    .line 319
    :cond_9
    invoke-virtual {p0}, Lcom/metamoji/ui/ScrollButtonManager;->hide()V

    .line 321
    :cond_a
    iget v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_hideConditionFloater:I

    and-int/lit8 v0, v0, -0x21

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_viewport:Lcom/metamoji/df/sprite/Viewport;

    if-eqz v0, :cond_b

    .line 322
    invoke-direct {p0}, Lcom/metamoji/ui/ScrollButtonManager;->showCommand()V

    .line 324
    :cond_b
    iget v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_hideConditionFloater:I

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_viewport:Lcom/metamoji/df/sprite/Viewport;

    if-nez v0, :cond_c

    goto :goto_0

    :cond_c
    return-void

    .line 325
    :cond_d
    :goto_0
    invoke-direct {p0}, Lcom/metamoji/ui/ScrollButtonManager;->hideCommand()V

    return-void
.end method


# virtual methods
.method public bind(Lcom/metamoji/nt/NtNoteController;)V
    .locals 2

    .line 444
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_sheet:Lcom/metamoji/nt/NtNoteController;

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 447
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/ScrollButtonManager;->unbind()V

    if-nez p1, :cond_1

    goto :goto_0

    .line 460
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/nt/NtNoteController;->getInteractiveEventManager()Lcom/metamoji/nt/NtInteractiveEventManager;

    move-result-object v0

    if-nez v0, :cond_2

    :goto_0
    return-void

    .line 465
    :cond_2
    iput-object p1, p0, Lcom/metamoji/ui/ScrollButtonManager;->_sheet:Lcom/metamoji/nt/NtNoteController;

    .line 466
    invoke-virtual {p1}, Lcom/metamoji/nt/NtNoteController;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/ScrollButtonManager;->_viewport:Lcom/metamoji/df/sprite/Viewport;

    .line 468
    iget-object p1, p0, Lcom/metamoji/ui/ScrollButtonManager;->_touchListener:Lcom/metamoji/df/sprite/TouchListener;

    invoke-virtual {v0, p1}, Lcom/metamoji/nt/NtInteractiveEventManager;->addTouchListener(Lcom/metamoji/df/sprite/TouchListener;)V

    .line 469
    iget-object p1, p0, Lcom/metamoji/ui/ScrollButtonManager;->_viewportListener:Lcom/metamoji/df/sprite/ViewportListener;

    invoke-virtual {v0, p1}, Lcom/metamoji/nt/NtInteractiveEventManager;->addViewportListener(Lcom/metamoji/df/sprite/ViewportListener;)V

    .line 470
    iget-object p1, p0, Lcom/metamoji/ui/ScrollButtonManager;->_tapListener:Lcom/metamoji/df/sprite/TapListener;

    invoke-virtual {v0, p1}, Lcom/metamoji/nt/NtInteractiveEventManager;->addTapListener(Lcom/metamoji/df/sprite/TapListener;)V

    .line 472
    iget-object p1, p0, Lcom/metamoji/ui/ScrollButtonManager;->_sheet:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtNoteController;->getNumberOfPages()I

    move-result p1

    iput p1, p0, Lcom/metamoji/ui/ScrollButtonManager;->_pages:I

    .line 473
    iget-object p1, p0, Lcom/metamoji/ui/ScrollButtonManager;->_sheet:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtNoteController;->getCurrentPageIndex()I

    move-result p1

    iput p1, p0, Lcom/metamoji/ui/ScrollButtonManager;->_currentPage:I

    .line 475
    iget-object p1, p0, Lcom/metamoji/ui/ScrollButtonManager;->_sheet:Lcom/metamoji/nt/NtNoteController;

    iget-object p1, p1, Lcom/metamoji/nt/NtNoteController;->onPageChangedEventListener:Lcom/metamoji/cm/CmEventListener;

    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_pageChangedListener:Lcom/metamoji/cm/ICmEventHandler;

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmEventListener;->add(Lcom/metamoji/cm/ICmEventHandler;)V

    .line 476
    iget-object p1, p0, Lcom/metamoji/ui/ScrollButtonManager;->_sheet:Lcom/metamoji/nt/NtNoteController;

    iget-object p1, p1, Lcom/metamoji/nt/NtNoteController;->onPaperSizeChangedEventListener:Lcom/metamoji/cm/CmEventListener;

    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_paperSizeChangedListener:Lcom/metamoji/cm/ICmEventHandler;

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmEventListener;->add(Lcom/metamoji/cm/ICmEventHandler;)V

    .line 478
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object p1

    .line 480
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_onShowDelayChanged:Lcom/metamoji/cm/ICmEventHandler;

    invoke-interface {v0, p1}, Lcom/metamoji/cm/ICmEventHandler;->invoke(Ljava/lang/Object;)V

    .line 481
    const-string v0, "OneTapScrollerDisplayDelay"

    iget-object v1, p0, Lcom/metamoji/ui/ScrollButtonManager;->_onShowDelayChanged:Lcom/metamoji/cm/ICmEventHandler;

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/nt/NtUserDefaults;->addOnChangeListener(Ljava/lang/String;Lcom/metamoji/cm/ICmEventHandler;)V

    .line 483
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_onLocationChanged:Lcom/metamoji/cm/ICmEventHandler;

    invoke-interface {v0, p1}, Lcom/metamoji/cm/ICmEventHandler;->invoke(Ljava/lang/Object;)V

    .line 484
    const-string v0, "OneTapScrollerLocation"

    iget-object v1, p0, Lcom/metamoji/ui/ScrollButtonManager;->_onLocationChanged:Lcom/metamoji/cm/ICmEventHandler;

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/nt/NtUserDefaults;->addOnChangeListener(Ljava/lang/String;Lcom/metamoji/cm/ICmEventHandler;)V

    .line 486
    invoke-direct {p0}, Lcom/metamoji/ui/ScrollButtonManager;->updateHideConditions()V

    .line 487
    invoke-virtual {p0}, Lcom/metamoji/ui/ScrollButtonManager;->updateZoomInfo()V

    .line 490
    invoke-virtual {p0}, Lcom/metamoji/ui/ScrollButtonManager;->isVisibilitySliderArrowButtons()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 491
    invoke-virtual {p0}, Lcom/metamoji/ui/ScrollButtonManager;->showSliderArrowButtons()V

    return-void

    .line 493
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/ui/ScrollButtonManager;->hideSliderArrowButtons()V

    return-void
.end method

.method public destroy()V
    .locals 6

    .line 154
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_buttons:[Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;

    if-nez v0, :cond_0

    return-void

    .line 158
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/ScrollButtonManager;->unbind()V

    .line 160
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_editorPage:Lcom/metamoji/noteanytime/EditorActivity;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 161
    invoke-virtual {v0}, Lcom/metamoji/noteanytime/EditorActivity;->destroyZoomBar()V

    .line 162
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_editorPage:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-virtual {v0}, Lcom/metamoji/noteanytime/EditorActivity;->destroyCommandFloater()V

    .line 163
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_editorPage:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-virtual {v0}, Lcom/metamoji/noteanytime/EditorActivity;->getTopAppBar()Lcom/metamoji/noteanytime/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, v0, Lcom/metamoji/noteanytime/ActionBar;->onStatusChangedListener:Lcom/metamoji/cm/CmEventListener;

    invoke-virtual {v0, p0}, Lcom/metamoji/cm/CmEventListener;->remove(Ljava/lang/Object;)V

    .line 167
    :cond_1
    iput-object v1, p0, Lcom/metamoji/ui/ScrollButtonManager;->_editorPage:Lcom/metamoji/noteanytime/EditorActivity;

    .line 168
    iput-object v1, p0, Lcom/metamoji/ui/ScrollButtonManager;->_leftHitArea:Landroid/view/View;

    .line 169
    iput-object v1, p0, Lcom/metamoji/ui/ScrollButtonManager;->_rightHitArea:Landroid/view/View;

    .line 171
    :cond_2
    iput-object v1, p0, Lcom/metamoji/ui/ScrollButtonManager;->_zoomBar:Lcom/metamoji/ui/ZoomBar;

    .line 173
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_buttons:[Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 174
    iget-object v3, p0, Lcom/metamoji/ui/ScrollButtonManager;->_buttons:[Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_3

    aget-object v5, v3, v2

    .line 175
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 177
    :cond_3
    iput-object v1, p0, Lcom/metamoji/ui/ScrollButtonManager;->_buttons:[Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;

    .line 181
    iput-object v1, p0, Lcom/metamoji/ui/ScrollButtonManager;->_leftPageButton:Landroid/widget/ImageView;

    .line 182
    iput-object v1, p0, Lcom/metamoji/ui/ScrollButtonManager;->_rightPageButton:Landroid/widget/ImageView;

    return-void
.end method

.method public getZoomBarSpace()I
    .locals 2

    .line 425
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 426
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/high16 v1, 0x43210000    # 161.0f

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    const/high16 v1, 0x437f0000    # 255.0f

    .line 427
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v1

    float-to-int v1, v1

    if-le v0, v1, :cond_0

    return v1

    :cond_0
    return v0
.end method

.method public hide()V
    .locals 5

    .line 863
    iget v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_hideConditions:I

    if-eqz v0, :cond_1

    .line 864
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_buttons:[Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    const/16 v4, 0x8

    .line 865
    invoke-virtual {v3, v4}, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->setVisibility(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 867
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_editorPage:Lcom/metamoji/noteanytime/EditorActivity;

    if-eqz v0, :cond_1

    .line 868
    invoke-virtual {v0}, Lcom/metamoji/noteanytime/EditorActivity;->hideZoomBar()V

    :cond_1
    return-void
.end method

.method public hideButtons()V
    .locals 6

    .line 813
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_buttons:[Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 814
    invoke-virtual {v4}, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 v5, 0x0

    .line 815
    invoke-virtual {v4, v5}, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->setAlpha(F)V

    .line 816
    invoke-virtual {v4}, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->cancelTimer()V

    .line 817
    invoke-virtual {v4, v2}, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->setClickable(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 820
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_editorPage:Lcom/metamoji/noteanytime/EditorActivity;

    if-eqz v0, :cond_1

    .line 821
    invoke-virtual {v0}, Lcom/metamoji/noteanytime/EditorActivity;->hideZoomBar()V

    .line 822
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_editorPage:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-virtual {v0}, Lcom/metamoji/noteanytime/EditorActivity;->hideCommandFloater()V

    :cond_1
    return-void
.end method

.method hideSliderArrowButtons()V
    .locals 2

    .line 1759
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_leftPageButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 1760
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_leftPageButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1762
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_rightPageButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 1763
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_rightPageButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method hideSliderArrowButtonsTmp()V
    .locals 2

    .line 1769
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_leftPageButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1770
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_leftPageButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1771
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_rightPageButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1772
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_rightPageButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method isVisibilitySliderArrowButtons()Z
    .locals 3

    .line 1704
    iget v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_hideConditions:I

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    return v2

    :cond_1
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_2

    return v2

    :cond_2
    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3

    return v2

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method makeLeftPageButton(Landroid/widget/RelativeLayout;Landroid/content/Context;)Landroid/widget/ImageView;
    .locals 3

    .line 1606
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1610
    sget p2, Lcom/metamoji/noteanytime/R$drawable;->onetap_scrollbutton_l:I

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1611
    new-instance p2, Lcom/metamoji/ui/ScrollButtonManager$17;

    invoke-direct {p2, p0}, Lcom/metamoji/ui/ScrollButtonManager$17;-><init>(Lcom/metamoji/ui/ScrollButtonManager;)V

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/high16 p2, 0x42700000    # 60.0f

    .line 1625
    invoke-static {p2}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result p2

    float-to-int p2, p2

    const/high16 v1, 0x42a00000    # 80.0f

    .line 1626
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v1

    float-to-int v1, v1

    .line 1627
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, p2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p2, 0x9

    .line 1628
    invoke-virtual {v2, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 p2, 0xf

    .line 1629
    invoke-virtual {v2, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1630
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1632
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method makeRightPageButton(Landroid/widget/RelativeLayout;Landroid/content/Context;)Landroid/widget/ImageView;
    .locals 3

    .line 1638
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1642
    sget p2, Lcom/metamoji/noteanytime/R$drawable;->onetap_scrollbutton_r:I

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1643
    new-instance p2, Lcom/metamoji/ui/ScrollButtonManager$18;

    invoke-direct {p2, p0}, Lcom/metamoji/ui/ScrollButtonManager$18;-><init>(Lcom/metamoji/ui/ScrollButtonManager;)V

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/high16 p2, 0x42700000    # 60.0f

    .line 1658
    invoke-static {p2}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result p2

    float-to-int p2, p2

    const/high16 v1, 0x42a00000    # 80.0f

    .line 1659
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v1

    float-to-int v1, v1

    .line 1660
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, p2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p2, 0xb

    .line 1661
    invoke-virtual {v2, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 p2, 0xf

    .line 1662
    invoke-virtual {v2, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1663
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1665
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public notifyEnableCommand(Lcom/metamoji/nt/NtCommand;Z)V
    .locals 2

    .line 1566
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_editorPage:Lcom/metamoji/noteanytime/EditorActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_viewport:Lcom/metamoji/df/sprite/Viewport;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_hideConditions:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1569
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ui/ScrollButtonManager$16;

    invoke-direct {v1, p0, p1, p2}, Lcom/metamoji/ui/ScrollButtonManager$16;-><init>(Lcom/metamoji/ui/ScrollButtonManager;Lcom/metamoji/nt/NtCommand;Z)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method reshowSliderArrowButtons()V
    .locals 4

    .line 1750
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_sliderArrowsTimer:Lcom/metamoji/cm/UiTimer;

    new-instance v1, Lcom/metamoji/ui/ScrollButtonManager$20;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/ScrollButtonManager$20;-><init>(Lcom/metamoji/ui/ScrollButtonManager;)V

    iget v2, p0, Lcom/metamoji/ui/ScrollButtonManager;->_showDelay:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/metamoji/cm/UiTimer;->schedule(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setHideCondition(IZ)V
    .locals 4

    .line 192
    invoke-static {}, Lcom/metamoji/noteanytime/EditorActivity;->isOneTapScrollerEnabled()Z

    move-result v0

    .line 195
    iget v1, p0, Lcom/metamoji/ui/ScrollButtonManager;->_hideConditions:I

    if-nez v0, :cond_0

    or-int/lit16 v0, v1, 0x80

    .line 193
    iput v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_hideConditions:I

    goto :goto_0

    :cond_0
    and-int/lit16 v0, v1, -0x81

    .line 195
    iput v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_hideConditions:I

    .line 211
    :goto_0
    iget v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_hideConditions:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_3

    if-eqz v0, :cond_2

    .line 200
    invoke-direct {p0}, Lcom/metamoji/ui/ScrollButtonManager;->undoRedoHideConditions()I

    move-result v0

    if-nez v0, :cond_1

    and-int/lit8 v0, p1, -0x21

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_2

    :cond_2
    :goto_1
    move v0, v2

    .line 201
    :goto_2
    iget v3, p0, Lcom/metamoji/ui/ScrollButtonManager;->_hideConditions:I

    or-int/2addr v3, p1

    iput v3, p0, Lcom/metamoji/ui/ScrollButtonManager;->_hideConditions:I

    if-eqz v0, :cond_5

    .line 203
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v3, Lcom/metamoji/ui/ScrollButtonManager$1;

    invoke-direct {v3, p0}, Lcom/metamoji/ui/ScrollButtonManager$1;-><init>(Lcom/metamoji/ui/ScrollButtonManager;)V

    invoke-virtual {v0, v3}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    goto :goto_3

    :cond_3
    not-int v3, p1

    and-int/2addr v0, v3

    .line 211
    iput v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_hideConditions:I

    if-eqz v0, :cond_4

    .line 213
    invoke-direct {p0}, Lcom/metamoji/ui/ScrollButtonManager;->undoRedoHideConditions()I

    move-result v0

    if-nez v0, :cond_5

    and-int/lit8 v0, p1, -0x21

    if-eqz v0, :cond_5

    .line 215
    :cond_4
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v3, Lcom/metamoji/ui/ScrollButtonManager$2;

    invoke-direct {v3, p0}, Lcom/metamoji/ui/ScrollButtonManager$2;-><init>(Lcom/metamoji/ui/ScrollButtonManager;)V

    invoke-virtual {v0, v3}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 236
    :cond_5
    :goto_3
    iget v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_hideConditionFloater:I

    if-eqz p2, :cond_8

    if-eqz v0, :cond_6

    .line 225
    invoke-direct {p0}, Lcom/metamoji/ui/ScrollButtonManager;->undoRedoHideConditions()I

    move-result p2

    if-nez p2, :cond_7

    and-int/lit8 p2, p1, -0x21

    if-eqz p2, :cond_7

    :cond_6
    move v1, v2

    .line 226
    :cond_7
    iget p2, p0, Lcom/metamoji/ui/ScrollButtonManager;->_hideConditionFloater:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/metamoji/ui/ScrollButtonManager;->_hideConditionFloater:I

    if-eqz v1, :cond_a

    .line 228
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance p2, Lcom/metamoji/ui/ScrollButtonManager$3;

    invoke-direct {p2, p0}, Lcom/metamoji/ui/ScrollButtonManager$3;-><init>(Lcom/metamoji/ui/ScrollButtonManager;)V

    invoke-virtual {p1, p2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    goto :goto_4

    :cond_8
    not-int p2, p1

    and-int/2addr p2, v0

    .line 236
    iput p2, p0, Lcom/metamoji/ui/ScrollButtonManager;->_hideConditionFloater:I

    if-eqz p2, :cond_9

    .line 238
    invoke-direct {p0}, Lcom/metamoji/ui/ScrollButtonManager;->undoRedoHideConditions()I

    move-result p2

    if-nez p2, :cond_a

    and-int/lit8 p1, p1, -0x21

    if-eqz p1, :cond_a

    .line 240
    :cond_9
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance p2, Lcom/metamoji/ui/ScrollButtonManager$4;

    invoke-direct {p2, p0}, Lcom/metamoji/ui/ScrollButtonManager$4;-><init>(Lcom/metamoji/ui/ScrollButtonManager;)V

    invoke-virtual {p1, p2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 251
    :cond_a
    :goto_4
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance p2, Lcom/metamoji/ui/ScrollButtonManager$5;

    invoke-direct {p2, p0}, Lcom/metamoji/ui/ScrollButtonManager$5;-><init>(Lcom/metamoji/ui/ScrollButtonManager;)V

    invoke-virtual {p1, p2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setScreenShotMode(Z)V
    .locals 1

    .line 1041
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_viewport:Lcom/metamoji/df/sprite/Viewport;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Viewport;->getMainLayer()Lcom/metamoji/df/sprite/Layer;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 1044
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Layer;->beginScreenShot()V

    goto :goto_0

    .line 1046
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Layer;->endScreenShot()V

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    .line 1051
    iget-object p1, p0, Lcom/metamoji/ui/ScrollButtonManager;->_viewport:Lcom/metamoji/df/sprite/Viewport;

    invoke-direct {p0}, Lcom/metamoji/ui/ScrollButtonManager;->getCenter()Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Viewport;->startReboundZoom(Landroid/graphics/PointF;)Z

    :cond_2
    return-void
.end method

.method public setZoom(F)V
    .locals 7

    .line 1008
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_editorPage:Lcom/metamoji/noteanytime/EditorActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_viewport:Lcom/metamoji/df/sprite/Viewport;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1012
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_sheet:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    .line 1013
    iget-object v1, p0, Lcom/metamoji/ui/ScrollButtonManager;->_viewport:Lcom/metamoji/df/sprite/Viewport;

    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Viewport;->getContentOffset()Landroid/graphics/PointF;

    move-result-object v1

    .line 1014
    iget-object v2, p0, Lcom/metamoji/ui/ScrollButtonManager;->_viewport:Lcom/metamoji/df/sprite/Viewport;

    invoke-virtual {v2}, Lcom/metamoji/df/sprite/Viewport;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v2

    .line 1015
    invoke-virtual {v2, v1}, Lcom/metamoji/df/sprite/Stage;->stageToSprite(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v1

    .line 1016
    invoke-direct {p0}, Lcom/metamoji/ui/ScrollButtonManager;->getCenter()Landroid/graphics/PointF;

    move-result-object v3

    .line 1017
    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v5, v1, Landroid/graphics/PointF;->x:F

    iget v6, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v6

    invoke-virtual {v2}, Lcom/metamoji/df/sprite/Stage;->getZoom()F

    move-result v6

    div-float v6, p1, v6

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, v1, Landroid/graphics/PointF;->x:F

    .line 1018
    iget v4, v3, Landroid/graphics/PointF;->y:F

    iget v5, v1, Landroid/graphics/PointF;->y:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v3

    invoke-virtual {v2}, Lcom/metamoji/df/sprite/Stage;->getZoom()F

    move-result v2

    div-float v2, p1, v2

    div-float/2addr v5, v2

    add-float/2addr v4, v5

    iput v4, v1, Landroid/graphics/PointF;->y:F

    .line 1020
    iget-object v2, p0, Lcom/metamoji/ui/ScrollButtonManager;->_sheet:Lcom/metamoji/nt/NtNoteController;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/metamoji/nt/NtNoteController;->setZoom(FZ)V

    const/4 p1, 0x0

    .line 1021
    invoke-virtual {v0, v1, p1}, Lcom/metamoji/nt/NtPageController;->setViewportOffset(Landroid/graphics/PointF;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public show()V
    .locals 4

    .line 833
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_timerAdjustMargins:Lcom/metamoji/cm/UiTimer;

    new-instance v1, Lcom/metamoji/ui/ScrollButtonManager$15;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/ScrollButtonManager$15;-><init>(Lcom/metamoji/ui/ScrollButtonManager;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/metamoji/cm/UiTimer;->schedule(Ljava/lang/Runnable;J)V

    .line 840
    iget v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_hideConditions:I

    if-nez v0, :cond_0

    .line 854
    invoke-virtual {p0}, Lcom/metamoji/ui/ScrollButtonManager;->updateButtons()V

    :cond_0
    return-void
.end method

.method public showButtons()V
    .locals 8

    .line 764
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_viewport:Lcom/metamoji/df/sprite/Viewport;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Viewport;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 771
    :cond_0
    iget v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_hideConditions:I

    const/4 v1, 0x1

    if-nez v0, :cond_3

    .line 772
    invoke-direct {p0}, Lcom/metamoji/ui/ScrollButtonManager;->getVisibleRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 773
    iget-object v2, p0, Lcom/metamoji/ui/ScrollButtonManager;->_sheet:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v2}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v2

    .line 774
    new-instance v3, Landroid/graphics/RectF;

    invoke-virtual {v2}, Lcom/metamoji/nt/NtPageController;->getPaperWidth()F

    move-result v4

    invoke-virtual {v2}, Lcom/metamoji/nt/NtPageController;->getPaperHeight()F

    move-result v2

    const/4 v5, 0x0

    invoke-direct {v3, v5, v5, v4, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 777
    iget-object v2, p0, Lcom/metamoji/ui/ScrollButtonManager;->_buttons:[Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;

    array-length v4, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v2, v5

    .line 778
    invoke-virtual {v6, v0, v3}, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->checkState(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 779
    invoke-virtual {v6, v1}, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->setClickable(Z)V

    .line 780
    invoke-virtual {v6}, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 784
    :cond_2
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_editorPage:Lcom/metamoji/noteanytime/EditorActivity;

    if-eqz v0, :cond_3

    .line 785
    invoke-direct {p0}, Lcom/metamoji/ui/ScrollButtonManager;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    .line 786
    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_CHANGE_VIEW_LOCATION:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v2}, Lcom/metamoji/nt/NtCommandManager;->isCommandEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 787
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_editorPage:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-virtual {v0, v1}, Lcom/metamoji/noteanytime/EditorActivity;->showZoomBar(Z)V

    .line 791
    :cond_3
    invoke-direct {p0}, Lcom/metamoji/ui/ScrollButtonManager;->undoRedoHideConditions()I

    move-result v0

    if-nez v0, :cond_4

    .line 792
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_editorPage:Lcom/metamoji/noteanytime/EditorActivity;

    if-eqz v0, :cond_4

    .line 793
    invoke-virtual {v0, v1}, Lcom/metamoji/noteanytime/EditorActivity;->showCommandFloater(Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method showSliderArrowButtons()V
    .locals 2

    .line 1726
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ui/ScrollButtonManager$19;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/ScrollButtonManager$19;-><init>(Lcom/metamoji/ui/ScrollButtonManager;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method showSliderArrowButtonsWithAnimation()V
    .locals 2

    .line 1744
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_leftPageButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 1745
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_rightPageButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public unbind()V
    .locals 3

    .line 500
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 501
    const-string v1, "OneTapScrollerDisplayDelay"

    iget-object v2, p0, Lcom/metamoji/ui/ScrollButtonManager;->_onShowDelayChanged:Lcom/metamoji/cm/ICmEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtUserDefaults;->removeOnChangeListener(Ljava/lang/String;Lcom/metamoji/cm/ICmEventHandler;)V

    .line 502
    const-string v1, "OneTapScrollerLocation"

    iget-object v2, p0, Lcom/metamoji/ui/ScrollButtonManager;->_onLocationChanged:Lcom/metamoji/cm/ICmEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtUserDefaults;->removeOnChangeListener(Ljava/lang/String;Lcom/metamoji/cm/ICmEventHandler;)V

    .line 504
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_timer:Lcom/metamoji/cm/UiTimer;

    invoke-virtual {v0}, Lcom/metamoji/cm/UiTimer;->cancel()V

    .line 505
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_timerAdjustMargins:Lcom/metamoji/cm/UiTimer;

    invoke-virtual {v0}, Lcom/metamoji/cm/UiTimer;->cancel()V

    .line 506
    invoke-direct {p0}, Lcom/metamoji/ui/ScrollButtonManager;->cancelButtonTimer()V

    .line 508
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_sheet:Lcom/metamoji/nt/NtNoteController;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 509
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getInteractiveEventManager()Lcom/metamoji/nt/NtInteractiveEventManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 511
    iget-object v2, p0, Lcom/metamoji/ui/ScrollButtonManager;->_touchListener:Lcom/metamoji/df/sprite/TouchListener;

    invoke-virtual {v0, v2}, Lcom/metamoji/nt/NtInteractiveEventManager;->removeTouchListener(Lcom/metamoji/df/sprite/TouchListener;)V

    .line 512
    iget-object v2, p0, Lcom/metamoji/ui/ScrollButtonManager;->_viewportListener:Lcom/metamoji/df/sprite/ViewportListener;

    invoke-virtual {v0, v2}, Lcom/metamoji/nt/NtInteractiveEventManager;->removeViewportListener(Lcom/metamoji/df/sprite/ViewportListener;)V

    .line 513
    iget-object v2, p0, Lcom/metamoji/ui/ScrollButtonManager;->_tapListener:Lcom/metamoji/df/sprite/TapListener;

    invoke-virtual {v0, v2}, Lcom/metamoji/nt/NtInteractiveEventManager;->removeTapListener(Lcom/metamoji/df/sprite/TapListener;)V

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_sheet:Lcom/metamoji/nt/NtNoteController;

    iget-object v0, v0, Lcom/metamoji/nt/NtNoteController;->onPageChangedEventListener:Lcom/metamoji/cm/CmEventListener;

    iget-object v2, p0, Lcom/metamoji/ui/ScrollButtonManager;->_pageChangedListener:Lcom/metamoji/cm/ICmEventHandler;

    invoke-virtual {v0, v2}, Lcom/metamoji/cm/CmEventListener;->remove(Ljava/lang/Object;)V

    .line 516
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_sheet:Lcom/metamoji/nt/NtNoteController;

    iget-object v0, v0, Lcom/metamoji/nt/NtNoteController;->onPaperSizeChangedEventListener:Lcom/metamoji/cm/CmEventListener;

    iget-object v2, p0, Lcom/metamoji/ui/ScrollButtonManager;->_paperSizeChangedListener:Lcom/metamoji/cm/ICmEventHandler;

    invoke-virtual {v0, v2}, Lcom/metamoji/cm/CmEventListener;->remove(Ljava/lang/Object;)V

    .line 517
    iput-object v1, p0, Lcom/metamoji/ui/ScrollButtonManager;->_sheet:Lcom/metamoji/nt/NtNoteController;

    .line 519
    :cond_1
    iput-object v1, p0, Lcom/metamoji/ui/ScrollButtonManager;->_viewport:Lcom/metamoji/df/sprite/Viewport;

    return-void
.end method

.method public updateButtons()V
    .locals 9

    .line 743
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_sheet:Lcom/metamoji/nt/NtNoteController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_viewport:Lcom/metamoji/df/sprite/Viewport;

    if-nez v0, :cond_0

    goto :goto_2

    .line 746
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/ui/ScrollButtonManager;->getVisibleRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 747
    iget-object v1, p0, Lcom/metamoji/ui/ScrollButtonManager;->_sheet:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v1

    .line 748
    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getPaperWidth()F

    move-result v3

    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getPaperHeight()F

    move-result v1

    const/4 v4, 0x0

    invoke-direct {v2, v4, v4, v3, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 750
    iget-object v1, p0, Lcom/metamoji/ui/ScrollButtonManager;->_buttons:[Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;

    array-length v3, v1

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v3, :cond_2

    aget-object v7, v1, v6

    .line 751
    invoke-virtual {v7}, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 752
    invoke-virtual {v7, v0, v2}, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->checkState(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    .line 753
    invoke-virtual {v7, v8}, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->setClickable(Z)V

    const/high16 v8, 0x3f800000    # 1.0f

    .line 754
    invoke-virtual {v7, v8}, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->setAlpha(F)V

    goto :goto_1

    .line 756
    :cond_1
    invoke-virtual {v7}, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->cancelTimer()V

    .line 757
    invoke-virtual {v7, v5}, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->setClickable(Z)V

    .line 758
    invoke-virtual {v7, v4}, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->setAlpha(F)V

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method updateSliderArrowButtons()V
    .locals 7

    .line 1671
    invoke-virtual {p0}, Lcom/metamoji/ui/ScrollButtonManager;->isVisibilitySliderArrowButtons()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1674
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1679
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v1

    if-nez v1, :cond_2

    :goto_0
    return-void

    .line 1684
    :cond_2
    iget-object v2, p0, Lcom/metamoji/ui/ScrollButtonManager;->_editorPage:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-virtual {v2}, Lcom/metamoji/noteanytime/EditorActivity;->getPageListViewStatus()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eq v2, v4, :cond_5

    .line 1685
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getCurrentPageIndex()I

    move-result v2

    .line 1686
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getNumberOfPages()I

    move-result v1

    .line 1688
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v5

    sget-object v6, Lcom/metamoji/nt/NtCommand;->CMD_PAGE_BACKW:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v5, v6}, Lcom/metamoji/nt/NtCommandManager;->isCommandEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v5

    .line 1689
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    sget-object v6, Lcom/metamoji/nt/NtCommand;->CMD_PAGE_FORW:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v6}, Lcom/metamoji/nt/NtCommandManager;->isCommandEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v0

    .line 1690
    iget-object v6, p0, Lcom/metamoji/ui/ScrollButtonManager;->_leftPageButton:Landroid/widget/ImageView;

    if-eqz v5, :cond_3

    if-lez v2, :cond_3

    move v5, v3

    goto :goto_1

    :cond_3
    move v5, v4

    :goto_1
    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1691
    iget-object v5, p0, Lcom/metamoji/ui/ScrollButtonManager;->_rightPageButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    add-int/lit8 v1, v1, -0x1

    if-eq v2, v1, :cond_4

    goto :goto_2

    :cond_4
    move v3, v4

    :goto_2
    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    .line 1692
    :cond_5
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_editorPage:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-virtual {v0}, Lcom/metamoji/noteanytime/EditorActivity;->getJumpListViewStatus()I

    move-result v0

    if-eq v0, v4, :cond_8

    .line 1694
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_editorPage:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-virtual {v0}, Lcom/metamoji/noteanytime/EditorActivity;->getJumpList()Lcom/metamoji/nt/itemlist/NtJumpList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/itemlist/NtJumpList;->havePrev()Z

    move-result v0

    .line 1695
    iget-object v1, p0, Lcom/metamoji/ui/ScrollButtonManager;->_editorPage:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-virtual {v1}, Lcom/metamoji/noteanytime/EditorActivity;->getJumpList()Lcom/metamoji/nt/itemlist/NtJumpList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/nt/itemlist/NtJumpList;->haveNext()Z

    move-result v1

    .line 1696
    iget-object v2, p0, Lcom/metamoji/ui/ScrollButtonManager;->_leftPageButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    move v0, v3

    goto :goto_3

    :cond_6
    move v0, v4

    :goto_3
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1697
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_rightPageButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_7

    goto :goto_4

    :cond_7
    move v3, v4

    :goto_4
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1699
    :cond_8
    :goto_5
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_leftPageButton:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1700
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_rightPageButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method public updateZoomInfo()V
    .locals 3

    .line 731
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_sheet:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 735
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getMinZoom()F

    move-result v1

    .line 736
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getMaxZoom()F

    move-result v0

    .line 737
    iget-object v2, p0, Lcom/metamoji/ui/ScrollButtonManager;->_zoomBar:Lcom/metamoji/ui/ZoomBar;

    invoke-virtual {v2, v1, v0}, Lcom/metamoji/ui/ZoomBar;->setZoomRange(FF)V

    .line 738
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager;->_sheet:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Stage;->getZoom()F

    move-result v0

    .line 739
    iget-object v1, p0, Lcom/metamoji/ui/ScrollButtonManager;->_zoomBar:Lcom/metamoji/ui/ZoomBar;

    invoke-virtual {v1, v0}, Lcom/metamoji/ui/ZoomBar;->setZoom(F)V

    return-void
.end method
