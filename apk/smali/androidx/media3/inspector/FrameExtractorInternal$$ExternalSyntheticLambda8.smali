.class public final synthetic Landroidx/media3/inspector/FrameExtractorInternal$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/util/concurrent/AsyncCallable;


# instance fields
.field public final synthetic f$0:Landroidx/media3/inspector/FrameExtractorInternal;

.field public final synthetic f$1:Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/inspector/FrameExtractorInternal;Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/inspector/FrameExtractorInternal$$ExternalSyntheticLambda8;->f$0:Landroidx/media3/inspector/FrameExtractorInternal;

    iput-object p2, p0, Landroidx/media3/inspector/FrameExtractorInternal$$ExternalSyntheticLambda8;->f$1:Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;

    return-void
.end method


# virtual methods
.method public final call()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/media3/inspector/FrameExtractorInternal$$ExternalSyntheticLambda8;->f$0:Landroidx/media3/inspector/FrameExtractorInternal;

    iget-object v1, p0, Landroidx/media3/inspector/FrameExtractorInternal$$ExternalSyntheticLambda8;->f$1:Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;

    invoke-virtual {v0, v1}, Landroidx/media3/inspector/FrameExtractorInternal;->lambda$submitTask$2$androidx-media3-inspector-FrameExtractorInternal(Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
