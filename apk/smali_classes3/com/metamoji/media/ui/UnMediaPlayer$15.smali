.class Lcom/metamoji/media/ui/UnMediaPlayer$15;
.super Ljava/lang/Object;
.source "UnMediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/ui/UnMediaPlayer;->playerDidFinishToPlay(Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYER_ERROR_STATUS;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/media/ui/UnMediaPlayer;

.field final synthetic val$status:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYER_ERROR_STATUS;


# direct methods
.method constructor <init>(Lcom/metamoji/media/ui/UnMediaPlayer;Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYER_ERROR_STATUS;)V
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

    .line 411
    iput-object p1, p0, Lcom/metamoji/media/ui/UnMediaPlayer$15;->this$0:Lcom/metamoji/media/ui/UnMediaPlayer;

    iput-object p2, p0, Lcom/metamoji/media/ui/UnMediaPlayer$15;->val$status:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYER_ERROR_STATUS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 414
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayer$15;->this$0:Lcom/metamoji/media/ui/UnMediaPlayer;

    invoke-virtual {v0}, Lcom/metamoji/media/ui/UnMediaPlayer;->stopAudioTimer()V

    .line 415
    sget-object v0, Lcom/metamoji/media/ui/UnMediaPlayer$18;->$SwitchMap$com$metamoji$media$voice$audio$VcPlayer$VC_PLAYER_ERROR_STATUS:[I

    iget-object v1, p0, Lcom/metamoji/media/ui/UnMediaPlayer$15;->val$status:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYER_ERROR_STATUS;

    invoke-virtual {v1}, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYER_ERROR_STATUS;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 449
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayer$15;->this$0:Lcom/metamoji/media/ui/UnMediaPlayer;

    invoke-virtual {v0}, Lcom/metamoji/media/ui/UnMediaPlayer;->playerDidPlayToEndTime()V

    return-void

    .line 431
    :cond_0
    invoke-static {}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 432
    sget v0, Lcom/metamoji/noteanytime/R$string;->Voice_Msg_Error_FailedToDownloadMediaFileForOffline:I

    new-instance v1, Lcom/metamoji/media/ui/UnMediaPlayer$15$2;

    invoke-direct {v1, p0}, Lcom/metamoji/media/ui/UnMediaPlayer$15$2;-><init>(Lcom/metamoji/media/ui/UnMediaPlayer$15;)V

    invoke-static {v0, v2, v1}, Lcom/metamoji/cm/CmUtils;->confirmDialog(IILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 439
    :cond_1
    sget v0, Lcom/metamoji/noteanytime/R$string;->Voice_Msg_Error_FailedToPlay:I

    new-instance v1, Lcom/metamoji/media/ui/UnMediaPlayer$15$3;

    invoke-direct {v1, p0}, Lcom/metamoji/media/ui/UnMediaPlayer$15$3;-><init>(Lcom/metamoji/media/ui/UnMediaPlayer$15;)V

    invoke-static {v0, v2, v1}, Lcom/metamoji/cm/CmUtils;->confirmDialog(IILandroid/content/DialogInterface$OnClickListener;)V

    .line 446
    :goto_0
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayer$15;->this$0:Lcom/metamoji/media/ui/UnMediaPlayer;

    invoke-virtual {v0}, Lcom/metamoji/media/ui/UnMediaPlayer;->playerDidPlayToEndTime()V

    return-void

    .line 417
    :cond_2
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v0

    .line 418
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v0

    .line 419
    iget-boolean v0, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->isOnPremise:Z

    if-eqz v0, :cond_3

    .line 420
    sget v0, Lcom/metamoji/noteanytime/R$string;->SCHOOL_SOUND_NOT_YET_UPLOADED_ALERT_ON_PREMISE:I

    new-instance v1, Lcom/metamoji/media/ui/UnMediaPlayer$15$1;

    invoke-direct {v1, p0}, Lcom/metamoji/media/ui/UnMediaPlayer$15$1;-><init>(Lcom/metamoji/media/ui/UnMediaPlayer$15;)V

    invoke-static {v0, v2, v1}, Lcom/metamoji/cm/CmUtils;->confirmDialog(IILandroid/content/DialogInterface$OnClickListener;)V

    .line 426
    :cond_3
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayer$15;->this$0:Lcom/metamoji/media/ui/UnMediaPlayer;

    invoke-virtual {v0}, Lcom/metamoji/media/ui/UnMediaPlayer;->playerDidPlayToEndTime()V

    return-void
.end method
