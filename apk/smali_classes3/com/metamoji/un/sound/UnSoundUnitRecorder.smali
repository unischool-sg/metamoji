.class public Lcom/metamoji/un/sound/UnSoundUnitRecorder;
.super Ljava/lang/Object;
.source "UnSoundUnitRecorder.java"

# interfaces
.implements Lcom/metamoji/media/voice/audio/VcRecorder$IVcRecorderListener;
.implements Lcom/metamoji/media/voice/audio/VcPlayer$IVcPlayerListener;
.implements Lcom/metamoji/media/ui/UnMediaOverlayView$IUnMediaOverlayListener;
.implements Lcom/metamoji/un/sound/UnSoundUnitRecorderBar$IUnSoundUnitRecorderBarListener;
.implements Lcom/metamoji/media/ui/UnMediaPlayerBar$IUnMediaPlayerBarListener;


# static fields
.field public static final SOUND_UNIT_MAXIMUM_TIME:D = 28800.0

.field static recorder_:Lcom/metamoji/media/voice/audio/VcRecorder;


# instance fields
.field audioPlayer_:Lcom/metamoji/media/voice/audio/VcFilePlayer;

.field audioTimer_:Lcom/metamoji/cm/UiTimer;

.field overlayView_:Lcom/metamoji/media/ui/UnMediaOverlayView;

.field playerBar_:Lcom/metamoji/media/ui/UnMediaPlayerBar;

.field recorderBar_:Lcom/metamoji/un/sound/UnSoundUnitRecorderBar;

.field saveIsPlaying_:Z

.field seekTime_:D

.field soundFile_:Ljava/io/File;

.field soundUnit_:Lcom/metamoji/un/sound/UnSoundUnit;


# direct methods
.method public static synthetic $r8$lambda$98bk8jRutrjxNO4CUlzVrrr1Rpw(Lcom/metamoji/un/sound/UnSoundUnitRecorder;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->lambda$tappedReRecordButton$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$vyOtknDB-r4z04cFD062br9mUGQ(Lcom/metamoji/un/sound/UnSoundUnitRecorder;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->lambda$tappedReRecordButton$1()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 67
    iput-wide v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->seekTime_:D

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->saveIsPlaying_:Z

    return-void
.end method

.method public static handleCloseDocument()V
    .locals 2

    .line 811
    sget-object v0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->recorder_:Lcom/metamoji/media/voice/audio/VcRecorder;

    if-nez v0, :cond_0

    goto :goto_0

    .line 816
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcRecorder;->getRecordingStatus()Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;

    move-result-object v0

    sget-object v1, Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;->STOPPED:Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;

    if-eq v0, v1, :cond_1

    .line 817
    sget-object v0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->recorder_:Lcom/metamoji/media/voice/audio/VcRecorder;

    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcRecorder;->stopForce()Z

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$tappedReRecordButton$0(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 785
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p1

    .line 786
    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->changeToSelectModeIfNoteSelectMode()V

    .line 788
    iget-object p1, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->audioPlayer_:Lcom/metamoji/media/voice/audio/VcFilePlayer;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 789
    invoke-virtual {p1, p2, v0}, Lcom/metamoji/media/voice/audio/VcFilePlayer;->stop(ZLjava/lang/Runnable;)Z

    .line 790
    iget-object p1, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->audioPlayer_:Lcom/metamoji/media/voice/audio/VcFilePlayer;

    invoke-virtual {p1, v0}, Lcom/metamoji/media/voice/audio/VcFilePlayer;->setListener(Lcom/metamoji/media/voice/audio/VcPlayer$IVcPlayerListener;)V

    .line 791
    iput-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->audioPlayer_:Lcom/metamoji/media/voice/audio/VcFilePlayer;

    .line 794
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->changeToRecorderBar()V

    return-void
.end method

.method private synthetic lambda$tappedReRecordButton$1()V
    .locals 3

    .line 784
    sget v0, Lcom/metamoji/noteanytime/R$string;->SOUND_UNIT_RERECORD_ALERT:I

    new-instance v1, Lcom/metamoji/un/sound/UnSoundUnitRecorder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/metamoji/un/sound/UnSoundUnitRecorder$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/un/sound/UnSoundUnitRecorder;)V

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lcom/metamoji/cm/CmUtils;->yesNoDialog(IILandroid/content/DialogInterface$OnClickListener;Z)V

    return-void
.end method


# virtual methods
.method public addSubviews(Landroid/view/View;)V
    .locals 1

    .line 651
    invoke-virtual {p0, p1}, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->makeRecorderBar(Landroid/view/View;)Lcom/metamoji/un/sound/UnSoundUnitRecorderBar;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->recorderBar_:Lcom/metamoji/un/sound/UnSoundUnitRecorderBar;

    .line 652
    invoke-virtual {p0, p1}, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->makePlayerBar(Landroid/view/View;)Lcom/metamoji/media/ui/UnMediaPlayerBar;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->playerBar_:Lcom/metamoji/media/ui/UnMediaPlayerBar;

    return-void
.end method

.method changeToPlayerBar()V
    .locals 1

    const/4 v0, 0x0

    .line 587
    invoke-virtual {p0, v0}, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->setRecorderBarVisible(Z)V

    const/4 v0, 0x1

    .line 588
    invoke-virtual {p0, v0}, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->setPlayerBarVisible(Z)V

    .line 590
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->updatePlayerBar()V

    return-void
.end method

.method changeToRecorderBar()V
    .locals 2

    const/4 v0, 0x1

    .line 594
    invoke-virtual {p0, v0}, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->setRecorderBarVisible(Z)V

    const/4 v0, 0x0

    .line 595
    invoke-virtual {p0, v0}, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->setPlayerBarVisible(Z)V

    const-wide/16 v0, 0x0

    .line 596
    invoke-virtual {p0, v0, v1}, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->syncRecorderBar(D)V

    .line 597
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->soundFile_:Ljava/io/File;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 598
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 599
    iput-object v1, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->soundFile_:Ljava/io/File;

    .line 602
    :cond_0
    sget-object v0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->recorder_:Lcom/metamoji/media/voice/audio/VcRecorder;

    if-eqz v0, :cond_1

    .line 603
    invoke-virtual {v0, v1}, Lcom/metamoji/media/voice/audio/VcRecorder;->setListener(Lcom/metamoji/media/voice/audio/VcRecorder$IVcRecorderListener;)V

    .line 604
    sput-object v1, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->recorder_:Lcom/metamoji/media/voice/audio/VcRecorder;

    .line 607
    :cond_1
    new-instance v0, Lcom/metamoji/media/voice/audio/VcRecorder;

    invoke-direct {v0}, Lcom/metamoji/media/voice/audio/VcRecorder;-><init>()V

    sput-object v0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->recorder_:Lcom/metamoji/media/voice/audio/VcRecorder;

    .line 608
    invoke-virtual {v0, p0}, Lcom/metamoji/media/voice/audio/VcRecorder;->setListener(Lcom/metamoji/media/voice/audio/VcRecorder$IVcRecorderListener;)V

    .line 610
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/sound/UnSoundUnitRecorder$15;

    invoke-direct {v1, p0}, Lcom/metamoji/un/sound/UnSoundUnitRecorder$15;-><init>(Lcom/metamoji/un/sound/UnSoundUnitRecorder;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public closeRecorder()V
    .locals 2

    .line 227
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/sound/UnSoundUnitRecorder$5;

    invoke-direct {v1, p0}, Lcom/metamoji/un/sound/UnSoundUnitRecorder$5;-><init>(Lcom/metamoji/un/sound/UnSoundUnitRecorder;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getBarSize()Lcom/metamoji/cm/SizeF;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->playerBar_:Lcom/metamoji/media/ui/UnMediaPlayerBar;

    invoke-virtual {v0}, Lcom/metamoji/media/ui/UnMediaPlayerBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->playerBar_:Lcom/metamoji/media/ui/UnMediaPlayerBar;

    invoke-virtual {v0}, Lcom/metamoji/media/ui/UnMediaPlayerBar;->getBarSize()Lcom/metamoji/cm/SizeF;

    move-result-object v0

    return-object v0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->recorderBar_:Lcom/metamoji/un/sound/UnSoundUnitRecorderBar;

    invoke-virtual {v0}, Lcom/metamoji/un/sound/UnSoundUnitRecorderBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->recorderBar_:Lcom/metamoji/un/sound/UnSoundUnitRecorderBar;

    invoke-virtual {v0}, Lcom/metamoji/un/sound/UnSoundUnitRecorderBar;->getBarSize()Lcom/metamoji/cm/SizeF;

    move-result-object v0

    return-object v0

    .line 90
    :cond_1
    new-instance v0, Lcom/metamoji/cm/SizeF;

    invoke-direct {v0}, Lcom/metamoji/cm/SizeF;-><init>()V

    return-object v0
.end method

.method public getDuration()D
    .locals 2

    .line 798
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->audioPlayer_:Lcom/metamoji/media/voice/audio/VcFilePlayer;

    if-eqz v0, :cond_0

    .line 799
    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcFilePlayer;->getDuration()D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getOverlayGuardView()Landroid/view/View;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->overlayView_:Lcom/metamoji/media/ui/UnMediaOverlayView;

    invoke-virtual {v0}, Lcom/metamoji/media/ui/UnMediaOverlayView;->getGuardView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getPlayerBar()Lcom/metamoji/media/ui/UnMediaPlayerBar;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->playerBar_:Lcom/metamoji/media/ui/UnMediaPlayerBar;

    return-object v0
.end method

.method public getRecorderBar()Lcom/metamoji/un/sound/UnSoundUnitRecorderBar;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->recorderBar_:Lcom/metamoji/un/sound/UnSoundUnitRecorderBar;

    return-object v0
.end method

.method public getUnitId()Ljava/lang/String;
    .locals 1

    .line 804
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->soundUnit_:Lcom/metamoji/un/sound/UnSoundUnit;

    invoke-virtual {v0}, Lcom/metamoji/un/sound/UnSoundUnit;->getUnitId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isPaused()Z
    .locals 2

    .line 449
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->audioPlayer_:Lcom/metamoji/media/voice/audio/VcFilePlayer;

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

    .line 98
    new-instance v0, Lcom/metamoji/media/ui/UnMediaOverlayView;

    invoke-direct {v0}, Lcom/metamoji/media/ui/UnMediaOverlayView;-><init>()V

    .line 99
    invoke-virtual {v0, p0}, Lcom/metamoji/media/ui/UnMediaOverlayView;->setListener(Lcom/metamoji/media/ui/UnMediaOverlayView$IUnMediaOverlayListener;)V

    return-object v0
.end method

.method public makePlayerBar(Landroid/view/View;)Lcom/metamoji/media/ui/UnMediaPlayerBar;
    .locals 1

    .line 113
    sget v0, Lcom/metamoji/noteanytime/R$id;->player_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/metamoji/media/ui/UnMediaPlayerBar;

    .line 114
    invoke-virtual {p1, p0}, Lcom/metamoji/media/ui/UnMediaPlayerBar;->setListener(Lcom/metamoji/media/ui/UnMediaPlayerBar$IUnMediaPlayerBarListener;)V

    const/16 v0, 0x8

    .line 115
    invoke-virtual {p1, v0}, Lcom/metamoji/media/ui/UnMediaPlayerBar;->setVisibility(I)V

    return-object p1
.end method

.method public makeRecorderBar(Landroid/view/View;)Lcom/metamoji/un/sound/UnSoundUnitRecorderBar;
    .locals 1

    .line 105
    sget v0, Lcom/metamoji/noteanytime/R$id;->recorder_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/sound/UnSoundUnitRecorderBar;

    .line 106
    invoke-virtual {p1, p0}, Lcom/metamoji/un/sound/UnSoundUnitRecorderBar;->setListener(Lcom/metamoji/un/sound/UnSoundUnitRecorderBar$IUnSoundUnitRecorderBarListener;)V

    const/16 v0, 0x8

    .line 107
    invoke-virtual {p1, v0}, Lcom/metamoji/un/sound/UnSoundUnitRecorderBar;->setVisibility(I)V

    return-object p1
.end method

.method public onGlobalLayout()V
    .locals 5

    .line 657
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->audioPlayer_:Lcom/metamoji/media/voice/audio/VcFilePlayer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 658
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->playerBar_:Lcom/metamoji/media/ui/UnMediaPlayerBar;

    invoke-virtual {v0}, Lcom/metamoji/media/ui/UnMediaPlayerBar;->setSeekBarTime()V

    .line 659
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->playerBar_:Lcom/metamoji/media/ui/UnMediaPlayerBar;

    invoke-virtual {v0}, Lcom/metamoji/media/ui/UnMediaPlayerBar;->setCurrentTimeLabel()V

    .line 660
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->audioPlayer_:Lcom/metamoji/media/voice/audio/VcFilePlayer;

    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcFilePlayer;->getPlayingStatus()Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    move-result-object v0

    sget-object v3, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;->PLAYING:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    .line 663
    iget-object v4, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->playerBar_:Lcom/metamoji/media/ui/UnMediaPlayerBar;

    if-ne v0, v3, :cond_0

    .line 661
    invoke-virtual {v4, v1}, Lcom/metamoji/media/ui/UnMediaPlayerBar;->syncPlayButton(Z)V

    goto :goto_0

    .line 663
    :cond_0
    invoke-virtual {v4, v2}, Lcom/metamoji/media/ui/UnMediaPlayerBar;->syncPlayButton(Z)V

    :cond_1
    :goto_0
    const-wide/16 v3, 0x0

    .line 666
    invoke-virtual {p0, v3, v4}, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->syncRecorderBar(D)V

    .line 667
    sget-object v0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->recorder_:Lcom/metamoji/media/voice/audio/VcRecorder;

    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcRecorder;->getRecordingStatus()Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;

    move-result-object v0

    sget-object v3, Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;->RECORDING:Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;

    .line 670
    iget-object v4, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->recorderBar_:Lcom/metamoji/un/sound/UnSoundUnitRecorderBar;

    if-ne v0, v3, :cond_2

    .line 668
    invoke-virtual {v4, v1}, Lcom/metamoji/un/sound/UnSoundUnitRecorderBar;->syncRecordingButton(Z)V

    goto :goto_1

    .line 670
    :cond_2
    invoke-virtual {v4, v2}, Lcom/metamoji/un/sound/UnSoundUnitRecorderBar;->syncRecordingButton(Z)V

    .line 672
    :goto_1
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->updateRecorder()V

    .line 674
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->audioPlayer_:Lcom/metamoji/media/voice/audio/VcFilePlayer;

    if-eqz v0, :cond_3

    .line 675
    invoke-virtual {p0, v1}, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->setPlayerBarVisible(Z)V

    .line 676
    invoke-virtual {p0, v2}, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->setRecorderBarVisible(Z)V

    goto :goto_2

    .line 678
    :cond_3
    invoke-virtual {p0, v2}, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->setPlayerBarVisible(Z)V

    .line 679
    invoke-virtual {p0, v1}, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->setRecorderBarVisible(Z)V

    .line 682
    :goto_2
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/sound/UnSoundUnitRecorder$16;

    invoke-direct {v1, p0}, Lcom/metamoji/un/sound/UnSoundUnitRecorder$16;-><init>(Lcom/metamoji/un/sound/UnSoundUnitRecorder;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public pause()V
    .locals 2

    .line 456
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/sound/UnSoundUnitRecorder$11;

    invoke-direct {v1, p0}, Lcom/metamoji/un/sound/UnSoundUnitRecorder$11;-><init>(Lcom/metamoji/un/sound/UnSoundUnitRecorder;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public play()V
    .locals 2

    .line 438
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/sound/UnSoundUnitRecorder$10;

    invoke-direct {v1, p0}, Lcom/metamoji/un/sound/UnSoundUnitRecorder$10;-><init>(Lcom/metamoji/un/sound/UnSoundUnitRecorder;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method playSequence()V
    .locals 2

    .line 336
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->audioPlayer_:Lcom/metamoji/media/voice/audio/VcFilePlayer;

    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcFilePlayer;->getCurrentTime()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->syncPlayerBar(D)V

    return-void
.end method

.method public playerDidFinishToPlay(Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYER_ERROR_STATUS;)V
    .locals 2

    .line 519
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/sound/UnSoundUnitRecorder$13;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/un/sound/UnSoundUnitRecorder$13;-><init>(Lcom/metamoji/un/sound/UnSoundUnitRecorder;Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYER_ERROR_STATUS;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public playerDidPlayToEndTime()V
    .locals 2

    .line 561
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/sound/UnSoundUnitRecorder$14;

    invoke-direct {v1, p0}, Lcom/metamoji/un/sound/UnSoundUnitRecorder$14;-><init>(Lcom/metamoji/un/sound/UnSoundUnitRecorder;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public playerStartedToPlay()V
    .locals 1

    const/4 v0, 0x1

    .line 503
    invoke-virtual {p0, v0}, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->startAudioTimer(Z)V

    return-void
.end method

.method public playerWasPaused()V
    .locals 0

    return-void
.end method

.method public playerWasReadyToPlay()V
    .locals 0

    .line 499
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->changeToPlayerBar()V

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

.method prepareToPlay()Z
    .locals 3

    .line 418
    new-instance v0, Lcom/metamoji/media/voice/audio/VcFilePlayer;

    invoke-direct {v0}, Lcom/metamoji/media/voice/audio/VcFilePlayer;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->audioPlayer_:Lcom/metamoji/media/voice/audio/VcFilePlayer;

    .line 419
    invoke-virtual {v0, p0}, Lcom/metamoji/media/voice/audio/VcFilePlayer;->setListener(Lcom/metamoji/media/voice/audio/VcPlayer$IVcPlayerListener;)V

    .line 420
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->audioPlayer_:Lcom/metamoji/media/voice/audio/VcFilePlayer;

    iget-object v1, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->soundFile_:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/metamoji/media/voice/audio/VcFilePlayer;->prepareToPlay(Ljava/io/File;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 421
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v2, Lcom/metamoji/un/sound/UnSoundUnitRecorder$9;

    invoke-direct {v2, p0}, Lcom/metamoji/un/sound/UnSoundUnitRecorder$9;-><init>(Lcom/metamoji/un/sound/UnSoundUnitRecorder;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return v1

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->playerBar_:Lcom/metamoji/media/ui/UnMediaPlayerBar;

    invoke-virtual {v0}, Lcom/metamoji/media/ui/UnMediaPlayerBar;->setSeekBarTime()V

    .line 432
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->playerBar_:Lcom/metamoji/media/ui/UnMediaPlayerBar;

    invoke-virtual {v0}, Lcom/metamoji/media/ui/UnMediaPlayerBar;->setCurrentTimeLabel()V

    .line 433
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->playerBar_:Lcom/metamoji/media/ui/UnMediaPlayerBar;

    invoke-virtual {v0, v1}, Lcom/metamoji/media/ui/UnMediaPlayerBar;->syncPlayButton(Z)V

    const/4 v0, 0x1

    return v0
.end method

.method public prepareToRecord()Z
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->overlayView_:Lcom/metamoji/media/ui/UnMediaOverlayView;

    if-nez v0, :cond_1

    .line 129
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    .line 131
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->makeOverlayView()Lcom/metamoji/media/ui/UnMediaOverlayView;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->overlayView_:Lcom/metamoji/media/ui/UnMediaOverlayView;

    .line 133
    sget-object v0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->recorder_:Lcom/metamoji/media/voice/audio/VcRecorder;

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Lcom/metamoji/media/voice/audio/VcRecorder;

    invoke-direct {v0}, Lcom/metamoji/media/voice/audio/VcRecorder;-><init>()V

    sput-object v0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->recorder_:Lcom/metamoji/media/voice/audio/VcRecorder;

    .line 136
    :cond_0
    sget-object v0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->recorder_:Lcom/metamoji/media/voice/audio/VcRecorder;

    invoke-virtual {v0, p0}, Lcom/metamoji/media/voice/audio/VcRecorder;->setListener(Lcom/metamoji/media/voice/audio/VcRecorder$IVcRecorderListener;)V

    .line 138
    sget-object v0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->recorder_:Lcom/metamoji/media/voice/audio/VcRecorder;

    const-string/jumbo v1, "soundButton.m4a"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/metamoji/media/voice/audio/VcRecorder;->prepareToRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 139
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/sound/UnSoundUnitRecorder$1;

    invoke-direct {v1, p0}, Lcom/metamoji/un/sound/UnSoundUnitRecorder$1;-><init>(Lcom/metamoji/un/sound/UnSoundUnitRecorder;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    return v0

    .line 151
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/media/ui/UnMediaOverlayView;->show()Z

    move-result v0

    if-nez v0, :cond_2

    .line 152
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/sound/UnSoundUnitRecorder$2;

    invoke-direct {v1, p0}, Lcom/metamoji/un/sound/UnSoundUnitRecorder$2;-><init>(Lcom/metamoji/un/sound/UnSoundUnitRecorder;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method recordSequence()V
    .locals 4

    .line 349
    sget-object v0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->recorder_:Lcom/metamoji/media/voice/audio/VcRecorder;

    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcRecorder;->getCurrentTime()D

    move-result-wide v0

    const-wide v2, 0x40dc200000000000L    # 28800.0

    cmpg-double v2, v2, v0

    if-gtz v2, :cond_0

    .line 351
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->tappedRecordButton()V

    return-void

    .line 354
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->syncRecorderBar(D)V

    return-void
.end method

.method public recorderBeginInterruptionToRecord(Lcom/metamoji/media/voice/audio/VcRecorder;)V
    .locals 0

    return-void
.end method

.method public recorderEndInterruptionToRecord(Lcom/metamoji/media/voice/audio/VcRecorder;)V
    .locals 0

    return-void
.end method

.method public recorderStartedToRecord(Lcom/metamoji/media/voice/audio/VcRecorder;)V
    .locals 0

    const/4 p1, 0x0

    .line 380
    invoke-virtual {p0, p1}, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->startAudioTimer(Z)V

    return-void
.end method

.method public recorderStoppedToRecord(Lcom/metamoji/media/voice/audio/VcRecorder;)V
    .locals 2

    .line 388
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/sound/UnSoundUnitRecorder$8;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/un/sound/UnSoundUnitRecorder$8;-><init>(Lcom/metamoji/un/sound/UnSoundUnitRecorder;Lcom/metamoji/media/voice/audio/VcRecorder;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public recorderStoppingToRecord(Lcom/metamoji/media/voice/audio/VcRecorder;)V
    .locals 0

    return-void
.end method

.method public recorderWasReadyToRecord(Lcom/metamoji/media/voice/audio/VcRecorder;)V
    .locals 1

    .line 369
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v0, Lcom/metamoji/un/sound/UnSoundUnitRecorder$7;

    invoke-direct {v0, p0}, Lcom/metamoji/un/sound/UnSoundUnitRecorder$7;-><init>(Lcom/metamoji/un/sound/UnSoundUnitRecorder;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public recordingCompleteIfNeed()V
    .locals 3

    .line 286
    sget-object v0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->recorder_:Lcom/metamoji/media/voice/audio/VcRecorder;

    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcRecorder;->getRecordingStatus()Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;

    move-result-object v0

    .line 287
    sget-object v1, Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;->RECORDING:Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->playerBar_:Lcom/metamoji/media/ui/UnMediaPlayerBar;

    invoke-virtual {v1}, Lcom/metamoji/media/ui/UnMediaPlayerBar;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 288
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->soundUnit_:Lcom/metamoji/un/sound/UnSoundUnit;

    invoke-virtual {v0}, Lcom/metamoji/un/sound/UnSoundUnit;->closeRecorder()V

    return-void

    .line 292
    :cond_0
    sget-object v1, Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;->RECORDING:Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;

    if-ne v0, v1, :cond_1

    .line 293
    sget-object v0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->recorder_:Lcom/metamoji/media/voice/audio/VcRecorder;

    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcRecorder;->stop()Z

    .line 294
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->stopAudioTimer()V

    .line 299
    :cond_1
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->recorder_:Lcom/metamoji/media/voice/audio/VcRecorder;

    invoke-virtual {v1}, Lcom/metamoji/media/voice/audio/VcRecorder;->getTempDir()Ljava/io/File;

    move-result-object v1

    sget-object v2, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->recorder_:Lcom/metamoji/media/voice/audio/VcRecorder;

    invoke-virtual {v2}, Lcom/metamoji/media/voice/audio/VcRecorder;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->soundFile_:Ljava/io/File;

    .line 300
    iget-object v1, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->soundUnit_:Lcom/metamoji/un/sound/UnSoundUnit;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/metamoji/un/sound/UnSoundUnit;->recordingCompleted(Ljava/io/File;Z)V

    return-void
.end method

.method public removeSubviews()V
    .locals 3

    .line 632
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->recorderBar_:Lcom/metamoji/un/sound/UnSoundUnitRecorderBar;

    if-eqz v0, :cond_0

    .line 633
    invoke-virtual {v0}, Lcom/metamoji/un/sound/UnSoundUnitRecorderBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 635
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->recorderBar_:Lcom/metamoji/un/sound/UnSoundUnitRecorderBar;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    .line 638
    iput-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->recorderBar_:Lcom/metamoji/un/sound/UnSoundUnitRecorderBar;

    .line 640
    iget-object v1, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->playerBar_:Lcom/metamoji/media/ui/UnMediaPlayerBar;

    if-eqz v1, :cond_1

    .line 641
    invoke-virtual {v1}, Lcom/metamoji/media/ui/UnMediaPlayerBar;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 643
    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->playerBar_:Lcom/metamoji/media/ui/UnMediaPlayerBar;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 646
    :cond_1
    iput-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->playerBar_:Lcom/metamoji/media/ui/UnMediaPlayerBar;

    return-void
.end method

.method public seekBarValueChanging(D)V
    .locals 1

    .line 772
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->audioPlayer_:Lcom/metamoji/media/voice/audio/VcFilePlayer;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/media/voice/audio/VcFilePlayer;->seek(D)V

    return-void
.end method

.method public seekBarValueChangingEnd()V
    .locals 1

    .line 775
    iget-boolean v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->saveIsPlaying_:Z

    if-eqz v0, :cond_0

    .line 776
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->audioPlayer_:Lcom/metamoji/media/voice/audio/VcFilePlayer;

    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcFilePlayer;->play()V

    const/4 v0, 0x0

    .line 777
    iput-boolean v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->saveIsPlaying_:Z

    :cond_0
    return-void
.end method

.method public seekBarValueChangingStart()V
    .locals 2

    .line 764
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->audioPlayer_:Lcom/metamoji/media/voice/audio/VcFilePlayer;

    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcFilePlayer;->getPlayingStatus()Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    move-result-object v0

    sget-object v1, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;->PLAYING:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    if-ne v0, v1, :cond_0

    .line 765
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->audioPlayer_:Lcom/metamoji/media/voice/audio/VcFilePlayer;

    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcFilePlayer;->pause()V

    const/4 v0, 0x1

    .line 766
    iput-boolean v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->saveIsPlaying_:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 768
    iput-boolean v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->saveIsPlaying_:Z

    return-void
.end method

.method public seekToTime(D)V
    .locals 1

    .line 492
    iput-wide p1, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->seekTime_:D

    .line 493
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->audioPlayer_:Lcom/metamoji/media/voice/audio/VcFilePlayer;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/media/voice/audio/VcFilePlayer;->seek(D)V

    return-void
.end method

.method setPlayerBarVisible(Z)V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->playerBar_:Lcom/metamoji/media/ui/UnMediaPlayerBar;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 186
    invoke-virtual {v0, p1}, Lcom/metamoji/media/ui/UnMediaPlayerBar;->setVisibility(I)V

    return-void

    :cond_1
    const/4 p1, 0x4

    .line 188
    invoke-virtual {v0, p1}, Lcom/metamoji/media/ui/UnMediaPlayerBar;->setVisibility(I)V

    return-void
.end method

.method setRecorderBarVisible(Z)V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->recorderBar_:Lcom/metamoji/un/sound/UnSoundUnitRecorderBar;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 175
    invoke-virtual {v0, p1}, Lcom/metamoji/un/sound/UnSoundUnitRecorderBar;->setVisibility(I)V

    return-void

    :cond_1
    const/4 p1, 0x4

    .line 177
    invoke-virtual {v0, p1}, Lcom/metamoji/un/sound/UnSoundUnitRecorderBar;->setVisibility(I)V

    return-void
.end method

.method public setSoundUnit(Lcom/metamoji/un/sound/UnSoundUnit;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->soundUnit_:Lcom/metamoji/un/sound/UnSoundUnit;

    return-void
.end method

.method startAudioTimer(Z)V
    .locals 2

    .line 305
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/sound/UnSoundUnitRecorder$6;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/un/sound/UnSoundUnitRecorder$6;-><init>(Lcom/metamoji/un/sound/UnSoundUnitRecorder;Z)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public stop()V
    .locals 2

    .line 479
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/sound/UnSoundUnitRecorder$12;

    invoke-direct {v1, p0}, Lcom/metamoji/un/sound/UnSoundUnitRecorder$12;-><init>(Lcom/metamoji/un/sound/UnSoundUnitRecorder;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method stopAudioTimer()V
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->audioTimer_:Lcom/metamoji/cm/UiTimer;

    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {v0}, Lcom/metamoji/cm/UiTimer;->cancel()V

    const/4 v0, 0x0

    .line 331
    iput-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->audioTimer_:Lcom/metamoji/cm/UiTimer;

    :cond_0
    return-void
.end method

.method syncPlayerBar(D)V
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->playerBar_:Lcom/metamoji/media/ui/UnMediaPlayerBar;

    if-eqz v0, :cond_0

    .line 344
    invoke-virtual {v0, p1, p2}, Lcom/metamoji/media/ui/UnMediaPlayerBar;->syncSeekBar(D)V

    :cond_0
    return-void
.end method

.method syncRecorderBar(D)V
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->recorderBar_:Lcom/metamoji/un/sound/UnSoundUnitRecorderBar;

    if-eqz v0, :cond_0

    .line 362
    invoke-virtual {v0, p1, p2}, Lcom/metamoji/un/sound/UnSoundUnitRecorderBar;->syncTimeLabel(D)V

    :cond_0
    return-void
.end method

.method public tappedOverlayView()V
    .locals 3

    .line 692
    sget-object v0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->recorder_:Lcom/metamoji/media/voice/audio/VcRecorder;

    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcRecorder;->getRecordingStatus()Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;

    move-result-object v0

    .line 693
    sget-object v1, Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;->STOPPED:Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 696
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->playerBar_:Lcom/metamoji/media/ui/UnMediaPlayerBar;

    invoke-virtual {v0}, Lcom/metamoji/media/ui/UnMediaPlayerBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 697
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->soundUnit_:Lcom/metamoji/un/sound/UnSoundUnit;

    invoke-virtual {v0}, Lcom/metamoji/un/sound/UnSoundUnit;->closeRecorder()V

    return-void

    .line 701
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->audioPlayer_:Lcom/metamoji/media/voice/audio/VcFilePlayer;

    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcFilePlayer;->getPlayingStatus()Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    move-result-object v0

    .line 702
    sget-object v1, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;->PLAYING:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    if-ne v0, v1, :cond_2

    .line 703
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->audioPlayer_:Lcom/metamoji/media/voice/audio/VcFilePlayer;

    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcFilePlayer;->pause()V

    .line 704
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->playerBar_:Lcom/metamoji/media/ui/UnMediaPlayerBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/media/ui/UnMediaPlayerBar;->syncPlayButton(Z)V

    .line 707
    :cond_2
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->audioPlayer_:Lcom/metamoji/media/voice/audio/VcFilePlayer;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/media/voice/audio/VcFilePlayer;->stop(ZLjava/lang/Runnable;)Z

    .line 709
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->soundUnit_:Lcom/metamoji/un/sound/UnSoundUnit;

    if-eqz v0, :cond_3

    .line 710
    iget-object v1, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->soundFile_:Ljava/io/File;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/un/sound/UnSoundUnit;->recordingCompleted(Ljava/io/File;Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public tappedPlayButton()V
    .locals 0

    .line 781
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->pause()V

    return-void
.end method

.method public tappedReRecordButton()V
    .locals 2

    .line 784
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/sound/UnSoundUnitRecorder$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/metamoji/un/sound/UnSoundUnitRecorder$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/un/sound/UnSoundUnitRecorder;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public tappedRecordButton()V
    .locals 5

    .line 717
    sget-object v0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->recorder_:Lcom/metamoji/media/voice/audio/VcRecorder;

    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcRecorder;->getRecordingStatus()Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;

    move-result-object v0

    .line 718
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v1

    .line 719
    sget-object v2, Lcom/metamoji/un/sound/UnSoundUnitRecorder$18;->$SwitchMap$com$metamoji$media$voice$audio$VcRecorder$VC_RECORDING_STATUS:[I

    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    goto :goto_0

    .line 734
    :cond_0
    invoke-virtual {v1}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    .line 735
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getEditMode()Lcom/metamoji/nt/NtDocument$EditMode;

    move-result-object v1

    .line 736
    sget-object v4, Lcom/metamoji/nt/NtDocument$EditMode;->VIEWMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    if-eq v1, v4, :cond_1

    sget-object v4, Lcom/metamoji/nt/NtDocument$EditMode;->LASERMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    if-ne v1, v4, :cond_2

    .line 738
    :cond_1
    sget-object v1, Lcom/metamoji/nt/NtNoteController$NoteMode;->SELECT:Lcom/metamoji/nt/NtNoteController$NoteMode;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtNoteController;->changeToNoteMode(Lcom/metamoji/nt/NtNoteController$NoteMode;)V

    .line 741
    :cond_2
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->recorderBar_:Lcom/metamoji/un/sound/UnSoundUnitRecorderBar;

    invoke-virtual {v0, v3}, Lcom/metamoji/un/sound/UnSoundUnitRecorderBar;->syncRecordingButton(Z)V

    .line 742
    sget-object v0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->recorder_:Lcom/metamoji/media/voice/audio/VcRecorder;

    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcRecorder;->record()Z

    move-result v0

    if-nez v0, :cond_4

    .line 743
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->recorderBar_:Lcom/metamoji/un/sound/UnSoundUnitRecorderBar;

    invoke-virtual {v0, v2}, Lcom/metamoji/un/sound/UnSoundUnitRecorderBar;->syncRecordingButton(Z)V

    .line 744
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/sound/UnSoundUnitRecorder$17;

    invoke-direct {v1, p0}, Lcom/metamoji/un/sound/UnSoundUnitRecorder$17;-><init>(Lcom/metamoji/un/sound/UnSoundUnitRecorder;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void

    .line 721
    :cond_3
    sget-object v0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->recorder_:Lcom/metamoji/media/voice/audio/VcRecorder;

    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcRecorder;->stop()Z

    .line 722
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->stopAudioTimer()V

    .line 725
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->recorderBar_:Lcom/metamoji/un/sound/UnSoundUnitRecorderBar;

    invoke-virtual {v0, v2}, Lcom/metamoji/un/sound/UnSoundUnitRecorderBar;->syncRecordingButton(Z)V

    .line 726
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->prepareToPlay()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    :goto_0
    return-void

    .line 729
    :cond_5
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->changeToPlayerBar()V

    return-void
.end method

.method updatePlayerBar()V
    .locals 2

    .line 211
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/sound/UnSoundUnitRecorder$4;

    invoke-direct {v1, p0}, Lcom/metamoji/un/sound/UnSoundUnitRecorder$4;-><init>(Lcom/metamoji/un/sound/UnSoundUnitRecorder;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateRecorder()V
    .locals 0

    .line 166
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->updateRecorderBar()V

    .line 167
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->updatePlayerBar()V

    return-void
.end method

.method updateRecorderBar()V
    .locals 2

    .line 196
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/sound/UnSoundUnitRecorder$3;

    invoke-direct {v1, p0}, Lcom/metamoji/un/sound/UnSoundUnitRecorder$3;-><init>(Lcom/metamoji/un/sound/UnSoundUnitRecorder;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method
