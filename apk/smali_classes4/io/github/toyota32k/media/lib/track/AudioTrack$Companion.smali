.class public final Lio/github/toyota32k/media/lib/track/AudioTrack$Companion;
.super Ljava/lang/Object;
.source "AudioTrack.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/toyota32k/media/lib/track/AudioTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lio/github/toyota32k/media/lib/track/AudioTrack$Companion;",
        "",
        "()V",
        "create",
        "Lio/github/toyota32k/media/lib/track/AudioTrack;",
        "inPath",
        "Lio/github/toyota32k/media/lib/converter/AndroidFile;",
        "strategy",
        "Lio/github/toyota32k/media/lib/format/IAudioStrategy;",
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

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lio/github/toyota32k/media/lib/track/AudioTrack$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Lio/github/toyota32k/media/lib/converter/AndroidFile;Lio/github/toyota32k/media/lib/format/IAudioStrategy;)Lio/github/toyota32k/media/lib/track/AudioTrack;
    .locals 15

    move-object/from16 v0, p1

    const-string v1, "inPath"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "strategy"

    move-object/from16 v5, p2

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    new-instance v3, Lio/github/toyota32k/media/lib/extractor/Extractor;

    invoke-direct {v3, v0}, Lio/github/toyota32k/media/lib/extractor/Extractor;-><init>(Lio/github/toyota32k/media/lib/converter/AndroidFile;)V

    .line 22
    sget-object v0, Lio/github/toyota32k/media/lib/track/Track;->Companion:Lio/github/toyota32k/media/lib/track/Track$Companion;

    invoke-virtual {v3}, Lio/github/toyota32k/media/lib/extractor/Extractor;->getExtractor()Landroid/media/MediaExtractor;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v0, v1, v2}, Lio/github/toyota32k/media/lib/track/Track$Companion;->findTrackIdx(Landroid/media/MediaExtractor;Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_0

    .line 24
    new-instance v7, Lio/github/toyota32k/media/lib/utils/UtLog;

    sget-object v0, Lio/github/toyota32k/media/lib/converter/Converter;->Companion:Lio/github/toyota32k/media/lib/converter/Converter$Companion;

    invoke-virtual {v0}, Lio/github/toyota32k/media/lib/converter/Converter$Companion;->getLogger()Lio/github/toyota32k/media/lib/utils/UtLog;

    move-result-object v9

    const/16 v13, 0x1c

    const/4 v14, 0x0

    const-string v8, "Track(Audio)"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v7 .. v14}, Lio/github/toyota32k/media/lib/utils/UtLog;-><init>(Ljava/lang/String;Lio/github/toyota32k/media/lib/utils/UtLog;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v0, "no audio truck"

    invoke-virtual {v7, v0}, Lio/github/toyota32k/media/lib/utils/UtLog;->info(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 27
    :cond_0
    sget-object v0, Lio/github/toyota32k/media/lib/track/Track;->Companion:Lio/github/toyota32k/media/lib/track/Track$Companion;

    invoke-virtual {v3}, Lio/github/toyota32k/media/lib/extractor/Extractor;->getExtractor()Landroid/media/MediaExtractor;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Lio/github/toyota32k/media/lib/track/Track$Companion;->getMediaFormat(Landroid/media/MediaExtractor;I)Landroid/media/MediaFormat;

    move-result-object v4

    .line 28
    new-instance v2, Lio/github/toyota32k/media/lib/track/AudioTrack;

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lio/github/toyota32k/media/lib/track/AudioTrack;-><init>(Lio/github/toyota32k/media/lib/extractor/Extractor;Landroid/media/MediaFormat;Lio/github/toyota32k/media/lib/format/IAudioStrategy;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2
.end method
