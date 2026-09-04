.class public Lcom/metamoji/ui/cabinet/user/EntryUser;
.super Lcom/metamoji/ui/dialog/UiDialog;
.source "EntryUser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/cabinet/user/EntryUser$EntryUserParam;
    }
.end annotation


# static fields
.field public static TAG:Ljava/lang/String; = "EntryUser"

.field public static final Tag_EntryUser:Ljava/lang/String; = "EntryUser"


# instance fields
.field _param:Lcom/metamoji/ui/cabinet/user/EntryUser$EntryUserParam;

.field _this:Lcom/metamoji/ui/cabinet/user/EntryUser;

.field m_aboutusButton:Lcom/metamoji/ui/common/UiButton;

.field m_callback:Lcom/metamoji/cs/dc/CsShowRegisterDialogCallback;

.field m_cancelButton:Lcom/metamoji/ui/common/UiButton;

.field m_confirmPassword:Landroid/widget/EditText;

.field m_entryButton:Lcom/metamoji/ui/common/UiButton;

.field m_mailAddress:Landroid/widget/EditText;

.field m_nickname:Landroid/widget/EditText;

.field m_password:Landroid/widget/EditText;

.field m_policyButton:Lcom/metamoji/ui/common/UiButton;


# direct methods
.method static bridge synthetic -$$Nest$mcheckInput(Lcom/metamoji/ui/cabinet/user/EntryUser;)Z
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/user/EntryUser;->checkInput()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetInputControlEnabled(Lcom/metamoji/ui/cabinet/user/EntryUser;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/cabinet/user/EntryUser;->setInputControlEnabled(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 90
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/UiDialog;-><init>()V

    .line 49
    new-instance v0, Lcom/metamoji/ui/cabinet/user/EntryUser$EntryUserParam;

    invoke-direct {v0}, Lcom/metamoji/ui/cabinet/user/EntryUser$EntryUserParam;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/EntryUser;->_param:Lcom/metamoji/ui/cabinet/user/EntryUser$EntryUserParam;

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/cs/dc/CsShowRegisterDialogCallback;)V
    .locals 1

    .line 97
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/UiDialog;-><init>()V

    .line 49
    new-instance v0, Lcom/metamoji/ui/cabinet/user/EntryUser$EntryUserParam;

    invoke-direct {v0}, Lcom/metamoji/ui/cabinet/user/EntryUser$EntryUserParam;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/EntryUser;->_param:Lcom/metamoji/ui/cabinet/user/EntryUser$EntryUserParam;

    .line 98
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/EntryUser;->m_callback:Lcom/metamoji/cs/dc/CsShowRegisterDialogCallback;

    .line 99
    iput-object p1, v0, Lcom/metamoji/ui/cabinet/user/EntryUser$EntryUserParam;->callback:Lcom/metamoji/cs/dc/CsShowRegisterDialogCallback;

    return-void
.end method

.method private checkInput()Z
    .locals 3

    .line 292
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/EntryUser;->m_nickname:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 293
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/EntryUser;->m_nickname:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/EntryUser;->m_nickname:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    const/16 v2, 0x64

    if-le v0, v2, :cond_1

    .line 294
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/EntryUser;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/metamoji/noteanytime/R$string;->Cabinet_User_Msg_Faild_Nickname_Count:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->showMsgDialog(Ljava/lang/String;)V

    return v1

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/EntryUser;->m_mailAddress:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-gtz v0, :cond_2

    .line 301
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/EntryUser;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/metamoji/noteanytime/R$string;->MMJID_CABINET_USER_MSG_REGISTER_INPUT_EMAIL:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->showMsgDialog(Ljava/lang/String;)V

    return v1

    .line 306
    :cond_2
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/EntryUser;->m_password:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-gtz v0, :cond_3

    .line 307
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/EntryUser;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/metamoji/noteanytime/R$string;->Cabinet_User_Msg_Register_Input_Password:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->showMsgDialog(Ljava/lang/String;)V

    return v1

    .line 311
    :cond_3
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/EntryUser;->m_password:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    const/16 v2, 0x8

    if-lt v0, v2, :cond_6

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/EntryUser;->m_password:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    const/16 v2, 0x40

    if-le v0, v2, :cond_4

    goto :goto_0

    .line 318
    :cond_4
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/EntryUser;->m_password:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/metamoji/ui/cabinet/user/EntryUser;->m_confirmPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 319
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/EntryUser;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/metamoji/noteanytime/R$string;->Cabinet_User_Msg_Failed_Password:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->showMsgDialog(Ljava/lang/String;)V

    return v1

    :cond_5
    const/4 v0, 0x1

    return v0

    .line 312
    :cond_6
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/EntryUser;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/metamoji/noteanytime/R$string;->Cabinet_User_Msg_Faild_Password_Count:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->showMsgDialog(Ljava/lang/String;)V

    return v1
.end method

.method private setInputControlEnabled(Z)V
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/EntryUser;->m_nickname:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 334
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/EntryUser;->m_mailAddress:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 335
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/EntryUser;->m_password:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 336
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/EntryUser;->m_confirmPassword:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 338
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/EntryUser;->m_entryButton:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    .line 339
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/EntryUser;->m_cancelButton:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    .line 340
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/EntryUser;->m_aboutusButton:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    .line 341
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/EntryUser;->m_policyButton:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/view/View;)V
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/EntryUser;->m_callback:Lcom/metamoji/cs/dc/CsShowRegisterDialogCallback;

    invoke-virtual {v0}, Lcom/metamoji/cs/dc/CsShowRegisterDialogCallback;->OnClickCancelButton_EntryUserTaskCallBack()V

    .line 260
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/UiDialog;->onCancel(Landroid/view/View;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .line 127
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/EntryUser;->disableAutoDetectTextViewMode()V

    if-eqz p1, :cond_0

    .line 130
    sget-object v0, Lcom/metamoji/ui/cabinet/user/EntryUser;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/cabinet/user/EntryUser$EntryUserParam;

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/EntryUser;->_param:Lcom/metamoji/ui/cabinet/user/EntryUser$EntryUserParam;

    .line 133
    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_entry_user:I

    iput v0, p0, Lcom/metamoji/ui/cabinet/user/EntryUser;->mViewId:I

    .line 134
    sget v0, Lcom/metamoji/noteanytime/R$string;->MMJID_SIGNIN_DLG_MAKE_BTN:I

    iput v0, p0, Lcom/metamoji/ui/cabinet/user/EntryUser;->mTitleId:I

    const/4 v0, 0x0

    .line 135
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/EntryUser;->mDone:Z

    .line 136
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/EntryUser;->mCancel:Z

    .line 138
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/EntryUser;->_param:Lcom/metamoji/ui/cabinet/user/EntryUser$EntryUserParam;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/user/EntryUser$EntryUserParam;->callback:Lcom/metamoji/cs/dc/CsShowRegisterDialogCallback;

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/EntryUser;->m_callback:Lcom/metamoji/cs/dc/CsShowRegisterDialogCallback;

    const/4 v0, 0x1

    .line 141
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/cabinet/user/EntryUser;->setModal(Z)V

    .line 143
    iput-object p0, p0, Lcom/metamoji/ui/cabinet/user/EntryUser;->_this:Lcom/metamoji/ui/cabinet/user/EntryUser;

    .line 144
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/UiDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    .line 146
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/EntryUser;->m_nickname:Landroid/widget/EditText;

    const-string v1, ""

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 147
    :goto_0
    sget v2, Lcom/metamoji/noteanytime/R$id;->EditText_Nickname:I

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/metamoji/ui/cabinet/user/EntryUser;->m_nickname:Landroid/widget/EditText;

    if-eqz v2, :cond_2

    .line 149
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/EntryUser;->m_nickname:Landroid/widget/EditText;

    sget v2, Lcom/metamoji/noteanytime/R$string;->MMJID_MAKE_DLG_NICKNAME_DEF_TEXT:I

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(I)V

    .line 154
    :cond_2
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/EntryUser;->m_mailAddress:Landroid/widget/EditText;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 155
    :goto_1
    sget v2, Lcom/metamoji/noteanytime/R$id;->EditText_Mainaddress:I

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/metamoji/ui/cabinet/user/EntryUser;->m_mailAddress:Landroid/widget/EditText;

    if-eqz v2, :cond_4

    const/16 v3, 0x21

    .line 157
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 158
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/user/EntryUser;->m_mailAddress:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/EntryUser;->m_mailAddress:Landroid/widget/EditText;

    sget v2, Lcom/metamoji/noteanytime/R$string;->MMJID_DLG_METAMOJIID_DEF_TEXT:I

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(I)V

    .line 163
    :cond_4
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/EntryUser;->m_password:Landroid/widget/EditText;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    move-object v0, v1

    .line 164
    :goto_2
    sget v2, Lcom/metamoji/noteanytime/R$id;->EditText_Password:I

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/metamoji/ui/cabinet/user/EntryUser;->m_password:Landroid/widget/EditText;

    const/16 v3, 0x81

    if-eqz v2, :cond_6

    .line 166
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 167
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/user/EntryUser;->m_password:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 171
    :cond_6
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/EntryUser;->m_confirmPassword:Landroid/widget/EditText;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 172
    :cond_7
    sget v0, Lcom/metamoji/noteanytime/R$id;->EditText_ConfirmPassword:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/EntryUser;->m_confirmPassword:Landroid/widget/EditText;

    if-eqz v0, :cond_8

    .line 174
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 175
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/EntryUser;->m_confirmPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 179
    :cond_8
    sget v0, Lcom/metamoji/noteanytime/R$id;->button_termofuse:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiButton;

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/EntryUser;->m_aboutusButton:Lcom/metamoji/ui/common/UiButton;

    if-eqz v0, :cond_9

    .line 181
    new-instance v1, Lcom/metamoji/ui/cabinet/user/EntryUser$1;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/cabinet/user/EntryUser$1;-><init>(Lcom/metamoji/ui/cabinet/user/EntryUser;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    :cond_9
    sget v0, Lcom/metamoji/noteanytime/R$id;->button_privacy:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiButton;

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/EntryUser;->m_policyButton:Lcom/metamoji/ui/common/UiButton;

    if-eqz v0, :cond_a

    .line 198
    new-instance v1, Lcom/metamoji/ui/cabinet/user/EntryUser$2;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/cabinet/user/EntryUser$2;-><init>(Lcom/metamoji/ui/cabinet/user/EntryUser;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    :cond_a
    sget v0, Lcom/metamoji/noteanytime/R$id;->button_go_entry:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiButton;

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/EntryUser;->m_entryButton:Lcom/metamoji/ui/common/UiButton;

    if-eqz v0, :cond_b

    .line 215
    new-instance v1, Lcom/metamoji/ui/cabinet/user/EntryUser$3;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/cabinet/user/EntryUser$3;-><init>(Lcom/metamoji/ui/cabinet/user/EntryUser;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    :cond_b
    sget v0, Lcom/metamoji/noteanytime/R$id;->button_cancel:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiButton;

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/EntryUser;->m_cancelButton:Lcom/metamoji/ui/common/UiButton;

    if-eqz v0, :cond_c

    .line 236
    new-instance v1, Lcom/metamoji/ui/cabinet/user/EntryUser$4;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/cabinet/user/EntryUser$4;-><init>(Lcom/metamoji/ui/cabinet/user/EntryUser;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    :cond_c
    invoke-static {}, Lcom/metamoji/nt/notify/NtSysInfoManager;->updateStateAsync()V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 0

    .line 277
    invoke-super {p0}, Lcom/metamoji/ui/dialog/UiDialog;->onDestroyView()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 268
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/UiDialog;->onDismiss(Landroid/content/DialogInterface;)V

    .line 269
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/EntryUser;->m_callback:Lcom/metamoji/cs/dc/CsShowRegisterDialogCallback;

    if-eqz p1, :cond_0

    .line 270
    invoke-virtual {p1}, Lcom/metamoji/cs/dc/CsShowRegisterDialogCallback;->OnDismiss_EntryUserTaskCallBack()V

    :cond_0
    return-void
.end method

.method public onDone(Landroid/view/View;)V
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/EntryUser;->m_callback:Lcom/metamoji/cs/dc/CsShowRegisterDialogCallback;

    invoke-virtual {v0}, Lcom/metamoji/cs/dc/CsShowRegisterDialogCallback;->OnDone_EntryUserTaskCallBack()V

    .line 254
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/UiDialog;->onDone(Landroid/view/View;)V

    return-void
.end method

.method public onHandleEntryResponseFail(Lcom/metamoji/cs/dc/response/CsRegisterResponse;)Z
    .locals 1

    const/4 v0, 0x1

    .line 351
    invoke-direct {p0, v0}, Lcom/metamoji/ui/cabinet/user/EntryUser;->setInputControlEnabled(Z)V

    .line 354
    invoke-static {p1}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils;->analiseCabinetUserError(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V

    return v0
.end method

.method public onHandleEntryResponseSuccess(Lcom/metamoji/cs/dc/response/CsRegisterResponse;)Z
    .locals 1

    .line 365
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/EntryUser;->_this:Lcom/metamoji/ui/cabinet/user/EntryUser;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/cabinet/user/EntryUser;->onDone(Landroid/view/View;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 117
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/UiDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    .line 119
    const-string v0, "reconstructdialogflag"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 121
    sget-object v0, Lcom/metamoji/ui/cabinet/user/EntryUser;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/EntryUser;->_param:Lcom/metamoji/ui/cabinet/user/EntryUser$EntryUserParam;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method public showDialog(Landroidx/fragment/app/FragmentManager;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 107
    const-string v0, "EntryUser"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/ui/cabinet/user/EntryUser;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
