.class Lcom/metamoji/media/ui/UnMediaPlayer$4$1;
.super Ljava/lang/Object;
.source "UnMediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/ui/UnMediaPlayer$4;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/media/ui/UnMediaPlayer$4;


# direct methods
.method constructor <init>(Lcom/metamoji/media/ui/UnMediaPlayer$4;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 130
    iput-object p1, p0, Lcom/metamoji/media/ui/UnMediaPlayer$4$1;->this$1:Lcom/metamoji/media/ui/UnMediaPlayer$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayer$4$1;->this$1:Lcom/metamoji/media/ui/UnMediaPlayer$4;

    iget-object v0, v0, Lcom/metamoji/media/ui/UnMediaPlayer$4;->this$0:Lcom/metamoji/media/ui/UnMediaPlayer;

    iget-object v0, v0, Lcom/metamoji/media/ui/UnMediaPlayer;->soundUnit_:Lcom/metamoji/un/sound/UnSoundUnit;

    invoke-virtual {v0}, Lcom/metamoji/un/sound/UnSoundUnit;->getAppFrame()Lcom/metamoji/nt/INtAppFrame;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/nt/INtAppFrame;->requestKillFocus()V

    .line 134
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayer$4$1;->this$1:Lcom/metamoji/media/ui/UnMediaPlayer$4;

    iget-object v0, v0, Lcom/metamoji/media/ui/UnMediaPlayer$4;->this$0:Lcom/metamoji/media/ui/UnMediaPlayer;

    iget-object v0, v0, Lcom/metamoji/media/ui/UnMediaPlayer;->soundUnit_:Lcom/metamoji/un/sound/UnSoundUnit;

    invoke-virtual {v0}, Lcom/metamoji/un/sound/UnSoundUnit;->closePlayer()V

    return-void
.end method
