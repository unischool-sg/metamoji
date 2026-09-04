.class Lcom/metamoji/df/sprite/AllInOneGesture$1;
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
.field final synthetic this$0:Lcom/metamoji/df/sprite/AllInOneGesture;


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

    .line 223
    iput-object p1, p0, Lcom/metamoji/df/sprite/AllInOneGesture$1;->this$0:Lcom/metamoji/df/sprite/AllInOneGesture;

    invoke-direct {p0}, Lcom/metamoji/df/sprite/AllInOneGesture$State;-><init>()V

    return-void
.end method


# virtual methods
.method down(Landroid/view/MotionEvent;)Lcom/metamoji/df/sprite/AllInOneGesture$State;
    .locals 3

    .line 226
    iget-object v0, p0, Lcom/metamoji/df/sprite/AllInOneGesture$1;->this$0:Lcom/metamoji/df/sprite/AllInOneGesture;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/metamoji/df/sprite/AllInOneGesture;->-$$Nest$fputdragCanceled(Lcom/metamoji/df/sprite/AllInOneGesture;Z)V

    .line 227
    iget-object v0, p0, Lcom/metamoji/df/sprite/AllInOneGesture$1;->this$0:Lcom/metamoji/df/sprite/AllInOneGesture;

    iget-object v0, v0, Lcom/metamoji/df/sprite/AllInOneGesture;->dragListener:Lcom/metamoji/df/sprite/AllInOneGesture$DragListener;

    sget-object v2, Lcom/metamoji/df/sprite/TouchEvent;->WithID:Lcom/metamoji/df/sprite/TouchEvent$TouchEventWithID;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/metamoji/df/sprite/TouchEvent$TouchEventWithID;->init(I)Lcom/metamoji/df/sprite/TouchEvent$TouchEventWithID;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/metamoji/df/sprite/TouchEvent$TouchEventWithID;->update(Landroid/view/MotionEvent;)Lcom/metamoji/df/sprite/TouchEvent$TouchEventWithID;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/metamoji/df/sprite/AllInOneGesture$DragListener;->dragStart(Lcom/metamoji/df/sprite/TouchEvent;)V

    .line 228
    iget-object v0, p0, Lcom/metamoji/df/sprite/AllInOneGesture$1;->this$0:Lcom/metamoji/df/sprite/AllInOneGesture;

    invoke-static {v0}, Lcom/metamoji/df/sprite/AllInOneGesture;->-$$Nest$mstartHoldTimeout(Lcom/metamoji/df/sprite/AllInOneGesture;)V

    .line 229
    iget-object v0, p0, Lcom/metamoji/df/sprite/AllInOneGesture$1;->this$0:Lcom/metamoji/df/sprite/AllInOneGesture;

    invoke-static {v0}, Lcom/metamoji/df/sprite/AllInOneGesture;->-$$Nest$fget_1Tap(Lcom/metamoji/df/sprite/AllInOneGesture;)Lcom/metamoji/df/sprite/AllInOneGesture$State;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/AllInOneGesture$State;->down(Landroid/view/MotionEvent;)Lcom/metamoji/df/sprite/AllInOneGesture$State;

    move-result-object p1

    return-object p1
.end method
