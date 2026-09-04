.class final Landroidx/media3/transformer/Mp4Info$ExtractorOutputImpl;
.super Ljava/lang/Object;
.source "Mp4Info.java"

# interfaces
.implements Landroidx/media3/extractor/ExtractorOutput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/transformer/Mp4Info;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ExtractorOutputImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/transformer/Mp4Info$ExtractorOutputImpl$TrackOutputImpl;
    }
.end annotation


# instance fields
.field public audioTrackId:I

.field public seekMap:Landroidx/media3/extractor/TrackAwareSeekMap;

.field public seekMapInitialized:Z

.field final trackTypeToTrackOutput:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroidx/media3/transformer/Mp4Info$ExtractorOutputImpl$TrackOutputImpl;",
            ">;"
        }
    .end annotation
.end field

.field public videoTrackId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 233
    iput v0, p0, Landroidx/media3/transformer/Mp4Info$ExtractorOutputImpl;->videoTrackId:I

    .line 234
    iput v0, p0, Landroidx/media3/transformer/Mp4Info$ExtractorOutputImpl;->audioTrackId:I

    .line 235
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/media3/transformer/Mp4Info$ExtractorOutputImpl;->trackTypeToTrackOutput:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public endTracks()V
    .locals 0

    return-void
.end method

.method public seekMap(Landroidx/media3/extractor/SeekMap;)V
    .locals 0

    .line 259
    check-cast p1, Landroidx/media3/extractor/TrackAwareSeekMap;

    iput-object p1, p0, Landroidx/media3/transformer/Mp4Info$ExtractorOutputImpl;->seekMap:Landroidx/media3/extractor/TrackAwareSeekMap;

    const/4 p1, 0x1

    .line 260
    iput-boolean p1, p0, Landroidx/media3/transformer/Mp4Info$ExtractorOutputImpl;->seekMapInitialized:Z

    return-void
.end method

.method public track(II)Landroidx/media3/extractor/TrackOutput;
    .locals 1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 241
    iput p1, p0, Landroidx/media3/transformer/Mp4Info$ExtractorOutputImpl;->videoTrackId:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 243
    iput p1, p0, Landroidx/media3/transformer/Mp4Info$ExtractorOutputImpl;->audioTrackId:I

    .line 246
    :cond_1
    :goto_0
    iget-object p1, p0, Landroidx/media3/transformer/Mp4Info$ExtractorOutputImpl;->trackTypeToTrackOutput:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/transformer/Mp4Info$ExtractorOutputImpl$TrackOutputImpl;

    if-nez p1, :cond_2

    .line 248
    new-instance p1, Landroidx/media3/transformer/Mp4Info$ExtractorOutputImpl$TrackOutputImpl;

    invoke-direct {p1}, Landroidx/media3/transformer/Mp4Info$ExtractorOutputImpl$TrackOutputImpl;-><init>()V

    .line 249
    iget-object v0, p0, Landroidx/media3/transformer/Mp4Info$ExtractorOutputImpl;->trackTypeToTrackOutput:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object p1
.end method
