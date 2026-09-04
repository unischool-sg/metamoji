.class public final Landroidx/media3/inspector/MetadataRetriever;
.super Ljava/lang/Object;
.source "MetadataRetriever.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/inspector/MetadataRetriever$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_MAXIMUM_PARALLEL_RETRIEVALS:I = 0x5


# instance fields
.field private final internalRetriever:Landroidx/media3/exoplayer/MetadataRetrieverInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    const-string v0, "media3.inspector"

    invoke-static {v0}, Landroidx/media3/common/MediaLibraryInfo;->registerModule(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroidx/media3/exoplayer/MetadataRetrieverInternal;)V
    .locals 0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-object p1, p0, Landroidx/media3/inspector/MetadataRetriever;->internalRetriever:Landroidx/media3/exoplayer/MetadataRetrieverInternal;

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/exoplayer/MetadataRetrieverInternal;Landroidx/media3/inspector/MetadataRetriever$1;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Landroidx/media3/inspector/MetadataRetriever;-><init>(Landroidx/media3/exoplayer/MetadataRetrieverInternal;)V

    return-void
.end method

.method public static setMaximumParallelRetrievals(I)V
    .locals 1

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 169
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 170
    sget-object v0, Landroidx/media3/exoplayer/MetadataRetrieverInternal$SharedWorkerThread;->MAX_PARALLEL_RETRIEVALS:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 176
    iget-object v0, p0, Landroidx/media3/inspector/MetadataRetriever;->internalRetriever:Landroidx/media3/exoplayer/MetadataRetrieverInternal;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/MetadataRetrieverInternal;->close()V

    return-void
.end method

.method public retrieveDurationUs()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 158
    iget-object v0, p0, Landroidx/media3/inspector/MetadataRetriever;->internalRetriever:Landroidx/media3/exoplayer/MetadataRetrieverInternal;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/MetadataRetrieverInternal;->retrieveDurationUs()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public retrieveTimeline()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/common/Timeline;",
            ">;"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Landroidx/media3/inspector/MetadataRetriever;->internalRetriever:Landroidx/media3/exoplayer/MetadataRetrieverInternal;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/MetadataRetrieverInternal;->retrieveTimeline()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public retrieveTrackGroups()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/exoplayer/source/TrackGroupArray;",
            ">;"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Landroidx/media3/inspector/MetadataRetriever;->internalRetriever:Landroidx/media3/exoplayer/MetadataRetrieverInternal;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/MetadataRetrieverInternal;->retrieveTrackGroups()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
