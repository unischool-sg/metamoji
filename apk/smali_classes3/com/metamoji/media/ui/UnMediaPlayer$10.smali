.class Lcom/metamoji/media/ui/UnMediaPlayer$10;
.super Ljava/lang/Object;
.source "UnMediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/ui/UnMediaPlayer;->playerDidPlayToEndTime()V
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

    .line 312
    iput-object p1, p0, Lcom/metamoji/media/ui/UnMediaPlayer$10;->this$0:Lcom/metamoji/media/ui/UnMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 315
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayer$10;->this$0:Lcom/metamoji/media/ui/UnMediaPlayer;

    iget-object v0, v0, Lcom/metamoji/media/ui/UnMediaPlayer;->soundUnit_:Lcom/metamoji/un/sound/UnSoundUnit;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayer$10;->this$0:Lcom/metamoji/media/ui/UnMediaPlayer;

    iget-object v0, v0, Lcom/metamoji/media/ui/UnMediaPlayer;->soundUnit_:Lcom/metamoji/un/sound/UnSoundUnit;

    invoke-virtual {v0}, Lcom/metamoji/un/sound/UnSoundUnit;->playerDidPlayToEndTime()V

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayer$10;->this$0:Lcom/metamoji/media/ui/UnMediaPlayer;

    iget-object v0, v0, Lcom/metamoji/media/ui/UnMediaPlayer;->audioPlayer_:Lcom/metamoji/media/voice/audio/VcFilePlayer;

    iget-object v1, p0, Lcom/metamoji/media/ui/UnMediaPlayer$10;->this$0:Lcom/metamoji/media/ui/UnMediaPlayer;

    iget-object v1, v1, Lcom/metamoji/media/ui/UnMediaPlayer;->cacheFile_:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/metamoji/media/voice/audio/VcFilePlayer;->prepareToPlay(Ljava/io/File;)Z

    .line 319
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayer$10;->this$0:Lcom/metamoji/media/ui/UnMediaPlayer;

    iget-object v0, v0, Lcom/metamoji/media/ui/UnMediaPlayer;->playerBar_:Lcom/metamoji/media/ui/UnMediaPlayerBar;

    if-eqz v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayer$10;->this$0:Lcom/metamoji/media/ui/UnMediaPlayer;

    iget-object v0, v0, Lcom/metamoji/media/ui/UnMediaPlayer;->playerBar_:Lcom/metamoji/media/ui/UnMediaPlayerBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/media/ui/UnMediaPlayerBar;->syncPlayButton(Z)V

    .line 321
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayer$10;->this$0:Lcom/metamoji/media/ui/UnMediaPlayer;

    iget-object v0, v0, Lcom/metamoji/media/ui/UnMediaPlayer;->playerBar_:Lcom/metamoji/media/ui/UnMediaPlayerBar;

    invoke-virtual {v0}, Lcom/metamoji/media/ui/UnMediaPlayerBar;->setSeekBarTime()V

    .line 322
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayer$10;->this$0:Lcom/metamoji/media/ui/UnMediaPlayer;

    iget-object v0, v0, Lcom/metamoji/media/ui/UnMediaPlayer;->playerBar_:Lcom/metamoji/media/ui/UnMediaPlayerBar;

    invoke-virtual {v0}, Lcom/metamoji/media/ui/UnMediaPlayerBar;->setCurrentTimeLabel()V

    :cond_1
    return-void
.end method
