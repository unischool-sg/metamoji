.class public final synthetic Landroidx/media3/transformer/SequenceAssetLoader$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/media3/transformer/SequenceAssetLoader;

.field public final synthetic f$1:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/transformer/SequenceAssetLoader;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/transformer/SequenceAssetLoader$$ExternalSyntheticLambda0;->f$0:Landroidx/media3/transformer/SequenceAssetLoader;

    iput-object p2, p0, Landroidx/media3/transformer/SequenceAssetLoader$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/media3/transformer/SequenceAssetLoader$$ExternalSyntheticLambda0;->f$0:Landroidx/media3/transformer/SequenceAssetLoader;

    iget-object v1, p0, Landroidx/media3/transformer/SequenceAssetLoader$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroidx/media3/transformer/SequenceAssetLoader;->lambda$insertBlankFrames$1$androidx-media3-transformer-SequenceAssetLoader(Landroid/graphics/Bitmap;)V

    return-void
.end method
