.class final Landroidx/media3/inspector/FrameExtractorInternal$PlayerListener;
.super Ljava/lang/Object;
.source "FrameExtractorInternal.java"

# interfaces
.implements Landroidx/media3/exoplayer/analytics/AnalyticsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/inspector/FrameExtractorInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PlayerListener"
.end annotation


# instance fields
.field private final internal:Landroidx/media3/inspector/FrameExtractorInternal;


# direct methods
.method private constructor <init>(Landroidx/media3/inspector/FrameExtractorInternal;)V
    .locals 0

    .line 399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 400
    iput-object p1, p0, Landroidx/media3/inspector/FrameExtractorInternal$PlayerListener;->internal:Landroidx/media3/inspector/FrameExtractorInternal;

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/inspector/FrameExtractorInternal;Landroidx/media3/inspector/FrameExtractorInternal$1;)V
    .locals 0

    .line 396
    invoke-direct {p0, p1}, Landroidx/media3/inspector/FrameExtractorInternal$PlayerListener;-><init>(Landroidx/media3/inspector/FrameExtractorInternal;)V

    return-void
.end method


# virtual methods
.method public onPlaybackStateChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V
    .locals 0

    const/4 p1, 0x3

    if-ne p2, p1, :cond_0

    .line 416
    iget-object p1, p0, Landroidx/media3/inspector/FrameExtractorInternal$PlayerListener;->internal:Landroidx/media3/inspector/FrameExtractorInternal;

    invoke-static {p1}, Landroidx/media3/inspector/FrameExtractorInternal;->access$200(Landroidx/media3/inspector/FrameExtractorInternal;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    .line 420
    iget-object p1, p0, Landroidx/media3/inspector/FrameExtractorInternal$PlayerListener;->internal:Landroidx/media3/inspector/FrameExtractorInternal;

    .line 421
    invoke-static {p1}, Landroidx/media3/inspector/FrameExtractorInternal;->access$100(Landroidx/media3/inspector/FrameExtractorInternal;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 422
    iget-object p2, p0, Landroidx/media3/inspector/FrameExtractorInternal$PlayerListener;->internal:Landroidx/media3/inspector/FrameExtractorInternal;

    invoke-static {p2}, Landroidx/media3/inspector/FrameExtractorInternal;->access$300(Landroidx/media3/inspector/FrameExtractorInternal;)Landroidx/media3/inspector/FrameExtractor$Frame;

    move-result-object p2

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media3/inspector/FrameExtractor$Frame;

    invoke-virtual {p1, p2}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public onPlayerError(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/PlaybackException;)V
    .locals 1

    .line 405
    iget-object p1, p0, Landroidx/media3/inspector/FrameExtractorInternal$PlayerListener;->internal:Landroidx/media3/inspector/FrameExtractorInternal;

    .line 406
    invoke-static {p1}, Landroidx/media3/inspector/FrameExtractorInternal;->access$100(Landroidx/media3/inspector/FrameExtractorInternal;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 407
    invoke-virtual {p1, p2}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    return-void
.end method
