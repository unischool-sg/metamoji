.class Lcom/metamoji/ui/ScrollButtonManager$10;
.super Ljava/lang/Object;
.source "ScrollButtonManager.java"

# interfaces
.implements Lcom/metamoji/df/sprite/ViewportListener;


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

    .line 589
    iput-object p1, p0, Lcom/metamoji/ui/ScrollButtonManager$10;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public scrollChanged()V
    .locals 1

    .line 622
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager$10;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    invoke-virtual {v0}, Lcom/metamoji/ui/ScrollButtonManager;->updateButtons()V

    .line 625
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager$10;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    invoke-virtual {v0}, Lcom/metamoji/ui/ScrollButtonManager;->updateSliderArrowButtons()V

    return-void
.end method

.method public scrollChanging()V
    .locals 0

    return-void
.end method

.method public scrollEnd(Z)V
    .locals 0

    .line 600
    iget-object p1, p0, Lcom/metamoji/ui/ScrollButtonManager$10;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    invoke-virtual {p1}, Lcom/metamoji/ui/ScrollButtonManager;->updateButtons()V

    .line 603
    iget-object p1, p0, Lcom/metamoji/ui/ScrollButtonManager$10;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    invoke-virtual {p1}, Lcom/metamoji/ui/ScrollButtonManager;->updateSliderArrowButtons()V

    return-void
.end method

.method public scrollInertiaEnd(Z)V
    .locals 0

    .line 613
    iget-object p1, p0, Lcom/metamoji/ui/ScrollButtonManager$10;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    invoke-virtual {p1}, Lcom/metamoji/ui/ScrollButtonManager;->updateButtons()V

    .line 616
    iget-object p1, p0, Lcom/metamoji/ui/ScrollButtonManager$10;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    invoke-virtual {p1}, Lcom/metamoji/ui/ScrollButtonManager;->updateSliderArrowButtons()V

    return-void
.end method

.method public scrollInertiaStart()V
    .locals 0

    return-void
.end method

.method public scrollStart()V
    .locals 0

    return-void
.end method

.method public sizeChanged(II)V
    .locals 0

    .line 679
    iget-object p1, p0, Lcom/metamoji/ui/ScrollButtonManager$10;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    invoke-virtual {p1}, Lcom/metamoji/ui/ScrollButtonManager;->updateButtons()V

    .line 682
    iget-object p1, p0, Lcom/metamoji/ui/ScrollButtonManager$10;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    invoke-virtual {p1}, Lcom/metamoji/ui/ScrollButtonManager;->updateSliderArrowButtons()V

    return-void
.end method

.method public zoomChanged()V
    .locals 2

    .line 669
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager$10;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    invoke-virtual {v0}, Lcom/metamoji/ui/ScrollButtonManager;->updateButtons()V

    .line 672
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager$10;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    invoke-virtual {v0}, Lcom/metamoji/ui/ScrollButtonManager;->updateSliderArrowButtons()V

    .line 674
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager$10;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    invoke-static {v0}, Lcom/metamoji/ui/ScrollButtonManager;->-$$Nest$fget_zoomBar(Lcom/metamoji/ui/ScrollButtonManager;)Lcom/metamoji/ui/ZoomBar;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/ui/ScrollButtonManager$10;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    invoke-static {v1}, Lcom/metamoji/ui/ScrollButtonManager;->-$$Nest$fget_sheet(Lcom/metamoji/ui/ScrollButtonManager;)Lcom/metamoji/nt/NtNoteController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Stage;->getZoom()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/ZoomBar;->setZoom(F)V

    return-void
.end method

.method public zoomChanging()V
    .locals 2

    .line 639
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager$10;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    invoke-static {v0}, Lcom/metamoji/ui/ScrollButtonManager;->-$$Nest$fget_zoomBar(Lcom/metamoji/ui/ScrollButtonManager;)Lcom/metamoji/ui/ZoomBar;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/ui/ScrollButtonManager$10;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    invoke-static {v1}, Lcom/metamoji/ui/ScrollButtonManager;->-$$Nest$fget_sheet(Lcom/metamoji/ui/ScrollButtonManager;)Lcom/metamoji/nt/NtNoteController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Stage;->getZoom()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/ZoomBar;->setZoom(F)V

    return-void
.end method

.method public zoomEnd(Z)V
    .locals 1

    .line 644
    iget-object p1, p0, Lcom/metamoji/ui/ScrollButtonManager$10;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    invoke-static {p1}, Lcom/metamoji/ui/ScrollButtonManager;->-$$Nest$mreshowButtons(Lcom/metamoji/ui/ScrollButtonManager;)V

    .line 645
    iget-object p1, p0, Lcom/metamoji/ui/ScrollButtonManager$10;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    invoke-virtual {p1}, Lcom/metamoji/ui/ScrollButtonManager;->updateButtons()V

    .line 648
    iget-object p1, p0, Lcom/metamoji/ui/ScrollButtonManager$10;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    invoke-virtual {p1}, Lcom/metamoji/ui/ScrollButtonManager;->updateSliderArrowButtons()V

    .line 650
    iget-object p1, p0, Lcom/metamoji/ui/ScrollButtonManager$10;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    invoke-static {p1}, Lcom/metamoji/ui/ScrollButtonManager;->-$$Nest$fget_zoomBar(Lcom/metamoji/ui/ScrollButtonManager;)Lcom/metamoji/ui/ZoomBar;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager$10;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    invoke-static {v0}, Lcom/metamoji/ui/ScrollButtonManager;->-$$Nest$fget_sheet(Lcom/metamoji/ui/ScrollButtonManager;)Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Stage;->getZoom()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/ZoomBar;->setZoom(F)V

    return-void
.end method

.method public zoomReboundEnd(Z)V
    .locals 1

    .line 659
    iget-object p1, p0, Lcom/metamoji/ui/ScrollButtonManager$10;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    invoke-virtual {p1}, Lcom/metamoji/ui/ScrollButtonManager;->updateButtons()V

    .line 662
    iget-object p1, p0, Lcom/metamoji/ui/ScrollButtonManager$10;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    invoke-virtual {p1}, Lcom/metamoji/ui/ScrollButtonManager;->updateSliderArrowButtons()V

    .line 664
    iget-object p1, p0, Lcom/metamoji/ui/ScrollButtonManager$10;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    invoke-static {p1}, Lcom/metamoji/ui/ScrollButtonManager;->-$$Nest$fget_zoomBar(Lcom/metamoji/ui/ScrollButtonManager;)Lcom/metamoji/ui/ZoomBar;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager$10;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    invoke-static {v0}, Lcom/metamoji/ui/ScrollButtonManager;->-$$Nest$fget_sheet(Lcom/metamoji/ui/ScrollButtonManager;)Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Stage;->getZoom()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/ZoomBar;->setZoom(F)V

    return-void
.end method

.method public zoomReboundStart()V
    .locals 0

    return-void
.end method

.method public zoomStart()V
    .locals 1

    .line 631
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager$10;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    iget-object v0, v0, Lcom/metamoji/ui/ScrollButtonManager;->_timer:Lcom/metamoji/cm/UiTimer;

    invoke-virtual {v0}, Lcom/metamoji/cm/UiTimer;->cancel()V

    .line 632
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager$10;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    invoke-static {v0}, Lcom/metamoji/ui/ScrollButtonManager;->-$$Nest$mcancelButtonTimer(Lcom/metamoji/ui/ScrollButtonManager;)V

    .line 634
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager$10;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    invoke-virtual {v0}, Lcom/metamoji/ui/ScrollButtonManager;->hideButtons()V

    return-void
.end method
