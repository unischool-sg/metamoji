.class public abstract Lcom/metamoji/media/voice/audio/VcAudioPlayer;
.super Ljava/lang/Object;
.source "VcAudioPlayer.java"


# instance fields
.field protected _currentTime:D

.field protected _duration:D

.field protected _listener:Lcom/metamoji/media/voice/audio/VcPlayer$IVcPlayerListener;

.field protected _playingStatus:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

.field protected _volume:F


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    sget-object v0, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;->STOPPED:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    iput-object v0, p0, Lcom/metamoji/media/voice/audio/VcAudioPlayer;->_playingStatus:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    const/high16 v0, 0x3f000000    # 0.5f

    .line 45
    iput v0, p0, Lcom/metamoji/media/voice/audio/VcAudioPlayer;->_volume:F

    return-void
.end method


# virtual methods
.method public abstract canSeek()Z
.end method

.method public getCurrentTime()D
    .locals 2

    .line 31
    iget-wide v0, p0, Lcom/metamoji/media/voice/audio/VcAudioPlayer;->_currentTime:D

    return-wide v0
.end method

.method public getDuration()D
    .locals 2

    .line 33
    iget-wide v0, p0, Lcom/metamoji/media/voice/audio/VcAudioPlayer;->_duration:D

    return-wide v0
.end method

.method public getListener()Lcom/metamoji/media/voice/audio/VcPlayer$IVcPlayerListener;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/metamoji/media/voice/audio/VcAudioPlayer;->_listener:Lcom/metamoji/media/voice/audio/VcPlayer$IVcPlayerListener;

    return-object v0
.end method

.method public getPlayingStatus()Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/metamoji/media/voice/audio/VcAudioPlayer;->_playingStatus:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    return-object v0
.end method

.method public getVolume()F
    .locals 1

    .line 22
    iget v0, p0, Lcom/metamoji/media/voice/audio/VcAudioPlayer;->_volume:F

    return v0
.end method

.method public abstract pause()V
.end method

.method public abstract play()V
.end method

.method public abstract play(D)V
.end method

.method public abstract play(DD)V
.end method

.method public playAfterDelay(D)V
    .locals 4

    .line 61
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/metamoji/media/voice/audio/VcAudioPlayer$1;

    invoke-direct {v1, p0}, Lcom/metamoji/media/voice/audio/VcAudioPlayer$1;-><init>(Lcom/metamoji/media/voice/audio/VcAudioPlayer;)V

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr p1, v2

    double-to-long p1, p1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public abstract seek(D)V
.end method

.method public setDuration(D)V
    .locals 0

    .line 34
    iput-wide p1, p0, Lcom/metamoji/media/voice/audio/VcAudioPlayer;->_duration:D

    return-void
.end method

.method public setListener(Lcom/metamoji/media/voice/audio/VcPlayer$IVcPlayerListener;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/metamoji/media/voice/audio/VcAudioPlayer;->_listener:Lcom/metamoji/media/voice/audio/VcPlayer$IVcPlayerListener;

    return-void
.end method

.method public setPlayingStatus(Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/metamoji/media/voice/audio/VcAudioPlayer;->_playingStatus:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    return-void
.end method

.method public setVolume(F)V
    .locals 0

    .line 23
    iput p1, p0, Lcom/metamoji/media/voice/audio/VcAudioPlayer;->_volume:F

    return-void
.end method

.method public abstract stop(ZLjava/lang/Runnable;)Z
.end method
