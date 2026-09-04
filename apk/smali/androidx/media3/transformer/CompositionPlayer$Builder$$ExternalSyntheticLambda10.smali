.class public final synthetic Landroidx/media3/transformer/CompositionPlayer$Builder$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Supplier;


# instance fields
.field public final synthetic f$0:Landroidx/media3/exoplayer/image/ImageDecoder$Factory;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/image/ImageDecoder$Factory;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/transformer/CompositionPlayer$Builder$$ExternalSyntheticLambda10;->f$0:Landroidx/media3/exoplayer/image/ImageDecoder$Factory;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer$Builder$$ExternalSyntheticLambda10;->f$0:Landroidx/media3/exoplayer/image/ImageDecoder$Factory;

    invoke-static {v0}, Landroidx/media3/transformer/CompositionPlayer$Builder;->lambda$setImageDecoderFactory$6(Landroidx/media3/exoplayer/image/ImageDecoder$Factory;)Landroidx/media3/exoplayer/image/ImageDecoder$Factory;

    move-result-object v0

    return-object v0
.end method
