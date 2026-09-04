.class Lcom/metamoji/media/voice/audio/VcStreamingPlayer;
.super Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl;
.source "VcStreamingPlayer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public prepareToPlay(Ljava/lang/String;)Z
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lcom/metamoji/media/voice/audio/VcStreamingPlayer;->prepareStream(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected setSource(Landroid/media/MediaPlayer;Ljava/lang/Object;)Z
    .locals 0

    .line 24
    check-cast p2, Ljava/lang/String;

    .line 26
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 28
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method
