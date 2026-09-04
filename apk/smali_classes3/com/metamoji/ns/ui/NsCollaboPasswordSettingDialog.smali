.class public Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "NsCollaboPasswordSettingDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog$IChangePasswordAction;
    }
.end annotation


# static fields
.field private static final PASSWORD_DUMMY:Ljava/lang/String; = "\u25cf\u25cf\u25cf\u25cf\u25cf\u25cf\u25cf\u25cf\u25cf\u25cf"


# instance fields
.field public m_changePasswordAction:Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog$IChangePasswordAction;

.field m_passwordCheckBox:Landroid/widget/CheckBox;

.field m_passwordHash:Ljava/lang/String;

.field m_passwordText:Landroid/widget/EditText;

.field m_savePasswordCheck:Ljava/lang/Boolean;

.field m_savedPassword:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog;->m_passwordHash:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog;->m_savePasswordCheck:Ljava/lang/Boolean;

    .line 68
    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog;->m_savedPassword:Ljava/lang/String;

    return-void
.end method

.method static synthetic lambda$onDone$0(Lcom/metamoji/lib/dialog/UtDialog;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    if-nez p1, :cond_0

    .line 221
    sget-object p0, Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog;->logger:Lcom/metamoji/lib/utils/UtLog;

    const-string p1, "cancelled"

    invoke-virtual {p0, p1}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 223
    :cond_0
    check-cast p0, Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog;

    .line 224
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog;->m_changePasswordAction:Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog$IChangePasswordAction;

    if-eqz v0, :cond_1

    .line 225
    invoke-interface {v0, p1}, Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog$IChangePasswordAction;->action(Ljava/lang/String;)V

    .line 227
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog;->onPositive()V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog;->mV4Compatible:Z

    .line 76
    iget v1, p0, Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog;->mViewId:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    if-eqz p3, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v3

    .line 82
    :goto_0
    invoke-virtual {p0, v0}, Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog;->setModal(Z)V

    .line 84
    invoke-virtual {p0, v3}, Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog;->setCancelable(Z)V

    .line 86
    sget v2, Lcom/metamoji/noteanytime/R$layout;->dialog_collabo_password_setting:I

    iput v2, p0, Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog;->mViewId:I

    .line 87
    sget v2, Lcom/metamoji/noteanytime/R$string;->CreateShareNoteDlg_Btn_Password:I

    iput v2, p0, Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog;->mTitleId:I

    .line 88
    iput-boolean v0, p0, Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog;->mDone:Z

    .line 89
    iput-boolean v0, p0, Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog;->mCancel:Z

    .line 90
    iput-boolean v3, p0, Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog;->mBack:Z

    .line 92
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog;->enableAutoDetectTextViewMode()V

    .line 93
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    if-eqz v1, :cond_1

    return-object p1

    .line 101
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/4 p3, 0x3

    invoke-virtual {p2, p3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 103
    sget p2, Lcom/metamoji/noteanytime/R$id;->dlg_docinfo_pass_chk:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog;->m_passwordCheckBox:Landroid/widget/CheckBox;

    .line 106
    invoke-virtual {p2}, Landroid/widget/CheckBox;->requestFocus()Z

    .line 108
    sget p2, Lcom/metamoji/noteanytime/R$id;->dlg_docinfo_pass_edit:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog;->m_passwordText:Landroid/widget/EditText;

    .line 109
    new-instance p3, Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog$1;

    invoke-direct {p3, p0}, Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog$1;-><init>(Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog;)V

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 126
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog;->m_passwordText:Landroid/widget/EditText;

    new-instance p3, Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog$2;

    invoke-direct {p3, p0}, Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog$2;-><init>(Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog;)V

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 140
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog;->m_passwordHash:Ljava/lang/String;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_2

    move v3, v0

    .line 141
    :cond_2
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog;->m_passwordText:Landroid/widget/EditText;

    const/4 p3, 0x0

    if-eqz v3, :cond_3

    const-string/jumbo v1, "\u25cf\u25cf\u25cf\u25cf\u25cf\u25cf\u25cf\u25cf\u25cf\u25cf"

    goto :goto_1

    :cond_3
    move-object v1, p3

    :goto_1
    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    if-nez v3, :cond_4

    .line 144
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog;->m_savePasswordCheck:Ljava/lang/Boolean;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 145
    :cond_4
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog;->m_passwordCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 146
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog;->m_passwordText:Landroid/widget/EditText;

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 148
    :cond_5
    iput-object p3, p0, Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog;->m_savePasswordCheck:Ljava/lang/Boolean;

    .line 151
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog;->m_savedPassword:Ljava/lang/String;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_6

    .line 152
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog;->m_passwordText:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog;->m_savedPassword:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog;->m_passwordText:Landroid/widget/EditText;

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 156
    :cond_6
    iput-object p3, p0, Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog;->m_savedPassword:Ljava/lang/String;

    .line 159
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog;->m_passwordCheckBox:Landroid/widget/CheckBox;

    new-instance p3, Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog$3;

    invoke-direct {p3, p0}, Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog$3;-><init>(Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog;)V

    invoke-virtual {p2, p3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-object p1
.end method

.method public onDone(Landroid/view/View;)V
    .locals 4

    .line 207
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog;->m_passwordCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 210
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog;->m_passwordText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 211
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 218
    :cond_0
    new-instance p1, Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, ""

    invoke-static {p0, v1, v0, v2, p1}, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog;->inputAndVerifyPassword(Lcom/metamoji/lib/dialog/UtDialog;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)V

    return-void

    .line 212
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog;->m_passwordHash:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 213
    sget p1, Lcom/metamoji/noteanytime/R$string;->Password_Error_Empty:I

    invoke-static {p1, v2, v1}, Lcom/metamoji/cm/CmUtils;->confirmDialog(IILandroid/content/DialogInterface$OnClickListener;)V

    .line 214
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog;->m_passwordText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    return-void

    .line 257
    :cond_2
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog;->m_changePasswordAction:Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog$IChangePasswordAction;

    if-eqz v0, :cond_3

    .line 258
    invoke-interface {v0, v1}, Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog$IChangePasswordAction;->action(Ljava/lang/String;)V

    .line 262
    :cond_3
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onDone(Landroid/view/View;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 195
    new-instance v0, Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog;->m_passwordCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog;->m_savePasswordCheck:Ljava/lang/Boolean;

    .line 196
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog;->m_passwordText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog;->m_savedPassword:Ljava/lang/String;

    .line 198
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
