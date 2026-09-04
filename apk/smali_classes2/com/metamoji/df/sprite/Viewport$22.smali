.class Lcom/metamoji/df/sprite/Viewport$22;
.super Lcom/metamoji/df/sprite/Tweener$Prop;
.source "Viewport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/df/sprite/Viewport;->panScrollRebound()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/df/sprite/Viewport;


# direct methods
.method constructor <init>(Lcom/metamoji/df/sprite/Viewport;FFLcom/metamoji/df/sprite/Equations;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 1153
    iput-object p1, p0, Lcom/metamoji/df/sprite/Viewport$22;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-direct {p0, p2, p3, p4}, Lcom/metamoji/df/sprite/Tweener$Prop;-><init>(FFLcom/metamoji/df/sprite/Equations;)V

    return-void
.end method


# virtual methods
.method protected set(F)V
    .locals 2

    .line 1155
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport$22;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-static {v0}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fgetscrollTranslate(Lcom/metamoji/df/sprite/Viewport;)Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1156
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport$22;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-static {v0}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$fgetscrollTranslate(Lcom/metamoji/df/sprite/Viewport;)Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/df/sprite/Viewport;->setScrollTranslate(FF)V

    :cond_0
    return-void
.end method
