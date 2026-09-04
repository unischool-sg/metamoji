.class Lcom/metamoji/df/sprite/AllInOneGesture;
.super Ljava/lang/Object;
.source "AllInOneGesture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/df/sprite/AllInOneGesture$State;,
        Lcom/metamoji/df/sprite/AllInOneGesture$DragListener;,
        Lcom/metamoji/df/sprite/AllInOneGesture$HoldTimeoutJob;,
        Lcom/metamoji/df/sprite/AllInOneGesture$DoubleTapTimeoutJob;,
        Lcom/metamoji/df/sprite/AllInOneGesture$PinchListener;,
        Lcom/metamoji/df/sprite/AllInOneGesture$PanListener;,
        Lcom/metamoji/df/sprite/AllInOneGesture$HoldListener;,
        Lcom/metamoji/df/sprite/AllInOneGesture$TapListener;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "AllInOneGesture"


# instance fields
.field private final _0:Lcom/metamoji/df/sprite/AllInOneGesture$State;

.field private final _1Drag:Lcom/metamoji/df/sprite/AllInOneGesture$State;

.field private final _1Hold:Lcom/metamoji/df/sprite/AllInOneGesture$State;

.field private final _1Pan:Lcom/metamoji/df/sprite/AllInOneGesture$State;

.field private final _1Pinch:Lcom/metamoji/df/sprite/AllInOneGesture$State;

.field private final _1Tap:Lcom/metamoji/df/sprite/AllInOneGesture$State;

.field private final _2Pan:Lcom/metamoji/df/sprite/AllInOneGesture$State;

.field private final _2PanCarved:Lcom/metamoji/df/sprite/AllInOneGesture$State;

.field private final _2Pinch:Lcom/metamoji/df/sprite/AllInOneGesture$State;

.field private final _2Tap:Lcom/metamoji/df/sprite/AllInOneGesture$State;

.field doubleTapTimeout:I

.field private doubleTapTimeoutJob:Lcom/metamoji/df/sprite/AllInOneGesture$DoubleTapTimeoutJob;

.field doubleTapped:Z

.field private dragCanceled:Z

.field dragListener:Lcom/metamoji/df/sprite/AllInOneGesture$DragListener;

.field dragThreshold:F

.field holdListener:Lcom/metamoji/df/sprite/AllInOneGesture$HoldListener;

.field holdTimeout:I

.field private holdTimeoutJob:Lcom/metamoji/df/sprite/AllInOneGesture$HoldTimeoutJob;

.field private owner:Landroid/view/View;

.field panListener:Lcom/metamoji/df/sprite/AllInOneGesture$PanListener;

.field panThreshold:F

.field pinchListener:Lcom/metamoji/df/sprite/AllInOneGesture$PinchListener;

.field sensitive:Z

.field private state:Lcom/metamoji/df/sprite/AllInOneGesture$State;

.field tapListener:Lcom/metamoji/df/sprite/AllInOneGesture$TapListener;

.field useHistory:Z

.field zoomMaxThreshold:F

.field zoomMinThreshold:F


# direct methods
.method static bridge synthetic -$$Nest$fget_0(Lcom/metamoji/df/sprite/AllInOneGesture;)Lcom/metamoji/df/sprite/AllInOneGesture$State;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/df/sprite/AllInOneGesture;->_0:Lcom/metamoji/df/sprite/AllInOneGesture$State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_1Drag(Lcom/metamoji/df/sprite/AllInOneGesture;)Lcom/metamoji/df/sprite/AllInOneGesture$State;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/df/sprite/AllInOneGesture;->_1Drag:Lcom/metamoji/df/sprite/AllInOneGesture$State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_1Hold(Lcom/metamoji/df/sprite/AllInOneGesture;)Lcom/metamoji/df/sprite/AllInOneGesture$State;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/df/sprite/AllInOneGesture;->_1Hold:Lcom/metamoji/df/sprite/AllInOneGesture$State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_1Pan(Lcom/metamoji/df/sprite/AllInOneGesture;)Lcom/metamoji/df/sprite/AllInOneGesture$State;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/df/sprite/AllInOneGesture;->_1Pan:Lcom/metamoji/df/sprite/AllInOneGesture$State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_1Pinch(Lcom/metamoji/df/sprite/AllInOneGesture;)Lcom/metamoji/df/sprite/AllInOneGesture$State;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/df/sprite/AllInOneGesture;->_1Pinch:Lcom/metamoji/df/sprite/AllInOneGesture$State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_1Tap(Lcom/metamoji/df/sprite/AllInOneGesture;)Lcom/metamoji/df/sprite/AllInOneGesture$State;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/df/sprite/AllInOneGesture;->_1Tap:Lcom/metamoji/df/sprite/AllInOneGesture$State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_2Pan(Lcom/metamoji/df/sprite/AllInOneGesture;)Lcom/metamoji/df/sprite/AllInOneGesture$State;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/df/sprite/AllInOneGesture;->_2Pan:Lcom/metamoji/df/sprite/AllInOneGesture$State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_2PanCarved(Lcom/metamoji/df/sprite/AllInOneGesture;)Lcom/metamoji/df/sprite/AllInOneGesture$State;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/df/sprite/AllInOneGesture;->_2PanCarved:Lcom/metamoji/df/sprite/AllInOneGesture$State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_2Pinch(Lcom/metamoji/df/sprite/AllInOneGesture;)Lcom/metamoji/df/sprite/AllInOneGesture$State;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/df/sprite/AllInOneGesture;->_2Pinch:Lcom/metamoji/df/sprite/AllInOneGesture$State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_2Tap(Lcom/metamoji/df/sprite/AllInOneGesture;)Lcom/metamoji/df/sprite/AllInOneGesture$State;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/df/sprite/AllInOneGesture;->_2Tap:Lcom/metamoji/df/sprite/AllInOneGesture$State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputdragCanceled(Lcom/metamoji/df/sprite/AllInOneGesture;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/metamoji/df/sprite/AllInOneGesture;->dragCanceled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mcancelDoubleTapTimeout(Lcom/metamoji/df/sprite/AllInOneGesture;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/df/sprite/AllInOneGesture;->cancelDoubleTapTimeout()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcancelHoldTimeout(Lcom/metamoji/df/sprite/AllInOneGesture;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/df/sprite/AllInOneGesture;->cancelHoldTimeout()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfireDoubleTapTimeout(Lcom/metamoji/df/sprite/AllInOneGesture;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/df/sprite/AllInOneGesture;->fireDoubleTapTimeout()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfireHoldTimeout(Lcom/metamoji/df/sprite/AllInOneGesture;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/df/sprite/AllInOneGesture;->fireHoldTimeout()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartDoubleTapTimeout(Lcom/metamoji/df/sprite/AllInOneGesture;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/df/sprite/AllInOneGesture;->startDoubleTapTimeout()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartHoldTimeout(Lcom/metamoji/df/sprite/AllInOneGesture;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/df/sprite/AllInOneGesture;->startHoldTimeout()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e8

    .line 31
    iput v0, p0, Lcom/metamoji/df/sprite/AllInOneGesture;->holdTimeout:I

    const/high16 v0, 0x41c80000    # 25.0f

    .line 33
    iput v0, p0, Lcom/metamoji/df/sprite/AllInOneGesture;->dragThreshold:F

    const/high16 v0, 0x42c80000    # 100.0f

    .line 35
    iput v0, p0, Lcom/metamoji/df/sprite/AllInOneGesture;->panThreshold:F

    const v0, 0x3f7d70a4    # 0.99f

    .line 37
    iput v0, p0, Lcom/metamoji/df/sprite/AllInOneGesture;->zoomMinThreshold:F

    const v0, 0x3f8147ae    # 1.01f

    .line 39
    iput v0, p0, Lcom/metamoji/df/sprite/AllInOneGesture;->zoomMaxThreshold:F

    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lcom/metamoji/df/sprite/AllInOneGesture;->sensitive:Z

    .line 43
    iput-boolean v0, p0, Lcom/metamoji/df/sprite/AllInOneGesture;->useHistory:Z

    .line 45
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    iput v0, p0, Lcom/metamoji/df/sprite/AllInOneGesture;->doubleTapTimeout:I

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/metamoji/df/sprite/AllInOneGesture;->doubleTapped:Z

    .line 52
    iput-boolean v0, p0, Lcom/metamoji/df/sprite/AllInOneGesture;->dragCanceled:Z

    .line 223
    new-instance v0, Lcom/metamoji/df/sprite/AllInOneGesture$1;

    invoke-direct {v0, p0}, Lcom/metamoji/df/sprite/AllInOneGesture$1;-><init>(Lcom/metamoji/df/sprite/AllInOneGesture;)V

    iput-object v0, p0, Lcom/metamoji/df/sprite/AllInOneGesture;->_0:Lcom/metamoji/df/sprite/AllInOneGesture$State;

    .line 234
    new-instance v1, Lcom/metamoji/df/sprite/AllInOneGesture$2;

    invoke-direct {v1, p0}, Lcom/metamoji/df/sprite/AllInOneGesture$2;-><init>(Lcom/metamoji/df/sprite/AllInOneGesture;)V

    iput-object v1, p0, Lcom/metamoji/df/sprite/AllInOneGesture;->_1Tap:Lcom/metamoji/df/sprite/AllInOneGesture$State;

    .line 305
    new-instance v1, Lcom/metamoji/df/sprite/AllInOneGesture$3;

    invoke-direct {v1, p0}, Lcom/metamoji/df/sprite/AllInOneGesture$3;-><init>(Lcom/metamoji/df/sprite/AllInOneGesture;)V

    iput-object v1, p0, Lcom/metamoji/df/sprite/AllInOneGesture;->_1Hold:Lcom/metamoji/df/sprite/AllInOneGesture$State;

    .line 328
    new-instance v1, Lcom/metamoji/df/sprite/AllInOneGesture$4;

    invoke-direct {v1, p0}, Lcom/metamoji/df/sprite/AllInOneGesture$4;-><init>(Lcom/metamoji/df/sprite/AllInOneGesture;)V

    iput-object v1, p0, Lcom/metamoji/df/sprite/AllInOneGesture;->_1Drag:Lcom/metamoji/df/sprite/AllInOneGesture$State;

    .line 364
    new-instance v1, Lcom/metamoji/df/sprite/AllInOneGesture$5;

    invoke-direct {v1, p0}, Lcom/metamoji/df/sprite/AllInOneGesture$5;-><init>(Lcom/metamoji/df/sprite/AllInOneGesture;)V

    iput-object v1, p0, Lcom/metamoji/df/sprite/AllInOneGesture;->_2Tap:Lcom/metamoji/df/sprite/AllInOneGesture$State;

    .line 443
    new-instance v1, Lcom/metamoji/df/sprite/AllInOneGesture$6;

    invoke-direct {v1, p0}, Lcom/metamoji/df/sprite/AllInOneGesture$6;-><init>(Lcom/metamoji/df/sprite/AllInOneGesture;)V

    iput-object v1, p0, Lcom/metamoji/df/sprite/AllInOneGesture;->_2Pan:Lcom/metamoji/df/sprite/AllInOneGesture$State;

    .line 497
    new-instance v1, Lcom/metamoji/df/sprite/AllInOneGesture$7;

    invoke-direct {v1, p0}, Lcom/metamoji/df/sprite/AllInOneGesture$7;-><init>(Lcom/metamoji/df/sprite/AllInOneGesture;)V

    iput-object v1, p0, Lcom/metamoji/df/sprite/AllInOneGesture;->_2PanCarved:Lcom/metamoji/df/sprite/AllInOneGesture$State;

    .line 522
    new-instance v1, Lcom/metamoji/df/sprite/AllInOneGesture$8;

    invoke-direct {v1, p0}, Lcom/metamoji/df/sprite/AllInOneGesture$8;-><init>(Lcom/metamoji/df/sprite/AllInOneGesture;)V

    iput-object v1, p0, Lcom/metamoji/df/sprite/AllInOneGesture;->_1Pan:Lcom/metamoji/df/sprite/AllInOneGesture$State;

    .line 549
    new-instance v1, Lcom/metamoji/df/sprite/AllInOneGesture$9;

    invoke-direct {v1, p0}, Lcom/metamoji/df/sprite/AllInOneGesture$9;-><init>(Lcom/metamoji/df/sprite/AllInOneGesture;)V

    iput-object v1, p0, Lcom/metamoji/df/sprite/AllInOneGesture;->_2Pinch:Lcom/metamoji/df/sprite/AllInOneGesture$State;

    .line 580
    new-instance v1, Lcom/metamoji/df/sprite/AllInOneGesture$10;

    invoke-direct {v1, p0}, Lcom/metamoji/df/sprite/AllInOneGesture$10;-><init>(Lcom/metamoji/df/sprite/AllInOneGesture;)V

    iput-object v1, p0, Lcom/metamoji/df/sprite/AllInOneGesture;->_1Pinch:Lcom/metamoji/df/sprite/AllInOneGesture$State;

    .line 658
    iput-object v0, p0, Lcom/metamoji/df/sprite/AllInOneGesture;->state:Lcom/metamoji/df/sprite/AllInOneGesture$State;

    .line 19
    iput-object p1, p0, Lcom/metamoji/df/sprite/AllInOneGesture;->owner:Landroid/view/View;

    return-void
.end method

.method private cancelDoubleTapTimeout()V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/metamoji/df/sprite/AllInOneGesture;->doubleTapTimeoutJob:Lcom/metamoji/df/sprite/AllInOneGesture$DoubleTapTimeoutJob;

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/AllInOneGesture$DoubleTapTimeoutJob;->cancel()V

    const/4 v0, 0x0

    .line 149
    iput-object v0, p0, Lcom/metamoji/df/sprite/AllInOneGesture;->doubleTapTimeoutJob:Lcom/metamoji/df/sprite/AllInOneGesture$DoubleTapTimeoutJob;

    :cond_0
    return-void
.end method

.method private cancelHoldTimeout()V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/metamoji/df/sprite/AllInOneGesture;->holdTimeoutJob:Lcom/metamoji/df/sprite/AllInOneGesture$HoldTimeoutJob;

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/AllInOneGesture$HoldTimeoutJob;->cancel()V

    const/4 v0, 0x0

    .line 104
    iput-object v0, p0, Lcom/metamoji/df/sprite/AllInOneGesture;->holdTimeoutJob:Lcom/metamoji/df/sprite/AllInOneGesture$HoldTimeoutJob;

    :cond_0
    return-void
.end method

.method private fireDoubleTapTimeout()V
    .locals 1

    const/4 v0, 0x0

    .line 129
    iput-boolean v0, p0, Lcom/metamoji/df/sprite/AllInOneGesture;->doubleTapped:Z

    return-void
.end method

.method private fireHoldTimeout()V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/metamoji/df/sprite/AllInOneGesture;->state:Lcom/metamoji/df/sprite/AllInOneGesture$State;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/AllInOneGesture$State;->timeout()Lcom/metamoji/df/sprite/AllInOneGesture$State;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/df/sprite/AllInOneGesture;->state:Lcom/metamoji/df/sprite/AllInOneGesture$State;

    return-void
.end method

.method private startDoubleTapTimeout()V
    .locals 4

    .line 134
    iget-object v0, p0, Lcom/metamoji/df/sprite/AllInOneGesture;->owner:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 137
    iput-boolean v1, p0, Lcom/metamoji/df/sprite/AllInOneGesture;->doubleTapped:Z

    .line 138
    invoke-direct {p0}, Lcom/metamoji/df/sprite/AllInOneGesture;->cancelDoubleTapTimeout()V

    .line 139
    new-instance v1, Lcom/metamoji/df/sprite/AllInOneGesture$DoubleTapTimeoutJob;

    invoke-direct {v1, p0}, Lcom/metamoji/df/sprite/AllInOneGesture$DoubleTapTimeoutJob;-><init>(Lcom/metamoji/df/sprite/AllInOneGesture;)V

    iput-object v1, p0, Lcom/metamoji/df/sprite/AllInOneGesture;->doubleTapTimeoutJob:Lcom/metamoji/df/sprite/AllInOneGesture$DoubleTapTimeoutJob;

    .line 140
    iget v2, p0, Lcom/metamoji/df/sprite/AllInOneGesture;->doubleTapTimeout:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private startHoldTimeout()V
    .locals 4

    .line 90
    iget-object v0, p0, Lcom/metamoji/df/sprite/AllInOneGesture;->owner:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    invoke-direct {p0}, Lcom/metamoji/df/sprite/AllInOneGesture;->cancelHoldTimeout()V

    .line 94
    new-instance v1, Lcom/metamoji/df/sprite/AllInOneGesture$HoldTimeoutJob;

    invoke-direct {v1, p0}, Lcom/metamoji/df/sprite/AllInOneGesture$HoldTimeoutJob;-><init>(Lcom/metamoji/df/sprite/AllInOneGesture;)V

    iput-object v1, p0, Lcom/metamoji/df/sprite/AllInOneGesture;->holdTimeoutJob:Lcom/metamoji/df/sprite/AllInOneGesture$HoldTimeoutJob;

    .line 95
    iget v2, p0, Lcom/metamoji/df/sprite/AllInOneGesture;->holdTimeout:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/metamoji/df/sprite/AllInOneGesture;->owner:Landroid/view/View;

    return-void
.end method

.method dragCancel(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 1

    .line 58
    iget-boolean v0, p0, Lcom/metamoji/df/sprite/AllInOneGesture;->dragCanceled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Lcom/metamoji/df/sprite/AllInOneGesture;->dragCanceled:Z

    .line 60
    iget-object v0, p0, Lcom/metamoji/df/sprite/AllInOneGesture;->dragListener:Lcom/metamoji/df/sprite/AllInOneGesture$DragListener;

    invoke-interface {v0, p1}, Lcom/metamoji/df/sprite/AllInOneGesture$DragListener;->dragCancel(Lcom/metamoji/df/sprite/TouchEvent;)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 666
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    if-eq v0, v1, :cond_6

    const/4 v2, 0x2

    if-eq v0, v2, :cond_5

    const/4 v3, 0x3

    if-eq v0, v3, :cond_4

    const/4 v3, 0x5

    const-string v4, " count="

    const-string v5, "ev="

    if-eq v0, v3, :cond_2

    const/4 v3, 0x6

    if-eq v0, v3, :cond_0

    const/16 v2, 0xb

    if-eq v0, v2, :cond_7

    const/16 v2, 0xc

    if-eq v0, v2, :cond_6

    .line 696
    sget-object v0, Lcom/metamoji/df/sprite/AllInOneGesture;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UNKNOWN ev="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 686
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 687
    iget-object v0, p0, Lcom/metamoji/df/sprite/AllInOneGesture;->state:Lcom/metamoji/df/sprite/AllInOneGesture$State;

    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/AllInOneGesture$State;->minus(Landroid/view/MotionEvent;)Lcom/metamoji/df/sprite/AllInOneGesture$State;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/df/sprite/AllInOneGesture;->state:Lcom/metamoji/df/sprite/AllInOneGesture$State;

    goto/16 :goto_0

    .line 689
    :cond_1
    sget-object v0, Lcom/metamoji/df/sprite/AllInOneGesture;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 672
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 673
    iget-object v0, p0, Lcom/metamoji/df/sprite/AllInOneGesture;->state:Lcom/metamoji/df/sprite/AllInOneGesture$State;

    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/AllInOneGesture$State;->plus(Landroid/view/MotionEvent;)Lcom/metamoji/df/sprite/AllInOneGesture$State;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/df/sprite/AllInOneGesture;->state:Lcom/metamoji/df/sprite/AllInOneGesture$State;

    goto :goto_0

    .line 675
    :cond_3
    sget-object v0, Lcom/metamoji/df/sprite/AllInOneGesture;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 693
    :cond_4
    iget-object v0, p0, Lcom/metamoji/df/sprite/AllInOneGesture;->state:Lcom/metamoji/df/sprite/AllInOneGesture$State;

    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/AllInOneGesture$State;->cancel(Landroid/view/MotionEvent;)Lcom/metamoji/df/sprite/AllInOneGesture$State;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/df/sprite/AllInOneGesture;->state:Lcom/metamoji/df/sprite/AllInOneGesture$State;

    goto :goto_0

    .line 679
    :cond_5
    iget-object v0, p0, Lcom/metamoji/df/sprite/AllInOneGesture;->state:Lcom/metamoji/df/sprite/AllInOneGesture$State;

    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/AllInOneGesture$State;->move(Landroid/view/MotionEvent;)Lcom/metamoji/df/sprite/AllInOneGesture$State;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/df/sprite/AllInOneGesture;->state:Lcom/metamoji/df/sprite/AllInOneGesture$State;

    goto :goto_0

    .line 683
    :cond_6
    iget-object v0, p0, Lcom/metamoji/df/sprite/AllInOneGesture;->state:Lcom/metamoji/df/sprite/AllInOneGesture$State;

    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/AllInOneGesture$State;->up(Landroid/view/MotionEvent;)Lcom/metamoji/df/sprite/AllInOneGesture$State;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/df/sprite/AllInOneGesture;->state:Lcom/metamoji/df/sprite/AllInOneGesture$State;

    goto :goto_0

    .line 669
    :cond_7
    iget-object v0, p0, Lcom/metamoji/df/sprite/AllInOneGesture;->state:Lcom/metamoji/df/sprite/AllInOneGesture$State;

    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/AllInOneGesture$State;->down(Landroid/view/MotionEvent;)Lcom/metamoji/df/sprite/AllInOneGesture$State;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/df/sprite/AllInOneGesture;->state:Lcom/metamoji/df/sprite/AllInOneGesture$State;

    :goto_0
    return v1
.end method
