.class public abstract Lio/github/toyota32k/media/lib/codec/BaseCodec;
.super Ljava/lang/Object;
.source "BaseCodec.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/toyota32k/media/lib/codec/BaseCodec$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008&\u0018\u0000 *2\u00020\u0001:\u0001*B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010&\u001a\u00020\'H\u0016J\u0008\u0010(\u001a\u00020\'H\u0014J\u0006\u0010)\u001a\u00020\'R\u0014\u0010\u0005\u001a\u00020\u0006X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u001e\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\n@BX\u0084\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR$\u0010\u000e\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\n@DX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\r\"\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0013X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u0012\u0010\u0018\u001a\u00020\u0019X\u00a4\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u001bR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u0012\u0010\u001e\u001a\u00020\u001fX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010!R\u0012\u0010\"\u001a\u00020#X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008$\u0010%\u00a8\u0006+"
    }
    d2 = {
        "Lio/github/toyota32k/media/lib/codec/BaseCodec;",
        "Ljava/io/Closeable;",
        "mediaFormat",
        "Landroid/media/MediaFormat;",
        "(Landroid/media/MediaFormat;)V",
        "bufferInfo",
        "Landroid/media/MediaCodec$BufferInfo;",
        "getBufferInfo",
        "()Landroid/media/MediaCodec$BufferInfo;",
        "<set-?>",
        "",
        "disposed",
        "getDisposed",
        "()Z",
        "eos",
        "getEos",
        "setEos",
        "(Z)V",
        "logger",
        "Lio/github/toyota32k/media/lib/utils/UtLog;",
        "getLogger",
        "()Lio/github/toyota32k/media/lib/utils/UtLog;",
        "setLogger",
        "(Lio/github/toyota32k/media/lib/utils/UtLog;)V",
        "mediaCodec",
        "Landroid/media/MediaCodec;",
        "getMediaCodec",
        "()Landroid/media/MediaCodec;",
        "getMediaFormat",
        "()Landroid/media/MediaFormat;",
        "name",
        "",
        "getName",
        "()Ljava/lang/String;",
        "sampleType",
        "Lio/github/toyota32k/media/lib/track/Muxer$SampleType;",
        "getSampleType",
        "()Lio/github/toyota32k/media/lib/track/Muxer$SampleType;",
        "close",
        "",
        "configure",
        "start",
        "Companion",
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


# static fields
.field public static final Companion:Lio/github/toyota32k/media/lib/codec/BaseCodec$Companion;

.field public static final TIMEOUT_IMMEDIATE:J


# instance fields
.field private final bufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private disposed:Z

.field private eos:Z

.field public logger:Lio/github/toyota32k/media/lib/utils/UtLog;

.field private final mediaFormat:Landroid/media/MediaFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/github/toyota32k/media/lib/codec/BaseCodec$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/github/toyota32k/media/lib/codec/BaseCodec$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/github/toyota32k/media/lib/codec/BaseCodec;->Companion:Lio/github/toyota32k/media/lib/codec/BaseCodec$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/media/MediaFormat;)V
    .locals 1

    const-string v0, "mediaFormat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/toyota32k/media/lib/codec/BaseCodec;->mediaFormat:Landroid/media/MediaFormat;

    .line 24
    new-instance p1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object p1, p0, Lio/github/toyota32k/media/lib/codec/BaseCodec;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 40
    iget-boolean v0, p0, Lio/github/toyota32k/media/lib/codec/BaseCodec;->disposed:Z

    if-nez v0, :cond_0

    .line 41
    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/codec/BaseCodec;->getMediaCodec()Landroid/media/MediaCodec;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lio/github/toyota32k/media/lib/codec/BaseCodec;->disposed:Z

    .line 43
    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/codec/BaseCodec;->getLogger()Lio/github/toyota32k/media/lib/utils/UtLog;

    move-result-object v0

    const-string v1, "disposed"

    invoke-virtual {v0, v1}, Lio/github/toyota32k/media/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected configure()V
    .locals 4

    .line 27
    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/codec/BaseCodec;->getMediaCodec()Landroid/media/MediaCodec;

    move-result-object v0

    iget-object v1, p0, Lio/github/toyota32k/media/lib/codec/BaseCodec;->mediaFormat:Landroid/media/MediaFormat;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v2, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    return-void
.end method

.method protected final getBufferInfo()Landroid/media/MediaCodec$BufferInfo;
    .locals 1

    .line 24
    iget-object v0, p0, Lio/github/toyota32k/media/lib/codec/BaseCodec;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    return-object v0
.end method

.method protected final getDisposed()Z
    .locals 1

    .line 36
    iget-boolean v0, p0, Lio/github/toyota32k/media/lib/codec/BaseCodec;->disposed:Z

    return v0
.end method

.method public final getEos()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lio/github/toyota32k/media/lib/codec/BaseCodec;->eos:Z

    return v0
.end method

.method public final getLogger()Lio/github/toyota32k/media/lib/utils/UtLog;
    .locals 1

    .line 18
    iget-object v0, p0, Lio/github/toyota32k/media/lib/codec/BaseCodec;->logger:Lio/github/toyota32k/media/lib/utils/UtLog;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "logger"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract getMediaCodec()Landroid/media/MediaCodec;
.end method

.method public final getMediaFormat()Landroid/media/MediaFormat;
    .locals 1

    .line 10
    iget-object v0, p0, Lio/github/toyota32k/media/lib/codec/BaseCodec;->mediaFormat:Landroid/media/MediaFormat;

    return-object v0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getSampleType()Lio/github/toyota32k/media/lib/track/Muxer$SampleType;
.end method

.method protected final setEos(Z)V
    .locals 0

    .line 20
    iput-boolean p1, p0, Lio/github/toyota32k/media/lib/codec/BaseCodec;->eos:Z

    return-void
.end method

.method public final setLogger(Lio/github/toyota32k/media/lib/utils/UtLog;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Lio/github/toyota32k/media/lib/codec/BaseCodec;->logger:Lio/github/toyota32k/media/lib/utils/UtLog;

    return-void
.end method

.method public final start()V
    .locals 8

    .line 31
    new-instance v0, Lio/github/toyota32k/media/lib/utils/UtLog;

    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/codec/BaseCodec;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lio/github/toyota32k/media/lib/converter/Converter;->Companion:Lio/github/toyota32k/media/lib/converter/Converter$Companion;

    invoke-virtual {v2}, Lio/github/toyota32k/media/lib/converter/Converter$Companion;->getLogger()Lio/github/toyota32k/media/lib/utils/UtLog;

    move-result-object v2

    const/16 v6, 0x1c

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v7}, Lio/github/toyota32k/media/lib/utils/UtLog;-><init>(Ljava/lang/String;Lio/github/toyota32k/media/lib/utils/UtLog;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v0}, Lio/github/toyota32k/media/lib/codec/BaseCodec;->setLogger(Lio/github/toyota32k/media/lib/utils/UtLog;)V

    .line 32
    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/codec/BaseCodec;->configure()V

    .line 33
    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/codec/BaseCodec;->getMediaCodec()Landroid/media/MediaCodec;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    return-void
.end method
