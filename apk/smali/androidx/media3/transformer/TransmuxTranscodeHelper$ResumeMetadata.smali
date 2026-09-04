.class public final Landroidx/media3/transformer/TransmuxTranscodeHelper$ResumeMetadata;
.super Ljava/lang/Object;
.source "TransmuxTranscodeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/transformer/TransmuxTranscodeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResumeMetadata"
.end annotation


# instance fields
.field public final firstMediaItemIndexAndOffsetInfo:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field public final lastSyncSampleTimestampUs:J

.field public final videoFormat:Landroidx/media3/common/Format;


# direct methods
.method public constructor <init>(JLcom/google/common/collect/ImmutableList;Landroidx/media3/common/Format;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;>;",
            "Landroidx/media3/common/Format;",
            ")V"
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-wide p1, p0, Landroidx/media3/transformer/TransmuxTranscodeHelper$ResumeMetadata;->lastSyncSampleTimestampUs:J

    .line 65
    iput-object p3, p0, Landroidx/media3/transformer/TransmuxTranscodeHelper$ResumeMetadata;->firstMediaItemIndexAndOffsetInfo:Lcom/google/common/collect/ImmutableList;

    .line 66
    iput-object p4, p0, Landroidx/media3/transformer/TransmuxTranscodeHelper$ResumeMetadata;->videoFormat:Landroidx/media3/common/Format;

    return-void
.end method
