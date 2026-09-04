.class public Lcom/metamoji/ui/dialog/SystemOption_Whats;
.super Lcom/metamoji/ui/dialog/UiDialog;
.source "SystemOption_Whats.java"


# direct methods
.method static bridge synthetic -$$Nest$mjumpURL(Lcom/metamoji/ui/dialog/SystemOption_Whats;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/dialog/SystemOption_Whats;->jumpURL(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/UiDialog;-><init>()V

    return-void
.end method

.method private jumpURL(Ljava/lang/String;I)V
    .locals 3

    .line 101
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/SystemOption_Whats;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "SystemOption_AboutUs"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 107
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/notify/NtSysInfoManager;->GetState()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    .line 124
    invoke-static {p1}, Lcom/metamoji/nt/notify/NtSysInfoManager;->GetStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 125
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 126
    new-instance v0, Lcom/metamoji/ui/dialog/PreviewView;

    invoke-direct {v0}, Lcom/metamoji/ui/dialog/PreviewView;-><init>()V

    const/4 v2, 0x1

    .line 127
    invoke-virtual {v0, v2}, Lcom/metamoji/ui/dialog/PreviewView;->setHeaderButton(Z)V

    .line 128
    invoke-virtual {v0, p2}, Lcom/metamoji/ui/dialog/PreviewView;->setTitle(I)V

    .line 129
    invoke-virtual {v0, p1}, Lcom/metamoji/ui/dialog/PreviewView;->setUrl(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/SystemOption_Whats;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/ui/dialog/PreviewView;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    .line 111
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/SystemOption_Whats;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->createAlertDialog(Landroidx/fragment/app/FragmentActivity;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 112
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/SystemOption_Whats;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 113
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 114
    sget p2, Lcom/metamoji/noteanytime/R$string;->AnytimeNotify_Dialog_Msg_Offline:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 115
    sget p2, Lcom/metamoji/noteanytime/R$string;->Msg_OK:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 117
    new-instance p2, Lcom/metamoji/ui/dialog/UiAlertDialog;

    invoke-direct {p2, p1}, Lcom/metamoji/ui/dialog/UiAlertDialog;-><init>(Landroidx/appcompat/app/AlertDialog$Builder;)V

    .line 118
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/SystemOption_Whats;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p2, p1, v1}, Lcom/metamoji/ui/dialog/UiAlertDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/view/View;)V
    .locals 0

    .line 96
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/UiDialog;->onCancel(Landroid/view/View;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 20
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_systemoption_whats:I

    iput v0, p0, Lcom/metamoji/ui/dialog/SystemOption_Whats;->mViewId:I

    .line 21
    sget v0, Lcom/metamoji/noteanytime/R$string;->MMJID_INFO_DLG_ABOUT_BTN:I

    iput v0, p0, Lcom/metamoji/ui/dialog/SystemOption_Whats;->mTitleId:I

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/SystemOption_Whats;->mDone:Z

    .line 23
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/SystemOption_Whats;->mCancel:Z

    const/4 v1, 0x1

    .line 24
    iput-boolean v1, p0, Lcom/metamoji/ui/dialog/SystemOption_Whats;->mBack:Z

    .line 25
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/SystemOption_Whats;->mClose:Z

    .line 27
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/UiDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    .line 30
    sget v0, Lcom/metamoji/noteanytime/R$id;->button_cabinetuser_term:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiButton;

    if-eqz v0, :cond_0

    .line 32
    new-instance v1, Lcom/metamoji/ui/dialog/SystemOption_Whats$1;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/dialog/SystemOption_Whats$1;-><init>(Lcom/metamoji/ui/dialog/SystemOption_Whats;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$id;->button_cabinetuser_privacy:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiButton;

    if-eqz v0, :cond_1

    .line 47
    new-instance v1, Lcom/metamoji/ui/dialog/SystemOption_Whats$2;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/dialog/SystemOption_Whats$2;-><init>(Lcom/metamoji/ui/dialog/SystemOption_Whats;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    :cond_1
    sget v0, Lcom/metamoji/noteanytime/R$id;->button_cabinetuser_aboutus:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiButton;

    if-eqz v0, :cond_2

    .line 62
    new-instance v1, Lcom/metamoji/ui/dialog/SystemOption_Whats$3;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/dialog/SystemOption_Whats$3;-><init>(Lcom/metamoji/ui/dialog/SystemOption_Whats;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    :cond_2
    invoke-static {}, Lcom/metamoji/nt/notify/NtSysInfoManager;->updateStateAsync()V

    .line 77
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/dialog/SystemOption_Whats;->restoreInstanceStateIfAvailable(Landroid/app/Dialog;)Z

    return-object p1
.end method

.method public onDone(Landroid/view/View;)V
    .locals 0

    .line 90
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/UiDialog;->onDone(Landroid/view/View;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 83
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/UiDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
