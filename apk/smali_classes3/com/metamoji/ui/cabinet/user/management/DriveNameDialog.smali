.class public Lcom/metamoji/ui/cabinet/user/management/DriveNameDialog;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "DriveNameDialog.java"


# instance fields
.field m_driveName:Ljava/lang/String;

.field m_driveNameText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    if-eqz p1, :cond_0

    .line 45
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 46
    sget v0, Lcom/metamoji/noteanytime/R$string;->CabinetSd_EditDriveName_DgTitle:I

    iput v0, p0, Lcom/metamoji/ui/cabinet/user/management/DriveNameDialog;->mTitleId:I

    goto :goto_0

    .line 48
    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$string;->CabinetSd_MakeDrive_DgTitle:I

    iput v0, p0, Lcom/metamoji/ui/cabinet/user/management/DriveNameDialog;->mTitleId:I

    .line 50
    :goto_0
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/management/DriveNameDialog;->m_driveName:Ljava/lang/String;

    return-void
.end method

.method static synthetic lambda$onCreateView$0(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    if-eqz p2, :cond_0

    .line 79
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    const/16 p1, 0x42

    if-ne p0, p1, :cond_0

    .line 80
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getDriveName()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/DriveNameDialog;->m_driveName:Ljava/lang/String;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 64
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_cabinet_rename_drive:I

    iput v0, p0, Lcom/metamoji/ui/cabinet/user/management/DriveNameDialog;->mViewId:I

    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/management/DriveNameDialog;->mDone:Z

    .line 66
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/management/DriveNameDialog;->mCancel:Z

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/management/DriveNameDialog;->mBack:Z

    .line 69
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    if-eqz p3, :cond_0

    return-object p1

    .line 75
    :cond_0
    sget p2, Lcom/metamoji/noteanytime/R$id;->driveNameText:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/user/management/DriveNameDialog;->m_driveNameText:Landroid/widget/TextView;

    .line 76
    iget-object p3, p0, Lcom/metamoji/ui/cabinet/user/management/DriveNameDialog;->m_driveName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/user/management/DriveNameDialog;->m_driveNameText:Landroid/widget/TextView;

    new-instance p3, Lcom/metamoji/ui/cabinet/user/management/DriveNameDialog$$ExternalSyntheticLambda0;

    invoke-direct {p3}, Lcom/metamoji/ui/cabinet/user/management/DriveNameDialog$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 55
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onDone(Landroid/view/View;)V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/DriveNameDialog;->m_driveNameText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/DriveNameDialog;->m_driveName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 99
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onDone(Landroid/view/View;)V

    return-void

    .line 100
    :cond_1
    :goto_0
    sget p1, Lcom/metamoji/noteanytime/R$string;->CabinetSd_MakeDrive_DgMsg_NoInputName:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/metamoji/cm/CmUtils;->confirmDialog(IILandroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 92
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 93
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/management/DriveNameDialog;->m_driveNameText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/management/DriveNameDialog;->m_driveName:Ljava/lang/String;

    return-void
.end method
