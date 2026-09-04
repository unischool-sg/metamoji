.class Lcom/metamoji/df/sprite/AllInOneGesture$7;
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

    .line 497
    iput-object p1, p0, Lcom/metamoji/df/sprite/AllInOneGesture$7;->this$0:Lcom/metamoji/df/sprite/AllInOneGesture;

    invoke-direct {p0}, Lcom/metamoji/df/sprite/AllInOneGesture$State;-><init>()V

    return-void
.end method


# virtual methods
.method cancel(Landroid/view/MotionEvent;)Lcom/metamoji/df/sprite/AllInOneGesture$State;
    .locals 1

    .line 517
    iget-object v0, p0, Lcom/metamoji/df/sprite/AllInOneGesture$7;->this$0:Lcom/metamoji/df/sprite/AllInOneGesture;

    invoke-static {v0}, Lcom/metamoji/df/sprite/AllInOneGesture;->-$$Nest$fget_1Pan(Lcom/metamoji/df/sprite/AllInOneGesture;)Lcom/metamoji/df/sprite/AllInOneGesture$State;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/AllInOneGesture$State;->cancel(Landroid/view/MotionEvent;)Lcom/metamoji/df/sprite/AllInOneGesture$State;

    move-result-object p1

    return-object p1
.end method

.method minus(Landroid/view/MotionEvent;)Lcom/metamoji/df/sprite/AllInOneGesture$State;
    .locals 0

    .line 507
    iget-object p1, p0, Lcom/metamoji/df/sprite/AllInOneGesture$7;->this$0:Lcom/metamoji/df/sprite/AllInOneGesture;

    invoke-static {p1}, Lcom/metamoji/df/sprite/AllInOneGesture;->-$$Nest$fget_1Pan(Lcom/metamoji/df/sprite/AllInOneGesture;)Lcom/metamoji/df/sprite/AllInOneGesture$State;

    move-result-object p1

    return-object p1
.end method

.method move(Landroid/view/MotionEvent;)Lcom/metamoji/df/sprite/AllInOneGesture$State;
    .locals 2

    .line 501
    iget-object v0, p0, Lcom/metamoji/df/sprite/AllInOneGesture$7;->this$0:Lcom/metamoji/df/sprite/AllInOneGesture;

    iget-object v0, v0, Lcom/metamoji/df/sprite/AllInOneGesture;->panListener:Lcom/metamoji/df/sprite/AllInOneGesture$PanListener;

    sget-object v1, Lcom/metamoji/df/sprite/TouchEvent;->MOTION:Lcom/metamoji/df/sprite/TouchEvent$OnMotion;

    invoke-virtual {v1, p1}, Lcom/metamoji/df/sprite/TouchEvent$OnMotion;->init(Landroid/view/MotionEvent;)Lcom/metamoji/df/sprite/TouchEvent$OnMotion;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/metamoji/df/sprite/AllInOneGesture$PanListener;->panMove(Lcom/metamoji/df/sprite/TouchEvent;)V

    return-object p0
.end method

.method up(Landroid/view/MotionEvent;)Lcom/metamoji/df/sprite/AllInOneGesture$State;
    .locals 1

    .line 512
    iget-object v0, p0, Lcom/metamoji/df/sprite/AllInOneGesture$7;->this$0:Lcom/metamoji/df/sprite/AllInOneGesture;

    invoke-static {v0}, Lcom/metamoji/df/sprite/AllInOneGesture;->-$$Nest$fget_1Pan(Lcom/metamoji/df/sprite/AllInOneGesture;)Lcom/metamoji/df/sprite/AllInOneGesture$State;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/AllInOneGesture$State;->up(Landroid/view/MotionEvent;)Lcom/metamoji/df/sprite/AllInOneGesture$State;

    move-result-object p1

    return-object p1
.end method
