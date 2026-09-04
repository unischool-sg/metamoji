.class final Lio/github/toyota32k/media/lib/track/Muxer$SampleInfo;
.super Ljava/lang/Object;
.source "Muxer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/toyota32k/media/lib/track/Muxer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SampleInfo"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0016\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0005R\u000e\u0010\t\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0013"
    }
    d2 = {
        "Lio/github/toyota32k/media/lib/track/Muxer$SampleInfo;",
        "",
        "sampleType",
        "Lio/github/toyota32k/media/lib/track/Muxer$SampleType;",
        "size",
        "",
        "bufferInfo",
        "Landroid/media/MediaCodec$BufferInfo;",
        "(Lio/github/toyota32k/media/lib/track/Muxer$SampleType;ILandroid/media/MediaCodec$BufferInfo;)V",
        "mFlags",
        "mPresentationTimeUs",
        "",
        "getSampleType",
        "()Lio/github/toyota32k/media/lib/track/Muxer$SampleType;",
        "getSize",
        "()I",
        "writeToBufferInfo",
        "",
        "offset",
        "libMedia_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final mFlags:I

.field private final mPresentationTimeUs:J

.field private final sampleType:Lio/github/toyota32k/media/lib/track/Muxer$SampleType;

.field private final size:I


# direct methods
.method public constructor <init>(Lio/github/toyota32k/media/lib/track/Muxer$SampleType;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 1

    const-string v0, "sampleType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bufferInfo"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput-object p1, p0, Lio/github/toyota32k/media/lib/track/Muxer$SampleInfo;->sampleType:Lio/github/toyota32k/media/lib/track/Muxer$SampleType;

    .line 172
    iput p2, p0, Lio/github/toyota32k/media/lib/track/Muxer$SampleInfo;->size:I

    .line 173
    iget-wide p1, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide p1, p0, Lio/github/toyota32k/media/lib/track/Muxer$SampleInfo;->mPresentationTimeUs:J

    .line 174
    iget p1, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iput p1, p0, Lio/github/toyota32k/media/lib/track/Muxer$SampleInfo;->mFlags:I

    return-void
.end method


# virtual methods
.method public final getSampleType()Lio/github/toyota32k/media/lib/track/Muxer$SampleType;
    .locals 1

    .line 161
    iget-object v0, p0, Lio/github/toyota32k/media/lib/track/Muxer$SampleInfo;->sampleType:Lio/github/toyota32k/media/lib/track/Muxer$SampleType;

    return-object v0
.end method

.method public final getSize()I
    .locals 1

    .line 162
    iget v0, p0, Lio/github/toyota32k/media/lib/track/Muxer$SampleInfo;->size:I

    return v0
.end method

.method public final writeToBufferInfo(Landroid/media/MediaCodec$BufferInfo;I)V
    .locals 7

    const-string v0, "bufferInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    iget v3, p0, Lio/github/toyota32k/media/lib/track/Muxer$SampleInfo;->size:I

    iget-wide v4, p0, Lio/github/toyota32k/media/lib/track/Muxer$SampleInfo;->mPresentationTimeUs:J

    iget v6, p0, Lio/github/toyota32k/media/lib/track/Muxer$SampleInfo;->mFlags:I

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    return-void
.end method
