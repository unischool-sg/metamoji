.class Lcom/metamoji/media/voice/ui/VcPlayerBar$20;
.super Ljava/lang/Object;
.source "VcPlayerBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/voice/ui/VcPlayerBar;->playerWasSeeked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;


# direct methods
.method constructor <init>(Lcom/metamoji/media/voice/ui/VcPlayerBar;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1098
    iput-object p1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$20;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1100
    invoke-static {}, Lcom/metamoji/media/voice/audio/VcPlayer;->getSharedInstance()Lcom/metamoji/media/voice/audio/VcPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcPlayer;->getPlayingStatus()Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    move-result-object v0

    .line 1101
    sget-object v1, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;->PLAYING:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    .line 1104
    iget-object v2, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$20;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    if-ne v0, v1, :cond_0

    .line 1102
    invoke-virtual {v2}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->startUpdateCurrentTimeTimer()V

    return-void

    .line 1104
    :cond_0
    invoke-virtual {v2}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->updateCurrentTime()V

    return-void
.end method
