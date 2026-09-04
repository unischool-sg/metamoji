.class public Lcom/metamoji/ui/dialog/DocumentPassword;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "DocumentPassword.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final KEY_ISCHECKED:Ljava/lang/String; = "ischecked"

.field private static final KEY_PASSWORD:Ljava/lang/String; = "password"

.field private static final KEY_PASSWORD_HASH:Ljava/lang/String; = "passwordHash"


# instance fields
.field private _chkPassword:Landroid/widget/CheckBox;

.field private _passwordHash:Ljava/lang/String;

.field private _txtPassword:Landroid/widget/EditText;


# direct methods
.method static bridge synthetic -$$Nest$fget_chkPassword(Lcom/metamoji/ui/dialog/DocumentPassword;)Landroid/widget/CheckBox;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/dialog/DocumentPassword;->_chkPassword:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_txtPassword(Lcom/metamoji/ui/dialog/DocumentPassword;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/dialog/DocumentPassword;->_txtPassword:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fput_passwordHash(Lcom/metamoji/ui/dialog/DocumentPassword;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/ui/dialog/DocumentPassword;->_passwordHash:Ljava/lang/String;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    return-void
.end method

.method static synthetic lambda$onDone$0(Lcom/metamoji/lib/dialog/UtDialog;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    if-nez p1, :cond_0

    .line 156
    sget-object p0, Lcom/metamoji/ui/dialog/DocumentPassword;->logger:Lcom/metamoji/lib/utils/UtLog;

    const-string p1, "cancelled"

    invoke-virtual {p0, p1}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 158
    :cond_0
    check-cast p0, Lcom/metamoji/ui/dialog/DocumentPassword;

    .line 159
    invoke-static {p1}, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog;->getHashedPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-direct {p0, p1, v0}, Lcom/metamoji/ui/dialog/DocumentPassword;->setReturnPassword(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/DocumentPassword;->onPositive()V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private setReturnPassword(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 247
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/UiCurrentActivityManager;->getCurrentActivityOrNull()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 249
    sget-object v1, Lcom/metamoji/lib/dialog/UtDialogHelper;->INSTANCE:Lcom/metamoji/lib/dialog/UtDialogHelper;

    const-string v2, "DocumentSettings2"

    invoke-virtual {v1, v0, v2}, Lcom/metamoji/lib/dialog/UtDialogHelper;->findDialog(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)Lcom/metamoji/lib/dialog/UtDialog;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/dialog/DocumentSettings2;

    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {v0, p1, p2}, Lcom/metamoji/ui/dialog/DocumentSettings2;->setReturnPassword(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/view/View;)V
    .locals 0

    .line 179
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onCancel(Landroid/view/View;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    if-eqz p3, :cond_0

    .line 64
    const-string v0, "ischecked"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 65
    const-string v1, "password"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    const-string v2, "passwordHash"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/metamoji/ui/dialog/DocumentPassword;->_passwordHash:Ljava/lang/String;

    .line 70
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 71
    iget-object v1, p0, Lcom/metamoji/ui/dialog/DocumentPassword;->_passwordHash:Ljava/lang/String;

    goto :goto_1

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentPassword;->_passwordHash:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 76
    :goto_0
    iget-object v1, p0, Lcom/metamoji/ui/dialog/DocumentPassword;->_passwordHash:Ljava/lang/String;

    .line 79
    :cond_2
    :goto_1
    sget v2, Lcom/metamoji/noteanytime/R$layout;->dialog_doc_password:I

    iput v2, p0, Lcom/metamoji/ui/dialog/DocumentPassword;->mViewId:I

    .line 80
    sget v2, Lcom/metamoji/noteanytime/R$string;->Password_Title:I

    iput v2, p0, Lcom/metamoji/ui/dialog/DocumentPassword;->mTitleId:I

    .line 82
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/DocumentPassword;->enableAutoDetectTextViewMode()V

    .line 83
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 85
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/DocumentPassword;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/4 p3, 0x3

    invoke-virtual {p2, p3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 87
    sget p2, Lcom/metamoji/noteanytime/R$id;->dlg_doc_password_chk:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/DocumentPassword;->_chkPassword:Landroid/widget/CheckBox;

    .line 88
    sget p2, Lcom/metamoji/noteanytime/R$id;->dlg_doc_password_txt:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/DocumentPassword;->_txtPassword:Landroid/widget/EditText;

    if-eqz v1, :cond_3

    .line 92
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_3

    .line 94
    iget-object p2, p0, Lcom/metamoji/ui/dialog/DocumentPassword;->_txtPassword:Landroid/widget/EditText;

    const-string/jumbo p3, "\u25cf\u25cf\u25cf\u25cf\u25cf\u25cf\u25cf\u25cf\u25cf\u25cf"

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 97
    :cond_3
    iget-object p2, p0, Lcom/metamoji/ui/dialog/DocumentPassword;->_chkPassword:Landroid/widget/CheckBox;

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 98
    iget-object p2, p0, Lcom/metamoji/ui/dialog/DocumentPassword;->_txtPassword:Landroid/widget/EditText;

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 103
    iget-object p2, p0, Lcom/metamoji/ui/dialog/DocumentPassword;->_chkPassword:Landroid/widget/CheckBox;

    invoke-virtual {p2}, Landroid/widget/CheckBox;->requestFocus()Z

    .line 105
    iget-object p2, p0, Lcom/metamoji/ui/dialog/DocumentPassword;->_txtPassword:Landroid/widget/EditText;

    new-instance p3, Lcom/metamoji/ui/dialog/DocumentPassword$1;

    invoke-direct {p3, p0}, Lcom/metamoji/ui/dialog/DocumentPassword$1;-><init>(Lcom/metamoji/ui/dialog/DocumentPassword;)V

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 117
    iget-object p2, p0, Lcom/metamoji/ui/dialog/DocumentPassword;->_chkPassword:Landroid/widget/CheckBox;

    new-instance p3, Lcom/metamoji/ui/dialog/DocumentPassword$2;

    invoke-direct {p3, p0}, Lcom/metamoji/ui/dialog/DocumentPassword$2;-><init>(Lcom/metamoji/ui/dialog/DocumentPassword;)V

    invoke-virtual {p2, p3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 134
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/dialog/DocumentPassword;->restoreInstanceStateIfAvailable(Landroid/view/View;)Z

    return-object p1
.end method

.method public onDone(Landroid/view/View;)V
    .locals 4

    .line 141
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentPassword;->_chkPassword:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 143
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentPassword;->_txtPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 146
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 154
    :cond_0
    new-instance p1, Lcom/metamoji/ui/dialog/DocumentPassword$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/metamoji/ui/dialog/DocumentPassword$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, ""

    invoke-static {p0, v1, v0, v2, p1}, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog;->inputAndVerifyPassword(Lcom/metamoji/lib/dialog/UtDialog;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)V

    return-void

    .line 147
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentPassword;->_passwordHash:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 148
    sget p1, Lcom/metamoji/noteanytime/R$string;->Password_Error_Empty:I

    invoke-static {p1, v2, v1}, Lcom/metamoji/cm/CmUtils;->confirmDialog(IILandroid/content/DialogInterface$OnClickListener;)V

    .line 149
    iget-object p1, p0, Lcom/metamoji/ui/dialog/DocumentPassword;->_txtPassword:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    return-void

    .line 170
    :cond_2
    invoke-direct {p0, v1, v1}, Lcom/metamoji/ui/dialog/DocumentPassword;->setReturnPassword(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_3
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onDone(Landroid/view/View;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 184
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 185
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentPassword;->_chkPassword:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    const-string v1, "ischecked"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 186
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentPassword;->_txtPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "password"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string v0, "passwordHash"

    iget-object v1, p0, Lcom/metamoji/ui/dialog/DocumentPassword;->_passwordHash:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    sget-object v0, Lcom/metamoji/ui/dialog/DocumentPassword;->Key_ReconstructDialogFlag:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setPasswordHash(Ljava/lang/String;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/metamoji/ui/dialog/DocumentPassword;->_passwordHash:Ljava/lang/String;

    return-void
.end method
