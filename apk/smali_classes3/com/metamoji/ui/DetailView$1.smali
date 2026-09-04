.class Lcom/metamoji/ui/DetailView$1;
.super Ljava/lang/Object;
.source "DetailView.java"

# interfaces
.implements Lcom/metamoji/df/sprite/TouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/DetailView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/DetailView;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/DetailView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 128
    iput-object p1, p0, Lcom/metamoji/ui/DetailView$1;->this$0:Lcom/metamoji/ui/DetailView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public touchCancel(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 0

    .line 169
    iget-object p1, p0, Lcom/metamoji/ui/DetailView$1;->this$0:Lcom/metamoji/ui/DetailView;

    invoke-static {p1}, Lcom/metamoji/ui/DetailView;->-$$Nest$fget_drawProxy(Lcom/metamoji/ui/DetailView;)Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 174
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/cm/CmTaskManager;->touch()V

    .line 175
    iget-object p1, p0, Lcom/metamoji/ui/DetailView$1;->this$0:Lcom/metamoji/ui/DetailView;

    invoke-static {p1}, Lcom/metamoji/ui/DetailView;->-$$Nest$fget_drawProxy(Lcom/metamoji/ui/DetailView;)Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->touchCanceled()V

    return-void
.end method

.method public touchEnd(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/metamoji/ui/DetailView$1;->this$0:Lcom/metamoji/ui/DetailView;

    invoke-static {v0}, Lcom/metamoji/ui/DetailView;->-$$Nest$fget_drawProxy(Lcom/metamoji/ui/DetailView;)Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 155
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->touch()V

    .line 156
    iget-object v0, p0, Lcom/metamoji/ui/DetailView$1;->this$0:Lcom/metamoji/ui/DetailView;

    invoke-static {v0}, Lcom/metamoji/ui/DetailView;->-$$Nest$fget_drawProxy(Lcom/metamoji/ui/DetailView;)Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/ui/DetailView$1;->this$0:Lcom/metamoji/ui/DetailView;

    invoke-static {v1, p1}, Lcom/metamoji/ui/DetailView;->-$$Nest$mgetPoint(Lcom/metamoji/ui/DetailView;Lcom/metamoji/df/sprite/TouchEvent;)Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->touchEndedAtPoint(Landroid/graphics/PointF;)V

    .line 158
    iget-object p1, p0, Lcom/metamoji/ui/DetailView$1;->this$0:Lcom/metamoji/ui/DetailView;

    invoke-static {p1}, Lcom/metamoji/ui/DetailView;->-$$Nest$fget_traceTouchX(Lcom/metamoji/ui/DetailView;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 159
    iget-object p1, p0, Lcom/metamoji/ui/DetailView$1;->this$0:Lcom/metamoji/ui/DetailView;

    invoke-static {p1}, Lcom/metamoji/ui/DetailView;->-$$Nest$fget_dwindow(Lcom/metamoji/ui/DetailView;)Lcom/metamoji/ui/DetailWindow;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/ui/DetailWindow;->startAutoScrollTimer()V

    .line 162
    :cond_1
    iget-object p1, p0, Lcom/metamoji/ui/DetailView$1;->this$0:Lcom/metamoji/ui/DetailView;

    invoke-static {p1}, Lcom/metamoji/ui/DetailView;->-$$Nest$fget_drawProxy(Lcom/metamoji/ui/DetailView;)Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->recommendsClearOverlay()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 163
    iget-object p1, p0, Lcom/metamoji/ui/DetailView$1;->this$0:Lcom/metamoji/ui/DetailView;

    invoke-static {p1}, Lcom/metamoji/ui/DetailView;->-$$Nest$fget_drawProxy(Lcom/metamoji/ui/DetailView;)Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->clearOverlay()V

    :cond_2
    :goto_0
    return-void
.end method

.method public touchMove(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/metamoji/ui/DetailView$1;->this$0:Lcom/metamoji/ui/DetailView;

    invoke-static {v0}, Lcom/metamoji/ui/DetailView;->-$$Nest$fget_drawProxy(Lcom/metamoji/ui/DetailView;)Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 144
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->touch()V

    .line 145
    iget-object v0, p0, Lcom/metamoji/ui/DetailView$1;->this$0:Lcom/metamoji/ui/DetailView;

    invoke-static {v0}, Lcom/metamoji/ui/DetailView;->-$$Nest$fget_drawProxy(Lcom/metamoji/ui/DetailView;)Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/ui/DetailView$1;->this$0:Lcom/metamoji/ui/DetailView;

    invoke-static {v1, p1}, Lcom/metamoji/ui/DetailView;->-$$Nest$mgetPoint(Lcom/metamoji/ui/DetailView;Lcom/metamoji/df/sprite/TouchEvent;)Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->touchMovedAtPoint(Landroid/graphics/PointF;)V

    return-void
.end method

.method public touchStart(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 3

    .line 131
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->touch()V

    .line 132
    iget-object v0, p0, Lcom/metamoji/ui/DetailView$1;->this$0:Lcom/metamoji/ui/DetailView;

    invoke-static {v0}, Lcom/metamoji/ui/DetailView;->-$$Nest$fget_dwindow(Lcom/metamoji/ui/DetailView;)Lcom/metamoji/ui/DetailWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/DetailWindow;->clearAutoScrollTimer()V

    .line 133
    iget-object v0, p0, Lcom/metamoji/ui/DetailView$1;->this$0:Lcom/metamoji/ui/DetailView;

    invoke-static {v0}, Lcom/metamoji/ui/DetailView;->-$$Nest$fget_drawProxy(Lcom/metamoji/ui/DetailView;)Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->type()Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionType;

    move-result-object v1

    sget-object v2, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionType;->DRAW:Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionType;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/metamoji/ui/DetailView;->-$$Nest$fput_traceTouchX(Lcom/metamoji/ui/DetailView;Z)V

    .line 134
    iget-object v0, p0, Lcom/metamoji/ui/DetailView$1;->this$0:Lcom/metamoji/ui/DetailView;

    invoke-static {v0}, Lcom/metamoji/ui/DetailView;->-$$Nest$fget_drawProxy(Lcom/metamoji/ui/DetailView;)Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/ui/DetailView$1;->this$0:Lcom/metamoji/ui/DetailView;

    invoke-static {v1, p1}, Lcom/metamoji/ui/DetailView;->-$$Nest$mgetPoint(Lcom/metamoji/ui/DetailView;Lcom/metamoji/df/sprite/TouchEvent;)Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->touchBeganAtPoint(Landroid/graphics/PointF;)V

    return-void
.end method
