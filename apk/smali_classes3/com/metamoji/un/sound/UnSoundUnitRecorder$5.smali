.class Lcom/metamoji/un/sound/UnSoundUnitRecorder$5;
.super Ljava/lang/Object;
.source "UnSoundUnitRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/sound/UnSoundUnitRecorder;->closeRecorder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/sound/UnSoundUnitRecorder;


# direct methods
.method constructor <init>(Lcom/metamoji/un/sound/UnSoundUnitRecorder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 227
    iput-object p1, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder$5;->this$0:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 231
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder$5;->this$0:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

    iget-object v0, v0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->overlayView_:Lcom/metamoji/media/ui/UnMediaOverlayView;

    if-eqz v0, :cond_4

    .line 232
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder$5;->this$0:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->seekTime_:D

    .line 233
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder$5;->this$0:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

    invoke-virtual {v0}, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->stopAudioTimer()V

    .line 234
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder$5;->this$0:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

    iget-object v0, v0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->recorderBar_:Lcom/metamoji/un/sound/UnSoundUnitRecorderBar;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 235
    sget-object v0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->recorder_:Lcom/metamoji/media/voice/audio/VcRecorder;

    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcRecorder;->getRecordingStatus()Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;

    move-result-object v0

    .line 236
    sget-object v3, Lcom/metamoji/un/sound/UnSoundUnitRecorder$18;->$SwitchMap$com$metamoji$media$voice$audio$VcRecorder$VC_RECORDING_STATUS:[I

    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;->ordinal()I

    move-result v0

    aget v0, v3, v0

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 239
    :cond_0
    sget-object v0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->recorder_:Lcom/metamoji/media/voice/audio/VcRecorder;

    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcRecorder;->stopForce()Z

    .line 243
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder$5;->this$0:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->recorder_:Lcom/metamoji/media/voice/audio/VcRecorder;

    invoke-virtual {v4}, Lcom/metamoji/media/voice/audio/VcRecorder;->getTempDir()Ljava/io/File;

    move-result-object v4

    sget-object v5, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->recorder_:Lcom/metamoji/media/voice/audio/VcRecorder;

    invoke-virtual {v5}, Lcom/metamoji/media/voice/audio/VcRecorder;->getFilename()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, v0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->soundFile_:Ljava/io/File;

    .line 244
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder$5;->this$0:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

    iget-object v0, v0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->soundUnit_:Lcom/metamoji/un/sound/UnSoundUnit;

    iget-object v3, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder$5;->this$0:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

    iget-object v3, v3, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->soundFile_:Ljava/io/File;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/metamoji/un/sound/UnSoundUnit;->recordingCompleted(Ljava/io/File;Z)V

    .line 253
    :goto_0
    sget-object v0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->recorder_:Lcom/metamoji/media/voice/audio/VcRecorder;

    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcRecorder;->resetMic()V

    .line 254
    sget-object v0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->recorder_:Lcom/metamoji/media/voice/audio/VcRecorder;

    invoke-virtual {v0, v2}, Lcom/metamoji/media/voice/audio/VcRecorder;->setListener(Lcom/metamoji/media/voice/audio/VcRecorder$IVcRecorderListener;)V

    .line 256
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder$5;->this$0:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

    iget-object v0, v0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->recorderBar_:Lcom/metamoji/un/sound/UnSoundUnitRecorderBar;

    invoke-virtual {v0, v2}, Lcom/metamoji/un/sound/UnSoundUnitRecorderBar;->setListener(Lcom/metamoji/un/sound/UnSoundUnitRecorderBar$IUnSoundUnitRecorderBarListener;)V

    .line 257
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder$5;->this$0:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

    iput-object v2, v0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->recorderBar_:Lcom/metamoji/un/sound/UnSoundUnitRecorderBar;

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder$5;->this$0:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

    iget-object v0, v0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->playerBar_:Lcom/metamoji/media/ui/UnMediaPlayerBar;

    if-eqz v0, :cond_3

    .line 260
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder$5;->this$0:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

    iget-object v0, v0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->audioPlayer_:Lcom/metamoji/media/voice/audio/VcFilePlayer;

    if-eqz v0, :cond_2

    .line 261
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder$5;->this$0:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

    iget-object v0, v0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->audioPlayer_:Lcom/metamoji/media/voice/audio/VcFilePlayer;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/media/voice/audio/VcFilePlayer;->stop(ZLjava/lang/Runnable;)Z

    .line 262
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder$5;->this$0:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

    iget-object v0, v0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->audioPlayer_:Lcom/metamoji/media/voice/audio/VcFilePlayer;

    invoke-virtual {v0, v2}, Lcom/metamoji/media/voice/audio/VcFilePlayer;->setListener(Lcom/metamoji/media/voice/audio/VcPlayer$IVcPlayerListener;)V

    .line 263
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder$5;->this$0:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

    iput-object v2, v0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->audioPlayer_:Lcom/metamoji/media/voice/audio/VcFilePlayer;

    .line 267
    :cond_2
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder$5;->this$0:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

    iget-object v0, v0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->playerBar_:Lcom/metamoji/media/ui/UnMediaPlayerBar;

    invoke-virtual {v0, v2}, Lcom/metamoji/media/ui/UnMediaPlayerBar;->setListener(Lcom/metamoji/media/ui/UnMediaPlayerBar$IUnMediaPlayerBarListener;)V

    .line 268
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder$5;->this$0:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

    iput-object v2, v0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->playerBar_:Lcom/metamoji/media/ui/UnMediaPlayerBar;

    .line 271
    :cond_3
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder$5;->this$0:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

    iget-object v0, v0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->overlayView_:Lcom/metamoji/media/ui/UnMediaOverlayView;

    invoke-virtual {v0}, Lcom/metamoji/media/ui/UnMediaOverlayView;->hide()V

    .line 272
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder$5;->this$0:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

    iget-object v0, v0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->overlayView_:Lcom/metamoji/media/ui/UnMediaOverlayView;

    invoke-virtual {v0, v2}, Lcom/metamoji/media/ui/UnMediaOverlayView;->setListener(Lcom/metamoji/media/ui/UnMediaOverlayView$IUnMediaOverlayListener;)V

    .line 273
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder$5;->this$0:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

    iput-object v2, v0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->overlayView_:Lcom/metamoji/media/ui/UnMediaOverlayView;

    .line 275
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder$5;->this$0:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

    iget-object v0, v0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->soundUnit_:Lcom/metamoji/un/sound/UnSoundUnit;

    invoke-virtual {v0}, Lcom/metamoji/un/sound/UnSoundUnit;->recordBarClosed()V

    .line 276
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder$5;->this$0:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

    iput-object v2, v0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->soundUnit_:Lcom/metamoji/un/sound/UnSoundUnit;

    :cond_4
    return-void
.end method
