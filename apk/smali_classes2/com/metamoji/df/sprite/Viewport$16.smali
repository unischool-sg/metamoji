.class Lcom/metamoji/df/sprite/Viewport$16;
.super Lcom/metamoji/df/sprite/Tweener$Tween;
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


# direct methods
.method constructor <init>(Lcom/metamoji/df/sprite/Viewport;J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1084
    iput-object p1, p0, Lcom/metamoji/df/sprite/Viewport$16;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-direct {p0, p2, p3}, Lcom/metamoji/df/sprite/Tweener$Tween;-><init>(J)V

    return-void
.end method


# virtual methods
.method protected onEnd(Z)V
    .locals 1

    .line 1086
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport$16;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-static {v0, p1}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$monEndOfPinchZoomRebound(Lcom/metamoji/df/sprite/Viewport;Z)V

    return-void
.end method
