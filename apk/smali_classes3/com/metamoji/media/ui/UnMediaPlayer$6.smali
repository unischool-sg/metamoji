.class Lcom/metamoji/media/ui/UnMediaPlayer$6;
.super Ljava/lang/Object;
.source "UnMediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/ui/UnMediaPlayer;->startAudioTimer()V
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

    .line 205
    iput-object p1, p0, Lcom/metamoji/media/ui/UnMediaPlayer$6;->this$0:Lcom/metamoji/media/ui/UnMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 208
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayer$6;->this$0:Lcom/metamoji/media/ui/UnMediaPlayer;

    iget-object v0, v0, Lcom/metamoji/media/ui/UnMediaPlayer;->audioTimer_:Lcom/metamoji/cm/UiTimer;

    if-eqz v0, :cond_0

    return-void

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayer$6;->this$0:Lcom/metamoji/media/ui/UnMediaPlayer;

    new-instance v1, Lcom/metamoji/cm/UiTimer;

    invoke-direct {v1}, Lcom/metamoji/cm/UiTimer;-><init>()V

    iput-object v1, v0, Lcom/metamoji/media/ui/UnMediaPlayer;->audioTimer_:Lcom/metamoji/cm/UiTimer;

    .line 213
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayer$6;->this$0:Lcom/metamoji/media/ui/UnMediaPlayer;

    iget-object v1, v0, Lcom/metamoji/media/ui/UnMediaPlayer;->audioTimer_:Lcom/metamoji/cm/UiTimer;

    new-instance v2, Lcom/metamoji/media/ui/UnMediaPlayer$6$1;

    invoke-direct {v2, p0}, Lcom/metamoji/media/ui/UnMediaPlayer$6$1;-><init>(Lcom/metamoji/media/ui/UnMediaPlayer$6;)V

    const-wide/16 v3, 0x64

    const-wide/16 v5, 0xa

    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/cm/UiTimer;->schedule(Ljava/lang/Runnable;JJ)V

    return-void
.end method
