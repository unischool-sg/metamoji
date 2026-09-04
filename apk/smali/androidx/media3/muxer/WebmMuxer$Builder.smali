.class public final Landroidx/media3/muxer/WebmMuxer$Builder;
.super Ljava/lang/Object;
.source "WebmMuxer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/muxer/WebmMuxer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private sampleCopyEnabled:Z

.field private final seekableMuxerOutput:Landroidx/media3/muxer/SeekableMuxerOutput;


# direct methods
.method public constructor <init>(Landroidx/media3/muxer/SeekableMuxerOutput;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Landroidx/media3/muxer/WebmMuxer$Builder;->seekableMuxerOutput:Landroidx/media3/muxer/SeekableMuxerOutput;

    const/4 p1, 0x1

    .line 65
    iput-boolean p1, p0, Landroidx/media3/muxer/WebmMuxer$Builder;->sampleCopyEnabled:Z

    return-void
.end method


# virtual methods
.method public build()Landroidx/media3/muxer/WebmMuxer;
    .locals 4

    .line 86
    new-instance v0, Landroidx/media3/muxer/WebmMuxer;

    iget-object v1, p0, Landroidx/media3/muxer/WebmMuxer$Builder;->seekableMuxerOutput:Landroidx/media3/muxer/SeekableMuxerOutput;

    iget-boolean v2, p0, Landroidx/media3/muxer/WebmMuxer$Builder;->sampleCopyEnabled:Z

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/media3/muxer/WebmMuxer;-><init>(Landroidx/media3/muxer/SeekableMuxerOutput;ZLandroidx/media3/muxer/WebmMuxer$1;)V

    return-object v0
.end method

.method public setSampleCopyEnabled(Z)Landroidx/media3/muxer/WebmMuxer$Builder;
    .locals 0

    .line 80
    iput-boolean p1, p0, Landroidx/media3/muxer/WebmMuxer$Builder;->sampleCopyEnabled:Z

    return-object p0
.end method
