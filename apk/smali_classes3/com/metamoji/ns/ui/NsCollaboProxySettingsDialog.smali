.class public Lcom/metamoji/ns/ui/NsCollaboProxySettingsDialog;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "NsCollaboProxySettingsDialog.java"


# instance fields
.field m_hostEdit:Lcom/metamoji/ui/common/UiEditText;

.field m_hostLabel:Lcom/metamoji/ui/common/UiTextView;

.field m_passwordEdit:Lcom/metamoji/ui/common/UiEditText;

.field m_passwordLabel:Lcom/metamoji/ui/common/UiTextView;

.field m_portEdit:Lcom/metamoji/ui/common/UiEditText;

.field m_portLabel:Lcom/metamoji/ui/common/UiTextView;

.field m_requireAuthLabel:Lcom/metamoji/ui/common/UiTextView;

.field m_requireAuthSwitch:Lcom/metamoji/ui/common/UiSwitch;

.field m_saveHostEdit:Ljava/lang/String;

.field m_savePasswordEdit:Ljava/lang/String;

.field m_savePortEdit:Ljava/lang/String;

.field m_saveRequireAuthSwitch:Ljava/lang/Boolean;

.field m_saveUseProxySwitch:Ljava/lang/Boolean;

.field m_saveUserNameEdit:Ljava/lang/String;

.field m_useProxySwitch:Lcom/metamoji/ui/common/UiSwitch;

.field m_userNameEdit:Lcom/metamoji/ui/common/UiEditText;

.field m_userNameLabel:Lcom/metamoji/ui/common/UiTextView;


# direct methods
.method static bridge synthetic -$$Nest$mupdateCtrlEnable(Lcom/metamoji/ns/ui/NsCollaboProxySettingsDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ns/ui/NsCollaboProxySettingsDialog;->updateCtrlEnable()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboProxySettingsDialog;->m_saveUseProxySwitch:Ljava/lang/Boolean;

    .line 45
    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboProxySettingsDialog;->m_saveHostEdit:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboProxySettingsDialog;->m_savePortEdit:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboProxySettingsDialog;->m_saveRequireAuthSwitch:Ljava/lang/Boolean;

    .line 48
    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboProxySettingsDialog;->m_saveUserNameEdit:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboProxySettingsDialog;->m_savePasswordEdit:Ljava/lang/String;

    return-void
.end method

.method private updateCtrlEnable()V
    .locals 3

    .line 143
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboProxySettingsDialog;->m_useProxySwitch:Lcom/metamoji/ui/common/UiSwitch;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiSwitch;->isChecked()Z

    move-result v0

    .line 144
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboProxySettingsDialog;->m_requireAuthSwitch:Lcom/metamoji/ui/common/UiSwitch;

    invoke-virtual {v1}, Lcom/metamoji/ui/common/UiSwitch;->isChecked()Z

    move-result v1

    and-int/2addr v1, v0

    .line 146
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboProxySettingsDialog;->m_hostLabel:Lcom/metamoji/ui/common/UiTextView;

    invoke-virtual {v2, v0}, Lcom/metamoji/ui/common/UiTextView;->setEnabled(Z)V

    .line 147
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboProxySettingsDialog;->m_hostEdit:Lcom/metamoji/ui/common/UiEditText;

    invoke-virtual {v2, v0}, Lcom/metamoji/ui/common/UiEditText;->setEnabled(Z)V

    .line 148
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboProxySettingsDialog;->m_portLabel:Lcom/metamoji/ui/common/UiTextView;

    invoke-virtual {v2, v0}, Lcom/metamoji/ui/common/UiTextView;->setEnabled(Z)V

    .line 149
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboProxySettingsDialog;->m_portEdit:Lcom/metamoji/ui/common/UiEditText;

    invoke-virtual {v2, v0}, Lcom/metamoji/ui/common/UiEditText;->setEnabled(Z)V

    .line 150
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboProxySettingsDialog;->m_requireAuthLabel:Lcom/metamoji/ui/common/UiTextView;

    invoke-virtual {v2, v0}, Lcom/metamoji/ui/common/UiTextView;->setEnabled(Z)V

    .line 151
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboProxySettingsDialog;->m_requireAuthSwitch:Lcom/metamoji/ui/common/UiSwitch;

    invoke-virtual {v2, v0}, Lcom/metamoji/ui/common/UiSwitch;->setEnabled(Z)V

    .line 152
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboProxySettingsDialog;->m_userNameLabel:Lcom/metamoji/ui/common/UiTextView;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiTextView;->setEnabled(Z)V

    .line 153
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboProxySettingsDialog;->m_userNameEdit:Lcom/metamoji/ui/common/UiEditText;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiEditText;->setEnabled(Z)V

    .line 154
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboProxySettingsDialog;->m_passwordLabel:Lcom/metamoji/ui/common/UiTextView;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiTextView;->setEnabled(Z)V

    .line 155
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboProxySettingsDialog;->m_passwordEdit:Lcom/metamoji/ui/common/UiEditText;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiEditText;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .line 62
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_collabo_proxy_settings:I

    iput v0, p0, Lcom/metamoji/ns/ui/NsCollaboProxySettingsDialog;->mViewId:I

    .line 63
    sget v0, Lcom/metamoji/noteanytime/R$string;->CollaboProxyDlg_Title:I

    iput v0, p0, Lcom/metamoji/ns/ui/NsCollaboProxySettingsDialog;->mTitleId:I

    .line 65
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    if-eqz p3, :cond_0

    return-object p1

    .line 72
    :cond_0
    sget p2, Lcom/metamoji/noteanytime/R$id;->useProxySwitch:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiSwitch;

    iput-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboProxySettingsDialog;->m_useProxySwitch:Lcom/metamoji/ui/common/UiSwitch;

    .line 73
    new-instance p3, Lcom/metamoji/ns/ui/NsCollaboProxySettingsDialog$1;

    invoke-direct {p3, p0}, Lcom/metamoji/ns/ui/NsCollaboProxySettingsDialog$1;-><init>(Lcom/metamoji/ns/ui/NsCollaboProxySettingsDialog;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 80
    sget p2, Lcom/metamoji/noteanytime/R$id;->hostLabel:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiTextView;

    iput-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboProxySettingsDialog;->m_hostLabel:Lcom/metamoji/ui/common/UiTextView;

    .line 81
    sget p2, Lcom/metamoji/noteanytime/R$id;->hostEdit:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiEditText;

    iput-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboProxySettingsDialog;->m_hostEdit:Lcom/metamoji/ui/common/UiEditText;

    .line 82
    sget p2, Lcom/metamoji/noteanytime/R$id;->portLabel:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiTextView;

    iput-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboProxySettingsDialog;->m_portLabel:Lcom/metamoji/ui/common/UiTextView;

    .line 83
    sget p2, Lcom/metamoji/noteanytime/R$id;->portEdit:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiEditText;

    iput-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboProxySettingsDialog;->m_portEdit:Lcom/metamoji/ui/common/UiEditText;

    .line 84
    sget p2, Lcom/metamoji/noteanytime/R$id;->requireAuthLabel:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiTextView;

    iput-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboProxySettingsDialog;->m_requireAuthLabel:Lcom/metamoji/ui/common/UiTextView;

    .line 85
    sget p2, Lcom/metamoji/noteanytime/R$id;->requireAuthSwitch:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiSwitch;

    iput-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboProxySettingsDialog;->m_requireAuthSwitch:Lcom/metamoji/ui/common/UiSwitch;

    .line 86
    new-instance p3, Lcom/metamoji/ns/ui/NsCollaboProxySettingsDialog$2;

    invoke-direct {p3, p0}, Lcom/metamoji/ns/ui/NsCollaboProxySettingsDialog$2;-><init>(Lcom/metamoji/ns/ui/NsCollaboProxySettingsDialog;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 93
    sget p2, Lcom/metamoji/noteanytime/R$id;->userNameLabel:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiTextView;

    iput-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboProxySettingsDialog;->m_userNameLabel:Lcom/metamoji/ui/common/UiTextView;

    .line 94
    sget p2, Lcom/metamoji/noteanytime/R$id;->userNameEdit:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiEditText;

    iput-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboProxySettingsDialog;->m_userNameEdit:Lcom/metamoji/ui/common/UiEditText;

    .line 95
    sget p2, Lcom/metamoji/noteanytime/R$id;->passwordLabel:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiTextView;

    iput-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboProxySettingsDialog;->m_passwordLabel:Lcom/metamoji/ui/common/UiTextView;

    .line 96
    sget p2, Lcom/metamoji/noteanytime/R$id;->passwordEdit:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiEditText;

    iput-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboProxySettingsDialog;->m_passwordEdit:Lcom/metamoji/ui/common/UiEditText;

    .line 98
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object p2

    .line 99
    iget-object p3, p0, Lcom/metamoji/ns/ui/NsCollaboProxySettingsDialog;->m_useProxySwitch:Lcom/metamoji/ui/common/UiSwitch;

    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboProxySettingsDialog;->m_saveUseProxySwitch:Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 100
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 101
    :cond_1
    const-string v0, "CollaboProxySettingUseProxy"

    invoke-virtual {p2, v0, v1}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result v0

    .line 99
    :goto_0
    invoke-virtual {p3, v0}, Lcom/metamoji/ui/common/UiSwitch;->setChecked(Z)V

    .line 102
    iget-object p3, p0, Lcom/metamoji/ns/ui/NsCollaboProxySettingsDialog;->m_hostEdit:Lcom/metamoji/ui/common/UiEditText;

    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboProxySettingsDialog;->m_saveHostEdit:Ljava/lang/String;

    const-string v2, ""

    if-eqz v0, :cond_2

    goto :goto_1

    .line 104
    :cond_2
    const-string v0, "CollaboProxySettingHost"

    invoke-virtual {p2, v0, v2}, Lcom/metamoji/nt/NtUserDefaults;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    :goto_1
    invoke-virtual {p3, v0}, Lcom/metamoji/ui/common/UiEditText;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object p3, p0, Lcom/metamoji/ns/ui/NsCollaboProxySettingsDialog;->m_portEdit:Lcom/metamoji/ui/common/UiEditText;

    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboProxySettingsDialog;->m_savePortEdit:Ljava/lang/String;

    if-eqz v0, :cond_3

    goto :goto_2

    .line 107
    :cond_3
    const-string v0, "CollaboProxySettingPort"

    invoke-virtual {p2, v0, v1}, Lcom/metamoji/nt/NtUserDefaults;->getIntValue(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "%d"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 105
    :goto_2
    invoke-virtual {p3, v0}, Lcom/metamoji/ui/common/UiEditText;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object p3, p0, Lcom/metamoji/ns/ui/NsCollaboProxySettingsDialog;->m_requireAuthSwitch:Lcom/metamoji/ui/common/UiSwitch;

    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboProxySettingsDialog;->m_saveRequireAuthSwitch:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 109
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_3

    .line 110
    :cond_4
    const-string v0, "CollaboProxySettingRequireAuth"

    invoke-virtual {p2, v0, v1}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result v0

    .line 108
    :goto_3
    invoke-virtual {p3, v0}, Lcom/metamoji/ui/common/UiSwitch;->setChecked(Z)V

    .line 111
    const-string p3, "CollaboProxySettingUserName"

    invoke-virtual {p2, p3}, Lcom/metamoji/nt/NtUserDefaults;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/metamoji/nt/NtProxyAuthDriver;->decryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 112
    const-string v0, "CollaboProxySettingPassword"

    invoke-virtual {p2, v0}, Lcom/metamoji/nt/NtUserDefaults;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/metamoji/nt/NtProxyAuthDriver;->decryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 113
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboProxySettingsDialog;->m_userNameEdit:Lcom/metamoji/ui/common/UiEditText;

    if-eqz p3, :cond_5

    goto :goto_4

    :cond_5
    move-object p3, v2

    :goto_4
    invoke-virtual {v0, p3}, Lcom/metamoji/ui/common/UiEditText;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object p3, p0, Lcom/metamoji/ns/ui/NsCollaboProxySettingsDialog;->m_passwordEdit:Lcom/metamoji/ui/common/UiEditText;

    if-eqz p2, :cond_6

    move-object v2, p2

    :cond_6
    invoke-virtual {p3, v2}, Lcom/metamoji/ui/common/UiEditText;->setText(Ljava/lang/CharSequence;)V

    .line 117
    invoke-direct {p0}, Lcom/metamoji/ns/ui/NsCollaboProxySettingsDialog;->updateCtrlEnable()V

    return-object p1
.end method

.method public onDone(Landroid/view/View;)V
    .locals 5

    const/4 v0, -0x1

    .line 166
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboProxySettingsDialog;->m_portEdit:Lcom/metamoji/ui/common/UiEditText;

    invoke-virtual {v1}, Lcom/metamoji/ui/common/UiEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move v1, v0

    .line 170
    :goto_0
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboProxySettingsDialog;->m_useProxySwitch:Lcom/metamoji/ui/common/UiSwitch;

    invoke-virtual {v2}, Lcom/metamoji/ui/common/UiSwitch;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 172
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboProxySettingsDialog;->m_hostEdit:Lcom/metamoji/ui/common/UiEditText;

    invoke-virtual {v2}, Lcom/metamoji/ui/common/UiEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 173
    sget v0, Lcom/metamoji/noteanytime/R$string;->CollaboProxyDlg_Msg_No_Address:I

    goto :goto_1

    :cond_0
    if-gez v1, :cond_1

    .line 175
    sget v0, Lcom/metamoji/noteanytime/R$string;->CollaboProxyDlg_Msg_Invalid_Port:I

    goto :goto_1

    .line 176
    :cond_1
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboProxySettingsDialog;->m_requireAuthSwitch:Lcom/metamoji/ui/common/UiSwitch;

    invoke-virtual {v2}, Lcom/metamoji/ui/common/UiSwitch;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 177
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboProxySettingsDialog;->m_userNameEdit:Lcom/metamoji/ui/common/UiEditText;

    invoke-virtual {v2}, Lcom/metamoji/ui/common/UiEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 178
    sget v0, Lcom/metamoji/noteanytime/R$string;->CollaboProxyDlg_Msg_No_UserName:I

    goto :goto_1

    .line 179
    :cond_2
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboProxySettingsDialog;->m_passwordEdit:Lcom/metamoji/ui/common/UiEditText;

    invoke-virtual {v2}, Lcom/metamoji/ui/common/UiEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 180
    sget v0, Lcom/metamoji/noteanytime/R$string;->CollaboProxyDlg_Msg_No_Password:I

    :cond_3
    :goto_1
    if-ltz v0, :cond_4

    const/4 p1, 0x0

    const/4 v1, 0x0

    .line 184
    invoke-static {v0, p1, v1}, Lcom/metamoji/cm/CmUtils;->confirmDialog(IILandroid/content/DialogInterface$OnClickListener;)V

    return-void

    .line 189
    :cond_4
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 190
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboProxySettingsDialog;->m_useProxySwitch:Lcom/metamoji/ui/common/UiSwitch;

    invoke-virtual {v2}, Lcom/metamoji/ui/common/UiSwitch;->isChecked()Z

    move-result v2

    const-string v3, "CollaboProxySettingUseProxy"

    invoke-virtual {v0, v3, v2}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Z)V

    .line 191
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboProxySettingsDialog;->m_hostEdit:Lcom/metamoji/ui/common/UiEditText;

    invoke-virtual {v2}, Lcom/metamoji/ui/common/UiEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CollaboProxySettingHost"

    invoke-virtual {v0, v3, v2}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz v1, :cond_5

    .line 193
    const-string v2, "CollaboProxySettingPort"

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;I)V

    .line 195
    :cond_5
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboProxySettingsDialog;->m_requireAuthSwitch:Lcom/metamoji/ui/common/UiSwitch;

    invoke-virtual {v1}, Lcom/metamoji/ui/common/UiSwitch;->isChecked()Z

    move-result v1

    const-string v2, "CollaboProxySettingRequireAuth"

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Z)V

    .line 196
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboProxySettingsDialog;->m_userNameEdit:Lcom/metamoji/ui/common/UiEditText;

    invoke-virtual {v1}, Lcom/metamoji/ui/common/UiEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/nt/NtProxyAuthDriver;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 197
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboProxySettingsDialog;->m_passwordEdit:Lcom/metamoji/ui/common/UiEditText;

    invoke-virtual {v2}, Lcom/metamoji/ui/common/UiEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/nt/NtProxyAuthDriver;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 198
    const-string v3, ""

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    move-object v1, v3

    :goto_2
    const-string v4, "CollaboProxySettingUserName"

    invoke-virtual {v0, v4, v1}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_7

    goto :goto_3

    :cond_7
    move-object v2, v3

    .line 199
    :goto_3
    const-string v1, "CollaboProxySettingPassword"

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onDone(Landroid/view/View;)V

    .line 204
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/metamoji/ns/NsCollaboManager;->reloginRoomSocketWithDelay(Z)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 129
    new-instance v0, Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboProxySettingsDialog;->m_useProxySwitch:Lcom/metamoji/ui/common/UiSwitch;

    invoke-virtual {v1}, Lcom/metamoji/ui/common/UiSwitch;->isChecked()Z

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboProxySettingsDialog;->m_saveUseProxySwitch:Ljava/lang/Boolean;

    .line 130
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboProxySettingsDialog;->m_hostEdit:Lcom/metamoji/ui/common/UiEditText;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboProxySettingsDialog;->m_saveHostEdit:Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboProxySettingsDialog;->m_portEdit:Lcom/metamoji/ui/common/UiEditText;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboProxySettingsDialog;->m_savePortEdit:Ljava/lang/String;

    .line 132
    new-instance v0, Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboProxySettingsDialog;->m_requireAuthSwitch:Lcom/metamoji/ui/common/UiSwitch;

    invoke-virtual {v1}, Lcom/metamoji/ui/common/UiSwitch;->isChecked()Z

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboProxySettingsDialog;->m_saveRequireAuthSwitch:Ljava/lang/Boolean;

    .line 133
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboProxySettingsDialog;->m_userNameEdit:Lcom/metamoji/ui/common/UiEditText;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboProxySettingsDialog;->m_saveUserNameEdit:Ljava/lang/String;

    .line 134
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboProxySettingsDialog;->m_passwordEdit:Lcom/metamoji/ui/common/UiEditText;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboProxySettingsDialog;->m_savePasswordEdit:Ljava/lang/String;

    .line 136
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
