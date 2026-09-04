.class Lcom/metamoji/mazec/ui/MazecView$17;
.super Ljava/lang/Object;
.source "MazecView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/ui/MazecView;->initMenuButton(Lcom/metamoji/mazec/MazecIms;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/mazec/ui/MazecView;

.field final synthetic val$ims:Lcom/metamoji/mazec/MazecIms;


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/ui/MazecView;Lcom/metamoji/mazec/MazecIms;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 881
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$17;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    iput-object p2, p0, Lcom/metamoji/mazec/ui/MazecView$17;->val$ims:Lcom/metamoji/mazec/MazecIms;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 884
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eq v0, v1, :cond_4

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_0

    goto/16 :goto_0

    .line 933
    :cond_0
    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 935
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$17;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {p1}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fgetmDelayedPopupCreator_(Lcom/metamoji/mazec/ui/MazecView;)Lcom/metamoji/mazec/ui/MazecView$DelayedPopupCreator;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 936
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$17;->val$ims:Lcom/metamoji/mazec/MazecIms;

    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/mazec/ui/MazecView$17;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {p2}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fgetmDelayedPopupCreator_(Lcom/metamoji/mazec/ui/MazecView;)Lcom/metamoji/mazec/ui/MazecView$DelayedPopupCreator;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 937
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$17;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {p1, v5}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fputmDelayedPopupCreator_(Lcom/metamoji/mazec/ui/MazecView;Lcom/metamoji/mazec/ui/MazecView$DelayedPopupCreator;)V

    .line 940
    :cond_1
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$17;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {p1}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fgetmPopupMenu(Lcom/metamoji/mazec/ui/MazecView;)Lcom/metamoji/mazec/ui/PopupMenu;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 941
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$17;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {p1}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fgetmPopupMenu(Lcom/metamoji/mazec/ui/MazecView;)Lcom/metamoji/mazec/ui/PopupMenu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/mazec/ui/PopupMenu;->dismiss()V

    .line 942
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$17;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {p1, v5}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fputmPopupMenu(Lcom/metamoji/mazec/ui/MazecView;Lcom/metamoji/mazec/ui/PopupMenu;)V

    goto/16 :goto_0

    .line 902
    :cond_2
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$17;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {p1}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fgetmPopupMenu(Lcom/metamoji/mazec/ui/MazecView;)Lcom/metamoji/mazec/ui/PopupMenu;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 903
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$17;->val$ims:Lcom/metamoji/mazec/MazecIms;

    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->notifyInputViewTouched()V

    .line 904
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$17;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {p1}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fgetmPopupMenu(Lcom/metamoji/mazec/ui/MazecView;)Lcom/metamoji/mazec/ui/PopupMenu;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1, v0, p2}, Lcom/metamoji/mazec/ui/PopupMenu;->onTouch(II)V

    :cond_3
    return v4

    .line 909
    :cond_4
    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 911
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$17;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {p1}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fgetmDelayedPopupCreator_(Lcom/metamoji/mazec/ui/MazecView;)Lcom/metamoji/mazec/ui/MazecView$DelayedPopupCreator;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 912
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$17;->val$ims:Lcom/metamoji/mazec/MazecIms;

    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView$17;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {v0}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fgetmDelayedPopupCreator_(Lcom/metamoji/mazec/ui/MazecView;)Lcom/metamoji/mazec/ui/MazecView$DelayedPopupCreator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 913
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$17;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {p1, v5}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fputmDelayedPopupCreator_(Lcom/metamoji/mazec/ui/MazecView;Lcom/metamoji/mazec/ui/MazecView$DelayedPopupCreator;)V

    .line 916
    :cond_5
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$17;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {p1}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fgetmPopupMenu(Lcom/metamoji/mazec/ui/MazecView;)Lcom/metamoji/mazec/ui/PopupMenu;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 917
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$17;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {p1}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fgetmPopupMenu(Lcom/metamoji/mazec/ui/MazecView;)Lcom/metamoji/mazec/ui/PopupMenu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/mazec/ui/PopupMenu;->getSelectedLevel()I

    move-result p1

    .line 918
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView$17;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {v0}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fgetmPopupMenu(Lcom/metamoji/mazec/ui/MazecView;)Lcom/metamoji/mazec/ui/PopupMenu;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {v0, v2, p2}, Lcom/metamoji/mazec/ui/PopupMenu;->onTouch(II)V

    .line 920
    iget-object p2, p0, Lcom/metamoji/mazec/ui/MazecView$17;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {p2}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fgetmPopupMenu(Lcom/metamoji/mazec/ui/MazecView;)Lcom/metamoji/mazec/ui/PopupMenu;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/mazec/ui/PopupMenu;->dismiss()V

    .line 921
    iget-object p2, p0, Lcom/metamoji/mazec/ui/MazecView$17;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {p2, v5}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fputmPopupMenu(Lcom/metamoji/mazec/ui/MazecView;Lcom/metamoji/mazec/ui/PopupMenu;)V

    .line 923
    iget-object p2, p0, Lcom/metamoji/mazec/ui/MazecView$17;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-virtual {p2, p1}, Lcom/metamoji/mazec/ui/MazecView;->onDismissMenuBtns(I)V

    goto :goto_0

    .line 924
    :cond_6
    sget-object p1, Lcom/metamoji/mazec/BuildConfig;->DEVICE_VENDOR:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    sget-object p2, Lcom/metamoji/mazec/BuildOption$DeviceVendor;->SAMSUNG:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    if-ne p1, p2, :cond_7

    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$17;->val$ims:Lcom/metamoji/mazec/MazecIms;

    .line 925
    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->getInputMode()I

    move-result p1

    if-ne p1, v2, :cond_7

    .line 926
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$17;->val$ims:Lcom/metamoji/mazec/MazecIms;

    invoke-virtual {p1, v3}, Lcom/metamoji/mazec/MazecIms;->setInputMode(I)V

    goto :goto_0

    .line 928
    :cond_7
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$17;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/metamoji/mazec/ui/MazecView;->showMenuPopupWindow(Ljava/lang/String;)V

    goto :goto_0

    .line 886
    :cond_8
    iget-object p2, p0, Lcom/metamoji/mazec/ui/MazecView$17;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {p2}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$mnotifyButtonClicked(Lcom/metamoji/mazec/ui/MazecView;)V

    .line 887
    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 889
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$17;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-virtual {p1}, Lcom/metamoji/mazec/ui/MazecView;->clearPopup()V

    .line 890
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$17;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    new-instance p2, Lcom/metamoji/mazec/ui/MazecView$DelayedPopupCreator;

    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView$17;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    new-instance v2, Lcom/metamoji/mazec/ui/MazecView$17$1;

    invoke-direct {v2, p0}, Lcom/metamoji/mazec/ui/MazecView$17$1;-><init>(Lcom/metamoji/mazec/ui/MazecView$17;)V

    iget-object v3, p0, Lcom/metamoji/mazec/ui/MazecView$17;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {v3}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fgetmButtonMenu(Lcom/metamoji/mazec/ui/MazecView;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-direct {p2, v0, v2, v3}, Lcom/metamoji/mazec/ui/MazecView$DelayedPopupCreator;-><init>(Lcom/metamoji/mazec/ui/MazecView;Lcom/metamoji/mazec/ui/MazecView$PopupMenuCreator;Landroid/widget/ImageView;)V

    invoke-static {p1, p2}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fputmDelayedPopupCreator_(Lcom/metamoji/mazec/ui/MazecView;Lcom/metamoji/mazec/ui/MazecView$DelayedPopupCreator;)V

    .line 898
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$17;->val$ims:Lcom/metamoji/mazec/MazecIms;

    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/mazec/ui/MazecView$17;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {p2}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fgetmDelayedPopupCreator_(Lcom/metamoji/mazec/ui/MazecView;)Lcom/metamoji/mazec/ui/MazecView$DelayedPopupCreator;

    move-result-object p2

    const-wide/16 v2, 0x12c

    invoke-virtual {p1, p2, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_9
    :goto_0
    return v1
.end method
