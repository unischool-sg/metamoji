.class Landroidx/media3/transformer/DefaultAudioMixer$MixingBuffer;
.super Ljava/lang/Object;
.source "DefaultAudioMixer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/transformer/DefaultAudioMixer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MixingBuffer"
.end annotation


# instance fields
.field public final buffer:Ljava/nio/ByteBuffer;

.field public final limit:J

.field public final position:J


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;JJ)V
    .locals 0

    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 418
    iput-object p1, p0, Landroidx/media3/transformer/DefaultAudioMixer$MixingBuffer;->buffer:Ljava/nio/ByteBuffer;

    .line 419
    iput-wide p2, p0, Landroidx/media3/transformer/DefaultAudioMixer$MixingBuffer;->position:J

    .line 420
    iput-wide p4, p0, Landroidx/media3/transformer/DefaultAudioMixer$MixingBuffer;->limit:J

    return-void
.end method
