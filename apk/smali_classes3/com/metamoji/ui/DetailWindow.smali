.class public Lcom/metamoji/ui/DetailWindow;
.super Landroidx/fragment/app/Fragment;
.source "DetailWindow.java"


# static fields
.field private static final AUTOSCROLL_AREAWIDTH:F = 132.0f

.field private static final AUTOSCROLL_INTERVAL:F = 0.6f

.field private static final BOTTOM_BORDER_HEIGHT:F = 4.0f

.field private static final DETAILWINDOW_PRECISION:F = 0.001f

.field private static final DRAG_THRESHOLD:F = 10.0f

.field private static final FLOATING_ALPHA:F = 0.8f

.field private static final FLOATING_THRESHOLD:F = 10.0f

.field private static final HORIZONTAL_MOVE_RATIO:F = 0.8f

.field public static final LINEFEED_WIDTH:F = 0.8f

.field private static final MARGIN_HANDLE_POS:F = 50.0f

.field private static final MARGIN_LEFT:F = 45.0f

.field private static final MARGIN_RIGHT:F = 15.0f

.field private static final MAX_HEIGHT_RESERVE:F = 200.0f

.field public static final MAX_ZOOM:F = 100.0f

.field private static final MIN_HEIGHT:F = 80.0f

.field public static final MIN_ZOOM:F = 1.0f

.field private static final PROFKEY_AUTOSCROLL:Ljava/lang/String; = "autoScroll"

.field private static final PROFKEY_AUTOSCROLL_AREA_WIDTH:Ljava/lang/String; = "autoScrollAreaWidth"

.field private static final PROFKEY_AUTOSCROLL_INTERVAL:Ljava/lang/String; = "autoScrollInterval"

.field private static final PROFKEY_FEEDSTEP_WIDTH:Ljava/lang/String; = "feedStepWidth"

.field private static final PROFKEY_FORCE_WINDOW_STEP:Ljava/lang/String; = "forceWindowStep"

.field private static final PROFKEY_LINEFEED_WIDTH:Ljava/lang/String; = "lineFeedWidth"

.field private static final PROFKEY_MARGIN_LINE_VISIBLE:Ljava/lang/String; = "marginLineVisible"

.field private static final RIGHT_MOVE_STAY:F = 60.0f


# instance fields
.field private _addView:Lcom/metamoji/ui/DetailAdditionalLineView;

.field private _autoScroll:Z

.field private _autoScrollArea:Landroid/view/View;

.field private _autoScrollAreaWidth:F

.field private _autoScrollInterval:F

.field _autoScrollTimer:Lcom/metamoji/cm/UiTimer;

.field private _baseFloatingPos:I

.field private _canvas:Lcom/metamoji/ui/DetailView;

.field private _downY:F

.field private _feedStepWidth:F

.field private _floatingPos:F

.field private _floatingPos0:F

.field private _forceWindowStep:Z

.field private _frame:Lcom/metamoji/ui/DetailFrame;

.field private _frameState:Landroid/os/Bundle;

.field private _height:I

.field private _height0:F

.field private _initSize:Z

.field private _lineFeedWidth:F

.field private _main:Landroid/view/View;

.field private _margin:[Lcom/metamoji/ui/DetailMargin;

.field private _marginLineVisible:Z

.field private _marginb:[Lcom/metamoji/ui/DetailMargin;

.field private _maxHeight:F

.field private _minHeight:F

.field private _moving:Z

.field private _mx:[F

.field private _onPaperSizeChanged:Lcom/metamoji/cm/ICmEventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/cm/ICmEventHandler<",
            "Lcom/metamoji/df/controller/DfPageController;",
            ">;"
        }
    .end annotation
.end field

.field private _onViewportScrollChanged:Lcom/metamoji/cm/ICmEventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/cm/ICmEventHandler<",
            "Lcom/metamoji/cm/CmContext;",
            ">;"
        }
    .end annotation
.end field

.field private _onViewportScrollChanging:Lcom/metamoji/cm/ICmEventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/cm/ICmEventHandler<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private _onViewportSizeChanged:Lcom/metamoji/cm/ICmEventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/cm/ICmEventHandler<",
            "Lcom/metamoji/cm/CmContext;",
            ">;"
        }
    .end annotation
.end field

.field private _onViewportZoomChanged:Lcom/metamoji/cm/ICmEventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/cm/ICmEventHandler<",
            "Lcom/metamoji/cm/CmContext;",
            ">;"
        }
    .end annotation
.end field

.field private _onViewportZoomChanging:Lcom/metamoji/cm/ICmEventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/cm/ICmEventHandler<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private _popup:Lcom/metamoji/ui/DetailSelector;

.field private _selector:Lcom/metamoji/ui/DetailSelectorButton;

.field private _sheet:Lcom/metamoji/nt/NtNoteController;


# direct methods
.method static bridge synthetic -$$Nest$fget_canvas(Lcom/metamoji/ui/DetailWindow;)Lcom/metamoji/ui/DetailView;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/DetailWindow;->_canvas:Lcom/metamoji/ui/DetailView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_frame(Lcom/metamoji/ui/DetailWindow;)Lcom/metamoji/ui/DetailFrame;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/DetailWindow;->_frame:Lcom/metamoji/ui/DetailFrame;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_popup(Lcom/metamoji/ui/DetailWindow;)Lcom/metamoji/ui/DetailSelector;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/DetailWindow;->_popup:Lcom/metamoji/ui/DetailSelector;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_sheet(Lcom/metamoji/ui/DetailWindow;)Lcom/metamoji/nt/NtNoteController;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/DetailWindow;->_sheet:Lcom/metamoji/nt/NtNoteController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fput_initSize(Lcom/metamoji/ui/DetailWindow;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/metamoji/ui/DetailWindow;->_initSize:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$madjustEditingArea(Lcom/metamoji/ui/DetailWindow;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/DetailWindow;->adjustEditingArea(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcancelWriting(Lcom/metamoji/ui/DetailWindow;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/DetailWindow;->cancelWriting()V

    return-void
.end method

.method static bridge synthetic -$$Nest$menableButton(Lcom/metamoji/ui/DetailWindow;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/DetailWindow;->enableButton(IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mexecCommand(Lcom/metamoji/ui/DetailWindow;Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/DetailWindow;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetSettingsFromDialog(Lcom/metamoji/ui/DetailWindow;Lcom/metamoji/ui/dialog/DetailWindowSettings;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/DetailWindow;->getSettingsFromDialog(Lcom/metamoji/ui/dialog/DetailWindowSettings;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetVisibleArea(Lcom/metamoji/ui/DetailWindow;)Landroid/graphics/RectF;
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/DetailWindow;->getVisibleArea()Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$monCanvasSizeChanged(Lcom/metamoji/ui/DetailWindow;Lcom/metamoji/ui/DetailView;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/ui/DetailWindow;->onCanvasSizeChanged(Lcom/metamoji/ui/DetailView;II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monResize(Lcom/metamoji/ui/DetailWindow;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/DetailWindow;->onResize(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$monTouchCloseButton(Lcom/metamoji/ui/DetailWindow;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/DetailWindow;->onTouchCloseButton(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mopenSelector(Lcom/metamoji/ui/DetailWindow;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/DetailWindow;->openSelector()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetSettingsToDialog(Lcom/metamoji/ui/DetailWindow;Lcom/metamoji/ui/dialog/DetailWindowSettings;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/DetailWindow;->setSettingsToDialog(Lcom/metamoji/ui/dialog/DetailWindowSettings;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateFloatingPos(Lcom/metamoji/ui/DetailWindow;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/DetailWindow;->updateFloatingPos()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdatePartsPosition(Lcom/metamoji/ui/DetailWindow;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/DetailWindow;->updatePartsPosition()V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 132
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x1

    .line 99
    iput-boolean v0, p0, Lcom/metamoji/ui/DetailWindow;->_marginLineVisible:Z

    .line 101
    iput-boolean v0, p0, Lcom/metamoji/ui/DetailWindow;->_autoScroll:Z

    const v1, 0x3f19999a    # 0.6f

    .line 102
    iput v1, p0, Lcom/metamoji/ui/DetailWindow;->_autoScrollInterval:F

    const/high16 v1, 0x43040000    # 132.0f

    .line 103
    iput v1, p0, Lcom/metamoji/ui/DetailWindow;->_autoScrollAreaWidth:F

    const/4 v1, 0x0

    .line 106
    iput v1, p0, Lcom/metamoji/ui/DetailWindow;->_floatingPos:F

    const/4 v1, 0x0

    .line 110
    iput v1, p0, Lcom/metamoji/ui/DetailWindow;->_height:I

    const v2, 0x3f4ccccd    # 0.8f

    .line 119
    iput v2, p0, Lcom/metamoji/ui/DetailWindow;->_lineFeedWidth:F

    const/high16 v2, 0x3f800000    # 1.0f

    .line 121
    iput v2, p0, Lcom/metamoji/ui/DetailWindow;->_feedStepWidth:F

    .line 123
    iput-boolean v1, p0, Lcom/metamoji/ui/DetailWindow;->_forceWindowStep:Z

    .line 127
    iput-boolean v1, p0, Lcom/metamoji/ui/DetailWindow;->_initSize:Z

    .line 631
    new-instance v1, Lcom/metamoji/ui/DetailWindow$16;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/DetailWindow$16;-><init>(Lcom/metamoji/ui/DetailWindow;)V

    iput-object v1, p0, Lcom/metamoji/ui/DetailWindow;->_onViewportSizeChanged:Lcom/metamoji/cm/ICmEventHandler;

    .line 658
    new-instance v1, Lcom/metamoji/ui/DetailWindow$17;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/DetailWindow$17;-><init>(Lcom/metamoji/ui/DetailWindow;)V

    iput-object v1, p0, Lcom/metamoji/ui/DetailWindow;->_onViewportZoomChanged:Lcom/metamoji/cm/ICmEventHandler;

    .line 666
    new-instance v1, Lcom/metamoji/ui/DetailWindow$18;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/DetailWindow$18;-><init>(Lcom/metamoji/ui/DetailWindow;)V

    iput-object v1, p0, Lcom/metamoji/ui/DetailWindow;->_onViewportZoomChanging:Lcom/metamoji/cm/ICmEventHandler;

    .line 674
    new-instance v1, Lcom/metamoji/ui/DetailWindow$19;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/DetailWindow$19;-><init>(Lcom/metamoji/ui/DetailWindow;)V

    iput-object v1, p0, Lcom/metamoji/ui/DetailWindow;->_onViewportScrollChanged:Lcom/metamoji/cm/ICmEventHandler;

    .line 682
    new-instance v1, Lcom/metamoji/ui/DetailWindow$20;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/DetailWindow$20;-><init>(Lcom/metamoji/ui/DetailWindow;)V

    iput-object v1, p0, Lcom/metamoji/ui/DetailWindow;->_onViewportScrollChanging:Lcom/metamoji/cm/ICmEventHandler;

    .line 690
    new-instance v1, Lcom/metamoji/ui/DetailWindow$21;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/DetailWindow$21;-><init>(Lcom/metamoji/ui/DetailWindow;)V

    iput-object v1, p0, Lcom/metamoji/ui/DetailWindow;->_onPaperSizeChanged:Lcom/metamoji/cm/ICmEventHandler;

    const/4 v1, 0x0

    .line 1170
    iput-object v1, p0, Lcom/metamoji/ui/DetailWindow;->_autoScrollTimer:Lcom/metamoji/cm/UiTimer;

    .line 133
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/DetailWindow;->setRetainInstance(Z)V

    return-void
.end method

.method private adjustEditingArea(Z)V
    .locals 2

    .line 480
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->editorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_2

    .line 485
    invoke-virtual {p0}, Lcom/metamoji/ui/DetailWindow;->isFloating()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/ui/DetailWindow;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget v1, p0, Lcom/metamoji/ui/DetailWindow;->_baseFloatingPos:I

    sub-int/2addr p1, v1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 487
    :goto_1
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$id;->editing_area_root:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 488
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 489
    iput p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 490
    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method private bind(Lcom/metamoji/nt/NtNoteController;)V
    .locals 1

    .line 1351
    invoke-direct {p0}, Lcom/metamoji/ui/DetailWindow;->unbind()V

    .line 1353
    iput-object p1, p0, Lcom/metamoji/ui/DetailWindow;->_sheet:Lcom/metamoji/nt/NtNoteController;

    .line 1355
    iget-object p1, p1, Lcom/metamoji/nt/NtNoteController;->onViewportSizeChangedEventListener:Lcom/metamoji/cm/CmEventListener;

    iget-object v0, p0, Lcom/metamoji/ui/DetailWindow;->_onViewportSizeChanged:Lcom/metamoji/cm/ICmEventHandler;

    invoke-virtual {p1, p0, v0}, Lcom/metamoji/cm/CmEventListener;->add(Ljava/lang/Object;Lcom/metamoji/cm/ICmEventHandler;)V

    .line 1356
    iget-object p1, p0, Lcom/metamoji/ui/DetailWindow;->_sheet:Lcom/metamoji/nt/NtNoteController;

    iget-object p1, p1, Lcom/metamoji/nt/NtNoteController;->onViewportZoomChangedEventListener:Lcom/metamoji/cm/CmEventListener;

    iget-object v0, p0, Lcom/metamoji/ui/DetailWindow;->_onViewportZoomChanged:Lcom/metamoji/cm/ICmEventHandler;

    invoke-virtual {p1, p0, v0}, Lcom/metamoji/cm/CmEventListener;->add(Ljava/lang/Object;Lcom/metamoji/cm/ICmEventHandler;)V

    .line 1357
    iget-object p1, p0, Lcom/metamoji/ui/DetailWindow;->_sheet:Lcom/metamoji/nt/NtNoteController;

    iget-object p1, p1, Lcom/metamoji/nt/NtNoteController;->onViewportZoomChangingEventListener:Lcom/metamoji/cm/CmEventListener;

    iget-object v0, p0, Lcom/metamoji/ui/DetailWindow;->_onViewportZoomChanging:Lcom/metamoji/cm/ICmEventHandler;

    invoke-virtual {p1, p0, v0}, Lcom/metamoji/cm/CmEventListener;->add(Ljava/lang/Object;Lcom/metamoji/cm/ICmEventHandler;)V

    .line 1358
    iget-object p1, p0, Lcom/metamoji/ui/DetailWindow;->_sheet:Lcom/metamoji/nt/NtNoteController;

    iget-object p1, p1, Lcom/metamoji/nt/NtNoteController;->onViewportZoomEndEventListener:Lcom/metamoji/cm/CmEventListener;

    iget-object v0, p0, Lcom/metamoji/ui/DetailWindow;->_onViewportZoomChanged:Lcom/metamoji/cm/ICmEventHandler;

    invoke-virtual {p1, p0, v0}, Lcom/metamoji/cm/CmEventListener;->add(Ljava/lang/Object;Lcom/metamoji/cm/ICmEventHandler;)V

    .line 1359
    iget-object p1, p0, Lcom/metamoji/ui/DetailWindow;->_sheet:Lcom/metamoji/nt/NtNoteController;

    iget-object p1, p1, Lcom/metamoji/nt/NtNoteController;->onViewportScrollChangedEventListener:Lcom/metamoji/cm/CmEventListener;

    iget-object v0, p0, Lcom/metamoji/ui/DetailWindow;->_onViewportScrollChanged:Lcom/metamoji/cm/ICmEventHandler;

    invoke-virtual {p1, p0, v0}, Lcom/metamoji/cm/CmEventListener;->add(Ljava/lang/Object;Lcom/metamoji/cm/ICmEventHandler;)V

    .line 1360
    iget-object p1, p0, Lcom/metamoji/ui/DetailWindow;->_sheet:Lcom/metamoji/nt/NtNoteController;

    iget-object p1, p1, Lcom/metamoji/nt/NtNoteController;->onViewportScrollChangingEventListener:Lcom/metamoji/cm/CmEventListener;

    iget-object v0, p0, Lcom/metamoji/ui/DetailWindow;->_onViewportScrollChanging:Lcom/metamoji/cm/ICmEventHandler;

    invoke-virtual {p1, p0, v0}, Lcom/metamoji/cm/CmEventListener;->add(Ljava/lang/Object;Lcom/metamoji/cm/ICmEventHandler;)V

    .line 1361
    iget-object p1, p0, Lcom/metamoji/ui/DetailWindow;->_sheet:Lcom/metamoji/nt/NtNoteController;

    iget-object p1, p1, Lcom/metamoji/nt/NtNoteController;->onViewportScrollEndEventListener:Lcom/metamoji/cm/CmEventListener;

    iget-object v0, p0, Lcom/metamoji/ui/DetailWindow;->_onViewportScrollChanged:Lcom/metamoji/cm/ICmEventHandler;

    invoke-virtual {p1, p0, v0}, Lcom/metamoji/cm/CmEventListener;->add(Ljava/lang/Object;Lcom/metamoji/cm/ICmEventHandler;)V

    .line 1362
    iget-object p1, p0, Lcom/metamoji/ui/DetailWindow;->_sheet:Lcom/metamoji/nt/NtNoteController;

    iget-object p1, p1, Lcom/metamoji/nt/NtNoteController;->onPaperSizeChangedEventListener:Lcom/metamoji/cm/CmEventListener;

    iget-object v0, p0, Lcom/metamoji/ui/DetailWindow;->_onPaperSizeChanged:Lcom/metamoji/cm/ICmEventHandler;

    invoke-virtual {p1, p0, v0}, Lcom/metamoji/cm/CmEventListener;->add(Ljava/lang/Object;Lcom/metamoji/cm/ICmEventHandler;)V

    return-void
.end method

.method private cancelWriting()V
    .locals 0

    return-void
.end method

.method private createContext()Lcom/metamoji/nt/NtDetailWindowPositionService$NtDetailWindowContext;
    .locals 8

    .line 1522
    new-instance v6, Lcom/metamoji/cm/RectEx;

    iget-object v0, p0, Lcom/metamoji/ui/DetailWindow;->_frame:Lcom/metamoji/ui/DetailFrame;

    invoke-virtual {v0}, Lcom/metamoji/ui/DetailFrame;->getPosition()Landroid/graphics/RectF;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/metamoji/cm/RectEx;-><init>(Landroid/graphics/RectF;)V

    .line 1523
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1525
    iget-object v0, p0, Lcom/metamoji/ui/DetailWindow;->_margin:[Lcom/metamoji/ui/DetailMargin;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/metamoji/ui/DetailMargin;->getPosition()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1526
    iget-object v0, p0, Lcom/metamoji/ui/DetailWindow;->_margin:[Lcom/metamoji/ui/DetailMargin;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/metamoji/ui/DetailMargin;->getPosition()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1528
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1530
    invoke-direct {p0}, Lcom/metamoji/ui/DetailWindow;->positionService()Lcom/metamoji/nt/NtDetailWindowPositionService;

    move-result-object v1

    .line 1531
    new-instance v0, Lcom/metamoji/nt/NtDetailWindowPositionService$NtDetailWindowContext;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, p0, Lcom/metamoji/ui/DetailWindow;->_feedStepWidth:F

    iget v3, p0, Lcom/metamoji/ui/DetailWindow;->_lineFeedWidth:F

    iget-boolean v4, p0, Lcom/metamoji/ui/DetailWindow;->_marginLineVisible:Z

    iget-boolean v7, p0, Lcom/metamoji/ui/DetailWindow;->_forceWindowStep:Z

    invoke-direct/range {v0 .. v7}, Lcom/metamoji/nt/NtDetailWindowPositionService$NtDetailWindowContext;-><init>(Lcom/metamoji/nt/NtDetailWindowPositionService;FFZLjava/util/ArrayList;Lcom/metamoji/cm/RectEx;Z)V

    return-object v0
.end method

.method private enableButton(IZ)V
    .locals 1

    .line 543
    invoke-virtual {p0}, Lcom/metamoji/ui/DetailWindow;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 547
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 548
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p2, :cond_1

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/high16 p2, 0x3f000000    # 0.5f

    .line 549
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private enableButtonOnUIThread(IZ)V
    .locals 2

    .line 554
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ui/DetailWindow$14;

    invoke-direct {v1, p0, p1, p2}, Lcom/metamoji/ui/DetailWindow$14;-><init>(Lcom/metamoji/ui/DetailWindow;IZ)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V
    .locals 1

    .line 840
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 844
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return-void
.end method

.method private getMargins()V
    .locals 4

    .line 855
    iget-object v0, p0, Lcom/metamoji/ui/DetailWindow;->_margin:[Lcom/metamoji/ui/DetailMargin;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 857
    iget-object v2, p0, Lcom/metamoji/ui/DetailWindow;->_mx:[F

    iget-object v3, p0, Lcom/metamoji/ui/DetailWindow;->_margin:[Lcom/metamoji/ui/DetailMargin;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/metamoji/ui/DetailMargin;->getPosition()F

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getScrollableArea()Landroid/graphics/RectF;
    .locals 5

    .line 825
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->editorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    .line 826
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v0

    .line 827
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Viewport;->getZoomScale()F

    move-result v1

    .line 830
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Viewport;->getMinMaxContentOffset()Landroid/graphics/RectF;

    move-result-object v2

    .line 832
    iget v3, v2, Landroid/graphics/RectF;->left:F

    div-float/2addr v3, v1

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 833
    iget v3, v2, Landroid/graphics/RectF;->top:F

    div-float/2addr v3, v1

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 834
    iget v3, v2, Landroid/graphics/RectF;->right:F

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Viewport;->getWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    div-float/2addr v3, v1

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 835
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Viewport;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v3, v0

    div-float/2addr v3, v1

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    return-object v2
.end method

.method private getSettingsFromDialog(Lcom/metamoji/ui/dialog/DetailWindowSettings;)V
    .locals 2

    .line 1143
    invoke-virtual {p1}, Lcom/metamoji/ui/dialog/DetailWindowSettings;->getLineFeedWidth()F

    move-result v0

    iput v0, p0, Lcom/metamoji/ui/DetailWindow;->_lineFeedWidth:F

    .line 1144
    invoke-virtual {p1}, Lcom/metamoji/ui/dialog/DetailWindowSettings;->getFeedStepWidth()F

    move-result v0

    iput v0, p0, Lcom/metamoji/ui/DetailWindow;->_feedStepWidth:F

    .line 1145
    invoke-virtual {p1}, Lcom/metamoji/ui/dialog/DetailWindowSettings;->getForceWindowStep()Z

    move-result v0

    iput-boolean v0, p0, Lcom/metamoji/ui/DetailWindow;->_forceWindowStep:Z

    .line 1146
    invoke-virtual {p1}, Lcom/metamoji/ui/dialog/DetailWindowSettings;->isMarginLineVisible()Z

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/metamoji/ui/DetailWindow;->setMarginLineVisible(ZZ)V

    .line 1147
    invoke-virtual {p1}, Lcom/metamoji/ui/dialog/DetailWindowSettings;->isAutoScroll()Z

    move-result v0

    iput-boolean v0, p0, Lcom/metamoji/ui/DetailWindow;->_autoScroll:Z

    .line 1148
    invoke-virtual {p1}, Lcom/metamoji/ui/dialog/DetailWindowSettings;->getAutoScrollAreaWidth()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/metamoji/ui/DetailWindow;->setAutoScrollAreaWidth(F)V

    .line 1149
    invoke-virtual {p1}, Lcom/metamoji/ui/dialog/DetailWindowSettings;->getAutoScrollInterval()F

    move-result p1

    iput p1, p0, Lcom/metamoji/ui/DetailWindow;->_autoScrollInterval:F

    .line 1150
    invoke-direct {p0}, Lcom/metamoji/ui/DetailWindow;->updateAutoScrollAreaVisibility()V

    .line 1151
    iget-object p1, p0, Lcom/metamoji/ui/DetailWindow;->_addView:Lcom/metamoji/ui/DetailAdditionalLineView;

    invoke-virtual {p1}, Lcom/metamoji/ui/DetailAdditionalLineView;->invalidate()V

    return-void
.end method

.method private getVisibleArea()Landroid/graphics/RectF;
    .locals 5

    .line 807
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->editorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    .line 808
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v0

    .line 809
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Viewport;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Viewport;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 814
    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Viewport;->viewportToStage(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    .line 815
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Viewport;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v0

    .line 816
    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Stage;->stageToSprite(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method private handleHiddenChanged(Z)V
    .locals 8

    .line 359
    invoke-virtual {p0}, Lcom/metamoji/ui/DetailWindow;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 360
    sget v1, Lcom/metamoji/noteanytime/R$id;->main:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 361
    iget-object v2, p0, Lcom/metamoji/ui/DetailWindow;->_frame:Lcom/metamoji/ui/DetailFrame;

    if-eqz v2, :cond_a

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 365
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/DetailWindow;->getView()Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/metamoji/noteanytime/R$id;->dwindow_main:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz p1, :cond_5

    .line 368
    iget-object v3, p0, Lcom/metamoji/ui/DetailWindow;->_sheet:Lcom/metamoji/nt/NtNoteController;

    if-nez v3, :cond_1

    goto/16 :goto_3

    .line 372
    :cond_1
    iget-object v3, p0, Lcom/metamoji/ui/DetailWindow;->_frame:Lcom/metamoji/ui/DetailFrame;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 373
    iget-object v3, p0, Lcom/metamoji/ui/DetailWindow;->_margin:[Lcom/metamoji/ui/DetailMargin;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 374
    array-length v5, v3

    move v6, v4

    :goto_0
    if-ge v6, v5, :cond_2

    aget-object v7, v3, v6

    .line 375
    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 378
    :cond_2
    iget-object v1, p0, Lcom/metamoji/ui/DetailWindow;->_marginb:[Lcom/metamoji/ui/DetailMargin;

    if-eqz v1, :cond_3

    .line 379
    array-length v3, v1

    :goto_1
    if-ge v4, v3, :cond_3

    aget-object v5, v1, v4

    .line 380
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 383
    :cond_3
    iget-object v1, p0, Lcom/metamoji/ui/DetailWindow;->_canvas:Lcom/metamoji/ui/DetailView;

    invoke-virtual {v1}, Lcom/metamoji/ui/DetailView;->hideViewport()V

    .line 384
    invoke-direct {p0}, Lcom/metamoji/ui/DetailWindow;->unbind()V

    .line 385
    invoke-direct {p0, p1}, Lcom/metamoji/ui/DetailWindow;->adjustEditingArea(Z)V

    .line 387
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 389
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 391
    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->hover_show()V

    .line 395
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->showEditorBars()V

    .line 396
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->showBottomBars()V

    return-void

    .line 399
    :cond_4
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p1

    .line 400
    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object p1

    .line 401
    invoke-interface {p1}, Lcom/metamoji/nt/INtEditor;->updateDetailAndViewModeButton()V

    return-void

    .line 404
    :cond_5
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v2

    if-nez v2, :cond_6

    goto :goto_3

    .line 408
    :cond_6
    invoke-virtual {v2}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v3

    if-nez v3, :cond_7

    goto :goto_3

    .line 412
    :cond_7
    iget-object v4, p0, Lcom/metamoji/ui/DetailWindow;->_frame:Lcom/metamoji/ui/DetailFrame;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 413
    invoke-direct {p0, v3}, Lcom/metamoji/ui/DetailWindow;->bind(Lcom/metamoji/nt/NtNoteController;)V

    .line 414
    iget-object v1, p0, Lcom/metamoji/ui/DetailWindow;->_canvas:Lcom/metamoji/ui/DetailView;

    iget-object v3, p0, Lcom/metamoji/ui/DetailWindow;->_sheet:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v1, v3}, Lcom/metamoji/ui/DetailView;->showViewport(Lcom/metamoji/nt/NtNoteController;)V

    .line 415
    invoke-virtual {p0}, Lcom/metamoji/ui/DetailWindow;->loadSettingsOnSystem()V

    .line 416
    iget-object v1, p0, Lcom/metamoji/ui/DetailWindow;->_sheet:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getNoteMode()Lcom/metamoji/nt/NtNoteController$NoteMode;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/metamoji/ui/DetailWindow;->updateNoteMode(Lcom/metamoji/nt/NtNoteController$NoteMode;)V

    .line 417
    invoke-direct {p0}, Lcom/metamoji/ui/DetailWindow;->updateButtonState()V

    .line 418
    iget v1, p0, Lcom/metamoji/ui/DetailWindow;->_autoScrollAreaWidth:F

    invoke-direct {p0, v1}, Lcom/metamoji/ui/DetailWindow;->setAutoScrollAreaWidth(F)V

    .line 419
    invoke-virtual {p0}, Lcom/metamoji/ui/DetailWindow;->loadSettingsOnPage()V

    .line 420
    iget-boolean v1, p0, Lcom/metamoji/ui/DetailWindow;->_initSize:Z

    if-eqz v1, :cond_8

    .line 421
    invoke-direct {p0, p1}, Lcom/metamoji/ui/DetailWindow;->adjustEditingArea(Z)V

    .line 423
    iget-object p1, p0, Lcom/metamoji/ui/DetailWindow;->_frame:Lcom/metamoji/ui/DetailFrame;

    invoke-virtual {p1}, Lcom/metamoji/ui/DetailFrame;->notifyZoomChanged()V

    .line 424
    invoke-direct {p0}, Lcom/metamoji/ui/DetailWindow;->updatePartsPosition()V

    .line 425
    iget-object p1, p0, Lcom/metamoji/ui/DetailWindow;->_addView:Lcom/metamoji/ui/DetailAdditionalLineView;

    invoke-virtual {p1}, Lcom/metamoji/ui/DetailAdditionalLineView;->invalidate()V

    .line 427
    :cond_8
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 429
    invoke-virtual {v2}, Lcom/metamoji/nt/NtEditorWindowController;->hover_hide()V

    .line 430
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->hideEditorBars()V

    .line 431
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->hideBottomBars()V

    goto :goto_2

    .line 433
    :cond_9
    invoke-virtual {v2}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object p1

    .line 434
    invoke-interface {p1}, Lcom/metamoji/nt/INtEditor;->updateDetailAndViewModeButton()V

    .line 437
    :goto_2
    iget-object p1, p0, Lcom/metamoji/ui/DetailWindow;->_popup:Lcom/metamoji/ui/DetailSelector;

    if-eqz p1, :cond_a

    .line 440
    invoke-virtual {p1}, Lcom/metamoji/ui/DetailSelector;->updateAll()V

    :cond_a
    :goto_3
    return-void
.end method

.method private onCanvasSizeChanged(Lcom/metamoji/ui/DetailView;II)V
    .locals 1

    .line 613
    iget-object p1, p0, Lcom/metamoji/ui/DetailWindow;->_frame:Lcom/metamoji/ui/DetailFrame;

    new-instance v0, Lcom/metamoji/ui/DetailWindow$15;

    invoke-direct {v0, p0, p2, p3}, Lcom/metamoji/ui/DetailWindow$15;-><init>(Lcom/metamoji/ui/DetailWindow;II)V

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/DetailFrame;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onPenStyleChanged(I)V
    .locals 1

    .line 1508
    iget-object v0, p0, Lcom/metamoji/ui/DetailWindow;->_selector:Lcom/metamoji/ui/DetailSelectorButton;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/DetailSelectorButton;->setPenImage(I)V

    .line 1509
    iget-object p1, p0, Lcom/metamoji/ui/DetailWindow;->_popup:Lcom/metamoji/ui/DetailSelector;

    if-eqz p1, :cond_0

    .line 1512
    invoke-virtual {p1}, Lcom/metamoji/ui/DetailSelector;->updateAll()V

    :cond_0
    return-void
.end method

.method private onResize(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1234
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    return v2

    .line 1244
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget p2, p0, Lcom/metamoji/ui/DetailWindow;->_downY:F

    sub-float/2addr p1, p2

    .line 1245
    iget-object p2, p0, Lcom/metamoji/ui/DetailWindow;->_main:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 1246
    iget v0, p0, Lcom/metamoji/ui/DetailWindow;->_height0:F

    sub-float/2addr v0, p1

    iget p1, p0, Lcom/metamoji/ui/DetailWindow;->_maxHeight:F

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iget v0, p0, Lcom/metamoji/ui/DetailWindow;->_minHeight:F

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/metamoji/ui/DetailWindow;->_height:I

    .line 1247
    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1248
    iget-object p1, p0, Lcom/metamoji/ui/DetailWindow;->_main:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return v1

    .line 1252
    :cond_1
    iget-object p2, p0, Lcom/metamoji/ui/DetailWindow;->_frame:Lcom/metamoji/ui/DetailFrame;

    invoke-virtual {p2}, Lcom/metamoji/ui/DetailFrame;->calcHeightFromWidth()V

    .line 1253
    iget-object p2, p0, Lcom/metamoji/ui/DetailWindow;->_canvas:Lcom/metamoji/ui/DetailView;

    invoke-virtual {p2, v2}, Lcom/metamoji/ui/DetailView;->fixSize(Z)V

    .line 1254
    invoke-virtual {p1, v2}, Landroid/view/View;->setPressed(Z)V

    return v1

    .line 1236
    :cond_2
    invoke-direct {p0}, Lcom/metamoji/ui/DetailWindow;->updateMinMaxHeight()V

    .line 1237
    iget-object v0, p0, Lcom/metamoji/ui/DetailWindow;->_main:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/metamoji/ui/DetailWindow;->_height0:F

    .line 1238
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iput p2, p0, Lcom/metamoji/ui/DetailWindow;->_downY:F

    .line 1239
    iget-object p2, p0, Lcom/metamoji/ui/DetailWindow;->_canvas:Lcom/metamoji/ui/DetailView;

    invoke-virtual {p2, v1}, Lcom/metamoji/ui/DetailView;->fixSize(Z)V

    .line 1240
    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    return v1
.end method

.method private onTouchCloseButton(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1264
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    if-eq v0, v2, :cond_3

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    return v1

    .line 1273
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget p2, p0, Lcom/metamoji/ui/DetailWindow;->_downY:F

    sub-float/2addr p1, p2

    .line 1274
    iget-boolean p2, p0, Lcom/metamoji/ui/DetailWindow;->_moving:Z

    if-nez p2, :cond_2

    .line 1275
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    cmpg-float p2, p2, v0

    if-gez p2, :cond_1

    return v2

    .line 1278
    :cond_1
    iput-boolean v2, p0, Lcom/metamoji/ui/DetailWindow;->_moving:Z

    .line 1279
    invoke-virtual {p0}, Lcom/metamoji/ui/DetailWindow;->getView()Landroid/view/View;

    move-result-object p2

    sget v0, Lcom/metamoji/noteanytime/R$id;->dwindow_base:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const v0, 0x3f4ccccd    # 0.8f

    .line 1280
    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1282
    :cond_2
    iget p2, p0, Lcom/metamoji/ui/DetailWindow;->_floatingPos0:F

    sub-float/2addr p2, p1

    iput p2, p0, Lcom/metamoji/ui/DetailWindow;->_floatingPos:F

    .line 1283
    invoke-virtual {p0}, Lcom/metamoji/ui/DetailWindow;->getView()Landroid/view/View;

    move-result-object p1

    iget p2, p0, Lcom/metamoji/ui/DetailWindow;->_floatingPos:F

    neg-float p2, p2

    iget v0, p0, Lcom/metamoji/ui/DetailWindow;->_baseFloatingPos:I

    int-to-float v0, v0

    add-float/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    return v2

    .line 1288
    :cond_3
    iget-boolean p2, p0, Lcom/metamoji/ui/DetailWindow;->_moving:Z

    if-eqz p2, :cond_5

    .line 1289
    invoke-direct {p0}, Lcom/metamoji/ui/DetailWindow;->updateFloatingPos()V

    .line 1290
    invoke-virtual {p0}, Lcom/metamoji/ui/DetailWindow;->updateMarginHandlePosition()V

    .line 1291
    iget p2, p0, Lcom/metamoji/ui/DetailWindow;->_floatingPos0:F

    const/4 v0, 0x0

    cmpl-float p2, p2, v0

    if-eqz p2, :cond_4

    move p2, v2

    goto :goto_0

    :cond_4
    move p2, v1

    .line 1292
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/ui/DetailWindow;->isFloating()Z

    move-result v0

    if-eq v0, p2, :cond_6

    .line 1293
    invoke-direct {p0, v1}, Lcom/metamoji/ui/DetailWindow;->adjustEditingArea(Z)V

    goto :goto_1

    .line 1298
    :cond_5
    invoke-virtual {p1, v1}, Landroid/view/View;->playSoundEffect(I)V

    .line 1299
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->editorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 1301
    invoke-interface {p2}, Lcom/metamoji/nt/INtEditor;->closeDetailWindow()V

    .line 1304
    :cond_6
    :goto_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    return v2

    .line 1266
    :cond_7
    iput-boolean v1, p0, Lcom/metamoji/ui/DetailWindow;->_moving:Z

    .line 1267
    invoke-virtual {p0}, Lcom/metamoji/ui/DetailWindow;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    neg-float v0, v0

    iget v1, p0, Lcom/metamoji/ui/DetailWindow;->_baseFloatingPos:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/metamoji/ui/DetailWindow;->_floatingPos0:F

    .line 1268
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iput p2, p0, Lcom/metamoji/ui/DetailWindow;->_downY:F

    .line 1269
    invoke-virtual {p1, v2}, Landroid/view/View;->setPressed(Z)V

    return v2
.end method

.method private openSelector()V
    .locals 4

    .line 1402
    invoke-virtual {p0}, Lcom/metamoji/ui/DetailWindow;->closeSelector()V

    .line 1404
    invoke-virtual {p0}, Lcom/metamoji/ui/DetailWindow;->getView()Landroid/view/View;

    move-result-object v0

    .line 1405
    sget v1, Lcom/metamoji/noteanytime/R$id;->dwindow_selector_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    .line 1407
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 1410
    :cond_0
    new-instance v0, Lcom/metamoji/ui/DetailSelector;

    invoke-virtual {p0}, Lcom/metamoji/ui/DetailWindow;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/metamoji/ui/DetailSelector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/metamoji/ui/DetailWindow;->_popup:Lcom/metamoji/ui/DetailSelector;

    .line 1411
    iget-object v2, p0, Lcom/metamoji/ui/DetailWindow;->_sheet:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v2}, Lcom/metamoji/nt/NtNoteController;->getNoteMode()Lcom/metamoji/nt/NtNoteController$NoteMode;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Lcom/metamoji/ui/DetailSelector;->init(Lcom/metamoji/ui/DetailWindow;Lcom/metamoji/nt/NtNoteController$NoteMode;)V

    .line 1414
    new-instance v0, Landroid/graphics/PointF;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v2, p0, Lcom/metamoji/ui/DetailWindow;->_selector:Lcom/metamoji/ui/DetailSelectorButton;

    invoke-static {v0, v2, v1}, Lcom/metamoji/cm/CmUtils;->transformPoint(Landroid/graphics/PointF;Landroid/view/View;Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object v0

    .line 1416
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1419
    iget-object v3, p0, Lcom/metamoji/ui/DetailWindow;->_popup:Lcom/metamoji/ui/DetailSelector;

    invoke-virtual {v1, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1421
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    .line 1422
    iget-object v2, p0, Lcom/metamoji/ui/DetailWindow;->_popup:Lcom/metamoji/ui/DetailSelector;

    invoke-virtual {v2}, Lcom/metamoji/ui/DetailSelector;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 1423
    new-instance v3, Lcom/metamoji/ui/DetailWindow$23;

    invoke-direct {v3, p0, v1, v0, v2}, Lcom/metamoji/ui/DetailWindow$23;-><init>(Lcom/metamoji/ui/DetailWindow;ILandroid/graphics/PointF;Landroid/view/ViewTreeObserver;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private positionService()Lcom/metamoji/nt/NtDetailWindowPositionService;
    .locals 2

    .line 1540
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 1541
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    .line 1542
    new-instance v1, Lcom/metamoji/nt/NtDetailWindowPositionService;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->formPosData()Lcom/metamoji/un/form/UnFormPositionData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/form/UnFormPositionData;->hLinesInfo()Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/metamoji/nt/NtDetailWindowPositionService;-><init>(Ljava/util/HashMap;)V

    return-object v1
.end method

.method private scrollIntoFrame()V
    .locals 4

    .line 1001
    new-instance v0, Lcom/metamoji/cm/ThicknessF;

    invoke-direct {v0}, Lcom/metamoji/cm/ThicknessF;-><init>()V

    .line 1003
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->editorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v1

    .line 1004
    invoke-interface {v1}, Lcom/metamoji/nt/INtEditor;->getTopAppBarHeight()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lcom/metamoji/cm/ThicknessF;->top:F

    .line 1007
    iget-object v1, p0, Lcom/metamoji/ui/DetailWindow;->_frame:Lcom/metamoji/ui/DetailFrame;

    invoke-virtual {v1}, Lcom/metamoji/ui/DetailFrame;->getPosition()Landroid/graphics/RectF;

    move-result-object v1

    .line 1008
    iget-object v2, p0, Lcom/metamoji/ui/DetailWindow;->_sheet:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v2}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Lcom/metamoji/nt/NtPageController;->scrollRectToVisible(Landroid/graphics/RectF;ZLcom/metamoji/cm/ThicknessF;)V

    return-void
.end method

.method private selectEraser(I)V
    .locals 1

    .line 1392
    iget-object v0, p0, Lcom/metamoji/ui/DetailWindow;->_selector:Lcom/metamoji/ui/DetailSelectorButton;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/DetailSelectorButton;->setEraserImage(I)V

    .line 1393
    iget-object v0, p0, Lcom/metamoji/ui/DetailWindow;->_popup:Lcom/metamoji/ui/DetailSelector;

    if-eqz v0, :cond_0

    .line 1394
    invoke-virtual {v0, p1}, Lcom/metamoji/ui/DetailSelector;->select(I)V

    :cond_0
    return-void
.end method

.method private selectPen(I)V
    .locals 1

    .line 1385
    iget-object v0, p0, Lcom/metamoji/ui/DetailWindow;->_selector:Lcom/metamoji/ui/DetailSelectorButton;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/DetailSelectorButton;->setPenImage(I)V

    .line 1386
    iget-object v0, p0, Lcom/metamoji/ui/DetailWindow;->_popup:Lcom/metamoji/ui/DetailSelector;

    if-eqz v0, :cond_0

    .line 1387
    invoke-virtual {v0, p1}, Lcom/metamoji/ui/DetailSelector;->select(I)V

    :cond_0
    return-void
.end method

.method private setAutoScrollAreaWidth(F)V
    .locals 1

    .line 1219
    iput p1, p0, Lcom/metamoji/ui/DetailWindow;->_autoScrollAreaWidth:F

    .line 1220
    iget-object v0, p0, Lcom/metamoji/ui/DetailWindow;->_autoScrollArea:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1221
    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result p1

    float-to-int p1, p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1222
    iget-object p1, p0, Lcom/metamoji/ui/DetailWindow;->_autoScrollArea:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private setMarginLineVisible(ZZ)V
    .locals 5

    if-nez p2, :cond_0

    .line 712
    iget-boolean p2, p0, Lcom/metamoji/ui/DetailWindow;->_marginLineVisible:Z

    if-ne p1, p2, :cond_0

    goto :goto_3

    .line 715
    :cond_0
    iput-boolean p1, p0, Lcom/metamoji/ui/DetailWindow;->_marginLineVisible:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    move v0, p2

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    .line 718
    :goto_0
    iget-object v1, p0, Lcom/metamoji/ui/DetailWindow;->_margin:[Lcom/metamoji/ui/DetailMargin;

    array-length v2, v1

    move v3, p2

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 719
    invoke-virtual {v4, v0}, Lcom/metamoji/ui/DetailMargin;->setVisibility(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 721
    :cond_2
    iget-object v1, p0, Lcom/metamoji/ui/DetailWindow;->_marginb:[Lcom/metamoji/ui/DetailMargin;

    array-length v2, v1

    move v3, p2

    :goto_2
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 722
    invoke-virtual {v4, v0}, Lcom/metamoji/ui/DetailMargin;->setVisibility(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    if-nez p1, :cond_4

    :goto_3
    return-void

    .line 730
    :cond_4
    iget-object p1, p0, Lcom/metamoji/ui/DetailWindow;->_margin:[Lcom/metamoji/ui/DetailMargin;

    array-length v0, p1

    move v1, p2

    :goto_4
    if-ge v1, v0, :cond_5

    aget-object v2, p1, v1

    .line 731
    invoke-virtual {v2}, Lcom/metamoji/ui/DetailMargin;->updatePosition()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 733
    :cond_5
    iget-object p1, p0, Lcom/metamoji/ui/DetailWindow;->_marginb:[Lcom/metamoji/ui/DetailMargin;

    array-length v0, p1

    :goto_5
    if-ge p2, v0, :cond_6

    aget-object v1, p1, p2

    .line 734
    invoke-virtual {v1}, Lcom/metamoji/ui/DetailMargin;->updatePosition()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    .line 736
    :cond_6
    invoke-virtual {p0}, Lcom/metamoji/ui/DetailWindow;->updateMarginHandlePosition()V

    return-void
.end method

.method private setSettingsToDialog(Lcom/metamoji/ui/dialog/DetailWindowSettings;)V
    .locals 1

    .line 1155
    iget v0, p0, Lcom/metamoji/ui/DetailWindow;->_lineFeedWidth:F

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/dialog/DetailWindowSettings;->setLineFeedWidth(F)V

    .line 1156
    iget v0, p0, Lcom/metamoji/ui/DetailWindow;->_feedStepWidth:F

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/dialog/DetailWindowSettings;->setFeedStepWidth(F)V

    .line 1157
    iget-boolean v0, p0, Lcom/metamoji/ui/DetailWindow;->_forceWindowStep:Z

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/dialog/DetailWindowSettings;->setForceWindowStep(Z)V

    .line 1158
    iget-boolean v0, p0, Lcom/metamoji/ui/DetailWindow;->_marginLineVisible:Z

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/dialog/DetailWindowSettings;->setMarginLineVisible(Z)V

    .line 1159
    iget-boolean v0, p0, Lcom/metamoji/ui/DetailWindow;->_autoScroll:Z

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/dialog/DetailWindowSettings;->setAutoScroll(Z)V

    .line 1160
    iget v0, p0, Lcom/metamoji/ui/DetailWindow;->_autoScrollAreaWidth:F

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/dialog/DetailWindowSettings;->setAutoScrollAreaWidth(F)V

    .line 1161
    iget v0, p0, Lcom/metamoji/ui/DetailWindow;->_autoScrollInterval:F

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/dialog/DetailWindowSettings;->setAutoScrollInterval(F)V

    .line 1164
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 1165
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    .line 1166
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->formPosData()Lcom/metamoji/un/form/UnFormPositionData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/form/UnFormPositionData;->hLinesInfo()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1167
    :goto_0
    invoke-virtual {p1, v0}, Lcom/metamoji/ui/dialog/DetailWindowSettings;->setHasHLines(Z)V

    return-void
.end method

.method private unbind()V
    .locals 1

    .line 1366
    iget-object v0, p0, Lcom/metamoji/ui/DetailWindow;->_sheet:Lcom/metamoji/nt/NtNoteController;

    if-nez v0, :cond_0

    return-void

    .line 1370
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/DetailWindow;->clearAutoScrollTimer()V

    .line 1372
    iget-object v0, p0, Lcom/metamoji/ui/DetailWindow;->_sheet:Lcom/metamoji/nt/NtNoteController;

    iget-object v0, v0, Lcom/metamoji/nt/NtNoteController;->onViewportSizeChangedEventListener:Lcom/metamoji/cm/CmEventListener;

    invoke-virtual {v0, p0}, Lcom/metamoji/cm/CmEventListener;->remove(Ljava/lang/Object;)V

    .line 1373
    iget-object v0, p0, Lcom/metamoji/ui/DetailWindow;->_sheet:Lcom/metamoji/nt/NtNoteController;

    iget-object v0, v0, Lcom/metamoji/nt/NtNoteController;->onViewportZoomChangedEventListener:Lcom/metamoji/cm/CmEventListener;

    invoke-virtual {v0, p0}, Lcom/metamoji/cm/CmEventListener;->remove(Ljava/lang/Object;)V

    .line 1374
    iget-object v0, p0, Lcom/metamoji/ui/DetailWindow;->_sheet:Lcom/metamoji/nt/NtNoteController;

    iget-object v0, v0, Lcom/metamoji/nt/NtNoteController;->onViewportZoomChangingEventListener:Lcom/metamoji/cm/CmEventListener;

    invoke-virtual {v0, p0}, Lcom/metamoji/cm/CmEventListener;->remove(Ljava/lang/Object;)V

    .line 1375
    iget-object v0, p0, Lcom/metamoji/ui/DetailWindow;->_sheet:Lcom/metamoji/nt/NtNoteController;

    iget-object v0, v0, Lcom/metamoji/nt/NtNoteController;->onViewportZoomEndEventListener:Lcom/metamoji/cm/CmEventListener;

    invoke-virtual {v0, p0}, Lcom/metamoji/cm/CmEventListener;->remove(Ljava/lang/Object;)V

    .line 1376
    iget-object v0, p0, Lcom/metamoji/ui/DetailWindow;->_sheet:Lcom/metamoji/nt/NtNoteController;

    iget-object v0, v0, Lcom/metamoji/nt/NtNoteController;->onViewportScrollChangedEventListener:Lcom/metamoji/cm/CmEventListener;

    invoke-virtual {v0, p0}, Lcom/metamoji/cm/CmEventListener;->remove(Ljava/lang/Object;)V

    .line 1377
    iget-object v0, p0, Lcom/metamoji/ui/DetailWindow;->_sheet:Lcom/metamoji/nt/NtNoteController;

    iget-object v0, v0, Lcom/metamoji/nt/NtNoteController;->onViewportScrollChangingEventListener:Lcom/metamoji/cm/CmEventListener;

    invoke-virtual {v0, p0}, Lcom/metamoji/cm/CmEventListener;->remove(Ljava/lang/Object;)V

    .line 1378
    iget-object v0, p0, Lcom/metamoji/ui/DetailWindow;->_sheet:Lcom/metamoji/nt/NtNoteController;

    iget-object v0, v0, Lcom/metamoji/nt/NtNoteController;->onViewportScrollEndEventListener:Lcom/metamoji/cm/CmEventListener;

    invoke-virtual {v0, p0}, Lcom/metamoji/cm/CmEventListener;->remove(Ljava/lang/Object;)V

    .line 1379
    iget-object v0, p0, Lcom/metamoji/ui/DetailWindow;->_sheet:Lcom/metamoji/nt/NtNoteController;

    iget-object v0, v0, Lcom/metamoji/nt/NtNoteController;->onPaperSizeChangedEventListener:Lcom/metamoji/cm/CmEventListener;

    invoke-virtual {v0, p0}, Lcom/metamoji/cm/CmEventListener;->remove(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 1381
    iput-object v0, p0, Lcom/metamoji/ui/DetailWindow;->_sheet:Lcom/metamoji/nt/NtNoteController;

    return-void
.end method

.method private updateAutoScrollAreaVisibility()V
    .locals 4

    .line 1207
    iget-boolean v0, p0, Lcom/metamoji/ui/DetailWindow;->_autoScroll:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/ui/DetailWindow;->_canvas:Lcom/metamoji/ui/DetailView;

    invoke-virtual {v0}, Lcom/metamoji/ui/DetailView;->isDrawMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1208
    iget-object v0, p0, Lcom/metamoji/ui/DetailWindow;->_frame:Lcom/metamoji/ui/DetailFrame;

    invoke-virtual {v0}, Lcom/metamoji/ui/DetailFrame;->getPosition()Landroid/graphics/RectF;

    move-result-object v0

    .line 1209
    iget-object v2, p0, Lcom/metamoji/ui/DetailWindow;->_sheet:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v2}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/nt/NtPageController;->getPaperWidth()F

    move-result v2

    .line 1210
    iget v0, v0, Landroid/graphics/RectF;->right:F

    const v3, 0x3a83126f    # 0.001f

    sub-float/2addr v2, v3

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1215
    :goto_0
    iget-object v2, p0, Lcom/metamoji/ui/DetailWindow;->_autoScrollArea:Landroid/view/View;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateButtonState()V
    .locals 3

    .line 563
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 564
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    .line 565
    sget v1, Lcom/metamoji/noteanytime/R$id;->dwindow_undo:I

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_UNDO:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v2}, Lcom/metamoji/nt/NtCommandManager;->isCommandEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/metamoji/ui/DetailWindow;->enableButton(IZ)V

    .line 566
    sget v1, Lcom/metamoji/noteanytime/R$id;->dwindow_redo:I

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_REDO:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v2}, Lcom/metamoji/nt/NtCommandManager;->isCommandEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/metamoji/ui/DetailWindow;->enableButton(IZ)V

    return-void
.end method

.method private updateFloatingPos()V
    .locals 5

    .line 1328
    iget v0, p0, Lcom/metamoji/ui/DetailWindow;->_floatingPos:F

    .line 1332
    invoke-virtual {p0}, Lcom/metamoji/ui/DetailWindow;->getView()Landroid/view/View;

    move-result-object v1

    .line 1333
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1334
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/metamoji/ui/DetailWindow;->_baseFloatingPos:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v3, v0, v2

    if-lez v3, :cond_0

    move v0, v2

    :cond_0
    const/high16 v2, 0x41200000    # 10.0f

    .line 1340
    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v2

    cmpg-float v2, v0, v2

    if-gez v2, :cond_1

    const/4 v0, 0x0

    .line 1341
    iput v0, p0, Lcom/metamoji/ui/DetailWindow;->_floatingPos:F

    :cond_1
    neg-float v0, v0

    .line 1345
    iget v2, p0, Lcom/metamoji/ui/DetailWindow;->_baseFloatingPos:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 1346
    sget v0, Lcom/metamoji/noteanytime/R$id;->dwindow_base:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1347
    invoke-virtual {p0}, Lcom/metamoji/ui/DetailWindow;->isFloating()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x3f4ccccd    # 0.8f

    goto :goto_0

    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private updateMinMaxHeight()V
    .locals 2

    .line 1312
    invoke-virtual {p0}, Lcom/metamoji/ui/DetailWindow;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$id;->dwindow_right_tools:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1315
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/metamoji/ui/DetailWindow;->_minHeight:F

    goto :goto_0

    :cond_0
    const/high16 v0, 0x42a00000    # 80.0f

    .line 1317
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    iput v0, p0, Lcom/metamoji/ui/DetailWindow;->_minHeight:F

    .line 1320
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/ui/DetailWindow;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1321
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x43480000    # 200.0f

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/metamoji/ui/DetailWindow;->_maxHeight:F

    return-void
.end method

.method private updateNoteMode(Lcom/metamoji/nt/NtNoteController$NoteMode;)V
    .locals 5

    .line 570
    iget-object v0, p0, Lcom/metamoji/ui/DetailWindow;->_canvas:Lcom/metamoji/ui/DetailView;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/DetailView;->updateNoteMode(Lcom/metamoji/nt/NtNoteController$NoteMode;)V

    .line 572
    invoke-virtual {p0}, Lcom/metamoji/ui/DetailWindow;->getView()Landroid/view/View;

    move-result-object v0

    .line 573
    sget v1, Lcom/metamoji/noteanytime/R$id;->dwindow_pen:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 574
    sget v2, Lcom/metamoji/noteanytime/R$id;->dwindow_eraser:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 575
    invoke-virtual {p0}, Lcom/metamoji/ui/DetailWindow;->updateShapePenModeButton()V

    .line 576
    sget-object v2, Lcom/metamoji/ui/DetailWindow$25;->$SwitchMap$com$metamoji$nt$NtNoteController$NoteMode:[I

    invoke-virtual {p1}, Lcom/metamoji/nt/NtNoteController$NoteMode;->ordinal()I

    move-result p1

    aget p1, v2, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v3, :cond_1

    const/4 v4, 0x2

    if-eq p1, v4, :cond_0

    goto :goto_0

    .line 588
    :cond_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 589
    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    .line 591
    invoke-static {}, Lcom/metamoji/nt/NtSystemSettings;->getInstance()Lcom/metamoji/nt/NtSystemSettings;

    move-result-object p1

    const-string v0, "MMJNtEraserSettings"

    invoke-virtual {p1, v0}, Lcom/metamoji/nt/NtSystemSettings;->getSettings(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object p1

    check-cast p1, Lcom/metamoji/nt/NtEraserSettings;

    .line 592
    invoke-virtual {p1}, Lcom/metamoji/nt/NtEraserSettings;->getCurrentIndex()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/metamoji/ui/DetailWindow;->selectEraser(I)V

    goto :goto_0

    .line 579
    :cond_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 580
    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 582
    invoke-static {}, Lcom/metamoji/nt/NtSystemSettings;->getInstance()Lcom/metamoji/nt/NtSystemSettings;

    move-result-object p1

    const-string v0, "MMJNtPenSettings"

    invoke-virtual {p1, v0}, Lcom/metamoji/nt/NtSystemSettings;->getSettings(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object p1

    check-cast p1, Lcom/metamoji/nt/NtPenSettings;

    .line 583
    invoke-virtual {p1}, Lcom/metamoji/nt/NtPenSettings;->getCurrentIndex()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/metamoji/ui/DetailWindow;->selectPen(I)V

    .line 599
    :goto_0
    invoke-direct {p0}, Lcom/metamoji/ui/DetailWindow;->updateAutoScrollAreaVisibility()V

    return-void
.end method

.method private updatePartsPosition()V
    .locals 5

    .line 698
    iget-object v0, p0, Lcom/metamoji/ui/DetailWindow;->_frame:Lcom/metamoji/ui/DetailFrame;

    invoke-direct {p0}, Lcom/metamoji/ui/DetailWindow;->getVisibleArea()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/DetailFrame;->adjustPosition(Landroid/graphics/RectF;)V

    .line 699
    iget-object v0, p0, Lcom/metamoji/ui/DetailWindow;->_frame:Lcom/metamoji/ui/DetailFrame;

    invoke-virtual {v0}, Lcom/metamoji/ui/DetailFrame;->updatePosition()Z

    .line 700
    invoke-direct {p0}, Lcom/metamoji/ui/DetailWindow;->updateAutoScrollAreaVisibility()V

    .line 701
    iget-boolean v0, p0, Lcom/metamoji/ui/DetailWindow;->_marginLineVisible:Z

    if-eqz v0, :cond_1

    .line 702
    iget-object v0, p0, Lcom/metamoji/ui/DetailWindow;->_margin:[Lcom/metamoji/ui/DetailMargin;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 703
    invoke-virtual {v4}, Lcom/metamoji/ui/DetailMargin;->updatePosition()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 705
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/DetailWindow;->_marginb:[Lcom/metamoji/ui/DetailMargin;

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 706
    invoke-virtual {v3}, Lcom/metamoji/ui/DetailMargin;->updatePosition()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public clearAutoScrollTimer()V
    .locals 1

    .line 1199
    iget-object v0, p0, Lcom/metamoji/ui/DetailWindow;->_autoScrollTimer:Lcom/metamoji/cm/UiTimer;

    if-eqz v0, :cond_0

    .line 1200
    invoke-virtual {v0}, Lcom/metamoji/cm/UiTimer;->cancel()V

    const/4 v0, 0x0

    .line 1201
    iput-object v0, p0, Lcom/metamoji/ui/DetailWindow;->_autoScrollTimer:Lcom/metamoji/cm/UiTimer;

    :cond_0
    return-void
.end method

.method public closeSelector()V
    .locals 2

    .line 1448
    iget-object v0, p0, Lcom/metamoji/ui/DetailWindow;->_popup:Lcom/metamoji/ui/DetailSelector;

    if-nez v0, :cond_0

    return-void

    .line 1452
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/ui/DetailSelector;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1453
    iget-object v1, p0, Lcom/metamoji/ui/DetailWindow;->_popup:Lcom/metamoji/ui/DetailSelector;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 1454
    iput-object v0, p0, Lcom/metamoji/ui/DetailWindow;->_popup:Lcom/metamoji/ui/DetailSelector;

    return-void
.end method

.method public getFeedStep()F
    .locals 1

    .line 877
    iget v0, p0, Lcom/metamoji/ui/DetailWindow;->_feedStepWidth:F

    return v0
.end method

.method public getPosition()Landroid/graphics/RectF;
    .locals 1

    .line 868
    iget-object v0, p0, Lcom/metamoji/ui/DetailWindow;->_frame:Lcom/metamoji/ui/DetailFrame;

    invoke-virtual {v0}, Lcom/metamoji/ui/DetailFrame;->getPosition()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public isFloating()Z
    .locals 2

    .line 138
    iget v0, p0, Lcom/metamoji/ui/DetailWindow;->_floatingPos:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isForceWindowStep()Z
    .locals 1

    .line 886
    iget-boolean v0, p0, Lcom/metamoji/ui/DetailWindow;->_forceWindowStep:Z

    return v0
.end method

.method public loadSettingsOnPage()V
    .locals 16

    move-object/from16 v0, p0

    .line 1015
    iget-object v1, v0, Lcom/metamoji/ui/DetailWindow;->_sheet:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v1

    .line 1016
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getDwLines()Ljava/util/List;

    move-result-object v2

    .line 1017
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getPaperWidth()F

    move-result v1

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    .line 1020
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-lt v6, v3, :cond_0

    .line 1021
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 1022
    new-array v6, v3, [F

    iput-object v6, v0, Lcom/metamoji/ui/DetailWindow;->_mx:[F

    move v6, v5

    :goto_0
    if-ge v6, v3, :cond_1

    .line 1024
    iget-object v7, v0, Lcom/metamoji/ui/DetailWindow;->_mx:[F

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lcom/metamoji/cm/CmUtils;->toFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    aput v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1028
    :cond_0
    new-array v2, v3, [F

    iput-object v2, v0, Lcom/metamoji/ui/DetailWindow;->_mx:[F

    const/high16 v6, 0x42340000    # 45.0f

    .line 1029
    aput v6, v2, v5

    const/high16 v6, 0x41700000    # 15.0f

    sub-float v6, v1, v6

    .line 1030
    aput v6, v2, v4

    .line 1033
    :cond_1
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->editorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v2

    .line 1034
    invoke-interface {v2}, Lcom/metamoji/nt/INtEditor;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v6

    .line 1035
    iget-object v7, v0, Lcom/metamoji/ui/DetailWindow;->_canvas:Lcom/metamoji/ui/DetailView;

    invoke-virtual {v7}, Lcom/metamoji/ui/DetailView;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v7

    .line 1037
    invoke-interface {v2}, Lcom/metamoji/nt/INtEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v8

    sget v9, Lcom/metamoji/noteanytime/R$id;->main:I

    invoke-virtual {v8, v9}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 1038
    invoke-virtual {v0}, Lcom/metamoji/ui/DetailWindow;->getView()Landroid/view/View;

    move-result-object v9

    sget v10, Lcom/metamoji/noteanytime/R$id;->dwindow_main:I

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 1039
    iget-object v10, v0, Lcom/metamoji/ui/DetailWindow;->_margin:[Lcom/metamoji/ui/DetailMargin;

    if-eqz v10, :cond_2

    .line 1040
    array-length v11, v10

    move v12, v5

    :goto_1
    if-ge v12, v11, :cond_2

    aget-object v13, v10, v12

    .line 1041
    invoke-virtual {v8, v13}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 1044
    :cond_2
    iget-object v10, v0, Lcom/metamoji/ui/DetailWindow;->_marginb:[Lcom/metamoji/ui/DetailMargin;

    if-eqz v10, :cond_3

    .line 1045
    array-length v11, v10

    move v12, v5

    :goto_2
    if-ge v12, v11, :cond_3

    aget-object v13, v10, v12

    .line 1046
    invoke-virtual {v9, v13}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 1051
    :cond_3
    iget-object v10, v0, Lcom/metamoji/ui/DetailWindow;->_margin:[Lcom/metamoji/ui/DetailMargin;

    .line 1052
    iget-object v11, v0, Lcom/metamoji/ui/DetailWindow;->_marginb:[Lcom/metamoji/ui/DetailMargin;

    if-nez v10, :cond_4

    move v12, v5

    goto :goto_3

    .line 1053
    :cond_4
    array-length v12, v10

    .line 1055
    :goto_3
    new-array v13, v3, [Lcom/metamoji/ui/DetailMargin;

    iput-object v13, v0, Lcom/metamoji/ui/DetailWindow;->_margin:[Lcom/metamoji/ui/DetailMargin;

    .line 1056
    new-array v13, v3, [Lcom/metamoji/ui/DetailMargin;

    iput-object v13, v0, Lcom/metamoji/ui/DetailWindow;->_marginb:[Lcom/metamoji/ui/DetailMargin;

    move v13, v5

    :goto_4
    if-ge v13, v3, :cond_7

    .line 1061
    iget-object v14, v0, Lcom/metamoji/ui/DetailWindow;->_margin:[Lcom/metamoji/ui/DetailMargin;

    if-ge v13, v12, :cond_5

    .line 1059
    aget-object v15, v10, v13

    aput-object v15, v14, v13

    goto :goto_5

    .line 1061
    :cond_5
    new-instance v15, Lcom/metamoji/ui/DetailMargin;

    invoke-interface {v2}, Lcom/metamoji/nt/INtEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v15, v5}, Lcom/metamoji/ui/DetailMargin;-><init>(Landroid/content/Context;)V

    aput-object v15, v14, v13

    .line 1062
    iget-object v5, v0, Lcom/metamoji/ui/DetailWindow;->_margin:[Lcom/metamoji/ui/DetailMargin;

    aget-object v5, v5, v13

    invoke-virtual {v5, v0, v6, v4}, Lcom/metamoji/ui/DetailMargin;->init(Lcom/metamoji/ui/DetailWindow;Lcom/metamoji/df/sprite/Viewport;Z)V

    .line 1064
    :goto_5
    iget-object v5, v0, Lcom/metamoji/ui/DetailWindow;->_margin:[Lcom/metamoji/ui/DetailMargin;

    aget-object v5, v5, v13

    invoke-virtual {v8, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1065
    iget-object v5, v0, Lcom/metamoji/ui/DetailWindow;->_margin:[Lcom/metamoji/ui/DetailMargin;

    aget-object v5, v5, v13

    const/4 v14, 0x0

    invoke-virtual {v5, v14, v1}, Lcom/metamoji/ui/DetailMargin;->setRange(FF)V

    .line 1066
    iget-object v5, v0, Lcom/metamoji/ui/DetailWindow;->_margin:[Lcom/metamoji/ui/DetailMargin;

    aget-object v5, v5, v13

    iget-object v15, v0, Lcom/metamoji/ui/DetailWindow;->_mx:[F

    aget v15, v15, v13

    invoke-virtual {v5, v15}, Lcom/metamoji/ui/DetailMargin;->setPosition(F)V

    .line 1071
    iget-object v5, v0, Lcom/metamoji/ui/DetailWindow;->_marginb:[Lcom/metamoji/ui/DetailMargin;

    if-ge v13, v12, :cond_6

    .line 1069
    aget-object v15, v11, v13

    aput-object v15, v5, v13

    const/4 v5, 0x0

    goto :goto_6

    .line 1071
    :cond_6
    new-instance v15, Lcom/metamoji/ui/DetailMargin;

    invoke-interface {v2}, Lcom/metamoji/nt/INtEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v15, v4}, Lcom/metamoji/ui/DetailMargin;-><init>(Landroid/content/Context;)V

    aput-object v15, v5, v13

    .line 1072
    iget-object v4, v0, Lcom/metamoji/ui/DetailWindow;->_marginb:[Lcom/metamoji/ui/DetailMargin;

    aget-object v4, v4, v13

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v7, v5}, Lcom/metamoji/ui/DetailMargin;->init(Lcom/metamoji/ui/DetailWindow;Lcom/metamoji/df/sprite/Viewport;Z)V

    .line 1074
    :goto_6
    iget-object v4, v0, Lcom/metamoji/ui/DetailWindow;->_marginb:[Lcom/metamoji/ui/DetailMargin;

    aget-object v4, v4, v13

    invoke-virtual {v9, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1075
    iget-object v4, v0, Lcom/metamoji/ui/DetailWindow;->_marginb:[Lcom/metamoji/ui/DetailMargin;

    aget-object v4, v4, v13

    invoke-virtual {v4, v14, v1}, Lcom/metamoji/ui/DetailMargin;->setRange(FF)V

    .line 1076
    iget-object v4, v0, Lcom/metamoji/ui/DetailWindow;->_marginb:[Lcom/metamoji/ui/DetailMargin;

    aget-object v4, v4, v13

    iget-object v14, v0, Lcom/metamoji/ui/DetailWindow;->_mx:[F

    aget v14, v14, v13

    invoke-virtual {v4, v14}, Lcom/metamoji/ui/DetailMargin;->setPosition(F)V

    add-int/lit8 v13, v13, 0x1

    const/4 v4, 0x1

    goto :goto_4

    .line 1079
    :cond_7
    iget-boolean v1, v0, Lcom/metamoji/ui/DetailWindow;->_marginLineVisible:Z

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/DetailWindow;->setMarginLineVisible(ZZ)V

    .line 1080
    iget-object v1, v0, Lcom/metamoji/ui/DetailWindow;->_addView:Lcom/metamoji/ui/DetailAdditionalLineView;

    invoke-virtual {v1}, Lcom/metamoji/ui/DetailAdditionalLineView;->invalidate()V

    return-void
.end method

.method public loadSettingsOnSystem()V
    .locals 3

    .line 1110
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 1112
    const-string v1, "DetailWindowSettings"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtUserDefaults;->getMapValue(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1116
    :cond_0
    const-string v1, "lineFeedWidth"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lcom/metamoji/ui/DetailWindow;->_lineFeedWidth:F

    invoke-static {v1, v2}, Lcom/metamoji/cm/CmUtils;->toFloat(Ljava/lang/Object;F)F

    move-result v1

    iput v1, p0, Lcom/metamoji/ui/DetailWindow;->_lineFeedWidth:F

    .line 1117
    const-string v1, "feedStepWidth"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lcom/metamoji/ui/DetailWindow;->_feedStepWidth:F

    invoke-static {v1, v2}, Lcom/metamoji/cm/CmUtils;->toFloat(Ljava/lang/Object;F)F

    move-result v1

    iput v1, p0, Lcom/metamoji/ui/DetailWindow;->_feedStepWidth:F

    .line 1118
    const-string v1, "forceWindowStep"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/metamoji/cm/CmUtils;->toBool(Ljava/lang/Object;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/metamoji/ui/DetailWindow;->_forceWindowStep:Z

    .line 1119
    const-string v1, "marginLineVisible"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-boolean v2, p0, Lcom/metamoji/ui/DetailWindow;->_marginLineVisible:Z

    invoke-static {v1, v2}, Lcom/metamoji/cm/CmUtils;->toBool(Ljava/lang/Object;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/metamoji/ui/DetailWindow;->_marginLineVisible:Z

    .line 1120
    const-string v1, "autoScroll"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-boolean v2, p0, Lcom/metamoji/ui/DetailWindow;->_autoScroll:Z

    invoke-static {v1, v2}, Lcom/metamoji/cm/CmUtils;->toBool(Ljava/lang/Object;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/metamoji/ui/DetailWindow;->_autoScroll:Z

    .line 1121
    const-string v1, "autoScrollAreaWidth"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lcom/metamoji/ui/DetailWindow;->_autoScrollAreaWidth:F

    invoke-static {v1, v2}, Lcom/metamoji/cm/CmUtils;->toFloat(Ljava/lang/Object;F)F

    move-result v1

    iput v1, p0, Lcom/metamoji/ui/DetailWindow;->_autoScrollAreaWidth:F

    .line 1122
    const-string v1, "autoScrollInterval"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/metamoji/ui/DetailWindow;->_autoScrollInterval:F

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmUtils;->toFloat(Ljava/lang/Object;F)F

    move-result v0

    iput v0, p0, Lcom/metamoji/ui/DetailWindow;->_autoScrollInterval:F

    return-void
.end method

.method public moveLeftFrame()V
    .locals 10

    .line 893
    invoke-direct {p0}, Lcom/metamoji/ui/DetailWindow;->cancelWriting()V

    .line 894
    invoke-virtual {p0}, Lcom/metamoji/ui/DetailWindow;->clearAutoScrollTimer()V

    .line 895
    iget-object v0, p0, Lcom/metamoji/ui/DetailWindow;->_canvas:Lcom/metamoji/ui/DetailView;

    invoke-virtual {v0}, Lcom/metamoji/ui/DetailView;->resetMaxTouchX()V

    .line 897
    iget-object v0, p0, Lcom/metamoji/ui/DetailWindow;->_frame:Lcom/metamoji/ui/DetailFrame;

    invoke-virtual {v0}, Lcom/metamoji/ui/DetailFrame;->getPosition()Landroid/graphics/RectF;

    move-result-object v0

    .line 898
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    .line 899
    iget v2, v0, Landroid/graphics/RectF;->left:F

    const v3, 0x3f4ccccd    # 0.8f

    mul-float/2addr v3, v1

    sub-float v3, v2, v3

    const/4 v4, 0x0

    cmpg-float v5, v3, v4

    const v6, 0x3a83126f    # 0.001f

    if-gez v5, :cond_0

    sub-float v5, v2, v6

    cmpg-float v5, v4, v5

    if-gez v5, :cond_0

    move v3, v4

    .line 906
    :cond_0
    iget-boolean v4, p0, Lcom/metamoji/ui/DetailWindow;->_marginLineVisible:Z

    if-eqz v4, :cond_3

    .line 907
    invoke-direct {p0}, Lcom/metamoji/ui/DetailWindow;->getMargins()V

    .line 910
    iget-object v4, p0, Lcom/metamoji/ui/DetailWindow;->_mx:[F

    array-length v5, v4

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_3

    aget v8, v4, v7

    cmpg-float v9, v3, v8

    if-gez v9, :cond_1

    sub-float v9, v2, v6

    cmpg-float v9, v8, v9

    if-gez v9, :cond_1

    move v3, v8

    :cond_1
    sub-float/2addr v8, v1

    cmpg-float v9, v3, v8

    if-gez v9, :cond_2

    sub-float v9, v2, v6

    cmpg-float v9, v8, v9

    if-gez v9, :cond_2

    move v3, v8

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 923
    :cond_3
    invoke-direct {p0}, Lcom/metamoji/ui/DetailWindow;->getScrollableArea()Landroid/graphics/RectF;

    move-result-object v2

    .line 924
    iget v4, v2, Landroid/graphics/RectF;->left:F

    cmpg-float v4, v3, v4

    if-gez v4, :cond_4

    .line 925
    iget v3, v2, Landroid/graphics/RectF;->left:F

    .line 927
    :cond_4
    iput v3, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v1

    .line 928
    iput v3, v0, Landroid/graphics/RectF;->right:F

    .line 929
    iget-object v1, p0, Lcom/metamoji/ui/DetailWindow;->_frame:Lcom/metamoji/ui/DetailFrame;

    invoke-virtual {v1, v0}, Lcom/metamoji/ui/DetailFrame;->setPosition(Landroid/graphics/RectF;)V

    .line 930
    invoke-direct {p0}, Lcom/metamoji/ui/DetailWindow;->scrollIntoFrame()V

    return-void
.end method

.method public moveNextFrame()V
    .locals 4

    .line 985
    invoke-direct {p0}, Lcom/metamoji/ui/DetailWindow;->cancelWriting()V

    .line 986
    invoke-virtual {p0}, Lcom/metamoji/ui/DetailWindow;->clearAutoScrollTimer()V

    .line 987
    iget-object v0, p0, Lcom/metamoji/ui/DetailWindow;->_canvas:Lcom/metamoji/ui/DetailView;

    invoke-virtual {v0}, Lcom/metamoji/ui/DetailView;->resetMaxTouchX()V

    .line 989
    iget-object v0, p0, Lcom/metamoji/ui/DetailWindow;->_frame:Lcom/metamoji/ui/DetailFrame;

    invoke-virtual {v0}, Lcom/metamoji/ui/DetailFrame;->getPosition()Landroid/graphics/RectF;

    move-result-object v0

    .line 990
    invoke-direct {p0}, Lcom/metamoji/ui/DetailWindow;->positionService()Lcom/metamoji/nt/NtDetailWindowPositionService;

    move-result-object v1

    .line 991
    invoke-direct {p0}, Lcom/metamoji/ui/DetailWindow;->createContext()Lcom/metamoji/nt/NtDetailWindowPositionService$NtDetailWindowContext;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtDetailWindowPositionService;->nextFrame(Lcom/metamoji/nt/NtDetailWindowPositionService$NtDetailWindowContext;)Landroid/graphics/PointF;

    move-result-object v1

    .line 992
    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v3, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    .line 993
    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v3, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v3

    .line 994
    invoke-virtual {v0, v2, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 995
    iget-object v1, p0, Lcom/metamoji/ui/DetailWindow;->_frame:Lcom/metamoji/ui/DetailFrame;

    invoke-virtual {v1, v0}, Lcom/metamoji/ui/DetailFrame;->setPosition(Landroid/graphics/RectF;)V

    .line 996
    invoke-direct {p0}, Lcom/metamoji/ui/DetailWindow;->scrollIntoFrame()V

    return-void
.end method

.method public moveRightFrame()V
    .locals 9

    .line 937
    invoke-direct {p0}, Lcom/metamoji/ui/DetailWindow;->cancelWriting()V

    .line 938
    invoke-virtual {p0}, Lcom/metamoji/ui/DetailWindow;->clearAutoScrollTimer()V

    .line 939
    iget-object v0, p0, Lcom/metamoji/ui/DetailWindow;->_canvas:Lcom/metamoji/ui/DetailView;

    invoke-virtual {v0}, Lcom/metamoji/ui/DetailView;->getMaxTouchX()F

    move-result v0

    .line 940
    iget-object v1, p0, Lcom/metamoji/ui/DetailWindow;->_canvas:Lcom/metamoji/ui/DetailView;

    invoke-virtual {v1}, Lcom/metamoji/ui/DetailView;->resetMaxTouchX()V

    .line 942
    iget-object v1, p0, Lcom/metamoji/ui/DetailWindow;->_frame:Lcom/metamoji/ui/DetailFrame;

    invoke-virtual {v1}, Lcom/metamoji/ui/DetailFrame;->getPosition()Landroid/graphics/RectF;

    move-result-object v1

    .line 943
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v3, 0x42700000    # 60.0f

    .line 944
    invoke-static {v3}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v3

    cmpl-float v4, v0, v3

    if-lez v4, :cond_0

    sub-float/2addr v0, v3

    .line 945
    iget-object v3, p0, Lcom/metamoji/ui/DetailWindow;->_canvas:Lcom/metamoji/ui/DetailView;

    invoke-virtual {v3}, Lcom/metamoji/ui/DetailView;->getZoom()F

    move-result v3

    div-float/2addr v0, v3

    goto :goto_0

    :cond_0
    const v0, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v2

    .line 947
    :goto_0
    iget v3, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v3

    const v4, 0x3a83126f    # 0.001f

    add-float/2addr v3, v4

    const/4 v4, 0x0

    cmpg-float v5, v3, v4

    if-gez v5, :cond_1

    cmpg-float v5, v4, v0

    if-gez v5, :cond_1

    move v0, v4

    .line 954
    :cond_1
    iget-boolean v4, p0, Lcom/metamoji/ui/DetailWindow;->_marginLineVisible:Z

    if-eqz v4, :cond_4

    .line 955
    invoke-direct {p0}, Lcom/metamoji/ui/DetailWindow;->getMargins()V

    .line 958
    iget-object v4, p0, Lcom/metamoji/ui/DetailWindow;->_mx:[F

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_4

    aget v7, v4, v6

    cmpg-float v8, v3, v7

    if-gez v8, :cond_2

    cmpg-float v8, v7, v0

    if-gez v8, :cond_2

    move v0, v7

    :cond_2
    sub-float/2addr v7, v2

    cmpg-float v8, v3, v7

    if-gez v8, :cond_3

    cmpg-float v8, v7, v0

    if-gez v8, :cond_3

    move v0, v7

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 971
    :cond_4
    invoke-direct {p0}, Lcom/metamoji/ui/DetailWindow;->getScrollableArea()Landroid/graphics/RectF;

    move-result-object v3

    add-float v4, v0, v2

    .line 972
    iget v5, v3, Landroid/graphics/RectF;->right:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_5

    .line 973
    iget v0, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v2

    .line 975
    :cond_5
    iput v0, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v2

    .line 976
    iput v0, v1, Landroid/graphics/RectF;->right:F

    .line 977
    iget-object v0, p0, Lcom/metamoji/ui/DetailWindow;->_frame:Lcom/metamoji/ui/DetailFrame;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/DetailFrame;->setPosition(Landroid/graphics/RectF;)V

    .line 978
    invoke-direct {p0}, Lcom/metamoji/ui/DetailWindow;->scrollIntoFrame()V

    return-void
.end method

.method public notifyEnableCommand(Lcom/metamoji/nt/NtCommand;Z)V
    .locals 1

    .line 530
    sget-object v0, Lcom/metamoji/ui/DetailWindow$25;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    invoke-virtual {p1}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    return-void

    .line 535
    :cond_0
    sget p1, Lcom/metamoji/noteanytime/R$id;->dwindow_redo:I

    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/DetailWindow;->enableButtonOnUIThread(IZ)V

    return-void

    .line 532
    :cond_1
    sget p1, Lcom/metamoji/noteanytime/R$id;->dwindow_undo:I

    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/DetailWindow;->enableButtonOnUIThread(IZ)V

    return-void
.end method

.method public notifySelectCommand(Lcom/metamoji/nt/NtCommand;I)Z
    .locals 2

    .line 494
    iget-object v0, p0, Lcom/metamoji/ui/DetailWindow;->_sheet:Lcom/metamoji/nt/NtNoteController;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 498
    :cond_0
    sget-object v0, Lcom/metamoji/ui/DetailWindow$25;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    invoke-virtual {p1}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 520
    :pswitch_0
    invoke-virtual {p0}, Lcom/metamoji/ui/DetailWindow;->updateShapePenModeButton()V

    goto :goto_0

    .line 515
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/metamoji/ui/DetailWindow;->onPenStyleChanged(I)V

    return v0

    .line 511
    :pswitch_2
    invoke-direct {p0}, Lcom/metamoji/ui/DetailWindow;->cancelWriting()V

    .line 512
    invoke-direct {p0, p2}, Lcom/metamoji/ui/DetailWindow;->selectEraser(I)V

    return v0

    .line 505
    :pswitch_3
    invoke-direct {p0}, Lcom/metamoji/ui/DetailWindow;->cancelWriting()V

    .line 506
    invoke-direct {p0, p2}, Lcom/metamoji/ui/DetailWindow;->selectPen(I)V

    .line 508
    invoke-virtual {p0}, Lcom/metamoji/ui/DetailWindow;->updateShapePenModeButton()V

    return v0

    .line 500
    :pswitch_4
    invoke-direct {p0}, Lcom/metamoji/ui/DetailWindow;->cancelWriting()V

    .line 501
    invoke-virtual {p0}, Lcom/metamoji/ui/DetailWindow;->closeSelector()V

    .line 502
    invoke-static {p2}, Lcom/metamoji/nt/NtNoteController$NoteMode;->valueOf(I)Lcom/metamoji/nt/NtNoteController$NoteMode;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/metamoji/ui/DetailWindow;->updateNoteMode(Lcom/metamoji/nt/NtNoteController$NoteMode;)V

    return v0

    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    .line 149
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 151
    iput-boolean p1, p0, Lcom/metamoji/ui/DetailWindow;->_initSize:Z

    .line 153
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->editorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object p1

    .line 154
    invoke-virtual {p0}, Lcom/metamoji/ui/DetailWindow;->getView()Landroid/view/View;

    move-result-object v0

    .line 157
    sget v1, Lcom/metamoji/noteanytime/R$id;->dwindow_close:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 158
    new-instance v2, Lcom/metamoji/ui/DetailWindow$1;

    invoke-direct {v2, p0}, Lcom/metamoji/ui/DetailWindow$1;-><init>(Lcom/metamoji/ui/DetailWindow;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 166
    sget v1, Lcom/metamoji/noteanytime/R$id;->dwindow_pen:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 167
    new-instance v2, Lcom/metamoji/ui/DetailWindow$2;

    invoke-direct {v2, p0}, Lcom/metamoji/ui/DetailWindow$2;-><init>(Lcom/metamoji/ui/DetailWindow;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    invoke-virtual {p0}, Lcom/metamoji/ui/DetailWindow;->updateShapePenModeButton()V

    .line 184
    sget v1, Lcom/metamoji/noteanytime/R$id;->dwindow_eraser:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 185
    new-instance v2, Lcom/metamoji/ui/DetailWindow$3;

    invoke-direct {v2, p0}, Lcom/metamoji/ui/DetailWindow$3;-><init>(Lcom/metamoji/ui/DetailWindow;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    sget v2, Lcom/metamoji/noteanytime/R$drawable;->bar_hover_eraser:I

    sget v3, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_ICON_TEXT_ERASE:I

    const v4, 0x3f4ccccd    # 0.8f

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/metamoji/ui/DetailWindow;->setButtonImage(Landroid/widget/ImageButton;IIF)V

    .line 200
    sget v1, Lcom/metamoji/noteanytime/R$id;->dwindow_undo:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 201
    new-instance v2, Lcom/metamoji/ui/DetailWindow$4;

    invoke-direct {v2, p0}, Lcom/metamoji/ui/DetailWindow$4;-><init>(Lcom/metamoji/ui/DetailWindow;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    sget v2, Lcom/metamoji/noteanytime/R$drawable;->bar_btn_undo:I

    sget v3, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_ICON_TEXT_UNDO:I

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/metamoji/ui/DetailWindow;->setButtonImage(Landroid/widget/ImageButton;IIF)V

    .line 210
    sget v1, Lcom/metamoji/noteanytime/R$id;->dwindow_redo:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 211
    new-instance v2, Lcom/metamoji/ui/DetailWindow$5;

    invoke-direct {v2, p0}, Lcom/metamoji/ui/DetailWindow$5;-><init>(Lcom/metamoji/ui/DetailWindow;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    sget v2, Lcom/metamoji/noteanytime/R$drawable;->bar_btn_redo:I

    sget v3, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_ICON_TEXT_REDO:I

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/metamoji/ui/DetailWindow;->setButtonImage(Landroid/widget/ImageButton;IIF)V

    .line 220
    sget v1, Lcom/metamoji/noteanytime/R$id;->dwindow_left:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 221
    new-instance v2, Lcom/metamoji/ui/DetailWindow$6;

    invoke-direct {v2, p0}, Lcom/metamoji/ui/DetailWindow$6;-><init>(Lcom/metamoji/ui/DetailWindow;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    sget v1, Lcom/metamoji/noteanytime/R$id;->dwindow_right:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 230
    new-instance v2, Lcom/metamoji/ui/DetailWindow$7;

    invoke-direct {v2, p0}, Lcom/metamoji/ui/DetailWindow$7;-><init>(Lcom/metamoji/ui/DetailWindow;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    sget v1, Lcom/metamoji/noteanytime/R$id;->dwindow_enter:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 239
    new-instance v2, Lcom/metamoji/ui/DetailWindow$8;

    invoke-direct {v2, p0}, Lcom/metamoji/ui/DetailWindow$8;-><init>(Lcom/metamoji/ui/DetailWindow;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    sget v1, Lcom/metamoji/noteanytime/R$id;->dwindow_option:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 248
    new-instance v2, Lcom/metamoji/ui/DetailWindow$9;

    invoke-direct {v2, p0}, Lcom/metamoji/ui/DetailWindow$9;-><init>(Lcom/metamoji/ui/DetailWindow;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    sget v1, Lcom/metamoji/noteanytime/R$id;->dwindow_resize:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 269
    new-instance v2, Lcom/metamoji/ui/DetailWindow$10;

    invoke-direct {v2, p0}, Lcom/metamoji/ui/DetailWindow$10;-><init>(Lcom/metamoji/ui/DetailWindow;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 277
    sget v1, Lcom/metamoji/noteanytime/R$id;->dwindow_select:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/DetailSelectorButton;

    iput-object v1, p0, Lcom/metamoji/ui/DetailWindow;->_selector:Lcom/metamoji/ui/DetailSelectorButton;

    .line 278
    new-instance v2, Lcom/metamoji/ui/DetailWindow$11;

    invoke-direct {v2, p0}, Lcom/metamoji/ui/DetailWindow$11;-><init>(Lcom/metamoji/ui/DetailWindow;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/DetailSelectorButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    sget v1, Lcom/metamoji/noteanytime/R$id;->dwindow_main:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/ui/DetailWindow;->_main:Landroid/view/View;

    .line 286
    sget v1, Lcom/metamoji/noteanytime/R$id;->dwindow_autoscroll_area:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/ui/DetailWindow;->_autoScrollArea:Landroid/view/View;

    .line 287
    sget v1, Lcom/metamoji/noteanytime/R$id;->dwindow_additional_line_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/DetailAdditionalLineView;

    iput-object v1, p0, Lcom/metamoji/ui/DetailWindow;->_addView:Lcom/metamoji/ui/DetailAdditionalLineView;

    .line 288
    invoke-virtual {v1, p0}, Lcom/metamoji/ui/DetailAdditionalLineView;->init(Lcom/metamoji/ui/DetailWindow;)V

    .line 290
    sget v1, Lcom/metamoji/noteanytime/R$id;->dwindow_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/DetailView;

    iput-object v0, p0, Lcom/metamoji/ui/DetailWindow;->_canvas:Lcom/metamoji/ui/DetailView;

    .line 291
    new-instance v1, Lcom/metamoji/ui/DetailWindow$12;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/DetailWindow$12;-><init>(Lcom/metamoji/ui/DetailWindow;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/DetailView;->setOnSizeChangedListener(Lcom/metamoji/ui/DetailView$OnSizeChangedListener;)V

    .line 298
    iget v0, p0, Lcom/metamoji/ui/DetailWindow;->_height:I

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/metamoji/ui/DetailWindow;->_main:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 302
    iget v1, p0, Lcom/metamoji/ui/DetailWindow;->_height:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_0
    const/high16 v0, 0x40800000    # 4.0f

    .line 306
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/metamoji/ui/DetailWindow;->_baseFloatingPos:I

    .line 308
    invoke-interface {p1}, Lcom/metamoji/nt/INtEditor;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v0

    .line 310
    new-instance v1, Lcom/metamoji/ui/DetailFrame;

    invoke-interface {p1}, Lcom/metamoji/nt/INtEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/metamoji/ui/DetailFrame;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/metamoji/ui/DetailWindow;->_frame:Lcom/metamoji/ui/DetailFrame;

    .line 311
    iget-object p1, p0, Lcom/metamoji/ui/DetailWindow;->_frameState:Landroid/os/Bundle;

    invoke-virtual {v1, p0, v0, p1}, Lcom/metamoji/ui/DetailFrame;->init(Lcom/metamoji/ui/DetailWindow;Lcom/metamoji/df/sprite/Viewport;Landroid/os/Bundle;)V

    .line 313
    iget-object p1, p0, Lcom/metamoji/ui/DetailWindow;->_canvas:Lcom/metamoji/ui/DetailView;

    invoke-virtual {p1, p0}, Lcom/metamoji/ui/DetailView;->init(Lcom/metamoji/ui/DetailWindow;)V

    .line 316
    invoke-virtual {p0}, Lcom/metamoji/ui/DetailWindow;->isHidden()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/metamoji/ui/DetailWindow;->handleHiddenChanged(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 144
    sget p3, Lcom/metamoji/noteanytime/R$layout;->editor_dwindow:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 3

    .line 332
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 334
    invoke-direct {p0}, Lcom/metamoji/ui/DetailWindow;->unbind()V

    const/4 v0, 0x0

    .line 336
    iput-object v0, p0, Lcom/metamoji/ui/DetailWindow;->_popup:Lcom/metamoji/ui/DetailSelector;

    .line 337
    iget-object v1, p0, Lcom/metamoji/ui/DetailWindow;->_canvas:Lcom/metamoji/ui/DetailView;

    if-eqz v1, :cond_0

    .line 338
    invoke-virtual {v1}, Lcom/metamoji/ui/DetailView;->dispose()V

    .line 339
    iput-object v0, p0, Lcom/metamoji/ui/DetailWindow;->_canvas:Lcom/metamoji/ui/DetailView;

    .line 341
    :cond_0
    iget-object v1, p0, Lcom/metamoji/ui/DetailWindow;->_frame:Lcom/metamoji/ui/DetailFrame;

    if-eqz v1, :cond_2

    .line 342
    iget-object v1, p0, Lcom/metamoji/ui/DetailWindow;->_frameState:Landroid/os/Bundle;

    if-nez v1, :cond_1

    .line 343
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/metamoji/ui/DetailWindow;->_frameState:Landroid/os/Bundle;

    .line 345
    :cond_1
    iget-object v1, p0, Lcom/metamoji/ui/DetailWindow;->_frame:Lcom/metamoji/ui/DetailFrame;

    iget-object v2, p0, Lcom/metamoji/ui/DetailWindow;->_frameState:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/DetailFrame;->saveState(Landroid/os/Bundle;)V

    .line 346
    iput-object v0, p0, Lcom/metamoji/ui/DetailWindow;->_frame:Lcom/metamoji/ui/DetailFrame;

    .line 348
    :cond_2
    iput-object v0, p0, Lcom/metamoji/ui/DetailWindow;->_margin:[Lcom/metamoji/ui/DetailMargin;

    .line 349
    iput-object v0, p0, Lcom/metamoji/ui/DetailWindow;->_marginb:[Lcom/metamoji/ui/DetailMargin;

    return-void
.end method

.method public onFramePositionChanged(Landroid/graphics/RectF;)V
    .locals 3

    .line 772
    iget-object v0, p0, Lcom/metamoji/ui/DetailWindow;->_canvas:Lcom/metamoji/ui/DetailView;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/DetailView;->setTargetRect(Landroid/graphics/RectF;)V

    .line 773
    iget-object p1, p0, Lcom/metamoji/ui/DetailWindow;->_marginb:[Lcom/metamoji/ui/DetailMargin;

    if-eqz p1, :cond_0

    .line 774
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 775
    invoke-virtual {v2}, Lcom/metamoji/ui/DetailMargin;->updatePosition()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 778
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/ui/DetailWindow;->updateAutoScrollAreaVisibility()V

    .line 780
    iget-object p1, p0, Lcom/metamoji/ui/DetailWindow;->_addView:Lcom/metamoji/ui/DetailAdditionalLineView;

    invoke-virtual {p1}, Lcom/metamoji/ui/DetailAdditionalLineView;->invalidate()V

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    .line 354
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    .line 355
    invoke-direct {p0, p1}, Lcom/metamoji/ui/DetailWindow;->handleHiddenChanged(Z)V

    return-void
.end method

.method public onMarginPositionChanged()V
    .locals 4

    .line 787
    invoke-virtual {p0}, Lcom/metamoji/ui/DetailWindow;->saveSettingsOnPage()V

    .line 789
    iget-object v0, p0, Lcom/metamoji/ui/DetailWindow;->_marginb:[Lcom/metamoji/ui/DetailMargin;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 791
    iget-object v2, p0, Lcom/metamoji/ui/DetailWindow;->_marginb:[Lcom/metamoji/ui/DetailMargin;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/metamoji/ui/DetailWindow;->_mx:[F

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Lcom/metamoji/ui/DetailMargin;->setPosition(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSelect(Lcom/metamoji/nt/NtNoteController$NoteMode;IZ)V
    .locals 2

    .line 1463
    sget-object v0, Lcom/metamoji/ui/DetailWindow$25;->$SwitchMap$com$metamoji$nt$NtNoteController$NoteMode:[I

    invoke-virtual {p1}, Lcom/metamoji/nt/NtNoteController$NoteMode;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const-string v0, "index"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 p3, 0x2

    if-eq p1, p3, :cond_0

    goto :goto_0

    .line 1482
    :cond_0
    sget p1, Lcom/metamoji/ui/DetailSelectorButton;->ERASER_BUTTONS:I

    sub-int/2addr p1, v1

    if-ge p2, p1, :cond_1

    .line 1484
    new-instance p1, Lcom/metamoji/cm/CmContext;

    invoke-direct {p1}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 1485
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1486
    sget-object p2, Lcom/metamoji/nt/NtCommand;->CMD_SELECTERASER:Lcom/metamoji/nt/NtCommand;

    invoke-direct {p0, p2, p1}, Lcom/metamoji/ui/DetailWindow;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    .line 1487
    invoke-virtual {p0}, Lcom/metamoji/ui/DetailWindow;->closeSelector()V

    return-void

    .line 1490
    :cond_1
    sget p1, Lcom/metamoji/noteanytime/R$string;->Msg_PageClear_Message:I

    sget p2, Lcom/metamoji/noteanytime/R$string;->Msg_PageClear_Title:I

    new-instance p3, Lcom/metamoji/ui/DetailWindow$24;

    invoke-direct {p3, p0}, Lcom/metamoji/ui/DetailWindow$24;-><init>(Lcom/metamoji/ui/DetailWindow;)V

    const/4 v0, 0x0

    invoke-static {p1, p2, p3, v0}, Lcom/metamoji/cm/CmUtils;->yesNoDialog(IILandroid/content/DialogInterface$OnClickListener;Z)V

    return-void

    :cond_2
    const/4 p1, -0x1

    if-ne p2, p1, :cond_3

    .line 1468
    sget-object p1, Lcom/metamoji/nt/NtCommand;->CMD_SHAPE_PEN_MODECHANGE:Lcom/metamoji/nt/NtCommand;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/DetailWindow;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    .line 1469
    invoke-virtual {p0}, Lcom/metamoji/ui/DetailWindow;->closeSelector()V

    return-void

    .line 1472
    :cond_3
    new-instance p1, Lcom/metamoji/cm/CmContext;

    invoke-direct {p1}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 1473
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1474
    sget-object p2, Lcom/metamoji/nt/NtCommand;->CMD_SELECTPEN:Lcom/metamoji/nt/NtCommand;

    invoke-direct {p0, p2, p1}, Lcom/metamoji/ui/DetailWindow;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    if-nez p3, :cond_4

    .line 1476
    invoke-virtual {p0}, Lcom/metamoji/ui/DetailWindow;->closeSelector()V

    :cond_4
    :goto_0
    return-void
.end method

.method public refresh()V
    .locals 2

    .line 453
    invoke-virtual {p0}, Lcom/metamoji/ui/DetailWindow;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 457
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ui/DetailWindow$13;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/DetailWindow$13;-><init>(Lcom/metamoji/ui/DetailWindow;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public requestAdjustPosition()V
    .locals 2

    .line 799
    iget-object v0, p0, Lcom/metamoji/ui/DetailWindow;->_frame:Lcom/metamoji/ui/DetailFrame;

    invoke-direct {p0}, Lcom/metamoji/ui/DetailWindow;->getVisibleArea()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/DetailFrame;->adjustPosition(Landroid/graphics/RectF;)V

    return-void
.end method

.method public saveSettingsOnPage()V
    .locals 6

    .line 1087
    invoke-direct {p0}, Lcom/metamoji/ui/DetailWindow;->getMargins()V

    .line 1088
    iget-object v0, p0, Lcom/metamoji/ui/DetailWindow;->_mx:[F

    invoke-static {v0}, Ljava/util/Arrays;->sort([F)V

    .line 1089
    iget-object v0, p0, Lcom/metamoji/ui/DetailWindow;->_sheet:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    .line 1090
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1091
    iget-object v2, p0, Lcom/metamoji/ui/DetailWindow;->_mx:[F

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget v5, v2, v4

    .line 1092
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1094
    :cond_0
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtPageController;->setDwLines(Ljava/util/List;)V

    return-void
.end method

.method public saveSettingsOnSystem()V
    .locals 4

    .line 1129
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 1130
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1131
    iget v2, p0, Lcom/metamoji/ui/DetailWindow;->_lineFeedWidth:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v3, "lineFeedWidth"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1132
    iget v2, p0, Lcom/metamoji/ui/DetailWindow;->_feedStepWidth:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v3, "feedStepWidth"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1133
    iget-boolean v2, p0, Lcom/metamoji/ui/DetailWindow;->_forceWindowStep:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "forceWindowStep"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1134
    iget-boolean v2, p0, Lcom/metamoji/ui/DetailWindow;->_marginLineVisible:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "marginLineVisible"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1135
    iget-boolean v2, p0, Lcom/metamoji/ui/DetailWindow;->_autoScroll:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "autoScroll"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1136
    iget v2, p0, Lcom/metamoji/ui/DetailWindow;->_autoScrollAreaWidth:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v3, "autoScrollAreaWidth"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1137
    iget v2, p0, Lcom/metamoji/ui/DetailWindow;->_autoScrollInterval:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v3, "autoScrollInterval"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1138
    const-string v2, "DetailWindowSettings"

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method setButtonImage(Landroid/widget/ImageButton;IIF)V
    .locals 8

    const/high16 v0, 0x42200000    # 40.0f

    .line 320
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v1

    float-to-int v5, v1

    .line 321
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    float-to-int v6, v0

    .line 323
    invoke-static {p2}, Lcom/metamoji/ui/HoverCm;->getRealSizeImage(I)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 324
    invoke-static {p3}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v4

    const/16 p3, 0x4b

    const/16 v0, 0x54

    const/16 v1, 0xff

    const/16 v2, 0x45

    .line 325
    invoke-static {v1, v2, p3, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p3

    invoke-static {p2, p3}, Lcom/metamoji/ui/HoverCm;->makeMaskImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v7, 0x0

    move v3, p4

    .line 326
    invoke-static/range {v2 .. v7}, Lcom/metamoji/ui/HoverCm;->makeModeImage(Landroid/graphics/Bitmap;FLjava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 327
    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public startAutoScrollTimer()V
    .locals 4

    .line 1173
    invoke-virtual {p0}, Lcom/metamoji/ui/DetailWindow;->clearAutoScrollTimer()V

    .line 1175
    iget-boolean v0, p0, Lcom/metamoji/ui/DetailWindow;->_autoScroll:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 1178
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/DetailWindow;->_autoScrollArea:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1182
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ui/DetailWindow;->_canvas:Lcom/metamoji/ui/DetailView;

    invoke-virtual {v0}, Lcom/metamoji/ui/DetailView;->getMaxTouchX()F

    move-result v0

    .line 1183
    new-instance v1, Landroid/graphics/PointF;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1184
    iget-object v2, p0, Lcom/metamoji/ui/DetailWindow;->_autoScrollArea:Landroid/view/View;

    iget-object v3, p0, Lcom/metamoji/ui/DetailWindow;->_canvas:Lcom/metamoji/ui/DetailView;

    invoke-virtual {v3}, Lcom/metamoji/ui/DetailView;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/metamoji/cm/CmUtils;->transformPoint(Landroid/graphics/PointF;Landroid/view/View;Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object v1

    .line 1185
    iget v1, v1, Landroid/graphics/PointF;->x:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    :goto_0
    return-void

    .line 1189
    :cond_2
    new-instance v0, Lcom/metamoji/cm/UiTimer;

    invoke-direct {v0}, Lcom/metamoji/cm/UiTimer;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/DetailWindow;->_autoScrollTimer:Lcom/metamoji/cm/UiTimer;

    .line 1190
    new-instance v1, Lcom/metamoji/ui/DetailWindow$22;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/DetailWindow$22;-><init>(Lcom/metamoji/ui/DetailWindow;)V

    iget v2, p0, Lcom/metamoji/ui/DetailWindow;->_autoScrollInterval:F

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v2, v3

    float-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/metamoji/cm/UiTimer;->schedule(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public updateMarginHandlePosition()V
    .locals 6

    .line 743
    iget-boolean v0, p0, Lcom/metamoji/ui/DetailWindow;->_initSize:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/high16 v0, 0x42480000    # 50.0f

    .line 747
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    neg-float v0, v0

    .line 748
    invoke-virtual {p0}, Lcom/metamoji/ui/DetailWindow;->isFloating()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 749
    invoke-virtual {p0}, Lcom/metamoji/ui/DetailWindow;->getView()Landroid/view/View;

    move-result-object v1

    .line 750
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 751
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/metamoji/ui/DetailWindow;->_floatingPos:F

    sub-float/2addr v2, v3

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/metamoji/ui/DetailWindow;->_baseFloatingPos:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sub-float/2addr v2, v3

    .line 752
    iget v3, p0, Lcom/metamoji/ui/DetailWindow;->_floatingPos:F

    cmpl-float v2, v3, v2

    if-lez v2, :cond_1

    .line 755
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/metamoji/ui/DetailWindow;->_baseFloatingPos:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sub-float v0, v1, v0

    .line 759
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/ui/DetailWindow;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/metamoji/noteanytime/R$id;->main:I

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 760
    new-instance v2, Landroid/graphics/PointF;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 761
    invoke-virtual {p0}, Lcom/metamoji/ui/DetailWindow;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v2, v0, v1}, Lcom/metamoji/cm/CmUtils;->transformPoint(Landroid/graphics/PointF;Landroid/view/View;Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object v0

    .line 762
    iget-object v1, p0, Lcom/metamoji/ui/DetailWindow;->_margin:[Lcom/metamoji/ui/DetailMargin;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 763
    iget v5, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v4, v5}, Lcom/metamoji/ui/DetailMargin;->setHandlePosition(F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method updateShapePenModeButton()V
    .locals 5

    .line 1547
    iget-object v0, p0, Lcom/metamoji/ui/DetailWindow;->_popup:Lcom/metamoji/ui/DetailSelector;

    if-eqz v0, :cond_0

    .line 1548
    invoke-virtual {v0}, Lcom/metamoji/ui/DetailSelector;->updateAll()V

    :cond_0
    const/high16 v0, 0x42200000    # 40.0f

    .line 1552
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    float-to-int v0, v0

    .line 1553
    invoke-static {}, Lcom/metamoji/nt/NtSystemSettings;->getInstance()Lcom/metamoji/nt/NtSystemSettings;

    move-result-object v1

    const-string v2, "MMJNtPenSettings"

    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtSystemSettings;->getSettings(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v1

    check-cast v1, Lcom/metamoji/nt/NtPenSettings;

    .line 1554
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPenSettings;->getCurrentIndex()I

    move-result v1

    .line 1555
    invoke-virtual {p0}, Lcom/metamoji/ui/DetailWindow;->getView()Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/metamoji/noteanytime/R$id;->dwindow_pen:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1556
    invoke-static {v0, v0, v1, v3, v4}, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->createModePenImage(IIIZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1557
    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
