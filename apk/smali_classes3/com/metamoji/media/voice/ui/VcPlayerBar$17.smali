.class Lcom/metamoji/media/voice/ui/VcPlayerBar$17;
.super Ljava/lang/Object;
.source "VcPlayerBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/voice/ui/VcPlayerBar;->playerStartedToPlay()V
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

    .line 1040
    iput-object p1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$17;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1042
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$17;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    invoke-virtual {v0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->startUpdateCurrentTimeTimer()V

    .line 1043
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$17;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    invoke-virtual {v0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->updatePlayButtonImage()V

    .line 1044
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$17;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_VC_PLAY_AND_SHOW_PLAYER_BAR:Lcom/metamoji/nt/NtCommand;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->selectCommand(Lcom/metamoji/nt/NtCommand;I)V

    return-void
.end method
