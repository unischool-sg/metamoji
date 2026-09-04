.class public final synthetic Landroidx/media3/inspector/FrameExtractorInternal$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/util/concurrent/AsyncFunction;


# instance fields
.field public final synthetic f$0:Landroidx/media3/inspector/FrameExtractorInternal;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/inspector/FrameExtractorInternal;ZLandroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/inspector/FrameExtractorInternal$$ExternalSyntheticLambda2;->f$0:Landroidx/media3/inspector/FrameExtractorInternal;

    iput-boolean p2, p0, Landroidx/media3/inspector/FrameExtractorInternal$$ExternalSyntheticLambda2;->f$1:Z

    iput-object p3, p0, Landroidx/media3/inspector/FrameExtractorInternal$$ExternalSyntheticLambda2;->f$2:Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    .line 0
    iget-object v0, p0, Landroidx/media3/inspector/FrameExtractorInternal$$ExternalSyntheticLambda2;->f$0:Landroidx/media3/inspector/FrameExtractorInternal;

    iget-boolean v1, p0, Landroidx/media3/inspector/FrameExtractorInternal$$ExternalSyntheticLambda2;->f$1:Z

    iget-object v2, p0, Landroidx/media3/inspector/FrameExtractorInternal$$ExternalSyntheticLambda2;->f$2:Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;

    check-cast p1, Landroidx/media3/inspector/FrameExtractor$Frame;

    invoke-virtual {v0, v1, v2, p1}, Landroidx/media3/inspector/FrameExtractorInternal;->lambda$submitTask$1$androidx-media3-inspector-FrameExtractorInternal(ZLandroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;Landroidx/media3/inspector/FrameExtractor$Frame;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
