.class public final Landroidx/media3/transformer/TransformationRequest$Builder;
.super Ljava/lang/Object;
.source "TransformationRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/transformer/TransformationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private audioMimeType:Ljava/lang/String;

.field private hdrMode:I

.field private outputHeight:I

.field private videoMimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 47
    iput v0, p0, Landroidx/media3/transformer/TransformationRequest$Builder;->outputHeight:I

    return-void
.end method

.method private constructor <init>(Landroidx/media3/transformer/TransformationRequest;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iget v0, p1, Landroidx/media3/transformer/TransformationRequest;->outputHeight:I

    iput v0, p0, Landroidx/media3/transformer/TransformationRequest$Builder;->outputHeight:I

    .line 52
    iget-object v0, p1, Landroidx/media3/transformer/TransformationRequest;->audioMimeType:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/transformer/TransformationRequest$Builder;->audioMimeType:Ljava/lang/String;

    .line 53
    iget-object v0, p1, Landroidx/media3/transformer/TransformationRequest;->videoMimeType:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/transformer/TransformationRequest$Builder;->videoMimeType:Ljava/lang/String;

    .line 54
    iget p1, p1, Landroidx/media3/transformer/TransformationRequest;->hdrMode:I

    iput p1, p0, Landroidx/media3/transformer/TransformationRequest$Builder;->hdrMode:I

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/transformer/TransformationRequest;Landroidx/media3/transformer/TransformationRequest$1;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Landroidx/media3/transformer/TransformationRequest$Builder;-><init>(Landroidx/media3/transformer/TransformationRequest;)V

    return-void
.end method


# virtual methods
.method public build()Landroidx/media3/transformer/TransformationRequest;
    .locals 6

    .line 137
    new-instance v0, Landroidx/media3/transformer/TransformationRequest;

    iget v1, p0, Landroidx/media3/transformer/TransformationRequest$Builder;->outputHeight:I

    iget-object v2, p0, Landroidx/media3/transformer/TransformationRequest$Builder;->audioMimeType:Ljava/lang/String;

    iget-object v3, p0, Landroidx/media3/transformer/TransformationRequest$Builder;->videoMimeType:Ljava/lang/String;

    iget v4, p0, Landroidx/media3/transformer/TransformationRequest$Builder;->hdrMode:I

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroidx/media3/transformer/TransformationRequest;-><init>(ILjava/lang/String;Ljava/lang/String;ILandroidx/media3/transformer/TransformationRequest$1;)V

    return-object v0
.end method

.method public setAudioMimeType(Ljava/lang/String;)Landroidx/media3/transformer/TransformationRequest$Builder;
    .locals 2

    .line 105
    invoke-static {p1}, Landroidx/media3/common/MimeTypes;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 107
    invoke-static {p1}, Landroidx/media3/common/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v1, "Not an audio MIME type: %s"

    .line 106
    invoke-static {v0, v1, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 110
    iput-object p1, p0, Landroidx/media3/transformer/TransformationRequest$Builder;->audioMimeType:Ljava/lang/String;

    return-object p0
.end method

.method public setHdrMode(I)Landroidx/media3/transformer/TransformationRequest$Builder;
    .locals 0

    .line 124
    iput p1, p0, Landroidx/media3/transformer/TransformationRequest$Builder;->hdrMode:I

    return-object p0
.end method

.method setResolution(I)Landroidx/media3/transformer/TransformationRequest$Builder;
    .locals 0

    .line 131
    iput p1, p0, Landroidx/media3/transformer/TransformationRequest$Builder;->outputHeight:I

    return-object p0
.end method

.method public setVideoMimeType(Ljava/lang/String;)Landroidx/media3/transformer/TransformationRequest$Builder;
    .locals 2

    .line 77
    invoke-static {p1}, Landroidx/media3/common/MimeTypes;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 79
    invoke-static {p1}, Landroidx/media3/common/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v1, "Not a video MIME type: %s"

    .line 78
    invoke-static {v0, v1, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 82
    iput-object p1, p0, Landroidx/media3/transformer/TransformationRequest$Builder;->videoMimeType:Ljava/lang/String;

    return-object p0
.end method
