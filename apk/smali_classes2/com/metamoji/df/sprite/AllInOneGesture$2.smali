.class Lcom/metamoji/df/sprite/AllInOneGesture$2;
.super Lcom/metamoji/df/sprite/AllInOneGesture$State;
.source "AllInOneGesture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/df/sprite/AllInOneGesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private prevX:F

.field private prevY:F

.field final synthetic this$0:Lcom/metamoji/df/sprite/AllInOneGesture;

.field private trip:F


# direct methods
.method constructor <init>(Lcom/metamoji/df/sprite/AllInOneGesture;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 234
    iput-object p1, p0, Lcom/metamoji/df/sprite/AllInOneGesture$2;->this$0:Lcom/metamoji/df/sprite/AllInOneGesture;

    invoke-direct {p0}, Lcom/metamoji/df/sprite/AllInOneGesture$State;-><init>()V

    return-void
.end method


# virtual methods
.method cancel(Landroid/view/MotionEvent;)Lcom/metamoji/df/sprite/AllInOneGesture$State;
    .locals 2

    .line 290
    iget-object v0, p0, Lcom/metamoji/df/sprite/AllInOneGesture$2;->this$0:Lcom/metamoji/df/sprite/AllInOneGesture;

    invoke-static {v0}, Lcom/metamoji/df/sprite/AllInOneGesture;->-$$Nest$mcancelHoldTimeout(Lcom/metamoji/df/sprite/AllInOneGesture;)V

    .line 291
    iget-object v0, p0, Lcom/metamoji/df/sprite/AllInOneGesture$2;->this$0:Lcom/metamoji/df/sprite/AllInOneGesture;

    sget-object v1, Lcom/metamoji/df/sprite/TouchEvent;->MOTION:Lcom/metamoji/df/sprite/TouchEvent$OnMotion;

    invoke-virtual {v1, p1}, Lcom/metamoji/df/sprite/TouchEvent$OnMotion;->init(Landroid/view/MotionEvent;)Lcom/metamoji/df/sprite/TouchEvent$OnMotion;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/AllInOneGesture;->dragCancel(Lcom/metamoji/df/sprite/TouchEvent;)V

    .line 292
    iget-object p1, p0, Lcom/metamoji/df/sprite/AllInOneGesture$2;->this$0:Lcom/metamoji/df/sprite/AllInOneGesture;

    invoke-static {p1}, Lcom/metamoji/df/sprite/AllInOneGesture;->-$$Nest$fget_0(Lcom/metamoji/df/sprite/AllInOneGesture;)Lcom/metamoji/df/sprite/AllInOneGesture$State;

    move-result-object p1

    return-object p1
.end method

.method down(Landroid/view/MotionEvent;)Lcom/metamoji/df/sprite/AllInOneGesture$State;
    .locals 1

    .line 240
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/metamoji/df/sprite/AllInOneGesture$2;->prevX:F

    .line 241
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/metamoji/df/sprite/AllInOneGesture$2;->prevY:F

    const/4 p1, 0x0

    .line 242
    iput p1, p0, Lcom/metamoji/df/sprite/AllInOneGesture$2;->trip:F

    return-object p0
.end method

.method minus(Landroid/view/MotionEvent;)Lcom/metamoji/df/sprite/AllInOneGesture$State;
    .locals 1

    .line 272
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/metamoji/df/sprite/AllInOneGesture$2;->prevX:F

    .line 273
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/metamoji/df/sprite/AllInOneGesture$2;->prevY:F

    return-object p0
.end method

.method move(Landroid/view/MotionEvent;)Lcom/metamoji/df/sprite/AllInOneGesture$State;
    .locals 3

    .line 254
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/metamoji/df/sprite/AllInOneGesture$2;->prevX:F

    sub-float/2addr v0, v1

    .line 255
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/metamoji/df/sprite/AllInOneGesture$2;->prevY:F

    sub-float/2addr v1, v2

    .line 256
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/metamoji/df/sprite/AllInOneGesture$2;->prevX:F

    .line 257
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/metamoji/df/sprite/AllInOneGesture$2;->prevY:F

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    .line 258
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 259
    iget v1, p0, Lcom/metamoji/df/sprite/AllInOneGesture$2;->trip:F

    add-float/2addr v1, v0

    iput v1, p0, Lcom/metamoji/df/sprite/AllInOneGesture$2;->trip:F

    .line 260
    iget-object v0, p0, Lcom/metamoji/df/sprite/AllInOneGesture$2;->this$0:Lcom/metamoji/df/sprite/AllInOneGesture;

    iget v0, v0, Lcom/metamoji/df/sprite/AllInOneGesture;->dragThreshold:F

    cmpl-float v0, v1, v0

    .line 264
    iget-object v1, p0, Lcom/metamoji/df/sprite/AllInOneGesture$2;->this$0:Lcom/metamoji/df/sprite/AllInOneGesture;

    if-ltz v0, :cond_0

    .line 261
    invoke-static {v1}, Lcom/metamoji/df/sprite/AllInOneGesture;->-$$Nest$mcancelHoldTimeout(Lcom/metamoji/df/sprite/AllInOneGesture;)V

    .line 262
    iget-object v0, p0, Lcom/metamoji/df/sprite/AllInOneGesture$2;->this$0:Lcom/metamoji/df/sprite/AllInOneGesture;

    invoke-static {v0}, Lcom/metamoji/df/sprite/AllInOneGesture;->-$$Nest$fget_1Drag(Lcom/metamoji/df/sprite/AllInOneGesture;)Lcom/metamoji/df/sprite/AllInOneGesture$State;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/AllInOneGesture$State;->move(Landroid/view/MotionEvent;)Lcom/metamoji/df/sprite/AllInOneGesture$State;

    move-result-object p1

    return-object p1

    .line 264
    :cond_0
    iget-boolean v0, v1, Lcom/metamoji/df/sprite/AllInOneGesture;->sensitive:Z

    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/metamoji/df/sprite/AllInOneGesture$2;->this$0:Lcom/metamoji/df/sprite/AllInOneGesture;

    iget-object v0, v0, Lcom/metamoji/df/sprite/AllInOneGesture;->dragListener:Lcom/metamoji/df/sprite/AllInOneGesture$DragListener;

    sget-object v1, Lcom/metamoji/df/sprite/TouchEvent;->WithID:Lcom/metamoji/df/sprite/TouchEvent$TouchEventWithID;

    invoke-virtual {v1, p1}, Lcom/metamoji/df/sprite/TouchEvent$TouchEventWithID;->update(Landroid/view/MotionEvent;)Lcom/metamoji/df/sprite/TouchEvent$TouchEventWithID;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/metamoji/df/sprite/AllInOneGesture$DragListener;->dragMove(Lcom/metamoji/df/sprite/TouchEvent;)V

    :cond_1
    return-object p0
.end method

.method plus(Landroid/view/MotionEvent;)Lcom/metamoji/df/sprite/AllInOneGesture$State;
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/metamoji/df/sprite/AllInOneGesture$2;->this$0:Lcom/metamoji/df/sprite/AllInOneGesture;

    invoke-static {v0}, Lcom/metamoji/df/sprite/AllInOneGesture;->-$$Nest$mcancelHoldTimeout(Lcom/metamoji/df/sprite/AllInOneGesture;)V

    .line 249
    iget-object v0, p0, Lcom/metamoji/df/sprite/AllInOneGesture$2;->this$0:Lcom/metamoji/df/sprite/AllInOneGesture;

    invoke-static {v0}, Lcom/metamoji/df/sprite/AllInOneGesture;->-$$Nest$fget_2Tap(Lcom/metamoji/df/sprite/AllInOneGesture;)Lcom/metamoji/df/sprite/AllInOneGesture$State;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/AllInOneGesture$State;->plus(Landroid/view/MotionEvent;)Lcom/metamoji/df/sprite/AllInOneGesture$State;

    move-result-object p1

    return-object p1
.end method

.method timeout()Lcom/metamoji/df/sprite/AllInOneGesture$State;
    .locals 3

    .line 297
    new-instance v0, Lcom/metamoji/df/sprite/TouchEvent$OnPoint;

    iget v1, p0, Lcom/metamoji/df/sprite/AllInOneGesture$2;->prevX:F

    iget v2, p0, Lcom/metamoji/df/sprite/AllInOneGesture$2;->prevY:F

    invoke-direct {v0, v1, v2}, Lcom/metamoji/df/sprite/TouchEvent$OnPoint;-><init>(FF)V

    .line 298
    iget-object v1, p0, Lcom/metamoji/df/sprite/AllInOneGesture$2;->this$0:Lcom/metamoji/df/sprite/AllInOneGesture;

    invoke-virtual {v1, v0}, Lcom/metamoji/df/sprite/AllInOneGesture;->dragCancel(Lcom/metamoji/df/sprite/TouchEvent;)V

    .line 299
    iget-object v1, p0, Lcom/metamoji/df/sprite/AllInOneGesture$2;->this$0:Lcom/metamoji/df/sprite/AllInOneGesture;

    iget-object v1, v1, Lcom/metamoji/df/sprite/AllInOneGesture;->holdListener:Lcom/metamoji/df/sprite/AllInOneGesture$HoldListener;

    invoke-interface {v1, v0}, Lcom/metamoji/df/sprite/AllInOneGesture$HoldListener;->holdStart(Lcom/metamoji/df/sprite/TouchEvent;)V

    .line 300
    iget-object v0, p0, Lcom/metamoji/df/sprite/AllInOneGesture$2;->this$0:Lcom/metamoji/df/sprite/AllInOneGesture;

    invoke-static {v0}, Lcom/metamoji/df/sprite/AllInOneGesture;->-$$Nest$fget_1Hold(Lcom/metamoji/df/sprite/AllInOneGesture;)Lcom/metamoji/df/sprite/AllInOneGesture$State;

    move-result-object v0

    return-object v0
.end method

.method up(Landroid/view/MotionEvent;)Lcom/metamoji/df/sprite/AllInOneGesture$State;
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/metamoji/df/sprite/AllInOneGesture$2;->this$0:Lcom/metamoji/df/sprite/AllInOneGesture;

    invoke-static {v0}, Lcom/metamoji/df/sprite/AllInOneGesture;->-$$Nest$mcancelHoldTimeout(Lcom/metamoji/df/sprite/AllInOneGesture;)V

    .line 280
    sget-object v0, Lcom/metamoji/df/sprite/TouchEvent;->MOTION:Lcom/metamoji/df/sprite/TouchEvent$OnMotion;

    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/TouchEvent$OnMotion;->init(Landroid/view/MotionEvent;)Lcom/metamoji/df/sprite/TouchEvent$OnMotion;

    move-result-object p1

    .line 281
    iget-object v0, p0, Lcom/metamoji/df/sprite/AllInOneGesture$2;->this$0:Lcom/metamoji/df/sprite/AllInOneGesture;

    iget-boolean v0, v0, Lcom/metamoji/df/sprite/AllInOneGesture;->doubleTapped:Z

    iput-boolean v0, p1, Lcom/metamoji/df/sprite/TouchEvent$OnMotion;->doubleTapped:Z

    .line 282
    iget-object v0, p0, Lcom/metamoji/df/sprite/AllInOneGesture$2;->this$0:Lcom/metamoji/df/sprite/AllInOneGesture;

    iget-object v0, v0, Lcom/metamoji/df/sprite/AllInOneGesture;->dragListener:Lcom/metamoji/df/sprite/AllInOneGesture$DragListener;

    invoke-interface {v0, p1}, Lcom/metamoji/df/sprite/AllInOneGesture$DragListener;->dragEnd(Lcom/metamoji/df/sprite/TouchEvent;)V

    .line 283
    iget-object v0, p0, Lcom/metamoji/df/sprite/AllInOneGesture$2;->this$0:Lcom/metamoji/df/sprite/AllInOneGesture;

    iget-object v0, v0, Lcom/metamoji/df/sprite/AllInOneGesture;->tapListener:Lcom/metamoji/df/sprite/AllInOneGesture$TapListener;

    invoke-interface {v0, p1}, Lcom/metamoji/df/sprite/AllInOneGesture$TapListener;->tap(Lcom/metamoji/df/sprite/TouchEvent;)V

    .line 284
    iget-object p1, p0, Lcom/metamoji/df/sprite/AllInOneGesture$2;->this$0:Lcom/metamoji/df/sprite/AllInOneGesture;

    invoke-static {p1}, Lcom/metamoji/df/sprite/AllInOneGesture;->-$$Nest$mstartDoubleTapTimeout(Lcom/metamoji/df/sprite/AllInOneGesture;)V

    .line 285
    iget-object p1, p0, Lcom/metamoji/df/sprite/AllInOneGesture$2;->this$0:Lcom/metamoji/df/sprite/AllInOneGesture;

    invoke-static {p1}, Lcom/metamoji/df/sprite/AllInOneGesture;->-$$Nest$fget_0(Lcom/metamoji/df/sprite/AllInOneGesture;)Lcom/metamoji/df/sprite/AllInOneGesture$State;

    move-result-object p1

    return-object p1
.end method
