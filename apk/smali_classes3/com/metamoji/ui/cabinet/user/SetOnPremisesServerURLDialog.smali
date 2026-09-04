.class public Lcom/metamoji/ui/cabinet/user/SetOnPremisesServerURLDialog;
.super Lcom/metamoji/ui/dialog/UiDialog;
.source "SetOnPremisesServerURLDialog.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final KEY_SERVERURL:Ljava/lang/String; = "serverurl"


# instance fields
.field private _serverURL:Ljava/lang/String;

.field private _txtServerURL:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/UiDialog;-><init>()V

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/SetOnPremisesServerURLDialog;->_serverURL:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getServerURL()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SetOnPremisesServerURLDialog;->_serverURL:Ljava/lang/String;

    return-object v0
.end method

.method public onCancel(Landroid/view/View;)V
    .locals 0

    .line 94
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/UiDialog;->onCancel(Landroid/view/View;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    if-eqz p1, :cond_0

    .line 42
    const-string/jumbo v0, "serverurl"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/SetOnPremisesServerURLDialog;->_serverURL:Ljava/lang/String;

    .line 45
    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$layout;->cabinet_dialog_set_onpremises_serverurl:I

    iput v0, p0, Lcom/metamoji/ui/cabinet/user/SetOnPremisesServerURLDialog;->mViewId:I

    .line 46
    sget v0, Lcom/metamoji/noteanytime/R$string;->ForBiz_Set_ServerUrl_Title:I

    iput v0, p0, Lcom/metamoji/ui/cabinet/user/SetOnPremisesServerURLDialog;->mTitleId:I

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/SetOnPremisesServerURLDialog;->mDone:Z

    .line 49
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/SetOnPremisesServerURLDialog;->mCancel:Z

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/SetOnPremisesServerURLDialog;->mClose:Z

    .line 52
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/UiDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    .line 55
    sget v0, Lcom/metamoji/noteanytime/R$id;->set_serverurl_txt_url:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/SetOnPremisesServerURLDialog;->_txtServerURL:Landroid/widget/EditText;

    .line 57
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/SetOnPremisesServerURLDialog;->_serverURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SetOnPremisesServerURLDialog;->_txtServerURL:Landroid/widget/EditText;

    new-instance v1, Lcom/metamoji/ui/cabinet/user/SetOnPremisesServerURLDialog$1;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/cabinet/user/SetOnPremisesServerURLDialog$1;-><init>(Lcom/metamoji/ui/cabinet/user/SetOnPremisesServerURLDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 70
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/cabinet/user/SetOnPremisesServerURLDialog;->restoreInstanceStateIfAvailable(Landroid/app/Dialog;)Z

    return-object p1
.end method

.method public onDone(Landroid/view/View;)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SetOnPremisesServerURLDialog;->_txtServerURL:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/SetOnPremisesServerURLDialog;->_serverURL:Ljava/lang/String;

    .line 83
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/UiDialog;->onDone(Landroid/view/View;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 106
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/UiDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 107
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SetOnPremisesServerURLDialog;->_txtServerURL:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "serverurl"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v0, "reconstructdialogflag"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setServerURL(Ljava/lang/String;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/SetOnPremisesServerURLDialog;->_serverURL:Ljava/lang/String;

    return-void
.end method
