.class public final synthetic Landroidx/media3/transformer/CompositionPlayer$Builder$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Supplier;


# instance fields
.field public final synthetic f$0:Landroidx/media3/transformer/AudioMixer$Factory;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/transformer/AudioMixer$Factory;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/transformer/CompositionPlayer$Builder$$ExternalSyntheticLambda9;->f$0:Landroidx/media3/transformer/AudioMixer$Factory;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer$Builder$$ExternalSyntheticLambda9;->f$0:Landroidx/media3/transformer/AudioMixer$Factory;

    invoke-static {v0}, Landroidx/media3/transformer/CompositionPlayer$Builder;->lambda$setAudioMixerFactory$4(Landroidx/media3/transformer/AudioMixer$Factory;)Landroidx/media3/transformer/AudioMixer$Factory;

    move-result-object v0

    return-object v0
.end method
