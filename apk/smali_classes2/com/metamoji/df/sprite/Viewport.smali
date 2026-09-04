.class public Lcom/metamoji/df/sprite/Viewport;
.super Landroid/view/ViewGroup;
.source "Viewport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/df/sprite/Viewport$TickRunnable;,
        Lcom/metamoji/df/sprite/Viewport$Target;,
        Lcom/metamoji/df/sprite/Viewport$MonitorJob;
    }
.end annotation


# static fields
.field private static final DETAIL:I = 0x8

.field private static final ENABLED_INVERSE_MATRIX:I = 0x20

.field private static final ENABLED_MATRIX:I = 0x10

.field private static final PAN_EMPTY:Lcom/metamoji/df/sprite/AllInOneGesture$PanListener;

.field private static final PINCH_EMPTY:Lcom/metamoji/df/sprite/AllInOneGesture$PinchListener;

.field private static final TIMEOUT:J = 0x21L

.field private static vid:I


# instance fields
.field private _GESTURE_DRAG:Lcom/metamoji/df/sprite/AllInOneGesture$DragListener;

.field private final _GESTURE_DRAG_PAN:Lcom/metamoji/df/sprite/AllInOneGesture$DragListener;

.field private final _GESTURE_HOLD:Lcom/metamoji/df/sprite/AllInOneGesture$HoldListener;

.field private _GESTURE_PAN:Lcom/metamoji/df/sprite/AllInOneGesture$PanListener;

.field private _GESTURE_PINCH:Lcom/metamoji/df/sprite/AllInOneGesture$PinchListener;

.field private final _GESTURE_TAP:Lcom/metamoji/df/sprite/AllInOneGesture$TapListener;

.field private contextClickListener:Lcom/metamoji/df/sprite/ContextClickListener2;

.field private dirLock:Lcom/metamoji/df/sprite/DirectionalLock;

.field private enabledTurnOver:Z

.field private flags:I

.field private gesture:Lcom/metamoji/df/sprite/AllInOneGesture;

.field private glimpse:Lcom/metamoji/df/sprite/Glimpse;

.field private inverseMatrix:Landroid/graphics/Matrix;

.field private longPressListener:Lcom/metamoji/df/sprite/LongPressListener;

.field private loop:Lcom/metamoji/df/sprite/Viewport$TickRunnable;

.field private mainLayer:Lcom/metamoji/df/sprite/Layer;

.field private margin:Landroid/graphics/RectF;

.field private matrix:Landroid/graphics/Matrix;

.field private maxZoomScale:F

.field private minZoomScale:F

.field private monitor:Ljava/lang/Object;

.field private monitorThread:Ljava/lang/Thread;

.field private numberOfTouchesPanGesture:I

.field private overlay:Lcom/metamoji/df/sprite/Layer;

.field private overlay2:Lcom/metamoji/df/sprite/Layer;

.field private repaintCallback:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private scrollTranslate:Landroid/graphics/PointF;

.field private tapListener:Lcom/metamoji/df/sprite/TapListener;

.field private touchListener:Lcom/metamoji/df/sprite/TouchListener;

.field private turnOver:Lcom/metamoji/df/sprite/TurnOverMediator;

.field private tweener:Lcom/metamoji/df/sprite/Tweener;

.field public useScreenShotPanPinch:Z

.field private viewportListener:Lcom/metamoji/df/sprite/ViewportListener;

.field public wristGuardRect:Lcom/metamoji/cm/RectEx;


# direct methods
.method static bridge synthetic -$$Nest$fget_GESTURE_DRAG(Lcom/metamoji/df/sprite/Viewport;)Lcom/metamoji/df/sprite/AllInOneGesture$DragListener;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/df/sprite/Viewport;->_GESTURE_DRAG:Lcom/metamoji/df/sprite/AllInOneGesture$DragListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcontextClickListener(Lcom/metamoji/df/sprite/Viewport;)Lcom/metamoji/df/sprite/ContextClickListener2;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/df/sprite/Viewport;->contextClickListener:Lcom/metamoji/df/sprite/ContextClickListener2;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdirLock(Lcom/metamoji/df/sprite/Viewport;)Lcom/metamoji/df/sprite/DirectionalLock;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/df/sprite/Viewport;->dirLock:Lcom/metamoji/df/sprite/DirectionalLock;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetenabledTurnOver(Lcom/metamoji/df/sprite/Viewport;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/metamoji/df/sprite/Viewport;->enabledTurnOver:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetgesture(Lcom/metamoji/df/sprite/Viewport;)Lcom/metamoji/df/sprite/AllInOneGesture;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/df/sprite/Viewport;->gesture:Lcom/metamoji/df/sprite/AllInOneGesture;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetglimpse(Lcom/metamoji/df/sprite/Viewport;)Lcom/metamoji/df/sprite/Glimpse;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/df/sprite/Viewport;->glimpse:Lcom/metamoji/df/sprite/Glimpse;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlongPressListener(Lcom/metamoji/df/sprite/Viewport;)Lcom/metamoji/df/sprite/LongPressListener;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/df/sprite/Viewport;->longPressListener:Lcom/metamoji/df/sprite/LongPressListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmainLayer(Lcom/metamoji/df/sprite/Viewport;)Lcom/metamoji/df/sprite/Layer;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/df/sprite/Viewport;->mainLayer:Lcom/metamoji/df/sprite/Layer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetnumberOfTouchesPanGesture(Lcom/metamoji/df/sprite/Viewport;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/df/sprite/Viewport;->numberOfTouchesPanGesture:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetscrollTranslate(Lcom/metamoji/df/sprite/Viewport;)Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/df/sprite/Viewport;->scrollTranslate:Landroid/graphics/PointF;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettapListener(Lcom/metamoji/df/sprite/Viewport;)Lcom/metamoji/df/sprite/TapListener;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/df/sprite/Viewport;->tapListener:Lcom/metamoji/df/sprite/TapListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettouchListener(Lcom/metamoji/df/sprite/Viewport;)Lcom/metamoji/df/sprite/TouchListener;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/df/sprite/Viewport;->touchListener:Lcom/metamoji/df/sprite/TouchListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetturnOver(Lcom/metamoji/df/sprite/Viewport;)Lcom/metamoji/df/sprite/TurnOverMediator;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/df/sprite/Viewport;->turnOver:Lcom/metamoji/df/sprite/TurnOverMediator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettweener(Lcom/metamoji/df/sprite/Viewport;)Lcom/metamoji/df/sprite/Tweener;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/df/sprite/Viewport;->tweener:Lcom/metamoji/df/sprite/Tweener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetviewportListener(Lcom/metamoji/df/sprite/Viewport;)Lcom/metamoji/df/sprite/ViewportListener;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/df/sprite/Viewport;->viewportListener:Lcom/metamoji/df/sprite/ViewportListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputglimpse(Lcom/metamoji/df/sprite/Viewport;Lcom/metamoji/df/sprite/Glimpse;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/df/sprite/Viewport;->glimpse:Lcom/metamoji/df/sprite/Glimpse;

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearGlimpse(Lcom/metamoji/df/sprite/Viewport;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/df/sprite/Viewport;->clearGlimpse()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdecelerate(Lcom/metamoji/df/sprite/Viewport;Landroid/graphics/PointF;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/df/sprite/Viewport;->decelerate(Landroid/graphics/PointF;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mmonitorLoop(Lcom/metamoji/df/sprite/Viewport;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/df/sprite/Viewport;->monitorLoop()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monEndOfPanScrollRebound(Lcom/metamoji/df/sprite/Viewport;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/df/sprite/Viewport;->onEndOfPanScrollRebound(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monEndOfPinchZoomRebound(Lcom/metamoji/df/sprite/Viewport;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/df/sprite/Viewport;->onEndOfPinchZoomRebound(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monEndOfScrollAnimation(Lcom/metamoji/df/sprite/Viewport;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/df/sprite/Viewport;->onEndOfScrollAnimation(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monEndOfTurnAnimation(Lcom/metamoji/df/sprite/Viewport;Lcom/metamoji/df/sprite/Glimpse$Required;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/df/sprite/Viewport;->onEndOfTurnAnimation(Lcom/metamoji/df/sprite/Glimpse$Required;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpanScrollRebound(Lcom/metamoji/df/sprite/Viewport;)Z
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/df/sprite/Viewport;->panScrollRebound()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mpinchZoomRebound(Lcom/metamoji/df/sprite/Viewport;Landroid/graphics/PointF;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/df/sprite/Viewport;->pinchZoomRebound(Landroid/graphics/PointF;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mtick(Lcom/metamoji/df/sprite/Viewport;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/df/sprite/Viewport;->tick()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mturnOverPage(Lcom/metamoji/df/sprite/Viewport;)Lcom/metamoji/df/sprite/Glimpse$Required;
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/df/sprite/Viewport;->turnOverPage()Lcom/metamoji/df/sprite/Glimpse$Required;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smtranslatePosition(Landroid/graphics/PointF;FLandroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/metamoji/df/sprite/Viewport;->translatePosition(Landroid/graphics/PointF;FLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 323
    new-instance v0, Lcom/metamoji/df/sprite/Viewport$3;

    invoke-direct {v0}, Lcom/metamoji/df/sprite/Viewport$3;-><init>()V

    sput-object v0, Lcom/metamoji/df/sprite/Viewport;->PAN_EMPTY:Lcom/metamoji/df/sprite/AllInOneGesture$PanListener;

    .line 461
    new-instance v0, Lcom/metamoji/df/sprite/Viewport$5;

    invoke-direct {v0}, Lcom/metamoji/df/sprite/Viewport$5;-><init>()V

    sput-object v0, Lcom/metamoji/df/sprite/Viewport;->PINCH_EMPTY:Lcom/metamoji/df/sprite/AllInOneGesture$PinchListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 31
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->wristGuardRect:Lcom/metamoji/cm/RectEx;

    .line 102
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->scrollTranslate:Landroid/graphics/PointF;

    const/4 v0, 0x2

    .line 108
    iput v0, p0, Lcom/metamoji/df/sprite/Viewport;->numberOfTouchesPanGesture:I

    const v0, 0x3dcccccd    # 0.1f

    .line 111
    iput v0, p0, Lcom/metamoji/df/sprite/Viewport;->minZoomScale:F

    const/high16 v0, 0x41200000    # 10.0f

    .line 114
    iput v0, p0, Lcom/metamoji/df/sprite/Viewport;->maxZoomScale:F

    .line 117
    new-instance v0, Lcom/metamoji/df/sprite/Tweener;

    invoke-direct {v0}, Lcom/metamoji/df/sprite/Tweener;-><init>()V

    iput-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->tweener:Lcom/metamoji/df/sprite/Tweener;

    .line 120
    new-instance v0, Lcom/metamoji/df/sprite/DirectionalLock;

    invoke-direct {v0}, Lcom/metamoji/df/sprite/DirectionalLock;-><init>()V

    iput-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->dirLock:Lcom/metamoji/df/sprite/DirectionalLock;

    .line 123
    new-instance v0, Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->margin:Landroid/graphics/RectF;

    const/4 v0, 0x1

    .line 126
    iput-boolean v0, p0, Lcom/metamoji/df/sprite/Viewport;->useScreenShotPanPinch:Z

    .line 132
    iput-boolean v0, p0, Lcom/metamoji/df/sprite/Viewport;->enabledTurnOver:Z

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->repaintCallback:Ljava/util/ArrayList;

    .line 140
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->matrix:Landroid/graphics/Matrix;

    .line 141
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->inverseMatrix:Landroid/graphics/Matrix;

    .line 155
    new-instance v0, Lcom/metamoji/df/sprite/Viewport$1;

    invoke-direct {v0, p0}, Lcom/metamoji/df/sprite/Viewport$1;-><init>(Lcom/metamoji/df/sprite/Viewport;)V

    iput-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->_GESTURE_DRAG:Lcom/metamoji/df/sprite/AllInOneGesture$DragListener;

    .line 178
    new-instance v0, Lcom/metamoji/df/sprite/Viewport$2;

    invoke-direct {v0, p0}, Lcom/metamoji/df/sprite/Viewport$2;-><init>(Lcom/metamoji/df/sprite/Viewport;)V

    iput-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->_GESTURE_PAN:Lcom/metamoji/df/sprite/AllInOneGesture$PanListener;

    .line 331
    new-instance v0, Lcom/metamoji/df/sprite/Viewport$4;

    invoke-direct {v0, p0}, Lcom/metamoji/df/sprite/Viewport$4;-><init>(Lcom/metamoji/df/sprite/Viewport;)V

    iput-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->_GESTURE_PINCH:Lcom/metamoji/df/sprite/AllInOneGesture$PinchListener;

    .line 471
    new-instance v0, Lcom/metamoji/df/sprite/Viewport$6;

    invoke-direct {v0, p0}, Lcom/metamoji/df/sprite/Viewport$6;-><init>(Lcom/metamoji/df/sprite/Viewport;)V

    iput-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->_GESTURE_TAP:Lcom/metamoji/df/sprite/AllInOneGesture$TapListener;

    .line 478
    new-instance v0, Lcom/metamoji/df/sprite/Viewport$7;

    invoke-direct {v0, p0}, Lcom/metamoji/df/sprite/Viewport$7;-><init>(Lcom/metamoji/df/sprite/Viewport;)V

    iput-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->_GESTURE_DRAG_PAN:Lcom/metamoji/df/sprite/AllInOneGesture$DragListener;

    .line 553
    new-instance v0, Lcom/metamoji/df/sprite/Viewport$8;

    invoke-direct {v0, p0}, Lcom/metamoji/df/sprite/Viewport$8;-><init>(Lcom/metamoji/df/sprite/Viewport;)V

    iput-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->_GESTURE_HOLD:Lcom/metamoji/df/sprite/AllInOneGesture$HoldListener;

    .line 1401
    sget-object v0, Lcom/metamoji/df/sprite/TapListener;->Nil:Lcom/metamoji/df/sprite/TapListener;

    iput-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->tapListener:Lcom/metamoji/df/sprite/TapListener;

    .line 1405
    sget-object v0, Lcom/metamoji/df/sprite/TouchListener;->Nil:Lcom/metamoji/df/sprite/TouchListener;

    iput-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->touchListener:Lcom/metamoji/df/sprite/TouchListener;

    .line 1409
    sget-object v0, Lcom/metamoji/df/sprite/LongPressListener;->Nil:Lcom/metamoji/df/sprite/LongPressListener;

    iput-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->longPressListener:Lcom/metamoji/df/sprite/LongPressListener;

    .line 1413
    sget-object v0, Lcom/metamoji/df/sprite/ViewportListener;->Nil:Lcom/metamoji/df/sprite/ViewportListener;

    iput-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->viewportListener:Lcom/metamoji/df/sprite/ViewportListener;

    .line 1417
    sget-object v0, Lcom/metamoji/df/sprite/ContextClickListener2;->Nil:Lcom/metamoji/df/sprite/ContextClickListener2;

    iput-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->contextClickListener:Lcom/metamoji/df/sprite/ContextClickListener2;

    .line 1847
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->monitor:Ljava/lang/Object;

    .line 32
    invoke-direct {p0, p1}, Lcom/metamoji/df/sprite/Viewport;->setup(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 88
    iput-object p2, p0, Lcom/metamoji/df/sprite/Viewport;->wristGuardRect:Lcom/metamoji/cm/RectEx;

    .line 102
    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    iput-object p2, p0, Lcom/metamoji/df/sprite/Viewport;->scrollTranslate:Landroid/graphics/PointF;

    const/4 p2, 0x2

    .line 108
    iput p2, p0, Lcom/metamoji/df/sprite/Viewport;->numberOfTouchesPanGesture:I

    const p2, 0x3dcccccd    # 0.1f

    .line 111
    iput p2, p0, Lcom/metamoji/df/sprite/Viewport;->minZoomScale:F

    const/high16 p2, 0x41200000    # 10.0f

    .line 114
    iput p2, p0, Lcom/metamoji/df/sprite/Viewport;->maxZoomScale:F

    .line 117
    new-instance p2, Lcom/metamoji/df/sprite/Tweener;

    invoke-direct {p2}, Lcom/metamoji/df/sprite/Tweener;-><init>()V

    iput-object p2, p0, Lcom/metamoji/df/sprite/Viewport;->tweener:Lcom/metamoji/df/sprite/Tweener;

    .line 120
    new-instance p2, Lcom/metamoji/df/sprite/DirectionalLock;

    invoke-direct {p2}, Lcom/metamoji/df/sprite/DirectionalLock;-><init>()V

    iput-object p2, p0, Lcom/metamoji/df/sprite/Viewport;->dirLock:Lcom/metamoji/df/sprite/DirectionalLock;

    .line 123
    new-instance p2, Landroid/graphics/RectF;

    const/4 v0, 0x0

    invoke-direct {p2, v0, v0, v0, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p2, p0, Lcom/metamoji/df/sprite/Viewport;->margin:Landroid/graphics/RectF;

    const/4 p2, 0x1

    .line 126
    iput-boolean p2, p0, Lcom/metamoji/df/sprite/Viewport;->useScreenShotPanPinch:Z

    .line 132
    iput-boolean p2, p0, Lcom/metamoji/df/sprite/Viewport;->enabledTurnOver:Z

    .line 138
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/metamoji/df/sprite/Viewport;->repaintCallback:Ljava/util/ArrayList;

    .line 140
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/metamoji/df/sprite/Viewport;->matrix:Landroid/graphics/Matrix;

    .line 141
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/metamoji/df/sprite/Viewport;->inverseMatrix:Landroid/graphics/Matrix;

    .line 155
    new-instance p2, Lcom/metamoji/df/sprite/Viewport$1;

    invoke-direct {p2, p0}, Lcom/metamoji/df/sprite/Viewport$1;-><init>(Lcom/metamoji/df/sprite/Viewport;)V

    iput-object p2, p0, Lcom/metamoji/df/sprite/Viewport;->_GESTURE_DRAG:Lcom/metamoji/df/sprite/AllInOneGesture$DragListener;

    .line 178
    new-instance p2, Lcom/metamoji/df/sprite/Viewport$2;

    invoke-direct {p2, p0}, Lcom/metamoji/df/sprite/Viewport$2;-><init>(Lcom/metamoji/df/sprite/Viewport;)V

    iput-object p2, p0, Lcom/metamoji/df/sprite/Viewport;->_GESTURE_PAN:Lcom/metamoji/df/sprite/AllInOneGesture$PanListener;

    .line 331
    new-instance p2, Lcom/metamoji/df/sprite/Viewport$4;

    invoke-direct {p2, p0}, Lcom/metamoji/df/sprite/Viewport$4;-><init>(Lcom/metamoji/df/sprite/Viewport;)V

    iput-object p2, p0, Lcom/metamoji/df/sprite/Viewport;->_GESTURE_PINCH:Lcom/metamoji/df/sprite/AllInOneGesture$PinchListener;

    .line 471
    new-instance p2, Lcom/metamoji/df/sprite/Viewport$6;

    invoke-direct {p2, p0}, Lcom/metamoji/df/sprite/Viewport$6;-><init>(Lcom/metamoji/df/sprite/Viewport;)V

    iput-object p2, p0, Lcom/metamoji/df/sprite/Viewport;->_GESTURE_TAP:Lcom/metamoji/df/sprite/AllInOneGesture$TapListener;

    .line 478
    new-instance p2, Lcom/metamoji/df/sprite/Viewport$7;

    invoke-direct {p2, p0}, Lcom/metamoji/df/sprite/Viewport$7;-><init>(Lcom/metamoji/df/sprite/Viewport;)V

    iput-object p2, p0, Lcom/metamoji/df/sprite/Viewport;->_GESTURE_DRAG_PAN:Lcom/metamoji/df/sprite/AllInOneGesture$DragListener;

    .line 553
    new-instance p2, Lcom/metamoji/df/sprite/Viewport$8;

    invoke-direct {p2, p0}, Lcom/metamoji/df/sprite/Viewport$8;-><init>(Lcom/metamoji/df/sprite/Viewport;)V

    iput-object p2, p0, Lcom/metamoji/df/sprite/Viewport;->_GESTURE_HOLD:Lcom/metamoji/df/sprite/AllInOneGesture$HoldListener;

    .line 1401
    sget-object p2, Lcom/metamoji/df/sprite/TapListener;->Nil:Lcom/metamoji/df/sprite/TapListener;

    iput-object p2, p0, Lcom/metamoji/df/sprite/Viewport;->tapListener:Lcom/metamoji/df/sprite/TapListener;

    .line 1405
    sget-object p2, Lcom/metamoji/df/sprite/TouchListener;->Nil:Lcom/metamoji/df/sprite/TouchListener;

    iput-object p2, p0, Lcom/metamoji/df/sprite/Viewport;->touchListener:Lcom/metamoji/df/sprite/TouchListener;

    .line 1409
    sget-object p2, Lcom/metamoji/df/sprite/LongPressListener;->Nil:Lcom/metamoji/df/sprite/LongPressListener;

    iput-object p2, p0, Lcom/metamoji/df/sprite/Viewport;->longPressListener:Lcom/metamoji/df/sprite/LongPressListener;

    .line 1413
    sget-object p2, Lcom/metamoji/df/sprite/ViewportListener;->Nil:Lcom/metamoji/df/sprite/ViewportListener;

    iput-object p2, p0, Lcom/metamoji/df/sprite/Viewport;->viewportListener:Lcom/metamoji/df/sprite/ViewportListener;

    .line 1417
    sget-object p2, Lcom/metamoji/df/sprite/ContextClickListener2;->Nil:Lcom/metamoji/df/sprite/ContextClickListener2;

    iput-object p2, p0, Lcom/metamoji/df/sprite/Viewport;->contextClickListener:Lcom/metamoji/df/sprite/ContextClickListener2;

    .line 1847
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/metamoji/df/sprite/Viewport;->monitor:Ljava/lang/Object;

    .line 37
    invoke-direct {p0, p1}, Lcom/metamoji/df/sprite/Viewport;->setup(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 88
    iput-object p2, p0, Lcom/metamoji/df/sprite/Viewport;->wristGuardRect:Lcom/metamoji/cm/RectEx;

    .line 102
    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    iput-object p2, p0, Lcom/metamoji/df/sprite/Viewport;->scrollTranslate:Landroid/graphics/PointF;

    const/4 p2, 0x2

    .line 108
    iput p2, p0, Lcom/metamoji/df/sprite/Viewport;->numberOfTouchesPanGesture:I

    const p2, 0x3dcccccd    # 0.1f

    .line 111
    iput p2, p0, Lcom/metamoji/df/sprite/Viewport;->minZoomScale:F

    const/high16 p2, 0x41200000    # 10.0f

    .line 114
    iput p2, p0, Lcom/metamoji/df/sprite/Viewport;->maxZoomScale:F

    .line 117
    new-instance p2, Lcom/metamoji/df/sprite/Tweener;

    invoke-direct {p2}, Lcom/metamoji/df/sprite/Tweener;-><init>()V

    iput-object p2, p0, Lcom/metamoji/df/sprite/Viewport;->tweener:Lcom/metamoji/df/sprite/Tweener;

    .line 120
    new-instance p2, Lcom/metamoji/df/sprite/DirectionalLock;

    invoke-direct {p2}, Lcom/metamoji/df/sprite/DirectionalLock;-><init>()V

    iput-object p2, p0, Lcom/metamoji/df/sprite/Viewport;->dirLock:Lcom/metamoji/df/sprite/DirectionalLock;

    .line 123
    new-instance p2, Landroid/graphics/RectF;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p3, p3, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p2, p0, Lcom/metamoji/df/sprite/Viewport;->margin:Landroid/graphics/RectF;

    const/4 p2, 0x1

    .line 126
    iput-boolean p2, p0, Lcom/metamoji/df/sprite/Viewport;->useScreenShotPanPinch:Z

    .line 132
    iput-boolean p2, p0, Lcom/metamoji/df/sprite/Viewport;->enabledTurnOver:Z

    .line 138
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/metamoji/df/sprite/Viewport;->repaintCallback:Ljava/util/ArrayList;

    .line 140
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/metamoji/df/sprite/Viewport;->matrix:Landroid/graphics/Matrix;

    .line 141
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/metamoji/df/sprite/Viewport;->inverseMatrix:Landroid/graphics/Matrix;

    .line 155
    new-instance p2, Lcom/metamoji/df/sprite/Viewport$1;

    invoke-direct {p2, p0}, Lcom/metamoji/df/sprite/Viewport$1;-><init>(Lcom/metamoji/df/sprite/Viewport;)V

    iput-object p2, p0, Lcom/metamoji/df/sprite/Viewport;->_GESTURE_DRAG:Lcom/metamoji/df/sprite/AllInOneGesture$DragListener;

    .line 178
    new-instance p2, Lcom/metamoji/df/sprite/Viewport$2;

    invoke-direct {p2, p0}, Lcom/metamoji/df/sprite/Viewport$2;-><init>(Lcom/metamoji/df/sprite/Viewport;)V

    iput-object p2, p0, Lcom/metamoji/df/sprite/Viewport;->_GESTURE_PAN:Lcom/metamoji/df/sprite/AllInOneGesture$PanListener;

    .line 331
    new-instance p2, Lcom/metamoji/df/sprite/Viewport$4;

    invoke-direct {p2, p0}, Lcom/metamoji/df/sprite/Viewport$4;-><init>(Lcom/metamoji/df/sprite/Viewport;)V

    iput-object p2, p0, Lcom/metamoji/df/sprite/Viewport;->_GESTURE_PINCH:Lcom/metamoji/df/sprite/AllInOneGesture$PinchListener;

    .line 471
    new-instance p2, Lcom/metamoji/df/sprite/Viewport$6;

    invoke-direct {p2, p0}, Lcom/metamoji/df/sprite/Viewport$6;-><init>(Lcom/metamoji/df/sprite/Viewport;)V

    iput-object p2, p0, Lcom/metamoji/df/sprite/Viewport;->_GESTURE_TAP:Lcom/metamoji/df/sprite/AllInOneGesture$TapListener;

    .line 478
    new-instance p2, Lcom/metamoji/df/sprite/Viewport$7;

    invoke-direct {p2, p0}, Lcom/metamoji/df/sprite/Viewport$7;-><init>(Lcom/metamoji/df/sprite/Viewport;)V

    iput-object p2, p0, Lcom/metamoji/df/sprite/Viewport;->_GESTURE_DRAG_PAN:Lcom/metamoji/df/sprite/AllInOneGesture$DragListener;

    .line 553
    new-instance p2, Lcom/metamoji/df/sprite/Viewport$8;

    invoke-direct {p2, p0}, Lcom/metamoji/df/sprite/Viewport$8;-><init>(Lcom/metamoji/df/sprite/Viewport;)V

    iput-object p2, p0, Lcom/metamoji/df/sprite/Viewport;->_GESTURE_HOLD:Lcom/metamoji/df/sprite/AllInOneGesture$HoldListener;

    .line 1401
    sget-object p2, Lcom/metamoji/df/sprite/TapListener;->Nil:Lcom/metamoji/df/sprite/TapListener;

    iput-object p2, p0, Lcom/metamoji/df/sprite/Viewport;->tapListener:Lcom/metamoji/df/sprite/TapListener;

    .line 1405
    sget-object p2, Lcom/metamoji/df/sprite/TouchListener;->Nil:Lcom/metamoji/df/sprite/TouchListener;

    iput-object p2, p0, Lcom/metamoji/df/sprite/Viewport;->touchListener:Lcom/metamoji/df/sprite/TouchListener;

    .line 1409
    sget-object p2, Lcom/metamoji/df/sprite/LongPressListener;->Nil:Lcom/metamoji/df/sprite/LongPressListener;

    iput-object p2, p0, Lcom/metamoji/df/sprite/Viewport;->longPressListener:Lcom/metamoji/df/sprite/LongPressListener;

    .line 1413
    sget-object p2, Lcom/metamoji/df/sprite/ViewportListener;->Nil:Lcom/metamoji/df/sprite/ViewportListener;

    iput-object p2, p0, Lcom/metamoji/df/sprite/Viewport;->viewportListener:Lcom/metamoji/df/sprite/ViewportListener;

    .line 1417
    sget-object p2, Lcom/metamoji/df/sprite/ContextClickListener2;->Nil:Lcom/metamoji/df/sprite/ContextClickListener2;

    iput-object p2, p0, Lcom/metamoji/df/sprite/Viewport;->contextClickListener:Lcom/metamoji/df/sprite/ContextClickListener2;

    .line 1847
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/metamoji/df/sprite/Viewport;->monitor:Ljava/lang/Object;

    .line 43
    invoke-direct {p0, p1}, Lcom/metamoji/df/sprite/Viewport;->setup(Landroid/content/Context;)V

    return-void
.end method

.method private IS_DETAIL()Z
    .locals 1

    .line 147
    iget v0, p0, Lcom/metamoji/df/sprite/Viewport;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private IS_ENABLED_INVERSE_MATRIX()Z
    .locals 1

    .line 151
    iget v0, p0, Lcom/metamoji/df/sprite/Viewport;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private IS_ENABLED_MATRIX()Z
    .locals 1

    .line 149
    iget v0, p0, Lcom/metamoji/df/sprite/Viewport;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private SET_DETAIL(Z)I
    .locals 1

    .line 148
    iget v0, p0, Lcom/metamoji/df/sprite/Viewport;->flags:I

    if-eqz p1, :cond_0

    or-int/lit8 p1, v0, 0x8

    :goto_0
    iput p1, p0, Lcom/metamoji/df/sprite/Viewport;->flags:I

    return p1

    :cond_0
    and-int/lit8 p1, v0, -0x9

    goto :goto_0
.end method

.method private SET_ENABLED_INVERSE_MATRIX(Z)I
    .locals 1

    .line 152
    iget v0, p0, Lcom/metamoji/df/sprite/Viewport;->flags:I

    if-eqz p1, :cond_0

    or-int/lit8 p1, v0, 0x20

    :goto_0
    iput p1, p0, Lcom/metamoji/df/sprite/Viewport;->flags:I

    return p1

    :cond_0
    and-int/lit8 p1, v0, -0x21

    goto :goto_0
.end method

.method private SET_ENABLED_MATRIX(Z)I
    .locals 1

    .line 150
    iget v0, p0, Lcom/metamoji/df/sprite/Viewport;->flags:I

    if-eqz p1, :cond_0

    or-int/lit8 p1, v0, 0x10

    :goto_0
    iput p1, p0, Lcom/metamoji/df/sprite/Viewport;->flags:I

    return p1

    :cond_0
    and-int/lit8 p1, v0, -0x11

    goto :goto_0
.end method

.method private addLayer(Lcom/metamoji/df/sprite/Layer;)V
    .locals 2

    .line 601
    invoke-virtual {p1, p0}, Lcom/metamoji/df/sprite/Layer;->setViewport(Lcom/metamoji/df/sprite/Viewport;)V

    .line 602
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Viewport;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 604
    new-instance v1, Lcom/metamoji/df/sprite/Viewport$9;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/df/sprite/Viewport$9;-><init>(Lcom/metamoji/df/sprite/Viewport;Lcom/metamoji/df/sprite/Layer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 613
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Layer;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 615
    invoke-virtual {p0, p1}, Lcom/metamoji/df/sprite/Viewport;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private buildViewportMatrix(Landroid/graphics/Matrix;)V
    .locals 2

    .line 1587
    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    .line 1588
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->scrollTranslate:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/metamoji/df/sprite/Viewport;->scrollTranslate:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method private clearGlimpse()V
    .locals 2

    .line 1391
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->glimpse:Lcom/metamoji/df/sprite/Glimpse;

    if-eqz v0, :cond_1

    .line 1392
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->mainLayer:Lcom/metamoji/df/sprite/Layer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1393
    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Layer;->setOverRenderer(Lcom/metamoji/df/sprite/Renderer;)V

    .line 1395
    :cond_0
    iput-object v1, p0, Lcom/metamoji/df/sprite/Viewport;->glimpse:Lcom/metamoji/df/sprite/Glimpse;

    :cond_1
    return-void
.end method

.method private clearViewportMatrix()V
    .locals 1

    .line 1621
    monitor-enter p0

    const/4 v0, 0x0

    .line 1622
    :try_start_0
    invoke-direct {p0, v0}, Lcom/metamoji/df/sprite/Viewport;->SET_ENABLED_MATRIX(Z)I

    .line 1623
    invoke-direct {p0, v0}, Lcom/metamoji/df/sprite/Viewport;->SET_ENABLED_INVERSE_MATRIX(Z)I

    .line 1624
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private decelerate(Landroid/graphics/PointF;)Z
    .locals 8

    .line 1290
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->mainLayer:Lcom/metamoji/df/sprite/Layer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1293
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Layer;->getSize()Landroid/graphics/Point;

    move-result-object v0

    .line 1294
    iget v2, v0, Landroid/graphics/Point;->x:I

    .line 1295
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 1297
    iget-object v3, p0, Lcom/metamoji/df/sprite/Viewport;->mainLayer:Lcom/metamoji/df/sprite/Layer;

    invoke-virtual {v3}, Lcom/metamoji/df/sprite/Layer;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v3

    if-nez v3, :cond_1

    return v1

    .line 1301
    :cond_1
    invoke-virtual {v3}, Lcom/metamoji/df/sprite/Stage;->getWidth()F

    move-result v1

    .line 1302
    invoke-virtual {v3}, Lcom/metamoji/df/sprite/Stage;->getHeight()F

    move-result v3

    .line 1304
    iget-object v4, p0, Lcom/metamoji/df/sprite/Viewport;->scrollTranslate:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    .line 1305
    iget-object v5, p0, Lcom/metamoji/df/sprite/Viewport;->scrollTranslate:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    .line 1306
    iget v6, p1, Landroid/graphics/PointF;->x:F

    const/high16 v7, 0x43480000    # 200.0f

    mul-float/2addr v6, v7

    add-float/2addr v4, v6

    .line 1307
    iget p1, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr p1, v7

    add-float/2addr v5, p1

    .line 1309
    iget-object p1, p0, Lcom/metamoji/df/sprite/Viewport;->margin:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->left:F

    cmpg-float p1, p1, v4

    .line 1311
    iget-object v6, p0, Lcom/metamoji/df/sprite/Viewport;->margin:Landroid/graphics/RectF;

    if-gez p1, :cond_2

    .line 1310
    iget v4, v6, Landroid/graphics/RectF;->left:F

    goto :goto_0

    :cond_2
    add-float p1, v4, v1

    int-to-float v2, v2

    .line 1311
    iget v6, v6, Landroid/graphics/RectF;->right:F

    sub-float v6, v2, v6

    cmpg-float p1, p1, v6

    if-gez p1, :cond_3

    .line 1312
    iget-object p1, p0, Lcom/metamoji/df/sprite/Viewport;->margin:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, p1

    sub-float v4, v2, v1

    .line 1314
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/metamoji/df/sprite/Viewport;->margin:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->top:F

    cmpg-float p1, p1, v5

    .line 1316
    iget-object v1, p0, Lcom/metamoji/df/sprite/Viewport;->margin:Landroid/graphics/RectF;

    if-gez p1, :cond_4

    .line 1315
    iget v5, v1, Landroid/graphics/RectF;->top:F

    goto :goto_1

    :cond_4
    add-float p1, v5, v3

    int-to-float v0, v0

    .line 1316
    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float v1, v0, v1

    cmpg-float p1, p1, v1

    if-gez p1, :cond_5

    .line 1317
    iget-object p1, p0, Lcom/metamoji/df/sprite/Viewport;->margin:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, p1

    sub-float v5, v0, v3

    .line 1319
    :cond_5
    :goto_1
    invoke-direct {p0, v4, v5}, Lcom/metamoji/df/sprite/Viewport;->scrollToAnimated(FF)Z

    move-result p1

    return p1
.end method

.method private getMinMaxScrollTranslate(Landroid/graphics/RectF;)V
    .locals 8

    .line 853
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->mainLayer:Lcom/metamoji/df/sprite/Layer;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Layer;->getSize()Landroid/graphics/Point;

    move-result-object v0

    .line 854
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 855
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 857
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Viewport;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v2

    .line 858
    invoke-virtual {v2}, Lcom/metamoji/df/sprite/Stage;->getZoom()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/metamoji/df/sprite/Stage;->zoomedSize(F)Landroid/graphics/PointF;

    move-result-object v2

    .line 859
    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/metamoji/df/sprite/Viewport;->margin:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/metamoji/df/sprite/Viewport;->margin:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v4

    .line 860
    iget v4, v2, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lcom/metamoji/df/sprite/Viewport;->margin:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/metamoji/df/sprite/Viewport;->margin:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, v5

    int-to-float v1, v1

    cmpg-float v5, v3, v1

    .line 865
    iget-object v6, p0, Lcom/metamoji/df/sprite/Viewport;->margin:Landroid/graphics/RectF;

    const/high16 v7, 0x40000000    # 2.0f

    if-gez v5, :cond_0

    sub-float/2addr v1, v3

    div-float/2addr v1, v7

    .line 863
    iget v3, v6, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v3

    iput v1, p1, Landroid/graphics/RectF;->left:F

    iput v1, p1, Landroid/graphics/RectF;->right:F

    goto :goto_0

    .line 865
    :cond_0
    iget v3, v6, Landroid/graphics/RectF;->left:F

    iput v3, p1, Landroid/graphics/RectF;->left:F

    .line 866
    iget-object v3, p0, Lcom/metamoji/df/sprite/Viewport;->margin:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget v5, v2, Landroid/graphics/PointF;->x:F

    add-float/2addr v3, v5

    sub-float/2addr v1, v3

    iput v1, p1, Landroid/graphics/RectF;->right:F

    :goto_0
    int-to-float v0, v0

    cmpg-float v1, v4, v0

    .line 871
    iget-object v3, p0, Lcom/metamoji/df/sprite/Viewport;->margin:Landroid/graphics/RectF;

    if-gez v1, :cond_1

    sub-float/2addr v0, v4

    div-float/2addr v0, v7

    .line 869
    iget v1, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->top:F

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    return-void

    .line 871
    :cond_1
    iget v1, v3, Landroid/graphics/RectF;->top:F

    iput v1, p1, Landroid/graphics/RectF;->top:F

    .line 872
    iget-object v1, p0, Lcom/metamoji/df/sprite/Viewport;->margin:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method private insertLayer(ILcom/metamoji/df/sprite/Layer;)V
    .locals 2

    .line 627
    invoke-virtual {p2, p0}, Lcom/metamoji/df/sprite/Layer;->setViewport(Lcom/metamoji/df/sprite/Viewport;)V

    .line 628
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Viewport;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 630
    new-instance v1, Lcom/metamoji/df/sprite/Viewport$10;

    invoke-direct {v1, p0, p2, p1}, Lcom/metamoji/df/sprite/Viewport$10;-><init>(Lcom/metamoji/df/sprite/Viewport;Lcom/metamoji/df/sprite/Layer;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 639
    :cond_0
    invoke-virtual {p2}, Lcom/metamoji/df/sprite/Layer;->getView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 641
    invoke-virtual {p0, p2, p1}, Lcom/metamoji/df/sprite/Viewport;->addView(Landroid/view/View;I)V

    :cond_1
    return-void
.end method

.method private loosened(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Z
    .locals 9

    .line 1246
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->mainLayer:Lcom/metamoji/df/sprite/Layer;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Layer;->getSize()Landroid/graphics/Point;

    move-result-object v0

    .line 1247
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 1248
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 1251
    iget v2, p3, Landroid/graphics/PointF;->x:F

    .line 1252
    iget v3, p3, Landroid/graphics/PointF;->y:F

    .line 1255
    iget v4, p2, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/metamoji/df/sprite/Viewport;->margin:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/metamoji/df/sprite/Viewport;->margin:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v5

    .line 1256
    iget v5, p2, Landroid/graphics/PointF;->y:F

    iget-object v6, p0, Lcom/metamoji/df/sprite/Viewport;->margin:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/metamoji/df/sprite/Viewport;->margin:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v5, v6

    int-to-float v1, v1

    cmpg-float v6, v4, v1

    .line 1261
    iget-object v7, p0, Lcom/metamoji/df/sprite/Viewport;->margin:Landroid/graphics/RectF;

    const/high16 v8, 0x40000000    # 2.0f

    if-gez v6, :cond_0

    sub-float/2addr v1, v4

    div-float/2addr v1, v8

    .line 1259
    iget v2, v7, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v1

    goto :goto_0

    .line 1261
    :cond_0
    iget v4, v7, Landroid/graphics/RectF;->left:F

    cmpg-float v4, v4, v2

    .line 1263
    iget-object v6, p0, Lcom/metamoji/df/sprite/Viewport;->margin:Landroid/graphics/RectF;

    if-gez v4, :cond_1

    .line 1262
    iget v2, v6, Landroid/graphics/RectF;->left:F

    goto :goto_0

    .line 1263
    :cond_1
    iget v4, v6, Landroid/graphics/RectF;->right:F

    iget v6, p2, Landroid/graphics/PointF;->x:F

    add-float/2addr v4, v6

    sub-float v4, v1, v4

    cmpg-float v4, v2, v4

    if-gez v4, :cond_2

    .line 1264
    iget-object v2, p0, Lcom/metamoji/df/sprite/Viewport;->margin:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget v4, p2, Landroid/graphics/PointF;->x:F

    add-float/2addr v2, v4

    sub-float v2, v1, v2

    :cond_2
    :goto_0
    int-to-float v0, v0

    cmpg-float v1, v5, v0

    .line 1271
    iget-object v4, p0, Lcom/metamoji/df/sprite/Viewport;->margin:Landroid/graphics/RectF;

    if-gez v1, :cond_3

    sub-float/2addr v0, v5

    div-float/2addr v0, v8

    .line 1269
    iget p2, v4, Landroid/graphics/RectF;->left:F

    add-float v3, v0, p2

    goto :goto_1

    .line 1271
    :cond_3
    iget v1, v4, Landroid/graphics/RectF;->top:F

    cmpg-float v1, v1, v3

    .line 1273
    iget-object v4, p0, Lcom/metamoji/df/sprite/Viewport;->margin:Landroid/graphics/RectF;

    if-gez v1, :cond_4

    .line 1272
    iget v3, v4, Landroid/graphics/RectF;->top:F

    goto :goto_1

    .line 1273
    :cond_4
    iget v1, v4, Landroid/graphics/RectF;->bottom:F

    iget v4, p2, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, v4

    sub-float v1, v0, v1

    cmpg-float v1, v3, v1

    if-gez v1, :cond_5

    .line 1274
    iget-object v1, p0, Lcom/metamoji/df/sprite/Viewport;->margin:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, p2

    sub-float v3, v0, v1

    .line 1277
    :cond_5
    :goto_1
    iget p2, p3, Landroid/graphics/PointF;->x:F

    cmpl-float p2, v2, p2

    if-nez p2, :cond_7

    iget p2, p3, Landroid/graphics/PointF;->y:F

    cmpl-float p2, v3, p2

    if-eqz p2, :cond_6

    goto :goto_2

    :cond_6
    const/4 p1, 0x0

    return p1

    .line 1278
    :cond_7
    :goto_2
    invoke-virtual {p1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    const/4 p1, 0x1

    return p1
.end method

.method private monitorLoop()V
    .locals 4

    .line 1875
    :goto_0
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->monitorThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 1876
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Viewport;->updateFromMonitor()V

    .line 1878
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->monitor:Ljava/lang/Object;

    monitor-enter v0

    .line 1880
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/df/sprite/Viewport;->monitor:Ljava/lang/Object;

    const-wide/16 v2, 0x21

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 1882
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1884
    :goto_1
    monitor-exit v0

    goto :goto_0

    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_0
    return-void
.end method

.method private onEndOfPanScrollRebound(Z)V
    .locals 1

    .line 1193
    new-instance v0, Lcom/metamoji/df/sprite/Viewport$25;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/df/sprite/Viewport$25;-><init>(Lcom/metamoji/df/sprite/Viewport;Z)V

    invoke-virtual {p0, v0}, Lcom/metamoji/df/sprite/Viewport;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onEndOfPinchZoomRebound(Z)V
    .locals 1

    .line 1176
    new-instance v0, Lcom/metamoji/df/sprite/Viewport$24;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/df/sprite/Viewport$24;-><init>(Lcom/metamoji/df/sprite/Viewport;Z)V

    invoke-virtual {p0, v0}, Lcom/metamoji/df/sprite/Viewport;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onEndOfScrollAnimation(Z)V
    .locals 1

    .line 1359
    new-instance v0, Lcom/metamoji/df/sprite/Viewport$29;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/df/sprite/Viewport$29;-><init>(Lcom/metamoji/df/sprite/Viewport;Z)V

    invoke-virtual {p0, v0}, Lcom/metamoji/df/sprite/Viewport;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onEndOfTurnAnimation(Lcom/metamoji/df/sprite/Glimpse$Required;)V
    .locals 1

    .line 1376
    new-instance v0, Lcom/metamoji/df/sprite/Viewport$30;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/df/sprite/Viewport$30;-><init>(Lcom/metamoji/df/sprite/Viewport;Lcom/metamoji/df/sprite/Glimpse$Required;)V

    invoke-virtual {p0, v0}, Lcom/metamoji/df/sprite/Viewport;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private panScrollRebound()Z
    .locals 7

    .line 1141
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Viewport;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1145
    :cond_0
    new-instance v2, Lcom/metamoji/df/sprite/Viewport$21;

    const-wide/16 v3, 0xc8

    invoke-direct {v2, p0, v3, v4}, Lcom/metamoji/df/sprite/Viewport$21;-><init>(Lcom/metamoji/df/sprite/Viewport;J)V

    .line 1151
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    .line 1152
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Stage;->getZoom()F

    move-result v4

    invoke-virtual {v0, v4}, Lcom/metamoji/df/sprite/Stage;->zoomedSize(F)Landroid/graphics/PointF;

    move-result-object v0

    iget-object v4, p0, Lcom/metamoji/df/sprite/Viewport;->scrollTranslate:Landroid/graphics/PointF;

    invoke-direct {p0, v3, v0, v4}, Lcom/metamoji/df/sprite/Viewport;->loosened(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1153
    new-instance v0, Lcom/metamoji/df/sprite/Viewport$22;

    iget-object v4, p0, Lcom/metamoji/df/sprite/Viewport;->scrollTranslate:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget v5, v3, Landroid/graphics/PointF;->x:F

    sget-object v6, Lcom/metamoji/df/sprite/Equations;->easeOutQuad:Lcom/metamoji/df/sprite/Equations;

    invoke-direct {v0, p0, v4, v5, v6}, Lcom/metamoji/df/sprite/Viewport$22;-><init>(Lcom/metamoji/df/sprite/Viewport;FFLcom/metamoji/df/sprite/Equations;)V

    invoke-virtual {v2, v0}, Lcom/metamoji/df/sprite/Tweener$Tween;->add(Lcom/metamoji/df/sprite/Tweener$Prop;)V

    .line 1160
    new-instance v0, Lcom/metamoji/df/sprite/Viewport$23;

    iget-object v4, p0, Lcom/metamoji/df/sprite/Viewport;->scrollTranslate:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sget-object v5, Lcom/metamoji/df/sprite/Equations;->easeOutQuad:Lcom/metamoji/df/sprite/Equations;

    invoke-direct {v0, p0, v4, v3, v5}, Lcom/metamoji/df/sprite/Viewport$23;-><init>(Lcom/metamoji/df/sprite/Viewport;FFLcom/metamoji/df/sprite/Equations;)V

    invoke-virtual {v2, v0}, Lcom/metamoji/df/sprite/Tweener$Tween;->add(Lcom/metamoji/df/sprite/Tweener$Prop;)V

    .line 1168
    :cond_1
    invoke-virtual {v2}, Lcom/metamoji/df/sprite/Tweener$Tween;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1169
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->tweener:Lcom/metamoji/df/sprite/Tweener;

    invoke-virtual {v0, v2}, Lcom/metamoji/df/sprite/Tweener;->add(Lcom/metamoji/df/sprite/Tweener$Tween;)V

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method private pinchZoomRebound(Landroid/graphics/PointF;)Z
    .locals 14

    .line 1072
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Viewport;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v5

    const/4 v6, 0x0

    if-nez v5, :cond_0

    return v6

    .line 1076
    :cond_0
    invoke-virtual {v5}, Lcom/metamoji/df/sprite/Stage;->getZoom()F

    move-result v2

    .line 1079
    iget v0, p0, Lcom/metamoji/df/sprite/Viewport;->minZoomScale:F

    cmpg-float v1, v2, v0

    if-gez v1, :cond_1

    :goto_0
    move v3, v0

    goto :goto_1

    .line 1081
    :cond_1
    iget v0, p0, Lcom/metamoji/df/sprite/Viewport;->maxZoomScale:F

    cmpg-float v1, v0, v2

    if-gez v1, :cond_2

    goto :goto_0

    :cond_2
    move v3, v2

    .line 1084
    :goto_1
    new-instance v13, Lcom/metamoji/df/sprite/Viewport$16;

    const-wide/16 v0, 0xc8

    invoke-direct {v13, p0, v0, v1}, Lcom/metamoji/df/sprite/Viewport$16;-><init>(Lcom/metamoji/df/sprite/Viewport;J)V

    div-float v0, v3, v2

    .line 1090
    iget-object v1, p0, Lcom/metamoji/df/sprite/Viewport;->scrollTranslate:Landroid/graphics/PointF;

    invoke-static {p1, v0, v1}, Lcom/metamoji/df/sprite/Viewport;->translatePosition(Landroid/graphics/PointF;FLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    .line 1092
    invoke-virtual {v5, v3}, Lcom/metamoji/df/sprite/Stage;->zoomedSize(F)Landroid/graphics/PointF;

    move-result-object v1

    .line 1094
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4}, Landroid/graphics/PointF;-><init>()V

    .line 1095
    invoke-direct {p0, v4, v1, v0}, Lcom/metamoji/df/sprite/Viewport;->loosened(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1097
    new-instance p1, Lcom/metamoji/df/sprite/Viewport$17;

    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->scrollTranslate:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget v1, v4, Landroid/graphics/PointF;->x:F

    sget-object v7, Lcom/metamoji/df/sprite/Equations;->easeOutQuad:Lcom/metamoji/df/sprite/Equations;

    invoke-direct {p1, p0, v0, v1, v7}, Lcom/metamoji/df/sprite/Viewport$17;-><init>(Lcom/metamoji/df/sprite/Viewport;FFLcom/metamoji/df/sprite/Equations;)V

    invoke-virtual {v13, p1}, Lcom/metamoji/df/sprite/Tweener$Tween;->add(Lcom/metamoji/df/sprite/Tweener$Prop;)V

    .line 1104
    new-instance p1, Lcom/metamoji/df/sprite/Viewport$18;

    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->scrollTranslate:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v1, v4, Landroid/graphics/PointF;->y:F

    sget-object v4, Lcom/metamoji/df/sprite/Equations;->easeOutQuad:Lcom/metamoji/df/sprite/Equations;

    invoke-direct {p1, p0, v0, v1, v4}, Lcom/metamoji/df/sprite/Viewport$18;-><init>(Lcom/metamoji/df/sprite/Viewport;FFLcom/metamoji/df/sprite/Equations;)V

    invoke-virtual {v13, p1}, Lcom/metamoji/df/sprite/Tweener$Tween;->add(Lcom/metamoji/df/sprite/Tweener$Prop;)V

    cmpl-float p1, v3, v2

    if-eqz p1, :cond_3

    .line 1112
    new-instance v0, Lcom/metamoji/df/sprite/Viewport$19;

    sget-object v4, Lcom/metamoji/df/sprite/Equations;->easeOutQuad:Lcom/metamoji/df/sprite/Equations;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/df/sprite/Viewport$19;-><init>(Lcom/metamoji/df/sprite/Viewport;FFLcom/metamoji/df/sprite/Equations;Lcom/metamoji/df/sprite/Stage;)V

    invoke-virtual {v13, v0}, Lcom/metamoji/df/sprite/Tweener$Tween;->add(Lcom/metamoji/df/sprite/Tweener$Prop;)V

    goto :goto_2

    :cond_3
    move-object v1, p0

    goto :goto_2

    :cond_4
    move-object v1, p0

    cmpl-float v0, v3, v2

    if-eqz v0, :cond_5

    .line 1121
    new-instance v12, Lcom/metamoji/df/sprite/Viewport$Target;

    invoke-direct {v12, p0, v5, p1}, Lcom/metamoji/df/sprite/Viewport$Target;-><init>(Lcom/metamoji/df/sprite/Viewport;Lcom/metamoji/df/sprite/Stage;Landroid/graphics/PointF;)V

    .line 1122
    new-instance v7, Lcom/metamoji/df/sprite/Viewport$20;

    sget-object v11, Lcom/metamoji/df/sprite/Equations;->easeOutQuad:Lcom/metamoji/df/sprite/Equations;

    move-object v8, v1

    move v9, v2

    move v10, v3

    invoke-direct/range {v7 .. v12}, Lcom/metamoji/df/sprite/Viewport$20;-><init>(Lcom/metamoji/df/sprite/Viewport;FFLcom/metamoji/df/sprite/Equations;Lcom/metamoji/df/sprite/Viewport$Target;)V

    invoke-virtual {v13, v7}, Lcom/metamoji/df/sprite/Tweener$Tween;->add(Lcom/metamoji/df/sprite/Tweener$Prop;)V

    .line 1129
    :cond_5
    :goto_2
    invoke-virtual {v13}, Lcom/metamoji/df/sprite/Tweener$Tween;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    .line 1130
    iget-object p1, v1, Lcom/metamoji/df/sprite/Viewport;->tweener:Lcom/metamoji/df/sprite/Tweener;

    invoke-virtual {p1, v13}, Lcom/metamoji/df/sprite/Tweener;->add(Lcom/metamoji/df/sprite/Tweener$Tween;)V

    const/4 p1, 0x1

    return p1

    :cond_6
    return v6
.end method

.method private removeLayer(Lcom/metamoji/df/sprite/Layer;)V
    .locals 2

    const/4 v0, 0x0

    .line 652
    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Layer;->setViewport(Lcom/metamoji/df/sprite/Viewport;)V

    .line 653
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Viewport;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 655
    new-instance v1, Lcom/metamoji/df/sprite/Viewport$11;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/df/sprite/Viewport$11;-><init>(Lcom/metamoji/df/sprite/Viewport;Lcom/metamoji/df/sprite/Layer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 664
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Layer;->getViewNoCreate()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 666
    invoke-virtual {p0, p1}, Lcom/metamoji/df/sprite/Viewport;->removeView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private scrollToAnimated(FF)Z
    .locals 4

    .line 1328
    new-instance v0, Lcom/metamoji/df/sprite/Viewport$26;

    const-wide/16 v1, 0xc8

    invoke-direct {v0, p0, v1, v2}, Lcom/metamoji/df/sprite/Viewport$26;-><init>(Lcom/metamoji/df/sprite/Viewport;J)V

    .line 1333
    iget-object v1, p0, Lcom/metamoji/df/sprite/Viewport;->scrollTranslate:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    .line 1334
    new-instance v1, Lcom/metamoji/df/sprite/Viewport$27;

    iget-object v2, p0, Lcom/metamoji/df/sprite/Viewport;->scrollTranslate:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sget-object v3, Lcom/metamoji/df/sprite/Equations;->easeOutQuad:Lcom/metamoji/df/sprite/Equations;

    invoke-direct {v1, p0, v2, p1, v3}, Lcom/metamoji/df/sprite/Viewport$27;-><init>(Lcom/metamoji/df/sprite/Viewport;FFLcom/metamoji/df/sprite/Equations;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Tweener$Tween;->add(Lcom/metamoji/df/sprite/Tweener$Prop;)V

    .line 1342
    :cond_0
    iget-object p1, p0, Lcom/metamoji/df/sprite/Viewport;->scrollTranslate:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_1

    .line 1343
    new-instance p1, Lcom/metamoji/df/sprite/Viewport$28;

    iget-object v1, p0, Lcom/metamoji/df/sprite/Viewport;->scrollTranslate:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sget-object v2, Lcom/metamoji/df/sprite/Equations;->easeOutQuad:Lcom/metamoji/df/sprite/Equations;

    invoke-direct {p1, p0, v1, p2, v2}, Lcom/metamoji/df/sprite/Viewport$28;-><init>(Lcom/metamoji/df/sprite/Viewport;FFLcom/metamoji/df/sprite/Equations;)V

    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/Tweener$Tween;->add(Lcom/metamoji/df/sprite/Tweener$Prop;)V

    .line 1351
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Tweener$Tween;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1352
    iget-object p1, p0, Lcom/metamoji/df/sprite/Viewport;->tweener:Lcom/metamoji/df/sprite/Tweener;

    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Tweener;->add(Lcom/metamoji/df/sprite/Tweener$Tween;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private setOverLayer(Lcom/metamoji/df/sprite/Layer;)V
    .locals 1

    .line 975
    iput-object p1, p0, Lcom/metamoji/df/sprite/Viewport;->overlay:Lcom/metamoji/df/sprite/Layer;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 977
    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Layer;->setOverlay(Z)V

    .line 978
    iget-object p1, p0, Lcom/metamoji/df/sprite/Viewport;->overlay:Lcom/metamoji/df/sprite/Layer;

    invoke-direct {p0}, Lcom/metamoji/df/sprite/Viewport;->IS_DETAIL()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Layer;->setDetail(Z)V

    .line 979
    iget-object p1, p0, Lcom/metamoji/df/sprite/Viewport;->overlay:Lcom/metamoji/df/sprite/Layer;

    invoke-direct {p0, p1}, Lcom/metamoji/df/sprite/Viewport;->addLayer(Lcom/metamoji/df/sprite/Layer;)V

    .line 981
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Viewport;->startMonitor()V

    :cond_0
    return-void
.end method

.method private setup(Landroid/content/Context;)V
    .locals 1

    .line 580
    sget p1, Lcom/metamoji/df/sprite/Viewport;->vid:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    sput p1, Lcom/metamoji/df/sprite/Viewport;->vid:I

    .line 581
    invoke-virtual {p0, v0}, Lcom/metamoji/df/sprite/Viewport;->setFocusable(Z)V

    .line 582
    invoke-virtual {p0, v0}, Lcom/metamoji/df/sprite/Viewport;->setFocusableInTouchMode(Z)V

    const/4 p1, 0x0

    .line 583
    invoke-virtual {p0, p1}, Lcom/metamoji/df/sprite/Viewport;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    const/4 p1, 0x0

    .line 584
    invoke-virtual {p0, p1}, Lcom/metamoji/df/sprite/Viewport;->setDefaultFocusHighlightEnabled(Z)V

    .line 587
    new-instance p1, Lcom/metamoji/df/sprite/AllInOneGesture;

    invoke-direct {p1, p0}, Lcom/metamoji/df/sprite/AllInOneGesture;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/metamoji/df/sprite/Viewport;->gesture:Lcom/metamoji/df/sprite/AllInOneGesture;

    .line 588
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->_GESTURE_TAP:Lcom/metamoji/df/sprite/AllInOneGesture$TapListener;

    iput-object v0, p1, Lcom/metamoji/df/sprite/AllInOneGesture;->tapListener:Lcom/metamoji/df/sprite/AllInOneGesture$TapListener;

    .line 589
    iget-object p1, p0, Lcom/metamoji/df/sprite/Viewport;->gesture:Lcom/metamoji/df/sprite/AllInOneGesture;

    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->_GESTURE_DRAG_PAN:Lcom/metamoji/df/sprite/AllInOneGesture$DragListener;

    iput-object v0, p1, Lcom/metamoji/df/sprite/AllInOneGesture;->dragListener:Lcom/metamoji/df/sprite/AllInOneGesture$DragListener;

    .line 590
    iget-object p1, p0, Lcom/metamoji/df/sprite/Viewport;->gesture:Lcom/metamoji/df/sprite/AllInOneGesture;

    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->_GESTURE_HOLD:Lcom/metamoji/df/sprite/AllInOneGesture$HoldListener;

    iput-object v0, p1, Lcom/metamoji/df/sprite/AllInOneGesture;->holdListener:Lcom/metamoji/df/sprite/AllInOneGesture$HoldListener;

    .line 591
    iget-object p1, p0, Lcom/metamoji/df/sprite/Viewport;->gesture:Lcom/metamoji/df/sprite/AllInOneGesture;

    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->_GESTURE_PAN:Lcom/metamoji/df/sprite/AllInOneGesture$PanListener;

    iput-object v0, p1, Lcom/metamoji/df/sprite/AllInOneGesture;->panListener:Lcom/metamoji/df/sprite/AllInOneGesture$PanListener;

    .line 592
    iget-object p1, p0, Lcom/metamoji/df/sprite/Viewport;->gesture:Lcom/metamoji/df/sprite/AllInOneGesture;

    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->_GESTURE_PINCH:Lcom/metamoji/df/sprite/AllInOneGesture$PinchListener;

    iput-object v0, p1, Lcom/metamoji/df/sprite/AllInOneGesture;->pinchListener:Lcom/metamoji/df/sprite/AllInOneGesture$PinchListener;

    return-void
.end method

.method private startLoop()V
    .locals 3

    .line 1709
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->loop:Lcom/metamoji/df/sprite/Viewport$TickRunnable;

    if-nez v0, :cond_0

    .line 1710
    new-instance v0, Lcom/metamoji/df/sprite/Viewport$TickRunnable;

    invoke-direct {v0, p0}, Lcom/metamoji/df/sprite/Viewport$TickRunnable;-><init>(Lcom/metamoji/df/sprite/Viewport;)V

    .line 1711
    new-instance v1, Ljava/lang/Thread;

    const-string v2, "ViewportLoop"

    invoke-static {v2}, Lcom/metamoji/df/sprite/Viewport;->tname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1712
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1713
    iput-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->loop:Lcom/metamoji/df/sprite/Viewport$TickRunnable;

    :cond_0
    return-void
.end method

.method private startMonitor()V
    .locals 3

    .line 1862
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->monitorThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 1863
    new-instance v0, Lcom/metamoji/df/sprite/Viewport$MonitorJob;

    invoke-direct {v0, p0}, Lcom/metamoji/df/sprite/Viewport$MonitorJob;-><init>(Lcom/metamoji/df/sprite/Viewport;)V

    .line 1864
    new-instance v1, Ljava/lang/Thread;

    const-string v2, "monitorThread"

    invoke-static {v2}, Lcom/metamoji/df/sprite/Viewport;->tname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/metamoji/df/sprite/Viewport;->monitorThread:Ljava/lang/Thread;

    .line 1865
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method private tick()V
    .locals 1

    .line 1721
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->mainLayer:Lcom/metamoji/df/sprite/Layer;

    if-eqz v0, :cond_0

    .line 1722
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Layer;->tick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1723
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Viewport;->fireRepaintCallback()V

    .line 1726
    :cond_0
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->tweener:Lcom/metamoji/df/sprite/Tweener;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Tweener;->step()V

    return-void
.end method

.method private static tname(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1704
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget v0, Lcom/metamoji/df/sprite/Viewport;->vid:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static translatePosition(Landroid/graphics/PointF;FLandroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0

    .line 1063
    invoke-static {p0, p2}, Lcom/metamoji/df/sprite/Geometry;->minus(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/metamoji/df/sprite/Geometry;->mul(Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/metamoji/df/sprite/Geometry;->minus(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method private turnOverPage()Lcom/metamoji/df/sprite/Glimpse$Required;
    .locals 6

    .line 1007
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->glimpse:Lcom/metamoji/df/sprite/Glimpse;

    if-eqz v0, :cond_0

    .line 1008
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Glimpse;->required()Lcom/metamoji/df/sprite/Glimpse$Required;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1010
    new-instance v1, Lcom/metamoji/df/sprite/Viewport$14;

    const-wide/16 v2, 0xc8

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/metamoji/df/sprite/Viewport$14;-><init>(Lcom/metamoji/df/sprite/Viewport;JLcom/metamoji/df/sprite/Glimpse$Required;)V

    .line 1015
    new-instance v2, Lcom/metamoji/df/sprite/Viewport$15;

    iget-object v3, p0, Lcom/metamoji/df/sprite/Viewport;->scrollTranslate:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget v4, v0, Lcom/metamoji/df/sprite/Glimpse$Required;->translate:F

    sget-object v5, Lcom/metamoji/df/sprite/Equations;->easeOutQuad:Lcom/metamoji/df/sprite/Equations;

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/metamoji/df/sprite/Viewport$15;-><init>(Lcom/metamoji/df/sprite/Viewport;FFLcom/metamoji/df/sprite/Equations;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/df/sprite/Tweener$Tween;->add(Lcom/metamoji/df/sprite/Tweener$Prop;)V

    .line 1022
    iget-object v2, p0, Lcom/metamoji/df/sprite/Viewport;->tweener:Lcom/metamoji/df/sprite/Tweener;

    invoke-virtual {v2, v1}, Lcom/metamoji/df/sprite/Tweener;->add(Lcom/metamoji/df/sprite/Tweener$Tween;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private updateFromMonitor()V
    .locals 1

    .line 1892
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->overlay:Lcom/metamoji/df/sprite/Layer;

    if-eqz v0, :cond_0

    .line 1893
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Layer;->updateFromMonitor()V

    .line 1895
    :cond_0
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->overlay2:Lcom/metamoji/df/sprite/Layer;

    if-eqz v0, :cond_1

    .line 1896
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Layer;->updateFromMonitor()V

    :cond_1
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->mainLayer:Lcom/metamoji/df/sprite/Layer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 53
    invoke-direct {p0, v0}, Lcom/metamoji/df/sprite/Viewport;->removeLayer(Lcom/metamoji/df/sprite/Layer;)V

    .line 54
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->mainLayer:Lcom/metamoji/df/sprite/Layer;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Layer;->dispose()V

    .line 55
    iput-object v1, p0, Lcom/metamoji/df/sprite/Viewport;->mainLayer:Lcom/metamoji/df/sprite/Layer;

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->overlay:Lcom/metamoji/df/sprite/Layer;

    if-eqz v0, :cond_1

    .line 58
    invoke-direct {p0, v0}, Lcom/metamoji/df/sprite/Viewport;->removeLayer(Lcom/metamoji/df/sprite/Layer;)V

    .line 59
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->overlay:Lcom/metamoji/df/sprite/Layer;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Layer;->dispose()V

    .line 60
    iput-object v1, p0, Lcom/metamoji/df/sprite/Viewport;->overlay:Lcom/metamoji/df/sprite/Layer;

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->overlay2:Lcom/metamoji/df/sprite/Layer;

    if-eqz v0, :cond_2

    .line 63
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Layer;->dispose()V

    .line 64
    iput-object v1, p0, Lcom/metamoji/df/sprite/Viewport;->overlay2:Lcom/metamoji/df/sprite/Layer;

    .line 66
    :cond_2
    sget-object v0, Lcom/metamoji/df/sprite/TapListener;->Nil:Lcom/metamoji/df/sprite/TapListener;

    iput-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->tapListener:Lcom/metamoji/df/sprite/TapListener;

    .line 67
    sget-object v0, Lcom/metamoji/df/sprite/TouchListener;->Nil:Lcom/metamoji/df/sprite/TouchListener;

    iput-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->touchListener:Lcom/metamoji/df/sprite/TouchListener;

    .line 68
    sget-object v0, Lcom/metamoji/df/sprite/LongPressListener;->Nil:Lcom/metamoji/df/sprite/LongPressListener;

    iput-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->longPressListener:Lcom/metamoji/df/sprite/LongPressListener;

    .line 69
    sget-object v0, Lcom/metamoji/df/sprite/ViewportListener;->Nil:Lcom/metamoji/df/sprite/ViewportListener;

    iput-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->viewportListener:Lcom/metamoji/df/sprite/ViewportListener;

    .line 70
    sget-object v0, Lcom/metamoji/df/sprite/ContextClickListener2;->Nil:Lcom/metamoji/df/sprite/ContextClickListener2;

    iput-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->contextClickListener:Lcom/metamoji/df/sprite/ContextClickListener2;

    .line 72
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Viewport;->stopThread()V

    return-void
.end method

.method public entanglement()V
    .locals 0

    return-void
.end method

.method fireRepaintCallback()V
    .locals 4

    .line 1554
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->repaintCallback:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1555
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/df/sprite/Viewport;->repaintCallback:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_6

    .line 1557
    :try_start_1
    iget-object v1, p0, Lcom/metamoji/df/sprite/Viewport;->overlay:Lcom/metamoji/df/sprite/Layer;

    if-eqz v1, :cond_0

    .line 1558
    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Layer;->eventStart()V

    .line 1560
    :cond_0
    iget-object v1, p0, Lcom/metamoji/df/sprite/Viewport;->overlay2:Lcom/metamoji/df/sprite/Layer;

    if-eqz v1, :cond_1

    .line 1561
    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Layer;->eventStart()V

    .line 1563
    :cond_1
    iget-object v1, p0, Lcom/metamoji/df/sprite/Viewport;->repaintCallback:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    .line 1568
    :goto_0
    iget-object v3, p0, Lcom/metamoji/df/sprite/Viewport;->repaintCallback:Ljava/util/ArrayList;

    if-ge v2, v1, :cond_2

    .line 1565
    :try_start_2
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    .line 1566
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1568
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1570
    :try_start_3
    iget-object v1, p0, Lcom/metamoji/df/sprite/Viewport;->overlay:Lcom/metamoji/df/sprite/Layer;

    if-eqz v1, :cond_3

    .line 1571
    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Layer;->eventStop()V

    .line 1573
    :cond_3
    iget-object v1, p0, Lcom/metamoji/df/sprite/Viewport;->overlay2:Lcom/metamoji/df/sprite/Layer;

    if-eqz v1, :cond_6

    .line 1574
    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Layer;->eventStop()V

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 1570
    iget-object v2, p0, Lcom/metamoji/df/sprite/Viewport;->overlay:Lcom/metamoji/df/sprite/Layer;

    if-eqz v2, :cond_4

    .line 1571
    invoke-virtual {v2}, Lcom/metamoji/df/sprite/Layer;->eventStop()V

    .line 1573
    :cond_4
    iget-object v2, p0, Lcom/metamoji/df/sprite/Viewport;->overlay2:Lcom/metamoji/df/sprite/Layer;

    if-eqz v2, :cond_5

    .line 1574
    invoke-virtual {v2}, Lcom/metamoji/df/sprite/Layer;->eventStop()V

    .line 1576
    :cond_5
    throw v1

    .line 1578
    :cond_6
    :goto_1
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public getContentOffset()Landroid/graphics/PointF;
    .locals 3

    .line 689
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/metamoji/df/sprite/Viewport;->scrollTranslate:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    neg-float v1, v1

    iget-object v2, p0, Lcom/metamoji/df/sprite/Viewport;->scrollTranslate:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    neg-float v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public getContextClickListener()Lcom/metamoji/df/sprite/ContextClickListener2;
    .locals 1

    .line 1418
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->contextClickListener:Lcom/metamoji/df/sprite/ContextClickListener2;

    return-object v0
.end method

.method public getDoubleTapTimeout()I
    .locals 1

    .line 736
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->gesture:Lcom/metamoji/df/sprite/AllInOneGesture;

    iget v0, v0, Lcom/metamoji/df/sprite/AllInOneGesture;->doubleTapTimeout:I

    return v0
.end method

.method public getDragThreshold()F
    .locals 1

    .line 1435
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->gesture:Lcom/metamoji/df/sprite/AllInOneGesture;

    iget v0, v0, Lcom/metamoji/df/sprite/AllInOneGesture;->dragThreshold:F

    return v0
.end method

.method public getHoldThreshold()J
    .locals 2

    .line 1426
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->gesture:Lcom/metamoji/df/sprite/AllInOneGesture;

    iget v0, v0, Lcom/metamoji/df/sprite/AllInOneGesture;->holdTimeout:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getLongPressListener()Lcom/metamoji/df/sprite/LongPressListener;
    .locals 1

    .line 1410
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->longPressListener:Lcom/metamoji/df/sprite/LongPressListener;

    return-object v0
.end method

.method public getMainLayer()Lcom/metamoji/df/sprite/Layer;
    .locals 1

    .line 929
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->mainLayer:Lcom/metamoji/df/sprite/Layer;

    return-object v0
.end method

.method public getMaxZoomScale()F
    .locals 1

    .line 761
    iget v0, p0, Lcom/metamoji/df/sprite/Viewport;->maxZoomScale:F

    return v0
.end method

.method public getMinMaxContentOffset()Landroid/graphics/RectF;
    .locals 2

    .line 838
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 839
    invoke-direct {p0, v0}, Lcom/metamoji/df/sprite/Viewport;->getMinMaxScrollTranslate(Landroid/graphics/RectF;)V

    .line 841
    iget v1, v0, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 842
    iget v1, v0, Landroid/graphics/RectF;->top:F

    neg-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 843
    iget v1, v0, Landroid/graphics/RectF;->right:F

    neg-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 844
    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    neg-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    return-object v0
.end method

.method public getMinPaintInterval()J
    .locals 2

    .line 1912
    sget-wide v0, Lcom/metamoji/df/sprite/LayerViewTextureView;->MIN_PAINT_INTERVAL:J

    return-wide v0
.end method

.method public getMinZoomScale()F
    .locals 1

    .line 751
    iget v0, p0, Lcom/metamoji/df/sprite/Viewport;->minZoomScale:F

    return v0
.end method

.method public getNumberOfTouchesPanGesture()I
    .locals 1

    .line 714
    iget v0, p0, Lcom/metamoji/df/sprite/Viewport;->numberOfTouchesPanGesture:I

    return v0
.end method

.method public getOverLayer()Lcom/metamoji/df/sprite/Layer;
    .locals 2

    .line 954
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->overlay:Lcom/metamoji/df/sprite/Layer;

    if-nez v0, :cond_0

    .line 955
    new-instance v0, Lcom/metamoji/df/sprite/Layer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/df/sprite/Layer;-><init>(Lcom/metamoji/df/sprite/Stage;)V

    .line 956
    invoke-direct {p0, v0}, Lcom/metamoji/df/sprite/Viewport;->setOverLayer(Lcom/metamoji/df/sprite/Layer;)V

    .line 958
    :cond_0
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->overlay:Lcom/metamoji/df/sprite/Layer;

    return-object v0
.end method

.method public getOverLayer2()Lcom/metamoji/df/sprite/Layer;
    .locals 1

    .line 985
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->overlay2:Lcom/metamoji/df/sprite/Layer;

    return-object v0
.end method

.method public getPanThreshold()F
    .locals 1

    .line 1444
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->gesture:Lcom/metamoji/df/sprite/AllInOneGesture;

    iget v0, v0, Lcom/metamoji/df/sprite/AllInOneGesture;->panThreshold:F

    return v0
.end method

.method public getPartialRedraw()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method getScrollTranslate()Landroid/graphics/PointF;
    .locals 1

    .line 879
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->scrollTranslate:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getScrollableMargin()Landroid/graphics/RectF;
    .locals 1

    .line 912
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->margin:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getStage()Lcom/metamoji/df/sprite/Stage;
    .locals 1

    .line 675
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->mainLayer:Lcom/metamoji/df/sprite/Layer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Layer;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTapListener()Lcom/metamoji/df/sprite/TapListener;
    .locals 1

    .line 1402
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->tapListener:Lcom/metamoji/df/sprite/TapListener;

    return-object v0
.end method

.method public getTouchListener()Lcom/metamoji/df/sprite/TouchListener;
    .locals 1

    .line 1406
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->touchListener:Lcom/metamoji/df/sprite/TouchListener;

    return-object v0
.end method

.method public getTurnOverMediator()Lcom/metamoji/df/sprite/TurnOverMediator;
    .locals 1

    .line 1485
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->turnOver:Lcom/metamoji/df/sprite/TurnOverMediator;

    return-object v0
.end method

.method public getViewportInverseMatrix()Landroid/graphics/Matrix;
    .locals 2

    .line 1608
    monitor-enter p0

    .line 1609
    :try_start_0
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Viewport;->IS_ENABLED_INVERSE_MATRIX()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1610
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Viewport;->getViewportMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/df/sprite/Viewport;->inverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    const/4 v0, 0x1

    .line 1611
    invoke-direct {p0, v0}, Lcom/metamoji/df/sprite/Viewport;->SET_ENABLED_INVERSE_MATRIX(Z)I

    .line 1613
    :cond_0
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->inverseMatrix:Landroid/graphics/Matrix;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 1614
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getViewportListener()Lcom/metamoji/df/sprite/ViewportListener;
    .locals 1

    .line 1414
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->viewportListener:Lcom/metamoji/df/sprite/ViewportListener;

    return-object v0
.end method

.method public getViewportMatrix()Landroid/graphics/Matrix;
    .locals 1

    .line 1595
    monitor-enter p0

    .line 1596
    :try_start_0
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Viewport;->IS_ENABLED_MATRIX()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1597
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->matrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v0}, Lcom/metamoji/df/sprite/Viewport;->buildViewportMatrix(Landroid/graphics/Matrix;)V

    const/4 v0, 0x1

    .line 1598
    invoke-direct {p0, v0}, Lcom/metamoji/df/sprite/Viewport;->SET_ENABLED_MATRIX(Z)I

    .line 1600
    :cond_0
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->matrix:Landroid/graphics/Matrix;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 1601
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getZoomMaxThreshold()F
    .locals 1

    .line 1462
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->gesture:Lcom/metamoji/df/sprite/AllInOneGesture;

    iget v0, v0, Lcom/metamoji/df/sprite/AllInOneGesture;->zoomMaxThreshold:F

    return v0
.end method

.method public getZoomMinThreshold()F
    .locals 1

    .line 1453
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->gesture:Lcom/metamoji/df/sprite/AllInOneGesture;

    iget v0, v0, Lcom/metamoji/df/sprite/AllInOneGesture;->zoomMinThreshold:F

    return v0
.end method

.method public getZoomScale()F
    .locals 1

    .line 772
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Viewport;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 773
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Stage;->getZoom()F

    move-result v0

    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public hide()V
    .locals 0

    return-void
.end method

.method public isDetail()Z
    .locals 1

    .line 1535
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Viewport;->IS_DETAIL()Z

    move-result v0

    return v0
.end method

.method public isEnabledTurnOver()Z
    .locals 1

    .line 1495
    iget-boolean v0, p0, Lcom/metamoji/df/sprite/Viewport;->enabledTurnOver:Z

    return v0
.end method

.method public isPanEnabled()Z
    .locals 2

    .line 1506
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->gesture:Lcom/metamoji/df/sprite/AllInOneGesture;

    iget-object v0, v0, Lcom/metamoji/df/sprite/AllInOneGesture;->panListener:Lcom/metamoji/df/sprite/AllInOneGesture$PanListener;

    sget-object v1, Lcom/metamoji/df/sprite/Viewport;->PAN_EMPTY:Lcom/metamoji/df/sprite/AllInOneGesture$PanListener;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPinchEnabled()Z
    .locals 2

    .line 1520
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->gesture:Lcom/metamoji/df/sprite/AllInOneGesture;

    iget-object v0, v0, Lcom/metamoji/df/sprite/AllInOneGesture;->pinchListener:Lcom/metamoji/df/sprite/AllInOneGesture$PinchListener;

    sget-object v1, Lcom/metamoji/df/sprite/Viewport;->PINCH_EMPTY:Lcom/metamoji/df/sprite/AllInOneGesture$PinchListener;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isUseHistorycalTouchMovePoints()Z
    .locals 1

    .line 727
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->gesture:Lcom/metamoji/df/sprite/AllInOneGesture;

    iget-boolean v0, v0, Lcom/metamoji/df/sprite/AllInOneGesture;->useHistory:Z

    return v0
.end method

.method monitorNotify()V
    .locals 2

    .line 1904
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->monitor:Ljava/lang/Object;

    monitor-enter v0

    .line 1906
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/df/sprite/Viewport;->monitor:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 1907
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 1762
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1765
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1766
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->gesture:Lcom/metamoji/df/sprite/AllInOneGesture;

    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/AllInOneGesture;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 1810
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 1771
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->overlay:Lcom/metamoji/df/sprite/Layer;

    if-eqz v0, :cond_3

    .line 1772
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Layer;->eventStart()V

    .line 1774
    :cond_3
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->overlay2:Lcom/metamoji/df/sprite/Layer;

    if-eqz v0, :cond_4

    .line 1775
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Layer;->eventStart()V

    .line 1779
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v0

    .line 1780
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 1781
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    const/16 v3, 0x9

    .line 1782
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result p1

    and-int/lit16 v0, v0, 0x1000

    const/4 v3, 0x1

    const/high16 v4, 0x42000000    # 32.0f

    if-nez v0, :cond_7

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr p1, v0

    add-float v0, p1, p1

    .line 1787
    iget-object v5, p0, Lcom/metamoji/df/sprite/Viewport;->_GESTURE_PAN:Lcom/metamoji/df/sprite/AllInOneGesture$PanListener;

    new-instance v6, Lcom/metamoji/df/sprite/TouchEvent$OnTwoPoints;

    new-instance v7, Landroid/graphics/PointF;

    sub-float v8, v1, v4

    invoke-direct {v7, v8, v2}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v9, Landroid/graphics/PointF;

    add-float/2addr v1, v4

    invoke-direct {v9, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v6, v7, v9}, Lcom/metamoji/df/sprite/TouchEvent$OnTwoPoints;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    invoke-interface {v5, v6}, Lcom/metamoji/df/sprite/AllInOneGesture$PanListener;->panStart(Lcom/metamoji/df/sprite/TouchEvent;)V

    .line 1788
    iget-object v4, p0, Lcom/metamoji/df/sprite/Viewport;->_GESTURE_PAN:Lcom/metamoji/df/sprite/AllInOneGesture$PanListener;

    new-instance v5, Lcom/metamoji/df/sprite/TouchEvent$OnTwoPoints;

    new-instance v6, Landroid/graphics/PointF;

    add-float/2addr p1, v2

    invoke-direct {v6, v8, p1}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v5, v6, v7}, Lcom/metamoji/df/sprite/TouchEvent$OnTwoPoints;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    invoke-interface {v4, v5}, Lcom/metamoji/df/sprite/AllInOneGesture$PanListener;->panMove(Lcom/metamoji/df/sprite/TouchEvent;)V

    .line 1789
    iget-object p1, p0, Lcom/metamoji/df/sprite/Viewport;->_GESTURE_PAN:Lcom/metamoji/df/sprite/AllInOneGesture$PanListener;

    new-instance v4, Lcom/metamoji/df/sprite/TouchEvent$OnTwoPoints;

    new-instance v5, Landroid/graphics/PointF;

    add-float/2addr v2, v0

    invoke-direct {v5, v8, v2}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v4, v5, v0}, Lcom/metamoji/df/sprite/TouchEvent$OnTwoPoints;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    invoke-interface {p1, v4}, Lcom/metamoji/df/sprite/AllInOneGesture$PanListener;->panEnd(Lcom/metamoji/df/sprite/TouchEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1801
    iget-object p1, p0, Lcom/metamoji/df/sprite/Viewport;->overlay:Lcom/metamoji/df/sprite/Layer;

    if-eqz p1, :cond_5

    .line 1802
    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Layer;->eventStop()V

    .line 1804
    :cond_5
    iget-object p1, p0, Lcom/metamoji/df/sprite/Viewport;->overlay2:Lcom/metamoji/df/sprite/Layer;

    if-eqz p1, :cond_6

    .line 1805
    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Layer;->eventStop()V

    :cond_6
    return v3

    :cond_7
    add-float v0, p1, v4

    add-float/2addr p1, v0

    .line 1795
    :try_start_1
    iget-object v5, p0, Lcom/metamoji/df/sprite/Viewport;->_GESTURE_PINCH:Lcom/metamoji/df/sprite/AllInOneGesture$PinchListener;

    new-instance v6, Lcom/metamoji/df/sprite/TouchEvent$OnTwoPoints;

    new-instance v7, Landroid/graphics/PointF;

    sub-float v8, v1, v4

    invoke-direct {v7, v8, v2}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v8, Landroid/graphics/PointF;

    add-float/2addr v4, v1

    invoke-direct {v8, v4, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v6, v7, v8}, Lcom/metamoji/df/sprite/TouchEvent$OnTwoPoints;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    invoke-interface {v5, v6}, Lcom/metamoji/df/sprite/AllInOneGesture$PinchListener;->pinchStart(Lcom/metamoji/df/sprite/TouchEvent;)V

    .line 1796
    iget-object v4, p0, Lcom/metamoji/df/sprite/Viewport;->_GESTURE_PINCH:Lcom/metamoji/df/sprite/AllInOneGesture$PinchListener;

    new-instance v5, Lcom/metamoji/df/sprite/TouchEvent$OnTwoPoints;

    new-instance v6, Landroid/graphics/PointF;

    sub-float v7, v1, v0

    invoke-direct {v6, v7, v2}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v7, Landroid/graphics/PointF;

    add-float/2addr v0, v1

    invoke-direct {v7, v0, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v5, v6, v7}, Lcom/metamoji/df/sprite/TouchEvent$OnTwoPoints;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    invoke-interface {v4, v5}, Lcom/metamoji/df/sprite/AllInOneGesture$PinchListener;->pinchMove(Lcom/metamoji/df/sprite/TouchEvent;)V

    .line 1797
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->_GESTURE_PINCH:Lcom/metamoji/df/sprite/AllInOneGesture$PinchListener;

    new-instance v4, Lcom/metamoji/df/sprite/TouchEvent$OnTwoPoints;

    new-instance v5, Landroid/graphics/PointF;

    sub-float v6, v1, p1

    invoke-direct {v5, v6, v2}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v6, Landroid/graphics/PointF;

    add-float/2addr v1, p1

    invoke-direct {v6, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v4, v5, v6}, Lcom/metamoji/df/sprite/TouchEvent$OnTwoPoints;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    invoke-interface {v0, v4}, Lcom/metamoji/df/sprite/AllInOneGesture$PinchListener;->pinchEnd(Lcom/metamoji/df/sprite/TouchEvent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1801
    iget-object p1, p0, Lcom/metamoji/df/sprite/Viewport;->overlay:Lcom/metamoji/df/sprite/Layer;

    if-eqz p1, :cond_8

    .line 1802
    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Layer;->eventStop()V

    .line 1804
    :cond_8
    iget-object p1, p0, Lcom/metamoji/df/sprite/Viewport;->overlay2:Lcom/metamoji/df/sprite/Layer;

    if-eqz p1, :cond_9

    .line 1805
    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Layer;->eventStop()V

    :cond_9
    return v3

    :catchall_0
    move-exception p1

    .line 1801
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->overlay:Lcom/metamoji/df/sprite/Layer;

    if-eqz v0, :cond_a

    .line 1802
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Layer;->eventStop()V

    .line 1804
    :cond_a
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->overlay2:Lcom/metamoji/df/sprite/Layer;

    if-eqz v0, :cond_b

    .line 1805
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Layer;->eventStop()V

    .line 1807
    :cond_b
    throw p1
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 1828
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Viewport;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 1830
    invoke-virtual {p0, v0}, Lcom/metamoji/df/sprite/Viewport;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1831
    invoke-virtual {v1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1838
    iget-object p3, p0, Lcom/metamoji/df/sprite/Viewport;->viewportListener:Lcom/metamoji/df/sprite/ViewportListener;

    invoke-interface {p3, p1, p2}, Lcom/metamoji/df/sprite/ViewportListener;->sizeChanged(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1738
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->loop:Lcom/metamoji/df/sprite/Viewport$TickRunnable;

    if-eqz v0, :cond_6

    .line 1740
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->overlay:Lcom/metamoji/df/sprite/Layer;

    if-eqz v0, :cond_0

    .line 1741
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Layer;->eventStart()V

    .line 1743
    :cond_0
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->overlay2:Lcom/metamoji/df/sprite/Layer;

    if-eqz v0, :cond_1

    .line 1744
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Layer;->eventStart()V

    .line 1746
    :cond_1
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->gesture:Lcom/metamoji/df/sprite/AllInOneGesture;

    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/AllInOneGesture;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1748
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->overlay:Lcom/metamoji/df/sprite/Layer;

    if-eqz v0, :cond_2

    .line 1749
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Layer;->eventStop()V

    .line 1751
    :cond_2
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->overlay2:Lcom/metamoji/df/sprite/Layer;

    if-eqz v0, :cond_3

    .line 1752
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Layer;->eventStop()V

    :cond_3
    return p1

    :catchall_0
    move-exception p1

    .line 1748
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->overlay:Lcom/metamoji/df/sprite/Layer;

    if-eqz v0, :cond_4

    .line 1749
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Layer;->eventStop()V

    .line 1751
    :cond_4
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->overlay2:Lcom/metamoji/df/sprite/Layer;

    if-eqz v0, :cond_5

    .line 1752
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Layer;->eventStop()V

    .line 1754
    :cond_5
    throw p1

    :cond_6
    const/4 p1, 0x0

    return p1
.end method

.method public postRepaintCallback(Ljava/lang/Runnable;)V
    .locals 2

    .line 1548
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->repaintCallback:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1549
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/df/sprite/Viewport;->repaintCallback:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1550
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public resetOverLayer()V
    .locals 2

    .line 965
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->overlay:Lcom/metamoji/df/sprite/Layer;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 966
    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Layer;->setStage(Lcom/metamoji/df/sprite/Stage;)V

    :cond_0
    return-void
.end method

.method public scrollTo(FF)V
    .locals 1

    const/4 v0, 0x0

    .line 808
    invoke-virtual {p0, p1, p2, v0}, Lcom/metamoji/df/sprite/Viewport;->setContentOffset(FFZ)V

    return-void
.end method

.method public setContentHeight(F)V
    .locals 0

    return-void
.end method

.method public setContentOffset(FFZ)V
    .locals 0

    if-eqz p3, :cond_0

    neg-float p1, p1

    neg-float p2, p2

    .line 820
    invoke-direct {p0, p1, p2}, Lcom/metamoji/df/sprite/Viewport;->scrollToAnimated(FF)Z

    return-void

    :cond_0
    neg-float p1, p1

    .line 822
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p3

    if-nez p3, :cond_1

    neg-float p2, p2

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result p3

    if-nez p3, :cond_1

    .line 823
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/df/sprite/Viewport;->setScrollTranslate(FF)V

    .line 825
    :cond_1
    new-instance p1, Lcom/metamoji/df/sprite/Viewport$13;

    invoke-direct {p1, p0}, Lcom/metamoji/df/sprite/Viewport$13;-><init>(Lcom/metamoji/df/sprite/Viewport;)V

    invoke-virtual {p0, p1}, Lcom/metamoji/df/sprite/Viewport;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setContentOffset(Landroid/graphics/PointF;)V
    .locals 2

    .line 697
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/metamoji/df/sprite/Viewport;->setContentOffset(FFZ)V

    return-void
.end method

.method public setContentWidth(F)V
    .locals 0

    return-void
.end method

.method public setContextClickListener(Lcom/metamoji/df/sprite/ContextClickListener2;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1419
    :cond_0
    sget-object p1, Lcom/metamoji/df/sprite/ContextClickListener2;->Nil:Lcom/metamoji/df/sprite/ContextClickListener2;

    :goto_0
    iput-object p1, p0, Lcom/metamoji/df/sprite/Viewport;->contextClickListener:Lcom/metamoji/df/sprite/ContextClickListener2;

    return-void
.end method

.method public setDecelerationRate(F)V
    .locals 0

    return-void
.end method

.method public setDetail(Z)V
    .locals 0

    .line 1540
    invoke-direct {p0, p1}, Lcom/metamoji/df/sprite/Viewport;->SET_DETAIL(Z)I

    return-void
.end method

.method public setDirectionalLockEnabled(Z)V
    .locals 1

    .line 804
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->dirLock:Lcom/metamoji/df/sprite/DirectionalLock;

    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/DirectionalLock;->setEnabled(Z)V

    return-void
.end method

.method public setDoubleTapTimeout(I)V
    .locals 1

    .line 740
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->gesture:Lcom/metamoji/df/sprite/AllInOneGesture;

    iput p1, v0, Lcom/metamoji/df/sprite/AllInOneGesture;->doubleTapTimeout:I

    return-void
.end method

.method public setDragThreshold(F)V
    .locals 1

    .line 1439
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->gesture:Lcom/metamoji/df/sprite/AllInOneGesture;

    iput p1, v0, Lcom/metamoji/df/sprite/AllInOneGesture;->dragThreshold:F

    return-void
.end method

.method public setEnabledTurnOver(Z)V
    .locals 0

    .line 1500
    iput-boolean p1, p0, Lcom/metamoji/df/sprite/Viewport;->enabledTurnOver:Z

    return-void
.end method

.method public setHeight(F)V
    .locals 0

    return-void
.end method

.method public setHoldThreshold(J)V
    .locals 1

    .line 1430
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->gesture:Lcom/metamoji/df/sprite/AllInOneGesture;

    long-to-int p1, p1

    iput p1, v0, Lcom/metamoji/df/sprite/AllInOneGesture;->holdTimeout:I

    return-void
.end method

.method public setLongPressListener(Lcom/metamoji/df/sprite/LongPressListener;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1411
    :cond_0
    sget-object p1, Lcom/metamoji/df/sprite/LongPressListener;->Nil:Lcom/metamoji/df/sprite/LongPressListener;

    :goto_0
    iput-object p1, p0, Lcom/metamoji/df/sprite/Viewport;->longPressListener:Lcom/metamoji/df/sprite/LongPressListener;

    return-void
.end method

.method public setMainLayer(Lcom/metamoji/df/sprite/Layer;)V
    .locals 2

    .line 931
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->mainLayer:Lcom/metamoji/df/sprite/Layer;

    if-eqz v0, :cond_0

    .line 932
    invoke-direct {p0, v0}, Lcom/metamoji/df/sprite/Viewport;->removeLayer(Lcom/metamoji/df/sprite/Layer;)V

    .line 934
    :cond_0
    iput-object p1, p0, Lcom/metamoji/df/sprite/Viewport;->mainLayer:Lcom/metamoji/df/sprite/Layer;

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    .line 936
    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Layer;->setOverlay(Z)V

    .line 937
    iget-object p1, p0, Lcom/metamoji/df/sprite/Viewport;->mainLayer:Lcom/metamoji/df/sprite/Layer;

    invoke-direct {p0}, Lcom/metamoji/df/sprite/Viewport;->IS_DETAIL()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/metamoji/df/sprite/Layer;->setDetail(Z)V

    .line 938
    iget-object p1, p0, Lcom/metamoji/df/sprite/Viewport;->overlay:Lcom/metamoji/df/sprite/Layer;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/metamoji/df/sprite/Viewport;->overlay2:Lcom/metamoji/df/sprite/Layer;

    if-eqz p1, :cond_1

    goto :goto_0

    .line 941
    :cond_1
    iget-object p1, p0, Lcom/metamoji/df/sprite/Viewport;->mainLayer:Lcom/metamoji/df/sprite/Layer;

    invoke-direct {p0, p1}, Lcom/metamoji/df/sprite/Viewport;->addLayer(Lcom/metamoji/df/sprite/Layer;)V

    goto :goto_1

    .line 939
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/metamoji/df/sprite/Viewport;->mainLayer:Lcom/metamoji/df/sprite/Layer;

    invoke-direct {p0, v0, p1}, Lcom/metamoji/df/sprite/Viewport;->insertLayer(ILcom/metamoji/df/sprite/Layer;)V

    .line 944
    :goto_1
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Viewport;->startLoop()V

    :cond_3
    return-void
.end method

.method public setMaxZoomScale(F)V
    .locals 0

    .line 766
    iput p1, p0, Lcom/metamoji/df/sprite/Viewport;->maxZoomScale:F

    return-void
.end method

.method public setMinPaintInterval(J)V
    .locals 0

    .line 1913
    sput-wide p1, Lcom/metamoji/df/sprite/LayerViewTextureView;->MIN_PAINT_INTERVAL:J

    return-void
.end method

.method public setMinZoomScale(F)V
    .locals 0

    .line 756
    iput p1, p0, Lcom/metamoji/df/sprite/Viewport;->minZoomScale:F

    return-void
.end method

.method public setNeedsDisplay()V
    .locals 1

    .line 898
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->mainLayer:Lcom/metamoji/df/sprite/Layer;

    if-eqz v0, :cond_0

    .line 899
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Layer;->invalidate()V

    .line 901
    :cond_0
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->overlay:Lcom/metamoji/df/sprite/Layer;

    if-eqz v0, :cond_1

    .line 902
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Layer;->invalidate()V

    .line 904
    :cond_1
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->overlay2:Lcom/metamoji/df/sprite/Layer;

    if-eqz v0, :cond_2

    .line 905
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Layer;->invalidate()V

    :cond_2
    return-void
.end method

.method public setNumberOfTouchesPanGesture(I)V
    .locals 2

    .line 716
    iget v0, p0, Lcom/metamoji/df/sprite/Viewport;->numberOfTouchesPanGesture:I

    if-eq v0, p1, :cond_1

    .line 717
    iput p1, p0, Lcom/metamoji/df/sprite/Viewport;->numberOfTouchesPanGesture:I

    .line 720
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->gesture:Lcom/metamoji/df/sprite/AllInOneGesture;

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lcom/metamoji/df/sprite/AllInOneGesture;->sensitive:Z

    :cond_1
    return-void
.end method

.method public setOverLayer2(Lcom/metamoji/df/sprite/Layer;)V
    .locals 1

    .line 987
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->overlay2:Lcom/metamoji/df/sprite/Layer;

    if-eqz v0, :cond_0

    .line 988
    invoke-direct {p0, v0}, Lcom/metamoji/df/sprite/Viewport;->removeLayer(Lcom/metamoji/df/sprite/Layer;)V

    .line 990
    :cond_0
    iput-object p1, p0, Lcom/metamoji/df/sprite/Viewport;->overlay2:Lcom/metamoji/df/sprite/Layer;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 992
    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Layer;->setOverlay(Z)V

    .line 993
    iget-object p1, p0, Lcom/metamoji/df/sprite/Viewport;->overlay2:Lcom/metamoji/df/sprite/Layer;

    invoke-direct {p0}, Lcom/metamoji/df/sprite/Viewport;->IS_DETAIL()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Layer;->setDetail(Z)V

    .line 994
    iget-object p1, p0, Lcom/metamoji/df/sprite/Viewport;->overlay2:Lcom/metamoji/df/sprite/Layer;

    invoke-direct {p0, p1}, Lcom/metamoji/df/sprite/Viewport;->addLayer(Lcom/metamoji/df/sprite/Layer;)V

    .line 996
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Viewport;->startMonitor()V

    :cond_1
    return-void
.end method

.method public setPanEnabled(Z)V
    .locals 1

    .line 1513
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->gesture:Lcom/metamoji/df/sprite/AllInOneGesture;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/metamoji/df/sprite/Viewport;->_GESTURE_PAN:Lcom/metamoji/df/sprite/AllInOneGesture$PanListener;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/metamoji/df/sprite/Viewport;->PAN_EMPTY:Lcom/metamoji/df/sprite/AllInOneGesture$PanListener;

    :goto_0
    iput-object p1, v0, Lcom/metamoji/df/sprite/AllInOneGesture;->panListener:Lcom/metamoji/df/sprite/AllInOneGesture$PanListener;

    return-void
.end method

.method public setPanThreshold(F)V
    .locals 1

    .line 1448
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->gesture:Lcom/metamoji/df/sprite/AllInOneGesture;

    iput p1, v0, Lcom/metamoji/df/sprite/AllInOneGesture;->panThreshold:F

    return-void
.end method

.method public setPartialRedraw(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setPinchEnabled(Z)V
    .locals 1

    .line 1527
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->gesture:Lcom/metamoji/df/sprite/AllInOneGesture;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/metamoji/df/sprite/Viewport;->_GESTURE_PINCH:Lcom/metamoji/df/sprite/AllInOneGesture$PinchListener;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/metamoji/df/sprite/Viewport;->PINCH_EMPTY:Lcom/metamoji/df/sprite/AllInOneGesture$PinchListener;

    :goto_0
    iput-object p1, v0, Lcom/metamoji/df/sprite/AllInOneGesture;->pinchListener:Lcom/metamoji/df/sprite/AllInOneGesture$PinchListener;

    return-void
.end method

.method setScrollTranslate(FF)V
    .locals 1

    .line 883
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2

    .line 886
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    .line 890
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->scrollTranslate:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->equals(FF)Z

    move-result v0

    if-nez v0, :cond_0

    .line 891
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->scrollTranslate:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 892
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Viewport;->clearViewportMatrix()V

    .line 893
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Viewport;->setNeedsDisplay()V

    :cond_0
    return-void

    .line 887
    :cond_1
    new-instance p1, Ljava/lang/Error;

    const-string p2, "setScrollTranslate::y=NaN"

    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1

    .line 884
    :cond_2
    new-instance p1, Ljava/lang/Error;

    const-string p2, "setScrollTranslate::x=NaN"

    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setScrollableMargin(FFFF)V
    .locals 1

    .line 925
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->margin:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public setScrollableMargin(Landroid/graphics/RectF;)V
    .locals 0

    .line 917
    iput-object p1, p0, Lcom/metamoji/df/sprite/Viewport;->margin:Landroid/graphics/RectF;

    return-void
.end method

.method public setShowHorizontalScrollIndicator(Z)V
    .locals 0

    return-void
.end method

.method public setShowVerticalScrollIndicator(Z)V
    .locals 0

    return-void
.end method

.method public setStage(Lcom/metamoji/df/sprite/Stage;)V
    .locals 1

    .line 682
    new-instance v0, Lcom/metamoji/df/sprite/Layer;

    invoke-direct {v0, p1}, Lcom/metamoji/df/sprite/Layer;-><init>(Lcom/metamoji/df/sprite/Stage;)V

    invoke-virtual {p0, v0}, Lcom/metamoji/df/sprite/Viewport;->setMainLayer(Lcom/metamoji/df/sprite/Layer;)V

    return-void
.end method

.method public setTapListener(Lcom/metamoji/df/sprite/TapListener;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1403
    :cond_0
    sget-object p1, Lcom/metamoji/df/sprite/TapListener;->Nil:Lcom/metamoji/df/sprite/TapListener;

    :goto_0
    iput-object p1, p0, Lcom/metamoji/df/sprite/Viewport;->tapListener:Lcom/metamoji/df/sprite/TapListener;

    return-void
.end method

.method public setTouchListener(Lcom/metamoji/df/sprite/TouchListener;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1407
    :cond_0
    sget-object p1, Lcom/metamoji/df/sprite/TouchListener;->Nil:Lcom/metamoji/df/sprite/TouchListener;

    :goto_0
    iput-object p1, p0, Lcom/metamoji/df/sprite/Viewport;->touchListener:Lcom/metamoji/df/sprite/TouchListener;

    return-void
.end method

.method public setTurnOverMediator(Lcom/metamoji/df/sprite/TurnOverMediator;)V
    .locals 0

    .line 1490
    iput-object p1, p0, Lcom/metamoji/df/sprite/Viewport;->turnOver:Lcom/metamoji/df/sprite/TurnOverMediator;

    return-void
.end method

.method public setUseHistorycalTouchMovePoints(Z)V
    .locals 1

    .line 731
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->gesture:Lcom/metamoji/df/sprite/AllInOneGesture;

    iput-boolean p1, v0, Lcom/metamoji/df/sprite/AllInOneGesture;->useHistory:Z

    return-void
.end method

.method public setViewportListener(Lcom/metamoji/df/sprite/ViewportListener;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1415
    :cond_0
    sget-object p1, Lcom/metamoji/df/sprite/ViewportListener;->Nil:Lcom/metamoji/df/sprite/ViewportListener;

    :goto_0
    iput-object p1, p0, Lcom/metamoji/df/sprite/Viewport;->viewportListener:Lcom/metamoji/df/sprite/ViewportListener;

    return-void
.end method

.method public setWidth(F)V
    .locals 0

    return-void
.end method

.method public setZOrderMediaOverlay(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setZoomMaxThreshold(F)V
    .locals 1

    .line 1466
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->gesture:Lcom/metamoji/df/sprite/AllInOneGesture;

    iput p1, v0, Lcom/metamoji/df/sprite/AllInOneGesture;->zoomMaxThreshold:F

    return-void
.end method

.method public setZoomMinThreshold(F)V
    .locals 1

    .line 1457
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->gesture:Lcom/metamoji/df/sprite/AllInOneGesture;

    iput p1, v0, Lcom/metamoji/df/sprite/AllInOneGesture;->zoomMinThreshold:F

    return-void
.end method

.method public setZoomScale(F)V
    .locals 1

    .line 781
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Viewport;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 783
    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/Stage;->setZoom(F)V

    .line 784
    new-instance p1, Lcom/metamoji/df/sprite/Viewport$12;

    invoke-direct {p1, p0}, Lcom/metamoji/df/sprite/Viewport$12;-><init>(Lcom/metamoji/df/sprite/Viewport;)V

    invoke-virtual {p0, p1}, Lcom/metamoji/df/sprite/Viewport;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public show()V
    .locals 0

    return-void
.end method

.method public stageToViewport(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 1

    .line 1640
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Viewport;->getViewportMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/metamoji/df/sprite/Geometry;->transform(Landroid/graphics/Matrix;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public stageToViewport(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 1

    .line 1656
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Viewport;->getViewportMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/metamoji/df/sprite/Geometry;->transform(Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    return-object p1
.end method

.method stageToViewport(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 0

    .line 1663
    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1664
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Viewport;->getViewportMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    return-object p1
.end method

.method public startReboundScroll()Z
    .locals 1

    .line 1213
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->mainLayer:Lcom/metamoji/df/sprite/Layer;

    if-eqz v0, :cond_1

    .line 1214
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Layer;->beginScreenShot()V

    .line 1215
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Viewport;->panScrollRebound()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 1218
    :cond_0
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->mainLayer:Lcom/metamoji/df/sprite/Layer;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Layer;->endScreenShot()V

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public startReboundZoom(Landroid/graphics/PointF;)Z
    .locals 1

    .line 1228
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->mainLayer:Lcom/metamoji/df/sprite/Layer;

    if-eqz v0, :cond_1

    .line 1229
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Layer;->beginScreenShot()V

    .line 1230
    invoke-direct {p0, p1}, Lcom/metamoji/df/sprite/Viewport;->pinchZoomRebound(Landroid/graphics/PointF;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1233
    :cond_0
    iget-object p1, p0, Lcom/metamoji/df/sprite/Viewport;->mainLayer:Lcom/metamoji/df/sprite/Layer;

    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Layer;->endScreenShot()V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public stopThread()V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->loop:Lcom/metamoji/df/sprite/Viewport$TickRunnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Viewport$TickRunnable;->stop()V

    .line 79
    iput-object v1, p0, Lcom/metamoji/df/sprite/Viewport;->loop:Lcom/metamoji/df/sprite/Viewport$TickRunnable;

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport;->monitorThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 83
    iput-object v1, p0, Lcom/metamoji/df/sprite/Viewport;->monitorThread:Ljava/lang/Thread;

    .line 84
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Viewport;->monitorNotify()V

    :cond_1
    return-void
.end method

.method public viewportToStage(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 1

    .line 1632
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Viewport;->getViewportInverseMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/metamoji/df/sprite/Geometry;->transform(Landroid/graphics/Matrix;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public viewportToStage(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 1

    .line 1648
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Viewport;->getViewportInverseMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/metamoji/df/sprite/Geometry;->transform(Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    return-object p1
.end method
