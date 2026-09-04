.class public Lcom/metamoji/forSchool/ui/ScDeadlineLogListDialog;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "ScDeadlineLogListDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/forSchool/ui/ScDeadlineLogListDialog$LogListItemMap;,
        Lcom/metamoji/forSchool/ui/ScDeadlineLogListDialog$LogListAdapter;
    }
.end annotation


# instance fields
.field m_listDataAdapter:Lcom/metamoji/forSchool/ui/ScDeadlineLogListDialog$LogListAdapter;

.field m_listView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 159
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 245
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onActivityCreated(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    .line 246
    const-string v0, "new"

    goto :goto_0

    :cond_0
    const-string v0, "restore"

    :goto_0
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ScDeadlineLogListDialog.onActivityCreated: %s"

    invoke-static {v1, v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 248
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScDeadlineLogListDialog;->m_listDataAdapter:Lcom/metamoji/forSchool/ui/ScDeadlineLogListDialog$LogListAdapter;

    if-nez v0, :cond_3

    .line 249
    new-instance v0, Lcom/metamoji/forSchool/ui/ScDeadlineLogListDialog$LogListAdapter;

    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScDeadlineLogListDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/metamoji/forSchool/ui/ScDeadlineLogListDialog$LogListAdapter;-><init>(Lcom/metamoji/forSchool/ui/ScDeadlineLogListDialog;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScDeadlineLogListDialog;->m_listDataAdapter:Lcom/metamoji/forSchool/ui/ScDeadlineLogListDialog$LogListAdapter;

    .line 250
    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScDeadlineLogListDialog;->m_listView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    if-nez p1, :cond_1

    .line 252
    const-string p1, "ScDeadlineLogListDialog.onActivityCreated: ListAdapter created."

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    return-void

    .line 254
    :cond_1
    const-string v0, "ScDeadlineLogListDialog.onActivityCreated: ListAdapter restored."

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 255
    const-string v0, "itemList"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 257
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .line 258
    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScDeadlineLogListDialog;->m_listDataAdapter:Lcom/metamoji/forSchool/ui/ScDeadlineLogListDialog$LogListAdapter;

    check-cast v0, Lcom/metamoji/forSchool/ui/ScDeadlineLogListDialog$LogListItemMap;

    invoke-virtual {v1, v0}, Lcom/metamoji/forSchool/ui/ScDeadlineLogListDialog$LogListAdapter;->add(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    return-void

    .line 264
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScDeadlineLogListDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/forSchool/ui/ScDeadlineLogListDialog$LogListAdapter;->updateContext(Landroid/content/Context;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    if-nez p3, :cond_0

    .line 212
    const-string v0, "new"

    goto :goto_0

    :cond_0
    const-string v0, "restore"

    :goto_0
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ScDeadlineLogListDialog.onCreateDialog: %s"

    invoke-static {v1, v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_school_deadline_loglist:I

    iput v0, p0, Lcom/metamoji/forSchool/ui/ScDeadlineLogListDialog;->mViewId:I

    .line 216
    sget v0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_DEADLINELOGLISTDLG_TITLE:I

    iput v0, p0, Lcom/metamoji/forSchool/ui/ScDeadlineLogListDialog;->mTitleId:I

    const/4 v0, 0x0

    .line 217
    iput-boolean v0, p0, Lcom/metamoji/forSchool/ui/ScDeadlineLogListDialog;->mDone:Z

    .line 218
    iput-boolean v0, p0, Lcom/metamoji/forSchool/ui/ScDeadlineLogListDialog;->mCancel:Z

    const/4 v0, 0x1

    .line 219
    iput-boolean v0, p0, Lcom/metamoji/forSchool/ui/ScDeadlineLogListDialog;->mClose:Z

    .line 220
    iput-boolean v0, p0, Lcom/metamoji/forSchool/ui/ScDeadlineLogListDialog;->mModal:Z

    .line 222
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 226
    sget p2, Lcom/metamoji/noteanytime/R$id;->listView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcom/metamoji/forSchool/ui/ScDeadlineLogListDialog;->m_listView:Landroid/widget/ListView;

    .line 227
    iget-object p3, p0, Lcom/metamoji/forSchool/ui/ScDeadlineLogListDialog;->m_listDataAdapter:Lcom/metamoji/forSchool/ui/ScDeadlineLogListDialog$LogListAdapter;

    if-eqz p3, :cond_1

    .line 231
    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_1
    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .line 273
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 274
    const-string v0, "ScDeadlineLogListDialog.onSaveInstanceState"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScDeadlineLogListDialog;->m_listDataAdapter:Lcom/metamoji/forSchool/ui/ScDeadlineLogListDialog$LogListAdapter;

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ui/ScDeadlineLogListDialog$LogListAdapter;->getCount()I

    move-result v0

    .line 278
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 280
    iget-object v3, p0, Lcom/metamoji/forSchool/ui/ScDeadlineLogListDialog;->m_listDataAdapter:Lcom/metamoji/forSchool/ui/ScDeadlineLogListDialog$LogListAdapter;

    invoke-virtual {v3, v2}, Lcom/metamoji/forSchool/ui/ScDeadlineLogListDialog$LogListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/forSchool/ui/ScDeadlineLogListDialog$LogListItemMap;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 282
    :cond_0
    const-string v0, "itemList"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 285
    sget-object v0, Lcom/metamoji/forSchool/ui/ScDeadlineLogListDialog;->Key_ReconstructDialogFlag:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 163
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 164
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 165
    const-string v2, "executedTime"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/ns/NsShareViewCommand;->convertDate(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object v2

    .line 166
    invoke-static {v2}, Lcom/metamoji/ns/NsCollaboUtils;->dateTimeStringWithoutWeek(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 167
    const-string v3, "userName"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 168
    const-string v5, "operation"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 171
    const-string v5, ""

    packed-switch v1, :pswitch_data_0

    move-object v1, v5

    goto :goto_1

    .line 190
    :pswitch_0
    sget v1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_DEADLINELOGLISTDLG_LOG_RE_START:I

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 187
    :pswitch_1
    sget v1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_DEADLINELOGLISTDLG_LOG_CANCEL_START:I

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 183
    :pswitch_2
    sget v1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_DEADLINELOGLISTDLG_LOG_END:I

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v1

    .line 184
    sget v4, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_DEADLINELOGLISTDLG_LOG_AUTO:I

    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 179
    :pswitch_3
    sget v1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_DEADLINELOGLISTDLG_LOG_START:I

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v1

    .line 180
    sget v4, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_DEADLINELOGLISTDLG_LOG_AUTO:I

    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 176
    :pswitch_4
    sget v1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_DEADLINELOGLISTDLG_LOG_END:I

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 173
    :pswitch_5
    sget v1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_DEADLINELOGLISTDLG_LOG_START:I

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v1

    .line 195
    :goto_1
    new-instance v6, Lcom/metamoji/forSchool/ui/ScDeadlineLogListDialog$LogListItemMap;

    invoke-direct {v6}, Lcom/metamoji/forSchool/ui/ScDeadlineLogListDialog$LogListItemMap;-><init>()V

    if-eqz v2, :cond_0

    goto :goto_2

    :cond_0
    move-object v2, v5

    .line 196
    :goto_2
    const-string v7, "updateDate"

    invoke-virtual {v6, v7, v2}, Lcom/metamoji/forSchool/ui/ScDeadlineLogListDialog$LogListItemMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    const-string v2, "action"

    invoke-virtual {v6, v2, v1}, Lcom/metamoji/forSchool/ui/ScDeadlineLogListDialog$LogListItemMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v4, :cond_1

    move-object v5, v4

    .line 198
    :cond_1
    invoke-virtual {v6, v3, v5}, Lcom/metamoji/forSchool/ui/ScDeadlineLogListDialog$LogListItemMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScDeadlineLogListDialog;->m_listDataAdapter:Lcom/metamoji/forSchool/ui/ScDeadlineLogListDialog$LogListAdapter;

    invoke-virtual {v1, v6}, Lcom/metamoji/forSchool/ui/ScDeadlineLogListDialog$LogListAdapter;->add(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method setItemData(Landroid/view/View;Lcom/metamoji/forSchool/ui/ScDeadlineLogListDialog$LogListItemMap;)Landroid/view/View;
    .locals 2

    .line 142
    sget v0, Lcom/metamoji/noteanytime/R$id;->updateDateText:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 143
    const-string v1, "updateDate"

    invoke-virtual {p2, v1}, Lcom/metamoji/forSchool/ui/ScDeadlineLogListDialog$LogListItemMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    sget v0, Lcom/metamoji/noteanytime/R$id;->actionText:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 145
    const-string v1, "action"

    invoke-virtual {p2, v1}, Lcom/metamoji/forSchool/ui/ScDeadlineLogListDialog$LogListItemMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    sget v0, Lcom/metamoji/noteanytime/R$id;->userNameText:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 147
    const-string v1, "userName"

    invoke-virtual {p2, v1}, Lcom/metamoji/forSchool/ui/ScDeadlineLogListDialog$LogListItemMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p1
.end method
