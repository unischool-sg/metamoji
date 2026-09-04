.class Lcom/metamoji/un/text/UnTextUnit$42;
.super Ljava/lang/Object;
.source "UnTextUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/text/UnTextUnit;->setNeedsCheckCaretHideOrNot(Lcom/metamoji/un/text/model/TextPosition;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/text/UnTextUnit;

.field final synthetic val$frameToView:Z

.field final synthetic val$positionToView:Lcom/metamoji/un/text/model/TextPosition;


# direct methods
.method constructor <init>(Lcom/metamoji/un/text/UnTextUnit;ZLcom/metamoji/un/text/model/TextPosition;)V
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

    .line 10216
    iput-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$42;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    iput-boolean p2, p0, Lcom/metamoji/un/text/UnTextUnit$42;->val$frameToView:Z

    iput-object p3, p0, Lcom/metamoji/un/text/UnTextUnit$42;->val$positionToView:Lcom/metamoji/un/text/model/TextPosition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 10219
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$42;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-static {v0}, Lcom/metamoji/un/text/UnTextUnit;->-$$Nest$fget_alive(Lcom/metamoji/un/text/UnTextUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 10222
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/text/UnTextUnit$42;->val$frameToView:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 10224
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$42;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-static {v0}, Lcom/metamoji/un/text/UnTextUnit;->-$$Nest$mcaretNotHide(Lcom/metamoji/un/text/UnTextUnit;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 10225
    new-instance v0, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/metamoji/un/text/UnTextUnit$42;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-static {v2}, Lcom/metamoji/un/text/UnTextUnit;->access$400(Lcom/metamoji/un/text/UnTextUnit;)Lcom/metamoji/df/sprite/Sprite;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/df/sprite/Sprite;->getWidth()F

    move-result v2

    iget-object v3, p0, Lcom/metamoji/un/text/UnTextUnit$42;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-static {v3}, Lcom/metamoji/un/text/UnTextUnit;->access$500(Lcom/metamoji/un/text/UnTextUnit;)Lcom/metamoji/df/sprite/Sprite;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/df/sprite/Sprite;->getHeight()F

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v0, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 10226
    iget-object v2, p0, Lcom/metamoji/un/text/UnTextUnit$42;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-static {v2, v0}, Lcom/metamoji/un/text/UnTextUnit;->-$$Nest$minVisibleViewRect(Lcom/metamoji/un/text/UnTextUnit;Landroid/graphics/RectF;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 10227
    iget-object v2, p0, Lcom/metamoji/un/text/UnTextUnit$42;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-static {v2, v0, v1}, Lcom/metamoji/un/text/UnTextUnit;->-$$Nest$mscrollRectToVisible(Lcom/metamoji/un/text/UnTextUnit;Landroid/graphics/RectF;Z)V

    .line 10232
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$42;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-static {v0}, Lcom/metamoji/un/text/UnTextUnit;->-$$Nest$mcaretNotHide(Lcom/metamoji/un/text/UnTextUnit;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 10233
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$42;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v2

    iget-object v3, p0, Lcom/metamoji/un/text/UnTextUnit$42;->val$positionToView:Lcom/metamoji/un/text/model/TextPosition;

    invoke-virtual {v2, v3}, Lcom/metamoji/un/text/model/TextModel;->caretRectInWholeViewForPosition(Lcom/metamoji/un/text/model/TextPosition;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/metamoji/un/text/UnTextUnit;->-$$Nest$mscrollRectToVisible(Lcom/metamoji/un/text/UnTextUnit;Landroid/graphics/RectF;Z)V

    :cond_2
    :goto_0
    return-void
.end method
