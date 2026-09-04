.class public Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "NsCollaboSettingsDialog.java"


# static fields
.field static s_action:Lcom/metamoji/ns/INsCollaboAction;


# instance fields
.field public m_action:Lcom/metamoji/ns/INsCollaboAction;

.field m_dispLoginMessageSwitch:Lcom/metamoji/ui/common/UiSwitch;

.field m_dispMemberInOutSwitch:Lcom/metamoji/ui/common/UiSwitch;

.field m_dispPrivateModeTypeSwitch:Lcom/metamoji/ui/common/UiSwitch;

.field public m_inputNickName:Z

.field public m_isStartup:Z

.field m_nickNameEdit:Lcom/metamoji/ui/common/UiEditText;

.field m_openInPrivateModeSwitch:Lcom/metamoji/ui/common/UiSwitch;

.field m_saveDispLoginMessageSwitch:Ljava/lang/Boolean;

.field m_saveDispMemberInOutSwitch:Ljava/lang/Boolean;

.field m_saveDispPrivateModeTypeSwitch:Ljava/lang/Boolean;

.field m_saveNickName:Ljava/lang/String;

.field m_saveOpenInPrivateModeSwitch:Ljava/lang/Boolean;

.field m_saveSleepSwitch:Ljava/lang/Boolean;

.field m_sleepSwitch:Lcom/metamoji/ui/common/UiSwitch;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 74
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->m_action:Lcom/metamoji/ns/INsCollaboAction;

    const/4 v1, 0x0

    .line 65
    iput-boolean v1, p0, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->m_isStartup:Z

    const/4 v1, 0x1

    .line 66
    iput-boolean v1, p0, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->m_inputNickName:Z

    .line 75
    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->m_saveNickName:Ljava/lang/String;

    .line 76
    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->m_saveDispMemberInOutSwitch:Ljava/lang/Boolean;

    .line 77
    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->m_saveDispLoginMessageSwitch:Ljava/lang/Boolean;

    .line 78
    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->m_saveDispPrivateModeTypeSwitch:Ljava/lang/Boolean;

    .line 79
    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->m_saveSleepSwitch:Ljava/lang/Boolean;

    .line 80
    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->m_saveOpenInPrivateModeSwitch:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method handlePolicyButtonTap()V
    .locals 4

    .line 439
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string/jumbo v2, "share_EULA"

    sget v3, Lcom/metamoji/noteanytime/R$string;->Share_EULA:I

    invoke-static {v0, v1, v2, v3}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils;->jumpURL(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;I)V

    return-void
.end method

.method handlePrivacyButtonTap()V
    .locals 4

    .line 446
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "privacy"

    sget v3, Lcom/metamoji/noteanytime/R$string;->Cabinet_User_Privacy:I

    invoke-static {v0, v1, v2, v3}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils;->jumpURL(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;I)V

    return-void
.end method

.method handleProxyButtonTap()V
    .locals 2

    .line 431
    new-instance v0, Lcom/metamoji/ns/ui/NsCollaboProxySettingsDialog;

    invoke-direct {v0}, Lcom/metamoji/ns/ui/NsCollaboProxySettingsDialog;-><init>()V

    .line 432
    const-string v1, "NsCollaboProxySettingsDialog"

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/ui/NsCollaboProxySettingsDialog;->safeShow(Ljava/lang/String;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    .line 85
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_collabo_settings:I

    iput v0, p0, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->mViewId:I

    .line 86
    iget-boolean v0, p0, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->m_isStartup:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/metamoji/noteanytime/R$string;->ShareSettingsDlg_Title_For_Init:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$string;->ShareSettingsDlg_Title:I

    :goto_0
    iput v0, p0, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->mTitleId:I

    if-eqz p3, :cond_1

    .line 90
    const-string v0, "m_isStartup"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->m_isStartup:Z

    .line 91
    const-string v0, "m_inputNickName"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->m_inputNickName:Z

    .line 92
    const-string v0, "m_saveNickName"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->m_saveNickName:Ljava/lang/String;

    .line 94
    sget-object v0, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->s_action:Lcom/metamoji/ns/INsCollaboAction;

    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->m_action:Lcom/metamoji/ns/INsCollaboAction;

    :cond_1
    const/4 v0, 0x0

    .line 96
    sput-object v0, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->s_action:Lcom/metamoji/ns/INsCollaboAction;

    const/4 v1, 0x0

    .line 100
    iput-boolean v1, p0, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->m_inputNickName:Z

    .line 103
    iget-boolean v2, p0, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->m_isStartup:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 105
    iput-boolean v1, p0, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->mCancel:Z

    .line 106
    iput-boolean v1, p0, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->mDone:Z

    .line 108
    invoke-virtual {p0, v3}, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->setModal(Z)V

    .line 110
    invoke-virtual {p0, v1}, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->setCancelable(Z)V

    .line 113
    invoke-virtual {p0, v3}, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->setCentering(Z)V

    goto :goto_1

    .line 117
    :cond_2
    invoke-static {}, Lcom/metamoji/nt/notify/NtSysInfoManager;->updateStateAsync()V

    .line 120
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 123
    iget-boolean p2, p0, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->m_isStartup:Z

    if-nez p2, :cond_3

    if-eqz p3, :cond_3

    return-object p1

    :cond_3
    if-nez p2, :cond_4

    .line 129
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/4 p3, 0x3

    invoke-virtual {p2, p3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 133
    :cond_4
    sget p2, Lcom/metamoji/noteanytime/R$id;->startupGuidance:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 136
    sget p3, Lcom/metamoji/noteanytime/R$id;->nicknameLabel:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 137
    sget v2, Lcom/metamoji/noteanytime/R$id;->nickname:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ui/common/UiEditText;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->m_nickNameEdit:Lcom/metamoji/ui/common/UiEditText;

    .line 140
    sget v2, Lcom/metamoji/noteanytime/R$id;->startupLayout:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 142
    sget v4, Lcom/metamoji/noteanytime/R$id;->startupEulaBtn:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/metamoji/ui/common/UiButton;

    .line 143
    new-instance v5, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog$1;

    invoke-direct {v5, p0}, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog$1;-><init>(Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;)V

    invoke-virtual {v4, v5}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    sget v4, Lcom/metamoji/noteanytime/R$id;->startupPrivacyBtn:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/metamoji/ui/common/UiButton;

    .line 151
    new-instance v5, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog$2;

    invoke-direct {v5, p0}, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog$2;-><init>(Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;)V

    invoke-virtual {v4, v5}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    sget v4, Lcom/metamoji/noteanytime/R$id;->entryBtn:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 159
    new-instance v5, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog$3;

    invoke-direct {v5, p0}, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog$3;-><init>(Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    sget v5, Lcom/metamoji/noteanytime/R$id;->systemOptionLayout:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 169
    sget v6, Lcom/metamoji/noteanytime/R$id;->dispMemberInOutSwitch:I

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/metamoji/ui/common/UiSwitch;

    iput-object v6, p0, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->m_dispMemberInOutSwitch:Lcom/metamoji/ui/common/UiSwitch;

    .line 172
    sget v6, Lcom/metamoji/noteanytime/R$id;->dispMemberInOut:I

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    if-eqz v6, :cond_5

    .line 174
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 178
    :cond_5
    sget v6, Lcom/metamoji/noteanytime/R$id;->dispLoginMessageSwitch:I

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/metamoji/ui/common/UiSwitch;

    iput-object v6, p0, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->m_dispLoginMessageSwitch:Lcom/metamoji/ui/common/UiSwitch;

    .line 180
    sget v6, Lcom/metamoji/noteanytime/R$id;->dispPrivateModeTypeSwitch:I

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/metamoji/ui/common/UiSwitch;

    iput-object v6, p0, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->m_dispPrivateModeTypeSwitch:Lcom/metamoji/ui/common/UiSwitch;

    .line 183
    sget v6, Lcom/metamoji/noteanytime/R$id;->dispPrivateModeType:I

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 185
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 189
    :cond_6
    sget v6, Lcom/metamoji/noteanytime/R$id;->sleepSwitch:I

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/metamoji/ui/common/UiSwitch;

    iput-object v6, p0, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->m_sleepSwitch:Lcom/metamoji/ui/common/UiSwitch;

    .line 191
    sget v6, Lcom/metamoji/noteanytime/R$id;->openInPrivateModeSwitch:I

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/metamoji/ui/common/UiSwitch;

    iput-object v6, p0, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->m_openInPrivateModeSwitch:Lcom/metamoji/ui/common/UiSwitch;

    .line 194
    sget v6, Lcom/metamoji/noteanytime/R$id;->openInPrivateModeLayout:I

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 196
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 201
    :cond_7
    sget v6, Lcom/metamoji/noteanytime/R$id;->proxyBtn:I

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/metamoji/ui/common/UiButton;

    .line 202
    new-instance v8, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog$4;

    invoke-direct {v8, p0}, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog$4;-><init>(Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;)V

    invoke-virtual {v6, v8}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    sget v6, Lcom/metamoji/noteanytime/R$id;->eulaBtn:I

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/metamoji/ui/common/UiButton;

    .line 211
    new-instance v8, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog$5;

    invoke-direct {v8, p0}, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog$5;-><init>(Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;)V

    invoke-virtual {v6, v8}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    sget v8, Lcom/metamoji/noteanytime/R$id;->privacyBtn:I

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/metamoji/ui/common/UiButton;

    .line 219
    new-instance v9, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog$6;

    invoke-direct {v9, p0}, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog$6;-><init>(Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;)V

    invoke-virtual {v8, v9}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    iget-boolean v9, p0, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->m_isStartup:Z

    if-eqz v9, :cond_a

    .line 228
    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 229
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 230
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 231
    iget-boolean v1, p0, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->m_inputNickName:Z

    if-eqz v1, :cond_8

    sget v1, Lcom/metamoji/noteanytime/R$string;->ShareSettingsDlg_NickName_Guidance:I

    goto :goto_2

    :cond_8
    sget v1, Lcom/metamoji/noteanytime/R$string;->Share_EULA_Update:I

    :goto_2
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 232
    iget-boolean p2, p0, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->m_inputNickName:Z

    if-eqz p2, :cond_9

    sget p2, Lcom/metamoji/noteanytime/R$string;->Cabinet_User_Entry_Button:I

    goto :goto_3

    :cond_9
    sget p2, Lcom/metamoji/noteanytime/R$string;->Share_Policy_Btn_Confirm:I

    :goto_3
    invoke-virtual {v4, p2}, Landroid/widget/Button;->setText(I)V

    goto :goto_8

    .line 235
    :cond_a
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object p2

    .line 236
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->m_dispMemberInOutSwitch:Lcom/metamoji/ui/common/UiSwitch;

    iget-object v4, p0, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->m_saveDispMemberInOutSwitch:Ljava/lang/Boolean;

    if-eqz v4, :cond_b

    .line 237
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_4

    .line 238
    :cond_b
    const-string v4, "CollaboDispMemberInOut"

    invoke-virtual {p2, v4, v1}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result v1

    .line 236
    :goto_4
    invoke-virtual {v2, v1}, Lcom/metamoji/ui/common/UiSwitch;->setChecked(Z)V

    .line 239
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->m_dispLoginMessageSwitch:Lcom/metamoji/ui/common/UiSwitch;

    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->m_saveDispLoginMessageSwitch:Ljava/lang/Boolean;

    if-eqz v2, :cond_c

    .line 240
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_5

    .line 241
    :cond_c
    const-string v2, "CollaboDispLoginMessage"

    invoke-virtual {p2, v2, v3}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result v2

    .line 239
    :goto_5
    invoke-virtual {v1, v2}, Lcom/metamoji/ui/common/UiSwitch;->setChecked(Z)V

    .line 242
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->m_dispPrivateModeTypeSwitch:Lcom/metamoji/ui/common/UiSwitch;

    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->m_saveDispPrivateModeTypeSwitch:Ljava/lang/Boolean;

    if-eqz v2, :cond_d

    .line 243
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_6

    .line 244
    :cond_d
    const-string v2, "CollaboDispPrivateModeType"

    invoke-virtual {p2, v2, v3}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result v2

    .line 242
    :goto_6
    invoke-virtual {v1, v2}, Lcom/metamoji/ui/common/UiSwitch;->setChecked(Z)V

    .line 245
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->m_sleepSwitch:Lcom/metamoji/ui/common/UiSwitch;

    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->m_saveSleepSwitch:Ljava/lang/Boolean;

    if-eqz v2, :cond_e

    .line 246
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_7

    .line 247
    :cond_e
    const-string v2, "MMJCollaboSleepMode"

    invoke-virtual {p2, v2, v3}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result p2

    .line 245
    :goto_7
    invoke-virtual {v1, p2}, Lcom/metamoji/ui/common/UiSwitch;->setChecked(Z)V

    .line 254
    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->m_saveDispMemberInOutSwitch:Ljava/lang/Boolean;

    .line 255
    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->m_saveDispLoginMessageSwitch:Ljava/lang/Boolean;

    .line 256
    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->m_saveDispPrivateModeTypeSwitch:Ljava/lang/Boolean;

    .line 257
    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->m_saveSleepSwitch:Ljava/lang/Boolean;

    .line 258
    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->m_saveOpenInPrivateModeSwitch:Ljava/lang/Boolean;

    .line 261
    :goto_8
    iget-boolean p2, p0, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->m_inputNickName:Z

    if-eqz p2, :cond_14

    .line 262
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->m_saveNickName:Ljava/lang/String;

    if-eqz p2, :cond_f

    .line 264
    iget-object p3, p0, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->m_nickNameEdit:Lcom/metamoji/ui/common/UiEditText;

    invoke-virtual {p3, p2}, Lcom/metamoji/ui/common/UiEditText;->setText(Ljava/lang/CharSequence;)V

    .line 265
    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->m_saveNickName:Ljava/lang/String;

    goto :goto_9

    .line 269
    :cond_f
    invoke-static {}, Lcom/metamoji/ns/NsCollaboDeviceInfo;->getInstance()Lcom/metamoji/ns/NsCollaboDeviceInfo;

    move-result-object p2

    .line 270
    invoke-virtual {p2}, Lcom/metamoji/ns/NsCollaboDeviceInfo;->getNickName()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_10

    .line 271
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_13

    .line 273
    :cond_10
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object p3

    invoke-virtual {p3}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object p3

    if-eqz p3, :cond_11

    .line 274
    iget-object v0, p3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->nickname:Ljava/lang/String;

    if-eqz v0, :cond_11

    iget-object v0, p3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->nickname:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_11

    .line 275
    iget-object p2, p3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->nickname:Ljava/lang/String;

    :cond_11
    if-eqz p2, :cond_12

    .line 277
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_13

    .line 279
    :cond_12
    invoke-static {}, Lcom/metamoji/cs/CsCloudServiceContext;->getInstance()Lcom/metamoji/cs/CsCloudServiceContext;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/cs/CsCloudServiceContext;->getDeviceName()Ljava/lang/String;

    move-result-object p2

    :cond_13
    if-eqz p2, :cond_15

    .line 282
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_15

    .line 283
    iget-object p3, p0, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->m_nickNameEdit:Lcom/metamoji/ui/common/UiEditText;

    invoke-virtual {p3, p2}, Lcom/metamoji/ui/common/UiEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 288
    :cond_14
    invoke-virtual {p3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 289
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->m_nickNameEdit:Lcom/metamoji/ui/common/UiEditText;

    invoke-virtual {p2, v7}, Lcom/metamoji/ui/common/UiEditText;->setVisibility(I)V

    .line 295
    :cond_15
    :goto_9
    invoke-virtual {v6, v7}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    .line 297
    invoke-virtual {v8, v7}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    .line 303
    new-instance p2, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog$7;

    invoke-direct {p2, p0}, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog$7;-><init>(Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;)V

    invoke-virtual {p0, p2}, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->setOnClosedListener(Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;)V

    return-object p1
.end method

.method public onDone(Landroid/view/View;)V
    .locals 6

    .line 359
    invoke-static {}, Lcom/metamoji/ns/NsCollaboDeviceInfo;->getInstance()Lcom/metamoji/ns/NsCollaboDeviceInfo;

    move-result-object v0

    .line 362
    iget-boolean v1, p0, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->m_inputNickName:Z

    if-eqz v1, :cond_3

    .line 363
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->m_nickNameEdit:Lcom/metamoji/ui/common/UiEditText;

    invoke-virtual {v1}, Lcom/metamoji/ui/common/UiEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 364
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 369
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboDeviceInfo;->getNickName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 370
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 371
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/ns/NsCollaboManager;->connectStatus()Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    move-result-object v4

    sget-object v5, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->OFFLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    if-eq v4, v5, :cond_1

    .line 372
    sget v4, Lcom/metamoji/noteanytime/R$string;->ShareSettingsDlg_Msg_NickName_Changed:I

    invoke-static {v4, v3, v2}, Lcom/metamoji/cm/CmUtils;->confirmDialog(IILandroid/content/DialogInterface$OnClickListener;)V

    .line 375
    :cond_1
    invoke-virtual {v0, v1}, Lcom/metamoji/ns/NsCollaboDeviceInfo;->setNickName(Ljava/lang/String;)V

    goto :goto_1

    .line 365
    :cond_2
    :goto_0
    sget p1, Lcom/metamoji/noteanytime/R$string;->ShareSettingsDlg_Msg_No_NickName:I

    invoke-static {p1, v3, v2}, Lcom/metamoji/cm/CmUtils;->confirmDialog(IILandroid/content/DialogInterface$OnClickListener;)V

    return-void

    .line 378
    :cond_3
    :goto_1
    iget-boolean v1, p0, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->m_isStartup:Z

    if-eqz v1, :cond_4

    .line 380
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboDeviceInfo;->getLatestEULAVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/NsCollaboDeviceInfo;->setConfirmEULAVersion(I)V

    goto :goto_2

    .line 383
    :cond_4
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 388
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->m_dispLoginMessageSwitch:Lcom/metamoji/ui/common/UiSwitch;

    invoke-virtual {v1}, Lcom/metamoji/ui/common/UiSwitch;->isChecked()Z

    move-result v1

    const-string v2, "CollaboDispLoginMessage"

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Z)V

    .line 394
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 396
    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboManager;->collaboMode()Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    move-result-object v2

    sget-object v3, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->PRIVATE:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    if-ne v2, v3, :cond_5

    .line 397
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 399
    invoke-virtual {v2}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 401
    invoke-virtual {v2}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 403
    invoke-virtual {v2}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v2

    if-eqz v2, :cond_5

    const/4 v3, 0x1

    .line 405
    invoke-virtual {v2, v3}, Lcom/metamoji/nt/NtPageController;->setLayersColorFaint(Z)V

    .line 413
    :cond_5
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->m_sleepSwitch:Lcom/metamoji/ui/common/UiSwitch;

    invoke-virtual {v2}, Lcom/metamoji/ui/common/UiSwitch;->isChecked()Z

    move-result v2

    const-string v3, "MMJCollaboSleepMode"

    invoke-virtual {v0, v3, v2}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Z)V

    if-eqz v1, :cond_6

    .line 415
    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboManager;->updateIdleTimerDisabled()V

    .line 424
    :cond_6
    :goto_2
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onDone(Landroid/view/View;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 323
    iget-boolean v0, p0, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->m_inputNickName:Z

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->m_nickNameEdit:Lcom/metamoji/ui/common/UiEditText;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->m_saveNickName:Ljava/lang/String;

    .line 327
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->m_isStartup:Z

    if-nez v0, :cond_1

    .line 328
    new-instance v0, Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->m_dispMemberInOutSwitch:Lcom/metamoji/ui/common/UiSwitch;

    invoke-virtual {v1}, Lcom/metamoji/ui/common/UiSwitch;->isChecked()Z

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->m_saveDispMemberInOutSwitch:Ljava/lang/Boolean;

    .line 329
    new-instance v0, Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->m_dispLoginMessageSwitch:Lcom/metamoji/ui/common/UiSwitch;

    invoke-virtual {v1}, Lcom/metamoji/ui/common/UiSwitch;->isChecked()Z

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->m_saveDispLoginMessageSwitch:Ljava/lang/Boolean;

    .line 330
    new-instance v0, Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->m_dispPrivateModeTypeSwitch:Lcom/metamoji/ui/common/UiSwitch;

    invoke-virtual {v1}, Lcom/metamoji/ui/common/UiSwitch;->isChecked()Z

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->m_saveDispPrivateModeTypeSwitch:Ljava/lang/Boolean;

    .line 331
    new-instance v0, Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->m_sleepSwitch:Lcom/metamoji/ui/common/UiSwitch;

    invoke-virtual {v1}, Lcom/metamoji/ui/common/UiSwitch;->isChecked()Z

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->m_saveSleepSwitch:Ljava/lang/Boolean;

    .line 340
    :cond_1
    iget-boolean v0, p0, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->m_isStartup:Z

    if-eqz v0, :cond_2

    .line 341
    sget-object v0, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->Key_ReconstructDialogFlag:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 342
    const-string v0, "m_isStartup"

    iget-boolean v1, p0, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->m_isStartup:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 343
    const-string v0, "m_inputNickName"

    iget-boolean v1, p0, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->m_inputNickName:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 344
    const-string v0, "m_saveNickName"

    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->m_saveNickName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->m_action:Lcom/metamoji/ns/INsCollaboAction;

    sput-object v0, Lcom/metamoji/ns/ui/NsCollaboSettingsDialog;->s_action:Lcom/metamoji/ns/INsCollaboAction;

    .line 349
    :cond_2
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
