.class final Landroidx/media3/transformer/FallbackListener;
.super Ljava/lang/Object;
.source "FallbackListener.java"


# instance fields
.field private final composition:Landroidx/media3/transformer/Composition;

.field private fallbackTransformationRequest:Landroidx/media3/transformer/TransformationRequest;

.field private final originalTransformationRequest:Landroidx/media3/transformer/TransformationRequest;

.field private final trackCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final transformerListenerHandler:Landroidx/media3/common/util/HandlerWrapper;

.field private final transformerListeners:Landroidx/media3/common/util/ListenerSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/common/util/ListenerSet<",
            "Landroidx/media3/transformer/Transformer$Listener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/media3/transformer/Composition;Landroidx/media3/common/util/ListenerSet;Landroidx/media3/common/util/HandlerWrapper;Landroidx/media3/transformer/TransformationRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/transformer/Composition;",
            "Landroidx/media3/common/util/ListenerSet<",
            "Landroidx/media3/transformer/Transformer$Listener;",
            ">;",
            "Landroidx/media3/common/util/HandlerWrapper;",
            "Landroidx/media3/transformer/TransformationRequest;",
            ")V"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Landroidx/media3/transformer/FallbackListener;->composition:Landroidx/media3/transformer/Composition;

    .line 57
    iput-object p2, p0, Landroidx/media3/transformer/FallbackListener;->transformerListeners:Landroidx/media3/common/util/ListenerSet;

    .line 58
    iput-object p3, p0, Landroidx/media3/transformer/FallbackListener;->transformerListenerHandler:Landroidx/media3/common/util/HandlerWrapper;

    .line 59
    iput-object p4, p0, Landroidx/media3/transformer/FallbackListener;->originalTransformationRequest:Landroidx/media3/transformer/TransformationRequest;

    .line 60
    iput-object p4, p0, Landroidx/media3/transformer/FallbackListener;->fallbackTransformationRequest:Landroidx/media3/transformer/TransformationRequest;

    .line 61
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Landroidx/media3/transformer/FallbackListener;->trackCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method synthetic lambda$onTransformationRequestFinalized$0$androidx-media3-transformer-FallbackListener(Landroidx/media3/transformer/TransformationRequest;Landroidx/media3/transformer/Transformer$Listener;)V
    .locals 2

    .line 120
    iget-object v0, p0, Landroidx/media3/transformer/FallbackListener;->composition:Landroidx/media3/transformer/Composition;

    iget-object v1, p0, Landroidx/media3/transformer/FallbackListener;->originalTransformationRequest:Landroidx/media3/transformer/TransformationRequest;

    invoke-interface {p2, v0, v1, p1}, Landroidx/media3/transformer/Transformer$Listener;->onFallbackApplied(Landroidx/media3/transformer/Composition;Landroidx/media3/transformer/TransformationRequest;Landroidx/media3/transformer/TransformationRequest;)V

    return-void
.end method

.method synthetic lambda$onTransformationRequestFinalized$1$androidx-media3-transformer-FallbackListener(Landroidx/media3/transformer/TransformationRequest;)V
    .locals 2

    .line 118
    iget-object v0, p0, Landroidx/media3/transformer/FallbackListener;->transformerListeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v1, Landroidx/media3/transformer/FallbackListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroidx/media3/transformer/FallbackListener$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/transformer/FallbackListener;Landroidx/media3/transformer/TransformationRequest;)V

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ListenerSet;->sendEvent(Landroidx/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public declared-synchronized onTransformationRequestFinalized(Landroidx/media3/transformer/TransformationRequest;)V
    .locals 3

    monitor-enter p0

    .line 93
    :try_start_0
    iget-object v0, p0, Landroidx/media3/transformer/FallbackListener;->trackCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 95
    iget-object v0, p0, Landroidx/media3/transformer/FallbackListener;->fallbackTransformationRequest:Landroidx/media3/transformer/TransformationRequest;

    .line 96
    invoke-virtual {v0}, Landroidx/media3/transformer/TransformationRequest;->buildUpon()Landroidx/media3/transformer/TransformationRequest$Builder;

    move-result-object v0

    .line 97
    iget-object v1, p1, Landroidx/media3/transformer/TransformationRequest;->audioMimeType:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/transformer/FallbackListener;->originalTransformationRequest:Landroidx/media3/transformer/TransformationRequest;

    iget-object v2, v2, Landroidx/media3/transformer/TransformationRequest;->audioMimeType:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 99
    iget-object v1, p1, Landroidx/media3/transformer/TransformationRequest;->audioMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/media3/transformer/TransformationRequest$Builder;->setAudioMimeType(Ljava/lang/String;)Landroidx/media3/transformer/TransformationRequest$Builder;

    .line 101
    :cond_1
    iget-object v1, p1, Landroidx/media3/transformer/TransformationRequest;->videoMimeType:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/transformer/FallbackListener;->originalTransformationRequest:Landroidx/media3/transformer/TransformationRequest;

    iget-object v2, v2, Landroidx/media3/transformer/TransformationRequest;->videoMimeType:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 103
    iget-object v1, p1, Landroidx/media3/transformer/TransformationRequest;->videoMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/media3/transformer/TransformationRequest$Builder;->setVideoMimeType(Ljava/lang/String;)Landroidx/media3/transformer/TransformationRequest$Builder;

    .line 105
    :cond_2
    iget v1, p1, Landroidx/media3/transformer/TransformationRequest;->outputHeight:I

    iget-object v2, p0, Landroidx/media3/transformer/FallbackListener;->originalTransformationRequest:Landroidx/media3/transformer/TransformationRequest;

    iget v2, v2, Landroidx/media3/transformer/TransformationRequest;->outputHeight:I

    if-eq v1, v2, :cond_3

    .line 106
    iget v1, p1, Landroidx/media3/transformer/TransformationRequest;->outputHeight:I

    invoke-virtual {v0, v1}, Landroidx/media3/transformer/TransformationRequest$Builder;->setResolution(I)Landroidx/media3/transformer/TransformationRequest$Builder;

    .line 108
    :cond_3
    iget v1, p1, Landroidx/media3/transformer/TransformationRequest;->hdrMode:I

    iget-object v2, p0, Landroidx/media3/transformer/FallbackListener;->originalTransformationRequest:Landroidx/media3/transformer/TransformationRequest;

    iget v2, v2, Landroidx/media3/transformer/TransformationRequest;->hdrMode:I

    if-eq v1, v2, :cond_4

    .line 109
    iget p1, p1, Landroidx/media3/transformer/TransformationRequest;->hdrMode:I

    invoke-virtual {v0, p1}, Landroidx/media3/transformer/TransformationRequest$Builder;->setHdrMode(I)Landroidx/media3/transformer/TransformationRequest$Builder;

    .line 111
    :cond_4
    invoke-virtual {v0}, Landroidx/media3/transformer/TransformationRequest$Builder;->build()Landroidx/media3/transformer/TransformationRequest;

    move-result-object p1

    .line 112
    iput-object p1, p0, Landroidx/media3/transformer/FallbackListener;->fallbackTransformationRequest:Landroidx/media3/transformer/TransformationRequest;

    .line 114
    iget-object v0, p0, Landroidx/media3/transformer/FallbackListener;->trackCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Landroidx/media3/transformer/FallbackListener;->originalTransformationRequest:Landroidx/media3/transformer/TransformationRequest;

    iget-object v1, p0, Landroidx/media3/transformer/FallbackListener;->fallbackTransformationRequest:Landroidx/media3/transformer/TransformationRequest;

    .line 115
    invoke-virtual {v0, v1}, Landroidx/media3/transformer/TransformationRequest;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 116
    iget-object v0, p0, Landroidx/media3/transformer/FallbackListener;->transformerListenerHandler:Landroidx/media3/common/util/HandlerWrapper;

    new-instance v1, Landroidx/media3/transformer/FallbackListener$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroidx/media3/transformer/FallbackListener$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/transformer/FallbackListener;Landroidx/media3/transformer/TransformationRequest;)V

    invoke-interface {v0, v1}, Landroidx/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setTrackCount(I)V
    .locals 1

    .line 73
    iget-object v0, p0, Landroidx/media3/transformer/FallbackListener;->trackCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method
