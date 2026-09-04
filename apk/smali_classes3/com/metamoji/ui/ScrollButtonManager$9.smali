.class Lcom/metamoji/ui/ScrollButtonManager$9;
.super Ljava/lang/Object;
.source "ScrollButtonManager.java"

# interfaces
.implements Lcom/metamoji/df/sprite/TouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/ScrollButtonManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/ScrollButtonManager;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/ScrollButtonManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 550
    iput-object p1, p0, Lcom/metamoji/ui/ScrollButtonManager$9;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public touchCancel(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 0

    .line 581
    iget-object p1, p0, Lcom/metamoji/ui/ScrollButtonManager$9;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    invoke-static {p1}, Lcom/metamoji/ui/ScrollButtonManager;->-$$Nest$mreshowButtons(Lcom/metamoji/ui/ScrollButtonManager;)V

    .line 584
    iget-object p1, p0, Lcom/metamoji/ui/ScrollButtonManager$9;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    invoke-virtual {p1}, Lcom/metamoji/ui/ScrollButtonManager;->reshowSliderArrowButtons()V

    return-void
.end method

.method public touchEnd(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 0

    .line 571
    iget-object p1, p0, Lcom/metamoji/ui/ScrollButtonManager$9;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    invoke-static {p1}, Lcom/metamoji/ui/ScrollButtonManager;->-$$Nest$mreshowButtons(Lcom/metamoji/ui/ScrollButtonManager;)V

    .line 574
    iget-object p1, p0, Lcom/metamoji/ui/ScrollButtonManager$9;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    invoke-virtual {p1}, Lcom/metamoji/ui/ScrollButtonManager;->reshowSliderArrowButtons()V

    return-void
.end method

.method public touchMove(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 0

    return-void
.end method

.method public touchStart(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 0

    .line 553
    iget-object p1, p0, Lcom/metamoji/ui/ScrollButtonManager$9;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    iget-object p1, p1, Lcom/metamoji/ui/ScrollButtonManager;->_timer:Lcom/metamoji/cm/UiTimer;

    invoke-virtual {p1}, Lcom/metamoji/cm/UiTimer;->cancel()V

    .line 554
    iget-object p1, p0, Lcom/metamoji/ui/ScrollButtonManager$9;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    invoke-static {p1}, Lcom/metamoji/ui/ScrollButtonManager;->-$$Nest$mcancelButtonTimer(Lcom/metamoji/ui/ScrollButtonManager;)V

    .line 556
    iget-object p1, p0, Lcom/metamoji/ui/ScrollButtonManager$9;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    invoke-virtual {p1}, Lcom/metamoji/ui/ScrollButtonManager;->hideButtons()V

    .line 559
    iget-object p1, p0, Lcom/metamoji/ui/ScrollButtonManager$9;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    invoke-virtual {p1}, Lcom/metamoji/ui/ScrollButtonManager;->hideSliderArrowButtonsTmp()V

    return-void
.end method
