.class public Lcom/metamoji/nt/cabinet/user/management/CabinetGroupSelectDialog;
.super Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;
.source "CabinetGroupSelectDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/nt/cabinet/user/management/CabinetGroupSelectDialog$GroupListAdapter;
    }
.end annotation


# instance fields
.field protected userSelectDlg:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 92
    invoke-direct {p0}, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;-><init>()V

    .line 94
    sget v0, Lcom/metamoji/noteanytime/R$string;->DcGroupSelectDlg_Title:I

    iput v0, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetGroupSelectDialog;->titleResId:I

    const/4 v0, 0x1

    .line 95
    iput-boolean v0, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetGroupSelectDialog;->mBack:Z

    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetGroupSelectDialog;->mCancel:Z

    .line 97
    iput-boolean v0, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetGroupSelectDialog;->mDone:Z

    return-void
.end method


# virtual methods
.method handleItemClick(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_0

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetGroupSelectDialog;->userSelectDlg:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;

    iget-object v0, v0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->groupDicList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_1

    :goto_0
    return-void

    .line 257
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/nt/cabinet/user/management/CabinetGroupSelectDialog;->dismiss()V

    .line 258
    iget-object v0, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetGroupSelectDialog;->userSelectDlg:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;

    invoke-virtual {v0, p1}, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->changeSelectGroup(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const/4 v0, 0x1

    .line 104
    invoke-virtual {p0, v0}, Lcom/metamoji/nt/cabinet/user/management/CabinetGroupSelectDialog;->setModal(Z)V

    .line 106
    sget v1, Lcom/metamoji/noteanytime/R$layout;->dialog_cabinet_user_select:I

    iput v1, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetGroupSelectDialog;->mViewId:I

    if-eqz p3, :cond_0

    .line 109
    const-string/jumbo v1, "titleResId"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetGroupSelectDialog;->titleResId:I

    .line 111
    :cond_0
    iget v1, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetGroupSelectDialog;->titleResId:I

    iput v1, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetGroupSelectDialog;->mTitleId:I

    .line 113
    iput-boolean v0, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetGroupSelectDialog;->subClassed:Z

    .line 114
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 117
    iget-boolean p2, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetGroupSelectDialog;->mClosingOnReconstruction:Z

    if-nez p2, :cond_4

    if-nez p1, :cond_1

    goto/16 :goto_0

    .line 122
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/nt/cabinet/user/management/CabinetGroupSelectDialog;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 125
    sget p2, Lcom/metamoji/noteanytime/R$id;->groupSelectBtn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButton;

    iput-object p2, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetGroupSelectDialog;->m_groupSelectBtn:Lcom/metamoji/ui/common/UiButton;

    .line 126
    iget-object p2, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetGroupSelectDialog;->m_groupSelectBtn:Lcom/metamoji/ui/common/UiButton;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    .line 127
    sget p2, Lcom/metamoji/noteanytime/R$id;->groupSelectLabel:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 128
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 131
    sget p2, Lcom/metamoji/noteanytime/R$id;->searchText:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiEditText;

    iput-object p2, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetGroupSelectDialog;->m_searchTextField:Lcom/metamoji/ui/common/UiEditText;

    if-eqz p3, :cond_2

    .line 134
    iget-object p2, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetGroupSelectDialog;->m_searchTextField:Lcom/metamoji/ui/common/UiEditText;

    const-string/jumbo v1, "saveSearchText"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiEditText;->setText(Ljava/lang/CharSequence;)V

    .line 136
    :cond_2
    iget-object p2, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetGroupSelectDialog;->m_searchTextField:Lcom/metamoji/ui/common/UiEditText;

    new-instance p3, Lcom/metamoji/nt/cabinet/user/management/CabinetGroupSelectDialog$1;

    invoke-direct {p3, p0}, Lcom/metamoji/nt/cabinet/user/management/CabinetGroupSelectDialog$1;-><init>(Lcom/metamoji/nt/cabinet/user/management/CabinetGroupSelectDialog;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 150
    sget p2, Lcom/metamoji/noteanytime/R$id;->listView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    .line 151
    iget-object p3, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetGroupSelectDialog;->m_listAdapter:Landroid/widget/ArrayAdapter;

    if-nez p3, :cond_3

    .line 152
    new-instance p3, Lcom/metamoji/nt/cabinet/user/management/CabinetGroupSelectDialog$GroupListAdapter;

    invoke-virtual {p0}, Lcom/metamoji/nt/cabinet/user/management/CabinetGroupSelectDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p3, p0, v1}, Lcom/metamoji/nt/cabinet/user/management/CabinetGroupSelectDialog$GroupListAdapter;-><init>(Lcom/metamoji/nt/cabinet/user/management/CabinetGroupSelectDialog;Landroid/content/Context;)V

    iput-object p3, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetGroupSelectDialog;->m_listAdapter:Landroid/widget/ArrayAdapter;

    .line 154
    :cond_3
    iget-object p3, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetGroupSelectDialog;->m_listAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 157
    sget p2, Lcom/metamoji/noteanytime/R$id;->indicator:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetGroupSelectDialog;->m_indicator:Landroid/view/View;

    .line 160
    sget p2, Lcom/metamoji/noteanytime/R$id;->selectBtnLayout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 161
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 164
    sget p2, Lcom/metamoji/noteanytime/R$id;->displayOnlyStudents:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    .line 165
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 168
    invoke-virtual {p0}, Lcom/metamoji/nt/cabinet/user/management/CabinetGroupSelectDialog;->updateList()V

    :cond_4
    :goto_0
    return-object p1
.end method

.method updateDispGroupDicList(Ljava/lang/String;)V
    .locals 5

    if-nez p1, :cond_0

    .line 198
    iget-object p1, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetGroupSelectDialog;->m_searchTextField:Lcom/metamoji/ui/common/UiEditText;

    invoke-virtual {p1}, Lcom/metamoji/ui/common/UiEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    if-eqz p1, :cond_7

    .line 201
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_2

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetGroupSelectDialog;->m_searchedText:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetGroupSelectDialog;->m_searchedText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_4

    .line 214
    :cond_2
    iget-object v0, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetGroupSelectDialog;->m_searchedText:Ljava/lang/String;

    const-string v1, "group"

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetGroupSelectDialog;->m_searchedText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetGroupSelectDialog;->m_searchedText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_5

    .line 216
    iget-object v0, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetGroupSelectDialog;->m_listAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_8

    .line 218
    iget-object v0, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetGroupSelectDialog;->m_listAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_8

    .line 219
    iget-object v2, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetGroupSelectDialog;->m_listAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v0}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 220
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 221
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_4

    .line 222
    :cond_3
    invoke-virtual {p0, v0}, Lcom/metamoji/nt/cabinet/user/management/CabinetGroupSelectDialog;->removeListData(I)V

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 229
    :cond_5
    invoke-virtual {p0}, Lcom/metamoji/nt/cabinet/user/management/CabinetGroupSelectDialog;->clearListData()V

    .line 230
    iget-object v0, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetGroupSelectDialog;->userSelectDlg:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;

    iget-object v0, v0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->groupDicList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 231
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 232
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_6

    .line 233
    invoke-virtual {p0, v2}, Lcom/metamoji/nt/cabinet/user/management/CabinetGroupSelectDialog;->addListData(Ljava/util/Map;)V

    goto :goto_1

    .line 204
    :cond_7
    :goto_2
    invoke-virtual {p0}, Lcom/metamoji/nt/cabinet/user/management/CabinetGroupSelectDialog;->clearListData()V

    .line 205
    iget-object v0, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetGroupSelectDialog;->userSelectDlg:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;

    iget-object v0, v0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->groupDicList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 206
    invoke-virtual {p0, v1}, Lcom/metamoji/nt/cabinet/user/management/CabinetGroupSelectDialog;->addListData(Ljava/util/Map;)V

    goto :goto_3

    .line 241
    :cond_8
    :goto_4
    iput-object p1, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetGroupSelectDialog;->m_searchedText:Ljava/lang/String;

    return-void
.end method

.method updateGroupList(Ljava/lang/String;)V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetGroupSelectDialog;->m_searchTextTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetGroupSelectDialog;->m_searchTextTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 184
    iput-object v0, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetGroupSelectDialog;->m_searchTextTimer:Ljava/util/Timer;

    .line 188
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/cabinet/user/management/CabinetGroupSelectDialog;->updateDispGroupDicList(Ljava/lang/String;)V

    return-void
.end method

.method updateList()V
    .locals 1

    const/4 v0, 0x0

    .line 178
    invoke-virtual {p0, v0}, Lcom/metamoji/nt/cabinet/user/management/CabinetGroupSelectDialog;->updateGroupList(Ljava/lang/String;)V

    return-void
.end method
