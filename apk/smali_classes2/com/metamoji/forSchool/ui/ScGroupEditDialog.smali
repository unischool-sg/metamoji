.class public Lcom/metamoji/forSchool/ui/ScGroupEditDialog;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "ScGroupEditDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/forSchool/ui/ScGroupEditDialog$IScGroupEditDialogAfterAction;
    }
.end annotation


# instance fields
.field public m_afterAction:Lcom/metamoji/forSchool/ui/ScGroupEditDialog$IScGroupEditDialogAfterAction;

.field public m_alreadyGroupNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field m_editText:Landroid/widget/EditText;

.field public m_prevGroupName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScGroupEditDialog;->m_afterAction:Lcom/metamoji/forSchool/ui/ScGroupEditDialog$IScGroupEditDialogAfterAction;

    .line 34
    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScGroupEditDialog;->m_alreadyGroupNameList:Ljava/util/List;

    .line 35
    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScGroupEditDialog;->m_prevGroupName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 44
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_school_group_edit:I

    iput v0, p0, Lcom/metamoji/forSchool/ui/ScGroupEditDialog;->mViewId:I

    .line 45
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScGroupEditDialog;->m_prevGroupName:Ljava/lang/String;

    if-nez v0, :cond_0

    sget v0, Lcom/metamoji/noteanytime/R$string;->School_GroupEditDlg_Add_Group:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$string;->School_GroupEditDlg_Edit_Group:I

    :goto_0
    iput v0, p0, Lcom/metamoji/forSchool/ui/ScGroupEditDialog;->mTitleId:I

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/metamoji/forSchool/ui/ScGroupEditDialog;->mV4Compatible:Z

    .line 48
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 50
    sget p2, Lcom/metamoji/noteanytime/R$id;->editText:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/metamoji/forSchool/ui/ScGroupEditDialog;->m_editText:Landroid/widget/EditText;

    .line 51
    iget-object p3, p0, Lcom/metamoji/forSchool/ui/ScGroupEditDialog;->m_prevGroupName:Ljava/lang/String;

    if-eqz p3, :cond_1

    .line 52
    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 55
    :cond_1
    invoke-virtual {p0, p1}, Lcom/metamoji/forSchool/ui/ScGroupEditDialog;->restoreInstanceStateIfAvailable(Landroid/view/View;)Z

    return-object p1
.end method

.method public onDone(Landroid/view/View;)V
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScGroupEditDialog;->m_editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 75
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScGroupEditDialog;->m_alreadyGroupNameList:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 81
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 82
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 83
    sget p1, Lcom/metamoji/noteanytime/R$string;->School_GroupEditDlg_Msg_Error_Exist_Name:I

    invoke-static {p1}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(I)V

    return-void

    .line 89
    :cond_2
    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScGroupEditDialog;->m_afterAction:Lcom/metamoji/forSchool/ui/ScGroupEditDialog$IScGroupEditDialogAfterAction;

    if-eqz v1, :cond_3

    .line 90
    invoke-interface {v1, v0}, Lcom/metamoji/forSchool/ui/ScGroupEditDialog$IScGroupEditDialogAfterAction;->action(Ljava/lang/String;)V

    .line 93
    :cond_3
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onDone(Landroid/view/View;)V

    return-void

    .line 76
    :cond_4
    :goto_0
    sget p1, Lcom/metamoji/noteanytime/R$string;->School_GroupEditDlg_Msg_Error_No_Name:I

    invoke-static {p1}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(I)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 64
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
