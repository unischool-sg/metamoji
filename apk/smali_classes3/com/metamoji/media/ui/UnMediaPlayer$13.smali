.class Lcom/metamoji/media/ui/UnMediaPlayer$13;
.super Ljava/lang/Object;
.source "UnMediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/ui/UnMediaPlayer;->playerWasReadyToPlay()V
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

    .line 380
    iput-object p1, p0, Lcom/metamoji/media/ui/UnMediaPlayer$13;->this$0:Lcom/metamoji/media/ui/UnMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayer$13;->this$0:Lcom/metamoji/media/ui/UnMediaPlayer;

    iget-object v0, v0, Lcom/metamoji/media/ui/UnMediaPlayer;->overlayView_:Lcom/metamoji/media/ui/UnMediaOverlayView;

    invoke-virtual {v0}, Lcom/metamoji/media/ui/UnMediaOverlayView;->isVisibleGuardView()Z

    move-result v0

    if-nez v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayer$13;->this$0:Lcom/metamoji/media/ui/UnMediaPlayer;

    iget-object v0, v0, Lcom/metamoji/media/ui/UnMediaPlayer;->overlayView_:Lcom/metamoji/media/ui/UnMediaOverlayView;

    invoke-virtual {v0}, Lcom/metamoji/media/ui/UnMediaOverlayView;->show()Z

    :cond_0
    return-void
.end method
