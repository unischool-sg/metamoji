.class public final Landroidx/media3/transformer/ExperimentalAnalyzerModeFactory$DroppingEncoder$Factory;
.super Ljava/lang/Object;
.source "ExperimentalAnalyzerModeFactory.java"

# interfaces
.implements Landroidx/media3/transformer/Codec$EncoderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/transformer/ExperimentalAnalyzerModeFactory$DroppingEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Landroidx/media3/transformer/ExperimentalAnalyzerModeFactory$DroppingEncoder$Factory;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public createForAudioEncoding(Landroidx/media3/common/Format;Landroid/media/metrics/LogSessionId;)Landroidx/media3/transformer/Codec;
    .locals 1

    .line 98
    new-instance p2, Landroidx/media3/transformer/ExperimentalAnalyzerModeFactory$DroppingEncoder;

    iget-object v0, p0, Landroidx/media3/transformer/ExperimentalAnalyzerModeFactory$DroppingEncoder$Factory;->context:Landroid/content/Context;

    invoke-direct {p2, v0, p1}, Landroidx/media3/transformer/ExperimentalAnalyzerModeFactory$DroppingEncoder;-><init>(Landroid/content/Context;Landroidx/media3/common/Format;)V

    return-object p2
.end method

.method public createForVideoEncoding(Landroidx/media3/common/Format;Landroid/media/metrics/LogSessionId;)Landroidx/media3/transformer/Codec;
    .locals 1

    .line 103
    new-instance p2, Landroidx/media3/transformer/ExperimentalAnalyzerModeFactory$DroppingEncoder;

    iget-object v0, p0, Landroidx/media3/transformer/ExperimentalAnalyzerModeFactory$DroppingEncoder$Factory;->context:Landroid/content/Context;

    invoke-direct {p2, v0, p1}, Landroidx/media3/transformer/ExperimentalAnalyzerModeFactory$DroppingEncoder;-><init>(Landroid/content/Context;Landroidx/media3/common/Format;)V

    return-object p2
.end method
