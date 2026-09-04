.class Landroidx/media3/transformer/TransmuxTranscodeHelper$2;
.super Ljava/lang/Thread;
.source "TransmuxTranscodeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/transformer/TransmuxTranscodeHelper;->getResumeMetadataAsync(Landroid/content/Context;Ljava/lang/String;Landroidx/media3/transformer/Composition;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$composition:Landroidx/media3/transformer/Composition;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$filePath:Ljava/lang/String;

.field final synthetic val$resumeMetadataSettableFuture:Lcom/google/common/util/concurrent/SettableFuture;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/common/util/concurrent/SettableFuture;Landroid/content/Context;Ljava/lang/String;Landroidx/media3/transformer/Composition;)V
    .locals 0

    .line 267
    iput-object p2, p0, Landroidx/media3/transformer/TransmuxTranscodeHelper$2;->val$resumeMetadataSettableFuture:Lcom/google/common/util/concurrent/SettableFuture;

    iput-object p3, p0, Landroidx/media3/transformer/TransmuxTranscodeHelper$2;->val$context:Landroid/content/Context;

    iput-object p4, p0, Landroidx/media3/transformer/TransmuxTranscodeHelper$2;->val$filePath:Ljava/lang/String;

    iput-object p5, p0, Landroidx/media3/transformer/TransmuxTranscodeHelper$2;->val$composition:Landroidx/media3/transformer/Composition;

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 271
    :try_start_0
    iget-object v0, p0, Landroidx/media3/transformer/TransmuxTranscodeHelper$2;->val$resumeMetadataSettableFuture:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/SettableFuture;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 274
    :cond_0
    iget-object v0, p0, Landroidx/media3/transformer/TransmuxTranscodeHelper$2;->val$context:Landroid/content/Context;

    iget-object v1, p0, Landroidx/media3/transformer/TransmuxTranscodeHelper$2;->val$filePath:Ljava/lang/String;

    invoke-static {v0, v1}, Landroidx/media3/transformer/Mp4Info;->create(Landroid/content/Context;Ljava/lang/String;)Landroidx/media3/transformer/Mp4Info;

    move-result-object v0

    .line 275
    iget-wide v1, v0, Landroidx/media3/transformer/Mp4Info;->lastSyncSampleTimestampUs:J

    .line 277
    new-instance v3, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v3}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v1, v4

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    move v5, v4

    .line 281
    :goto_0
    iget-object v6, p0, Landroidx/media3/transformer/TransmuxTranscodeHelper$2;->val$composition:Landroidx/media3/transformer/Composition;

    iget-object v6, v6, Landroidx/media3/transformer/Composition;->sequences:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v6}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 283
    iget-object v6, p0, Landroidx/media3/transformer/TransmuxTranscodeHelper$2;->val$composition:Landroidx/media3/transformer/Composition;

    iget-object v6, v6, Landroidx/media3/transformer/Composition;->sequences:Lcom/google/common/collect/ImmutableList;

    .line 284
    invoke-virtual {v6, v5}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/transformer/EditedMediaItemSequence;

    iget-object v6, v6, Landroidx/media3/transformer/EditedMediaItemSequence;->editedMediaItems:Lcom/google/common/collect/ImmutableList;

    move-wide v8, v1

    move v7, v4

    .line 288
    :goto_1
    invoke-virtual {v6}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v10

    const-wide/16 v11, 0x0

    if-ge v7, v10, :cond_2

    cmp-long v10, v8, v11

    if-lez v10, :cond_2

    .line 290
    iget-object v10, p0, Landroidx/media3/transformer/TransmuxTranscodeHelper$2;->val$context:Landroid/content/Context;

    .line 292
    invoke-virtual {v6, v7}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/media3/transformer/EditedMediaItem;

    iget-object v11, v11, Landroidx/media3/transformer/EditedMediaItem;->mediaItem:Landroidx/media3/common/MediaItem;

    .line 291
    invoke-static {v10, v11}, Landroidx/media3/transformer/TransmuxTranscodeHelper;->access$000(Landroid/content/Context;Landroidx/media3/common/MediaItem;)J

    move-result-wide v10

    cmp-long v12, v10, v8

    if-lez v12, :cond_1

    goto :goto_2

    :cond_1
    sub-long/2addr v8, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    move-wide v8, v11

    .line 301
    :goto_2
    new-instance v6, Landroid/util/Pair;

    .line 302
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 301
    invoke-virtual {v3, v6}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 305
    :cond_3
    iget-object v4, p0, Landroidx/media3/transformer/TransmuxTranscodeHelper$2;->val$resumeMetadataSettableFuture:Lcom/google/common/util/concurrent/SettableFuture;

    new-instance v5, Landroidx/media3/transformer/TransmuxTranscodeHelper$ResumeMetadata;

    .line 308
    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    iget-object v0, v0, Landroidx/media3/transformer/Mp4Info;->videoFormat:Landroidx/media3/common/Format;

    invoke-direct {v5, v1, v2, v3, v0}, Landroidx/media3/transformer/TransmuxTranscodeHelper$ResumeMetadata;-><init>(JLcom/google/common/collect/ImmutableList;Landroidx/media3/common/Format;)V

    .line 305
    invoke-virtual {v4, v5}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 311
    iget-object v1, p0, Landroidx/media3/transformer/TransmuxTranscodeHelper$2;->val$resumeMetadataSettableFuture:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    return-void
.end method
