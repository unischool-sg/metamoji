.class Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl$1;
.super Ljava/util/TimerTask;
.source "VcAudioPlayerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl;->play(DD)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl;


# direct methods
.method constructor <init>(Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 177
    iput-object p1, p0, Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl$1;->this$0:Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl$1;->this$0:Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl;

    iget-object v0, v0, Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl;->_playingStatus:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    sget-object v1, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;->PLAYING:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    if-ne v0, v1, :cond_0

    .line 181
    iget-object v0, p0, Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl$1;->this$0:Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl;

    iget-object v0, v0, Lcom/metamoji/media/voice/audio/VcAudioPlayerImpl;->_audio:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    :cond_0
    return-void
.end method
