.class final Landroidx/media3/transformer/SequenceAssetLoader$ClippingIterator;
.super Ljava/lang/Object;
.source "SequenceAssetLoader.java"

# interfaces
.implements Landroidx/media3/common/util/TimestampIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/transformer/SequenceAssetLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ClippingIterator"
.end annotation


# instance fields
.field private final clippingValue:J

.field private hasReachedClippingValue:Z

.field private final iterator:Landroidx/media3/common/util/TimestampIterator;


# direct methods
.method public constructor <init>(Landroidx/media3/common/util/TimestampIterator;J)V
    .locals 0

    .line 710
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 711
    iput-object p1, p0, Landroidx/media3/transformer/SequenceAssetLoader$ClippingIterator;->iterator:Landroidx/media3/common/util/TimestampIterator;

    .line 712
    iput-wide p2, p0, Landroidx/media3/transformer/SequenceAssetLoader$ClippingIterator;->clippingValue:J

    return-void
.end method


# virtual methods
.method public copyOf()Landroidx/media3/common/util/TimestampIterator;
    .locals 4

    .line 732
    new-instance v0, Landroidx/media3/transformer/SequenceAssetLoader$ClippingIterator;

    iget-object v1, p0, Landroidx/media3/transformer/SequenceAssetLoader$ClippingIterator;->iterator:Landroidx/media3/common/util/TimestampIterator;

    invoke-interface {v1}, Landroidx/media3/common/util/TimestampIterator;->copyOf()Landroidx/media3/common/util/TimestampIterator;

    move-result-object v1

    iget-wide v2, p0, Landroidx/media3/transformer/SequenceAssetLoader$ClippingIterator;->clippingValue:J

    invoke-direct {v0, v1, v2, v3}, Landroidx/media3/transformer/SequenceAssetLoader$ClippingIterator;-><init>(Landroidx/media3/common/util/TimestampIterator;J)V

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .line 717
    iget-boolean v0, p0, Landroidx/media3/transformer/SequenceAssetLoader$ClippingIterator;->hasReachedClippingValue:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/transformer/SequenceAssetLoader$ClippingIterator;->iterator:Landroidx/media3/common/util/TimestampIterator;

    invoke-interface {v0}, Landroidx/media3/common/util/TimestampIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public next()J
    .locals 4

    .line 722
    invoke-virtual {p0}, Landroidx/media3/transformer/SequenceAssetLoader$ClippingIterator;->hasNext()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 723
    iget-object v0, p0, Landroidx/media3/transformer/SequenceAssetLoader$ClippingIterator;->iterator:Landroidx/media3/common/util/TimestampIterator;

    invoke-interface {v0}, Landroidx/media3/common/util/TimestampIterator;->next()J

    move-result-wide v0

    .line 724
    iget-wide v2, p0, Landroidx/media3/transformer/SequenceAssetLoader$ClippingIterator;->clippingValue:J

    cmp-long v2, v2, v0

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    .line 725
    iput-boolean v2, p0, Landroidx/media3/transformer/SequenceAssetLoader$ClippingIterator;->hasReachedClippingValue:Z

    :cond_0
    return-wide v0
.end method
