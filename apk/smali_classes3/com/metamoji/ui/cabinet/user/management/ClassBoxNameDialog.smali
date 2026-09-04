.class public Lcom/metamoji/ui/cabinet/user/management/ClassBoxNameDialog;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "ClassBoxNameDialog.java"


# instance fields
.field m_driveName:Ljava/lang/String;

.field m_driveNameText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    if-eqz p1, :cond_0

    .line 35
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 36
    sget v0, Lcom/metamoji/noteanytime/R$string;->CabinetSd_EditDriveName_DgTitle:I

    iput v0, p0, Lcom/metamoji/ui/cabinet/user/management/ClassBoxNameDialog;->mTitleId:I

    goto :goto_0

    .line 38
    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_CABINET_SD_MENU_MAKE_CLASS_BOX:I

    iput v0, p0, Lcom/metamoji/ui/cabinet/user/management/ClassBoxNameDialog;->mTitleId:I

    .line 40
    :goto_0
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/management/ClassBoxNameDialog;->m_driveName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDriveName()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/ClassBoxNameDialog;->m_driveName:Ljava/lang/String;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 54
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_cabinet_rename_drive:I

    iput v0, p0, Lcom/metamoji/ui/cabinet/user/management/ClassBoxNameDialog;->mViewId:I

    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/management/ClassBoxNameDialog;->mDone:Z

    .line 56
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/management/ClassBoxNameDialog;->mCancel:Z

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/management/ClassBoxNameDialog;->mBack:Z

    .line 59
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    if-eqz p3, :cond_0

    return-object p1

    .line 65
    :cond_0
    sget p2, Lcom/metamoji/noteanytime/R$id;->driveNameText:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/user/management/ClassBoxNameDialog;->m_driveNameText:Landroid/widget/TextView;

    .line 66
    iget-object p3, p0, Lcom/metamoji/ui/cabinet/user/management/ClassBoxNameDialog;->m_driveName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 45
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onDone(Landroid/view/View;)V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/ClassBoxNameDialog;->m_driveNameText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/ClassBoxNameDialog;->m_driveName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 80
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onDone(Landroid/view/View;)V

    return-void

    .line 81
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

    .line 73
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 74
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/management/ClassBoxNameDialog;->m_driveNameText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/management/ClassBoxNameDialog;->m_driveName:Ljava/lang/String;

    return-void
.end method
