.class public final Lio/github/toyota32k/media/lib/track/VideoTrack$Companion;
.super Ljava/lang/Object;
.source "VideoTrack.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/toyota32k/media/lib/track/VideoTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lio/github/toyota32k/media/lib/track/VideoTrack$Companion;",
        "",
        "()V",
        "create",
        "Lio/github/toyota32k/media/lib/track/VideoTrack;",
        "inPath",
        "Lio/github/toyota32k/media/lib/converter/AndroidFile;",
        "strategy",
        "Lio/github/toyota32k/media/lib/format/IVideoStrategy;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lio/github/toyota32k/media/lib/track/VideoTrack$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Lio/github/toyota32k/media/lib/converter/AndroidFile;Lio/github/toyota32k/media/lib/format/IVideoStrategy;)Lio/github/toyota32k/media/lib/track/VideoTrack;
    .locals 10

    const-string v0, "inPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "strategy"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance v2, Lio/github/toyota32k/media/lib/extractor/Extractor;

    invoke-direct {v2, p1}, Lio/github/toyota32k/media/lib/extractor/Extractor;-><init>(Lio/github/toyota32k/media/lib/converter/AndroidFile;)V

    .line 25
    sget-object p1, Lio/github/toyota32k/media/lib/track/Track;->Companion:Lio/github/toyota32k/media/lib/track/Track$Companion;

    invoke-virtual {v2}, Lio/github/toyota32k/media/lib/extractor/Extractor;->getExtractor()Landroid/media/MediaExtractor;

    move-result-object v0

    const-string v1, "video"

    invoke-virtual {p1, v0, v1}, Lio/github/toyota32k/media/lib/track/Track$Companion;->findTrackIdx(Landroid/media/MediaExtractor;Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_1

    .line 30
    sget-object p1, Lio/github/toyota32k/media/lib/track/Track;->Companion:Lio/github/toyota32k/media/lib/track/Track$Companion;

    invoke-virtual {v2}, Lio/github/toyota32k/media/lib/extractor/Extractor;->getExtractor()Landroid/media/MediaExtractor;

    move-result-object v0

    invoke-virtual {p1, v0, v5}, Lio/github/toyota32k/media/lib/track/Track$Companion;->getMediaFormat(Landroid/media/MediaExtractor;I)Landroid/media/MediaFormat;

    move-result-object v3

    .line 31
    const-string p1, "rotation-degrees"

    invoke-virtual {v3, p1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 34
    invoke-virtual {v3, p1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 36
    :cond_0
    new-instance v1, Lio/github/toyota32k/media/lib/track/VideoTrack;

    const/4 v6, 0x0

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lio/github/toyota32k/media/lib/track/VideoTrack;-><init>(Lio/github/toyota32k/media/lib/extractor/Extractor;Landroid/media/MediaFormat;Lio/github/toyota32k/media/lib/format/IVideoStrategy;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    .line 27
    :cond_1
    new-instance v2, Lio/github/toyota32k/media/lib/utils/UtLog;

    sget-object p1, Lio/github/toyota32k/media/lib/converter/Converter;->Companion:Lio/github/toyota32k/media/lib/converter/Converter$Companion;

    invoke-virtual {p1}, Lio/github/toyota32k/media/lib/converter/Converter$Companion;->getLogger()Lio/github/toyota32k/media/lib/utils/UtLog;

    move-result-object v4

    const/16 v8, 0x1c

    const/4 v9, 0x0

    const-string v3, "Track(Video)"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v9}, Lio/github/toyota32k/media/lib/utils/UtLog;-><init>(Ljava/lang/String;Lio/github/toyota32k/media/lib/utils/UtLog;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string p1, "no video truck"

    invoke-virtual {v2, p1}, Lio/github/toyota32k/media/lib/utils/UtLog;->info(Ljava/lang/String;)V

    .line 28
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "no video track"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
