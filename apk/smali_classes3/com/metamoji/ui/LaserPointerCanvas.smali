.class public Lcom/metamoji/ui/LaserPointerCanvas;
.super Ljava/lang/Object;
.source "LaserPointerCanvas.java"

# interfaces
.implements Lcom/metamoji/ns/direction/INsDirectionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/LaserPointerCanvas$Pointer;,
        Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;
    }
.end annotation


# static fields
.field private static final CONTROL_POINT_X:Ljava/lang/String; = "CX"

.field private static final CONTROL_POINT_Y:Ljava/lang/String; = "CY"

.field private static final DETENTION_COUNT:Ljava/lang/String; = "DC"

.field private static final DR_OV_POINTER_ID:Ljava/lang/String; = "ID"

.field private static final DR_OV_POINTER_PHASE:Ljava/lang/String; = "PH"

.field private static final END_POINT_X:Ljava/lang/String; = "EX"

.field private static final END_POINT_Y:Ljava/lang/String; = "EY"

.field private static final FADEOUT_CHECK_INTERVAL:I = 0x28

.field private static final FADEOUT_DIVISION:I = 0x10

.field private static final FADEOUT_DURATION:Ljava/lang/String; = "FD"

.field private static final LASER_ALPHA:F = 1.0f

.field private static final LINE_ALPHA:Ljava/lang/String; = "LA"

.field private static final LINE_COLOR_BLUE:Ljava/lang/String; = "LB"

.field private static final LINE_COLOR_GREEN:Ljava/lang/String; = "LG"

.field private static final LINE_COLOR_RED:Ljava/lang/String; = "LR"

.field private static final LINE_WIDTH:Ljava/lang/String; = "LW"

.field private static final SINGLE_POINT_TIME:J = 0x1f4L

.field private static final SUBSAMPLING_DIST:F = 30.0f

.field private static final SUBSAMPLING_TIME:J = 0x3e8L

.field private static final TIMEOUT_DURATION:Ljava/lang/String; = "TD"


# instance fields
.field private final _deviceIdInitializedListener:Lcom/metamoji/cm/ICmEventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/cm/ICmEventHandler<",
            "Lcom/metamoji/ns/direction/NsDeviceIdInitializedEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final _fadeoutTask:Ljava/lang/Runnable;

.field private final _idGenerator:Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;

.field _local:Lcom/metamoji/ui/LaserPointerCanvas$Pointer;

.field _next:Landroid/graphics/PointF;

.field private final _pointers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/metamoji/ui/LaserPointerCanvas$Pointer;",
            ">;"
        }
    .end annotation
.end field

.field _prev:Landroid/graphics/PointF;

.field _prevTime:J

.field private final _sheet:Lcom/metamoji/nt/NtNoteController;

.field private _sprite:Lcom/metamoji/df/sprite/Sprite;

.field private _stage:Lcom/metamoji/df/sprite/Stage;

.field private final _timer:Lcom/metamoji/cm/UiTimer;

.field private _touchListener:Lcom/metamoji/df/sprite/TouchListener;

.field private _viewportListener:Lcom/metamoji/df/sprite/ViewportListener;


# direct methods
.method public static synthetic $r8$lambda$5yxUHZCOK6mxLKQqsQeghqr24_M(Lcom/metamoji/ui/LaserPointerCanvas;Lcom/metamoji/ui/LaserPointerCanvas$Pointer;Landroid/graphics/PointF;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/LaserPointerCanvas;->lambda$performPointerDirection$2(Lcom/metamoji/ui/LaserPointerCanvas$Pointer;Landroid/graphics/PointF;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8RcG3CsPo2IkFUj1g7Vyl__biKE(Lcom/metamoji/ui/LaserPointerCanvas;Lcom/metamoji/ui/LaserPointerCanvas$Pointer;Landroid/graphics/PointF;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/LaserPointerCanvas;->lambda$performPointerDirection$1(Lcom/metamoji/ui/LaserPointerCanvas$Pointer;Landroid/graphics/PointF;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AAkC6ZseBINOjLWK5KYPOiMxfJs(Lcom/metamoji/ui/LaserPointerCanvas;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/LaserPointerCanvas;->lambda$performPointerDirection$0(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AR-7Urt6u4UfVECBvLi00t10Gz8(Lcom/metamoji/ui/LaserPointerCanvas;Lcom/metamoji/ui/LaserPointerCanvas$Pointer;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/ui/LaserPointerCanvas;->lambda$performPointerDirection$3(Lcom/metamoji/ui/LaserPointerCanvas$Pointer;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BV2-T-APU5FbEZ8BQgpdgwzON2Q(Lcom/metamoji/ui/LaserPointerCanvas;Lcom/metamoji/ui/LaserPointerCanvas$Pointer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/LaserPointerCanvas;->lambda$performPointerDirection$5(Lcom/metamoji/ui/LaserPointerCanvas$Pointer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BkpkRSJZffufIIa9gBy8Lxzh6FM(Lcom/metamoji/ui/LaserPointerCanvas;Lcom/metamoji/ui/LaserPointerCanvas$Pointer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/LaserPointerCanvas;->lambda$performPointerDirection$4(Lcom/metamoji/ui/LaserPointerCanvas$Pointer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Kbdcf7ti3YWMCvvk9doGLTVuO-k(Lcom/metamoji/ui/LaserPointerCanvas;Lcom/metamoji/ns/direction/NsDeviceIdInitializedEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/LaserPointerCanvas;->deviceIdInitialized(Lcom/metamoji/ns/direction/NsDeviceIdInitializedEvent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fget_pointers(Lcom/metamoji/ui/LaserPointerCanvas;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_pointers:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_sprite(Lcom/metamoji/ui/LaserPointerCanvas;)Lcom/metamoji/df/sprite/Sprite;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_stage(Lcom/metamoji/ui/LaserPointerCanvas;)Lcom/metamoji/df/sprite/Stage;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_stage:Lcom/metamoji/df/sprite/Stage;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mmoveByTime(Lcom/metamoji/ui/LaserPointerCanvas;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/LaserPointerCanvas;->moveByTime(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msyncZoom(Lcom/metamoji/ui/LaserPointerCanvas;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/LaserPointerCanvas;->syncZoom()V

    return-void
.end method

.method static bridge synthetic -$$Nest$smmid(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0

    invoke-static {p0, p1}, Lcom/metamoji/ui/LaserPointerCanvas;->mid(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/metamoji/nt/NtNoteController;)V
    .locals 1

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_touchListener:Lcom/metamoji/df/sprite/TouchListener;

    .line 77
    iput-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_viewportListener:Lcom/metamoji/df/sprite/ViewportListener;

    .line 78
    new-instance v0, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_idGenerator:Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;

    .line 79
    new-instance v0, Lcom/metamoji/ui/LaserPointerCanvas$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/LaserPointerCanvas$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/ui/LaserPointerCanvas;)V

    iput-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_deviceIdInitializedListener:Lcom/metamoji/cm/ICmEventHandler;

    .line 654
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_pointers:Ljava/util/HashMap;

    .line 1198
    new-instance v0, Lcom/metamoji/cm/UiTimer;

    invoke-direct {v0}, Lcom/metamoji/cm/UiTimer;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_timer:Lcom/metamoji/cm/UiTimer;

    .line 1200
    new-instance v0, Lcom/metamoji/ui/LaserPointerCanvas$3;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/LaserPointerCanvas$3;-><init>(Lcom/metamoji/ui/LaserPointerCanvas;)V

    iput-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_fadeoutTask:Ljava/lang/Runnable;

    .line 112
    iput-object p1, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_sheet:Lcom/metamoji/nt/NtNoteController;

    return-void
.end method

.method private beginPointer(Lcom/metamoji/ui/LaserPointerCanvas$Pointer;Ljava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ui/LaserPointerCanvas$Pointer;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 513
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->getColor()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x406fe00000000000L    # 255.0

    div-double/2addr v0, v2

    .line 515
    const-string v4, "ID"

    invoke-virtual {p1}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->getSid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    sget-object v4, Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;->BEGIN:Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;

    invoke-virtual {v4}, Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "PH"

    invoke-virtual {p2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    iget-wide v4, p1, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->width:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const-string v5, "LW"

    invoke-virtual {p2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    invoke-virtual {p1}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->getColor()I

    move-result v4

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v4, v0

    div-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const-string v5, "LR"

    invoke-virtual {p2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    invoke-virtual {p1}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->getColor()I

    move-result v4

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v4, v0

    div-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const-string v5, "LG"

    invoke-virtual {p2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    invoke-virtual {p1}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->getColor()I

    move-result v4

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v4, v0

    div-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string v3, "LB"

    invoke-virtual {p2, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    const-string v2, "LA"

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p2, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    iget v0, p1, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->detentionCount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "DC"

    invoke-virtual {p2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    iget-wide v0, p1, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->fadeoutDuration:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v1, "FD"

    invoke-virtual {p2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    iget-wide v0, p1, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->timeoutDuration:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string v0, "TD"

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private createPacket()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 752
    iget-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_sheet:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->isDirectable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 755
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/direction/note/NtLaserPointerDirectionData;->createLaserPointerData()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method private createPointer(Ljava/lang/String;)Lcom/metamoji/ui/LaserPointerCanvas$Pointer;
    .locals 2

    .line 505
    new-instance v0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;

    iget-object v1, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-direct {v0, p0, v1, p1}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;-><init>(Lcom/metamoji/ui/LaserPointerCanvas;Lcom/metamoji/df/sprite/Sprite;Ljava/lang/String;)V

    return-object v0
.end method

.method private deviceIdInitialized(Lcom/metamoji/ns/direction/NsDeviceIdInitializedEvent;)V
    .locals 2

    .line 247
    iget-object p1, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_idGenerator:Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->setPrefix(J)V

    return-void
.end method

.method private static dist(Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 2

    .line 591
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget p0, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, p0

    float-to-double p0, p1

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method private endPointer(Lcom/metamoji/ui/LaserPointerCanvas$Pointer;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ui/LaserPointerCanvas$Pointer;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 528
    invoke-virtual {p1}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->end()V

    if-nez p2, :cond_0

    return-void

    .line 534
    :cond_0
    const-string v0, "ID"

    invoke-virtual {p1}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->getSid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    sget-object p1, Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;->END:Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;

    invoke-virtual {p1}, Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "PH"

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private fromPargb(DDDD)I
    .locals 2

    const-wide/high16 v0, 0x3f70000000000000L    # 0.00390625

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    div-double/2addr p3, p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 661
    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p3

    div-double/2addr p5, p1

    .line 662
    invoke-static {p5, p6, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p5

    div-double/2addr p7, p1

    .line 663
    invoke-static {p7, p8, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p7

    const-wide v0, 0x406fe00000000000L    # 255.0

    mul-double/2addr p1, v0

    double-to-int p1, p1

    mul-double/2addr p3, v0

    double-to-int p2, p3

    mul-double/2addr p5, v0

    double-to-int p3, p5

    mul-double/2addr p7, v0

    double-to-int p4, p7

    .line 664
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    return p1
.end method

.method private generateId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;
    .locals 1

    .line 226
    invoke-direct {p0}, Lcom/metamoji/ui/LaserPointerCanvas;->initIdGenerator()Z

    .line 227
    iget-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_idGenerator:Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->generateId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    return-object v0
.end method

.method private getPoint(Lcom/metamoji/df/sprite/TouchEvent;)Landroid/graphics/PointF;
    .locals 1

    .line 369
    invoke-interface {p1}, Lcom/metamoji/df/sprite/TouchEvent;->getPoint()Landroid/graphics/PointF;

    move-result-object p1

    .line 370
    iget-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_sheet:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/Viewport;->viewportToStage(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    .line 371
    iget-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_stage:Lcom/metamoji/df/sprite/Stage;

    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/Stage;->stageToSprite(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method private hide()V
    .locals 3

    .line 278
    iget-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    if-nez v0, :cond_0

    return-void

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_timer:Lcom/metamoji/cm/UiTimer;

    invoke-virtual {v0}, Lcom/metamoji/cm/UiTimer;->cancel()V

    const/4 v0, 0x0

    .line 283
    iput-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_local:Lcom/metamoji/ui/LaserPointerCanvas$Pointer;

    .line 284
    iget-object v1, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_pointers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;

    .line 285
    invoke-virtual {v2}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->dispose()V

    goto :goto_0

    .line 287
    :cond_1
    iget-object v1, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_pointers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 289
    iget-object v1, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_sheet:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getInteractiveEventManager()Lcom/metamoji/nt/NtInteractiveEventManager;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 291
    iget-object v2, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_viewportListener:Lcom/metamoji/df/sprite/ViewportListener;

    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtInteractiveEventManager;->removeViewportListener(Lcom/metamoji/df/sprite/ViewportListener;)V

    .line 294
    :cond_2
    iget-object v1, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_sheet:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v1

    .line 295
    invoke-virtual {v1, v0}, Lcom/metamoji/df/sprite/Viewport;->setOverLayer2(Lcom/metamoji/df/sprite/Layer;)V

    .line 297
    iput-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_stage:Lcom/metamoji/df/sprite/Stage;

    .line 298
    iput-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    return-void
.end method

.method private initIdGenerator()Z
    .locals 5

    .line 231
    iget-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_idGenerator:Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->prefix()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_sheet:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_sheet:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ns/direction/NsDirectionManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    return v2

    .line 241
    :cond_2
    iget-object v2, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_idGenerator:Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->setPrefix(J)V

    return v1
.end method

.method private initialMove()V
    .locals 3

    .line 462
    iget-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_local:Lcom/metamoji/ui/LaserPointerCanvas$Pointer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->isLocked()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 466
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/ui/LaserPointerCanvas;->createPacket()Ljava/util/HashMap;

    move-result-object v0

    .line 467
    iget-object v1, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_local:Lcom/metamoji/ui/LaserPointerCanvas$Pointer;

    iget-object v2, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_prev:Landroid/graphics/PointF;

    invoke-direct {p0, v1, v2, v0}, Lcom/metamoji/ui/LaserPointerCanvas;->moveToPoint(Lcom/metamoji/ui/LaserPointerCanvas$Pointer;Landroid/graphics/PointF;Ljava/util/HashMap;)V

    .line 468
    invoke-direct {p0, v0}, Lcom/metamoji/ui/LaserPointerCanvas;->sendPacket(Ljava/util/HashMap;)V

    .line 470
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_prevTime:J

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$performPointerDirection$0(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 3

    .line 682
    invoke-direct {p0, p1}, Lcom/metamoji/ui/LaserPointerCanvas;->createPointer(Ljava/lang/String;)Lcom/metamoji/ui/LaserPointerCanvas$Pointer;

    move-result-object v0

    .line 683
    const-string v1, "LW"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->toDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->width:D

    .line 684
    invoke-virtual {p0, p2}, Lcom/metamoji/ui/LaserPointerCanvas;->getLaserPointerColor(Ljava/util/HashMap;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->setColor(I)V

    .line 685
    const-string v1, "DC"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->detentionCount:I

    .line 686
    const-string v1, "FD"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->toDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->fadeoutDuration:D

    .line 687
    const-string v1, "TD"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/metamoji/cm/CmUtils;->toDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->timeoutDuration:D

    .line 689
    iget-object p2, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_pointers:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 690
    invoke-direct {p0, v0, p1}, Lcom/metamoji/ui/LaserPointerCanvas;->beginPointer(Lcom/metamoji/ui/LaserPointerCanvas$Pointer;Ljava/util/HashMap;)V

    return-void
.end method

.method private synthetic lambda$performPointerDirection$1(Lcom/metamoji/ui/LaserPointerCanvas$Pointer;Landroid/graphics/PointF;)V
    .locals 1

    const/4 v0, 0x0

    .line 706
    invoke-direct {p0, p1, p2, v0}, Lcom/metamoji/ui/LaserPointerCanvas;->moveToPoint(Lcom/metamoji/ui/LaserPointerCanvas$Pointer;Landroid/graphics/PointF;Ljava/util/HashMap;)V

    return-void
.end method

.method private synthetic lambda$performPointerDirection$2(Lcom/metamoji/ui/LaserPointerCanvas$Pointer;Landroid/graphics/PointF;)V
    .locals 1

    const/4 v0, 0x0

    .line 715
    invoke-direct {p0, p1, p2, v0}, Lcom/metamoji/ui/LaserPointerCanvas;->lineToPoint(Lcom/metamoji/ui/LaserPointerCanvas$Pointer;Landroid/graphics/PointF;Ljava/util/HashMap;)V

    return-void
.end method

.method private synthetic lambda$performPointerDirection$3(Lcom/metamoji/ui/LaserPointerCanvas$Pointer;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 1

    const/4 v0, 0x0

    .line 727
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/metamoji/ui/LaserPointerCanvas;->quadCurveToPoint(Lcom/metamoji/ui/LaserPointerCanvas$Pointer;Landroid/graphics/PointF;Landroid/graphics/PointF;Ljava/util/HashMap;)V

    return-void
.end method

.method private synthetic lambda$performPointerDirection$4(Lcom/metamoji/ui/LaserPointerCanvas$Pointer;)V
    .locals 1

    const/4 v0, 0x0

    .line 733
    invoke-direct {p0, p1, v0}, Lcom/metamoji/ui/LaserPointerCanvas;->endPointer(Lcom/metamoji/ui/LaserPointerCanvas$Pointer;Ljava/util/HashMap;)V

    return-void
.end method

.method private synthetic lambda$performPointerDirection$5(Lcom/metamoji/ui/LaserPointerCanvas$Pointer;)V
    .locals 1

    const/4 v0, 0x0

    .line 738
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/ui/LaserPointerCanvas;->cancelPointer(Lcom/metamoji/ui/LaserPointerCanvas$Pointer;Ljava/util/HashMap;)V

    return-void
.end method

.method private static lerp(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;
    .locals 4

    .line 595
    new-instance v0, Landroid/graphics/PointF;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p2

    iget v2, p0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v2, v1

    iget v3, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    iget p0, p0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v1, p0

    iget p0, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr p2, p0

    add-float/2addr v1, p2

    invoke-direct {v0, v2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method private lineToPoint(Lcom/metamoji/ui/LaserPointerCanvas$Pointer;Landroid/graphics/PointF;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ui/LaserPointerCanvas$Pointer;",
            "Landroid/graphics/PointF;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 563
    iget-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_stage:Lcom/metamoji/df/sprite/Stage;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Stage;->getZoom()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p1, p2, v0, v1}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->lineTo(Landroid/graphics/PointF;D)V

    if-nez p3, :cond_0

    return-void

    .line 569
    :cond_0
    const-string v0, "ID"

    invoke-virtual {p1}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->getSid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    sget-object p1, Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;->LINE_TO_POINT:Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;

    invoke-virtual {p1}, Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "PH"

    invoke-virtual {p3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    iget p1, p2, Landroid/graphics/PointF;->x:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "EX"

    invoke-virtual {p3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    iget p1, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string p2, "EY"

    invoke-virtual {p3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static mid(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    .line 598
    invoke-static {p0, p1, v0}, Lcom/metamoji/ui/LaserPointerCanvas;->lerp(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method private moveByTime(J)V
    .locals 4

    .line 474
    iget-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_local:Lcom/metamoji/ui/LaserPointerCanvas$Pointer;

    if-nez v0, :cond_0

    goto :goto_0

    .line 478
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->isLocked()Z

    move-result v0

    .line 486
    iget-wide v1, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_prevTime:J

    if-eqz v0, :cond_1

    sub-long/2addr p1, v1

    const-wide/16 v0, 0x1f4

    cmp-long p1, p1, v0

    if-lez p1, :cond_3

    .line 481
    invoke-direct {p0}, Lcom/metamoji/ui/LaserPointerCanvas;->initialMove()V

    return-void

    :cond_1
    sub-long v0, p1, v1

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    goto :goto_0

    .line 489
    :cond_2
    iget-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_prev:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_next:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    :goto_0
    return-void

    .line 494
    :cond_4
    iget-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_prev:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_next:Landroid/graphics/PointF;

    const v2, 0x3f7d70a4    # 0.99f

    invoke-static {v0, v1, v2}, Lcom/metamoji/ui/LaserPointerCanvas;->lerp(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v0

    .line 496
    invoke-direct {p0}, Lcom/metamoji/ui/LaserPointerCanvas;->createPacket()Ljava/util/HashMap;

    move-result-object v1

    .line 497
    iget-object v2, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_local:Lcom/metamoji/ui/LaserPointerCanvas$Pointer;

    iget-object v3, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_prev:Landroid/graphics/PointF;

    invoke-direct {p0, v2, v0, v3, v1}, Lcom/metamoji/ui/LaserPointerCanvas;->quadCurveToPoint(Lcom/metamoji/ui/LaserPointerCanvas$Pointer;Landroid/graphics/PointF;Landroid/graphics/PointF;Ljava/util/HashMap;)V

    .line 498
    invoke-direct {p0, v1}, Lcom/metamoji/ui/LaserPointerCanvas;->sendPacket(Ljava/util/HashMap;)V

    .line 500
    iget-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_next:Landroid/graphics/PointF;

    iput-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_prev:Landroid/graphics/PointF;

    .line 501
    iput-wide p1, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_prevTime:J

    return-void
.end method

.method private moveToPoint(Lcom/metamoji/ui/LaserPointerCanvas$Pointer;Landroid/graphics/PointF;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ui/LaserPointerCanvas$Pointer;",
            "Landroid/graphics/PointF;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 550
    iget-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_stage:Lcom/metamoji/df/sprite/Stage;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Stage;->getZoom()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p1, p2, v0, v1}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->moveTo(Landroid/graphics/PointF;D)V

    if-nez p3, :cond_0

    return-void

    .line 556
    :cond_0
    const-string v0, "ID"

    invoke-virtual {p1}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->getSid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    sget-object p1, Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;->MOVE_TO_POINT:Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;

    invoke-virtual {p1}, Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "PH"

    invoke-virtual {p3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    iget p1, p2, Landroid/graphics/PointF;->x:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "EX"

    invoke-virtual {p3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    iget p1, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string p2, "EY"

    invoke-virtual {p3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private performPointerDirection(Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 678
    :try_start_0
    const-string v0, "ID"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 679
    const-string v1, "PH"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;->valueOf(I)Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;

    move-result-object v1

    .line 680
    sget-object v2, Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;->BEGIN:Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;

    if-ne v1, v2, :cond_0

    .line 681
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    new-instance v2, Lcom/metamoji/ui/LaserPointerCanvas$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0, p1}, Lcom/metamoji/ui/LaserPointerCanvas$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/ui/LaserPointerCanvas;Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void

    .line 693
    :cond_0
    iget-object v2, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_pointers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;

    if-nez v0, :cond_1

    goto :goto_0

    .line 700
    :cond_1
    invoke-virtual {v1}, Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;->ordinal()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    const-string v3, "EY"

    const-string v4, "EX"

    if-eq v1, v2, :cond_6

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    const/4 p1, 0x4

    if-eq v1, p1, :cond_3

    const/4 p1, 0x5

    if-eq v1, p1, :cond_2

    :goto_0
    return-void

    .line 737
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v1, Lcom/metamoji/ui/LaserPointerCanvas$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, v0}, Lcom/metamoji/ui/LaserPointerCanvas$$ExternalSyntheticLambda6;-><init>(Lcom/metamoji/ui/LaserPointerCanvas;Lcom/metamoji/ui/LaserPointerCanvas$Pointer;)V

    invoke-virtual {p1, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void

    .line 732
    :cond_3
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v1, Lcom/metamoji/ui/LaserPointerCanvas$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, v0}, Lcom/metamoji/ui/LaserPointerCanvas$$ExternalSyntheticLambda5;-><init>(Lcom/metamoji/ui/LaserPointerCanvas;Lcom/metamoji/ui/LaserPointerCanvas$Pointer;)V

    invoke-virtual {p1, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void

    .line 720
    :cond_4
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    .line 721
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->toFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 722
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->toFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 723
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    .line 724
    const-string v3, "CX"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/cm/CmUtils;->toFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 725
    const-string v3, "CY"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->toFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v2, Landroid/graphics/PointF;->y:F

    .line 726
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v3, Lcom/metamoji/ui/LaserPointerCanvas$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/metamoji/ui/LaserPointerCanvas$$ExternalSyntheticLambda4;-><init>(Lcom/metamoji/ui/LaserPointerCanvas;Lcom/metamoji/ui/LaserPointerCanvas$Pointer;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    invoke-virtual {p1, v3}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void

    .line 711
    :cond_5
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    .line 712
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->toFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 713
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->toFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v1, Landroid/graphics/PointF;->y:F

    .line 714
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v2, Lcom/metamoji/ui/LaserPointerCanvas$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v0, v1}, Lcom/metamoji/ui/LaserPointerCanvas$$ExternalSyntheticLambda3;-><init>(Lcom/metamoji/ui/LaserPointerCanvas;Lcom/metamoji/ui/LaserPointerCanvas$Pointer;Landroid/graphics/PointF;)V

    invoke-virtual {p1, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void

    .line 702
    :cond_6
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    .line 703
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->toFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 704
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->toFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v1, Landroid/graphics/PointF;->y:F

    .line 705
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v2, Lcom/metamoji/ui/LaserPointerCanvas$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0, v1}, Lcom/metamoji/ui/LaserPointerCanvas$$ExternalSyntheticLambda2;-><init>(Lcom/metamoji/ui/LaserPointerCanvas;Lcom/metamoji/ui/LaserPointerCanvas$Pointer;Landroid/graphics/PointF;)V

    invoke-virtual {p1, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 747
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "exception %s"

    invoke-static {v0, p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private quadCurveToPoint(Lcom/metamoji/ui/LaserPointerCanvas$Pointer;Landroid/graphics/PointF;Landroid/graphics/PointF;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ui/LaserPointerCanvas$Pointer;",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 576
    iget-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_stage:Lcom/metamoji/df/sprite/Stage;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Stage;->getZoom()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p1, p2, p3, v0, v1}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->quadTo(Landroid/graphics/PointF;Landroid/graphics/PointF;D)V

    if-nez p4, :cond_0

    return-void

    .line 582
    :cond_0
    const-string v0, "ID"

    invoke-virtual {p1}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->getSid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    sget-object p1, Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;->QUAD_CURVE_TO_POINT:Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;

    invoke-virtual {p1}, Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "PH"

    invoke-virtual {p4, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    iget p1, p3, Landroid/graphics/PointF;->x:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "CX"

    invoke-virtual {p4, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    iget p1, p3, Landroid/graphics/PointF;->y:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string p3, "CY"

    invoke-virtual {p4, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    iget p1, p2, Landroid/graphics/PointF;->x:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string p3, "EX"

    invoke-virtual {p4, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    iget p1, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string p2, "EY"

    invoke-virtual {p4, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private sendPacket(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 762
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/direction/note/NtLaserPointerDirectionData;->newDirectionData()Lcom/metamoji/nt/direction/note/NtLaserPointerDirectionData;

    move-result-object v0

    .line 763
    invoke-virtual {v0, p1}, Lcom/metamoji/nt/direction/note/NtLaserPointerDirectionData;->setLaserPointerData(Ljava/util/HashMap;)V

    .line 764
    iget-object p1, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_sheet:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {p1, v0}, Lcom/metamoji/nt/NtNoteController;->sendLaserPointerDirection(Lcom/metamoji/nt/direction/note/NtLaserPointerDirectionData;)V

    return-void
.end method

.method private show()V
    .locals 8

    .line 254
    iget-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    if-eqz v0, :cond_0

    return-void

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_sheet:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v0

    .line 259
    new-instance v1, Lcom/metamoji/df/sprite/Stage;

    invoke-direct {v1}, Lcom/metamoji/df/sprite/Stage;-><init>()V

    iput-object v1, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_stage:Lcom/metamoji/df/sprite/Stage;

    .line 260
    new-instance v1, Lcom/metamoji/df/sprite/Layer;

    iget-object v2, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_stage:Lcom/metamoji/df/sprite/Stage;

    invoke-direct {v1, v2}, Lcom/metamoji/df/sprite/Layer;-><init>(Lcom/metamoji/df/sprite/Stage;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Viewport;->setOverLayer2(Lcom/metamoji/df/sprite/Layer;)V

    .line 262
    new-instance v0, Lcom/metamoji/df/sprite/Sprite;

    invoke-direct {v0}, Lcom/metamoji/df/sprite/Sprite;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    .line 263
    iget-object v1, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_stage:Lcom/metamoji/df/sprite/Stage;

    invoke-virtual {v1, v0}, Lcom/metamoji/df/sprite/Stage;->setSprite(Lcom/metamoji/df/sprite/Sprite;)V

    .line 265
    iget-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_sheet:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getInteractiveEventManager()Lcom/metamoji/nt/NtInteractiveEventManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 267
    iget-object v1, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_viewportListener:Lcom/metamoji/df/sprite/ViewportListener;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtInteractiveEventManager;->addViewportListener(Lcom/metamoji/df/sprite/ViewportListener;)V

    .line 269
    :cond_1
    invoke-direct {p0}, Lcom/metamoji/ui/LaserPointerCanvas;->syncZoom()V

    .line 271
    iget-object v2, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_timer:Lcom/metamoji/cm/UiTimer;

    iget-object v3, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_fadeoutTask:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    const-wide/16 v6, 0x28

    invoke-virtual/range {v2 .. v7}, Lcom/metamoji/cm/UiTimer;->schedule(Ljava/lang/Runnable;JJ)V

    return-void
.end method

.method private syncZoom()V
    .locals 2

    .line 355
    iget-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_stage:Lcom/metamoji/df/sprite/Stage;

    iget-object v1, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_sheet:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Viewport;->getZoomScale()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Stage;->setZoom(F)V

    return-void
.end method


# virtual methods
.method cancelPointer(Lcom/metamoji/ui/LaserPointerCanvas$Pointer;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ui/LaserPointerCanvas$Pointer;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 539
    invoke-virtual {p1}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->cancel()V

    if-nez p2, :cond_0

    return-void

    .line 545
    :cond_0
    const-string v0, "ID"

    invoke-virtual {p1}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->getSid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    sget-object p1, Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;->CANCEL:Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;

    invoke-virtual {p1}, Lcom/metamoji/ui/LaserPointerCanvas$DrOvPointerPhase;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "PH"

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clear()V
    .locals 3

    const/4 v0, 0x0

    .line 336
    iput-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_local:Lcom/metamoji/ui/LaserPointerCanvas$Pointer;

    .line 337
    iget-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_pointers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;

    .line 338
    invoke-virtual {v1}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->dispose()V

    goto :goto_0

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_pointers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 342
    iget-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    if-eqz v0, :cond_1

    .line 343
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v0

    .line 346
    iget-object v1, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Graphics;->getBounds()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/metamoji/df/sprite/Sprite;->invalidate(Landroid/graphics/RectF;)V

    .line 347
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Graphics;->clear()V

    :cond_1
    return-void
.end method

.method public destroy()V
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_sheet:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_sheet:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_deviceIdInitializedListener:Lcom/metamoji/cm/ICmEventHandler;

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/direction/NsDirectionManager;->removeDeviceIdInitializedEventListener(Lcom/metamoji/cm/ICmEventHandler;)V

    .line 217
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/ui/LaserPointerCanvas;->hide()V

    return-void
.end method

.method public disable()V
    .locals 2

    .line 322
    iget-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_sheet:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->isCollabo()Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    invoke-direct {p0}, Lcom/metamoji/ui/LaserPointerCanvas;->hide()V

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_sheet:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getInteractiveEventManager()Lcom/metamoji/nt/NtInteractiveEventManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 328
    iget-object v1, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_touchListener:Lcom/metamoji/df/sprite/TouchListener;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtInteractiveEventManager;->removeTouchListener(Lcom/metamoji/df/sprite/TouchListener;)V

    :cond_1
    return-void
.end method

.method public enable()V
    .locals 2

    .line 306
    invoke-virtual {p0}, Lcom/metamoji/ui/LaserPointerCanvas;->disable()V

    .line 308
    iget-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_sheet:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->isCollabo()Z

    move-result v0

    if-nez v0, :cond_0

    .line 309
    invoke-direct {p0}, Lcom/metamoji/ui/LaserPointerCanvas;->show()V

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_sheet:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getInteractiveEventManager()Lcom/metamoji/nt/NtInteractiveEventManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 314
    iget-object v1, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_touchListener:Lcom/metamoji/df/sprite/TouchListener;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtInteractiveEventManager;->addTouchListener(Lcom/metamoji/df/sprite/TouchListener;)V

    :cond_1
    return-void
.end method

.method public getDirectionHandlerID()Ljava/lang/String;
    .locals 1

    .line 602
    const-string v0, "TheNoteLaserP"

    return-object v0
.end method

.method public getLaserPointerColor(Ljava/util/HashMap;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 668
    const-string v0, "LR"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->toDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 669
    const-string v0, "LG"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->toDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 670
    const-string v0, "LB"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->toDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    .line 671
    const-string v0, "LA"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->toDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    move-object v1, p0

    .line 673
    invoke-direct/range {v1 .. v9}, Lcom/metamoji/ui/LaserPointerCanvas;->fromPargb(DDDD)I

    move-result p1

    return p1
.end method

.method public handleDirections(Ljava/util/List;Lcom/metamoji/ns/direction/INsDirectionObserver;Ljava/lang/Runnable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/ns/direction/NsReceivedDirection;",
            ">;",
            "Lcom/metamoji/ns/direction/INsDirectionObserver;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 609
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ns/direction/NsReceivedDirection;

    .line 610
    iget-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_sheet:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    .line 614
    invoke-virtual {p2}, Lcom/metamoji/ns/direction/NsReceivedDirection;->receiveInfo()Lcom/metamoji/ns/direction/NsDirectionReceiveInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/metamoji/ns/direction/NsDirectionReceiveInfo;->boothId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 615
    invoke-virtual {p2}, Lcom/metamoji/ns/direction/NsReceivedDirection;->receiveInfo()Lcom/metamoji/ns/direction/NsDirectionReceiveInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/metamoji/ns/direction/NsDirectionReceiveInfo;->boothId:Ljava/lang/String;

    .line 616
    invoke-static {v1}, Lcom/metamoji/forSchool/ScSchoolUtils;->isPersonalLayerId(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 618
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtPageController;->isVisibleForLayerId(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    .line 619
    :cond_1
    invoke-static {v1}, Lcom/metamoji/forSchool/ScSchoolUtils;->isTeacherPersonalLayerId(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 621
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtPageController;->isVisibleForLayerId(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_0

    .line 633
    invoke-virtual {p2}, Lcom/metamoji/ns/direction/NsReceivedDirection;->direction()Ljava/lang/Object;

    move-result-object v0

    .line 634
    invoke-static {v0}, Lcom/metamoji/nt/direction/note/NtLaserPointerDirectionData;->isTargetDirection(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 635
    new-instance v1, Lcom/metamoji/nt/direction/note/NtLaserPointerDirectionData;

    invoke-direct {v1, v0}, Lcom/metamoji/nt/direction/note/NtLaserPointerDirectionData;-><init>(Ljava/lang/Object;)V

    .line 637
    invoke-virtual {v1}, Lcom/metamoji/nt/direction/note/NtLaserPointerDirectionData;->laserPointerData()Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/metamoji/ui/LaserPointerCanvas;->performPointerDirection(Ljava/util/HashMap;)V

    .line 640
    invoke-static {}, Lcom/metamoji/nt/NtNameTipInfoView;->getNameTipInfoView()Lcom/metamoji/nt/NtNameTipInfoView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 642
    invoke-virtual {p2}, Lcom/metamoji/ns/direction/NsReceivedDirection;->receiveInfo()Lcom/metamoji/ns/direction/NsDirectionReceiveInfo;

    move-result-object p2

    invoke-virtual {v0, v1, p2, p0}, Lcom/metamoji/nt/NtNameTipInfoView;->performPointerDirection(Lcom/metamoji/nt/direction/note/NtLaserPointerDirectionData;Lcom/metamoji/ns/direction/NsDirectionReceiveInfo;Lcom/metamoji/ui/LaserPointerCanvas;)V

    goto :goto_0

    .line 645
    :cond_4
    const-string p2, "received unknown direction"

    invoke-static {p2}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 650
    :cond_5
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    return-void

    :catchall_0
    move-exception p1

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 651
    throw p1
.end method

.method public init()V
    .locals 2

    .line 116
    new-instance v0, Lcom/metamoji/ui/LaserPointerCanvas$1;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/LaserPointerCanvas$1;-><init>(Lcom/metamoji/ui/LaserPointerCanvas;)V

    iput-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_touchListener:Lcom/metamoji/df/sprite/TouchListener;

    .line 138
    new-instance v0, Lcom/metamoji/ui/LaserPointerCanvas$2;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/LaserPointerCanvas$2;-><init>(Lcom/metamoji/ui/LaserPointerCanvas;)V

    iput-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_viewportListener:Lcom/metamoji/df/sprite/ViewportListener;

    .line 198
    iget-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_sheet:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->isCollabo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    invoke-direct {p0}, Lcom/metamoji/ui/LaserPointerCanvas;->show()V

    .line 205
    invoke-direct {p0}, Lcom/metamoji/ui/LaserPointerCanvas;->initIdGenerator()Z

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_sheet:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_sheet:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_deviceIdInitializedListener:Lcom/metamoji/cm/ICmEventHandler;

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/direction/NsDirectionManager;->addDeviceIdInitializedEventListener(Lcom/metamoji/cm/ICmEventHandler;)V

    :cond_1
    return-void
.end method

.method onTouchesBegan(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 4

    .line 376
    invoke-direct {p0, p1}, Lcom/metamoji/ui/LaserPointerCanvas;->getPoint(Lcom/metamoji/df/sprite/TouchEvent;)Landroid/graphics/PointF;

    move-result-object p1

    .line 378
    invoke-direct {p0}, Lcom/metamoji/ui/LaserPointerCanvas;->generateId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    .line 379
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/metamoji/ui/LaserPointerCanvas;->createPointer(Ljava/lang/String;)Lcom/metamoji/ui/LaserPointerCanvas$Pointer;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_local:Lcom/metamoji/ui/LaserPointerCanvas$Pointer;

    .line 380
    iget-object v1, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_pointers:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->getSid()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_local:Lcom/metamoji/ui/LaserPointerCanvas$Pointer;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 383
    const-string v1, "LaserPointerColor"

    sget v2, Lcom/metamoji/nt/NtUserDefaultsConstants$DefValues;->LASERPOINTER_COLOR:I

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtUserDefaults;->getIntValue(Ljava/lang/String;I)I

    move-result v1

    const v2, 0xffffff

    and-int/2addr v1, v2

    const/high16 v2, -0x1000000

    or-int/2addr v1, v2

    .line 388
    iget-object v2, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_local:Lcom/metamoji/ui/LaserPointerCanvas$Pointer;

    invoke-virtual {v2, v1}, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->setColor(I)V

    .line 389
    iget-object v1, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_local:Lcom/metamoji/ui/LaserPointerCanvas$Pointer;

    const-string v2, "LaserPointerThickness"

    const/high16 v3, 0x41200000    # 10.0f

    invoke-virtual {v0, v2, v3}, Lcom/metamoji/nt/NtUserDefaults;->getFloatValue(Ljava/lang/String;F)F

    move-result v0

    float-to-double v2, v0

    iput-wide v2, v1, Lcom/metamoji/ui/LaserPointerCanvas$Pointer;->width:D

    .line 394
    invoke-direct {p0}, Lcom/metamoji/ui/LaserPointerCanvas;->createPacket()Ljava/util/HashMap;

    move-result-object v0

    .line 395
    iget-object v1, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_local:Lcom/metamoji/ui/LaserPointerCanvas$Pointer;

    invoke-direct {p0, v1, v0}, Lcom/metamoji/ui/LaserPointerCanvas;->beginPointer(Lcom/metamoji/ui/LaserPointerCanvas$Pointer;Ljava/util/HashMap;)V

    .line 396
    invoke-direct {p0, v0}, Lcom/metamoji/ui/LaserPointerCanvas;->sendPacket(Ljava/util/HashMap;)V

    .line 398
    iput-object p1, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_prev:Landroid/graphics/PointF;

    iput-object p1, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_next:Landroid/graphics/PointF;

    .line 399
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_prevTime:J

    return-void
.end method

.method onTouchesCanceled(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 1

    .line 449
    iget-object p1, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_local:Lcom/metamoji/ui/LaserPointerCanvas$Pointer;

    if-nez p1, :cond_0

    return-void

    .line 453
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/ui/LaserPointerCanvas;->createPacket()Ljava/util/HashMap;

    move-result-object p1

    .line 454
    iget-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_local:Lcom/metamoji/ui/LaserPointerCanvas$Pointer;

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/ui/LaserPointerCanvas;->cancelPointer(Lcom/metamoji/ui/LaserPointerCanvas$Pointer;Ljava/util/HashMap;)V

    .line 455
    invoke-direct {p0, p1}, Lcom/metamoji/ui/LaserPointerCanvas;->sendPacket(Ljava/util/HashMap;)V

    const/4 p1, 0x0

    .line 457
    iput-object p1, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_local:Lcom/metamoji/ui/LaserPointerCanvas$Pointer;

    return-void
.end method

.method onTouchesEnded(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 3

    .line 429
    iget-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_local:Lcom/metamoji/ui/LaserPointerCanvas$Pointer;

    if-nez v0, :cond_0

    return-void

    .line 433
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/ui/LaserPointerCanvas;->initialMove()V

    .line 435
    invoke-direct {p0, p1}, Lcom/metamoji/ui/LaserPointerCanvas;->getPoint(Lcom/metamoji/df/sprite/TouchEvent;)Landroid/graphics/PointF;

    move-result-object p1

    .line 437
    invoke-direct {p0}, Lcom/metamoji/ui/LaserPointerCanvas;->createPacket()Ljava/util/HashMap;

    move-result-object v0

    .line 438
    iget-object v1, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_local:Lcom/metamoji/ui/LaserPointerCanvas$Pointer;

    iget-object v2, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_prev:Landroid/graphics/PointF;

    invoke-direct {p0, v1, p1, v2, v0}, Lcom/metamoji/ui/LaserPointerCanvas;->quadCurveToPoint(Lcom/metamoji/ui/LaserPointerCanvas$Pointer;Landroid/graphics/PointF;Landroid/graphics/PointF;Ljava/util/HashMap;)V

    .line 439
    invoke-direct {p0, v0}, Lcom/metamoji/ui/LaserPointerCanvas;->sendPacket(Ljava/util/HashMap;)V

    .line 441
    invoke-direct {p0}, Lcom/metamoji/ui/LaserPointerCanvas;->createPacket()Ljava/util/HashMap;

    move-result-object p1

    .line 442
    iget-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_local:Lcom/metamoji/ui/LaserPointerCanvas$Pointer;

    invoke-direct {p0, v0, p1}, Lcom/metamoji/ui/LaserPointerCanvas;->endPointer(Lcom/metamoji/ui/LaserPointerCanvas$Pointer;Ljava/util/HashMap;)V

    .line 443
    invoke-direct {p0, p1}, Lcom/metamoji/ui/LaserPointerCanvas;->sendPacket(Ljava/util/HashMap;)V

    const/4 p1, 0x0

    .line 445
    iput-object p1, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_local:Lcom/metamoji/ui/LaserPointerCanvas$Pointer;

    return-void
.end method

.method onTouchesMoved(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 6

    .line 403
    iget-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_local:Lcom/metamoji/ui/LaserPointerCanvas$Pointer;

    if-nez v0, :cond_0

    return-void

    .line 407
    :cond_0
    invoke-direct {p0, p1}, Lcom/metamoji/ui/LaserPointerCanvas;->getPoint(Lcom/metamoji/df/sprite/TouchEvent;)Landroid/graphics/PointF;

    move-result-object p1

    .line 410
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 411
    iget-wide v2, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_prevTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    iget-object v2, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_prev:Landroid/graphics/PointF;

    .line 412
    invoke-static {p1, v2}, Lcom/metamoji/ui/LaserPointerCanvas;->dist(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v2

    iget-object v3, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_stage:Lcom/metamoji/df/sprite/Stage;

    invoke-virtual {v3}, Lcom/metamoji/df/sprite/Stage;->getZoom()F

    move-result v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x41f00000    # 30.0f

    invoke-static {v3}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 413
    iput-object p1, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_next:Landroid/graphics/PointF;

    return-void

    .line 417
    :cond_1
    invoke-direct {p0}, Lcom/metamoji/ui/LaserPointerCanvas;->initialMove()V

    .line 419
    invoke-direct {p0}, Lcom/metamoji/ui/LaserPointerCanvas;->createPacket()Ljava/util/HashMap;

    move-result-object v2

    .line 420
    iget-object v3, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_prev:Landroid/graphics/PointF;

    invoke-static {p1, v3}, Lcom/metamoji/ui/LaserPointerCanvas;->mid(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v3

    .line 421
    iget-object v4, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_local:Lcom/metamoji/ui/LaserPointerCanvas$Pointer;

    iget-object v5, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_prev:Landroid/graphics/PointF;

    invoke-direct {p0, v4, v3, v5, v2}, Lcom/metamoji/ui/LaserPointerCanvas;->quadCurveToPoint(Lcom/metamoji/ui/LaserPointerCanvas$Pointer;Landroid/graphics/PointF;Landroid/graphics/PointF;Ljava/util/HashMap;)V

    .line 422
    invoke-direct {p0, v2}, Lcom/metamoji/ui/LaserPointerCanvas;->sendPacket(Ljava/util/HashMap;)V

    .line 424
    iput-object p1, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_prev:Landroid/graphics/PointF;

    iput-object p1, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_next:Landroid/graphics/PointF;

    .line 425
    iput-wide v0, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_prevTime:J

    return-void
.end method

.method public transformViewportPoint(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_stage:Lcom/metamoji/df/sprite/Stage;

    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/Stage;->spriteToStage(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    .line 222
    iget-object v0, p0, Lcom/metamoji/ui/LaserPointerCanvas;->_stage:Lcom/metamoji/df/sprite/Stage;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Stage;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/Viewport;->stageToViewport(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method
