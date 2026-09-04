.class Lcom/metamoji/df/sprite/AllInOneGesture$4;
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

    .line 328
    iput-object p1, p0, Lcom/metamoji/df/sprite/AllInOneGesture$4;->this$0:Lcom/metamoji/df/sprite/AllInOneGesture;

    invoke-direct {p0}, Lcom/metamoji/df/sprite/AllInOneGesture$State;-><init>()V

    return-void
.end method


# virtual methods
.method cancel(Landroid/view/MotionEvent;)Lcom/metamoji/df/sprite/AllInOneGesture$State;
    .locals 2

    .line 358
    iget-object v0, p0, Lcom/metamoji/df/sprite/AllInOneGesture$4;->this$0:Lcom/metamoji/df/sprite/AllInOneGesture;

    sget-object v1, Lcom/metamoji/df/sprite/TouchEvent;->WithID:Lcom/metamoji/df/sprite/TouchEvent$TouchEventWithID;

    invoke-virtual {v1, p1}, Lcom/metamoji/df/sprite/TouchEvent$TouchEventWithID;->update(Landroid/view/MotionEvent;)Lcom/metamoji/df/sprite/TouchEvent$TouchEventWithID;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/AllInOneGesture;->dragCancel(Lcom/metamoji/df/sprite/TouchEvent;)V

    .line 359
    iget-object p1, p0, Lcom/metamoji/df/sprite/AllInOneGesture$4;->this$0:Lcom/metamoji/df/sprite/AllInOneGesture;

    invoke-static {p1}, Lcom/metamoji/df/sprite/AllInOneGesture;->-$$Nest$fget_0(Lcom/metamoji/df/sprite/AllInOneGesture;)Lcom/metamoji/df/sprite/AllInOneGesture$State;

    move-result-object p1

    return-object p1
.end method

.method move(Landroid/view/MotionEvent;)Lcom/metamoji/df/sprite/AllInOneGesture$State;
    .locals 4

    .line 331
    iget-object v0, p0, Lcom/metamoji/df/sprite/AllInOneGesture$4;->this$0:Lcom/metamoji/df/sprite/AllInOneGesture;

    iget-boolean v0, v0, Lcom/metamoji/df/sprite/AllInOneGesture;->useHistory:Z

    if-eqz v0, :cond_0

    .line 333
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 335
    iget-object v2, p0, Lcom/metamoji/df/sprite/AllInOneGesture$4;->this$0:Lcom/metamoji/df/sprite/AllInOneGesture;

    iget-object v2, v2, Lcom/metamoji/df/sprite/AllInOneGesture;->dragListener:Lcom/metamoji/df/sprite/AllInOneGesture$DragListener;

    sget-object v3, Lcom/metamoji/df/sprite/TouchEvent;->WithHistory:Lcom/metamoji/df/sprite/TouchEvent$TouchEventWithHistory;

    invoke-virtual {v3, p1, v1}, Lcom/metamoji/df/sprite/TouchEvent$TouchEventWithHistory;->update(Landroid/view/MotionEvent;I)Lcom/metamoji/df/sprite/TouchEvent$TouchEventWithHistory;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/metamoji/df/sprite/AllInOneGesture$DragListener;->dragMove(Lcom/metamoji/df/sprite/TouchEvent;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/metamoji/df/sprite/AllInOneGesture$4;->this$0:Lcom/metamoji/df/sprite/AllInOneGesture;

    iget-object v0, v0, Lcom/metamoji/df/sprite/AllInOneGesture;->dragListener:Lcom/metamoji/df/sprite/AllInOneGesture$DragListener;

    sget-object v1, Lcom/metamoji/df/sprite/TouchEvent;->WithID:Lcom/metamoji/df/sprite/TouchEvent$TouchEventWithID;

    invoke-virtual {v1, p1}, Lcom/metamoji/df/sprite/TouchEvent$TouchEventWithID;->update(Landroid/view/MotionEvent;)Lcom/metamoji/df/sprite/TouchEvent$TouchEventWithID;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/metamoji/df/sprite/AllInOneGesture$DragListener;->dragMove(Lcom/metamoji/df/sprite/TouchEvent;)V

    return-object p0
.end method

.method plus(Landroid/view/MotionEvent;)Lcom/metamoji/df/sprite/AllInOneGesture$State;
    .locals 2

    .line 346
    iget-object v0, p0, Lcom/metamoji/df/sprite/AllInOneGesture$4;->this$0:Lcom/metamoji/df/sprite/AllInOneGesture;

    iget-object v0, v0, Lcom/metamoji/df/sprite/AllInOneGesture;->dragListener:Lcom/metamoji/df/sprite/AllInOneGesture$DragListener;

    sget-object v1, Lcom/metamoji/df/sprite/TouchEvent;->WithID:Lcom/metamoji/df/sprite/TouchEvent$TouchEventWithID;

    invoke-virtual {v1, p1}, Lcom/metamoji/df/sprite/TouchEvent$TouchEventWithID;->update(Landroid/view/MotionEvent;)Lcom/metamoji/df/sprite/TouchEvent$TouchEventWithID;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/metamoji/df/sprite/AllInOneGesture$DragListener;->dragCancel(Lcom/metamoji/df/sprite/TouchEvent;)V

    .line 347
    iget-object v0, p0, Lcom/metamoji/df/sprite/AllInOneGesture$4;->this$0:Lcom/metamoji/df/sprite/AllInOneGesture;

    invoke-static {v0}, Lcom/metamoji/df/sprite/AllInOneGesture;->-$$Nest$fget_2Tap(Lcom/metamoji/df/sprite/AllInOneGesture;)Lcom/metamoji/df/sprite/AllInOneGesture$State;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/AllInOneGesture$State;->plus(Landroid/view/MotionEvent;)Lcom/metamoji/df/sprite/AllInOneGesture$State;

    move-result-object p1

    return-object p1
.end method

.method up(Landroid/view/MotionEvent;)Lcom/metamoji/df/sprite/AllInOneGesture$State;
    .locals 2

    .line 352
    iget-object v0, p0, Lcom/metamoji/df/sprite/AllInOneGesture$4;->this$0:Lcom/metamoji/df/sprite/AllInOneGesture;

    iget-object v0, v0, Lcom/metamoji/df/sprite/AllInOneGesture;->dragListener:Lcom/metamoji/df/sprite/AllInOneGesture$DragListener;

    sget-object v1, Lcom/metamoji/df/sprite/TouchEvent;->WithID:Lcom/metamoji/df/sprite/TouchEvent$TouchEventWithID;

    invoke-virtual {v1, p1}, Lcom/metamoji/df/sprite/TouchEvent$TouchEventWithID;->update(Landroid/view/MotionEvent;)Lcom/metamoji/df/sprite/TouchEvent$TouchEventWithID;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/metamoji/df/sprite/AllInOneGesture$DragListener;->dragEnd(Lcom/metamoji/df/sprite/TouchEvent;)V

    .line 353
    iget-object p1, p0, Lcom/metamoji/df/sprite/AllInOneGesture$4;->this$0:Lcom/metamoji/df/sprite/AllInOneGesture;

    invoke-static {p1}, Lcom/metamoji/df/sprite/AllInOneGesture;->-$$Nest$fget_0(Lcom/metamoji/df/sprite/AllInOneGesture;)Lcom/metamoji/df/sprite/AllInOneGesture$State;

    move-result-object p1

    return-object p1
.end method
