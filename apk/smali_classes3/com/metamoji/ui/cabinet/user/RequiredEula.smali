.class public Lcom/metamoji/ui/cabinet/user/RequiredEula;
.super Lcom/metamoji/ui/dialog/UiDialog;
.source "RequiredEula.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/cabinet/user/RequiredEula$RequiredEulaParam;
    }
.end annotation


# static fields
.field public static TAG:Ljava/lang/String; = "RequiredEula"

.field public static final Tag_RequiredEula:Ljava/lang/String; = "RequiredEula"


# instance fields
.field _param:Lcom/metamoji/ui/cabinet/user/RequiredEula$RequiredEulaParam;

.field _this:Lcom/metamoji/ui/cabinet/user/RequiredEula;

.field m_YesButton:Lcom/metamoji/ui/common/UiButton;

.field m_aboutUsButton:Lcom/metamoji/ui/common/UiButton;

.field m_callback:Lcom/metamoji/cs/dc/CsShowRequiredEULADialogCallback;

.field m_noButton:Lcom/metamoji/ui/common/UiButton;

.field m_privacyButton:Lcom/metamoji/ui/common/UiButton;


# direct methods
.method static bridge synthetic -$$Nest$msetInputControlEnabled(Lcom/metamoji/ui/cabinet/user/RequiredEula;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/cabinet/user/RequiredEula;->setInputControlEnabled(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 78
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/UiDialog;-><init>()V

    .line 37
    new-instance v0, Lcom/metamoji/ui/cabinet/user/RequiredEula$RequiredEulaParam;

    invoke-direct {v0}, Lcom/metamoji/ui/cabinet/user/RequiredEula$RequiredEulaParam;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/RequiredEula;->_param:Lcom/metamoji/ui/cabinet/user/RequiredEula$RequiredEulaParam;

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/cs/dc/CsShowRequiredEULADialogCallback;)V
    .locals 1

    .line 84
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/UiDialog;-><init>()V

    .line 37
    new-instance v0, Lcom/metamoji/ui/cabinet/user/RequiredEula$RequiredEulaParam;

    invoke-direct {v0}, Lcom/metamoji/ui/cabinet/user/RequiredEula$RequiredEulaParam;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/RequiredEula;->_param:Lcom/metamoji/ui/cabinet/user/RequiredEula$RequiredEulaParam;

    .line 85
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/RequiredEula;->m_callback:Lcom/metamoji/cs/dc/CsShowRequiredEULADialogCallback;

    .line 86
    iput-object p1, v0, Lcom/metamoji/ui/cabinet/user/RequiredEula$RequiredEulaParam;->callback:Lcom/metamoji/cs/dc/CsShowRequiredEULADialogCallback;

    return-void
.end method

.method private setInputControlEnabled(Z)V
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/RequiredEula;->m_YesButton:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    .line 264
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/RequiredEula;->m_noButton:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    .line 265
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/RequiredEula;->m_aboutUsButton:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    .line 266
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/RequiredEula;->m_privacyButton:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/view/View;)V
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/RequiredEula;->m_callback:Lcom/metamoji/cs/dc/CsShowRequiredEULADialogCallback;

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/CsShowRequiredEULADialogCallback;->OnClickNoButton_RequiredEulaTaskCallBack()V

    .line 213
    :cond_0
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/UiDialog;->onCancel(Landroid/view/View;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    if-eqz p1, :cond_0

    .line 120
    sget-object v0, Lcom/metamoji/ui/cabinet/user/RequiredEula;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/cabinet/user/RequiredEula$RequiredEulaParam;

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/RequiredEula;->_param:Lcom/metamoji/ui/cabinet/user/RequiredEula$RequiredEulaParam;

    .line 123
    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_required_eula:I

    iput v0, p0, Lcom/metamoji/ui/cabinet/user/RequiredEula;->mViewId:I

    .line 124
    sget v0, Lcom/metamoji/noteanytime/R$string;->Cabinet_SystemOption_Eula_Confirm:I

    iput v0, p0, Lcom/metamoji/ui/cabinet/user/RequiredEula;->mTitleId:I

    const/4 v0, 0x0

    .line 125
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/RequiredEula;->mDone:Z

    .line 126
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/RequiredEula;->mCancel:Z

    .line 127
    iput-object p0, p0, Lcom/metamoji/ui/cabinet/user/RequiredEula;->_this:Lcom/metamoji/ui/cabinet/user/RequiredEula;

    .line 128
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/UiDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    .line 131
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/RequiredEula;->_param:Lcom/metamoji/ui/cabinet/user/RequiredEula$RequiredEulaParam;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/user/RequiredEula$RequiredEulaParam;->callback:Lcom/metamoji/cs/dc/CsShowRequiredEULADialogCallback;

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/RequiredEula;->m_callback:Lcom/metamoji/cs/dc/CsShowRequiredEULADialogCallback;

    .line 134
    sget v0, Lcom/metamoji/noteanytime/R$id;->button_policy:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiButton;

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/RequiredEula;->m_aboutUsButton:Lcom/metamoji/ui/common/UiButton;

    if-eqz v0, :cond_1

    .line 136
    new-instance v1, Lcom/metamoji/ui/cabinet/user/RequiredEula$1;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/cabinet/user/RequiredEula$1;-><init>(Lcom/metamoji/ui/cabinet/user/RequiredEula;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    :cond_1
    sget v0, Lcom/metamoji/noteanytime/R$id;->button_privacy:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiButton;

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/RequiredEula;->m_privacyButton:Lcom/metamoji/ui/common/UiButton;

    if-eqz v0, :cond_2

    .line 153
    new-instance v1, Lcom/metamoji/ui/cabinet/user/RequiredEula$2;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/cabinet/user/RequiredEula$2;-><init>(Lcom/metamoji/ui/cabinet/user/RequiredEula;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    :cond_2
    sget v0, Lcom/metamoji/noteanytime/R$id;->button_yes:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiButton;

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/RequiredEula;->m_YesButton:Lcom/metamoji/ui/common/UiButton;

    if-eqz v0, :cond_3

    .line 170
    new-instance v1, Lcom/metamoji/ui/cabinet/user/RequiredEula$3;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/cabinet/user/RequiredEula$3;-><init>(Lcom/metamoji/ui/cabinet/user/RequiredEula;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    :cond_3
    sget v0, Lcom/metamoji/noteanytime/R$id;->button_no:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiButton;

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/RequiredEula;->m_noButton:Lcom/metamoji/ui/common/UiButton;

    if-eqz v0, :cond_4

    .line 185
    new-instance v1, Lcom/metamoji/ui/cabinet/user/RequiredEula$4;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/cabinet/user/RequiredEula$4;-><init>(Lcom/metamoji/ui/cabinet/user/RequiredEula;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    :cond_4
    invoke-static {}, Lcom/metamoji/nt/notify/NtSysInfoManager;->updateStateAsync()V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 0

    .line 232
    invoke-super {p0}, Lcom/metamoji/ui/dialog/UiDialog;->onDestroyView()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 221
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/UiDialog;->onDismiss(Landroid/content/DialogInterface;)V

    .line 222
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/RequiredEula;->m_callback:Lcom/metamoji/cs/dc/CsShowRequiredEULADialogCallback;

    if-eqz p1, :cond_0

    .line 223
    invoke-virtual {p1}, Lcom/metamoji/cs/dc/CsShowRequiredEULADialogCallback;->OnDestroyView_RequiredEulaTaskCallBack()V

    :cond_0
    return-void
.end method

.method public onDone(Landroid/view/View;)V
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/RequiredEula;->m_callback:Lcom/metamoji/cs/dc/CsShowRequiredEULADialogCallback;

    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/CsShowRequiredEULADialogCallback;->OnDone_RequiredEulaTaskCallBack()V

    .line 205
    :cond_0
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/UiDialog;->onDone(Landroid/view/View;)V

    return-void
.end method

.method public onHandleAgreeEulaResponseFail(Lcom/metamoji/cs/dc/response/CsAgreeEulaResponse;)Z
    .locals 1

    const/4 v0, 0x1

    .line 242
    invoke-direct {p0, v0}, Lcom/metamoji/ui/cabinet/user/RequiredEula;->setInputControlEnabled(Z)V

    .line 243
    invoke-static {p1}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils;->analiseCabinetUserError(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V

    return v0
.end method

.method public onHandleAgreeEulaResponseSuccess(Lcom/metamoji/cs/dc/response/CsAgreeEulaResponse;)Z
    .locals 0

    .line 253
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/RequiredEula;->m_YesButton:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/cabinet/user/RequiredEula;->onDone(Landroid/view/View;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 271
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/UiDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 272
    sget-object v0, Lcom/metamoji/ui/cabinet/user/RequiredEula;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/RequiredEula;->_param:Lcom/metamoji/ui/cabinet/user/RequiredEula$RequiredEulaParam;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-eqz p1, :cond_0

    .line 274
    const-string v0, "canceldialogflag"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public showDialog(Landroidx/fragment/app/FragmentManager;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 94
    const-string v0, "RequiredEula"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/ui/cabinet/user/RequiredEula;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
