.class Lcom/metamoji/media/ui/UnMediaPlayer$6$1;
.super Ljava/util/TimerTask;
.source "UnMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/ui/UnMediaPlayer$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/media/ui/UnMediaPlayer$6;


# direct methods
.method constructor <init>(Lcom/metamoji/media/ui/UnMediaPlayer$6;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 213
    iput-object p1, p0, Lcom/metamoji/media/ui/UnMediaPlayer$6$1;->this$1:Lcom/metamoji/media/ui/UnMediaPlayer$6;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayer$6$1;->this$1:Lcom/metamoji/media/ui/UnMediaPlayer$6;

    iget-object v0, v0, Lcom/metamoji/media/ui/UnMediaPlayer$6;->this$0:Lcom/metamoji/media/ui/UnMediaPlayer;

    iget-object v0, v0, Lcom/metamoji/media/ui/UnMediaPlayer;->audioTimer_:Lcom/metamoji/cm/UiTimer;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayer$6$1;->this$1:Lcom/metamoji/media/ui/UnMediaPlayer$6;

    iget-object v0, v0, Lcom/metamoji/media/ui/UnMediaPlayer$6;->this$0:Lcom/metamoji/media/ui/UnMediaPlayer;

    invoke-virtual {v0}, Lcom/metamoji/media/ui/UnMediaPlayer;->playSequence()V

    :cond_0
    return-void
.end method
