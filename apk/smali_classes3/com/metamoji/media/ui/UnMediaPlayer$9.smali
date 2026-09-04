.class Lcom/metamoji/media/ui/UnMediaPlayer$9;
.super Ljava/lang/Object;
.source "UnMediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/ui/UnMediaPlayer;->stop()V
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

    .line 294
    iput-object p1, p0, Lcom/metamoji/media/ui/UnMediaPlayer$9;->this$0:Lcom/metamoji/media/ui/UnMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 297
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayer$9;->this$0:Lcom/metamoji/media/ui/UnMediaPlayer;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/metamoji/media/ui/UnMediaPlayer;->seekTime_:D

    .line 298
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayer$9;->this$0:Lcom/metamoji/media/ui/UnMediaPlayer;

    iget-object v0, v0, Lcom/metamoji/media/ui/UnMediaPlayer;->audioPlayer_:Lcom/metamoji/media/voice/audio/VcFilePlayer;

    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcFilePlayer;->pause()V

    .line 299
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayer$9;->this$0:Lcom/metamoji/media/ui/UnMediaPlayer;

    iget-object v0, v0, Lcom/metamoji/media/ui/UnMediaPlayer;->audioPlayer_:Lcom/metamoji/media/voice/audio/VcFilePlayer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/media/voice/audio/VcFilePlayer;->stop(ZLjava/lang/Runnable;)Z

    .line 301
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayer$9;->this$0:Lcom/metamoji/media/ui/UnMediaPlayer;

    invoke-virtual {v0}, Lcom/metamoji/media/ui/UnMediaPlayer;->stopAudioTimer()V

    return-void
.end method
