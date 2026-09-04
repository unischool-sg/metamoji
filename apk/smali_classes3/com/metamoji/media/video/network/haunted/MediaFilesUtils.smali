.class public Lcom/metamoji/media/video/network/haunted/MediaFilesUtils;
.super Ljava/lang/Object;
.source "MediaFilesUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/media/video/network/haunted/MediaFilesUtils$MovieInfo;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateImageFromLocalMedia(Ljava/lang/String;D)Landroid/graphics/Bitmap;
    .locals 3

    .line 139
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 140
    invoke-virtual {v0, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const-wide v1, 0x408f400000000000L    # 1000.0

    mul-double/2addr p1, v1

    double-to-long p0, p1

    const/4 p2, 0x2

    .line 142
    invoke-virtual {v0, p0, p1, p2}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 149
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    .line 150
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    .line 151
    new-instance v0, Lcom/metamoji/video/AmvFitter;

    invoke-direct {v0}, Lcom/metamoji/video/AmvFitter;-><init>()V

    .line 152
    sget-object v1, Lcom/metamoji/video/FitMode;->Inside:Lcom/metamoji/video/FitMode;

    const/high16 v2, 0x44200000    # 640.0f

    invoke-virtual {v0, v1, v2, v2}, Lcom/metamoji/video/AmvFitter;->setHint(Lcom/metamoji/video/FitMode;FF)V

    int-to-float p1, p1

    int-to-float p2, p2

    .line 153
    invoke-virtual {v0, p1, p2}, Lcom/metamoji/video/AmvFitter;->fit(FF)Lcom/metamoji/video/ImSize;

    move-result-object p1

    invoke-interface {p1}, Lcom/metamoji/video/ImSize;->getAsSize()Landroid/util/Size;

    move-result-object p1

    .line 154
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    const/4 v0, 0x0

    invoke-static {p0, p2, p1, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 155
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object p1
.end method

.method public static generateInfoFromLocalMedia(Ljava/lang/String;)Lcom/metamoji/media/video/network/haunted/MediaFilesUtils$MovieInfo;
    .locals 12

    .line 64
    new-instance v0, Lcom/metamoji/media/video/network/haunted/MediaFilesUtils$MovieInfo;

    new-instance v1, Lcom/metamoji/media/video/network/haunted/MediaFilesUtils;

    invoke-direct {v1}, Lcom/metamoji/media/video/network/haunted/MediaFilesUtils;-><init>()V

    invoke-direct {v0, v1}, Lcom/metamoji/media/video/network/haunted/MediaFilesUtils$MovieInfo;-><init>(Lcom/metamoji/media/video/network/haunted/MediaFilesUtils;)V

    .line 67
    :try_start_0
    new-instance v1, Landroid/media/MediaExtractor;

    invoke-direct {v1}, Landroid/media/MediaExtractor;-><init>()V

    .line 68
    invoke-virtual {v1, p0}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 70
    :goto_0
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v2

    if-ge p0, v2, :cond_4

    .line 71
    invoke-virtual {v1, p0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    .line 72
    const-string v3, "mime"

    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 74
    const-string/jumbo v4, "video/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "bitrate"

    if-eqz v4, :cond_2

    .line 75
    :try_start_1
    invoke-virtual {v1, p0}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 76
    invoke-static {v3}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    .line 77
    const-string v3, "H264"

    iput-object v3, v0, Lcom/metamoji/media/video/network/haunted/MediaFilesUtils$MovieInfo;->video_codec:Ljava/lang/String;

    .line 78
    const-string/jumbo v3, "width"

    invoke-static {v2, v3}, Lcom/metamoji/media/video/network/haunted/MediaFilesUtils;->get_int(Landroid/media/MediaFormat;Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/metamoji/media/video/network/haunted/MediaFilesUtils$MovieInfo;->width:I

    .line 79
    const-string v3, "height"

    invoke-static {v2, v3}, Lcom/metamoji/media/video/network/haunted/MediaFilesUtils;->get_int(Landroid/media/MediaFormat;Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/metamoji/media/video/network/haunted/MediaFilesUtils$MovieInfo;->height:I

    .line 80
    const-string v3, "durationUs"

    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    long-to-double v3, v3

    const-wide v6, 0x412e848000000000L    # 1000000.0

    div-double/2addr v3, v6

    iput-wide v3, v0, Lcom/metamoji/media/video/network/haunted/MediaFilesUtils$MovieInfo;->duration:D

    .line 85
    const-string v3, "frame-rate"

    invoke-static {v2, v3}, Lcom/metamoji/media/video/network/haunted/MediaFilesUtils;->get_int(Landroid/media/MediaFormat;Ljava/lang/String;)I

    move-result v3

    .line 86
    iput v3, v0, Lcom/metamoji/media/video/network/haunted/MediaFilesUtils$MovieInfo;->frame_rate_n:I

    const/4 v3, 0x1

    .line 87
    iput v3, v0, Lcom/metamoji/media/video/network/haunted/MediaFilesUtils$MovieInfo;->frame_rate_d:I

    const/16 v4, 0x10

    .line 91
    iput v4, v0, Lcom/metamoji/media/video/network/haunted/MediaFilesUtils$MovieInfo;->aspect_w:I

    const/16 v4, 0x9

    .line 92
    iput v4, v0, Lcom/metamoji/media/video/network/haunted/MediaFilesUtils$MovieInfo;->aspect_h:I

    .line 95
    iget v4, v0, Lcom/metamoji/media/video/network/haunted/MediaFilesUtils$MovieInfo;->width:I

    const/16 v6, 0x2d0

    if-gt v4, v6, :cond_1

    .line 96
    iget v4, v0, Lcom/metamoji/media/video/network/haunted/MediaFilesUtils$MovieInfo;->width:I

    const/4 v6, 0x3

    mul-int/2addr v4, v6

    const/4 v7, 0x4

    div-int/2addr v4, v7

    int-to-double v8, v4

    .line 97
    iget v4, v0, Lcom/metamoji/media/video/network/haunted/MediaFilesUtils$MovieInfo;->height:I

    int-to-double v10, v4

    cmpl-double v4, v8, v10

    if-nez v4, :cond_0

    .line 98
    iput v7, v0, Lcom/metamoji/media/video/network/haunted/MediaFilesUtils$MovieInfo;->aspect_w:I

    .line 99
    iput v6, v0, Lcom/metamoji/media/video/network/haunted/MediaFilesUtils$MovieInfo;->aspect_h:I

    goto :goto_1

    .line 102
    :cond_0
    iput v3, v0, Lcom/metamoji/media/video/network/haunted/MediaFilesUtils$MovieInfo;->aspect_w:I

    .line 103
    iput v3, v0, Lcom/metamoji/media/video/network/haunted/MediaFilesUtils$MovieInfo;->aspect_h:I

    .line 110
    :cond_1
    :goto_1
    invoke-static {v2, v5}, Lcom/metamoji/media/video/network/haunted/MediaFilesUtils;->get_int(Landroid/media/MediaFormat;Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/metamoji/media/video/network/haunted/MediaFilesUtils$MovieInfo;->v_bitrate:I

    .line 111
    const-string/jumbo v3, "rotation-degrees"

    invoke-static {v2, v3}, Lcom/metamoji/media/video/network/haunted/MediaFilesUtils;->get_int(Landroid/media/MediaFormat;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/metamoji/media/video/network/haunted/MediaFilesUtils$MovieInfo;->rotate:I

    goto :goto_2

    .line 113
    :cond_2
    const-string v4, "audio/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 114
    invoke-static {v3}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    .line 115
    const-string v3, "AAC"

    iput-object v3, v0, Lcom/metamoji/media/video/network/haunted/MediaFilesUtils$MovieInfo;->audio_codec:Ljava/lang/String;

    .line 116
    const-string/jumbo v3, "sample-rate"

    invoke-static {v2, v3}, Lcom/metamoji/media/video/network/haunted/MediaFilesUtils;->get_int(Landroid/media/MediaFormat;Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/metamoji/media/video/network/haunted/MediaFilesUtils$MovieInfo;->sampling_rate:I

    .line 117
    invoke-static {v2, v5}, Lcom/metamoji/media/video/network/haunted/MediaFilesUtils;->get_int(Landroid/media/MediaFormat;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/metamoji/media/video/network/haunted/MediaFilesUtils$MovieInfo;->a_bitrate:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    :goto_2
    add-int/lit8 p0, p0, 0x1

    goto/16 :goto_0

    :catch_0
    :cond_4
    return-object v0
.end method

.method private static get_int(Landroid/media/MediaFormat;Ljava/lang/String;)I
    .locals 1

    .line 49
    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
