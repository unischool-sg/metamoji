.class Lcom/metamoji/df/sprite/LayerViewTextureView$1;
.super Ljava/lang/Object;
.source "LayerViewTextureView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/df/sprite/LayerViewTextureView;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/df/sprite/LayerViewTextureView;


# direct methods
.method constructor <init>(Lcom/metamoji/df/sprite/LayerViewTextureView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 91
    iput-object p1, p0, Lcom/metamoji/df/sprite/LayerViewTextureView$1;->this$0:Lcom/metamoji/df/sprite/LayerViewTextureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .line 97
    iget-object p1, p0, Lcom/metamoji/df/sprite/LayerViewTextureView$1;->this$0:Lcom/metamoji/df/sprite/LayerViewTextureView;

    invoke-static {p1}, Lcom/metamoji/df/sprite/LayerViewTextureView;->-$$Nest$fgetsurfaceSize(Lcom/metamoji/df/sprite/LayerViewTextureView;)Landroid/graphics/Point;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Point;->set(II)V

    .line 98
    iget-object p1, p0, Lcom/metamoji/df/sprite/LayerViewTextureView$1;->this$0:Lcom/metamoji/df/sprite/LayerViewTextureView;

    invoke-static {p1}, Lcom/metamoji/df/sprite/LayerViewTextureView;->-$$Nest$fgetsurfaceRect(Lcom/metamoji/df/sprite/LayerViewTextureView;)Landroid/graphics/RectF;

    move-result-object p1

    int-to-float p2, p2

    int-to-float p3, p3

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p2, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 101
    iget-object p1, p0, Lcom/metamoji/df/sprite/LayerViewTextureView$1;->this$0:Lcom/metamoji/df/sprite/LayerViewTextureView;

    invoke-static {p1}, Lcom/metamoji/df/sprite/LayerViewTextureView;->-$$Nest$mclear(Lcom/metamoji/df/sprite/LayerViewTextureView;)V

    .line 103
    iget-object p1, p0, Lcom/metamoji/df/sprite/LayerViewTextureView$1;->this$0:Lcom/metamoji/df/sprite/LayerViewTextureView;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/metamoji/df/sprite/LayerViewTextureView;->-$$Nest$fputavailable(Lcom/metamoji/df/sprite/LayerViewTextureView;Z)V

    .line 104
    iget-object p1, p0, Lcom/metamoji/df/sprite/LayerViewTextureView$1;->this$0:Lcom/metamoji/df/sprite/LayerViewTextureView;

    invoke-virtual {p1}, Lcom/metamoji/df/sprite/LayerViewTextureView;->setNeedsDisplay()V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    .line 126
    iget-object p1, p0, Lcom/metamoji/df/sprite/LayerViewTextureView$1;->this$0:Lcom/metamoji/df/sprite/LayerViewTextureView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/metamoji/df/sprite/LayerViewTextureView;->-$$Nest$fputavailable(Lcom/metamoji/df/sprite/LayerViewTextureView;Z)V

    .line 127
    iget-object p1, p0, Lcom/metamoji/df/sprite/LayerViewTextureView$1;->this$0:Lcom/metamoji/df/sprite/LayerViewTextureView;

    invoke-static {p1}, Lcom/metamoji/df/sprite/LayerViewTextureView;->-$$Nest$fgetsurfaceSize(Lcom/metamoji/df/sprite/LayerViewTextureView;)Landroid/graphics/Point;

    move-result-object p1

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Point;->set(II)V

    .line 128
    iget-object p1, p0, Lcom/metamoji/df/sprite/LayerViewTextureView$1;->this$0:Lcom/metamoji/df/sprite/LayerViewTextureView;

    invoke-static {p1}, Lcom/metamoji/df/sprite/LayerViewTextureView;->-$$Nest$fgetsurfaceRect(Lcom/metamoji/df/sprite/LayerViewTextureView;)Landroid/graphics/RectF;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 p1, 0x1

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .line 111
    iget-object p1, p0, Lcom/metamoji/df/sprite/LayerViewTextureView$1;->this$0:Lcom/metamoji/df/sprite/LayerViewTextureView;

    invoke-static {p1}, Lcom/metamoji/df/sprite/LayerViewTextureView;->-$$Nest$fgetsurfaceSize(Lcom/metamoji/df/sprite/LayerViewTextureView;)Landroid/graphics/Point;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Point;->set(II)V

    .line 112
    iget-object p1, p0, Lcom/metamoji/df/sprite/LayerViewTextureView$1;->this$0:Lcom/metamoji/df/sprite/LayerViewTextureView;

    invoke-static {p1}, Lcom/metamoji/df/sprite/LayerViewTextureView;->-$$Nest$fgetsurfaceRect(Lcom/metamoji/df/sprite/LayerViewTextureView;)Landroid/graphics/RectF;

    move-result-object p1

    int-to-float p2, p2

    int-to-float p3, p3

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p2, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 114
    iget-object p1, p0, Lcom/metamoji/df/sprite/LayerViewTextureView$1;->this$0:Lcom/metamoji/df/sprite/LayerViewTextureView;

    invoke-virtual {p1}, Lcom/metamoji/df/sprite/LayerViewTextureView;->setNeedsDisplay()V

    .line 115
    iget-object p1, p0, Lcom/metamoji/df/sprite/LayerViewTextureView$1;->this$0:Lcom/metamoji/df/sprite/LayerViewTextureView;

    invoke-static {p1}, Lcom/metamoji/df/sprite/LayerViewTextureView;->-$$Nest$mforceUpdate(Lcom/metamoji/df/sprite/LayerViewTextureView;)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
