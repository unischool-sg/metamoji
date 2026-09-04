.class public Lcom/metamoji/ui/dialog/SearchString;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "SearchString.java"


# instance fields
.field private _editText:Landroid/widget/EditText;

.field private _isSharedDrive:Z

.field private _targetGrp:Lcom/metamoji/ui/common/UiRadioGroup;


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    .line 39
    iput-boolean p1, p0, Lcom/metamoji/ui/dialog/SearchString;->_isSharedDrive:Z

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 45
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/SearchString;->enableAutoDetectTextViewMode()V

    .line 48
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_search_title:I

    iput v0, p0, Lcom/metamoji/ui/dialog/SearchString;->mViewId:I

    .line 49
    sget v0, Lcom/metamoji/noteanytime/R$string;->Cabinet_Search_Title_String:I

    iput v0, p0, Lcom/metamoji/ui/dialog/SearchString;->mTitleId:I

    .line 51
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 53
    sget p2, Lcom/metamoji/noteanytime/R$id;->SearchString_EditText:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/SearchString;->_editText:Landroid/widget/EditText;

    .line 54
    sget p2, Lcom/metamoji/noteanytime/R$id;->radiogroup_target:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiRadioGroup;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/SearchString;->_targetGrp:Lcom/metamoji/ui/common/UiRadioGroup;

    .line 57
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/dialog/SearchString;->restoreInstanceStateIfAvailable(Landroid/view/View;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 60
    sget p2, Lcom/metamoji/noteanytime/R$id;->target_title:I

    .line 62
    invoke-static {}, Lcom/metamoji/noteanytime/MainActivity;->getSearchTitleString()Ljava/lang/String;

    move-result-object p3

    .line 63
    invoke-static {}, Lcom/metamoji/noteanytime/MainActivity;->getSearchTextString()Ljava/lang/String;

    move-result-object v0

    if-nez p3, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    const-string p3, ""

    goto :goto_3

    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    move-object v1, p3

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    if-eqz p3, :cond_3

    if-eqz v0, :cond_3

    .line 67
    sget p2, Lcom/metamoji/noteanytime/R$id;->target_titlenote:I

    goto :goto_2

    :cond_3
    if-eqz p3, :cond_4

    .line 69
    sget p2, Lcom/metamoji/noteanytime/R$id;->target_title:I

    goto :goto_2

    :cond_4
    if-eqz v0, :cond_5

    .line 71
    sget p2, Lcom/metamoji/noteanytime/R$id;->target_note:I

    :cond_5
    :goto_2
    move-object p3, v1

    .line 73
    :goto_3
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SearchString;->_editText:Landroid/widget/EditText;

    invoke-virtual {v0, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object p3, p0, Lcom/metamoji/ui/dialog/SearchString;->_targetGrp:Lcom/metamoji/ui/common/UiRadioGroup;

    if-eqz p3, :cond_6

    .line 75
    invoke-virtual {p3, p2}, Lcom/metamoji/ui/common/UiRadioGroup;->setCurrentButton(I)V

    .line 79
    :cond_6
    iget-object p2, p0, Lcom/metamoji/ui/dialog/SearchString;->_targetGrp:Lcom/metamoji/ui/common/UiRadioGroup;

    if-eqz p2, :cond_7

    .line 81
    sget p2, Lcom/metamoji/noteanytime/R$id;->target_note:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iget-boolean p3, p0, Lcom/metamoji/ui/dialog/SearchString;->_isSharedDrive:Z

    xor-int/lit8 p3, p3, 0x1

    invoke-virtual {p2, p3}, Landroid/view/View;->setEnabled(Z)V

    .line 82
    sget p2, Lcom/metamoji/noteanytime/R$id;->target_titlenote:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iget-boolean p3, p0, Lcom/metamoji/ui/dialog/SearchString;->_isSharedDrive:Z

    xor-int/lit8 p3, p3, 0x1

    invoke-virtual {p2, p3}, Landroid/view/View;->setEnabled(Z)V

    :cond_7
    return-object p1
.end method

.method public onDone(Landroid/view/View;)V
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SearchString;->_editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 93
    invoke-static {v1, v0, v1, v2}, Lcom/metamoji/noteanytime/MainActivity;->setSearchCondition(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 95
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onDone(Landroid/view/View;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 103
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 104
    sget-object v0, Lcom/metamoji/ui/dialog/SearchString;->Key_ReconstructDialogFlag:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
