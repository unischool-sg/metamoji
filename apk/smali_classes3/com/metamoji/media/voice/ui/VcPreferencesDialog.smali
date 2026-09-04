.class public Lcom/metamoji/media/voice/ui/VcPreferencesDialog;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "VcPreferencesDialog.java"


# static fields
.field static SAMPLING_RATE_BEST:F = 44100.0f

.field static SAMPLING_RATE_HIGH:F = 22050.0f

.field static SAMPLING_RATE_STANDARD:F = 11025.0f


# instance fields
.field m_quality:F

.field m_qualityRadioGroup:Lcom/metamoji/ui/common/UiRadioGroup;

.field m_removeAllPlaylistButton:Lcom/metamoji/ui/common/UiButton;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 49
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    .line 50
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 51
    const-string v1, "VcRecordingSamplingRate"

    const v2, 0x462c4400    # 11025.0f

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtUserDefaults;->getFloatValue(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/metamoji/media/voice/ui/VcPreferencesDialog;->m_quality:F

    return-void
.end method


# virtual methods
.method getQuality()F
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPreferencesDialog;->m_qualityRadioGroup:Lcom/metamoji/ui/common/UiRadioGroup;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiRadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    .line 142
    sget v1, Lcom/metamoji/noteanytime/R$id;->recording_quality_middle:I

    if-ne v0, v1, :cond_0

    .line 143
    sget v0, Lcom/metamoji/media/voice/ui/VcPreferencesDialog;->SAMPLING_RATE_HIGH:F

    return v0

    .line 144
    :cond_0
    sget v1, Lcom/metamoji/noteanytime/R$id;->recording_quality_high:I

    if-ne v0, v1, :cond_1

    .line 145
    sget v0, Lcom/metamoji/media/voice/ui/VcPreferencesDialog;->SAMPLING_RATE_BEST:F

    return v0

    .line 146
    :cond_1
    sget v1, Lcom/metamoji/noteanytime/R$id;->recording_quality_standard:I

    if-ne v0, v1, :cond_2

    .line 147
    sget v0, Lcom/metamoji/media/voice/ui/VcPreferencesDialog;->SAMPLING_RATE_STANDARD:F

    return v0

    .line 149
    :cond_2
    sget v0, Lcom/metamoji/media/voice/ui/VcPreferencesDialog;->SAMPLING_RATE_STANDARD:F

    return v0
.end method

.method handleRemoveAllPlaylistButtonTap()V
    .locals 4

    .line 164
    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcPreferencesDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->createAlertDialog(Landroidx/fragment/app/FragmentActivity;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 165
    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcPreferencesDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 166
    sget v2, Lcom/metamoji/noteanytime/R$string;->Voice_DeleteAllPlayList:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 167
    sget v2, Lcom/metamoji/noteanytime/R$string;->VOICE_DELETE_ALL_PLAYLIST_ALERT:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 168
    sget v2, Lcom/metamoji/noteanytime/R$string;->Msg_YES:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/metamoji/media/voice/ui/VcPreferencesDialog$3;

    invoke-direct {v3, p0}, Lcom/metamoji/media/voice/ui/VcPreferencesDialog$3;-><init>(Lcom/metamoji/media/voice/ui/VcPreferencesDialog;)V

    invoke-virtual {v0, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 175
    sget v2, Lcom/metamoji/noteanytime/R$string;->Msg_NO:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 176
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 58
    invoke-static {}, Lcom/metamoji/media/voice/audio/VcRecorder;->getSharedInstance()Lcom/metamoji/media/voice/audio/VcRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcRecorder;->getRecordingStatus()Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;

    move-result-object v0

    .line 60
    sget v1, Lcom/metamoji/noteanytime/R$layout;->dialog_voice_preferences:I

    iput v1, p0, Lcom/metamoji/media/voice/ui/VcPreferencesDialog;->mViewId:I

    .line 61
    sget v1, Lcom/metamoji/noteanytime/R$string;->Voice_Settings_Title:I

    iput v1, p0, Lcom/metamoji/media/voice/ui/VcPreferencesDialog;->mTitleId:I

    .line 63
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 66
    sget p2, Lcom/metamoji/noteanytime/R$id;->recording_quality:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiRadioGroup;

    iput-object p2, p0, Lcom/metamoji/media/voice/ui/VcPreferencesDialog;->m_qualityRadioGroup:Lcom/metamoji/ui/common/UiRadioGroup;

    .line 67
    iget p2, p0, Lcom/metamoji/media/voice/ui/VcPreferencesDialog;->m_quality:F

    invoke-virtual {p0, p2}, Lcom/metamoji/media/voice/ui/VcPreferencesDialog;->setQuality(F)V

    .line 70
    sget p2, Lcom/metamoji/noteanytime/R$id;->delete_all_playlist:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButton;

    iput-object p2, p0, Lcom/metamoji/media/voice/ui/VcPreferencesDialog;->m_removeAllPlaylistButton:Lcom/metamoji/ui/common/UiButton;

    .line 71
    new-instance p3, Lcom/metamoji/media/voice/ui/VcPreferencesDialog$1;

    invoke-direct {p3, p0}, Lcom/metamoji/media/voice/ui/VcPreferencesDialog$1;-><init>(Lcom/metamoji/media/voice/ui/VcPreferencesDialog;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    invoke-static {}, Lcom/metamoji/media/MediaUtil;->isOnPremise()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 79
    sget p2, Lcom/metamoji/noteanytime/R$id;->upload_files_label:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiTextView;

    .line 80
    sget p3, Lcom/metamoji/noteanytime/R$string;->SystemOption_DigitalCabinet_OnPremise:I

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiTextView;->setText(I)V

    .line 82
    :cond_0
    sget p2, Lcom/metamoji/noteanytime/R$id;->upload_files:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 83
    invoke-static {}, Lcom/metamoji/media/MediaUtil;->processInhibitMediaServerUploadedFiles()Z

    move-result p3

    if-eqz p3, :cond_1

    const/16 p3, 0x8

    .line 85
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 86
    sget v1, Lcom/metamoji/noteanytime/R$id;->upload_files_label:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 87
    sget v1, Lcom/metamoji/noteanytime/R$id;->upload_files_space:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 89
    :cond_1
    new-instance p3, Lcom/metamoji/media/voice/ui/VcPreferencesDialog$2;

    invoke-direct {p3, p0}, Lcom/metamoji/media/voice/ui/VcPreferencesDialog$2;-><init>(Lcom/metamoji/media/voice/ui/VcPreferencesDialog;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    :goto_0
    sget-object p3, Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;->RECORDING:Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;

    const/4 v1, 0x0

    if-ne v0, p3, :cond_2

    .line 102
    iget-object p3, p0, Lcom/metamoji/media/voice/ui/VcPreferencesDialog;->m_qualityRadioGroup:Lcom/metamoji/ui/common/UiRadioGroup;

    invoke-virtual {p3, v1}, Lcom/metamoji/ui/common/UiRadioGroup;->setEnabled(Z)V

    .line 103
    iget-object p3, p0, Lcom/metamoji/media/voice/ui/VcPreferencesDialog;->m_removeAllPlaylistButton:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {p3, v1}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    if-eqz p2, :cond_2

    .line 105
    invoke-virtual {p2, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 109
    :cond_2
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/metamoji/forSchool/ScSchoolManager;->isReadOnly()Z

    move-result p3

    if-eqz p3, :cond_3

    if-eqz p2, :cond_3

    .line 111
    invoke-virtual {p2, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 114
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcPreferencesDialog;->updateRemoveAllPlaylistButtonEnable()V

    .line 116
    invoke-virtual {p0, p1}, Lcom/metamoji/media/voice/ui/VcPreferencesDialog;->restoreInstanceStateIfAvailable(Landroid/view/View;)Z

    return-object p1
.end method

.method public onDone(Landroid/view/View;)V
    .locals 4

    .line 122
    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcPreferencesDialog;->getQuality()F

    move-result v0

    .line 124
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v1

    .line 125
    const-string v2, "VcRecordingSamplingRate"

    invoke-virtual {v1, v2, v0}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;F)V

    .line 127
    invoke-static {}, Lcom/metamoji/media/voice/audio/VcRecorder;->getSharedInstance()Lcom/metamoji/media/voice/audio/VcRecorder;

    move-result-object v1

    float-to-double v2, v0

    .line 128
    invoke-virtual {v1, v2, v3}, Lcom/metamoji/media/voice/audio/VcRecorder;->setSamplingRate(D)V

    .line 130
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onDone(Landroid/view/View;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 135
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 136
    sget-object v0, Lcom/metamoji/media/voice/ui/VcPreferencesDialog;->Key_ReconstructDialogFlag:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 137
    const-string v0, "VcRecordingSamplingRate"

    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcPreferencesDialog;->getQuality()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-void
.end method

.method setQuality(F)V
    .locals 1

    .line 154
    sget v0, Lcom/metamoji/media/voice/ui/VcPreferencesDialog;->SAMPLING_RATE_BEST:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 155
    iget-object p1, p0, Lcom/metamoji/media/voice/ui/VcPreferencesDialog;->m_qualityRadioGroup:Lcom/metamoji/ui/common/UiRadioGroup;

    sget v0, Lcom/metamoji/noteanytime/R$id;->recording_quality_high:I

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/common/UiRadioGroup;->check(I)V

    return-void

    .line 156
    :cond_0
    sget v0, Lcom/metamoji/media/voice/ui/VcPreferencesDialog;->SAMPLING_RATE_HIGH:F

    cmpl-float p1, p1, v0

    .line 159
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPreferencesDialog;->m_qualityRadioGroup:Lcom/metamoji/ui/common/UiRadioGroup;

    if-nez p1, :cond_1

    .line 157
    sget p1, Lcom/metamoji/noteanytime/R$id;->recording_quality_middle:I

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/common/UiRadioGroup;->check(I)V

    return-void

    .line 159
    :cond_1
    sget p1, Lcom/metamoji/noteanytime/R$id;->recording_quality_standard:I

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/common/UiRadioGroup;->check(I)V

    return-void
.end method

.method updateRemoveAllPlaylistButtonEnable()V
    .locals 3

    .line 180
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 181
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/nt/NtDocument;->getRecordingsManager()Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    move-result-object v1

    .line 182
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    .line 183
    invoke-virtual {v1}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->hasTicket()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 184
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPreferencesDialog;->m_removeAllPlaylistButton:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    goto :goto_0

    .line 185
    :cond_0
    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_VC_START_RECORDING:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtCommandManager;->isCommandEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v0

    .line 188
    iget-object v1, p0, Lcom/metamoji/media/voice/ui/VcPreferencesDialog;->m_removeAllPlaylistButton:Lcom/metamoji/ui/common/UiButton;

    if-nez v0, :cond_1

    .line 186
    invoke-virtual {v1, v2}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 188
    invoke-virtual {v1, v0}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    .line 192
    :goto_0
    invoke-static {}, Lcom/metamoji/media/voice/audio/VcRecorder;->getSharedInstance()Lcom/metamoji/media/voice/audio/VcRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcRecorder;->getRecordingStatus()Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;

    move-result-object v0

    .line 193
    sget-object v1, Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;->RECORDING:Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;

    if-ne v0, v1, :cond_2

    .line 194
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPreferencesDialog;->m_removeAllPlaylistButton:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    :cond_2
    return-void
.end method
