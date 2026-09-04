.class Lcom/metamoji/media/voice/ui/VcPlayerBar$31;
.super Ljava/lang/Object;
.source "VcPlayerBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/voice/ui/VcPlayerBar;->updateEditable(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

.field final synthetic val$canEdit:Z


# direct methods
.method constructor <init>(Lcom/metamoji/media/voice/ui/VcPlayerBar;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1817
    iput-object p1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$31;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    iput-boolean p2, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$31;->val$canEdit:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1819
    iget-boolean v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$31;->val$canEdit:Z

    if-nez v0, :cond_0

    .line 1820
    invoke-static {}, Lcom/metamoji/media/voice/audio/VcRecorder;->getSharedInstance()Lcom/metamoji/media/voice/audio/VcRecorder;

    move-result-object v0

    .line 1821
    sget-object v1, Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;->RECORDING:Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;

    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcRecorder;->getRecordingStatus()Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;

    move-result-object v0

    if-ne v1, v0, :cond_0

    .line 1822
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$31;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_VC_STOP_RECORDING:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v1}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->execCommand(Lcom/metamoji/nt/NtCommand;)V

    .line 1825
    :cond_0
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$31;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    iget-object v0, v0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_addIndexButton:Lcom/metamoji/ui/common/UiImageButton;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 1826
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$31;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    iget-object v2, v0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_addIndexButton:Lcom/metamoji/ui/common/UiImageButton;

    iget-boolean v3, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$31;->val$canEdit:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$31;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    invoke-virtual {v3}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->isPlayingRange()Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v2, v3}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->setEnabledAndGrayout(Landroid/view/View;Z)V

    .line 1829
    :cond_2
    iget-boolean v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$31;->val$canEdit:Z

    if-nez v0, :cond_3

    .line 1830
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$31;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    invoke-virtual {v0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->isEditing()Z

    move-result v0

    if-ne v0, v1, :cond_3

    .line 1831
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$31;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    invoke-virtual {v0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->handleEditTrackButtonTouchUp()V

    .line 1834
    :cond_3
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$31;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    iget-object v0, v0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_listener:Lcom/metamoji/media/voice/ui/VcPlayerBar$EventListener;

    if-eqz v0, :cond_4

    .line 1835
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$31;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    iget-object v0, v0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_listener:Lcom/metamoji/media/voice/ui/VcPlayerBar$EventListener;

    iget-boolean v1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$31;->val$canEdit:Z

    iget-object v2, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$31;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    invoke-static {v2}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->-$$Nest$fgetm_isEditing(Lcom/metamoji/media/voice/ui/VcPlayerBar;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/metamoji/media/voice/ui/VcPlayerBar$EventListener;->onChangedEditable(ZZ)V

    .line 1837
    :cond_4
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$31;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    iget-object v0, v0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_waveViewCore:Lcom/metamoji/media/voice/ui/VcWaveView;

    if-eqz v0, :cond_5

    .line 1838
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$31;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    iget-object v0, v0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_waveViewCore:Lcom/metamoji/media/voice/ui/VcWaveView;

    iget-boolean v1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$31;->val$canEdit:Z

    invoke-virtual {v0, v1}, Lcom/metamoji/media/voice/ui/VcWaveView;->updateEditable(Z)V

    :cond_5
    return-void
.end method
