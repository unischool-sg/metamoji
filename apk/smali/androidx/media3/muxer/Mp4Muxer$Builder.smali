.class public final Landroidx/media3/muxer/Mp4Muxer$Builder;
.super Ljava/lang/Object;
.source "Mp4Muxer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/muxer/Mp4Muxer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private annexBToAvccConverter:Landroidx/media3/muxer/AnnexBToAvccConverter;

.field private attemptStreamableOutputEnabled:Z

.field private cacheFileSupplier:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private freeSpaceAfterFtypInBytes:I

.field private lastSampleDurationBehavior:I

.field private mp4AtFileParameters:Landroidx/media3/muxer/Mp4Muxer$Mp4AtFileParameters;

.field private outputFileFormat:I

.field private sampleBatchingEnabled:Z

.field private sampleCopyEnabled:Z

.field private final seekableMuxerOutput:Landroidx/media3/muxer/SeekableMuxerOutput;


# direct methods
.method public constructor <init>(Landroidx/media3/muxer/SeekableMuxerOutput;)V
    .locals 0

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    iput-object p1, p0, Landroidx/media3/muxer/Mp4Muxer$Builder;->seekableMuxerOutput:Landroidx/media3/muxer/SeekableMuxerOutput;

    const/4 p1, 0x1

    .line 211
    iput p1, p0, Landroidx/media3/muxer/Mp4Muxer$Builder;->lastSampleDurationBehavior:I

    .line 213
    iput-boolean p1, p0, Landroidx/media3/muxer/Mp4Muxer$Builder;->attemptStreamableOutputEnabled:Z

    const/4 p1, 0x0

    .line 214
    iput p1, p0, Landroidx/media3/muxer/Mp4Muxer$Builder;->outputFileFormat:I

    return-void
.end method

.method public constructor <init>(Ljava/io/FileOutputStream;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 199
    invoke-static {p1}, Landroidx/media3/muxer/SeekableMuxerOutput;->of(Ljava/io/FileOutputStream;)Landroidx/media3/muxer/SeekableMuxerOutput;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/media3/muxer/Mp4Muxer$Builder;-><init>(Landroidx/media3/muxer/SeekableMuxerOutput;)V

    return-void
.end method


# virtual methods
.method public build()Landroidx/media3/muxer/Mp4Muxer;
    .locals 14

    .line 361
    iget v0, p0, Landroidx/media3/muxer/Mp4Muxer$Builder;->outputFileFormat:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 362
    iget-object v0, p0, Landroidx/media3/muxer/Mp4Muxer$Builder;->mp4AtFileParameters:Landroidx/media3/muxer/Mp4Muxer$Mp4AtFileParameters;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "Mp4AtFileParameters must be set for FILE_FORMAT_MP4_WITH_AUXILIARY_TRACKS_EXTENSION"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 365
    iget-object v0, p0, Landroidx/media3/muxer/Mp4Muxer$Builder;->mp4AtFileParameters:Landroidx/media3/muxer/Mp4Muxer$Mp4AtFileParameters;

    iget-boolean v0, v0, Landroidx/media3/muxer/Mp4Muxer$Mp4AtFileParameters;->shouldInterleaveSamples:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/media3/muxer/Mp4Muxer$Builder;->cacheFileSupplier:Lcom/google/common/base/Supplier;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :cond_2
    :goto_1
    const-string v0, "CacheFileSupplier must be set when Mp4AtFileParameters.shouldInterleaveSamples is set to false"

    invoke-static {v1, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 370
    :cond_3
    new-instance v2, Landroidx/media3/muxer/Mp4Muxer;

    iget-object v3, p0, Landroidx/media3/muxer/Mp4Muxer$Builder;->seekableMuxerOutput:Landroidx/media3/muxer/SeekableMuxerOutput;

    iget-object v4, p0, Landroidx/media3/muxer/Mp4Muxer$Builder;->cacheFileSupplier:Lcom/google/common/base/Supplier;

    iget v5, p0, Landroidx/media3/muxer/Mp4Muxer$Builder;->lastSampleDurationBehavior:I

    .line 374
    iget-object v0, p0, Landroidx/media3/muxer/Mp4Muxer$Builder;->annexBToAvccConverter:Landroidx/media3/muxer/AnnexBToAvccConverter;

    if-nez v0, :cond_4

    sget-object v0, Landroidx/media3/muxer/AnnexBToAvccConverter;->DEFAULT:Landroidx/media3/muxer/AnnexBToAvccConverter;

    :cond_4
    move-object v6, v0

    iget-boolean v7, p0, Landroidx/media3/muxer/Mp4Muxer$Builder;->sampleCopyEnabled:Z

    iget-boolean v8, p0, Landroidx/media3/muxer/Mp4Muxer$Builder;->sampleBatchingEnabled:Z

    iget-boolean v9, p0, Landroidx/media3/muxer/Mp4Muxer$Builder;->attemptStreamableOutputEnabled:Z

    iget v10, p0, Landroidx/media3/muxer/Mp4Muxer$Builder;->outputFileFormat:I

    iget-object v11, p0, Landroidx/media3/muxer/Mp4Muxer$Builder;->mp4AtFileParameters:Landroidx/media3/muxer/Mp4Muxer$Mp4AtFileParameters;

    iget v12, p0, Landroidx/media3/muxer/Mp4Muxer$Builder;->freeSpaceAfterFtypInBytes:I

    const/4 v13, 0x0

    invoke-direct/range {v2 .. v13}, Landroidx/media3/muxer/Mp4Muxer;-><init>(Landroidx/media3/muxer/SeekableMuxerOutput;Lcom/google/common/base/Supplier;ILandroidx/media3/muxer/AnnexBToAvccConverter;ZZZILandroidx/media3/muxer/Mp4Muxer$Mp4AtFileParameters;ILandroidx/media3/muxer/Mp4Muxer$1;)V

    return-object v2
.end method

.method public experimentalSetFreeSpaceAfterFileTypeBox(I)Landroidx/media3/muxer/Mp4Muxer$Builder;
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 354
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 355
    iput p1, p0, Landroidx/media3/muxer/Mp4Muxer$Builder;->freeSpaceAfterFtypInBytes:I

    return-object p0
.end method

.method public setAnnexBToAvccConverter(Landroidx/media3/muxer/AnnexBToAvccConverter;)Landroidx/media3/muxer/Mp4Muxer$Builder;
    .locals 0

    .line 256
    iput-object p1, p0, Landroidx/media3/muxer/Mp4Muxer$Builder;->annexBToAvccConverter:Landroidx/media3/muxer/AnnexBToAvccConverter;

    return-object p0
.end method

.method public setAttemptStreamableOutputEnabled(Z)Landroidx/media3/muxer/Mp4Muxer$Builder;
    .locals 0

    .line 313
    iput-boolean p1, p0, Landroidx/media3/muxer/Mp4Muxer$Builder;->attemptStreamableOutputEnabled:Z

    return-object p0
.end method

.method public setCacheFileSupplier(Lcom/google/common/base/Supplier;)Landroidx/media3/muxer/Mp4Muxer$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Supplier<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/media3/muxer/Mp4Muxer$Builder;"
        }
    .end annotation

    .line 230
    iput-object p1, p0, Landroidx/media3/muxer/Mp4Muxer$Builder;->cacheFileSupplier:Lcom/google/common/base/Supplier;

    return-object p0
.end method

.method public setLastSampleDurationBehavior(I)Landroidx/media3/muxer/Mp4Muxer$Builder;
    .locals 0

    .line 243
    iput p1, p0, Landroidx/media3/muxer/Mp4Muxer$Builder;->lastSampleDurationBehavior:I

    return-object p0
.end method

.method public setMp4AtFileParameters(Landroidx/media3/muxer/Mp4Muxer$Mp4AtFileParameters;)Landroidx/media3/muxer/Mp4Muxer$Builder;
    .locals 0

    .line 334
    iput-object p1, p0, Landroidx/media3/muxer/Mp4Muxer$Builder;->mp4AtFileParameters:Landroidx/media3/muxer/Mp4Muxer$Mp4AtFileParameters;

    return-object p0
.end method

.method public setOutputFileFormat(I)Landroidx/media3/muxer/Mp4Muxer$Builder;
    .locals 0

    .line 327
    iput p1, p0, Landroidx/media3/muxer/Mp4Muxer$Builder;->outputFileFormat:I

    return-object p0
.end method

.method public setSampleBatchingEnabled(Z)Landroidx/media3/muxer/Mp4Muxer$Builder;
    .locals 0

    .line 298
    iput-boolean p1, p0, Landroidx/media3/muxer/Mp4Muxer$Builder;->sampleBatchingEnabled:Z

    return-object p0
.end method

.method public setSampleCopyingEnabled(Z)Landroidx/media3/muxer/Mp4Muxer$Builder;
    .locals 0

    .line 276
    iput-boolean p1, p0, Landroidx/media3/muxer/Mp4Muxer$Builder;->sampleCopyEnabled:Z

    return-object p0
.end method
