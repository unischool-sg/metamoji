.class final Landroidx/media3/transformer/Mp4Info$ExtractorOutputImpl$TrackOutputImpl;
.super Ljava/lang/Object;
.source "Mp4Info.java"

# interfaces
.implements Landroidx/media3/extractor/TrackOutput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/transformer/Mp4Info$ExtractorOutputImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TrackOutputImpl"
.end annotation


# static fields
.field private static final FIXED_BYTE_ARRAY_SIZE:I = 0x3e80


# instance fields
.field private final byteArray:[B

.field public format:Landroidx/media3/common/Format;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e80

    .line 271
    new-array v0, v0, [B

    iput-object v0, p0, Landroidx/media3/transformer/Mp4Info$ExtractorOutputImpl$TrackOutputImpl;->byteArray:[B

    return-void
.end method


# virtual methods
.method public format(Landroidx/media3/common/Format;)V
    .locals 0

    .line 276
    iput-object p1, p0, Landroidx/media3/transformer/Mp4Info$ExtractorOutputImpl$TrackOutputImpl;->format:Landroidx/media3/common/Format;

    return-void
.end method

.method public sampleData(Landroidx/media3/common/DataReader;IZI)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move p3, p2

    :goto_0
    if-lez p3, :cond_1

    .line 285
    iget-object p4, p0, Landroidx/media3/transformer/Mp4Info$ExtractorOutputImpl$TrackOutputImpl;->byteArray:[B

    array-length p4, p4

    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result p4

    .line 286
    iget-object v0, p0, Landroidx/media3/transformer/Mp4Info$ExtractorOutputImpl$TrackOutputImpl;->byteArray:[B

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, p4}, Landroidx/media3/common/DataReader;->read([BII)I

    move-result p4

    const/4 v0, -0x1

    if-eq p4, v0, :cond_0

    const/4 v1, 0x1

    .line 287
    :cond_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    sub-int/2addr p3, p4

    goto :goto_0

    :cond_1
    return p2
.end method

.method public sampleData(Landroidx/media3/common/util/ParsableByteArray;II)V
    .locals 2

    :goto_0
    if-lez p2, :cond_0

    .line 297
    iget-object p3, p0, Landroidx/media3/transformer/Mp4Info$ExtractorOutputImpl$TrackOutputImpl;->byteArray:[B

    array-length p3, p3

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 298
    iget-object v0, p0, Landroidx/media3/transformer/Mp4Info$ExtractorOutputImpl$TrackOutputImpl;->byteArray:[B

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p3}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    sub-int/2addr p2, p3

    goto :goto_0

    :cond_0
    return-void
.end method

.method public sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V
    .locals 0

    return-void
.end method
