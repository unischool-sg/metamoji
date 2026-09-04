.class public Lcom/metamoji/un/survey/ui/UnSurveyItemEditDialog;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "UnSurveyItemEditDialog.java"


# instance fields
.field public m_alreadyItemNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field m_editText:Landroid/widget/EditText;

.field public m_newItemName:Ljava/lang/String;

.field public m_prevItemName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyItemEditDialog;->m_alreadyItemNameList:Ljava/util/List;

    .line 29
    iput-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyItemEditDialog;->m_prevItemName:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyItemEditDialog;->m_newItemName:Ljava/lang/String;

    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyItemEditDialog;->mCentering:Z

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 36
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_survey_item_edit:I

    iput v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyItemEditDialog;->mViewId:I

    .line 38
    iget-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyItemEditDialog;->m_prevItemName:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget v0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SURVEY_UNIT_EDIT_CHOICE:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SURVEY_UNIT_ADD_CHOICE:I

    :goto_0
    iput v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyItemEditDialog;->mTitleId:I

    .line 40
    invoke-virtual {p0}, Lcom/metamoji/un/survey/ui/UnSurveyItemEditDialog;->enableAutoDetectTextViewMode()V

    .line 42
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 44
    iget-boolean p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyItemEditDialog;->mClosingOnReconstruction:Z

    if-nez p2, :cond_3

    if-nez p1, :cond_1

    goto :goto_1

    .line 48
    :cond_1
    sget p2, Lcom/metamoji/noteanytime/R$id;->editText:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyItemEditDialog;->m_editText:Landroid/widget/EditText;

    .line 49
    iget-object p3, p0, Lcom/metamoji/un/survey/ui/UnSurveyItemEditDialog;->m_prevItemName:Ljava/lang/String;

    if-eqz p3, :cond_2

    .line 50
    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 53
    :cond_2
    invoke-virtual {p0, p1}, Lcom/metamoji/un/survey/ui/UnSurveyItemEditDialog;->restoreInstanceStateIfAvailable(Landroid/view/View;)Z

    :cond_3
    :goto_1
    return-object p1
.end method

.method public onDone(Landroid/view/View;)V
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyItemEditDialog;->m_editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 74
    sget p1, Lcom/metamoji/noteanytime/R$string;->School_GroupEditDlg_Msg_Error_No_Name:I

    invoke-static {p1}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(I)V

    return-void

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/metamoji/un/survey/ui/UnSurveyItemEditDialog;->m_alreadyItemNameList:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 79
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 80
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 81
    sget p1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SURVEY_UNIT_SAME_NAME_ITEM_MESSAGE:I

    invoke-static {p1}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(I)V

    return-void

    .line 87
    :cond_2
    iput-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyItemEditDialog;->m_newItemName:Ljava/lang/String;

    .line 89
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onDone(Landroid/view/View;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 62
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
