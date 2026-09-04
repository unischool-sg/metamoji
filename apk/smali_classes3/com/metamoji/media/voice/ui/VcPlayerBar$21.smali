.class Lcom/metamoji/media/voice/ui/VcPlayerBar$21;
.super Ljava/lang/Object;
.source "VcPlayerBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/voice/ui/VcPlayerBar;->playerDidFinishToPlay(Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYER_ERROR_STATUS;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

.field final synthetic val$status:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYER_ERROR_STATUS;


# direct methods
.method constructor <init>(Lcom/metamoji/media/voice/ui/VcPlayerBar;Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYER_ERROR_STATUS;)V
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

    .line 1125
    iput-object p1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$21;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    iput-object p2, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$21;->val$status:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYER_ERROR_STATUS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1127
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$21;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    iget-object v0, v0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_waveViewCore:Lcom/metamoji/media/voice/ui/VcWaveView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/metamoji/media/voice/ui/VcWaveView;->autoScrollCurrentToCenter:Z

    .line 1130
    sget-object v0, Lcom/metamoji/media/voice/ui/VcPlayerBar$37;->$SwitchMap$com$metamoji$media$voice$audio$VcPlayer$VC_PLAYER_ERROR_STATUS:[I

    iget-object v2, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$21;->val$status:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYER_ERROR_STATUS;

    invoke-virtual {v2}, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYER_ERROR_STATUS;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eq v0, v1, :cond_7

    const/4 v4, 0x2

    if-eq v0, v4, :cond_5

    const/4 v4, 0x3

    if-eq v0, v4, :cond_3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    goto/16 :goto_3

    .line 1168
    :cond_0
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$21;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    invoke-virtual {v0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->isPlayingRange()Z

    move-result v0

    .line 1176
    iget-object v2, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$21;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    if-ne v0, v1, :cond_1

    .line 1169
    invoke-virtual {v2}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->resetAutoStopRange()V

    .line 1170
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$21;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    invoke-virtual {v0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->updateCurrentTime()V

    .line 1171
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$21;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    invoke-virtual {v0, v3}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->updateWaveView(Z)V

    .line 1172
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$21;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_VC_PLAY_AND_SHOW_PLAYER_BAR:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v1, v3}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->selectCommand(Lcom/metamoji/nt/NtCommand;I)V

    goto/16 :goto_3

    .line 1176
    :cond_1
    invoke-virtual {v2}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->recordingsController()Lcom/metamoji/media/voice/controller/VcRecordingsController;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 1178
    invoke-virtual {v0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->existNextTicket()Z

    move-result v2

    if-ne v2, v1, :cond_2

    .line 1182
    invoke-virtual {v0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->handlePlayForward()V

    .line 1183
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$21;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_VC_PLAY:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v1}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->execCommand(Lcom/metamoji/nt/NtCommand;)V

    return-void

    .line 1188
    :cond_2
    invoke-virtual {v0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->setFirstRecordingTicket()V

    .line 1189
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$21;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_VC_PLAY_AND_SHOW_PLAYER_BAR:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v1, v3}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->selectCommand(Lcom/metamoji/nt/NtCommand;I)V

    goto :goto_3

    .line 1150
    :cond_3
    invoke-static {}, Lcom/metamoji/media/MediaUtil;->isOnPremise()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1152
    sget v0, Lcom/metamoji/noteanytime/R$string;->SCHOOL_SOUND_NOT_YET_UPLOADED_ALERT_ON_PREMISE:I

    invoke-static {v0, v3, v2}, Lcom/metamoji/cm/CmUtils;->confirmDialog(IILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 1158
    :cond_4
    sget v0, Lcom/metamoji/noteanytime/R$string;->VOICE_NOT_YET_UPLOADED_ALERT:I

    invoke-static {v0, v3, v2}, Lcom/metamoji/cm/CmUtils;->confirmDialog(IILandroid/content/DialogInterface$OnClickListener;)V

    .line 1163
    :goto_0
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$21;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_VC_PLAY_AND_SHOW_PLAYER_BAR:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v1, v3}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->selectCommand(Lcom/metamoji/nt/NtCommand;I)V

    goto :goto_3

    .line 1141
    :cond_5
    invoke-static {}, Lcom/metamoji/media/MediaUtil;->isOnPremise()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1142
    sget v0, Lcom/metamoji/noteanytime/R$string;->Voice_InvalidUrl_OnPremise:I

    invoke-static {v0, v3, v2}, Lcom/metamoji/cm/CmUtils;->confirmDialog(IILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_1

    .line 1144
    :cond_6
    sget v0, Lcom/metamoji/noteanytime/R$string;->Voice_InvalidUrl:I

    invoke-static {v0, v3, v2}, Lcom/metamoji/cm/CmUtils;->confirmDialog(IILandroid/content/DialogInterface$OnClickListener;)V

    .line 1146
    :goto_1
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$21;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_VC_PLAY_AND_SHOW_PLAYER_BAR:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v1, v3}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->selectCommand(Lcom/metamoji/nt/NtCommand;I)V

    goto :goto_3

    .line 1132
    :cond_7
    invoke-static {}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1133
    sget v0, Lcom/metamoji/noteanytime/R$string;->Voice_Msg_Error_FailedToDownloadMediaFileForOffline:I

    invoke-static {v0, v3, v2}, Lcom/metamoji/cm/CmUtils;->confirmDialog(IILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_2

    .line 1135
    :cond_8
    sget v0, Lcom/metamoji/noteanytime/R$string;->Voice_Msg_Error_FailedToPlay:I

    invoke-static {v0, v3, v2}, Lcom/metamoji/cm/CmUtils;->confirmDialog(IILandroid/content/DialogInterface$OnClickListener;)V

    .line 1137
    :goto_2
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$21;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_VC_PLAY_AND_SHOW_PLAYER_BAR:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v1, v3}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->selectCommand(Lcom/metamoji/nt/NtCommand;I)V

    .line 1200
    :cond_9
    :goto_3
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$21;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    invoke-virtual {v0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->updatePlayButtonImage()V

    return-void
.end method
