.class public Lcom/metamoji/media/ui/UnMediaPlayer;
.super Ljava/lang/Object;
.source "UnMediaPlayer.java"

# interfaces
.implements Lcom/metamoji/media/voice/audio/VcPlayer$IVcPlayerListener;
.implements Lcom/metamoji/media/ui/UnMediaPlayerBar$IUnMediaPlayerBarListener;
.implements Lcom/metamoji/media/ui/UnMediaOverlayView$IUnMediaOverlayListener;


# instance fields
.field audioPlayer_:Lcom/metamoji/media/voice/audio/VcFilePlayer;

.field audioTimer_:Lcom/metamoji/cm/UiTimer;

.field cacheFile_:Ljava/io/File;

.field overlayView_:Lcom/metamoji/media/ui/UnMediaOverlayView;

.field playerBar_:Lcom/metamoji/media/ui/UnMediaPlayerBar;

.field saveIsPlaying_:Z

.field seekTime_:D

.field soundUnit_:Lcom/metamoji/un/sound/UnSoundUnit;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 61
    iput-wide v0, p0, Lcom/metamoji/media/ui/UnMediaPlayer;->seekTime_:D

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/metamoji/media/ui/UnMediaPlayer;->saveIsPlaying_:Z

    return-void
.end method


# virtual methods
.method public addSubviews(Landroid/view/View;)V
    .locals 0

    .line 534
    invoke-virtual {p0, p1}, Lcom/metamoji/media/ui/UnMediaPlayer;->makePlayerBar(Landroid/view/View;)Lcom/metamoji/media/ui/UnMediaPlayerBar;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/media/ui/UnMediaPlayer;->playerBar_:Lcom/metamoji/media/ui/UnMediaPlayerBar;

    return-void
.end method

.method public closePlayer()V
    .locals 2

    .line 350
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/media/ui/UnMediaPlayer$12;

    invoke-direct {v1, p0}, Lcom/metamoji/media/ui/UnMediaPlayer$12;-><init>(Lcom/metamoji/media/ui/UnMediaPlayer;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getBarSize()Lcom/metamoji/cm/SizeF;
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayer;->playerBar_:Lcom/metamoji/media/ui/UnMediaPlayerBar;

    invoke-virtual {v0}, Lcom/metamoji/media/ui/UnMediaPlayerBar;->getBarSize()Lcom/metamoji/cm/SizeF;

    move-result-object v0

    return-object v0
.end method

.method public getDuration()D
    .locals 2

    .line 511
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayer;->audioPlayer_:Lcom/metamoji/media/voice/audio/VcFilePlayer;

    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcFilePlayer;->getDuration()D

    move-result-wide v0

    return-wide v0
.end method

.method public getOverlayGuardView()Landroid/view/View;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayer;->overlayView_:Lcom/metamoji/media/ui/UnMediaOverlayView;

    invoke-virtual {v0}, Lcom/metamoji/media/ui/UnMediaOverlayView;->getGuardView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getPlayerBar()Lcom/metamoji/media/ui/UnMediaPlayerBar;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayer;->playerBar_:Lcom/metamoji/media/ui/UnMediaPlayerBar;

    return-object v0
.end method

.method public getUnitId()Ljava/lang/String;
    .locals 1

    .line 517
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayer;->soundUnit_:Lcom/metamoji/un/sound/UnSoundUnit;

    invoke-virtual {v0}, Lcom/metamoji/un/sound/UnSoundUnit;->getUnitId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isPaused()Z
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayer;->audioPlayer_:Lcom/metamoji/media/voice/audio/VcFilePlayer;

    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcFilePlayer;->getPlayingStatus()Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    move-result-object v0

    sget-object v1, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;->PAUSED:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method makeOverlayView()Lcom/metamoji/media/ui/UnMediaOverlayView;
    .locals 1

    .line 185
    new-instance v0, Lcom/metamoji/media/ui/UnMediaOverlayView;

    invoke-direct {v0}, Lcom/metamoji/media/ui/UnMediaOverlayView;-><init>()V

    .line 186
    invoke-virtual {v0, p0}, Lcom/metamoji/media/ui/UnMediaOverlayView;->setListener(Lcom/metamoji/media/ui/UnMediaOverlayView$IUnMediaOverlayListener;)V

    return-object v0
.end method

.method public makePlayerBar(Landroid/view/View;)Lcom/metamoji/media/ui/UnMediaPlayerBar;
    .locals 1

    .line 192
    sget v0, Lcom/metamoji/noteanytime/R$id;->player_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/metamoji/media/ui/UnMediaPlayerBar;

    .line 193
    invoke-virtual {p1, p0}, Lcom/metamoji/media/ui/UnMediaPlayerBar;->setListener(Lcom/metamoji/media/ui/UnMediaPlayerBar$IUnMediaPlayerBarListener;)V

    const/16 v0, 0x8

    .line 194
    invoke-virtual {p1, v0}, Lcom/metamoji/media/ui/UnMediaPlayerBar;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayer;->soundUnit_:Lcom/metamoji/un/sound/UnSoundUnit;

    invoke-virtual {v0}, Lcom/metamoji/un/sound/UnSoundUnit;->isRecordable()Z

    move-result v0

    .line 198
    invoke-virtual {p1, v0}, Lcom/metamoji/media/ui/UnMediaPlayerBar;->setRerecordButtonVisible(Z)V

    return-object p1
.end method

.method public onGlobalLayout()V
    .locals 4

    .line 539
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayer;->playerBar_:Lcom/metamoji/media/ui/UnMediaPlayerBar;

    invoke-virtual {v0}, Lcom/metamoji/media/ui/UnMediaPlayerBar;->setSeekBarTime()V

    .line 540
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayer;->playerBar_:Lcom/metamoji/media/ui/UnMediaPlayerBar;

    invoke-virtual {v0}, Lcom/metamoji/media/ui/UnMediaPlayerBar;->setCurrentTimeLabel()V

    .line 541
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayer;->audioPlayer_:Lcom/metamoji/media/voice/audio/VcFilePlayer;

    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcFilePlayer;->getPlayingStatus()Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    move-result-object v0

    sget-object v1, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;->PLAYING:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    .line 544
    iget-object v2, p0, Lcom/metamoji/media/ui/UnMediaPlayer;->playerBar_:Lcom/metamoji/media/ui/UnMediaPlayerBar;

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 542
    invoke-virtual {v2, v0}, Lcom/metamoji/media/ui/UnMediaPlayerBar;->syncPlayButton(Z)V

    goto :goto_0

    .line 544
    :cond_0
    invoke-virtual {v2, v3}, Lcom/metamoji/media/ui/UnMediaPlayerBar;->syncPlayButton(Z)V

    .line 546
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/media/ui/UnMediaPlayer;->updatePlayer()V

    .line 547
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayer;->playerBar_:Lcom/metamoji/media/ui/UnMediaPlayerBar;

    invoke-virtual {v0, v3}, Lcom/metamoji/media/ui/UnMediaPlayerBar;->setVisibility(I)V

    .line 548
    invoke-virtual {p0}, Lcom/metamoji/media/ui/UnMediaPlayer;->playSequence()V

    .line 550
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/media/ui/UnMediaPlayer$17;

    invoke-direct {v1, p0}, Lcom/metamoji/media/ui/UnMediaPlayer$17;-><init>(Lcom/metamoji/media/ui/UnMediaPlayer;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public pause()V
    .locals 2

    .line 267
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/media/ui/UnMediaPlayer$8;

    invoke-direct {v1, p0}, Lcom/metamoji/media/ui/UnMediaPlayer$8;-><init>(Lcom/metamoji/media/ui/UnMediaPlayer;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public play()V
    .locals 2

    .line 245
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/media/ui/UnMediaPlayer$7;

    invoke-direct {v1, p0}, Lcom/metamoji/media/ui/UnMediaPlayer$7;-><init>(Lcom/metamoji/media/ui/UnMediaPlayer;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method playSequence()V
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayer;->audioPlayer_:Lcom/metamoji/media/voice/audio/VcFilePlayer;

    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcFilePlayer;->getCurrentTime()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/media/ui/UnMediaPlayer;->syncPlayerBar(D)V

    return-void
.end method

.method public playerDidFinishToPlay(Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYER_ERROR_STATUS;)V
    .locals 2

    .line 411
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/media/ui/UnMediaPlayer$15;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/media/ui/UnMediaPlayer$15;-><init>(Lcom/metamoji/media/ui/UnMediaPlayer;Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYER_ERROR_STATUS;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public playerDidPlayToEndTime()V
    .locals 4

    .line 312
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/media/ui/UnMediaPlayer$10;

    invoke-direct {v1, p0}, Lcom/metamoji/media/ui/UnMediaPlayer$10;-><init>(Lcom/metamoji/media/ui/UnMediaPlayer;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public playerStartedToPlay()V
    .locals 2

    .line 391
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/metamoji/media/ui/UnMediaPlayer$14;

    invoke-direct {v1, p0}, Lcom/metamoji/media/ui/UnMediaPlayer$14;-><init>(Lcom/metamoji/media/ui/UnMediaPlayer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public playerWasPaused()V
    .locals 0

    return-void
.end method

.method public playerWasReadyToPlay()V
    .locals 2

    .line 380
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/media/ui/UnMediaPlayer$13;

    invoke-direct {v1, p0}, Lcom/metamoji/media/ui/UnMediaPlayer$13;-><init>(Lcom/metamoji/media/ui/UnMediaPlayer;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public playerWasSeeked()V
    .locals 0

    return-void
.end method

.method public playerWillFinishToPlay()V
    .locals 0

    return-void
.end method

.method public prepare(Ljava/io/File;Ljava/lang/String;)V
    .locals 3

    .line 78
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/media/ui/UnMediaPlayer$1;

    invoke-direct {v1, p0}, Lcom/metamoji/media/ui/UnMediaPlayer$1;-><init>(Lcom/metamoji/media/ui/UnMediaPlayer;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 85
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    .line 87
    iget-object p1, p0, Lcom/metamoji/media/ui/UnMediaPlayer;->soundUnit_:Lcom/metamoji/un/sound/UnSoundUnit;

    invoke-virtual {p1}, Lcom/metamoji/un/sound/UnSoundUnit;->getUrl()Ljava/lang/String;

    move-result-object p1

    .line 89
    iget-object v1, p0, Lcom/metamoji/media/ui/UnMediaPlayer;->soundUnit_:Lcom/metamoji/un/sound/UnSoundUnit;

    invoke-virtual {v1}, Lcom/metamoji/un/sound/UnSoundUnit;->getMediaId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/metamoji/media/ui/UnMediaPlayer;->soundUnit_:Lcom/metamoji/un/sound/UnSoundUnit;

    invoke-virtual {v1}, Lcom/metamoji/un/sound/UnSoundUnit;->getRecordId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 94
    :goto_0
    invoke-static {p1, v1, v2, p2}, Lcom/metamoji/media/MediaUtil;->downloadSoundFileSync(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result p1

    .line 95
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p2

    new-instance v1, Lcom/metamoji/media/ui/UnMediaPlayer$2;

    invoke-direct {v1, p0, p1, v0}, Lcom/metamoji/media/ui/UnMediaPlayer$2;-><init>(Lcom/metamoji/media/ui/UnMediaPlayer;ZLjava/io/File;)V

    invoke-virtual {p2, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void

    .line 112
    :cond_1
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance p2, Lcom/metamoji/media/ui/UnMediaPlayer$3;

    invoke-direct {p2, p0, v0}, Lcom/metamoji/media/ui/UnMediaPlayer$3;-><init>(Lcom/metamoji/media/ui/UnMediaPlayer;Ljava/io/File;)V

    invoke-virtual {p1, p2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method prepareInner(Ljava/io/File;)Z
    .locals 3

    .line 156
    iput-object p1, p0, Lcom/metamoji/media/ui/UnMediaPlayer;->cacheFile_:Ljava/io/File;

    .line 157
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    .line 162
    :try_start_0
    new-instance v1, Lcom/metamoji/media/voice/audio/VcFilePlayer;

    invoke-direct {v1}, Lcom/metamoji/media/voice/audio/VcFilePlayer;-><init>()V

    iput-object v1, p0, Lcom/metamoji/media/ui/UnMediaPlayer;->audioPlayer_:Lcom/metamoji/media/voice/audio/VcFilePlayer;

    .line 163
    invoke-virtual {v1, p0}, Lcom/metamoji/media/voice/audio/VcFilePlayer;->setListener(Lcom/metamoji/media/voice/audio/VcPlayer$IVcPlayerListener;)V

    .line 164
    iget-object v1, p0, Lcom/metamoji/media/ui/UnMediaPlayer;->audioPlayer_:Lcom/metamoji/media/voice/audio/VcFilePlayer;

    iget-object v2, p0, Lcom/metamoji/media/ui/UnMediaPlayer;->cacheFile_:Ljava/io/File;

    invoke-virtual {v1, v2}, Lcom/metamoji/media/voice/audio/VcFilePlayer;->prepareToPlay(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 165
    iget-object v1, p0, Lcom/metamoji/media/ui/UnMediaPlayer;->cacheFile_:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 166
    iput-object p1, p0, Lcom/metamoji/media/ui/UnMediaPlayer;->cacheFile_:Ljava/io/File;

    .line 167
    iput-object p1, p0, Lcom/metamoji/media/ui/UnMediaPlayer;->audioPlayer_:Lcom/metamoji/media/voice/audio/VcFilePlayer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception v1

    .line 171
    iget-object v2, p0, Lcom/metamoji/media/ui/UnMediaPlayer;->cacheFile_:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 172
    iput-object p1, p0, Lcom/metamoji/media/ui/UnMediaPlayer;->cacheFile_:Ljava/io/File;

    .line 173
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    .line 174
    iput-object p1, p0, Lcom/metamoji/media/ui/UnMediaPlayer;->audioPlayer_:Lcom/metamoji/media/voice/audio/VcFilePlayer;

    return v0
.end method

.method public removeSubviews()V
    .locals 2

    .line 523
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayer;->playerBar_:Lcom/metamoji/media/ui/UnMediaPlayerBar;

    if-eqz v0, :cond_0

    .line 524
    invoke-virtual {v0}, Lcom/metamoji/media/ui/UnMediaPlayerBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 526
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/metamoji/media/ui/UnMediaPlayer;->playerBar_:Lcom/metamoji/media/ui/UnMediaPlayerBar;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    .line 529
    iput-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayer;->playerBar_:Lcom/metamoji/media/ui/UnMediaPlayerBar;

    return-void
.end method

.method public seekBarValueChanging(D)V
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayer;->audioPlayer_:Lcom/metamoji/media/voice/audio/VcFilePlayer;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/media/voice/audio/VcFilePlayer;->seek(D)V

    return-void
.end method

.method public seekBarValueChangingEnd()V
    .locals 1

    .line 474
    iget-boolean v0, p0, Lcom/metamoji/media/ui/UnMediaPlayer;->saveIsPlaying_:Z

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayer;->audioPlayer_:Lcom/metamoji/media/voice/audio/VcFilePlayer;

    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcFilePlayer;->play()V

    const/4 v0, 0x0

    .line 476
    iput-boolean v0, p0, Lcom/metamoji/media/ui/UnMediaPlayer;->saveIsPlaying_:Z

    :cond_0
    return-void
.end method

.method public seekBarValueChangingStart()V
    .locals 2

    .line 459
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayer;->audioPlayer_:Lcom/metamoji/media/voice/audio/VcFilePlayer;

    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcFilePlayer;->getPlayingStatus()Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    move-result-object v0

    sget-object v1, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;->PLAYING:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    if-ne v0, v1, :cond_0

    .line 460
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayer;->audioPlayer_:Lcom/metamoji/media/voice/audio/VcFilePlayer;

    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcFilePlayer;->pause()V

    const/4 v0, 0x1

    .line 461
    iput-boolean v0, p0, Lcom/metamoji/media/ui/UnMediaPlayer;->saveIsPlaying_:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 463
    iput-boolean v0, p0, Lcom/metamoji/media/ui/UnMediaPlayer;->saveIsPlaying_:Z

    return-void
.end method

.method public seekToTime(D)V
    .locals 1

    .line 307
    iput-wide p1, p0, Lcom/metamoji/media/ui/UnMediaPlayer;->seekTime_:D

    .line 308
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayer;->audioPlayer_:Lcom/metamoji/media/voice/audio/VcFilePlayer;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/media/voice/audio/VcFilePlayer;->seek(D)V

    return-void
.end method

.method public setSoundUnit(Lcom/metamoji/un/sound/UnSoundUnit;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/metamoji/media/ui/UnMediaPlayer;->soundUnit_:Lcom/metamoji/un/sound/UnSoundUnit;

    return-void
.end method

.method showPrepareFailedMessage()V
    .locals 3

    .line 124
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v0

    .line 126
    iget-boolean v0, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->isOnPremise:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 127
    sget v0, Lcom/metamoji/noteanytime/R$string;->SCHOOL_SOUND_NOT_YET_UPLOADED_ALERT_ON_PREMISE:I

    new-instance v2, Lcom/metamoji/media/ui/UnMediaPlayer$4;

    invoke-direct {v2, p0}, Lcom/metamoji/media/ui/UnMediaPlayer$4;-><init>(Lcom/metamoji/media/ui/UnMediaPlayer;)V

    invoke-static {v0, v1, v2}, Lcom/metamoji/cm/CmUtils;->confirmDialog(IILandroid/content/DialogInterface$OnClickListener;)V

    return-void

    .line 140
    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$string;->SCHOOL_SOUND_NOT_YET_UPLOADED_ALERT:I

    new-instance v2, Lcom/metamoji/media/ui/UnMediaPlayer$5;

    invoke-direct {v2, p0}, Lcom/metamoji/media/ui/UnMediaPlayer$5;-><init>(Lcom/metamoji/media/ui/UnMediaPlayer;)V

    invoke-static {v0, v1, v2}, Lcom/metamoji/cm/CmUtils;->confirmDialog(IILandroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method startAudioTimer()V
    .locals 2

    .line 205
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/media/ui/UnMediaPlayer$6;

    invoke-direct {v1, p0}, Lcom/metamoji/media/ui/UnMediaPlayer$6;-><init>(Lcom/metamoji/media/ui/UnMediaPlayer;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public stop()V
    .locals 2

    .line 294
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/media/ui/UnMediaPlayer$9;

    invoke-direct {v1, p0}, Lcom/metamoji/media/ui/UnMediaPlayer$9;-><init>(Lcom/metamoji/media/ui/UnMediaPlayer;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method stopAudioTimer()V
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayer;->audioTimer_:Lcom/metamoji/cm/UiTimer;

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {v0}, Lcom/metamoji/cm/UiTimer;->cancel()V

    const/4 v0, 0x0

    .line 227
    iput-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayer;->audioTimer_:Lcom/metamoji/cm/UiTimer;

    :cond_0
    return-void
.end method

.method syncPlayerBar(D)V
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayer;->playerBar_:Lcom/metamoji/media/ui/UnMediaPlayerBar;

    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {v0, p1, p2}, Lcom/metamoji/media/ui/UnMediaPlayerBar;->syncSeekBar(D)V

    :cond_0
    return-void
.end method

.method public tappedOverlayView()V
    .locals 2

    .line 560
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayer;->audioPlayer_:Lcom/metamoji/media/voice/audio/VcFilePlayer;

    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcFilePlayer;->getPlayingStatus()Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    move-result-object v0

    .line 561
    sget-object v1, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;->PLAYING:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    if-ne v0, v1, :cond_0

    .line 562
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayer;->audioPlayer_:Lcom/metamoji/media/voice/audio/VcFilePlayer;

    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcFilePlayer;->pause()V

    .line 563
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayer;->playerBar_:Lcom/metamoji/media/ui/UnMediaPlayerBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/media/ui/UnMediaPlayerBar;->syncPlayButton(Z)V

    .line 566
    :cond_0
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayer;->soundUnit_:Lcom/metamoji/un/sound/UnSoundUnit;

    invoke-virtual {v0}, Lcom/metamoji/un/sound/UnSoundUnit;->requestClosePlayer()V

    return-void
.end method

.method public tappedPlayButton()V
    .locals 0

    .line 482
    invoke-virtual {p0}, Lcom/metamoji/media/ui/UnMediaPlayer;->pause()V

    return-void
.end method

.method public tappedReRecordButton()V
    .locals 2

    .line 486
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayer;->audioPlayer_:Lcom/metamoji/media/voice/audio/VcFilePlayer;

    if-eqz v0, :cond_0

    .line 487
    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcFilePlayer;->getPlayingStatus()Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    move-result-object v0

    sget-object v1, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;->PLAYING:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    if-ne v0, v1, :cond_0

    .line 488
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayer;->audioPlayer_:Lcom/metamoji/media/voice/audio/VcFilePlayer;

    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcFilePlayer;->pause()V

    .line 489
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayer;->playerBar_:Lcom/metamoji/media/ui/UnMediaPlayerBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/media/ui/UnMediaPlayerBar;->syncPlayButton(Z)V

    .line 492
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/media/ui/UnMediaPlayer$16;

    invoke-direct {v1, p0}, Lcom/metamoji/media/ui/UnMediaPlayer$16;-><init>(Lcom/metamoji/media/ui/UnMediaPlayer;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updatePlayer()V
    .locals 0

    .line 74
    invoke-virtual {p0}, Lcom/metamoji/media/ui/UnMediaPlayer;->updatePlayerBar()V

    return-void
.end method

.method public updatePlayerBar()V
    .locals 2

    .line 330
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayer;->playerBar_:Lcom/metamoji/media/ui/UnMediaPlayerBar;

    if-nez v0, :cond_0

    return-void

    .line 334
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/media/ui/UnMediaPlayer$11;

    invoke-direct {v1, p0}, Lcom/metamoji/media/ui/UnMediaPlayer$11;-><init>(Lcom/metamoji/media/ui/UnMediaPlayer;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method
