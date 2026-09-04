.class public final synthetic Landroidx/media3/transformer/MediaProjectionAssetLoader$ComponentListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/media3/transformer/MediaProjectionAssetLoader$ComponentListener;

.field public final synthetic f$1:Landroid/view/Surface;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/transformer/MediaProjectionAssetLoader$ComponentListener;Landroid/view/Surface;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/transformer/MediaProjectionAssetLoader$ComponentListener$$ExternalSyntheticLambda0;->f$0:Landroidx/media3/transformer/MediaProjectionAssetLoader$ComponentListener;

    iput-object p2, p0, Landroidx/media3/transformer/MediaProjectionAssetLoader$ComponentListener$$ExternalSyntheticLambda0;->f$1:Landroid/view/Surface;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/media3/transformer/MediaProjectionAssetLoader$ComponentListener$$ExternalSyntheticLambda0;->f$0:Landroidx/media3/transformer/MediaProjectionAssetLoader$ComponentListener;

    iget-object v1, p0, Landroidx/media3/transformer/MediaProjectionAssetLoader$ComponentListener$$ExternalSyntheticLambda0;->f$1:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroidx/media3/transformer/MediaProjectionAssetLoader$ComponentListener;->lambda$onSurfaceReady$0$androidx-media3-transformer-MediaProjectionAssetLoader$ComponentListener(Landroid/view/Surface;)V

    return-void
.end method
