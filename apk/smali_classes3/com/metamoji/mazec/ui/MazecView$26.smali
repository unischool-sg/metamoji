.class Lcom/metamoji/mazec/ui/MazecView$26;
.super Ljava/lang/Object;
.source "MazecView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/ui/MazecView;->setupRepeatablePopupMenuButton(Lcom/metamoji/mazec/MazecIms;Landroid/widget/ImageView;Lcom/metamoji/mazec/ui/MazecView$PopupMenuHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field popupActionRepeater_:Lcom/metamoji/mazec/ui/MazecView$PopupActionRepeater;

.field final synthetic this$0:Lcom/metamoji/mazec/ui/MazecView;

.field final synthetic val$anchorView:Landroid/widget/ImageView;

.field final synthetic val$handler:Lcom/metamoji/mazec/ui/MazecView$PopupMenuHandler;

.field final synthetic val$ims:Lcom/metamoji/mazec/MazecIms;


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/ui/MazecView;Lcom/metamoji/mazec/ui/MazecView$PopupMenuHandler;Landroid/widget/ImageView;Lcom/metamoji/mazec/MazecIms;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1349
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$26;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    iput-object p2, p0, Lcom/metamoji/mazec/ui/MazecView$26;->val$handler:Lcom/metamoji/mazec/ui/MazecView$PopupMenuHandler;

    iput-object p3, p0, Lcom/metamoji/mazec/ui/MazecView$26;->val$anchorView:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/metamoji/mazec/ui/MazecView$26;->val$ims:Lcom/metamoji/mazec/MazecIms;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1350
    new-instance p3, Lcom/metamoji/mazec/ui/MazecView$PopupActionRepeater;

    invoke-direct {p3, p1, p2}, Lcom/metamoji/mazec/ui/MazecView$PopupActionRepeater;-><init>(Lcom/metamoji/mazec/ui/MazecView;Lcom/metamoji/mazec/ui/MazecView$PopupMenuExecutor;)V

    iput-object p3, p0, Lcom/metamoji/mazec/ui/MazecView$26;->popupActionRepeater_:Lcom/metamoji/mazec/ui/MazecView$PopupActionRepeater;

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1354
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eq v0, v1, :cond_5

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    const/4 p2, 0x3

    if-eq v0, p2, :cond_0

    goto/16 :goto_2

    .line 1427
    :cond_0
    iget-object p2, p0, Lcom/metamoji/mazec/ui/MazecView$26;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-virtual {p2}, Lcom/metamoji/mazec/ui/MazecView;->stopRepeat()V

    .line 1429
    iget-object p2, p0, Lcom/metamoji/mazec/ui/MazecView$26;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {p2}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fgetmPopupMenu(Lcom/metamoji/mazec/ui/MazecView;)Lcom/metamoji/mazec/ui/PopupMenu;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 1430
    iget-object p2, p0, Lcom/metamoji/mazec/ui/MazecView$26;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {p2}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fgetmPopupMenu(Lcom/metamoji/mazec/ui/MazecView;)Lcom/metamoji/mazec/ui/PopupMenu;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/mazec/ui/PopupMenu;->dismiss()V

    .line 1431
    iget-object p2, p0, Lcom/metamoji/mazec/ui/MazecView$26;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {p2, v2}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fputmPopupMenu(Lcom/metamoji/mazec/ui/MazecView;Lcom/metamoji/mazec/ui/PopupMenu;)V

    .line 1434
    :cond_1
    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setPressed(Z)V

    goto/16 :goto_2

    .line 1381
    :cond_2
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$26;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {p1}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fgetmPopupMenu(Lcom/metamoji/mazec/ui/MazecView;)Lcom/metamoji/mazec/ui/PopupMenu;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1382
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$26;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {p1}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fgetmPopupMenu(Lcom/metamoji/mazec/ui/MazecView;)Lcom/metamoji/mazec/ui/PopupMenu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/mazec/ui/PopupMenu;->getSelectedLevel()I

    move-result p1

    .line 1384
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView$26;->val$ims:Lcom/metamoji/mazec/MazecIms;

    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->notifyInputViewTouched()V

    .line 1385
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView$26;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {v0}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fgetmPopupMenu(Lcom/metamoji/mazec/ui/MazecView;)Lcom/metamoji/mazec/ui/PopupMenu;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {v0, v1, p2}, Lcom/metamoji/mazec/ui/PopupMenu;->onTouch(II)V

    .line 1387
    iget-object p2, p0, Lcom/metamoji/mazec/ui/MazecView$26;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {p2}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fgetmPopupMenu(Lcom/metamoji/mazec/ui/MazecView;)Lcom/metamoji/mazec/ui/PopupMenu;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/mazec/ui/PopupMenu;->getSelectedLevel()I

    move-result p2

    if-eq p1, p2, :cond_4

    .line 1389
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView$26;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {v0}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fgetmPopupMenu(Lcom/metamoji/mazec/ui/MazecView;)Lcom/metamoji/mazec/ui/PopupMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/PopupMenu;->getNonSelectLevel()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 1391
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$26;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    iget-object p2, p0, Lcom/metamoji/mazec/ui/MazecView$26;->popupActionRepeater_:Lcom/metamoji/mazec/ui/MazecView$PopupActionRepeater;

    invoke-virtual {p1, p2}, Lcom/metamoji/mazec/ui/MazecView;->startRepeat(Lcom/metamoji/mazec/ui/MazecView$Repeater;)V

    goto :goto_0

    :cond_3
    if-ne p2, v0, :cond_4

    .line 1393
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$26;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-virtual {p1}, Lcom/metamoji/mazec/ui/MazecView;->stopRepeat()V

    :cond_4
    :goto_0
    return v3

    .line 1400
    :cond_5
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView$26;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/MazecView;->stopRepeat()V

    .line 1402
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView$26;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {v0}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fgetmDelayedPopupCreator_(Lcom/metamoji/mazec/ui/MazecView;)Lcom/metamoji/mazec/ui/MazecView$DelayedPopupCreator;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1403
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView$26;->val$ims:Lcom/metamoji/mazec/MazecIms;

    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v4, p0, Lcom/metamoji/mazec/ui/MazecView$26;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {v4}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fgetmDelayedPopupCreator_(Lcom/metamoji/mazec/ui/MazecView;)Lcom/metamoji/mazec/ui/MazecView$DelayedPopupCreator;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1404
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView$26;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {v0, v2}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fputmDelayedPopupCreator_(Lcom/metamoji/mazec/ui/MazecView;Lcom/metamoji/mazec/ui/MazecView$DelayedPopupCreator;)V

    .line 1407
    :cond_6
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView$26;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {v0}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fgetmPopupMenu(Lcom/metamoji/mazec/ui/MazecView;)Lcom/metamoji/mazec/ui/PopupMenu;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 1408
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView$26;->val$ims:Lcom/metamoji/mazec/MazecIms;

    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->notifyInputViewTouched()V

    .line 1410
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView$26;->popupActionRepeater_:Lcom/metamoji/mazec/ui/MazecView$PopupActionRepeater;

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/MazecView$PopupActionRepeater;->getExecuteCount()I

    move-result v0

    if-nez v0, :cond_7

    .line 1411
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView$26;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {v0}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fgetmPopupMenu(Lcom/metamoji/mazec/ui/MazecView;)Lcom/metamoji/mazec/ui/PopupMenu;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {v0, v4, p2}, Lcom/metamoji/mazec/ui/PopupMenu;->onTouch(II)V

    .line 1412
    iget-object p2, p0, Lcom/metamoji/mazec/ui/MazecView$26;->val$handler:Lcom/metamoji/mazec/ui/MazecView$PopupMenuHandler;

    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView$26;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {v0}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fgetmPopupMenu(Lcom/metamoji/mazec/ui/MazecView;)Lcom/metamoji/mazec/ui/PopupMenu;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/metamoji/mazec/ui/MazecView$PopupMenuHandler;->execute(Lcom/metamoji/mazec/ui/PopupMenu;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 1413
    iget-object p2, p0, Lcom/metamoji/mazec/ui/MazecView$26;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-virtual {p2, v3}, Lcom/metamoji/mazec/ui/MazecView;->playSoundEffect(I)V

    .line 1417
    :cond_7
    iget-object p2, p0, Lcom/metamoji/mazec/ui/MazecView$26;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {p2}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fgetmPopupMenu(Lcom/metamoji/mazec/ui/MazecView;)Lcom/metamoji/mazec/ui/PopupMenu;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/mazec/ui/PopupMenu;->dismiss()V

    .line 1418
    iget-object p2, p0, Lcom/metamoji/mazec/ui/MazecView$26;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {p2, v2}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fputmPopupMenu(Lcom/metamoji/mazec/ui/MazecView;Lcom/metamoji/mazec/ui/PopupMenu;)V

    goto :goto_1

    .line 1420
    :cond_8
    iget-object p2, p0, Lcom/metamoji/mazec/ui/MazecView$26;->val$handler:Lcom/metamoji/mazec/ui/MazecView$PopupMenuHandler;

    invoke-virtual {p2}, Lcom/metamoji/mazec/ui/MazecView$PopupMenuHandler;->execute()Z

    .line 1423
    :goto_1
    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setPressed(Z)V

    goto :goto_2

    .line 1357
    :cond_9
    iget-object p2, p0, Lcom/metamoji/mazec/ui/MazecView$26;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {p2}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$mnotifyButtonClicked(Lcom/metamoji/mazec/ui/MazecView;)V

    .line 1358
    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 1360
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$26;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-virtual {p1}, Lcom/metamoji/mazec/ui/MazecView;->clearPopup()V

    .line 1361
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$26;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    new-instance p2, Lcom/metamoji/mazec/ui/MazecView$26$1;

    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView$26;->val$handler:Lcom/metamoji/mazec/ui/MazecView$PopupMenuHandler;

    iget-object v2, p0, Lcom/metamoji/mazec/ui/MazecView$26;->val$anchorView:Landroid/widget/ImageView;

    invoke-direct {p2, p0, v0, v2}, Lcom/metamoji/mazec/ui/MazecView$26$1;-><init>(Lcom/metamoji/mazec/ui/MazecView$26;Lcom/metamoji/mazec/ui/MazecView$PopupMenuCreator;Landroid/widget/ImageView;)V

    invoke-static {p1, p2}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fputmDelayedPopupCreator_(Lcom/metamoji/mazec/ui/MazecView;Lcom/metamoji/mazec/ui/MazecView$DelayedPopupCreator;)V

    .line 1374
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$26;->val$ims:Lcom/metamoji/mazec/MazecIms;

    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/mazec/ui/MazecView$26;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {p2}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fgetmDelayedPopupCreator_(Lcom/metamoji/mazec/ui/MazecView;)Lcom/metamoji/mazec/ui/MazecView$DelayedPopupCreator;

    move-result-object p2

    const-wide/16 v2, 0x12c

    invoke-virtual {p1, p2, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1376
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$26;->popupActionRepeater_:Lcom/metamoji/mazec/ui/MazecView$PopupActionRepeater;

    invoke-virtual {p1}, Lcom/metamoji/mazec/ui/MazecView$PopupActionRepeater;->reset()V

    .line 1377
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$26;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    iget-object p2, p0, Lcom/metamoji/mazec/ui/MazecView$26;->popupActionRepeater_:Lcom/metamoji/mazec/ui/MazecView$PopupActionRepeater;

    invoke-virtual {p1, p2}, Lcom/metamoji/mazec/ui/MazecView;->startRepeat(Lcom/metamoji/mazec/ui/MazecView$Repeater;)V

    :goto_2
    return v1
.end method
