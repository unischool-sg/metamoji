.class public Lcom/metamoji/ui/cabinet/user/ChangePassword;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "ChangePassword.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/cabinet/user/ChangePassword$ChangePasswordParam;,
        Lcom/metamoji/ui/cabinet/user/ChangePassword$ChangePasswordCallback;,
        Lcom/metamoji/ui/cabinet/user/ChangePassword$ForgotPassCallback;
    }
.end annotation


# static fields
.field public static TAG:Ljava/lang/String; = "ChangePassword"


# instance fields
.field _param:Lcom/metamoji/ui/cabinet/user/ChangePassword$ChangePasswordParam;

.field _this:Lcom/metamoji/ui/cabinet/user/ChangePassword;

.field m_entryButton:Lcom/metamoji/ui/common/UiButton;

.field m_forgotPassButton:Landroid/widget/TextView;

.field m_newPassword:Landroid/widget/EditText;

.field m_newPasswordConfirm:Landroid/widget/EditText;

.field m_nowPassword:Landroid/widget/EditText;


# direct methods
.method static bridge synthetic -$$Nest$mcheckInput(Lcom/metamoji/ui/cabinet/user/ChangePassword;)Z
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/user/ChangePassword;->checkInput()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetInputControlEnabled(Lcom/metamoji/ui/cabinet/user/ChangePassword;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/cabinet/user/ChangePassword;->setInputControlEnabled(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 107
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    .line 55
    new-instance v0, Lcom/metamoji/ui/cabinet/user/ChangePassword$ChangePasswordParam;

    invoke-direct {v0}, Lcom/metamoji/ui/cabinet/user/ChangePassword$ChangePasswordParam;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/ChangePassword;->_param:Lcom/metamoji/ui/cabinet/user/ChangePassword$ChangePasswordParam;

    return-void
.end method

.method private checkInput()Z
    .locals 3

    .line 250
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/ChangePassword;->m_nowPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 251
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/ChangePassword;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/metamoji/noteanytime/R$string;->Cabinet_User_Msg_Register_Input_Password:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->showMsgDialog(Ljava/lang/String;)V

    return v1

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/ChangePassword;->m_newPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 257
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/ChangePassword;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/metamoji/noteanytime/R$string;->Cabinet_User_Msg_Register_Input_Password:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->showMsgDialog(Ljava/lang/String;)V

    return v1

    .line 261
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/ChangePassword;->m_newPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    const/16 v2, 0x8

    if-lt v0, v2, :cond_4

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/ChangePassword;->m_newPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    const/16 v2, 0x40

    if-le v0, v2, :cond_2

    goto :goto_0

    .line 268
    :cond_2
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/ChangePassword;->m_newPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/metamoji/ui/cabinet/user/ChangePassword;->m_newPasswordConfirm:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 269
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/ChangePassword;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/metamoji/noteanytime/R$string;->Cabinet_User_Msg_Failed_Password:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->showMsgDialog(Ljava/lang/String;)V

    return v1

    :cond_3
    const/4 v0, 0x1

    return v0

    .line 262
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/ChangePassword;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/metamoji/noteanytime/R$string;->Cabinet_User_New_Pass:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->showMsgDialog(Ljava/lang/String;)V

    return v1
.end method

.method private setInputControlEnabled(Z)V
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/ChangePassword;->m_nowPassword:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 284
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/ChangePassword;->m_newPassword:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 285
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/ChangePassword;->m_newPasswordConfirm:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 286
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/ChangePassword;->m_entryButton:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    .line 287
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/ChangePassword;->m_forgotPassButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    if-eqz p3, :cond_0

    .line 122
    sget-object v0, Lcom/metamoji/ui/cabinet/user/ChangePassword;->TAG:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/cabinet/user/ChangePassword$ChangePasswordParam;

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/ChangePassword;->_param:Lcom/metamoji/ui/cabinet/user/ChangePassword$ChangePasswordParam;

    .line 125
    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_systemoption_changepassword:I

    iput v0, p0, Lcom/metamoji/ui/cabinet/user/ChangePassword;->mViewId:I

    .line 126
    sget v0, Lcom/metamoji/noteanytime/R$string;->SystemOption_CabinetUser_ChangePassword:I

    iput v0, p0, Lcom/metamoji/ui/cabinet/user/ChangePassword;->mTitleId:I

    const/4 v0, 0x0

    .line 127
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/ChangePassword;->mDone:Z

    .line 128
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/ChangePassword;->mCancel:Z

    const/4 v0, 0x1

    .line 129
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/ChangePassword;->mBack:Z

    .line 130
    iput-object p0, p0, Lcom/metamoji/ui/cabinet/user/ChangePassword;->_this:Lcom/metamoji/ui/cabinet/user/ChangePassword;

    .line 132
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 136
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/user/ChangePassword;->_param:Lcom/metamoji/ui/cabinet/user/ChangePassword$ChangePasswordParam;

    iget-object p2, p2, Lcom/metamoji/ui/cabinet/user/ChangePassword$ChangePasswordParam;->nowPassword:Ljava/lang/String;

    const-string p3, ""

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/metamoji/ui/cabinet/user/ChangePassword;->_param:Lcom/metamoji/ui/cabinet/user/ChangePassword$ChangePasswordParam;

    iget-object p2, p2, Lcom/metamoji/ui/cabinet/user/ChangePassword$ChangePasswordParam;->nowPassword:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object p2, p3

    .line 137
    :goto_0
    sget v0, Lcom/metamoji/noteanytime/R$id;->EditText_Now_Password:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/ChangePassword;->m_nowPassword:Landroid/widget/EditText;

    const/16 v1, 0x81

    if-eqz v0, :cond_2

    .line 139
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 140
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/ChangePassword;->m_nowPassword:Landroid/widget/EditText;

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/user/ChangePassword;->m_nowPassword:Landroid/widget/EditText;

    new-instance v0, Lcom/metamoji/ui/cabinet/user/ChangePassword$1;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/cabinet/user/ChangePassword$1;-><init>(Lcom/metamoji/ui/cabinet/user/ChangePassword;)V

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 153
    :cond_2
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/user/ChangePassword;->_param:Lcom/metamoji/ui/cabinet/user/ChangePassword$ChangePasswordParam;

    iget-object p2, p2, Lcom/metamoji/ui/cabinet/user/ChangePassword$ChangePasswordParam;->newPassword:Ljava/lang/String;

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/metamoji/ui/cabinet/user/ChangePassword;->_param:Lcom/metamoji/ui/cabinet/user/ChangePassword$ChangePasswordParam;

    iget-object p2, p2, Lcom/metamoji/ui/cabinet/user/ChangePassword$ChangePasswordParam;->newPassword:Ljava/lang/String;

    goto :goto_1

    :cond_3
    move-object p2, p3

    .line 154
    :goto_1
    sget v0, Lcom/metamoji/noteanytime/R$id;->EditText_New_Password:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/ChangePassword;->m_newPassword:Landroid/widget/EditText;

    if-eqz v0, :cond_4

    .line 156
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 157
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/ChangePassword;->m_newPassword:Landroid/widget/EditText;

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/user/ChangePassword;->m_newPassword:Landroid/widget/EditText;

    new-instance v0, Lcom/metamoji/ui/cabinet/user/ChangePassword$2;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/cabinet/user/ChangePassword$2;-><init>(Lcom/metamoji/ui/cabinet/user/ChangePassword;)V

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 170
    :cond_4
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/user/ChangePassword;->_param:Lcom/metamoji/ui/cabinet/user/ChangePassword$ChangePasswordParam;

    iget-object p2, p2, Lcom/metamoji/ui/cabinet/user/ChangePassword$ChangePasswordParam;->newPasswordConfirm:Ljava/lang/String;

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/metamoji/ui/cabinet/user/ChangePassword;->_param:Lcom/metamoji/ui/cabinet/user/ChangePassword$ChangePasswordParam;

    iget-object p3, p2, Lcom/metamoji/ui/cabinet/user/ChangePassword$ChangePasswordParam;->newPasswordConfirm:Ljava/lang/String;

    .line 171
    :cond_5
    sget p2, Lcom/metamoji/noteanytime/R$id;->EditText_New_Password_Confirm:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/user/ChangePassword;->m_newPasswordConfirm:Landroid/widget/EditText;

    if-eqz p2, :cond_6

    .line 173
    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 174
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/user/ChangePassword;->m_newPasswordConfirm:Landroid/widget/EditText;

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/user/ChangePassword;->m_newPasswordConfirm:Landroid/widget/EditText;

    new-instance p3, Lcom/metamoji/ui/cabinet/user/ChangePassword$3;

    invoke-direct {p3, p0}, Lcom/metamoji/ui/cabinet/user/ChangePassword$3;-><init>(Lcom/metamoji/ui/cabinet/user/ChangePassword;)V

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 188
    :cond_6
    sget p2, Lcom/metamoji/noteanytime/R$id;->button_changepassword:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButton;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/user/ChangePassword;->m_entryButton:Lcom/metamoji/ui/common/UiButton;

    if-eqz p2, :cond_7

    .line 190
    new-instance p3, Lcom/metamoji/ui/cabinet/user/ChangePassword$4;

    invoke-direct {p3, p0}, Lcom/metamoji/ui/cabinet/user/ChangePassword$4;-><init>(Lcom/metamoji/ui/cabinet/user/ChangePassword;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    :cond_7
    sget p2, Lcom/metamoji/noteanytime/R$id;->dlg_chgpass_forget_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/user/ChangePassword;->m_forgotPassButton:Landroid/widget/TextView;

    if-eqz p2, :cond_8

    const/16 p3, 0x8

    .line 213
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_8
    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 237
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 238
    sget-object v0, Lcom/metamoji/ui/cabinet/user/ChangePassword;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/ChangePassword;->_param:Lcom/metamoji/ui/cabinet/user/ChangePassword$ChangePasswordParam;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 239
    sget-object v0, Lcom/metamoji/ui/cabinet/user/ChangePassword;->Key_ReconstructDialogFlag:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
