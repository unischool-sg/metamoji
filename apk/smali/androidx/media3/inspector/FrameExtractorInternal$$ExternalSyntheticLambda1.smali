.class public final synthetic Landroidx/media3/inspector/FrameExtractorInternal$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic f$0:Landroidx/media3/inspector/FrameExtractorInternal;

.field public final synthetic f$1:Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/inspector/FrameExtractorInternal;Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;ZZ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/inspector/FrameExtractorInternal$$ExternalSyntheticLambda1;->f$0:Landroidx/media3/inspector/FrameExtractorInternal;

    iput-object p2, p0, Landroidx/media3/inspector/FrameExtractorInternal$$ExternalSyntheticLambda1;->f$1:Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;

    iput-boolean p3, p0, Landroidx/media3/inspector/FrameExtractorInternal$$ExternalSyntheticLambda1;->f$2:Z

    iput-boolean p4, p0, Landroidx/media3/inspector/FrameExtractorInternal$$ExternalSyntheticLambda1;->f$3:Z

    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 4

    .line 0
    iget-object v0, p0, Landroidx/media3/inspector/FrameExtractorInternal$$ExternalSyntheticLambda1;->f$0:Landroidx/media3/inspector/FrameExtractorInternal;

    iget-object v1, p0, Landroidx/media3/inspector/FrameExtractorInternal$$ExternalSyntheticLambda1;->f$1:Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;

    iget-boolean v2, p0, Landroidx/media3/inspector/FrameExtractorInternal$$ExternalSyntheticLambda1;->f$2:Z

    iget-boolean v3, p0, Landroidx/media3/inspector/FrameExtractorInternal$$ExternalSyntheticLambda1;->f$3:Z

    invoke-virtual {v0, v1, v2, v3, p1}, Landroidx/media3/inspector/FrameExtractorInternal;->lambda$processTask$5$androidx-media3-inspector-FrameExtractorInternal(Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;ZZLandroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
