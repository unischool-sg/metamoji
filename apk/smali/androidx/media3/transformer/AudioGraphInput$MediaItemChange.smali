.class final Landroidx/media3/transformer/AudioGraphInput$MediaItemChange;
.super Ljava/lang/Object;
.source "AudioGraphInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/transformer/AudioGraphInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MediaItemChange"
.end annotation


# instance fields
.field public final durationUs:J

.field public final editedMediaItem:Landroidx/media3/transformer/EditedMediaItem;

.field public final format:Landroidx/media3/common/Format;

.field public final isLast:Z

.field public final positionOffsetUs:J


# direct methods
.method public constructor <init>(Landroidx/media3/transformer/EditedMediaItem;JLandroidx/media3/common/Format;ZJ)V
    .locals 0

    .line 598
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 599
    iput-object p1, p0, Landroidx/media3/transformer/AudioGraphInput$MediaItemChange;->editedMediaItem:Landroidx/media3/transformer/EditedMediaItem;

    .line 600
    iput-wide p2, p0, Landroidx/media3/transformer/AudioGraphInput$MediaItemChange;->durationUs:J

    .line 601
    iput-object p4, p0, Landroidx/media3/transformer/AudioGraphInput$MediaItemChange;->format:Landroidx/media3/common/Format;

    .line 602
    iput-boolean p5, p0, Landroidx/media3/transformer/AudioGraphInput$MediaItemChange;->isLast:Z

    .line 603
    iput-wide p6, p0, Landroidx/media3/transformer/AudioGraphInput$MediaItemChange;->positionOffsetUs:J

    return-void
.end method
