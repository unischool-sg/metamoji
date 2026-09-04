.class Lcom/metamoji/df/sprite/Viewport$1;
.super Ljava/lang/Object;
.source "Viewport.java"

# interfaces
.implements Lcom/metamoji/df/sprite/AllInOneGesture$DragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/df/sprite/Viewport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/df/sprite/Viewport;


# direct methods
.method constructor <init>(Lcom/metamoji/df/sprite/Viewport;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 155
    iput-object p1, p0, Lcom/metamoji/df/sprite/Viewport$1;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dragCancel(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport$1;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-static {v0}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fgettouchListener(Lcom/metamoji/df/sprite/Viewport;)Lcom/metamoji/df/sprite/TouchListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/metamoji/df/sprite/TouchListener;->touchCancel(Lcom/metamoji/df/sprite/TouchEvent;)V

    return-void
.end method

.method public dragEnd(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport$1;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-static {v0}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fgettouchListener(Lcom/metamoji/df/sprite/Viewport;)Lcom/metamoji/df/sprite/TouchListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/metamoji/df/sprite/TouchListener;->touchEnd(Lcom/metamoji/df/sprite/TouchEvent;)V

    return-void
.end method

.method public dragMove(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport$1;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-static {v0}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fgettouchListener(Lcom/metamoji/df/sprite/Viewport;)Lcom/metamoji/df/sprite/TouchListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/metamoji/df/sprite/TouchListener;->touchMove(Lcom/metamoji/df/sprite/TouchEvent;)V

    return-void
.end method

.method public dragStart(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport$1;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-static {v0}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fgettouchListener(Lcom/metamoji/df/sprite/Viewport;)Lcom/metamoji/df/sprite/TouchListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/metamoji/df/sprite/TouchListener;->touchStart(Lcom/metamoji/df/sprite/TouchEvent;)V

    return-void
.end method
