.class Lcom/metamoji/mazec/ui/MazecView$5;
.super Ljava/lang/Object;
.source "MazecView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/ui/MazecView;->initMenuBar(Lcom/metamoji/mazec/MazecIms;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/mazec/ui/MazecView;


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/ui/MazecView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 551
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$5;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13

    .line 554
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v0

    .line 555
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_5

    if-eq v1, v4, :cond_3

    const/4 p1, 0x3

    if-eq v1, v3, :cond_0

    if-eq v1, p1, :cond_3

    goto/16 :goto_3

    .line 579
    :cond_0
    iget-object v1, p0, Lcom/metamoji/mazec/ui/MazecView$5;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {v1}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fgetmPopupCurKeys(Lcom/metamoji/mazec/ui/MazecView;)Lcom/metamoji/mazec/ui/CursorKeysPopuper;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 580
    iget-object v1, p0, Lcom/metamoji/mazec/ui/MazecView$5;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {v1}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fgetmPopupCurKeys(Lcom/metamoji/mazec/ui/MazecView;)Lcom/metamoji/mazec/ui/CursorKeysPopuper;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {v1, v4, p2}, Lcom/metamoji/mazec/ui/CursorKeysPopuper;->touch(II)I

    move-result p2

    if-eqz p2, :cond_2

    .line 583
    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->notifyInputViewTouched()V

    .line 585
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView$5;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/MazecView;->stopRepeat()V

    if-eq p2, p1, :cond_2

    .line 589
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$5;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {p1}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fgetmPopupCurKeys(Lcom/metamoji/mazec/ui/MazecView;)Lcom/metamoji/mazec/ui/CursorKeysPopuper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/mazec/ui/CursorKeysPopuper;->getKeyType()I

    move-result p1

    const/16 v0, 0x14

    const/16 v1, 0x16

    const/16 v4, 0x15

    const/16 v5, 0x13

    const/16 v6, 0xc8

    const/16 v7, 0x190

    packed-switch p1, :pswitch_data_0

    const/4 v0, -0x1

    :goto_0
    :pswitch_0
    move v6, v7

    goto :goto_1

    :pswitch_1
    move v0, v1

    goto :goto_1

    :pswitch_2
    move v0, v1

    goto :goto_0

    :pswitch_3
    move v0, v4

    goto :goto_0

    :pswitch_4
    move v0, v4

    goto :goto_1

    :pswitch_5
    move v0, v5

    goto :goto_0

    :pswitch_6
    move v0, v5

    :goto_1
    :pswitch_7
    if-lez v0, :cond_2

    .line 624
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$5;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    if-ne p2, v3, :cond_1

    move p2, v6

    goto :goto_2

    :cond_1
    const/16 p2, 0x2bc

    :goto_2
    invoke-virtual {p1, v0, p2, v6}, Lcom/metamoji/mazec/ui/MazecView;->startRepeatKey(III)V

    :cond_2
    return v2

    .line 638
    :cond_3
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$5;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {p1}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fgetmDummyCandidates(Lcom/metamoji/mazec/ui/MazecView;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 639
    invoke-virtual {v0, v2}, Lcom/metamoji/mazec/MazecIms;->setCandidatesViewShown(Z)V

    .line 641
    :cond_4
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$5;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-virtual {p1}, Lcom/metamoji/mazec/ui/MazecView;->stopRepeat()V

    .line 642
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$5;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {p1}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fgetmPopupCurKeys(Lcom/metamoji/mazec/ui/MazecView;)Lcom/metamoji/mazec/ui/CursorKeysPopuper;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 643
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$5;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {p1}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fgetmPopupCurKeys(Lcom/metamoji/mazec/ui/MazecView;)Lcom/metamoji/mazec/ui/CursorKeysPopuper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/mazec/ui/CursorKeysPopuper;->dismiss()V

    .line 644
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$5;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fputmPopupCurKeys(Lcom/metamoji/mazec/ui/MazecView;Lcom/metamoji/mazec/ui/CursorKeysPopuper;)V

    goto :goto_3

    .line 557
    :cond_5
    iget-object p2, p0, Lcom/metamoji/mazec/ui/MazecView$5;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {p2}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fgetmDummyCandidates(Lcom/metamoji/mazec/ui/MazecView;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 558
    invoke-virtual {v0, v4}, Lcom/metamoji/mazec/MazecIms;->setCandidatesViewShown(Z)V

    .line 560
    :cond_6
    iget-object p2, p0, Lcom/metamoji/mazec/ui/MazecView$5;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {p2}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$mnotifyButtonClicked(Lcom/metamoji/mazec/ui/MazecView;)V

    .line 561
    iget-object p2, p0, Lcom/metamoji/mazec/ui/MazecView$5;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    new-instance v1, Lcom/metamoji/mazec/ui/FullCursorKeysPopupWindow;

    invoke-direct {v1, v0}, Lcom/metamoji/mazec/ui/FullCursorKeysPopupWindow;-><init>(Landroid/content/Context;)V

    invoke-static {p2, v1}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fputmPopupCurKeys(Lcom/metamoji/mazec/ui/MazecView;Lcom/metamoji/mazec/ui/CursorKeysPopuper;)V

    .line 562
    iget-object p2, p0, Lcom/metamoji/mazec/ui/MazecView$5;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {p2}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fgetmPopupCurKeys(Lcom/metamoji/mazec/ui/MazecView;)Lcom/metamoji/mazec/ui/CursorKeysPopuper;

    move-result-object p2

    new-instance v0, Lcom/metamoji/mazec/ui/MazecView$5$1;

    invoke-direct {v0, p0}, Lcom/metamoji/mazec/ui/MazecView$5$1;-><init>(Lcom/metamoji/mazec/ui/MazecView$5;)V

    invoke-virtual {p2, v0}, Lcom/metamoji/mazec/ui/CursorKeysPopuper;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 570
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 571
    invoke-virtual {p1, p2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 572
    new-array v0, v3, [I

    .line 573
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 574
    iget-object v1, p0, Lcom/metamoji/mazec/ui/MazecView$5;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {v1}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fgetmPopupCurKeys(Lcom/metamoji/mazec/ui/MazecView;)Lcom/metamoji/mazec/ui/CursorKeysPopuper;

    move-result-object v5

    iget-object v6, p0, Lcom/metamoji/mazec/ui/MazecView$5;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    aget v7, v0, v2

    aget v8, v0, v4

    iget v9, p2, Landroid/graphics/Rect;->left:I

    iget v10, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v11

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v12

    invoke-virtual/range {v5 .. v12}, Lcom/metamoji/mazec/ui/CursorKeysPopuper;->popup(Landroid/view/View;IIIIII)V

    :cond_7
    :goto_3
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method
