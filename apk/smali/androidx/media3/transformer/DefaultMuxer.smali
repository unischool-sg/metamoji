.class public final Landroidx/media3/transformer/DefaultMuxer;
.super Ljava/lang/Object;
.source "DefaultMuxer.java"

# interfaces
.implements Landroidx/media3/muxer/Muxer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/transformer/DefaultMuxer$Factory;
    }
.end annotation


# static fields
.field public static final MUXER_NAME:Ljava/lang/String;


# instance fields
.field private final muxer:Landroidx/media3/muxer/Muxer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 80
    sget-object v0, Landroidx/media3/transformer/FrameworkMuxer;->MUXER_NAME:Ljava/lang/String;

    sput-object v0, Landroidx/media3/transformer/DefaultMuxer;->MUXER_NAME:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroidx/media3/muxer/Muxer;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Landroidx/media3/transformer/DefaultMuxer;->muxer:Landroidx/media3/muxer/Muxer;

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/muxer/Muxer;Landroidx/media3/transformer/DefaultMuxer$1;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Landroidx/media3/transformer/DefaultMuxer;-><init>(Landroidx/media3/muxer/Muxer;)V

    return-void
.end method


# virtual methods
.method public addMetadataEntry(Landroidx/media3/common/Metadata$Entry;)V
    .locals 1

    .line 100
    iget-object v0, p0, Landroidx/media3/transformer/DefaultMuxer;->muxer:Landroidx/media3/muxer/Muxer;

    invoke-interface {v0, p1}, Landroidx/media3/muxer/Muxer;->addMetadataEntry(Landroidx/media3/common/Metadata$Entry;)V

    return-void
.end method

.method public addTrack(Landroidx/media3/common/Format;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/muxer/MuxerException;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Landroidx/media3/transformer/DefaultMuxer;->muxer:Landroidx/media3/muxer/Muxer;

    invoke-interface {v0, p1}, Landroidx/media3/muxer/Muxer;->addTrack(Landroidx/media3/common/Format;)I

    move-result p1

    return p1
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/muxer/MuxerException;
        }
    .end annotation

    .line 105
    iget-object v0, p0, Landroidx/media3/transformer/DefaultMuxer;->muxer:Landroidx/media3/muxer/Muxer;

    invoke-interface {v0}, Landroidx/media3/muxer/Muxer;->close()V

    return-void
.end method

.method public writeSampleData(ILjava/nio/ByteBuffer;Landroidx/media3/muxer/BufferInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/muxer/MuxerException;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Landroidx/media3/transformer/DefaultMuxer;->muxer:Landroidx/media3/muxer/Muxer;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/muxer/Muxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroidx/media3/muxer/BufferInfo;)V

    return-void
.end method
