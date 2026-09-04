.class final Lio/github/toyota32k/media/lib/audio/AudioChannel$AudioBuffer;
.super Ljava/lang/Object;
.source "AudioChannel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/toyota32k/media/lib/audio/AudioChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AudioBuffer"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0005\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Lio/github/toyota32k/media/lib/audio/AudioChannel$AudioBuffer;",
        "",
        "()V",
        "bufferIndex",
        "",
        "getBufferIndex",
        "()I",
        "setBufferIndex",
        "(I)V",
        "data",
        "Ljava/nio/ShortBuffer;",
        "getData",
        "()Ljava/nio/ShortBuffer;",
        "setData",
        "(Ljava/nio/ShortBuffer;)V",
        "presentationTimeUs",
        "",
        "getPresentationTimeUs",
        "()J",
        "setPresentationTimeUs",
        "(J)V",
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
.field private bufferIndex:I

.field private data:Ljava/nio/ShortBuffer;

.field private presentationTimeUs:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBufferIndex()I
    .locals 1

    .line 19
    iget v0, p0, Lio/github/toyota32k/media/lib/audio/AudioChannel$AudioBuffer;->bufferIndex:I

    return v0
.end method

.method public final getData()Ljava/nio/ShortBuffer;
    .locals 1

    .line 21
    iget-object v0, p0, Lio/github/toyota32k/media/lib/audio/AudioChannel$AudioBuffer;->data:Ljava/nio/ShortBuffer;

    return-object v0
.end method

.method public final getPresentationTimeUs()J
    .locals 2

    .line 20
    iget-wide v0, p0, Lio/github/toyota32k/media/lib/audio/AudioChannel$AudioBuffer;->presentationTimeUs:J

    return-wide v0
.end method

.method public final setBufferIndex(I)V
    .locals 0

    .line 19
    iput p1, p0, Lio/github/toyota32k/media/lib/audio/AudioChannel$AudioBuffer;->bufferIndex:I

    return-void
.end method

.method public final setData(Ljava/nio/ShortBuffer;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lio/github/toyota32k/media/lib/audio/AudioChannel$AudioBuffer;->data:Ljava/nio/ShortBuffer;

    return-void
.end method

.method public final setPresentationTimeUs(J)V
    .locals 0

    .line 20
    iput-wide p1, p0, Lio/github/toyota32k/media/lib/audio/AudioChannel$AudioBuffer;->presentationTimeUs:J

    return-void
.end method
