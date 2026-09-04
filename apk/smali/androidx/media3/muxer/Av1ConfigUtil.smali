.class final Landroidx/media3/muxer/Av1ConfigUtil;
.super Ljava/lang/Object;
.source "Av1ConfigUtil.java"


# static fields
.field private static final MAX_AV1_CONFIG_RECORD_SIZE_BYTES:I = 0x4

.field private static final MAX_HEADER_AND_LENGTH_SIZE_BYTES:I = 0x9

.field private static final MAX_LEB128_SIZE_BYTES:I = 0x8

.field private static final OBU_HAS_SIZE_FIELD_BYTES:I = 0x2


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAv1CodecConfigurationRecord(Ljava/nio/ByteBuffer;)[B
    .locals 7

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    invoke-static {p0}, Landroidx/media3/container/ObuParser;->split(Ljava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object p0

    .line 61
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/container/ObuParser$Obu;

    .line 62
    iget v5, v3, Landroidx/media3/container/ObuParser$Obu;->type:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_1

    .line 63
    invoke-static {v3}, Landroidx/media3/muxer/Av1ConfigUtil;->getConfigObuWithHeaderAndLength(Landroidx/media3/container/ObuParser$Obu;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 64
    :cond_1
    iget v5, v3, Landroidx/media3/container/ObuParser$Obu;->type:I

    if-ne v5, v4, :cond_0

    if-nez v1, :cond_0

    .line 65
    invoke-static {v3}, Landroidx/media3/muxer/Av1ConfigUtil;->getConfigObuWithHeaderAndLength(Landroidx/media3/container/ObuParser$Obu;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 66
    invoke-static {v3}, Landroidx/media3/muxer/Av1ConfigUtil;->parseConfigFromSeqHeader(Landroidx/media3/container/ObuParser$Obu;)Ljava/nio/ByteBuffer;

    move-result-object v2

    goto :goto_0

    .line 69
    :cond_2
    const-string p0, "No sequence header available."

    invoke-static {v1, p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    .line 70
    new-array v3, p0, [Ljava/nio/ByteBuffer;

    .line 71
    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/nio/ByteBuffer;

    invoke-static {v0}, Landroidx/media3/muxer/BoxUtils;->concatenateBuffers([Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v3, 0x2

    if-eqz v0, :cond_3

    .line 74
    new-array v5, v3, [Ljava/nio/ByteBuffer;

    aput-object v1, v5, p0

    aput-object v0, v5, v4

    invoke-static {v5}, Landroidx/media3/muxer/BoxUtils;->concatenateBuffers([Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 77
    :cond_3
    new-array v0, v3, [Ljava/nio/ByteBuffer;

    const-string v3, "csdHeader is null."

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    aput-object v2, v0, p0

    aput-object v1, v0, v4

    invoke-static {v0}, Landroidx/media3/muxer/BoxUtils;->concatenateBuffers([Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method private static getConfigObuWithHeaderAndLength(Landroidx/media3/container/ObuParser$Obu;)Ljava/nio/ByteBuffer;
    .locals 2

    .line 81
    iget-object v0, p0, Landroidx/media3/container/ObuParser$Obu;->payload:Ljava/nio/ByteBuffer;

    .line 82
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    add-int/lit8 v0, v0, 0x9

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 83
    iget v1, p0, Landroidx/media3/container/ObuParser$Obu;->type:I

    invoke-static {v1}, Landroidx/media3/muxer/Av1ConfigUtil;->obuHeader(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 84
    iget-object v1, p0, Landroidx/media3/container/ObuParser$Obu;->payload:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-static {v1}, Landroidx/media3/muxer/Av1ConfigUtil;->lebEncode(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 85
    iget-object p0, p0, Landroidx/media3/container/ObuParser$Obu;->payload:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 86
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object v0
.end method

.method private static lebEncode(I)Ljava/nio/ByteBuffer;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 96
    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 97
    invoke-static {p0}, Landroidx/media3/muxer/Av1ConfigUtil;->lebSizeInBytes(I)I

    move-result v2

    .line 98
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    const/16 v4, 0x8

    if-ge v2, v4, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 99
    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    :goto_2
    if-ge v1, v2, :cond_3

    and-int/lit8 v0, p0, 0x7f

    int-to-byte v0, v0

    shr-int/lit8 p0, p0, 0x7

    if-eqz p0, :cond_2

    or-int/lit16 v0, v0, 0x80

    :cond_2
    int-to-byte v0, v0

    .line 106
    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 108
    :cond_3
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object v3
.end method

.method private static lebSizeInBytes(I)I
    .locals 1

    const/4 v0, 0x0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    shr-int/lit8 p0, p0, 0x7

    if-nez p0, :cond_0

    return v0
.end method

.method private static obuHeader(I)B
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    or-int/lit8 p0, p0, 0x2

    int-to-byte p0, p0

    return p0
.end method

.method private static parseConfigFromSeqHeader(Landroidx/media3/container/ObuParser$Obu;)Ljava/nio/ByteBuffer;
    .locals 6

    const/4 v0, 0x4

    .line 122
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/16 v2, -0x7f

    .line 123
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 125
    invoke-static {p0}, Landroidx/media3/container/ObuParser$SequenceHeader;->parse(Landroidx/media3/container/ObuParser$Obu;)Landroidx/media3/container/ObuParser$SequenceHeader;

    move-result-object p0

    .line 126
    const-string v2, "No sequence header available."

    invoke-static {p0, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget v2, p0, Landroidx/media3/container/ObuParser$SequenceHeader;->seqProfile:I

    shl-int/lit8 v2, v2, 0x5

    iget v3, p0, Landroidx/media3/container/ObuParser$SequenceHeader;->seqLevelIdx0:I

    or-int/2addr v2, v3

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 130
    iget v2, p0, Landroidx/media3/container/ObuParser$SequenceHeader;->seqTier0:I

    const/4 v3, 0x0

    if-lez v2, :cond_0

    const/16 v2, 0x80

    goto :goto_0

    :cond_0
    move v2, v3

    .line 131
    :goto_0
    iget-boolean v4, p0, Landroidx/media3/container/ObuParser$SequenceHeader;->highBitdepth:Z

    if-eqz v4, :cond_1

    const/16 v4, 0x40

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    or-int/2addr v2, v4

    .line 132
    iget-boolean v4, p0, Landroidx/media3/container/ObuParser$SequenceHeader;->twelveBit:Z

    if-eqz v4, :cond_2

    const/16 v4, 0x20

    goto :goto_2

    :cond_2
    move v4, v3

    :goto_2
    or-int/2addr v2, v4

    .line 133
    iget-boolean v4, p0, Landroidx/media3/container/ObuParser$SequenceHeader;->monochrome:Z

    const/16 v5, 0x10

    if-eqz v4, :cond_3

    move v4, v5

    goto :goto_3

    :cond_3
    move v4, v3

    :goto_3
    or-int/2addr v2, v4

    .line 134
    iget-boolean v4, p0, Landroidx/media3/container/ObuParser$SequenceHeader;->subsamplingX:Z

    if-eqz v4, :cond_4

    const/16 v4, 0x8

    goto :goto_4

    :cond_4
    move v4, v3

    :goto_4
    or-int/2addr v2, v4

    .line 135
    iget-boolean v4, p0, Landroidx/media3/container/ObuParser$SequenceHeader;->subsamplingY:Z

    if-eqz v4, :cond_5

    goto :goto_5

    :cond_5
    move v0, v3

    :goto_5
    or-int/2addr v0, v2

    iget v2, p0, Landroidx/media3/container/ObuParser$SequenceHeader;->chromaSamplePosition:I

    or-int/2addr v0, v2

    int-to-byte v0, v0

    .line 128
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 139
    iget-boolean v0, p0, Landroidx/media3/container/ObuParser$SequenceHeader;->initialDisplayDelayPresentFlag:Z

    if-eqz v0, :cond_6

    goto :goto_6

    :cond_6
    move v5, v3

    .line 140
    :goto_6
    iget-boolean v0, p0, Landroidx/media3/container/ObuParser$SequenceHeader;->initialDisplayDelayPresentFlag:Z

    if-eqz v0, :cond_7

    .line 141
    iget p0, p0, Landroidx/media3/container/ObuParser$SequenceHeader;->initialDisplayDelayMinus1:I

    and-int/lit8 v3, p0, 0xf

    :cond_7
    or-int p0, v5, v3

    int-to-byte p0, p0

    .line 137
    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 143
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object v1
.end method
