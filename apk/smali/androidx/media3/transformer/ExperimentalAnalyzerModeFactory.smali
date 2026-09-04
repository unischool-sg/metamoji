.class public final Landroidx/media3/transformer/ExperimentalAnalyzerModeFactory;
.super Ljava/lang/Object;
.source "ExperimentalAnalyzerModeFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/transformer/ExperimentalAnalyzerModeFactory$DroppingEncoder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildAnalyzer(Landroid/content/Context;)Landroidx/media3/transformer/Transformer;
    .locals 1

    .line 59
    new-instance v0, Landroidx/media3/transformer/Transformer$Builder;

    invoke-direct {v0, p0}, Landroidx/media3/transformer/Transformer$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroidx/media3/transformer/Transformer$Builder;->build()Landroidx/media3/transformer/Transformer;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/media3/transformer/ExperimentalAnalyzerModeFactory;->buildAnalyzer(Landroid/content/Context;Landroidx/media3/transformer/Transformer;)Landroidx/media3/transformer/Transformer;

    move-result-object p0

    return-object p0
.end method

.method public static buildAnalyzer(Landroid/content/Context;Landroidx/media3/transformer/Transformer;)Landroidx/media3/transformer/Transformer;
    .locals 4

    .line 73
    invoke-virtual {p1}, Landroidx/media3/transformer/Transformer;->buildUpon()Landroidx/media3/transformer/Transformer$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 74
    invoke-virtual {p1, v0}, Landroidx/media3/transformer/Transformer$Builder;->experimentalSetTrimOptimizationEnabled(Z)Landroidx/media3/transformer/Transformer$Builder;

    move-result-object p1

    const/4 v0, -0x1

    .line 75
    invoke-virtual {p1, v0}, Landroidx/media3/transformer/Transformer$Builder;->experimentalSetMaxFramesInEncoder(I)Landroidx/media3/transformer/Transformer$Builder;

    move-result-object p1

    new-instance v0, Landroidx/media3/transformer/ExperimentalAnalyzerModeFactory$DroppingEncoder$Factory;

    invoke-direct {v0, p0}, Landroidx/media3/transformer/ExperimentalAnalyzerModeFactory$DroppingEncoder$Factory;-><init>(Landroid/content/Context;)V

    .line 76
    invoke-virtual {p1, v0}, Landroidx/media3/transformer/Transformer$Builder;->setEncoderFactory(Landroidx/media3/transformer/Codec$EncoderFactory;)Landroidx/media3/transformer/Transformer$Builder;

    move-result-object p0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 77
    invoke-virtual {p0, v0, v1}, Landroidx/media3/transformer/Transformer$Builder;->setMaxDelayBetweenMuxerSamplesMs(J)Landroidx/media3/transformer/Transformer$Builder;

    move-result-object p0

    new-instance p1, Landroidx/media3/transformer/NoWriteMuxer$Factory;

    .line 80
    const-string v0, "audio/mp4a-latm"

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 81
    const-string/jumbo v2, "video/avc"

    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-direct {p1, v1, v3}, Landroidx/media3/transformer/NoWriteMuxer$Factory;-><init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;)V

    .line 78
    invoke-virtual {p0, p1}, Landroidx/media3/transformer/Transformer$Builder;->setMuxerFactory(Landroidx/media3/muxer/Muxer$Factory;)Landroidx/media3/transformer/Transformer$Builder;

    move-result-object p0

    .line 82
    invoke-virtual {p0, v0}, Landroidx/media3/transformer/Transformer$Builder;->setAudioMimeType(Ljava/lang/String;)Landroidx/media3/transformer/Transformer$Builder;

    move-result-object p0

    .line 83
    invoke-virtual {p0, v2}, Landroidx/media3/transformer/Transformer$Builder;->setVideoMimeType(Ljava/lang/String;)Landroidx/media3/transformer/Transformer$Builder;

    move-result-object p0

    .line 84
    invoke-virtual {p0}, Landroidx/media3/transformer/Transformer$Builder;->build()Landroidx/media3/transformer/Transformer;

    move-result-object p0

    return-object p0
.end method
