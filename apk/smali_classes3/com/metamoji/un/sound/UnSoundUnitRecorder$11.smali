.class Lcom/metamoji/un/sound/UnSoundUnitRecorder$11;
.super Ljava/lang/Object;
.source "UnSoundUnitRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/sound/UnSoundUnitRecorder;->pause()V
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

    .line 456
    iput-object p1, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder$11;->this$0:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 459
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder$11;->this$0:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

    iget-object v0, v0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->audioPlayer_:Lcom/metamoji/media/voice/audio/VcFilePlayer;

    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcFilePlayer;->getPlayingStatus()Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    move-result-object v0

    .line 460
    sget-object v1, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;->PAUSED:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;->PREPARED_TO_PLAY:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder$11;->this$0:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

    iget-object v0, v0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->playerBar_:Lcom/metamoji/media/ui/UnMediaPlayerBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/media/ui/UnMediaPlayerBar;->syncPlayButton(Z)V

    .line 470
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder$11;->this$0:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

    iget-object v0, v0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->audioPlayer_:Lcom/metamoji/media/voice/audio/VcFilePlayer;

    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcFilePlayer;->pause()V

    .line 472
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder$11;->this$0:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

    invoke-virtual {v0}, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->stopAudioTimer()V

    return-void

    .line 462
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder$11;->this$0:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

    iget-object v0, v0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->playerBar_:Lcom/metamoji/media/ui/UnMediaPlayerBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/media/ui/UnMediaPlayerBar;->syncPlayButton(Z)V

    .line 464
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder$11;->this$0:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

    iget-object v0, v0, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->audioPlayer_:Lcom/metamoji/media/voice/audio/VcFilePlayer;

    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcFilePlayer;->play()V

    .line 466
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder$11;->this$0:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->startAudioTimer(Z)V

    return-void
.end method
