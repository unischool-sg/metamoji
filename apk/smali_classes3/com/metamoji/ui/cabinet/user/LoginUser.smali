.class public Lcom/metamoji/ui/cabinet/user/LoginUser;
.super Lcom/metamoji/ui/dialog/UiDialog;
.source "LoginUser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/cabinet/user/LoginUser$DisplayTypeOfLogin;
    }
.end annotation


# static fields
.field private static Key_StartUpMode:Ljava/lang/String; = "StartUpMode"

.field private static Key_displayType:Ljava/lang/String; = "DisplayType"

.field public static TAG:Ljava/lang/String; = "LoginUser"

.field public static Tag_LoginUser:Ljava/lang/String; = "LoginUser"


# instance fields
.field private _notRecovery:Z

.field _this:Lcom/metamoji/ui/cabinet/user/LoginUser;

.field m_cancelButton:Lcom/metamoji/ui/common/UiButton;

.field m_displayType:Lcom/metamoji/ui/cabinet/user/LoginUser$DisplayTypeOfLogin;

.field m_loginButton:Lcom/metamoji/ui/common/UiButton;

.field m_mailAddress:Landroid/widget/EditText;

.field m_password:Landroid/widget/EditText;

.field m_resetPasswordButton:Landroid/widget/TextView;

.field m_retry:Z

.field m_retryButton:Lcom/metamoji/ui/common/UiButton;

.field m_startUpMode:Z

.field m_switch_guideHide:Lcom/metamoji/ui/common/UiSwitch;


# direct methods
.method static bridge synthetic -$$Nest$mgetMailaddress(Lcom/metamoji/ui/cabinet/user/LoginUser;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/user/LoginUser;->getMailaddress()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$monLogin(Lcom/metamoji/ui/cabinet/user/LoginUser;)Z
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/user/LoginUser;->onLogin()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetInputControlEnabled(Lcom/metamoji/ui/cabinet/user/LoginUser;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/cabinet/user/LoginUser;->setInputControlEnabled(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 80
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/UiDialog;-><init>()V

    .line 70
    sget-object v0, Lcom/metamoji/ui/cabinet/user/LoginUser$DisplayTypeOfLogin;->NONE_SIGNUP:Lcom/metamoji/ui/cabinet/user/LoginUser$DisplayTypeOfLogin;

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/LoginUser;->m_displayType:Lcom/metamoji/ui/cabinet/user/LoginUser$DisplayTypeOfLogin;

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/LoginUser;->m_retry:Z

    .line 72
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/LoginUser;->m_startUpMode:Z

    .line 81
    iput-boolean p1, p0, Lcom/metamoji/ui/cabinet/user/LoginUser;->_notRecovery:Z

    return-void
.end method

.method private checkInput()Z
    .locals 3

    .line 358
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/LoginUser;->m_displayType:Lcom/metamoji/ui/cabinet/user/LoginUser$DisplayTypeOfLogin;

    sget-object v1, Lcom/metamoji/ui/cabinet/user/LoginUser$DisplayTypeOfLogin;->NONE_SIGNUP:Lcom/metamoji/ui/cabinet/user/LoginUser$DisplayTypeOfLogin;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 359
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/LoginUser;->m_mailAddress:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-gtz v0, :cond_0

    .line 360
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/LoginUser;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$string;->MMJID_CABINET_USER_MSG_REGISTER_INPUT_EMAIL:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->showMsgDialog(Ljava/lang/String;)V

    return v2

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/LoginUser;->m_password:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 367
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/LoginUser;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$string;->Cabinet_User_Msg_Register_Input_Password:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->showMsgDialog(Ljava/lang/String;)V

    return v2

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private getMailaddress()Ljava/lang/String;
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/LoginUser;->m_mailAddress:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private onLogin()Z
    .locals 3

    .line 110
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/user/LoginUser;->checkInput()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/LoginUser;->_this:Lcom/metamoji/ui/cabinet/user/LoginUser;

    invoke-direct {v0, v1}, Lcom/metamoji/ui/cabinet/user/LoginUser;->setInputControlEnabled(Z)V

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 113
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/LoginUser;->_this:Lcom/metamoji/ui/cabinet/user/LoginUser;

    invoke-direct {v1}, Lcom/metamoji/ui/cabinet/user/LoginUser;->getMailaddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mailaddress"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/LoginUser;->m_password:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "password"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    invoke-static {}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->getInstance()Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 118
    invoke-virtual {v1, v0}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->onClickLoginButton(Ljava/util/HashMap;)V

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method private setInputControlEnabled(Z)V
    .locals 1

    .line 435
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/LoginUser;->m_mailAddress:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 436
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/LoginUser;->m_password:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 438
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/LoginUser;->m_loginButton:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    .line 439
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/LoginUser;->m_cancelButton:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    .line 440
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/LoginUser;->m_retryButton:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    .line 442
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/LoginUser;->m_resetPasswordButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/view/View;)V
    .locals 3

    .line 326
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/LoginUser;->m_switch_guideHide:Lcom/metamoji/ui/common/UiSwitch;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiSwitch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 328
    const-string v1, "MetaMoJi_ID_Guide_Hide"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Z)V

    .line 330
    :cond_0
    invoke-static {}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->getInstance()Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 332
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->onHandleCancelLogin()V

    .line 334
    :cond_1
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/UiDialog;->onCancel(Landroid/view/View;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    if-eqz p1, :cond_1

    .line 152
    sget-object v0, Lcom/metamoji/ui/cabinet/user/LoginUser;->Key_displayType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 153
    invoke-static {}, Lcom/metamoji/ui/cabinet/user/LoginUser$DisplayTypeOfLogin;->values()[Lcom/metamoji/ui/cabinet/user/LoginUser$DisplayTypeOfLogin;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 154
    invoke-static {}, Lcom/metamoji/ui/cabinet/user/LoginUser$DisplayTypeOfLogin;->values()[Lcom/metamoji/ui/cabinet/user/LoginUser$DisplayTypeOfLogin;

    move-result-object v1

    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/LoginUser;->m_displayType:Lcom/metamoji/ui/cabinet/user/LoginUser$DisplayTypeOfLogin;

    .line 156
    :cond_0
    sget-object v0, Lcom/metamoji/ui/cabinet/user/LoginUser;->Key_StartUpMode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/LoginUser;->m_startUpMode:Z

    .line 159
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/LoginUser;->disableAutoDetectTextViewMode()V

    .line 165
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_login_user:I

    iput v0, p0, Lcom/metamoji/ui/cabinet/user/LoginUser;->mViewId:I

    .line 166
    sget v0, Lcom/metamoji/noteanytime/R$string;->MMJID_SIGNIN_LABEL:I

    iput v0, p0, Lcom/metamoji/ui/cabinet/user/LoginUser;->mTitleId:I

    const/4 v0, 0x0

    .line 167
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/LoginUser;->mDone:Z

    .line 168
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/LoginUser;->mCancel:Z

    .line 169
    iput-object p0, p0, Lcom/metamoji/ui/cabinet/user/LoginUser;->_this:Lcom/metamoji/ui/cabinet/user/LoginUser;

    const/4 v0, 0x1

    .line 172
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/cabinet/user/LoginUser;->setModal(Z)V

    .line 174
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/UiDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    .line 178
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/LoginUser;->m_mailAddress:Landroid/widget/EditText;

    const-string v2, ""

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v2

    .line 179
    :goto_0
    sget v3, Lcom/metamoji/noteanytime/R$id;->EditText_Mainaddress:I

    invoke-virtual {p1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/metamoji/ui/cabinet/user/LoginUser;->m_mailAddress:Landroid/widget/EditText;

    if-eqz v3, :cond_3

    const/16 v4, 0x21

    .line 181
    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 182
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/user/LoginUser;->m_mailAddress:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/LoginUser;->m_mailAddress:Landroid/widget/EditText;

    sget v3, Lcom/metamoji/noteanytime/R$string;->MMJID_DLG_METAMOJIID_DEF_TEXT:I

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setHint(I)V

    .line 186
    :cond_3
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/LoginUser;->m_password:Landroid/widget/EditText;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 187
    :cond_4
    sget v1, Lcom/metamoji/noteanytime/R$id;->EditText_Password:I

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/metamoji/ui/cabinet/user/LoginUser;->m_password:Landroid/widget/EditText;

    if-eqz v1, :cond_5

    const/16 v3, 0x81

    .line 189
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 190
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/LoginUser;->m_password:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/LoginUser;->m_password:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 194
    :cond_5
    sget v1, Lcom/metamoji/noteanytime/R$id;->button_login:I

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/common/UiButton;

    iput-object v1, p0, Lcom/metamoji/ui/cabinet/user/LoginUser;->m_loginButton:Lcom/metamoji/ui/common/UiButton;

    if-eqz v1, :cond_6

    .line 196
    new-instance v2, Lcom/metamoji/ui/cabinet/user/LoginUser$1;

    invoke-direct {v2, p0}, Lcom/metamoji/ui/cabinet/user/LoginUser$1;-><init>(Lcom/metamoji/ui/cabinet/user/LoginUser;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    :cond_6
    sget v1, Lcom/metamoji/noteanytime/R$id;->button_cancel:I

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/common/UiButton;

    iput-object v1, p0, Lcom/metamoji/ui/cabinet/user/LoginUser;->m_cancelButton:Lcom/metamoji/ui/common/UiButton;

    if-eqz v1, :cond_8

    .line 208
    iget-boolean v2, p0, Lcom/metamoji/ui/cabinet/user/LoginUser;->m_startUpMode:Z

    if-eqz v2, :cond_7

    .line 209
    sget v2, Lcom/metamoji/noteanytime/R$string;->MMJID_SIGNIN_DLG_CANCEL_BTN:I

    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/common/UiButton;->setMainTitle(Ljava/lang/CharSequence;)V

    .line 211
    :cond_7
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/LoginUser;->m_cancelButton:Lcom/metamoji/ui/common/UiButton;

    new-instance v2, Lcom/metamoji/ui/cabinet/user/LoginUser$2;

    invoke-direct {v2, p0}, Lcom/metamoji/ui/cabinet/user/LoginUser$2;-><init>(Lcom/metamoji/ui/cabinet/user/LoginUser;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    :cond_8
    sget v1, Lcom/metamoji/noteanytime/R$id;->button_forgotpass:I

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/metamoji/ui/cabinet/user/LoginUser;->m_resetPasswordButton:Landroid/widget/TextView;

    if-eqz v1, :cond_9

    .line 224
    new-instance v2, Lcom/metamoji/ui/cabinet/user/LoginUser$3;

    invoke-direct {v2, p0}, Lcom/metamoji/ui/cabinet/user/LoginUser$3;-><init>(Lcom/metamoji/ui/cabinet/user/LoginUser;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    :cond_9
    sget v1, Lcom/metamoji/noteanytime/R$id;->button_createMetaMoJiID:I

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/common/UiButton;

    iput-object v1, p0, Lcom/metamoji/ui/cabinet/user/LoginUser;->m_retryButton:Lcom/metamoji/ui/common/UiButton;

    if-eqz v1, :cond_a

    .line 253
    new-instance v2, Lcom/metamoji/ui/cabinet/user/LoginUser$4;

    invoke-direct {v2, p0}, Lcom/metamoji/ui/cabinet/user/LoginUser$4;-><init>(Lcom/metamoji/ui/cabinet/user/LoginUser;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    :cond_a
    sget v1, Lcom/metamoji/noteanytime/R$id;->switch_guideHide:I

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/common/UiSwitch;

    iput-object v1, p0, Lcom/metamoji/ui/cabinet/user/LoginUser;->m_switch_guideHide:Lcom/metamoji/ui/common/UiSwitch;

    .line 264
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v1

    .line 265
    invoke-virtual {v1}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v1

    const/16 v2, 0x8

    if-eqz v1, :cond_c

    .line 266
    iget-object v3, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->email:Ljava/lang/String;

    if-eqz v3, :cond_c

    .line 270
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/user/LoginUser;->m_mailAddress:Landroid/widget/EditText;

    iget-object v4, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->email:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 272
    sget v3, Lcom/metamoji/noteanytime/R$id;->LinearLayout_message3:I

    invoke-virtual {p1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 273
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 275
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/user/LoginUser;->m_password:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 276
    iget v3, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userType:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_b

    .line 277
    sget v0, Lcom/metamoji/noteanytime/R$id;->TextView_normalMessage:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 278
    sget v1, Lcom/metamoji/noteanytime/R$string;->MMJID_SIGNIN_DLG_FAILED_MSG:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 281
    :cond_b
    iget v1, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userType:I

    if-eq v1, v0, :cond_d

    .line 282
    sget v0, Lcom/metamoji/noteanytime/R$id;->TextView_normalMessage:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 283
    sget v1, Lcom/metamoji/noteanytime/R$string;->MMJID_SIGNIN_DLG_MSG2:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 284
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/LoginUser;->m_retryButton:Lcom/metamoji/ui/common/UiButton;

    sget v1, Lcom/metamoji/noteanytime/R$string;->MMJID_SIGNIN_DLG_RE_MAKE_BTN:I

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButton;->setMainTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 289
    :cond_c
    iget-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/LoginUser;->m_startUpMode:Z

    if-nez v0, :cond_d

    .line 291
    sget v0, Lcom/metamoji/noteanytime/R$id;->LinearLayout_normalMessage:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 292
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 296
    :cond_d
    :goto_1
    iget-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/LoginUser;->m_startUpMode:Z

    if-nez v0, :cond_e

    .line 297
    sget v0, Lcom/metamoji/noteanytime/R$id;->LinearLayout_guideHide:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 298
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 301
    :cond_e
    new-instance v0, Lcom/metamoji/ui/cabinet/user/LoginUser$5;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/cabinet/user/LoginUser$5;-><init>(Lcom/metamoji/ui/cabinet/user/LoginUser;)V

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/cabinet/user/LoginUser;->setOnClosedListener(Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 0

    .line 338
    invoke-super {p0}, Lcom/metamoji/ui/dialog/UiDialog;->onDestroyView()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 342
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/UiDialog;->onDismiss(Landroid/content/DialogInterface;)V

    .line 343
    invoke-static {}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->getInstance()Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 345
    invoke-virtual {p1}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->onDismiss()V

    :cond_0
    return-void
.end method

.method public onDone(Landroid/view/View;)V
    .locals 1

    .line 315
    invoke-static {}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->getInstance()Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 317
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->onDone()V

    .line 320
    :cond_0
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/UiDialog;->onDone(Landroid/view/View;)V

    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    .line 101
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/user/LoginUser;->onLogin()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onHandleLoginResponseFail(Lcom/metamoji/cs/dc/response/CsLoginResponse;)Z
    .locals 1

    .line 390
    invoke-static {p1}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils;->analiseCabinetUserError(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V

    .line 391
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/LoginUser;->_this:Lcom/metamoji/ui/cabinet/user/LoginUser;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/metamoji/ui/cabinet/user/LoginUser;->setInputControlEnabled(Z)V

    return v0
.end method

.method public onHandleLoginResponseSuccess(Lcom/metamoji/cs/dc/response/CsLoginResponse;)Z
    .locals 1

    .line 401
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/LoginUser;->_this:Lcom/metamoji/ui/cabinet/user/LoginUser;

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/LoginUser;->m_loginButton:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/cabinet/user/LoginUser;->onDone(Landroid/view/View;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onHandleResetPasswordFail(Lcom/metamoji/cs/dc/response/CsResetPasswordResponse;)Z
    .locals 2

    .line 411
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/LoginUser;->_this:Lcom/metamoji/ui/cabinet/user/LoginUser;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/metamoji/ui/cabinet/user/LoginUser;->setInputControlEnabled(Z)V

    .line 413
    invoke-static {p1}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils;->analiseCabinetUserError(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V

    return v1
.end method

.method public onHandleResetPasswordSuccess(Lcom/metamoji/cs/dc/response/CsResetPasswordResponse;)Z
    .locals 2

    .line 423
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/LoginUser;->_this:Lcom/metamoji/ui/cabinet/user/LoginUser;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/metamoji/ui/cabinet/user/LoginUser;->setInputControlEnabled(Z)V

    .line 424
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/LoginUser;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/metamoji/noteanytime/R$string;->SystemOption_Msg_CabinetUser_Password_2:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/CabinetUtils;->showMsgDialog(Ljava/lang/String;)V

    return v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 130
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/UiDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    if-eqz p1, :cond_1

    .line 132
    iget-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/LoginUser;->_notRecovery:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 134
    const-string v0, "canceldialogflag"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 136
    :cond_0
    const-string v0, "reconstructdialogflag"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 138
    :goto_0
    sget-object v0, Lcom/metamoji/ui/cabinet/user/LoginUser;->Key_displayType:Ljava/lang/String;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/LoginUser;->m_displayType:Lcom/metamoji/ui/cabinet/user/LoginUser$DisplayTypeOfLogin;

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/user/LoginUser$DisplayTypeOfLogin;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 139
    sget-object v0, Lcom/metamoji/ui/cabinet/user/LoginUser;->Key_StartUpMode:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/metamoji/ui/cabinet/user/LoginUser;->m_startUpMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 140
    iget-boolean p1, p0, Lcom/metamoji/ui/cabinet/user/LoginUser;->_notRecovery:Z

    if-eqz p1, :cond_1

    .line 141
    invoke-static {}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->getInstance()Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 143
    invoke-virtual {p1}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->closeDialog()V

    :cond_1
    return-void
.end method

.method public set_startUpMode(Z)V
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/metamoji/ui/cabinet/user/LoginUser;->m_startUpMode:Z

    return-void
.end method

.method public showDialog(Landroidx/fragment/app/FragmentManager;Lcom/metamoji/ui/cabinet/user/LoginUser$DisplayTypeOfLogin;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 89
    sget-object v0, Lcom/metamoji/ui/cabinet/user/LoginUser;->Tag_LoginUser:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    iput-object p2, p0, Lcom/metamoji/ui/cabinet/user/LoginUser;->m_displayType:Lcom/metamoji/ui/cabinet/user/LoginUser$DisplayTypeOfLogin;

    .line 95
    sget-object p2, Lcom/metamoji/ui/cabinet/user/LoginUser;->Tag_LoginUser:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/cabinet/user/LoginUser;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
