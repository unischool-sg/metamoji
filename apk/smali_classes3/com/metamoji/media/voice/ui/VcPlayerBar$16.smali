.class Lcom/metamoji/media/voice/ui/VcPlayerBar$16;
.super Ljava/lang/Object;
.source "VcPlayerBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/voice/ui/VcPlayerBar;->updateTrackButtonSelected()V
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

    .line 1004
    iput-object p1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$16;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1008
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1010
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->isShowPlaylist()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1012
    :goto_0
    iget-object v1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$16;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    iget-object v1, v1, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackButton:Lcom/metamoji/ui/common/UiImageButton;

    invoke-virtual {v1, v0}, Lcom/metamoji/ui/common/UiImageButton;->setSelected(Z)V

    return-void
.end method
