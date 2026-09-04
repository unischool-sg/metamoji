.class Lcom/metamoji/media/ui/UnMediaPlayer$12;
.super Ljava/lang/Object;
.source "UnMediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/ui/UnMediaPlayer;->closePlayer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/media/ui/UnMediaPlayer;


# direct methods
.method constructor <init>(Lcom/metamoji/media/ui/UnMediaPlayer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 350
    iput-object p1, p0, Lcom/metamoji/media/ui/UnMediaPlayer$12;->this$0:Lcom/metamoji/media/ui/UnMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 353
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayer$12;->this$0:Lcom/metamoji/media/ui/UnMediaPlayer;

    iget-object v0, v0, Lcom/metamoji/media/ui/UnMediaPlayer;->overlayView_:Lcom/metamoji/media/ui/UnMediaOverlayView;

    if-eqz v0, :cond_3

    .line 354
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayer$12;->this$0:Lcom/metamoji/media/ui/UnMediaPlayer;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/metamoji/media/ui/UnMediaPlayer;->seekTime_:D

    .line 355
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayer$12;->this$0:Lcom/metamoji/media/ui/UnMediaPlayer;

    iget-object v0, v0, Lcom/metamoji/media/ui/UnMediaPlayer;->audioPlayer_:Lcom/metamoji/media/voice/audio/VcFilePlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 356
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayer$12;->this$0:Lcom/metamoji/media/ui/UnMediaPlayer;

    iget-object v0, v0, Lcom/metamoji/media/ui/UnMediaPlayer;->audioPlayer_:Lcom/metamoji/media/voice/audio/VcFilePlayer;

    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcFilePlayer;->getPlayingStatus()Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    move-result-object v0

    sget-object v2, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;->PLAYING:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    if-ne v0, v2, :cond_0

    .line 357
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayer$12;->this$0:Lcom/metamoji/media/ui/UnMediaPlayer;

    iget-object v0, v0, Lcom/metamoji/media/ui/UnMediaPlayer;->audioPlayer_:Lcom/metamoji/media/voice/audio/VcFilePlayer;

    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcFilePlayer;->pause()V

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayer$12;->this$0:Lcom/metamoji/media/ui/UnMediaPlayer;

    iget-object v0, v0, Lcom/metamoji/media/ui/UnMediaPlayer;->audioPlayer_:Lcom/metamoji/media/voice/audio/VcFilePlayer;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/media/voice/audio/VcFilePlayer;->stop(ZLjava/lang/Runnable;)Z

    .line 360
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayer$12;->this$0:Lcom/metamoji/media/ui/UnMediaPlayer;

    iget-object v0, v0, Lcom/metamoji/media/ui/UnMediaPlayer;->audioPlayer_:Lcom/metamoji/media/voice/audio/VcFilePlayer;

    invoke-virtual {v0, v1}, Lcom/metamoji/media/voice/audio/VcFilePlayer;->setListener(Lcom/metamoji/media/voice/audio/VcPlayer$IVcPlayerListener;)V

    .line 362
    :cond_1
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayer$12;->this$0:Lcom/metamoji/media/ui/UnMediaPlayer;

    iget-object v0, v0, Lcom/metamoji/media/ui/UnMediaPlayer;->playerBar_:Lcom/metamoji/media/ui/UnMediaPlayerBar;

    if-eqz v0, :cond_2

    .line 363
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayer$12;->this$0:Lcom/metamoji/media/ui/UnMediaPlayer;

    iget-object v0, v0, Lcom/metamoji/media/ui/UnMediaPlayer;->playerBar_:Lcom/metamoji/media/ui/UnMediaPlayerBar;

    invoke-virtual {v0, v1}, Lcom/metamoji/media/ui/UnMediaPlayerBar;->setListener(Lcom/metamoji/media/ui/UnMediaPlayerBar$IUnMediaPlayerBarListener;)V

    .line 364
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayer$12;->this$0:Lcom/metamoji/media/ui/UnMediaPlayer;

    iput-object v1, v0, Lcom/metamoji/media/ui/UnMediaPlayer;->playerBar_:Lcom/metamoji/media/ui/UnMediaPlayerBar;

    .line 367
    :cond_2
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayer$12;->this$0:Lcom/metamoji/media/ui/UnMediaPlayer;

    iget-object v0, v0, Lcom/metamoji/media/ui/UnMediaPlayer;->overlayView_:Lcom/metamoji/media/ui/UnMediaOverlayView;

    invoke-virtual {v0}, Lcom/metamoji/media/ui/UnMediaOverlayView;->hide()V

    .line 368
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayer$12;->this$0:Lcom/metamoji/media/ui/UnMediaPlayer;

    iget-object v0, v0, Lcom/metamoji/media/ui/UnMediaPlayer;->overlayView_:Lcom/metamoji/media/ui/UnMediaOverlayView;

    invoke-virtual {v0, v1}, Lcom/metamoji/media/ui/UnMediaOverlayView;->setListener(Lcom/metamoji/media/ui/UnMediaOverlayView$IUnMediaOverlayListener;)V

    .line 369
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayer$12;->this$0:Lcom/metamoji/media/ui/UnMediaPlayer;

    iput-object v1, v0, Lcom/metamoji/media/ui/UnMediaPlayer;->overlayView_:Lcom/metamoji/media/ui/UnMediaOverlayView;

    .line 371
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayer$12;->this$0:Lcom/metamoji/media/ui/UnMediaPlayer;

    iget-object v0, v0, Lcom/metamoji/media/ui/UnMediaPlayer;->soundUnit_:Lcom/metamoji/un/sound/UnSoundUnit;

    invoke-virtual {v0}, Lcom/metamoji/un/sound/UnSoundUnit;->playerBarClosed()V

    .line 372
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayer$12;->this$0:Lcom/metamoji/media/ui/UnMediaPlayer;

    iput-object v1, v0, Lcom/metamoji/media/ui/UnMediaPlayer;->soundUnit_:Lcom/metamoji/un/sound/UnSoundUnit;

    :cond_3
    return-void
.end method
