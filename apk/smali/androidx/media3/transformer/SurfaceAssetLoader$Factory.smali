.class public final Landroidx/media3/transformer/SurfaceAssetLoader$Factory;
.super Ljava/lang/Object;
.source "SurfaceAssetLoader.java"

# interfaces
.implements Landroidx/media3/transformer/AssetLoader$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/transformer/SurfaceAssetLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private final callback:Landroidx/media3/transformer/SurfaceAssetLoader$Callback;


# direct methods
.method public constructor <init>(Landroidx/media3/transformer/SurfaceAssetLoader$Callback;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Landroidx/media3/transformer/SurfaceAssetLoader$Factory;->callback:Landroidx/media3/transformer/SurfaceAssetLoader$Callback;

    return-void
.end method


# virtual methods
.method public bridge synthetic createAssetLoader(Landroidx/media3/transformer/EditedMediaItem;Landroid/os/Looper;Landroidx/media3/transformer/AssetLoader$Listener;Landroidx/media3/transformer/AssetLoader$CompositionSettings;)Landroidx/media3/transformer/AssetLoader;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 80
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/media3/transformer/SurfaceAssetLoader$Factory;->createAssetLoader(Landroidx/media3/transformer/EditedMediaItem;Landroid/os/Looper;Landroidx/media3/transformer/AssetLoader$Listener;Landroidx/media3/transformer/AssetLoader$CompositionSettings;)Landroidx/media3/transformer/SurfaceAssetLoader;

    move-result-object p1

    return-object p1
.end method

.method public createAssetLoader(Landroidx/media3/transformer/EditedMediaItem;Landroid/os/Looper;Landroidx/media3/transformer/AssetLoader$Listener;Landroidx/media3/transformer/AssetLoader$CompositionSettings;)Landroidx/media3/transformer/SurfaceAssetLoader;
    .locals 6

    .line 95
    iget-object p4, p1, Landroidx/media3/transformer/EditedMediaItem;->mediaItem:Landroidx/media3/common/MediaItem;

    iget-object p4, p4, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object p4, p4, Landroidx/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    .line 96
    invoke-virtual {p4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    const-string/jumbo v0, "transformer_surface_asset"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 97
    new-instance v0, Landroidx/media3/transformer/SurfaceAssetLoader;

    iget-object v4, p0, Landroidx/media3/transformer/SurfaceAssetLoader$Factory;->callback:Landroidx/media3/transformer/SurfaceAssetLoader$Callback;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroidx/media3/transformer/SurfaceAssetLoader;-><init>(Landroidx/media3/transformer/EditedMediaItem;Landroid/os/Looper;Landroidx/media3/transformer/AssetLoader$Listener;Landroidx/media3/transformer/SurfaceAssetLoader$Callback;Landroidx/media3/transformer/SurfaceAssetLoader$1;)V

    .line 99
    iget-object p1, p0, Landroidx/media3/transformer/SurfaceAssetLoader$Factory;->callback:Landroidx/media3/transformer/SurfaceAssetLoader$Callback;

    invoke-interface {p1, v0}, Landroidx/media3/transformer/SurfaceAssetLoader$Callback;->onSurfaceAssetLoaderCreated(Landroidx/media3/transformer/SurfaceAssetLoader;)V

    return-object v0
.end method
