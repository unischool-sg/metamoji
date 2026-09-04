.class public final Landroidx/media3/transformer/MediaProjectionAssetLoader$Factory;
.super Ljava/lang/Object;
.source "MediaProjectionAssetLoader.java"

# interfaces
.implements Landroidx/media3/transformer/AssetLoader$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/transformer/MediaProjectionAssetLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private final bounds:Landroid/graphics/Rect;

.field private final densityDpi:I

.field private final mediaProjection:Landroid/media/projection/MediaProjection;


# direct methods
.method public constructor <init>(Landroid/media/projection/MediaProjection;Landroid/graphics/Rect;I)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Landroidx/media3/transformer/MediaProjectionAssetLoader$Factory;->mediaProjection:Landroid/media/projection/MediaProjection;

    .line 55
    iput-object p2, p0, Landroidx/media3/transformer/MediaProjectionAssetLoader$Factory;->bounds:Landroid/graphics/Rect;

    .line 56
    iput p3, p0, Landroidx/media3/transformer/MediaProjectionAssetLoader$Factory;->densityDpi:I

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

    .line 40
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/media3/transformer/MediaProjectionAssetLoader$Factory;->createAssetLoader(Landroidx/media3/transformer/EditedMediaItem;Landroid/os/Looper;Landroidx/media3/transformer/AssetLoader$Listener;Landroidx/media3/transformer/AssetLoader$CompositionSettings;)Landroidx/media3/transformer/MediaProjectionAssetLoader;

    move-result-object p1

    return-object p1
.end method

.method public createAssetLoader(Landroidx/media3/transformer/EditedMediaItem;Landroid/os/Looper;Landroidx/media3/transformer/AssetLoader$Listener;Landroidx/media3/transformer/AssetLoader$CompositionSettings;)Landroidx/media3/transformer/MediaProjectionAssetLoader;
    .locals 9

    .line 65
    new-instance v0, Landroidx/media3/transformer/MediaProjectionAssetLoader;

    iget-object v1, p0, Landroidx/media3/transformer/MediaProjectionAssetLoader$Factory;->mediaProjection:Landroid/media/projection/MediaProjection;

    iget-object v2, p0, Landroidx/media3/transformer/MediaProjectionAssetLoader$Factory;->bounds:Landroid/graphics/Rect;

    iget v3, p0, Landroidx/media3/transformer/MediaProjectionAssetLoader$Factory;->densityDpi:I

    const/4 v8, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v8}, Landroidx/media3/transformer/MediaProjectionAssetLoader;-><init>(Landroid/media/projection/MediaProjection;Landroid/graphics/Rect;ILandroidx/media3/transformer/EditedMediaItem;Landroid/os/Looper;Landroidx/media3/transformer/AssetLoader$Listener;Landroidx/media3/transformer/AssetLoader$CompositionSettings;Landroidx/media3/transformer/MediaProjectionAssetLoader$1;)V

    return-object v0
.end method
