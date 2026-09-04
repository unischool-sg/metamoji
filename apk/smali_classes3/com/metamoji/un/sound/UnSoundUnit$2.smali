.class Lcom/metamoji/un/sound/UnSoundUnit$2;
.super Ljava/lang/Object;
.source "UnSoundUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/sound/UnSoundUnit;->setFocus(Lcom/metamoji/nt/NtFocusOption;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/sound/UnSoundUnit;


# direct methods
.method constructor <init>(Lcom/metamoji/un/sound/UnSoundUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 618
    iput-object p1, p0, Lcom/metamoji/un/sound/UnSoundUnit$2;->this$0:Lcom/metamoji/un/sound/UnSoundUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 621
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnit$2;->this$0:Lcom/metamoji/un/sound/UnSoundUnit;

    invoke-virtual {v0}, Lcom/metamoji/un/sound/UnSoundUnit;->getTicket()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnit$2;->this$0:Lcom/metamoji/un/sound/UnSoundUnit;

    iget-boolean v2, v0, Lcom/metamoji/un/sound/UnSoundUnit;->pauseWhenFocused_:Z

    invoke-virtual {v0, v2}, Lcom/metamoji/un/sound/UnSoundUnit;->play(Z)V

    .line 625
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnit$2;->this$0:Lcom/metamoji/un/sound/UnSoundUnit;

    iput-boolean v1, v0, Lcom/metamoji/un/sound/UnSoundUnit;->pauseWhenFocused_:Z

    return-void

    .line 629
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtUnitStateManager;->sharedInstance()Lcom/metamoji/nt/NtUnitStateManager;

    move-result-object v0

    iget-object v2, p0, Lcom/metamoji/un/sound/UnSoundUnit$2;->this$0:Lcom/metamoji/un/sound/UnSoundUnit;

    invoke-virtual {v2}, Lcom/metamoji/un/sound/UnSoundUnit;->getUnitId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/metamoji/nt/NtUnitStateManager;->isEdittingByOtherUsers(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 630
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnit$2;->this$0:Lcom/metamoji/un/sound/UnSoundUnit;

    invoke-virtual {v0}, Lcom/metamoji/un/sound/UnSoundUnit;->isRecordable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 631
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnit$2;->this$0:Lcom/metamoji/un/sound/UnSoundUnit;

    invoke-virtual {v0}, Lcom/metamoji/un/sound/UnSoundUnit;->record()V

    return-void

    .line 633
    :cond_1
    invoke-static {}, Lcom/metamoji/media/voice/audio/VcRecorder;->getSharedInstance()Lcom/metamoji/media/voice/audio/VcRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcRecorder;->getRecordingStatus()Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;

    move-result-object v0

    sget-object v2, Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;->RECORDING:Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;

    if-ne v0, v2, :cond_2

    .line 635
    sget v0, Lcom/metamoji/noteanytime/R$string;->CANNOT_EXECUTE_IN_RECORDING:I

    new-instance v2, Lcom/metamoji/un/sound/UnSoundUnit$2$1;

    invoke-direct {v2, p0}, Lcom/metamoji/un/sound/UnSoundUnit$2$1;-><init>(Lcom/metamoji/un/sound/UnSoundUnit$2;)V

    invoke-static {v0, v1, v2}, Lcom/metamoji/cm/CmUtils;->confirmDialog(IILandroid/content/DialogInterface$OnClickListener;)V

    return-void

    .line 647
    :cond_2
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/sound/UnSoundUnit$2$2;

    invoke-direct {v1, p0}, Lcom/metamoji/un/sound/UnSoundUnit$2$2;-><init>(Lcom/metamoji/un/sound/UnSoundUnit$2;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method
