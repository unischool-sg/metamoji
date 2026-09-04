.class Lcom/metamoji/un/sound/UnSoundUnitRecorder$13;
.super Ljava/lang/Object;
.source "UnSoundUnitRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/sound/UnSoundUnitRecorder;->playerDidFinishToPlay(Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYER_ERROR_STATUS;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

.field final synthetic val$status:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYER_ERROR_STATUS;


# direct methods
.method constructor <init>(Lcom/metamoji/un/sound/UnSoundUnitRecorder;Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYER_ERROR_STATUS;)V
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

    .line 519
    iput-object p1, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder$13;->this$0:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

    iput-object p2, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder$13;->val$status:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYER_ERROR_STATUS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 522
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder$13;->this$0:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

    invoke-virtual {v0}, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->stopAudioTimer()V

    .line 523
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    .line 524
    sget-object v0, Lcom/metamoji/un/sound/UnSoundUnitRecorder$18;->$SwitchMap$com$metamoji$media$voice$audio$VcPlayer$VC_PLAYER_ERROR_STATUS:[I

    iget-object v1, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder$13;->val$status:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYER_ERROR_STATUS;

    invoke-virtual {v1}, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYER_ERROR_STATUS;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 526
    :cond_0
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v0

    .line 527
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v0

    .line 528
    iget-boolean v0, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->isOnPremise:Z

    if-eqz v0, :cond_1

    .line 529
    sget v0, Lcom/metamoji/noteanytime/R$string;->SCHOOL_SOUND_NOT_YET_UPLOADED_ALERT_ON_PREMISE:I

    new-instance v1, Lcom/metamoji/un/sound/UnSoundUnitRecorder$13$1;

    invoke-direct {v1, p0}, Lcom/metamoji/un/sound/UnSoundUnitRecorder$13$1;-><init>(Lcom/metamoji/un/sound/UnSoundUnitRecorder$13;)V

    invoke-static {v0, v2, v1}, Lcom/metamoji/cm/CmUtils;->confirmDialog(IILandroid/content/DialogInterface$OnClickListener;)V

    .line 537
    :cond_1
    invoke-static {}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 538
    sget v0, Lcom/metamoji/noteanytime/R$string;->Voice_Msg_Error_FailedToDownloadMediaFileForOffline:I

    new-instance v1, Lcom/metamoji/un/sound/UnSoundUnitRecorder$13$2;

    invoke-direct {v1, p0}, Lcom/metamoji/un/sound/UnSoundUnitRecorder$13$2;-><init>(Lcom/metamoji/un/sound/UnSoundUnitRecorder$13;)V

    invoke-static {v0, v2, v1}, Lcom/metamoji/cm/CmUtils;->confirmDialog(IILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 545
    :cond_2
    sget v0, Lcom/metamoji/noteanytime/R$string;->Voice_Msg_Error_FailedToPlay:I

    new-instance v1, Lcom/metamoji/un/sound/UnSoundUnitRecorder$13$3;

    invoke-direct {v1, p0}, Lcom/metamoji/un/sound/UnSoundUnitRecorder$13$3;-><init>(Lcom/metamoji/un/sound/UnSoundUnitRecorder$13;)V

    invoke-static {v0, v2, v1}, Lcom/metamoji/cm/CmUtils;->confirmDialog(IILandroid/content/DialogInterface$OnClickListener;)V

    .line 553
    :goto_0
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitRecorder$13;->this$0:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

    invoke-virtual {v0}, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->playerDidPlayToEndTime()V

    return-void
.end method
