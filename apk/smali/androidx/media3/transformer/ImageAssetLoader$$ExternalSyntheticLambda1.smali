.class public final synthetic Landroidx/media3/transformer/ImageAssetLoader$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/media3/transformer/ImageAssetLoader;

.field public final synthetic f$1:Landroid/graphics/Bitmap;

.field public final synthetic f$2:Landroidx/media3/common/Format;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/transformer/ImageAssetLoader;Landroid/graphics/Bitmap;Landroidx/media3/common/Format;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/transformer/ImageAssetLoader$$ExternalSyntheticLambda1;->f$0:Landroidx/media3/transformer/ImageAssetLoader;

    iput-object p2, p0, Landroidx/media3/transformer/ImageAssetLoader$$ExternalSyntheticLambda1;->f$1:Landroid/graphics/Bitmap;

    iput-object p3, p0, Landroidx/media3/transformer/ImageAssetLoader$$ExternalSyntheticLambda1;->f$2:Landroidx/media3/common/Format;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Landroidx/media3/transformer/ImageAssetLoader$$ExternalSyntheticLambda1;->f$0:Landroidx/media3/transformer/ImageAssetLoader;

    iget-object v1, p0, Landroidx/media3/transformer/ImageAssetLoader$$ExternalSyntheticLambda1;->f$1:Landroid/graphics/Bitmap;

    iget-object v2, p0, Landroidx/media3/transformer/ImageAssetLoader$$ExternalSyntheticLambda1;->f$2:Landroidx/media3/common/Format;

    invoke-virtual {v0, v1, v2}, Landroidx/media3/transformer/ImageAssetLoader;->lambda$queueBitmapInternal$1$androidx-media3-transformer-ImageAssetLoader(Landroid/graphics/Bitmap;Landroidx/media3/common/Format;)V

    return-void
.end method
