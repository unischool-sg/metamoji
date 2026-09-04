.class Lcom/metamoji/un/text/UnTextUnit$InsertionPointCursorController;
.super Lcom/metamoji/un/text/UnTextUnit$CursorController;
.source "UnTextUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/text/UnTextUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InsertionPointCursorController"
.end annotation


# instance fields
.field private final handle:Lcom/metamoji/un/text/UnTextUnit$HandleView;

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

    .line 9223
    iput-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$InsertionPointCursorController;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/metamoji/un/text/UnTextUnit$CursorController;-><init>(Lcom/metamoji/un/text/UnTextUnit;Lcom/metamoji/un/text/UnTextUnit-IA;)V

    .line 9224
    new-instance v0, Lcom/metamoji/un/text/UnTextUnit$HandleView;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p0, v1}, Lcom/metamoji/un/text/UnTextUnit$HandleView;-><init>(Lcom/metamoji/un/text/UnTextUnit;Lcom/metamoji/un/text/UnTextUnit$CursorController;I)V

    iput-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$InsertionPointCursorController;->handle:Lcom/metamoji/un/text/UnTextUnit$HandleView;

    return-void
.end method

.method private hideDelayed()V
    .locals 1

    .line 9272
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$InsertionPointCursorController;->handle:Lcom/metamoji/un/text/UnTextUnit$HandleView;

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit$HandleView;->hideDelayed()V

    return-void
.end method


# virtual methods
.method public forSelection()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hideImmediately()V
    .locals 1

    .line 9277
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$InsertionPointCursorController;->handle:Lcom/metamoji/un/text/UnTextUnit$HandleView;

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit$HandleView;->hideImmediately()V

    return-void
.end method

.method public isShowing()Z
    .locals 1

    .line 9281
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$InsertionPointCursorController;->handle:Lcom/metamoji/un/text/UnTextUnit$HandleView;

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit$HandleView;->isShowing()Z

    move-result v0

    return v0
.end method

.method public killFocus()V
    .locals 1

    .line 9243
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$InsertionPointCursorController;->handle:Lcom/metamoji/un/text/UnTextUnit$HandleView;

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit$HandleView;->killFocus()V

    return-void
.end method

.method public setFocus()V
    .locals 1

    .line 9235
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$InsertionPointCursorController;->handle:Lcom/metamoji/un/text/UnTextUnit$HandleView;

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit$HandleView;->setFocus()V

    .line 9236
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit$InsertionPointCursorController;->updateRotate()V

    return-void
.end method

.method public show()V
    .locals 1

    .line 9262
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit$InsertionPointCursorController;->updatePosition()V

    .line 9263
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$InsertionPointCursorController;->handle:Lcom/metamoji/un/text/UnTextUnit$HandleView;

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit$HandleView;->show()V

    .line 9264
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit$InsertionPointCursorController;->hideDelayed()V

    return-void
.end method

.method public updatePosition()V
    .locals 2

    .line 9285
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$InsertionPointCursorController;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v0

    .line 9286
    iget-object v1, p0, Lcom/metamoji/un/text/UnTextUnit$InsertionPointCursorController;->handle:Lcom/metamoji/un/text/UnTextUnit$HandleView;

    invoke-virtual {v1, v0}, Lcom/metamoji/un/text/UnTextUnit$HandleView;->positionAtCursor(Lcom/metamoji/un/text/model/TextPosition;)V

    return-void
.end method

.method public updatePosition(Lcom/metamoji/un/text/UnTextUnit$HandleView;Landroid/graphics/PointF;)V
    .locals 1

    .line 9295
    iget-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$InsertionPointCursorController;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-static {p1, p2}, Lcom/metamoji/un/text/UnTextUnit;->-$$Nest$mviewportToTextSprite(Lcom/metamoji/un/text/UnTextUnit;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    .line 9296
    iget-object p2, p0, Lcom/metamoji/un/text/UnTextUnit$InsertionPointCursorController;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-virtual {p2}, Lcom/metamoji/un/text/UnTextUnit;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p2

    .line 9297
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/un/text/UnTextUnit$InsertionPointCursorController;->getHysteresisPosition(Landroid/graphics/PointF;Lcom/metamoji/un/text/model/TextPosition;)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    .line 9298
    invoke-virtual {p1, p2}, Lcom/metamoji/un/text/model/TextPosition;->compareTo(Lcom/metamoji/un/text/model/TextPosition;)I

    move-result p2

    if-eqz p2, :cond_0

    .line 9299
    iget-object p2, p0, Lcom/metamoji/un/text/UnTextUnit$InsertionPointCursorController;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    new-instance v0, Lcom/metamoji/un/text/model/TextRange;

    invoke-direct {v0, p1}, Lcom/metamoji/un/text/model/TextRange;-><init>(Lcom/metamoji/un/text/model/TextPosition;)V

    invoke-virtual {p2, v0}, Lcom/metamoji/un/text/UnTextUnit;->setSelectedTextRange(Lcom/metamoji/un/text/model/TextRange;)V

    .line 9300
    iget-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$InsertionPointCursorController;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/metamoji/un/text/UnTextUnit;->notifySelectedRangeChanged(Z)V

    :cond_0
    return-void
.end method

.method public updateRotate()V
    .locals 4

    .line 9248
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$InsertionPointCursorController;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-static {v0}, Lcom/metamoji/un/text/UnTextUnit;->access$200(Lcom/metamoji/un/text/UnTextUnit;)Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Sprite;->getGlobalMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x9

    .line 9251
    new-array v1, v1, [F

    .line 9252
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v0, 0x3

    .line 9253
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

    .line 9256
    :goto_0
    iget-object v1, p0, Lcom/metamoji/un/text/UnTextUnit$InsertionPointCursorController;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/TextModel;->getVerticalWriting()Z

    move-result v1

    if-eqz v1, :cond_1

    const/high16 v1, 0x42b40000    # 90.0f

    sub-float/2addr v0, v1

    .line 9258
    :cond_1
    iget-object v1, p0, Lcom/metamoji/un/text/UnTextUnit$InsertionPointCursorController;->handle:Lcom/metamoji/un/text/UnTextUnit$HandleView;

    invoke-virtual {v1, v0}, Lcom/metamoji/un/text/UnTextUnit$HandleView;->setRotation(F)V

    return-void
.end method
