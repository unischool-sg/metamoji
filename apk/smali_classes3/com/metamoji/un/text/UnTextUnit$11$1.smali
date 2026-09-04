.class Lcom/metamoji/un/text/UnTextUnit$11$1;
.super Ljava/lang/Object;
.source "UnTextUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/text/UnTextUnit$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/un/text/UnTextUnit$11;


# direct methods
.method constructor <init>(Lcom/metamoji/un/text/UnTextUnit$11;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2957
    iput-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$11$1;->this$1:Lcom/metamoji/un/text/UnTextUnit$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2960
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$11$1;->this$1:Lcom/metamoji/un/text/UnTextUnit$11;

    iget-object v0, v0, Lcom/metamoji/un/text/UnTextUnit$11;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->getBaseSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Sprite;->setVisible(Z)V

    .line 2961
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$11$1;->this$1:Lcom/metamoji/un/text/UnTextUnit$11;

    iget-object v0, v0, Lcom/metamoji/un/text/UnTextUnit$11;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-static {v0}, Lcom/metamoji/un/text/UnTextUnit;->-$$Nest$fget_rubberBand(Lcom/metamoji/un/text/UnTextUnit;)Lcom/metamoji/un/util/UnRubberBandSupport;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/metamoji/un/util/UnRubberBandSupport;->setEnableVisible(Z)V

    .line 2962
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$11$1;->this$1:Lcom/metamoji/un/text/UnTextUnit$11;

    iget-object v0, v0, Lcom/metamoji/un/text/UnTextUnit$11;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->setNeedsDisplay()V

    return-void
.end method
