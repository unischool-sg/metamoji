.class public final Lio/github/toyota32k/media/lib/extractor/Extractor;
.super Ljava/lang/Object;
.source "Extractor.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010(\u001a\u00020\u00062\u0006\u0010)\u001a\u00020*J\u0008\u0010+\u001a\u00020,H\u0016J\u0016\u0010-\u001a\u00020,2\u0006\u0010.\u001a\u00020\u001c2\u0006\u0010/\u001a\u000200R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0008\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0084.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u001a\u0010\u001b\u001a\u00020\u001cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R$\u0010#\u001a\u00020\"2\u0006\u0010!\u001a\u00020\"@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'\u00a8\u00061"
    }
    d2 = {
        "Lio/github/toyota32k/media/lib/extractor/Extractor;",
        "Ljava/io/Closeable;",
        "inPath",
        "Lio/github/toyota32k/media/lib/converter/AndroidFile;",
        "(Lio/github/toyota32k/media/lib/converter/AndroidFile;)V",
        "disposed",
        "",
        "<set-?>",
        "eos",
        "getEos",
        "()Z",
        "extractor",
        "Landroid/media/MediaExtractor;",
        "getExtractor",
        "()Landroid/media/MediaExtractor;",
        "inputFormat",
        "Landroid/media/MediaFormat;",
        "getInputFormat",
        "()Landroid/media/MediaFormat;",
        "setInputFormat",
        "(Landroid/media/MediaFormat;)V",
        "logger",
        "Lio/github/toyota32k/media/lib/utils/UtLog;",
        "getLogger",
        "()Lio/github/toyota32k/media/lib/utils/UtLog;",
        "setLogger",
        "(Lio/github/toyota32k/media/lib/utils/UtLog;)V",
        "trackIdx",
        "",
        "getTrackIdx",
        "()I",
        "setTrackIdx",
        "(I)V",
        "v",
        "Lio/github/toyota32k/media/lib/converter/TrimmingRange;",
        "trimmingRange",
        "getTrimmingRange",
        "()Lio/github/toyota32k/media/lib/converter/TrimmingRange;",
        "setTrimmingRange",
        "(Lio/github/toyota32k/media/lib/converter/TrimmingRange;)V",
        "chainTo",
        "output",
        "Lio/github/toyota32k/media/lib/codec/BaseDecoder;",
        "close",
        "",
        "selectTrack",
        "idx",
        "type",
        "Lio/github/toyota32k/media/lib/track/Muxer$SampleType;",
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
.field private disposed:Z

.field private eos:Z

.field private final extractor:Landroid/media/MediaExtractor;

.field protected inputFormat:Landroid/media/MediaFormat;

.field public logger:Lio/github/toyota32k/media/lib/utils/UtLog;

.field private trackIdx:I

.field private trimmingRange:Lio/github/toyota32k/media/lib/converter/TrimmingRange;


# direct methods
.method public constructor <init>(Lio/github/toyota32k/media/lib/converter/AndroidFile;)V
    .locals 1

    const-string v0, "inPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    sget-object v0, Lio/github/toyota32k/media/lib/extractor/Extractor$extractor$1;->INSTANCE:Lio/github/toyota32k/media/lib/extractor/Extractor$extractor$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1, v0}, Lio/github/toyota32k/media/lib/converter/AndroidFile;->fileDescriptorToRead(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/MediaExtractor;

    iput-object p1, p0, Lio/github/toyota32k/media/lib/extractor/Extractor;->extractor:Landroid/media/MediaExtractor;

    const/4 p1, -0x1

    .line 21
    iput p1, p0, Lio/github/toyota32k/media/lib/extractor/Extractor;->trackIdx:I

    .line 25
    sget-object p1, Lio/github/toyota32k/media/lib/converter/TrimmingRange;->Companion:Lio/github/toyota32k/media/lib/converter/TrimmingRange$Companion;

    invoke-virtual {p1}, Lio/github/toyota32k/media/lib/converter/TrimmingRange$Companion;->getEmpty()Lio/github/toyota32k/media/lib/converter/TrimmingRange;

    move-result-object p1

    iput-object p1, p0, Lio/github/toyota32k/media/lib/extractor/Extractor;->trimmingRange:Lio/github/toyota32k/media/lib/converter/TrimmingRange;

    return-void
.end method


# virtual methods
.method public final chainTo(Lio/github/toyota32k/media/lib/codec/BaseDecoder;)Z
    .locals 12

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-boolean v0, p0, Lio/github/toyota32k/media/lib/extractor/Extractor;->eos:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 46
    :cond_0
    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/extractor/Extractor;->getLogger()Lio/github/toyota32k/media/lib/utils/UtLog;

    move-result-object v0

    iget v2, p0, Lio/github/toyota32k/media/lib/extractor/Extractor;->trackIdx:I

    const/4 v3, 0x1

    if-ltz v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    const-string v4, "selectTrack() must be called before."

    invoke-virtual {v0, v2, v4}, Lio/github/toyota32k/media/lib/utils/UtLog;->assert(ZLjava/lang/String;)V

    .line 48
    invoke-virtual {p1}, Lio/github/toyota32k/media/lib/codec/BaseDecoder;->getDecoder()Landroid/media/MediaCodec;

    move-result-object v5

    const-wide/16 v6, 0x0

    .line 49
    invoke-virtual {v5, v6, v7}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v6

    if-gez v6, :cond_2

    .line 51
    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/extractor/Extractor;->getLogger()Lio/github/toyota32k/media/lib/utils/UtLog;

    move-result-object p1

    const-string v0, "no buffered data"

    invoke-virtual {p1, v0}, Lio/github/toyota32k/media/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    return v1

    .line 55
    :cond_2
    iget-object p1, p0, Lio/github/toyota32k/media/lib/extractor/Extractor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {p1}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result p1

    if-ltz p1, :cond_6

    .line 61
    iget-object p1, p0, Lio/github/toyota32k/media/lib/extractor/Extractor;->trimmingRange:Lio/github/toyota32k/media/lib/converter/TrimmingRange;

    iget-object v0, p0, Lio/github/toyota32k/media/lib/extractor/Extractor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v7

    invoke-virtual {p1, v7, v8}, Lio/github/toyota32k/media/lib/converter/TrimmingRange;->checkEnd(J)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_2

    .line 66
    :cond_3
    invoke-virtual {v5, v6}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 67
    iget-object v0, p0, Lio/github/toyota32k/media/lib/extractor/Extractor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, p1, v1}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v8

    if-lez v8, :cond_4

    .line 69
    iget-object p1, p0, Lio/github/toyota32k/media/lib/extractor/Extractor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {p1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v9

    .line 70
    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/extractor/Extractor;->getLogger()Lio/github/toyota32k/media/lib/utils/UtLog;

    move-result-object p1

    new-instance v0, Lio/github/toyota32k/media/lib/extractor/Extractor$chainTo$1;

    invoke-direct {v0, v8, v9, v10}, Lio/github/toyota32k/media/lib/extractor/Extractor$chainTo$1;-><init>(IJ)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p1, v0}, Lio/github/toyota32k/media/lib/utils/UtLog;->verbose(Lkotlin/jvm/functions/Function0;)V

    .line 71
    iget-object p1, p0, Lio/github/toyota32k/media/lib/extractor/Extractor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {p1}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v11

    const/4 v7, 0x0

    invoke-virtual/range {v5 .. v11}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_1

    .line 73
    :cond_4
    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/extractor/Extractor;->getLogger()Lio/github/toyota32k/media/lib/utils/UtLog;

    move-result-object p1

    const-string v0, "zero byte read."

    invoke-virtual {p1, v0}, Lio/github/toyota32k/media/lib/utils/UtLog;->error(Ljava/lang/String;)V

    .line 75
    :goto_1
    iget-object p1, p0, Lio/github/toyota32k/media/lib/extractor/Extractor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {p1}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_3

    .line 66
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type java.nio.ByteBuffer"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 62
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/extractor/Extractor;->getLogger()Lio/github/toyota32k/media/lib/utils/UtLog;

    move-result-object p1

    const-string v0, "found eos"

    invoke-virtual {p1, v0}, Lio/github/toyota32k/media/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 63
    iput-boolean v3, p0, Lio/github/toyota32k/media/lib/extractor/Extractor;->eos:Z

    const-wide/16 v9, 0x0

    const/4 v11, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 64
    invoke-virtual/range {v5 .. v11}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    :goto_3
    return v3
.end method

.method public close()V
    .locals 2

    .line 82
    iget-boolean v0, p0, Lio/github/toyota32k/media/lib/extractor/Extractor;->disposed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 83
    iput-boolean v0, p0, Lio/github/toyota32k/media/lib/extractor/Extractor;->disposed:Z

    .line 84
    iget-object v0, p0, Lio/github/toyota32k/media/lib/extractor/Extractor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 85
    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/extractor/Extractor;->getLogger()Lio/github/toyota32k/media/lib/utils/UtLog;

    move-result-object v0

    const-string v1, "disposed"

    invoke-virtual {v0, v1}, Lio/github/toyota32k/media/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final getEos()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lio/github/toyota32k/media/lib/extractor/Extractor;->eos:Z

    return v0
.end method

.method public final getExtractor()Landroid/media/MediaExtractor;
    .locals 1

    .line 20
    iget-object v0, p0, Lio/github/toyota32k/media/lib/extractor/Extractor;->extractor:Landroid/media/MediaExtractor;

    return-object v0
.end method

.method protected final getInputFormat()Landroid/media/MediaFormat;
    .locals 1

    .line 22
    iget-object v0, p0, Lio/github/toyota32k/media/lib/extractor/Extractor;->inputFormat:Landroid/media/MediaFormat;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "inputFormat"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getLogger()Lio/github/toyota32k/media/lib/utils/UtLog;
    .locals 1

    .line 19
    iget-object v0, p0, Lio/github/toyota32k/media/lib/extractor/Extractor;->logger:Lio/github/toyota32k/media/lib/utils/UtLog;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "logger"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getTrackIdx()I
    .locals 1

    .line 21
    iget v0, p0, Lio/github/toyota32k/media/lib/extractor/Extractor;->trackIdx:I

    return v0
.end method

.method public final getTrimmingRange()Lio/github/toyota32k/media/lib/converter/TrimmingRange;
    .locals 1

    .line 25
    iget-object v0, p0, Lio/github/toyota32k/media/lib/extractor/Extractor;->trimmingRange:Lio/github/toyota32k/media/lib/converter/TrimmingRange;

    return-object v0
.end method

.method public final selectTrack(ILio/github/toyota32k/media/lib/track/Muxer$SampleType;)V
    .locals 9

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    new-instance v1, Lio/github/toyota32k/media/lib/utils/UtLog;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Extractor("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const/16 v0, 0x29

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object p2, Lio/github/toyota32k/media/lib/converter/Converter;->Companion:Lio/github/toyota32k/media/lib/converter/Converter$Companion;

    invoke-virtual {p2}, Lio/github/toyota32k/media/lib/converter/Converter$Companion;->getLogger()Lio/github/toyota32k/media/lib/utils/UtLog;

    move-result-object v3

    const/16 v7, 0x1c

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lio/github/toyota32k/media/lib/utils/UtLog;-><init>(Ljava/lang/String;Lio/github/toyota32k/media/lib/utils/UtLog;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v1}, Lio/github/toyota32k/media/lib/extractor/Extractor;->setLogger(Lio/github/toyota32k/media/lib/utils/UtLog;)V

    .line 40
    iput p1, p0, Lio/github/toyota32k/media/lib/extractor/Extractor;->trackIdx:I

    .line 41
    iget-object p2, p0, Lio/github/toyota32k/media/lib/extractor/Extractor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {p2, p1}, Landroid/media/MediaExtractor;->selectTrack(I)V

    return-void
.end method

.method protected final setInputFormat(Landroid/media/MediaFormat;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iput-object p1, p0, Lio/github/toyota32k/media/lib/extractor/Extractor;->inputFormat:Landroid/media/MediaFormat;

    return-void
.end method

.method public final setLogger(Lio/github/toyota32k/media/lib/utils/UtLog;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iput-object p1, p0, Lio/github/toyota32k/media/lib/extractor/Extractor;->logger:Lio/github/toyota32k/media/lib/utils/UtLog;

    return-void
.end method

.method public final setTrackIdx(I)V
    .locals 0

    .line 21
    iput p1, p0, Lio/github/toyota32k/media/lib/extractor/Extractor;->trackIdx:I

    return-void
.end method

.method public final setTrimmingRange(Lio/github/toyota32k/media/lib/converter/TrimmingRange;)V
    .locals 5

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lio/github/toyota32k/media/lib/extractor/Extractor;->trimmingRange:Lio/github/toyota32k/media/lib/converter/TrimmingRange;

    .line 28
    iput-object p1, p0, Lio/github/toyota32k/media/lib/extractor/Extractor;->trimmingRange:Lio/github/toyota32k/media/lib/converter/TrimmingRange;

    .line 29
    invoke-virtual {p1}, Lio/github/toyota32k/media/lib/converter/TrimmingRange;->getHasStart()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 30
    iget-object v0, p0, Lio/github/toyota32k/media/lib/extractor/Extractor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {p1}, Lio/github/toyota32k/media/lib/converter/TrimmingRange;->getStartUs()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4, v2}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 31
    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/extractor/Extractor;->getLogger()Lio/github/toyota32k/media/lib/utils/UtLog;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SeekTo: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/github/toyota32k/media/lib/extractor/Extractor;->trimmingRange:Lio/github/toyota32k/media/lib/converter/TrimmingRange;

    invoke-virtual {v1}, Lio/github/toyota32k/media/lib/converter/TrimmingRange;->getStartUs()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/github/toyota32k/media/lib/extractor/Extractor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v1

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/github/toyota32k/media/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    return-void

    .line 32
    :cond_0
    invoke-virtual {v0}, Lio/github/toyota32k/media/lib/converter/TrimmingRange;->getHasStart()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 33
    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/extractor/Extractor;->getLogger()Lio/github/toyota32k/media/lib/utils/UtLog;

    move-result-object p1

    const-string v0, "don\'t set trimmingRange twice."

    invoke-virtual {p1, v2, v0}, Lio/github/toyota32k/media/lib/utils/UtLog;->assert(ZLjava/lang/String;)V

    .line 34
    iget-object p1, p0, Lio/github/toyota32k/media/lib/extractor/Extractor;->extractor:Landroid/media/MediaExtractor;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/media/MediaExtractor;->seekTo(JI)V

    :cond_1
    return-void
.end method
