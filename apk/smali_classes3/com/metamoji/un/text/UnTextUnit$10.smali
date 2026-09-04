.class Lcom/metamoji/un/text/UnTextUnit$10;
.super Ljava/lang/Object;
.source "UnTextUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/text/UnTextUnit;->setNeedsDisplay(Landroid/graphics/RectF;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/text/UnTextUnit;

.field final synthetic val$rect2:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/metamoji/un/text/UnTextUnit;Landroid/graphics/Rect;)V
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

    .line 2446
    iput-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$10;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    iput-object p2, p0, Lcom/metamoji/un/text/UnTextUnit$10;->val$rect2:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2449
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$10;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-static {v0}, Lcom/metamoji/un/text/UnTextUnit;->-$$Nest$fgettextSprite(Lcom/metamoji/un/text/UnTextUnit;)Lcom/metamoji/un/text/sprite/TextSprite;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2450
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$10;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-static {v0}, Lcom/metamoji/un/text/UnTextUnit;->-$$Nest$fgettextSprite(Lcom/metamoji/un/text/UnTextUnit;)Lcom/metamoji/un/text/sprite/TextSprite;

    move-result-object v0

    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/metamoji/un/text/UnTextUnit$10;->val$rect2:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/sprite/TextSprite;->invalidate(Landroid/graphics/RectF;)V

    :cond_0
    return-void
.end method
