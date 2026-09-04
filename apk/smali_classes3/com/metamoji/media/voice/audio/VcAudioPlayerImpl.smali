.class public abstract Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl;
.super Lcom/metamoji/media/voice/audio/VcAudioPlayer;
.source "VcAudioPlayerImpl.java"

# interfaces
.implements Lcom/metamoji/media/voice/audio/VcAudioSession$IVcAudioSessionInterruptionListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


# instance fields
.field _addedPropertyListener:Z

.field _audio:Landroid/media/MediaPlayer;

.field _prepared:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/metamoji/media/voice/audio/VcAudioPlayer;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl;->_audio:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl;->_addedPropertyListener:Z

    .line 33
    iput-boolean v0, p0, Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl;->_prepared:Z

    return-void
.end method


# virtual methods
.method public beginInterruption(Lcom/metamoji/media/voice/audio/VcAudioSession;)V
    .locals 0

    .line 302
    invoke-virtual {p0}, Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl;->pause()V

    return-void
.end method

.method public canSeek()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method disposeQueue()V
    .locals 3

    const/4 v0, 0x0

    .line 237
    iput-boolean v0, p0, Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl;->_prepared:Z

    .line 239
    iget-boolean v1, p0, Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl;->_addedPropertyListener:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 240
    iget-object v1, p0, Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl;->_audio:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 241
    iget-object v1, p0, Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl;->_audio:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 242
    iget-object v1, p0, Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl;->_audio:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 243
    iget-object v1, p0, Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl;->_audio:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 244
    iget-object v1, p0, Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl;->_audio:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 245
    iget-object v1, p0, Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl;->_audio:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 246
    iput-boolean v0, p0, Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl;->_addedPropertyListener:Z

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl;->_audio:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 249
    iput-object v2, p0, Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl;->_audio:Landroid/media/MediaPlayer;

    return-void
.end method

.method public endInterruption(Lcom/metamoji/media/voice/audio/VcAudioSession;)V
    .locals 0

    .line 306
    invoke-virtual {p0}, Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl;->play()V

    return-void
.end method

.method public getCurrentTime()D
    .locals 4

    .line 268
    iget-object v0, p0, Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl;->_audio:Landroid/media/MediaPlayer;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    .line 269
    const-string v0, "VcAudioPlayerImpl#getCurrentTime : _audio == null"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    return-wide v1

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl;->_playingStatus:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    sget-object v3, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;->STOPPED:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    if-ne v0, v3, :cond_1

    .line 273
    const-string v0, "VcAudioPlayerImpl#getCurrentTime : _playingStatus == STOPPED"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    return-wide v1

    .line 278
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl;->_audio:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    return-wide v0

    :catch_0
    move-exception v0

    .line 280
    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "VcAudioPlayerImpl#getCurrentPosition : error : %s"

    invoke-static {v3, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-wide v1
.end method

.method public getDuration()D
    .locals 4

    .line 256
    iget-object v0, p0, Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl;->_audio:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 0

    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 346
    iget-object p1, p0, Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl;->_playingStatus:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    sget-object v0, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;->PREPARED_TO_PLAY:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl;->_playingStatus:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    sget-object v0, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;->STOPPED:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 351
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl;->playerStoppingForCallBack(Ljava/lang/Boolean;Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 0

    .line 377
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "VcPlayer: error %d, %d"

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 0

    const/4 p1, 0x1

    .line 364
    iput-boolean p1, p0, Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl;->_prepared:Z

    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 0

    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 0

    return-void
.end method

.method public pause()V
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl;->_audio:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 209
    sget-object v0, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;->PAUSED:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    iput-object v0, p0, Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl;->_playingStatus:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    .line 211
    iget-object v0, p0, Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl;->_listener:Lcom/metamoji/media/voice/audio/VcPlayer$IVcPlayerListener;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl;->_listener:Lcom/metamoji/media/voice/audio/VcPlayer$IVcPlayerListener;

    invoke-interface {v0}, Lcom/metamoji/media/voice/audio/VcPlayer$IVcPlayerListener;->playerWasPaused()V

    :cond_0
    return-void
.end method

.method public play()V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl;->_playingStatus:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    .line 144
    sget-object v1, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;->PLAYING:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 149
    :cond_0
    iget-object v1, p0, Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl;->_audio:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 151
    sget-object v1, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;->PREPARED_TO_PLAY:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;->PAUSED:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl;->_listener:Lcom/metamoji/media/voice/audio/VcPlayer$IVcPlayerListener;

    if-eqz v0, :cond_3

    .line 160
    iget-object v0, p0, Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl;->_listener:Lcom/metamoji/media/voice/audio/VcPlayer$IVcPlayerListener;

    sget-object v1, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYER_ERROR_STATUS;->FAILED:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYER_ERROR_STATUS;

    invoke-interface {v0, v1}, Lcom/metamoji/media/voice/audio/VcPlayer$IVcPlayerListener;->playerDidFinishToPlay(Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYER_ERROR_STATUS;)V

    return-void

    .line 153
    :cond_2
    :goto_0
    sget-object v0, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;->PLAYING:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    iput-object v0, p0, Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl;->_playingStatus:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    .line 155
    iget-object v0, p0, Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl;->_listener:Lcom/metamoji/media/voice/audio/VcPlayer$IVcPlayerListener;

    if-eqz v0, :cond_3

    .line 156
    iget-object v0, p0, Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl;->_listener:Lcom/metamoji/media/voice/audio/VcPlayer$IVcPlayerListener;

    invoke-interface {v0}, Lcom/metamoji/media/voice/audio/VcPlayer$IVcPlayerListener;->playerStartedToPlay()V

    :cond_3
    :goto_1
    return-void
.end method

.method public play(D)V
    .locals 3

    .line 167
    iget-object v0, p0, Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl;->_audio:Landroid/media/MediaPlayer;

    const-wide v1, 0x408f400000000000L    # 1000.0

    mul-double/2addr p1, v1

    double-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 168
    invoke-virtual {p0}, Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl;->play()V

    return-void
.end method

.method public play(DD)V
    .locals 5

    .line 173
    iget-object v0, p0, Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl;->_audio:Landroid/media/MediaPlayer;

    const-wide v1, 0x408f400000000000L    # 1000.0

    mul-double v3, p1, v1

    double-to-int v3, v3

    invoke-virtual {v0, v3}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 174
    invoke-virtual {p0}, Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl;->play()V

    cmpl-double v0, p3, p1

    if-lez v0, :cond_0

    .line 176
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 177
    new-instance v3, Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl$1;

    invoke-direct {v3, p0}, Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl$1;-><init>(Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl;)V

    sub-double/2addr p3, p1

    mul-double/2addr p3, v1

    double-to-long p1, p3

    invoke-virtual {v0, v3, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_0
    return-void
.end method

.method playerStoppingForCallBack(Ljava/lang/Boolean;Ljava/lang/Runnable;)V
    .locals 2

    .line 312
    iget-object v0, p0, Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl;->_listener:Lcom/metamoji/media/voice/audio/VcPlayer$IVcPlayerListener;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl;->_listener:Lcom/metamoji/media/voice/audio/VcPlayer$IVcPlayerListener;

    invoke-interface {v0}, Lcom/metamoji/media/voice/audio/VcPlayer$IVcPlayerListener;->playerWillFinishToPlay()V

    .line 315
    :cond_0
    invoke-static {}, Lcom/metamoji/media/voice/audio/VcAudioSession;->getSharedInstance()Lcom/metamoji/media/voice/audio/VcAudioSession;

    move-result-object v0

    const/4 v1, 0x0

    .line 316
    invoke-virtual {v0, v1}, Lcom/metamoji/media/voice/audio/VcAudioSession;->setListener(Lcom/metamoji/media/voice/audio/VcAudioSession$IVcAudioSessionInterruptionListener;)V

    .line 318
    const-string v0, "playerStoppingForCallBack:call disposeQueue"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 319
    invoke-virtual {p0}, Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl;->disposeQueue()V

    .line 324
    sget-object v0, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;->STOPPED:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    iput-object v0, p0, Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl;->_playingStatus:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    .line 326
    iget-object v0, p0, Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl;->_listener:Lcom/metamoji/media/voice/audio/VcPlayer$IVcPlayerListener;

    if-eqz v0, :cond_2

    .line 327
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    sget-object p1, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYER_ERROR_STATUS;->NONE:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYER_ERROR_STATUS;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYER_ERROR_STATUS;->FORCE:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYER_ERROR_STATUS;

    .line 328
    :goto_0
    iget-object v0, p0, Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl;->_listener:Lcom/metamoji/media/voice/audio/VcPlayer$IVcPlayerListener;

    invoke-interface {v0, p1}, Lcom/metamoji/media/voice/audio/VcPlayer$IVcPlayerListener;->playerDidFinishToPlay(Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYER_ERROR_STATUS;)V

    :cond_2
    if-eqz p2, :cond_3

    .line 333
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_3
    return-void
.end method

.method protected prepareStream(Ljava/lang/Object;)Z
    .locals 3

    .line 44
    invoke-static {}, Lcom/metamoji/media/voice/audio/VcAudioSession;->getSharedInstance()Lcom/metamoji/media/voice/audio/VcAudioSession;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcAudioSession;->isInitialized()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 48
    :cond_0
    invoke-virtual {v0, p0}, Lcom/metamoji/media/voice/audio/VcAudioSession;->setListener(Lcom/metamoji/media/voice/audio/VcAudioSession$IVcAudioSessionInterruptionListener;)V

    .line 70
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl;->_audio:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    .line 73
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 75
    iget-boolean v0, p0, Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl;->_addedPropertyListener:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl;->_audio:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 77
    iget-object v0, p0, Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl;->_audio:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 78
    iget-object v0, p0, Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl;->_audio:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 79
    iget-object v0, p0, Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl;->_audio:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 80
    iget-object v0, p0, Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl;->_audio:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 81
    iget-object v0, p0, Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl;->_audio:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 82
    iput-boolean v1, p0, Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl;->_addedPropertyListener:Z

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl;->_audio:Landroid/media/MediaPlayer;

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl;->setSource(Landroid/media/MediaPlayer;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    .line 89
    :cond_2
    :try_start_0
    iput-boolean v2, p0, Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl;->_prepared:Z

    .line 90
    iget-object p1, p0, Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl;->_audio:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    iget-object p1, p0, Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl;->_audio:Landroid/media/MediaPlayer;

    iget v0, p0, Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl;->_volume:F

    iget v2, p0, Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl;->_volume:F

    invoke-virtual {p1, v0, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 129
    sget-object p1, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;->PREPARED_TO_PLAY:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    iput-object p1, p0, Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl;->_playingStatus:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    .line 132
    iget-object p1, p0, Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl;->_listener:Lcom/metamoji/media/voice/audio/VcPlayer$IVcPlayerListener;

    if-eqz p1, :cond_3

    .line 133
    iget-object p1, p0, Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl;->_listener:Lcom/metamoji/media/voice/audio/VcPlayer$IVcPlayerListener;

    invoke-interface {p1}, Lcom/metamoji/media/voice/audio/VcPlayer$IVcPlayerListener;->playerWasReadyToPlay()V

    :cond_3
    return v1

    :catch_0
    move-exception p1

    .line 92
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return v2
.end method

.method public seek(D)V
    .locals 4

    .line 220
    invoke-virtual {p0}, Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl;->getPlayingStatus()Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    move-result-object v0

    .line 221
    iget-object v1, p0, Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl;->_audio:Landroid/media/MediaPlayer;

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr p1, v2

    double-to-int p1, p1

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 225
    iget-object p1, p0, Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl;->_listener:Lcom/metamoji/media/voice/audio/VcPlayer$IVcPlayerListener;

    if-eqz p1, :cond_0

    .line 226
    iget-object p1, p0, Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl;->_listener:Lcom/metamoji/media/voice/audio/VcPlayer$IVcPlayerListener;

    invoke-interface {p1}, Lcom/metamoji/media/voice/audio/VcPlayer$IVcPlayerListener;->playerWasSeeked()V

    .line 229
    :cond_0
    sget-object p1, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;->PLAYING:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    if-ne v0, p1, :cond_1

    .line 230
    iget-object p1, p0, Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl;->_audio:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    return-void

    .line 232
    :cond_1
    sget-object p1, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;->PAUSED:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    iput-object p1, p0, Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl;->_playingStatus:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    return-void
.end method

.method protected abstract setSource(Landroid/media/MediaPlayer;Ljava/lang/Object;)Z
.end method

.method public setVolume(F)V
    .locals 1

    .line 287
    invoke-super {p0, p1}, Lcom/metamoji/media/voice/audio/VcAudioPlayer;->setVolume(F)V

    .line 288
    iget-object v0, p0, Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl;->_audio:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_0
    return-void
.end method

.method public stop(ZLjava/lang/Runnable;)Z
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl;->_playingStatus:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    sget-object v1, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;->PLAYING:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl;->_playingStatus:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    sget-object v1, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;->PAUSED:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    if-ne v0, v1, :cond_1

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl;->_audio:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 200
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl;->playerStoppingForCallBack(Ljava/lang/Boolean;Ljava/lang/Runnable;)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
