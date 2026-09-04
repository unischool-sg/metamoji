.class public Lcom/metamoji/lc/ui/LicenseKeyDialog;
.super Lcom/metamoji/ui/dialog/UiDialog;
.source "LicenseKeyDialog.java"


# instance fields
.field private mLicense:Lcom/metamoji/lc/LicenseUtil;

.field private mPassword:Ljava/lang/String;

.field private mStatus:Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;

.field private mUserid:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmLicense(Lcom/metamoji/lc/ui/LicenseKeyDialog;)Lcom/metamoji/lc/LicenseUtil;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/lc/ui/LicenseKeyDialog;->mLicense:Lcom/metamoji/lc/LicenseUtil;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmLicense(Lcom/metamoji/lc/ui/LicenseKeyDialog;Lcom/metamoji/lc/LicenseUtil;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/lc/ui/LicenseKeyDialog;->mLicense:Lcom/metamoji/lc/LicenseUtil;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmStatus(Lcom/metamoji/lc/ui/LicenseKeyDialog;Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/lc/ui/LicenseKeyDialog;->mStatus:Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreatePasswordForUserId(Lcom/metamoji/lc/ui/LicenseKeyDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/lc/ui/LicenseKeyDialog;->createPasswordForUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/UiDialog;-><init>()V

    .line 25
    sget-object v0, Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;->NoRegistryKey:Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;

    iput-object v0, p0, Lcom/metamoji/lc/ui/LicenseKeyDialog;->mStatus:Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/metamoji/lc/ui/LicenseKeyDialog;->mUserid:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/metamoji/lc/ui/LicenseKeyDialog;->mPassword:Ljava/lang/String;

    return-void
.end method

.method private createPasswordForUserId(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 46
    invoke-static {p1}, Lcom/metamoji/lc/StringUtil;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x3

    .line 48
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    const/16 v0, 0xd

    .line 49
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    const/16 v0, 0x13

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    const/16 v0, 0x17

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    move-result-object p1

    .line 47
    const-string v0, "%c%c%c%c%c%c%c%c"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static showLicenseInputDialog(Landroid/content/Context;Lcom/metamoji/lc/LicenseUtil;Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;)V
    .locals 1

    .line 31
    new-instance v0, Lcom/metamoji/lc/ui/LicenseKeyDialog$1;

    invoke-direct {v0, p2, p1}, Lcom/metamoji/lc/ui/LicenseKeyDialog$1;-><init>(Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;Lcom/metamoji/lc/LicenseUtil;)V

    invoke-static {v0, p0}, Lcom/metamoji/lc/LicenseUtil;->runOnUiThread(Ljava/lang/Runnable;Landroid/content/Context;)V

    const/4 p0, 0x1

    .line 41
    invoke-static {p0}, Lcom/metamoji/lc/LicenseChecker;->stopLicenseChechkTask(Z)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/view/View;)V
    .locals 0

    .line 197
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/UiDialog;->onCancel(Landroid/view/View;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8

    .line 55
    sget v0, Lcom/metamoji/noteanytime/R$layout;->licensekey_input_dialog:I

    iput v0, p0, Lcom/metamoji/lc/ui/LicenseKeyDialog;->mViewId:I

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/metamoji/lc/ui/LicenseKeyDialog;->mDone:Z

    .line 57
    iput-boolean v0, p0, Lcom/metamoji/lc/ui/LicenseKeyDialog;->mCancel:Z

    .line 58
    iput-boolean v0, p0, Lcom/metamoji/lc/ui/LicenseKeyDialog;->mBack:Z

    .line 59
    iput-boolean v0, p0, Lcom/metamoji/lc/ui/LicenseKeyDialog;->mClose:Z

    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Lcom/metamoji/lc/ui/LicenseKeyDialog;->mDoneOnTouchOutsize:Z

    .line 61
    sget v1, Lcom/metamoji/noteanytime/R$string;->lisence_title_input_licensekey:I

    iput v1, p0, Lcom/metamoji/lc/ui/LicenseKeyDialog;->mTitleId:I

    .line 62
    new-instance v1, Lcom/metamoji/lc/ui/LicenseKeyDialog$2;

    invoke-direct {v1, p0}, Lcom/metamoji/lc/ui/LicenseKeyDialog$2;-><init>(Lcom/metamoji/lc/ui/LicenseKeyDialog;)V

    invoke-virtual {p0, v1}, Lcom/metamoji/lc/ui/LicenseKeyDialog;->setPreCloseConfirmListener(Lcom/metamoji/ui/dialog/UiDialog$IPreCloseConfirm;)V

    .line 68
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/UiDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v7

    .line 70
    sget v1, Lcom/metamoji/noteanytime/R$id;->editUserId:I

    invoke-virtual {v7, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/EditText;

    .line 71
    sget v1, Lcom/metamoji/noteanytime/R$id;->editPassword:I

    invoke-virtual {v7, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/EditText;

    if-eqz p1, :cond_1

    .line 74
    const-string v1, "userid"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 75
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 76
    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 78
    :cond_0
    const-string v2, "password"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 79
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 80
    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 83
    :cond_1
    iget-object p1, p0, Lcom/metamoji/lc/ui/LicenseKeyDialog;->mUserid:Ljava/lang/String;

    invoke-virtual {v4, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object p1, p0, Lcom/metamoji/lc/ui/LicenseKeyDialog;->mPassword:Ljava/lang/String;

    invoke-virtual {v5, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 91
    :cond_2
    :goto_0
    sget p1, Lcom/metamoji/noteanytime/R$id;->license_login_button:I

    invoke-virtual {v7, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Lcom/metamoji/ui/common/UiButton;

    .line 92
    new-instance v2, Lcom/metamoji/lc/ui/LicenseKeyDialog$3;

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/metamoji/lc/ui/LicenseKeyDialog$3;-><init>(Lcom/metamoji/lc/ui/LicenseKeyDialog;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/metamoji/ui/common/UiButton;Landroid/app/Dialog;)V

    invoke-virtual {v6, v2}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    sget p1, Lcom/metamoji/noteanytime/R$id;->licenseinput_message:I

    invoke-virtual {v7, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 163
    sget-object v1, Lcom/metamoji/lc/ui/LicenseKeyDialog$4;->$SwitchMap$com$metamoji$lc$LicenseUtil$ExpirationStatus:[I

    iget-object v2, v3, Lcom/metamoji/lc/ui/LicenseKeyDialog;->mStatus:Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;

    invoke-virtual {v2}, Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    if-eq v1, v0, :cond_3

    .line 169
    sget v0, Lcom/metamoji/noteanytime/R$string;->dialog_msg_input_licensekey_purchase_extend_and_inputkey:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    return-object v7

    .line 165
    :cond_3
    sget v0, Lcom/metamoji/noteanytime/R$string;->dialog_msg_input_licensekey_purchase_new:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    return-object v7
.end method

.method public onDone(Landroid/view/View;)V
    .locals 0

    .line 192
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/UiDialog;->onDone(Landroid/view/View;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 179
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/UiDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 181
    invoke-virtual {p0}, Lcom/metamoji/lc/ui/LicenseKeyDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 182
    sget v1, Lcom/metamoji/noteanytime/R$id;->editUserId:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 183
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/lc/ui/LicenseKeyDialog;->mUserid:Ljava/lang/String;

    .line 184
    const-string v2, "userid"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    sget v1, Lcom/metamoji/noteanytime/R$id;->editPassword:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 186
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/lc/ui/LicenseKeyDialog;->mPassword:Ljava/lang/String;

    .line 187
    const-string v1, "password"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
