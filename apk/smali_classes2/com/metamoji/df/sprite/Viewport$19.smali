.class Lcom/metamoji/df/sprite/Viewport$19;
.super Lcom/metamoji/df/sprite/Tweener$Prop;
.source "Viewport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/df/sprite/Viewport;->pinchZoomRebound(Landroid/graphics/PointF;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/df/sprite/Viewport;

.field final synthetic val$stage:Lcom/metamoji/df/sprite/Stage;


# direct methods
.method constructor <init>(Lcom/metamoji/df/sprite/Viewport;FFLcom/metamoji/df/sprite/Equations;Lcom/metamoji/df/sprite/Stage;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 1112
    iput-object p1, p0, Lcom/metamoji/df/sprite/Viewport$19;->this$0:Lcom/metamoji/df/sprite/Viewport;

    iput-object p5, p0, Lcom/metamoji/df/sprite/Viewport$19;->val$stage:Lcom/metamoji/df/sprite/Stage;

    invoke-direct {p0, p2, p3, p4}, Lcom/metamoji/df/sprite/Tweener$Prop;-><init>(FFLcom/metamoji/df/sprite/Equations;)V

    return-void
.end method


# virtual methods
.method protected set(F)V
    .locals 1

    .line 1114
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport$19;->val$stage:Lcom/metamoji/df/sprite/Stage;

    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/Stage;->setZoom(F)V

    return-void
.end method
