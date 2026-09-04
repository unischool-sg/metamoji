.class Landroidx/media3/transformer/MediaProjectionAssetLoader$1;
.super Landroid/media/projection/MediaProjection$Callback;
.source "MediaProjectionAssetLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/transformer/MediaProjectionAssetLoader;->startCapture(Landroid/view/Surface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/transformer/MediaProjectionAssetLoader;


# direct methods
.method constructor <init>(Landroidx/media3/transformer/MediaProjectionAssetLoader;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 130
    iput-object p1, p0, Landroidx/media3/transformer/MediaProjectionAssetLoader$1;->this$0:Landroidx/media3/transformer/MediaProjectionAssetLoader;

    invoke-direct {p0}, Landroid/media/projection/MediaProjection$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 2

    .line 133
    invoke-super {p0}, Landroid/media/projection/MediaProjection$Callback;->onStop()V

    .line 134
    iget-object v0, p0, Landroidx/media3/transformer/MediaProjectionAssetLoader$1;->this$0:Landroidx/media3/transformer/MediaProjectionAssetLoader;

    invoke-static {v0}, Landroidx/media3/transformer/MediaProjectionAssetLoader;->access$200(Landroidx/media3/transformer/MediaProjectionAssetLoader;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Landroidx/media3/transformer/MediaProjectionAssetLoader$1;->this$0:Landroidx/media3/transformer/MediaProjectionAssetLoader;

    invoke-static {v0}, Landroidx/media3/transformer/MediaProjectionAssetLoader;->access$200(Landroidx/media3/transformer/MediaProjectionAssetLoader;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/VirtualDisplay;->setSurface(Landroid/view/Surface;)V

    .line 136
    iget-object v0, p0, Landroidx/media3/transformer/MediaProjectionAssetLoader$1;->this$0:Landroidx/media3/transformer/MediaProjectionAssetLoader;

    invoke-static {v0}, Landroidx/media3/transformer/MediaProjectionAssetLoader;->access$200(Landroidx/media3/transformer/MediaProjectionAssetLoader;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->release()V

    .line 138
    :cond_0
    iget-object v0, p0, Landroidx/media3/transformer/MediaProjectionAssetLoader$1;->this$0:Landroidx/media3/transformer/MediaProjectionAssetLoader;

    invoke-static {v0}, Landroidx/media3/transformer/MediaProjectionAssetLoader;->access$300(Landroidx/media3/transformer/MediaProjectionAssetLoader;)Landroidx/media3/transformer/SurfaceAssetLoader;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/transformer/SurfaceAssetLoader;->signalEndOfInput()V

    return-void
.end method
