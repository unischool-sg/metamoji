.class Lcom/metamoji/ui/TextUnitEdit$SelectionModifierCursorController;
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
    name = "SelectionModifierCursorController"
.end annotation


# instance fields
.field private mEndHandle:Lcom/metamoji/ui/TextUnitEdit$HandleView;

.field private mIsShowing:Z

.field private mStartHandle:Lcom/metamoji/ui/TextUnitEdit$HandleView;

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

    .line 1736
    iput-object p1, p0, Lcom/metamoji/ui/TextUnitEdit$SelectionModifierCursorController;->this$0:Lcom/metamoji/ui/TextUnitEdit;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/metamoji/ui/TextUnitEdit$CursorController;-><init>(Lcom/metamoji/ui/TextUnitEdit;Lcom/metamoji/ui/TextUnitEdit-IA;)V

    .line 1737
    new-instance v0, Lcom/metamoji/ui/TextUnitEdit$HandleView;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lcom/metamoji/ui/TextUnitEdit$HandleView;-><init>(Lcom/metamoji/ui/TextUnitEdit;Lcom/metamoji/ui/TextUnitEdit$CursorController;I)V

    iput-object v0, p0, Lcom/metamoji/ui/TextUnitEdit$SelectionModifierCursorController;->mStartHandle:Lcom/metamoji/ui/TextUnitEdit$HandleView;

    .line 1738
    new-instance v0, Lcom/metamoji/ui/TextUnitEdit$HandleView;

    const/4 v1, 0x2

    invoke-direct {v0, p1, p0, v1}, Lcom/metamoji/ui/TextUnitEdit$HandleView;-><init>(Lcom/metamoji/ui/TextUnitEdit;Lcom/metamoji/ui/TextUnitEdit$CursorController;I)V

    iput-object v0, p0, Lcom/metamoji/ui/TextUnitEdit$SelectionModifierCursorController;->mEndHandle:Lcom/metamoji/ui/TextUnitEdit$HandleView;

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    .line 1760
    iget-object v0, p0, Lcom/metamoji/ui/TextUnitEdit$SelectionModifierCursorController;->mStartHandle:Lcom/metamoji/ui/TextUnitEdit$HandleView;

    invoke-virtual {v0}, Lcom/metamoji/ui/TextUnitEdit$HandleView;->hide()V

    .line 1761
    iget-object v0, p0, Lcom/metamoji/ui/TextUnitEdit$SelectionModifierCursorController;->mEndHandle:Lcom/metamoji/ui/TextUnitEdit$HandleView;

    invoke-virtual {v0}, Lcom/metamoji/ui/TextUnitEdit$HandleView;->hide()V

    const/4 v0, 0x0

    .line 1762
    iput-boolean v0, p0, Lcom/metamoji/ui/TextUnitEdit$SelectionModifierCursorController;->mIsShowing:Z

    .line 1765
    iget-object v0, p0, Lcom/metamoji/ui/TextUnitEdit$SelectionModifierCursorController;->this$0:Lcom/metamoji/ui/TextUnitEdit;

    invoke-static {v0}, Lcom/metamoji/ui/TextUnitEdit;->-$$Nest$mgetPositionListener(Lcom/metamoji/ui/TextUnitEdit;)Lcom/metamoji/ui/TextUnitEdit$PositionListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/metamoji/ui/TextUnitEdit$PositionListener;->removeSubscriber(Lcom/metamoji/ui/TextUnitEdit$TextViewPositionListener;)V

    return-void
.end method

.method public isShowing()Z
    .locals 1

    .line 1774
    iget-boolean v0, p0, Lcom/metamoji/ui/TextUnitEdit$SelectionModifierCursorController;->mIsShowing:Z

    return v0
.end method

.method public onTouchModeChanged(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 1841
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit$SelectionModifierCursorController;->hide()V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 1

    .line 1743
    iget-object v0, p0, Lcom/metamoji/ui/TextUnitEdit$SelectionModifierCursorController;->this$0:Lcom/metamoji/ui/TextUnitEdit;

    invoke-static {v0}, Lcom/metamoji/ui/TextUnitEdit;->-$$Nest$misInComposition(Lcom/metamoji/ui/TextUnitEdit;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1747
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit$SelectionModifierCursorController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    .line 1749
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ui/TextUnitEdit$SelectionModifierCursorController;->this$0:Lcom/metamoji/ui/TextUnitEdit;

    invoke-static {v0}, Lcom/metamoji/ui/TextUnitEdit;->-$$Nest$mgetPositionListener(Lcom/metamoji/ui/TextUnitEdit;)Lcom/metamoji/ui/TextUnitEdit$PositionListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/metamoji/ui/TextUnitEdit$PositionListener;->addSubscriber(Lcom/metamoji/ui/TextUnitEdit$TextViewPositionListener;)V

    const/4 v0, 0x1

    .line 1751
    iput-boolean v0, p0, Lcom/metamoji/ui/TextUnitEdit$SelectionModifierCursorController;->mIsShowing:Z

    .line 1752
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit$SelectionModifierCursorController;->updatePosition()V

    .line 1753
    iget-object v0, p0, Lcom/metamoji/ui/TextUnitEdit$SelectionModifierCursorController;->mStartHandle:Lcom/metamoji/ui/TextUnitEdit$HandleView;

    invoke-virtual {v0}, Lcom/metamoji/ui/TextUnitEdit$HandleView;->show()V

    .line 1754
    iget-object v0, p0, Lcom/metamoji/ui/TextUnitEdit$SelectionModifierCursorController;->mEndHandle:Lcom/metamoji/ui/TextUnitEdit$HandleView;

    invoke-virtual {v0}, Lcom/metamoji/ui/TextUnitEdit$HandleView;->show()V

    .line 1755
    iget-object v0, p0, Lcom/metamoji/ui/TextUnitEdit$SelectionModifierCursorController;->this$0:Lcom/metamoji/ui/TextUnitEdit;

    invoke-virtual {v0}, Lcom/metamoji/ui/TextUnitEdit;->hideInsertionPointCursorController()V

    return-void
.end method

.method public updatePosition()V
    .locals 4

    .line 1811
    invoke-virtual {p0}, Lcom/metamoji/ui/TextUnitEdit$SelectionModifierCursorController;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1815
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/TextUnitEdit$SelectionModifierCursorController;->this$0:Lcom/metamoji/ui/TextUnitEdit;

    invoke-virtual {v0}, Lcom/metamoji/ui/TextUnitEdit;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v0

    .line 1816
    iget-object v1, p0, Lcom/metamoji/ui/TextUnitEdit$SelectionModifierCursorController;->this$0:Lcom/metamoji/ui/TextUnitEdit;

    invoke-virtual {v1}, Lcom/metamoji/ui/TextUnitEdit;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v1

    .line 1817
    iget-object v2, p0, Lcom/metamoji/ui/TextUnitEdit$SelectionModifierCursorController;->mStartHandle:Lcom/metamoji/ui/TextUnitEdit$HandleView;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/metamoji/ui/TextUnitEdit$HandleView;->positionAtCursor(Lcom/metamoji/un/text/model/TextPosition;Z)V

    .line 1818
    iget-object v0, p0, Lcom/metamoji/ui/TextUnitEdit$SelectionModifierCursorController;->mEndHandle:Lcom/metamoji/ui/TextUnitEdit$HandleView;

    invoke-virtual {v0, v1, v3}, Lcom/metamoji/ui/TextUnitEdit$HandleView;->positionAtCursor(Lcom/metamoji/un/text/model/TextPosition;Z)V

    return-void
.end method

.method public updatePosition(Lcom/metamoji/ui/TextUnitEdit$HandleView;Landroid/graphics/PointF;)V
    .locals 5

    .line 1782
    iget-object v0, p0, Lcom/metamoji/ui/TextUnitEdit$SelectionModifierCursorController;->this$0:Lcom/metamoji/ui/TextUnitEdit;

    invoke-virtual {v0}, Lcom/metamoji/ui/TextUnitEdit;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v0

    .line 1783
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v1

    .line 1784
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v0

    .line 1786
    iget-object v2, p0, Lcom/metamoji/ui/TextUnitEdit$SelectionModifierCursorController;->mStartHandle:Lcom/metamoji/ui/TextUnitEdit$HandleView;

    if-ne p1, v2, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    move-object v2, v0

    .line 1787
    :goto_0
    invoke-virtual {p0, p2, v2}, Lcom/metamoji/ui/TextUnitEdit$SelectionModifierCursorController;->getHysteresisPosition(Landroid/graphics/PointF;Lcom/metamoji/un/text/model/TextPosition;)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p2

    .line 1790
    iget-object v2, p0, Lcom/metamoji/ui/TextUnitEdit$SelectionModifierCursorController;->mStartHandle:Lcom/metamoji/ui/TextUnitEdit$HandleView;

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-ne p1, v2, :cond_3

    .line 1791
    invoke-virtual {p2, v1}, Lcom/metamoji/un/text/model/TextPosition;->compareTo(Lcom/metamoji/un/text/model/TextPosition;)I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    .line 1793
    :cond_1
    iget-object p1, p0, Lcom/metamoji/ui/TextUnitEdit$SelectionModifierCursorController;->this$0:Lcom/metamoji/ui/TextUnitEdit;

    invoke-virtual {p1}, Lcom/metamoji/ui/TextUnitEdit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object p1

    invoke-virtual {p1, v0, v3}, Lcom/metamoji/un/text/model/TextModel;->positionFromPosition(Lcom/metamoji/un/text/model/TextPosition;I)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    .line 1794
    invoke-virtual {p2, p1}, Lcom/metamoji/un/text/model/TextPosition;->compareTo(Lcom/metamoji/un/text/model/TextPosition;)I

    move-result v1

    if-ne v4, v1, :cond_2

    move-object p2, p1

    .line 1796
    :cond_2
    new-instance p1, Lcom/metamoji/un/text/model/TextRange;

    invoke-direct {p1, p2, v0}, Lcom/metamoji/un/text/model/TextRange;-><init>(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/TextPosition;)V

    goto :goto_2

    .line 1799
    :cond_3
    invoke-virtual {p2, v0}, Lcom/metamoji/un/text/model/TextPosition;->compareTo(Lcom/metamoji/un/text/model/TextPosition;)I

    move-result p1

    if-nez p1, :cond_4

    :goto_1
    return-void

    .line 1801
    :cond_4
    iget-object p1, p0, Lcom/metamoji/ui/TextUnitEdit$SelectionModifierCursorController;->this$0:Lcom/metamoji/ui/TextUnitEdit;

    invoke-virtual {p1}, Lcom/metamoji/ui/TextUnitEdit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object p1

    invoke-virtual {p1, v1, v4}, Lcom/metamoji/un/text/model/TextModel;->positionFromPosition(Lcom/metamoji/un/text/model/TextPosition;I)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    .line 1802
    invoke-virtual {p2, p1}, Lcom/metamoji/un/text/model/TextPosition;->compareTo(Lcom/metamoji/un/text/model/TextPosition;)I

    move-result v0

    if-ne v3, v0, :cond_5

    move-object p2, p1

    .line 1804
    :cond_5
    new-instance p1, Lcom/metamoji/un/text/model/TextRange;

    invoke-direct {p1, v1, p2}, Lcom/metamoji/un/text/model/TextRange;-><init>(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/TextPosition;)V

    .line 1806
    :goto_2
    iget-object p2, p0, Lcom/metamoji/ui/TextUnitEdit$SelectionModifierCursorController;->this$0:Lcom/metamoji/ui/TextUnitEdit;

    invoke-static {p2, p1}, Lcom/metamoji/ui/TextUnitEdit;->-$$Nest$msetSelectedTextRange(Lcom/metamoji/ui/TextUnitEdit;Lcom/metamoji/un/text/model/TextRange;)V

    .line 1807
    iget-object p1, p0, Lcom/metamoji/ui/TextUnitEdit$SelectionModifierCursorController;->this$0:Lcom/metamoji/ui/TextUnitEdit;

    invoke-virtual {p1}, Lcom/metamoji/ui/TextUnitEdit;->notifySelectedRangeChanged()V

    return-void
.end method
