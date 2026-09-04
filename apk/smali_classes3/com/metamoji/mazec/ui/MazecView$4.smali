.class Lcom/metamoji/mazec/ui/MazecView$4;
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

    .line 470
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$4;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13

    .line 473
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v0

    .line 474
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_6

    if-eq v1, v4, :cond_5

    const/4 p1, 0x3

    if-eq v1, v3, :cond_0

    if-eq v1, p1, :cond_5

    goto/16 :goto_1

    .line 495
    :cond_0
    iget-object v1, p0, Lcom/metamoji/mazec/ui/MazecView$4;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {v1}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fgetmPopupCurKeys(Lcom/metamoji/mazec/ui/MazecView;)Lcom/metamoji/mazec/ui/CursorKeysPopuper;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 496
    iget-object v1, p0, Lcom/metamoji/mazec/ui/MazecView$4;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {v1}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fgetmPopupCurKeys(Lcom/metamoji/mazec/ui/MazecView;)Lcom/metamoji/mazec/ui/CursorKeysPopuper;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {v1, v5, p2}, Lcom/metamoji/mazec/ui/CursorKeysPopuper;->touch(II)I

    move-result p2

    if-eqz p2, :cond_4

    .line 499
    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->notifyInputViewTouched()V

    .line 501
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView$4;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/MazecView;->stopRepeat()V

    if-eq p2, p1, :cond_4

    .line 505
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView$4;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {v0}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fgetmPopupCurKeys(Lcom/metamoji/mazec/ui/MazecView;)Lcom/metamoji/mazec/ui/CursorKeysPopuper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/CursorKeysPopuper;->getKeyType()I

    move-result v0

    const/16 v1, 0xc8

    const/16 v5, 0x15

    if-eq v0, v4, :cond_2

    const/16 v4, 0x190

    if-eq v0, v3, :cond_1

    const/16 v5, 0x16

    if-eq v0, p1, :cond_1

    const/4 p1, 0x4

    if-eq v0, p1, :cond_2

    const/4 v5, -0x1

    :cond_1
    move v1, v4

    :cond_2
    if-lez v5, :cond_4

    .line 524
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$4;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    if-ne p2, v3, :cond_3

    move p2, v1

    goto :goto_0

    :cond_3
    const/16 p2, 0x2bc

    :goto_0
    invoke-virtual {p1, v5, p2, v1}, Lcom/metamoji/mazec/ui/MazecView;->startRepeatKey(III)V

    :cond_4
    return v2

    .line 538
    :cond_5
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$4;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-virtual {p1}, Lcom/metamoji/mazec/ui/MazecView;->stopRepeat()V

    .line 539
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$4;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {p1}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fgetmPopupCurKeys(Lcom/metamoji/mazec/ui/MazecView;)Lcom/metamoji/mazec/ui/CursorKeysPopuper;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 540
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$4;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {p1}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fgetmPopupCurKeys(Lcom/metamoji/mazec/ui/MazecView;)Lcom/metamoji/mazec/ui/CursorKeysPopuper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/mazec/ui/CursorKeysPopuper;->dismiss()V

    .line 541
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$4;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fputmPopupCurKeys(Lcom/metamoji/mazec/ui/MazecView;Lcom/metamoji/mazec/ui/CursorKeysPopuper;)V

    goto :goto_1

    .line 476
    :cond_6
    iget-object p2, p0, Lcom/metamoji/mazec/ui/MazecView$4;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {p2}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$mnotifyButtonClicked(Lcom/metamoji/mazec/ui/MazecView;)V

    .line 477
    iget-object p2, p0, Lcom/metamoji/mazec/ui/MazecView$4;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    new-instance v1, Lcom/metamoji/mazec/ui/CursorKeysPopupWindow;

    invoke-direct {v1, v0}, Lcom/metamoji/mazec/ui/CursorKeysPopupWindow;-><init>(Landroid/content/Context;)V

    invoke-static {p2, v1}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fputmPopupCurKeys(Lcom/metamoji/mazec/ui/MazecView;Lcom/metamoji/mazec/ui/CursorKeysPopuper;)V

    .line 478
    iget-object p2, p0, Lcom/metamoji/mazec/ui/MazecView$4;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {p2}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fgetmPopupCurKeys(Lcom/metamoji/mazec/ui/MazecView;)Lcom/metamoji/mazec/ui/CursorKeysPopuper;

    move-result-object p2

    new-instance v0, Lcom/metamoji/mazec/ui/MazecView$4$1;

    invoke-direct {v0, p0}, Lcom/metamoji/mazec/ui/MazecView$4$1;-><init>(Lcom/metamoji/mazec/ui/MazecView$4;)V

    invoke-virtual {p2, v0}, Lcom/metamoji/mazec/ui/CursorKeysPopuper;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 486
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 487
    invoke-virtual {p1, p2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 488
    new-array v0, v3, [I

    .line 489
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 490
    iget-object v1, p0, Lcom/metamoji/mazec/ui/MazecView$4;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {v1}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fgetmPopupCurKeys(Lcom/metamoji/mazec/ui/MazecView;)Lcom/metamoji/mazec/ui/CursorKeysPopuper;

    move-result-object v5

    iget-object v6, p0, Lcom/metamoji/mazec/ui/MazecView$4;->this$0:Lcom/metamoji/mazec/ui/MazecView;

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
    :goto_1
    return v4
.end method
