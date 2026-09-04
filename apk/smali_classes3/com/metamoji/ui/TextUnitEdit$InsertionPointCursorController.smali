.class Lcom/metamoji/ui/TextUnitEdit$InsertionPointCursorController;
.super Lcom/metamoji/ui/TextUnitEdit$CursorController;
.source "TextUnitEdit.java"

# interfaces
.implements Lcom/metamoji/ui/TextUnitEdit$TextViewPositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/TextUnitEdit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InsertionPointCursorController"
.end annotation


# static fields
.field private static final DELAY_BEFORE_FADE_OUT:I = 0xbb8


# instance fields
.field private final mHandle:Lcom/metamoji/ui/TextUnitEdit$HandleView;

.field private final mHider:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/metamoji/ui/TextUnitEdit;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/TextUnitEdit;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1622
    iput-object p1, p0, Lcom/metamoji/ui/TextUnitEdit$InsertionPointCursorController;->this$0:Lcom/metamoji/ui/TextUnitEdit;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/metamoji/ui/TextUnitEdit$CursorController;-><init>(Lcom/metamoji/ui/TextUnitEdit;Lcom/metamoji/ui/TextUnitEdit-IA;)V

    .line 1616
    new-instance v0, Lcom/metamoji/ui/TextUnitEdit$InsertionPointCursorController$1;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/TextUnitEdit$InsertionPointCursorController$1;-><init>(Lcom/metamoji/ui/TextUnitEdit$InsertionPointCursorController;)V

    iput-object v0, p0, Lcom/metamoji/ui/TextUnitEdit$InsertionPointCursorController;->mHider:Ljava/lang/Runnable;

    .line 1623
    new-instance v0, Lcom/metamoji/ui/TextUnitEdit$HandleView;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p0, v1}, Lcom/metamoji/ui/TextUnitEdit$HandleView;-><init>(Lcom/metamoji/ui/TextUnitEdit;Lcom/metamoji/ui/TextUnitEdit$CursorController;I)V

    iput-object v0, p0, Lcom/metamoji/ui/TextUnitEdit$InsertionPointCursorController;->mHandle:Lcom/metamoji/ui/TextUnitEdit$HandleView;

    return-void
.end method

.method private hideDelayed(I)V
    .locals 4

    .line 1648
    iget-object v0, p0, Lcom/metamoji/ui/TextUnitEdit$InsertionPointCursorController;->this$0:Lcom/metamoji/ui/TextUnitEdit;

    iget-object v1, p0, Lcom/metamoji/ui/TextUnitEdit$InsertionPointCursorController;->mHider:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/TextUnitEdit;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1649
    iget-object v0, p0, Lcom/metamoji/ui/TextUnitEdit$InsertionPointCursorController;->this$0:Lcom/metamoji/ui/TextUnitEdit;

    iget-object v1, p0, Lcom/metamoji/ui/TextUnitEdit$InsertionPointCursorController;->mHider:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/metamoji/ui/TextUnitEdit;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 2

    .line 1641
    iget-object v0, p0, Lcom/metamoji/ui/TextUnitEdit$InsertionPointCursorController;->mHandle:Lcom/metamoji/ui/TextUnitEdit$HandleView;

    invoke-virtual {v0}, Lcom/metamoji/ui/TextUnitEdit$HandleView;->hide()V

    .line 1642
    iget-object v0, p0, Lcom/metamoji/ui/TextUnitEdit$InsertionPointCursorController;->this$0:Lcom/metamoji/ui/TextUnitEdit;

    iget-object v1, p0, Lcom/metamoji/ui/TextUnitEdit$InsertionPointCursorController;->mHider:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/TextUnitEdit;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1644
    iget-object v0, p0, Lcom/metamoji/ui/TextUnitEdit$InsertionPointCursorController;->this$0:Lcom/metamoji/ui/TextUnitEdit;

    invoke-static {v0}, Lcom/metamoji/ui/TextUnitEdit;->-$$Nest$mgetPositionListener(Lcom/metamoji/ui/TextUnitEdit;)Lcom/metamoji/ui/TextUnitEdit$PositionListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/metamoji/ui/TextUnitEdit$PositionListener;->removeSubscriber(Lcom/metamoji/ui/TextUnitEdit$TextViewPositionListener;)V

    return-void
.end method

.method public isShowing()Z
    .locals 1

    .line 1653
    iget-object v0, p0, Lcom/metamoji/ui/TextUnitEdit$InsertionPointCursorController;->mHandle:Lcom/metamoji/ui/TextUnitEdit$HandleView;

    invoke-virtual {v0}, Lcom/metamoji/ui/TextUnitEdit$HandleView;->isShowing()Z

    move-result v0

    return v0
.end method

.method public onTouchModeChanged(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 1714
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit$InsertionPointCursorController;->hide()V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 1

    .line 1627
    iget-object v0, p0, Lcom/metamoji/ui/TextUnitEdit$InsertionPointCursorController;->this$0:Lcom/metamoji/ui/TextUnitEdit;

    invoke-static {v0}, Lcom/metamoji/ui/TextUnitEdit;->-$$Nest$misInComposition(Lcom/metamoji/ui/TextUnitEdit;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1631
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit$InsertionPointCursorController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    .line 1633
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ui/TextUnitEdit$InsertionPointCursorController;->this$0:Lcom/metamoji/ui/TextUnitEdit;

    invoke-static {v0}, Lcom/metamoji/ui/TextUnitEdit;->-$$Nest$mgetPositionListener(Lcom/metamoji/ui/TextUnitEdit;)Lcom/metamoji/ui/TextUnitEdit$PositionListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/metamoji/ui/TextUnitEdit$PositionListener;->addSubscriber(Lcom/metamoji/ui/TextUnitEdit$TextViewPositionListener;)V

    .line 1635
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit$InsertionPointCursorController;->updatePosition()V

    .line 1636
    iget-object v0, p0, Lcom/metamoji/ui/TextUnitEdit$InsertionPointCursorController;->mHandle:Lcom/metamoji/ui/TextUnitEdit$HandleView;

    invoke-virtual {v0}, Lcom/metamoji/ui/TextUnitEdit$HandleView;->show()V

    const/16 v0, 0xbb8

    .line 1637
    invoke-direct {p0, v0}, Lcom/metamoji/ui/TextUnitEdit$InsertionPointCursorController;->hideDelayed(I)V

    return-void
.end method

.method public updatePosition()V
    .locals 3

    .line 1687
    iget-object v0, p0, Lcom/metamoji/ui/TextUnitEdit$InsertionPointCursorController;->this$0:Lcom/metamoji/ui/TextUnitEdit;

    invoke-virtual {v0}, Lcom/metamoji/ui/TextUnitEdit;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v0

    .line 1696
    iget-object v1, p0, Lcom/metamoji/ui/TextUnitEdit$InsertionPointCursorController;->mHandle:Lcom/metamoji/ui/TextUnitEdit$HandleView;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/metamoji/ui/TextUnitEdit$HandleView;->positionAtCursor(Lcom/metamoji/un/text/model/TextPosition;Z)V

    return-void
.end method

.method public updatePosition(Lcom/metamoji/ui/TextUnitEdit$HandleView;Landroid/graphics/PointF;)V
    .locals 1

    .line 1674
    iget-object p1, p0, Lcom/metamoji/ui/TextUnitEdit$InsertionPointCursorController;->this$0:Lcom/metamoji/ui/TextUnitEdit;

    invoke-virtual {p1}, Lcom/metamoji/ui/TextUnitEdit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextModel;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    .line 1675
    invoke-virtual {p0, p2, p1}, Lcom/metamoji/ui/TextUnitEdit$InsertionPointCursorController;->getHysteresisPosition(Landroid/graphics/PointF;Lcom/metamoji/un/text/model/TextPosition;)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p2

    .line 1677
    invoke-virtual {p2, p1}, Lcom/metamoji/un/text/model/TextPosition;->compareTo(Lcom/metamoji/un/text/model/TextPosition;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 1678
    iget-object p1, p0, Lcom/metamoji/ui/TextUnitEdit$InsertionPointCursorController;->this$0:Lcom/metamoji/ui/TextUnitEdit;

    new-instance v0, Lcom/metamoji/un/text/model/TextRange;

    invoke-direct {v0, p2}, Lcom/metamoji/un/text/model/TextRange;-><init>(Lcom/metamoji/un/text/model/TextPosition;)V

    invoke-static {p1, v0}, Lcom/metamoji/ui/TextUnitEdit;->-$$Nest$msetSelectedTextRange(Lcom/metamoji/ui/TextUnitEdit;Lcom/metamoji/un/text/model/TextRange;)V

    .line 1679
    iget-object p1, p0, Lcom/metamoji/ui/TextUnitEdit$InsertionPointCursorController;->this$0:Lcom/metamoji/ui/TextUnitEdit;

    invoke-virtual {p1}, Lcom/metamoji/ui/TextUnitEdit;->notifySelectedRangeChanged()V

    .line 1681
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit$InsertionPointCursorController;->updatePosition()V

    :cond_0
    const/16 p1, 0xbb8

    .line 1683
    invoke-direct {p0, p1}, Lcom/metamoji/ui/TextUnitEdit$InsertionPointCursorController;->hideDelayed(I)V

    return-void
.end method
