.class Lcom/metamoji/un/text/UnTextUnit$SelectionModifierCursorController;
.super Lcom/metamoji/un/text/UnTextUnit$CursorController;
.source "UnTextUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/text/UnTextUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionModifierCursorController"
.end annotation


# instance fields
.field private leftHandle:Lcom/metamoji/un/text/UnTextUnit$HandleView;

.field private rightHandle:Lcom/metamoji/un/text/UnTextUnit$HandleView;

.field final synthetic this$0:Lcom/metamoji/un/text/UnTextUnit;


# direct methods
.method public constructor <init>(Lcom/metamoji/un/text/UnTextUnit;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 9312
    iput-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$SelectionModifierCursorController;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/metamoji/un/text/UnTextUnit$CursorController;-><init>(Lcom/metamoji/un/text/UnTextUnit;Lcom/metamoji/un/text/UnTextUnit-IA;)V

    .line 9313
    new-instance v0, Lcom/metamoji/un/text/UnTextUnit$HandleView;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lcom/metamoji/un/text/UnTextUnit$HandleView;-><init>(Lcom/metamoji/un/text/UnTextUnit;Lcom/metamoji/un/text/UnTextUnit$CursorController;I)V

    iput-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$SelectionModifierCursorController;->leftHandle:Lcom/metamoji/un/text/UnTextUnit$HandleView;

    .line 9314
    new-instance v0, Lcom/metamoji/un/text/UnTextUnit$HandleView;

    const/4 v1, 0x2

    invoke-direct {v0, p1, p0, v1}, Lcom/metamoji/un/text/UnTextUnit$HandleView;-><init>(Lcom/metamoji/un/text/UnTextUnit;Lcom/metamoji/un/text/UnTextUnit$CursorController;I)V

    iput-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$SelectionModifierCursorController;->rightHandle:Lcom/metamoji/un/text/UnTextUnit$HandleView;

    return-void
.end method


# virtual methods
.method public forSelection()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hideImmediately()V
    .locals 1

    .line 9380
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$SelectionModifierCursorController;->leftHandle:Lcom/metamoji/un/text/UnTextUnit$HandleView;

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit$HandleView;->hideImmediately()V

    .line 9381
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$SelectionModifierCursorController;->rightHandle:Lcom/metamoji/un/text/UnTextUnit$HandleView;

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit$HandleView;->hideImmediately()V

    return-void
.end method

.method public isShowing()Z
    .locals 1

    .line 9385
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$SelectionModifierCursorController;->leftHandle:Lcom/metamoji/un/text/UnTextUnit$HandleView;

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit$HandleView;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$SelectionModifierCursorController;->rightHandle:Lcom/metamoji/un/text/UnTextUnit$HandleView;

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit$HandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public killFocus()V
    .locals 1

    .line 9335
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$SelectionModifierCursorController;->leftHandle:Lcom/metamoji/un/text/UnTextUnit$HandleView;

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit$HandleView;->killFocus()V

    .line 9336
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$SelectionModifierCursorController;->rightHandle:Lcom/metamoji/un/text/UnTextUnit$HandleView;

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit$HandleView;->killFocus()V

    return-void
.end method

.method public setFocus()V
    .locals 1

    .line 9325
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$SelectionModifierCursorController;->leftHandle:Lcom/metamoji/un/text/UnTextUnit$HandleView;

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit$HandleView;->setFocus()V

    .line 9326
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$SelectionModifierCursorController;->rightHandle:Lcom/metamoji/un/text/UnTextUnit$HandleView;

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit$HandleView;->setFocus()V

    .line 9328
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit$SelectionModifierCursorController;->updateRotate()V

    return-void
.end method

.method public show()V
    .locals 1

    .line 9361
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit$SelectionModifierCursorController;->updatePosition()V

    .line 9363
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$SelectionModifierCursorController;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->hideInsertionPointCursorController()V

    .line 9364
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$SelectionModifierCursorController;->leftHandle:Lcom/metamoji/un/text/UnTextUnit$HandleView;

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit$HandleView;->show()V

    .line 9365
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$SelectionModifierCursorController;->rightHandle:Lcom/metamoji/un/text/UnTextUnit$HandleView;

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit$HandleView;->show()V

    return-void
.end method

.method public updatePosition()V
    .locals 3

    .line 9389
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$SelectionModifierCursorController;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v0

    .line 9390
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v1

    .line 9391
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v0

    .line 9392
    iget-object v2, p0, Lcom/metamoji/un/text/UnTextUnit$SelectionModifierCursorController;->leftHandle:Lcom/metamoji/un/text/UnTextUnit$HandleView;

    invoke-virtual {v2, v1}, Lcom/metamoji/un/text/UnTextUnit$HandleView;->positionAtCursor(Lcom/metamoji/un/text/model/TextPosition;)V

    .line 9393
    iget-object v1, p0, Lcom/metamoji/un/text/UnTextUnit$SelectionModifierCursorController;->rightHandle:Lcom/metamoji/un/text/UnTextUnit$HandleView;

    invoke-virtual {v1, v0}, Lcom/metamoji/un/text/UnTextUnit$HandleView;->positionAtCursor(Lcom/metamoji/un/text/model/TextPosition;)V

    return-void
.end method

.method public updatePosition(Lcom/metamoji/un/text/UnTextUnit$HandleView;Landroid/graphics/PointF;)V
    .locals 5

    .line 9404
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$SelectionModifierCursorController;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v0

    .line 9405
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v1

    .line 9406
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v0

    .line 9408
    iget-object v2, p0, Lcom/metamoji/un/text/UnTextUnit$SelectionModifierCursorController;->leftHandle:Lcom/metamoji/un/text/UnTextUnit$HandleView;

    if-ne p1, v2, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    move-object v2, v0

    .line 9409
    :goto_0
    iget-object v3, p0, Lcom/metamoji/un/text/UnTextUnit$SelectionModifierCursorController;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-static {v3, p2}, Lcom/metamoji/un/text/UnTextUnit;->-$$Nest$mviewportToTextSprite(Lcom/metamoji/un/text/UnTextUnit;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p2

    .line 9410
    invoke-virtual {p0, p2, v2}, Lcom/metamoji/un/text/UnTextUnit$SelectionModifierCursorController;->getHysteresisPosition(Landroid/graphics/PointF;Lcom/metamoji/un/text/model/TextPosition;)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p2

    .line 9412
    iget-object v2, p0, Lcom/metamoji/un/text/UnTextUnit$SelectionModifierCursorController;->leftHandle:Lcom/metamoji/un/text/UnTextUnit$HandleView;

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-ne p1, v2, :cond_3

    .line 9413
    invoke-virtual {p2, v1}, Lcom/metamoji/un/text/model/TextPosition;->compareTo(Lcom/metamoji/un/text/model/TextPosition;)I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    .line 9415
    :cond_1
    iget-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$SelectionModifierCursorController;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-virtual {p1}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object p1

    invoke-virtual {p1, v0, v3}, Lcom/metamoji/un/text/model/TextModel;->positionFromPosition(Lcom/metamoji/un/text/model/TextPosition;I)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    .line 9416
    invoke-virtual {p2, p1}, Lcom/metamoji/un/text/model/TextPosition;->compareTo(Lcom/metamoji/un/text/model/TextPosition;)I

    move-result v1

    if-ne v4, v1, :cond_2

    move-object p2, p1

    .line 9418
    :cond_2
    iget-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$SelectionModifierCursorController;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    new-instance v1, Lcom/metamoji/un/text/model/TextRange;

    invoke-direct {v1, p2, v0}, Lcom/metamoji/un/text/model/TextRange;-><init>(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/TextPosition;)V

    invoke-virtual {p1, v1}, Lcom/metamoji/un/text/UnTextUnit;->setSelectedTextRange(Lcom/metamoji/un/text/model/TextRange;)V

    .line 9419
    iget-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$SelectionModifierCursorController;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-virtual {p1}, Lcom/metamoji/un/text/UnTextUnit;->notifySelectedRangeChanged()V

    return-void

    .line 9422
    :cond_3
    invoke-virtual {p2, v0}, Lcom/metamoji/un/text/model/TextPosition;->compareTo(Lcom/metamoji/un/text/model/TextPosition;)I

    move-result p1

    if-nez p1, :cond_4

    :goto_1
    return-void

    .line 9424
    :cond_4
    iget-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$SelectionModifierCursorController;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-virtual {p1}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object p1

    invoke-virtual {p1, v1, v4}, Lcom/metamoji/un/text/model/TextModel;->positionFromPosition(Lcom/metamoji/un/text/model/TextPosition;I)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    .line 9425
    invoke-virtual {p2, p1}, Lcom/metamoji/un/text/model/TextPosition;->compareTo(Lcom/metamoji/un/text/model/TextPosition;)I

    move-result v0

    if-ne v3, v0, :cond_5

    move-object p2, p1

    .line 9427
    :cond_5
    iget-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$SelectionModifierCursorController;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    new-instance v0, Lcom/metamoji/un/text/model/TextRange;

    invoke-direct {v0, v1, p2}, Lcom/metamoji/un/text/model/TextRange;-><init>(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/TextPosition;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/un/text/UnTextUnit;->setSelectedTextRange(Lcom/metamoji/un/text/model/TextRange;)V

    .line 9428
    iget-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$SelectionModifierCursorController;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-virtual {p1}, Lcom/metamoji/un/text/UnTextUnit;->notifySelectedRangeChanged()V

    return-void
.end method

.method public updateRotate()V
    .locals 4

    .line 9341
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$SelectionModifierCursorController;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-static {v0}, Lcom/metamoji/un/text/UnTextUnit;->access$300(Lcom/metamoji/un/text/UnTextUnit;)Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Sprite;->getGlobalMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x9

    .line 9344
    new-array v1, v1, [F

    .line 9345
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v0, 0x3

    .line 9346
    aget v0, v1, v0

    float-to-double v2, v0

    const/4 v0, 0x4

    aget v0, v1, v0

    float-to-double v0, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L    # 180.0

    mul-double/2addr v0, v2

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    double-to-float v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 9349
    :goto_0
    iget-object v1, p0, Lcom/metamoji/un/text/UnTextUnit$SelectionModifierCursorController;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/TextModel;->getVerticalWriting()Z

    move-result v1

    if-eqz v1, :cond_1

    const/high16 v1, 0x42b40000    # 90.0f

    sub-float/2addr v0, v1

    .line 9351
    :cond_1
    iget-object v1, p0, Lcom/metamoji/un/text/UnTextUnit$SelectionModifierCursorController;->leftHandle:Lcom/metamoji/un/text/UnTextUnit$HandleView;

    invoke-virtual {v1, v0}, Lcom/metamoji/un/text/UnTextUnit$HandleView;->setRotation(F)V

    .line 9352
    iget-object v1, p0, Lcom/metamoji/un/text/UnTextUnit$SelectionModifierCursorController;->rightHandle:Lcom/metamoji/un/text/UnTextUnit$HandleView;

    invoke-virtual {v1, v0}, Lcom/metamoji/un/text/UnTextUnit$HandleView;->setRotation(F)V

    return-void
.end method

.method public verticalWritingChanged()V
    .locals 1

    .line 9356
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$SelectionModifierCursorController;->leftHandle:Lcom/metamoji/un/text/UnTextUnit$HandleView;

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit$HandleView;->verticalWritingChanged()V

    .line 9357
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$SelectionModifierCursorController;->rightHandle:Lcom/metamoji/un/text/UnTextUnit$HandleView;

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit$HandleView;->verticalWritingChanged()V

    return-void
.end method
