.class public Lcom/metamoji/media/voice/audio/VcPlayer;
.super Ljava/lang/Object;
.source "VcPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;,
        Lcom/metamoji/media/voice/audio/VcPlayer$IVcPlayerListener;,
        Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYER_ERROR_STATUS;
    }
.end annotation


# static fields
.field public static final DEFAULT_AUDIO_VOLUME:F = 0.5f

.field static _instance:Lcom/metamoji/media/voice/audio/VcPlayer;


# instance fields
.field _activePlayer:Lcom/metamoji/media/voice/audio/VcAudioPlayer;

.field _duration:D

.field _filePlayer:Lcom/metamoji/media/voice/audio/VcFilePlayer;

.field _index:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field _startDate:Ljava/util/Date;

.field _streamingPlayer:Lcom/metamoji/media/voice/audio/VcStreamingPlayer;

.field _ticket:Ljava/lang/String;

.field _volume:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Lcom/metamoji/media/voice/audio/VcFilePlayer;

    invoke-direct {v0}, Lcom/metamoji/media/voice/audio/VcFilePlayer;-><init>()V

    iput-object v0, p0, Lcom/metamoji/media/voice/audio/VcPlayer;->_filePlayer:Lcom/metamoji/media/voice/audio/VcFilePlayer;

    .line 70
    new-instance v0, Lcom/metamoji/media/voice/audio/VcStreamingPlayer;

    invoke-direct {v0}, Lcom/metamoji/media/voice/audio/VcStreamingPlayer;-><init>()V

    iput-object v0, p0, Lcom/metamoji/media/voice/audio/VcPlayer;->_streamingPlayer:Lcom/metamoji/media/voice/audio/VcStreamingPlayer;

    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lcom/metamoji/media/voice/audio/VcPlayer;->_activePlayer:Lcom/metamoji/media/voice/audio/VcAudioPlayer;

    const/high16 v0, 0x3f000000    # 0.5f

    .line 72
    iput v0, p0, Lcom/metamoji/media/voice/audio/VcPlayer;->_volume:F

    return-void
.end method

.method public static getSharedInstance()Lcom/metamoji/media/voice/audio/VcPlayer;
    .locals 1

    .line 78
    sget-object v0, Lcom/metamoji/media/voice/audio/VcPlayer;->_instance:Lcom/metamoji/media/voice/audio/VcPlayer;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/metamoji/media/voice/audio/VcPlayer;

    invoke-direct {v0}, Lcom/metamoji/media/voice/audio/VcPlayer;-><init>()V

    sput-object v0, Lcom/metamoji/media/voice/audio/VcPlayer;->_instance:Lcom/metamoji/media/voice/audio/VcPlayer;

    .line 81
    :cond_0
    sget-object v0, Lcom/metamoji/media/voice/audio/VcPlayer;->_instance:Lcom/metamoji/media/voice/audio/VcPlayer;

    return-object v0
.end method


# virtual methods
.method public canSeek()Z
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/metamoji/media/voice/audio/VcPlayer;->_activePlayer:Lcom/metamoji/media/voice/audio/VcAudioPlayer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 182
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcAudioPlayer;->canSeek()Z

    move-result v0

    return v0
.end method

.method public endIndex(D)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lcom/metamoji/media/voice/audio/VcPlayer;->_index:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 250
    :cond_0
    const-string v2, "$endTime"

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    iget-object p1, p0, Lcom/metamoji/media/voice/audio/VcPlayer;->_index:Ljava/util/HashMap;

    .line 253
    iput-object v1, p0, Lcom/metamoji/media/voice/audio/VcPlayer;->_index:Ljava/util/HashMap;

    return-object p1
.end method

.method public getCurrentTime()D
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/metamoji/media/voice/audio/VcPlayer;->_activePlayer:Lcom/metamoji/media/voice/audio/VcAudioPlayer;

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcAudioPlayer;->getCurrentTime()D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDuration()D
    .locals 2

    .line 57
    iget-wide v0, p0, Lcom/metamoji/media/voice/audio/VcPlayer;->_duration:D

    return-wide v0
.end method

.method public getPlayingStatus()Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/metamoji/media/voice/audio/VcPlayer;->_activePlayer:Lcom/metamoji/media/voice/audio/VcAudioPlayer;

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcAudioPlayer;->getPlayingStatus()Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    move-result-object v0

    return-object v0

    .line 214
    :cond_0
    sget-object v0, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;->STOPPED:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    return-object v0
.end method

.method public getStartDate()Ljava/util/Date;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/metamoji/media/voice/audio/VcPlayer;->_startDate:Ljava/util/Date;

    return-object v0
.end method

.method public getTicket()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/metamoji/media/voice/audio/VcPlayer;->_ticket:Ljava/lang/String;

    return-object v0
.end method

.method public getVolume()D
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/metamoji/media/voice/audio/VcPlayer;->_activePlayer:Lcom/metamoji/media/voice/audio/VcAudioPlayer;

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcAudioPlayer;->getVolume()F

    move-result v0

    :goto_0
    float-to-double v0, v0

    return-wide v0

    .line 201
    :cond_0
    iget v0, p0, Lcom/metamoji/media/voice/audio/VcPlayer;->_volume:F

    goto :goto_0
.end method

.method public isIndexStarted()Z
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/metamoji/media/voice/audio/VcPlayer;->_index:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/metamoji/media/voice/audio/VcPlayer;->_activePlayer:Lcom/metamoji/media/voice/audio/VcAudioPlayer;

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcAudioPlayer;->pause()V

    :cond_0
    return-void
.end method

.method public play()V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/metamoji/media/voice/audio/VcPlayer;->_activePlayer:Lcom/metamoji/media/voice/audio/VcAudioPlayer;

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcAudioPlayer;->play()V

    :cond_0
    return-void
.end method

.method public play(D)V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/metamoji/media/voice/audio/VcPlayer;->_activePlayer:Lcom/metamoji/media/voice/audio/VcAudioPlayer;

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {v0, p1, p2}, Lcom/metamoji/media/voice/audio/VcAudioPlayer;->play(D)V

    :cond_0
    return-void
.end method

.method public play(DD)V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/metamoji/media/voice/audio/VcPlayer;->_activePlayer:Lcom/metamoji/media/voice/audio/VcAudioPlayer;

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/metamoji/media/voice/audio/VcAudioPlayer;->play(DD)V

    :cond_0
    return-void
.end method

.method public playAfterDelay(D)V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/metamoji/media/voice/audio/VcPlayer;->_activePlayer:Lcom/metamoji/media/voice/audio/VcAudioPlayer;

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v0, p1, p2}, Lcom/metamoji/media/voice/audio/VcAudioPlayer;->playAfterDelay(D)V

    :cond_0
    return-void
.end method

.method public prepareToPlayWithFile(Ljava/io/File;Ljava/lang/String;Ljava/util/Date;)V
    .locals 0

    .line 94
    iput-object p2, p0, Lcom/metamoji/media/voice/audio/VcPlayer;->_ticket:Ljava/lang/String;

    .line 95
    iput-object p3, p0, Lcom/metamoji/media/voice/audio/VcPlayer;->_startDate:Ljava/util/Date;

    .line 96
    iget-object p2, p0, Lcom/metamoji/media/voice/audio/VcPlayer;->_filePlayer:Lcom/metamoji/media/voice/audio/VcFilePlayer;

    iput-object p2, p0, Lcom/metamoji/media/voice/audio/VcPlayer;->_activePlayer:Lcom/metamoji/media/voice/audio/VcAudioPlayer;

    .line 97
    iget p3, p0, Lcom/metamoji/media/voice/audio/VcPlayer;->_volume:F

    invoke-virtual {p2, p3}, Lcom/metamoji/media/voice/audio/VcAudioPlayer;->setVolume(F)V

    .line 98
    iget-object p2, p0, Lcom/metamoji/media/voice/audio/VcPlayer;->_filePlayer:Lcom/metamoji/media/voice/audio/VcFilePlayer;

    invoke-virtual {p2, p1}, Lcom/metamoji/media/voice/audio/VcFilePlayer;->prepareToPlay(Ljava/io/File;)Z

    return-void
.end method

.method public prepareToPlayWithUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    .locals 0

    .line 102
    iput-object p2, p0, Lcom/metamoji/media/voice/audio/VcPlayer;->_ticket:Ljava/lang/String;

    .line 103
    iput-object p3, p0, Lcom/metamoji/media/voice/audio/VcPlayer;->_startDate:Ljava/util/Date;

    .line 104
    iget-object p2, p0, Lcom/metamoji/media/voice/audio/VcPlayer;->_streamingPlayer:Lcom/metamoji/media/voice/audio/VcStreamingPlayer;

    iput-object p2, p0, Lcom/metamoji/media/voice/audio/VcPlayer;->_activePlayer:Lcom/metamoji/media/voice/audio/VcAudioPlayer;

    .line 105
    iget p3, p0, Lcom/metamoji/media/voice/audio/VcPlayer;->_volume:F

    invoke-virtual {p2, p3}, Lcom/metamoji/media/voice/audio/VcAudioPlayer;->setVolume(F)V

    .line 107
    iget-object p2, p0, Lcom/metamoji/media/voice/audio/VcPlayer;->_streamingPlayer:Lcom/metamoji/media/voice/audio/VcStreamingPlayer;

    invoke-virtual {p2, p1}, Lcom/metamoji/media/voice/audio/VcStreamingPlayer;->prepareToPlay(Ljava/lang/String;)Z

    return-void
.end method

.method public seek(D)V
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/metamoji/media/voice/audio/VcPlayer;->_activePlayer:Lcom/metamoji/media/voice/audio/VcAudioPlayer;

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {v0, p1, p2}, Lcom/metamoji/media/voice/audio/VcAudioPlayer;->seek(D)V

    :cond_0
    return-void
.end method

.method public setDuration(D)V
    .locals 0

    .line 58
    iput-wide p1, p0, Lcom/metamoji/media/voice/audio/VcPlayer;->_duration:D

    return-void
.end method

.method public setListener(Lcom/metamoji/media/voice/audio/VcPlayer$IVcPlayerListener;)V
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/metamoji/media/voice/audio/VcPlayer;->_filePlayer:Lcom/metamoji/media/voice/audio/VcFilePlayer;

    invoke-virtual {v0, p1}, Lcom/metamoji/media/voice/audio/VcFilePlayer;->setListener(Lcom/metamoji/media/voice/audio/VcPlayer$IVcPlayerListener;)V

    .line 221
    iget-object v0, p0, Lcom/metamoji/media/voice/audio/VcPlayer;->_streamingPlayer:Lcom/metamoji/media/voice/audio/VcStreamingPlayer;

    invoke-virtual {v0, p1}, Lcom/metamoji/media/voice/audio/VcStreamingPlayer;->setListener(Lcom/metamoji/media/voice/audio/VcPlayer$IVcPlayerListener;)V

    return-void
.end method

.method public setStartDate(Ljava/util/Date;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/metamoji/media/voice/audio/VcPlayer;->_startDate:Ljava/util/Date;

    return-void
.end method

.method public setTicket(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/metamoji/media/voice/audio/VcPlayer;->_ticket:Ljava/lang/String;

    return-void
.end method

.method public setVolume(F)V
    .locals 1

    .line 204
    iput p1, p0, Lcom/metamoji/media/voice/audio/VcPlayer;->_volume:F

    .line 205
    iget-object v0, p0, Lcom/metamoji/media/voice/audio/VcPlayer;->_activePlayer:Lcom/metamoji/media/voice/audio/VcAudioPlayer;

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {v0, p1}, Lcom/metamoji/media/voice/audio/VcAudioPlayer;->setVolume(F)V

    :cond_0
    return-void
.end method

.method public startIndex(Ljava/lang/String;DLjava/lang/String;)V
    .locals 6

    move-wide v3, p2

    move-object v0, p1

    move-wide v1, p2

    move-object v5, p4

    .line 237
    invoke-static/range {v0 .. v5}, Lcom/metamoji/media/voice/VcUtil;->createIndex(Ljava/lang/String;DDLjava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/media/voice/audio/VcPlayer;->_index:Ljava/util/HashMap;

    return-void
.end method

.method public stop()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 144
    invoke-virtual {p0, v0, v1}, Lcom/metamoji/media/voice/audio/VcPlayer;->stop(ZLjava/lang/Runnable;)V

    return-void
.end method

.method stop(ZLjava/lang/Runnable;)V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/metamoji/media/voice/audio/VcPlayer;->_activePlayer:Lcom/metamoji/media/voice/audio/VcAudioPlayer;

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {v0, p1, p2}, Lcom/metamoji/media/voice/audio/VcAudioPlayer;->stop(ZLjava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public stopForce()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 148
    invoke-virtual {p0, v0, v1}, Lcom/metamoji/media/voice/audio/VcPlayer;->stop(ZLjava/lang/Runnable;)V

    return-void
.end method

.method public stopForce(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 152
    invoke-virtual {p0, v0, p1}, Lcom/metamoji/media/voice/audio/VcPlayer;->stop(ZLjava/lang/Runnable;)V

    return-void
.end method
