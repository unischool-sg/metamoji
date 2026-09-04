.class Lcom/metamoji/media/voice/ui/VcPlayerBar$18;
.super Ljava/util/TimerTask;
.source "VcPlayerBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/voice/ui/VcPlayerBar;->startUpdateCurrentTimeTimer()V
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

    .line 1058
    iput-object p1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$18;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1060
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$18;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    iget-object v0, v0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_updateTimer:Lcom/metamoji/cm/UiTimer;

    if-eqz v0, :cond_0

    .line 1061
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$18;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    invoke-virtual {v0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->updateCurrentTime()V

    :cond_0
    return-void
.end method
