.class final Landroidx/media3/transformer/CodecDbLite$VideoEncoderEntry;
.super Ljava/lang/Object;
.source "CodecDbLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/transformer/CodecDbLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "VideoEncoderEntry"
.end annotation


# instance fields
.field private final bFrameResolutionCutoff:I

.field private final formatOptimizations:I

.field private final maxBFrames:I

.field private final mimeType:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0

    .line 624
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 625
    iput-object p1, p0, Landroidx/media3/transformer/CodecDbLite$VideoEncoderEntry;->mimeType:Ljava/lang/String;

    .line 626
    iput p2, p0, Landroidx/media3/transformer/CodecDbLite$VideoEncoderEntry;->maxBFrames:I

    .line 627
    iput p3, p0, Landroidx/media3/transformer/CodecDbLite$VideoEncoderEntry;->bFrameResolutionCutoff:I

    .line 628
    iput p4, p0, Landroidx/media3/transformer/CodecDbLite$VideoEncoderEntry;->formatOptimizations:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIILandroidx/media3/transformer/CodecDbLite$1;)V
    .locals 0

    .line 586
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media3/transformer/CodecDbLite$VideoEncoderEntry;-><init>(Ljava/lang/String;III)V

    return-void
.end method

.method static synthetic access$200(Landroidx/media3/transformer/CodecDbLite$VideoEncoderEntry;)Ljava/lang/String;
    .locals 0

    .line 586
    iget-object p0, p0, Landroidx/media3/transformer/CodecDbLite$VideoEncoderEntry;->mimeType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Landroidx/media3/transformer/CodecDbLite$VideoEncoderEntry;)I
    .locals 0

    .line 586
    iget p0, p0, Landroidx/media3/transformer/CodecDbLite$VideoEncoderEntry;->bFrameResolutionCutoff:I

    return p0
.end method

.method static synthetic access$400(Landroidx/media3/transformer/CodecDbLite$VideoEncoderEntry;)I
    .locals 0

    .line 586
    iget p0, p0, Landroidx/media3/transformer/CodecDbLite$VideoEncoderEntry;->maxBFrames:I

    return p0
.end method

.method static synthetic access$500(Landroidx/media3/transformer/CodecDbLite$VideoEncoderEntry;)I
    .locals 0

    .line 586
    iget p0, p0, Landroidx/media3/transformer/CodecDbLite$VideoEncoderEntry;->formatOptimizations:I

    return p0
.end method
