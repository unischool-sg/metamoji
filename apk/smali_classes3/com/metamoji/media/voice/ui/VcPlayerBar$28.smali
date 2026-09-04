.class Lcom/metamoji/media/voice/ui/VcPlayerBar$28;
.super Ljava/lang/Object;
.source "VcPlayerBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/voice/ui/VcPlayerBar;->processSelectCommand(Lcom/metamoji/nt/NtCommand;I)Z
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

    .line 1554
    iput-object p1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$28;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1556
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$28;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    invoke-virtual {v0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->updateTrackTable()V

    .line 1557
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$28;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->updateWaveView(Z)V

    .line 1558
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$28;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    invoke-virtual {v0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->updateToolBar()V

    return-void
.end method
