.class Lcom/metamoji/media/ui/UnMediaPlayer$7;
.super Ljava/lang/Object;
.source "UnMediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/ui/UnMediaPlayer;->play()V
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

    .line 245
    iput-object p1, p0, Lcom/metamoji/media/ui/UnMediaPlayer$7;->this$0:Lcom/metamoji/media/ui/UnMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 248
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayer$7;->this$0:Lcom/metamoji/media/ui/UnMediaPlayer;

    iget-object v0, v0, Lcom/metamoji/media/ui/UnMediaPlayer;->playerBar_:Lcom/metamoji/media/ui/UnMediaPlayerBar;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayer$7;->this$0:Lcom/metamoji/media/ui/UnMediaPlayer;

    iget-object v0, v0, Lcom/metamoji/media/ui/UnMediaPlayer;->playerBar_:Lcom/metamoji/media/ui/UnMediaPlayerBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/media/ui/UnMediaPlayerBar;->syncPlayButton(Z)V

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayer$7;->this$0:Lcom/metamoji/media/ui/UnMediaPlayer;

    iget-object v0, v0, Lcom/metamoji/media/ui/UnMediaPlayer;->audioPlayer_:Lcom/metamoji/media/voice/audio/VcFilePlayer;

    if-eqz v0, :cond_1

    .line 252
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayer$7;->this$0:Lcom/metamoji/media/ui/UnMediaPlayer;

    iget-object v0, v0, Lcom/metamoji/media/ui/UnMediaPlayer;->audioPlayer_:Lcom/metamoji/media/voice/audio/VcFilePlayer;

    iget-object v1, p0, Lcom/metamoji/media/ui/UnMediaPlayer$7;->this$0:Lcom/metamoji/media/ui/UnMediaPlayer;

    iget-wide v1, v1, Lcom/metamoji/media/ui/UnMediaPlayer;->seekTime_:D

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/media/voice/audio/VcFilePlayer;->seek(D)V

    .line 253
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayer$7;->this$0:Lcom/metamoji/media/ui/UnMediaPlayer;

    iget-object v0, v0, Lcom/metamoji/media/ui/UnMediaPlayer;->audioPlayer_:Lcom/metamoji/media/voice/audio/VcFilePlayer;

    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcFilePlayer;->play()V

    :cond_1
    return-void
.end method
