.class public final Landroidx/media3/transformer/InAppFragmentedMp4Muxer$Factory;
.super Ljava/lang/Object;
.source "InAppFragmentedMp4Muxer.java"

# interfaces
.implements Landroidx/media3/muxer/Muxer$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/transformer/InAppFragmentedMp4Muxer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private final fragmentDurationMs:J

.field private videoDurationUs:J


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 50
    invoke-direct {p0, v0, v1}, Landroidx/media3/transformer/InAppFragmentedMp4Muxer$Factory;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-wide p1, p0, Landroidx/media3/transformer/InAppFragmentedMp4Muxer$Factory;->fragmentDurationMs:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 60
    iput-wide p1, p0, Landroidx/media3/transformer/InAppFragmentedMp4Muxer$Factory;->videoDurationUs:J

    return-void
.end method


# virtual methods
.method public bridge synthetic create(Ljava/lang/String;)Landroidx/media3/muxer/Muxer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/muxer/MuxerException;
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Landroidx/media3/transformer/InAppFragmentedMp4Muxer$Factory;->create(Ljava/lang/String;)Landroidx/media3/transformer/InAppFragmentedMp4Muxer;

    move-result-object p1

    return-object p1
.end method

.method public create(Ljava/lang/String;)Landroidx/media3/transformer/InAppFragmentedMp4Muxer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/muxer/MuxerException;
        }
    .end annotation

    .line 88
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    new-instance p1, Landroidx/media3/muxer/FragmentedMp4Muxer$Builder;

    .line 94
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/media3/muxer/FragmentedMp4Muxer$Builder;-><init>(Ljava/nio/channels/WritableByteChannel;)V

    .line 95
    iget-wide v0, p0, Landroidx/media3/transformer/InAppFragmentedMp4Muxer$Factory;->fragmentDurationMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 96
    invoke-virtual {p1, v0, v1}, Landroidx/media3/muxer/FragmentedMp4Muxer$Builder;->setFragmentDurationMs(J)Landroidx/media3/muxer/FragmentedMp4Muxer$Builder;

    .line 98
    :cond_0
    invoke-virtual {p1}, Landroidx/media3/muxer/FragmentedMp4Muxer$Builder;->build()Landroidx/media3/muxer/FragmentedMp4Muxer;

    move-result-object p1

    .line 100
    new-instance v0, Landroidx/media3/transformer/InAppFragmentedMp4Muxer;

    iget-wide v1, p0, Landroidx/media3/transformer/InAppFragmentedMp4Muxer$Factory;->videoDurationUs:J

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Landroidx/media3/transformer/InAppFragmentedMp4Muxer;-><init>(Landroidx/media3/muxer/FragmentedMp4Muxer;JLandroidx/media3/transformer/InAppFragmentedMp4Muxer$1;)V

    return-object v0

    :catch_0
    move-exception p1

    .line 90
    new-instance v0, Landroidx/media3/muxer/MuxerException;

    const-string v1, "Error creating file output stream"

    invoke-direct {v0, v1, p1}, Landroidx/media3/muxer/MuxerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getSupportedSampleMimeTypes(I)Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 106
    sget-object p1, Landroidx/media3/muxer/FragmentedMp4Muxer;->SUPPORTED_VIDEO_SAMPLE_MIME_TYPES:Lcom/google/common/collect/ImmutableList;

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 108
    sget-object p1, Landroidx/media3/muxer/FragmentedMp4Muxer;->SUPPORTED_AUDIO_SAMPLE_MIME_TYPES:Lcom/google/common/collect/ImmutableList;

    return-object p1

    .line 110
    :cond_1
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method public setVideoDurationUs(J)Landroidx/media3/transformer/InAppFragmentedMp4Muxer$Factory;
    .locals 0

    .line 80
    iput-wide p1, p0, Landroidx/media3/transformer/InAppFragmentedMp4Muxer$Factory;->videoDurationUs:J

    return-object p0
.end method
