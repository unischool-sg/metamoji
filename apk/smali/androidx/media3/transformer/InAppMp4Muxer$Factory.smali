.class public final Landroidx/media3/transformer/InAppMp4Muxer$Factory;
.super Ljava/lang/Object;
.source "InAppMp4Muxer.java"

# interfaces
.implements Landroidx/media3/muxer/Muxer$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/transformer/InAppMp4Muxer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private final metadataProvider:Landroidx/media3/transformer/InAppMp4Muxer$MetadataProvider;

.field private videoDurationUs:J


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, v0}, Landroidx/media3/transformer/InAppMp4Muxer$Factory;-><init>(Landroidx/media3/transformer/InAppMp4Muxer$MetadataProvider;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/transformer/InAppMp4Muxer$MetadataProvider;)V
    .locals 2

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Landroidx/media3/transformer/InAppMp4Muxer$Factory;->metadataProvider:Landroidx/media3/transformer/InAppMp4Muxer$MetadataProvider;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 78
    iput-wide v0, p0, Landroidx/media3/transformer/InAppMp4Muxer$Factory;->videoDurationUs:J

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

    .line 61
    invoke-virtual {p0, p1}, Landroidx/media3/transformer/InAppMp4Muxer$Factory;->create(Ljava/lang/String;)Landroidx/media3/transformer/InAppMp4Muxer;

    move-result-object p1

    return-object p1
.end method

.method public create(Ljava/lang/String;)Landroidx/media3/transformer/InAppMp4Muxer;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/muxer/MuxerException;
        }
    .end annotation

    .line 106
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    new-instance p1, Landroidx/media3/muxer/Mp4Muxer$Builder;

    invoke-static {v0}, Landroidx/media3/muxer/SeekableMuxerOutput;->of(Ljava/io/FileOutputStream;)Landroidx/media3/muxer/SeekableMuxerOutput;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/media3/muxer/Mp4Muxer$Builder;-><init>(Landroidx/media3/muxer/SeekableMuxerOutput;)V

    .line 112
    invoke-virtual {p1}, Landroidx/media3/muxer/Mp4Muxer$Builder;->build()Landroidx/media3/muxer/Mp4Muxer;

    move-result-object v2

    .line 114
    new-instance v1, Landroidx/media3/transformer/InAppMp4Muxer;

    iget-object v3, p0, Landroidx/media3/transformer/InAppMp4Muxer$Factory;->metadataProvider:Landroidx/media3/transformer/InAppMp4Muxer$MetadataProvider;

    iget-wide v4, p0, Landroidx/media3/transformer/InAppMp4Muxer$Factory;->videoDurationUs:J

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Landroidx/media3/transformer/InAppMp4Muxer;-><init>(Landroidx/media3/muxer/Mp4Muxer;Landroidx/media3/transformer/InAppMp4Muxer$MetadataProvider;JLandroidx/media3/transformer/InAppMp4Muxer$1;)V

    return-object v1

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 108
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

    .line 120
    sget-object p1, Landroidx/media3/muxer/Mp4Muxer;->SUPPORTED_VIDEO_SAMPLE_MIME_TYPES:Lcom/google/common/collect/ImmutableList;

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 122
    sget-object p1, Landroidx/media3/muxer/Mp4Muxer;->SUPPORTED_AUDIO_SAMPLE_MIME_TYPES:Lcom/google/common/collect/ImmutableList;

    return-object p1

    .line 124
    :cond_1
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method public setVideoDurationUs(J)Landroidx/media3/transformer/InAppMp4Muxer$Factory;
    .locals 0

    .line 98
    iput-wide p1, p0, Landroidx/media3/transformer/InAppMp4Muxer$Factory;->videoDurationUs:J

    return-object p0
.end method

.method public supportsWritingNegativeTimestampsInEditList()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
