.class Landroidx/media3/muxer/FragmentedMp4Writer$PositionTrackingOutputChannel;
.super Ljava/lang/Object;
.source "FragmentedMp4Writer.java"

# interfaces
.implements Ljava/nio/channels/WritableByteChannel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/muxer/FragmentedMp4Writer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PositionTrackingOutputChannel"
.end annotation


# instance fields
.field private final outputChannel:Ljava/nio/channels/WritableByteChannel;

.field private position:J


# direct methods
.method public constructor <init>(Ljava/nio/channels/WritableByteChannel;)V
    .locals 2

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Landroidx/media3/muxer/FragmentedMp4Writer$PositionTrackingOutputChannel;->outputChannel:Ljava/nio/channels/WritableByteChannel;

    const-wide/16 v0, 0x0

    .line 72
    iput-wide v0, p0, Landroidx/media3/muxer/FragmentedMp4Writer$PositionTrackingOutputChannel;->position:J

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Landroidx/media3/muxer/FragmentedMp4Writer$PositionTrackingOutputChannel;->outputChannel:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/WritableByteChannel;->close()V

    return-void
.end method

.method public getPosition()J
    .locals 2

    .line 94
    iget-wide v0, p0, Landroidx/media3/muxer/FragmentedMp4Writer$PositionTrackingOutputChannel;->position:J

    return-wide v0
.end method

.method public isOpen()Z
    .locals 1

    .line 84
    iget-object v0, p0, Landroidx/media3/muxer/FragmentedMp4Writer$PositionTrackingOutputChannel;->outputChannel:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/WritableByteChannel;->isOpen()Z

    move-result v0

    return v0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    iget-object v0, p0, Landroidx/media3/muxer/FragmentedMp4Writer$PositionTrackingOutputChannel;->outputChannel:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {v0, p1}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    .line 78
    iget-wide v0, p0, Landroidx/media3/muxer/FragmentedMp4Writer$PositionTrackingOutputChannel;->position:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/media3/muxer/FragmentedMp4Writer$PositionTrackingOutputChannel;->position:J

    return p1
.end method
