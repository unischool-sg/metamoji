.class Lcom/metamoji/un/text/UnTextUnit$15;
.super Ljava/lang/Object;
.source "UnTextUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/text/UnTextUnit;->performTextEditUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/text/UnTextUnit;

.field final synthetic val$jsonRange:Ljava/util/Map;

.field final synthetic val$taskName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/un/text/UnTextUnit;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 3791
    iput-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$15;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    iput-object p2, p0, Lcom/metamoji/un/text/UnTextUnit$15;->val$jsonRange:Ljava/util/Map;

    iput-object p3, p0, Lcom/metamoji/un/text/UnTextUnit$15;->val$taskName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 3793
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$15;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/model/TextModel;->needsRemakeLineTable(Lcom/metamoji/un/text/model/TextPosition;)V

    .line 3794
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$15;->val$jsonRange:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 3795
    invoke-static {v0}, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->createTextRange(Ljava/util/Map;)Lcom/metamoji/un/text/model/TextRange;

    move-result-object v0

    .line 3796
    iget-object v1, p0, Lcom/metamoji/un/text/UnTextUnit$15;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-virtual {v1, v0}, Lcom/metamoji/un/text/UnTextUnit;->setSelectedTextRange(Lcom/metamoji/un/text/model/TextRange;)V

    .line 3798
    iget-object v1, p0, Lcom/metamoji/un/text/UnTextUnit$15;->val$taskName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 3799
    const-string v2, "insertText"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/metamoji/un/text/UnTextUnit$15;->val$taskName:Ljava/lang/String;

    const-string v2, "insertTextWithStrokes"

    .line 3800
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/metamoji/un/text/UnTextUnit$15;->val$taskName:Ljava/lang/String;

    const-string v2, "deleteBackward"

    .line 3801
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/metamoji/un/text/UnTextUnit$15;->val$taskName:Ljava/lang/String;

    const-string v2, "deleteForward"

    .line 3802
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/metamoji/un/text/UnTextUnit$15;->val$taskName:Ljava/lang/String;

    const-string v2, "cut"

    .line 3803
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/metamoji/un/text/UnTextUnit$15;->val$taskName:Ljava/lang/String;

    const-string v2, "paste"

    .line 3804
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3806
    :cond_0
    iget-object v1, p0, Lcom/metamoji/un/text/UnTextUnit$15;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/metamoji/un/text/UnTextUnit;->removeSpellErrorLocations(Lcom/metamoji/un/text/model/TextPosition;)V

    .line 3808
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$15;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/metamoji/un/text/UnTextUnit;->notifySelectedRangeChanged(ZZ)V

    .line 3811
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$15;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$15;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->isInComposition()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$15;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-static {v0}, Lcom/metamoji/un/text/UnTextUnit;->-$$Nest$fgettextSprite(Lcom/metamoji/un/text/UnTextUnit;)Lcom/metamoji/un/text/sprite/TextSprite;

    move-result-object v0

    .line 3812
    invoke-virtual {v0}, Lcom/metamoji/un/text/sprite/TextSprite;->isRedererCursor()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3814
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$15;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-static {v0}, Lcom/metamoji/un/text/UnTextUnit;->-$$Nest$fgetselModCurCtrl(Lcom/metamoji/un/text/UnTextUnit;)Lcom/metamoji/un/text/UnTextUnit$SelectionModifierCursorController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit$SelectionModifierCursorController;->show()V

    .line 3817
    :cond_2
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$15;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3818
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$15;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-static {v0}, Lcom/metamoji/un/text/UnTextUnit;->-$$Nest$fget_rubberBand(Lcom/metamoji/un/text/UnTextUnit;)Lcom/metamoji/un/util/UnRubberBandSupport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/util/UnRubberBandSupport;->update()V

    :cond_3
    return-void
.end method
