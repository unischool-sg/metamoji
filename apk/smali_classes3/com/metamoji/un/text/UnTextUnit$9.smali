.class Lcom/metamoji/un/text/UnTextUnit$9;
.super Ljava/lang/Object;
.source "UnTextUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/text/UnTextUnit;->setNeedsDisplay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/text/UnTextUnit;

.field final synthetic val$bounds:Landroid/graphics/RectF;


# direct methods
.method constructor <init>(Lcom/metamoji/un/text/UnTextUnit;Landroid/graphics/RectF;)V
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

    .line 2413
    iput-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$9;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    iput-object p2, p0, Lcom/metamoji/un/text/UnTextUnit$9;->val$bounds:Landroid/graphics/RectF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2416
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$9;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-static {v0}, Lcom/metamoji/un/text/UnTextUnit;->-$$Nest$fgettextSprite(Lcom/metamoji/un/text/UnTextUnit;)Lcom/metamoji/un/text/sprite/TextSprite;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2417
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$9;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-static {v0}, Lcom/metamoji/un/text/UnTextUnit;->-$$Nest$fgettextSprite(Lcom/metamoji/un/text/UnTextUnit;)Lcom/metamoji/un/text/sprite/TextSprite;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/text/UnTextUnit$9;->val$bounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/sprite/TextSprite;->invalidate(Landroid/graphics/RectF;)V

    :cond_0
    return-void
.end method
