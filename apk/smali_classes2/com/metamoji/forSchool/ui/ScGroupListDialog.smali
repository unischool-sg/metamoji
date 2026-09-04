.class public Lcom/metamoji/forSchool/ui/ScGroupListDialog;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "ScGroupListDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/forSchool/ui/ScGroupListDialog$IScGroupListDialogAfterAction;,
        Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListAdapter;,
        Lcom/metamoji/forSchool/ui/ScGroupListDialog$DragListener;,
        Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListItemData;
    }
.end annotation


# instance fields
.field m_addButton:Lcom/metamoji/ui/common/UiButton;

.field public m_afterAction:Lcom/metamoji/forSchool/ui/ScGroupListDialog$IScGroupListDialogAfterAction;

.field m_deleteButton:Lcom/metamoji/ui/common/UiButton;

.field public m_groupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field m_groupListView:Lcom/metamoji/forSchool/ui/ScListView;

.field m_isManagerMode:Z

.field m_listDataAdapter:Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListAdapter;

.field m_manageModeView:Landroid/view/View;

.field m_selectedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListItemData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$n1oYCXLGgW1gyBX2_LC8Vwpevks(Lcom/metamoji/forSchool/ui/ScGroupListDialog;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/forSchool/ui/ScGroupListDialog;->lambda$handleAddButtonTap$0(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleAddButtonTap(Lcom/metamoji/forSchool/ui/ScGroupListDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/forSchool/ui/ScGroupListDialog;->handleAddButtonTap()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleDeleteButtonTap(Lcom/metamoji/forSchool/ui/ScGroupListDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/forSchool/ui/ScGroupListDialog;->handleDeleteButtonTap()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleItemClicked(Lcom/metamoji/forSchool/ui/ScGroupListDialog;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/forSchool/ui/ScGroupListDialog;->handleItemClicked(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSelectionChanged(Lcom/metamoji/forSchool/ui/ScGroupListDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/forSchool/ui/ScGroupListDialog;->handleSelectionChanged()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 193
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    const/4 v0, 0x0

    .line 178
    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScGroupListDialog;->m_groupList:Ljava/util/List;

    .line 179
    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScGroupListDialog;->m_afterAction:Lcom/metamoji/forSchool/ui/ScGroupListDialog$IScGroupListDialogAfterAction;

    .line 181
    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScGroupListDialog;->m_selectedItems:Ljava/util/List;

    const/4 v1, 0x0

    .line 196
    iput-boolean v1, p0, Lcom/metamoji/forSchool/ui/ScGroupListDialog;->m_isManagerMode:Z

    .line 197
    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScGroupListDialog;->m_listDataAdapter:Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListAdapter;

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScGroupListDialog;->m_selectedItems:Ljava/util/List;

    return-void
.end method

.method private getDlgTitle()I
    .locals 1

    .line 189
    iget-boolean v0, p0, Lcom/metamoji/forSchool/ui/ScGroupListDialog;->m_isManagerMode:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/metamoji/noteanytime/R$string;->School_GroupListDlg_Edit_Group:I

    return v0

    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$string;->School_GroupListDlg_Select_Group:I

    return v0
.end method

.method private handleAddButtonTap()V
    .locals 3

    .line 420
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 421
    :goto_0
    iget-object v2, p0, Lcom/metamoji/forSchool/ui/ScGroupListDialog;->m_listDataAdapter:Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListAdapter;

    invoke-virtual {v2}, Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 422
    iget-object v2, p0, Lcom/metamoji/forSchool/ui/ScGroupListDialog;->m_listDataAdapter:Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListAdapter;

    invoke-virtual {v2, v1}, Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListItemData;

    .line 423
    iget-object v2, v2, Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListItemData;->groupName:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 426
    :cond_0
    new-instance v1, Lcom/metamoji/forSchool/ui/ScGroupEditDialog;

    invoke-direct {v1}, Lcom/metamoji/forSchool/ui/ScGroupEditDialog;-><init>()V

    .line 427
    iput-object v0, v1, Lcom/metamoji/forSchool/ui/ScGroupEditDialog;->m_alreadyGroupNameList:Ljava/util/List;

    .line 428
    new-instance v0, Lcom/metamoji/forSchool/ui/ScGroupListDialog$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/metamoji/forSchool/ui/ScGroupListDialog$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/forSchool/ui/ScGroupListDialog;)V

    iput-object v0, v1, Lcom/metamoji/forSchool/ui/ScGroupEditDialog;->m_afterAction:Lcom/metamoji/forSchool/ui/ScGroupEditDialog$IScGroupEditDialogAfterAction;

    .line 435
    const-string v0, "ScGroupEditDialog"

    invoke-virtual {v1, v0}, Lcom/metamoji/forSchool/ui/ScGroupEditDialog;->safeShow(Ljava/lang/String;)V

    return-void
.end method

.method private handleDeleteButtonTap()V
    .locals 3

    .line 442
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScGroupListDialog;->m_selectedItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListItemData;

    .line 443
    iget-object v2, p0, Lcom/metamoji/forSchool/ui/ScGroupListDialog;->m_listDataAdapter:Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListAdapter;

    invoke-virtual {v2, v1}, Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListAdapter;->remove(Ljava/lang/Object;)V

    goto :goto_0

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScGroupListDialog;->m_selectedItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 447
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScGroupListDialog;->m_listDataAdapter:Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListAdapter;

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private handleItemClicked(I)V
    .locals 4

    .line 373
    iget-boolean v0, p0, Lcom/metamoji/forSchool/ui/ScGroupListDialog;->m_isManagerMode:Z

    if-nez v0, :cond_0

    return-void

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScGroupListDialog;->m_listDataAdapter:Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListAdapter;

    invoke-virtual {v0, p1}, Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListItemData;

    .line 380
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 381
    :goto_0
    iget-object v2, p0, Lcom/metamoji/forSchool/ui/ScGroupListDialog;->m_listDataAdapter:Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListAdapter;

    invoke-virtual {v2}, Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 382
    iget-object v2, p0, Lcom/metamoji/forSchool/ui/ScGroupListDialog;->m_listDataAdapter:Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListAdapter;

    invoke-virtual {v2, v1}, Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListItemData;

    .line 383
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 387
    :cond_1
    iget-object v2, v2, Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListItemData;->groupName:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 390
    :cond_2
    new-instance v1, Lcom/metamoji/forSchool/ui/ScGroupEditDialog;

    invoke-direct {v1}, Lcom/metamoji/forSchool/ui/ScGroupEditDialog;-><init>()V

    .line 391
    iget-object v2, p1, Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListItemData;->groupName:Ljava/lang/String;

    iput-object v2, v1, Lcom/metamoji/forSchool/ui/ScGroupEditDialog;->m_prevGroupName:Ljava/lang/String;

    .line 392
    iput-object v0, v1, Lcom/metamoji/forSchool/ui/ScGroupEditDialog;->m_alreadyGroupNameList:Ljava/util/List;

    .line 393
    new-instance v0, Lcom/metamoji/forSchool/ui/ScGroupListDialog$5;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/forSchool/ui/ScGroupListDialog$5;-><init>(Lcom/metamoji/forSchool/ui/ScGroupListDialog;Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListItemData;)V

    iput-object v0, v1, Lcom/metamoji/forSchool/ui/ScGroupEditDialog;->m_afterAction:Lcom/metamoji/forSchool/ui/ScGroupEditDialog$IScGroupEditDialogAfterAction;

    .line 401
    const-string p1, "ScGroupEditDialog"

    invoke-virtual {v1, p1}, Lcom/metamoji/forSchool/ui/ScGroupEditDialog;->safeShow(Ljava/lang/String;)V

    return-void
.end method

.method private handleSelectionChanged()V
    .locals 2

    .line 409
    iget-boolean v0, p0, Lcom/metamoji/forSchool/ui/ScGroupListDialog;->m_isManagerMode:Z

    if-nez v0, :cond_0

    return-void

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScGroupListDialog;->m_deleteButton:Lcom/metamoji/ui/common/UiButton;

    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScGroupListDialog;->m_selectedItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    return-void
.end method

.method private initByArguments()V
    .locals 3

    .line 213
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScGroupListDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 214
    const-string v1, "isManagerMode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/metamoji/forSchool/ui/ScGroupListDialog;->m_isManagerMode:Z

    return-void
.end method

.method private synthetic lambda$handleAddButtonTap$0(Ljava/lang/String;)V
    .locals 3

    .line 429
    invoke-static {}, Lcom/metamoji/cm/CmLocalIdManager;->getInstance()Lcom/metamoji/cm/CmLocalIdManager;

    move-result-object v0

    const-string v1, "group"

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmLocalIdManager;->generateSubIdWithType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 430
    new-instance v1, Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListItemData;

    iget-boolean v2, p0, Lcom/metamoji/forSchool/ui/ScGroupListDialog;->m_isManagerMode:Z

    invoke-direct {v1, v2, v0, p1}, Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListItemData;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    .line 431
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/ScGroupListDialog;->m_listDataAdapter:Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListAdapter;

    invoke-virtual {p1, v1}, Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListAdapter;->add(Ljava/lang/Object;)V

    .line 432
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/ScGroupListDialog;->m_listDataAdapter:Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListAdapter;

    invoke-virtual {p1}, Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public initDialog(Z)V
    .locals 2

    .line 207
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 208
    const-string v1, "isManagerMode"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 209
    invoke-virtual {p0, v0}, Lcom/metamoji/forSchool/ui/ScGroupListDialog;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .line 303
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onActivityCreated(Landroid/os/Bundle;)V

    .line 305
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/ScGroupListDialog;->m_listDataAdapter:Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListAdapter;

    if-nez p1, :cond_4

    .line 306
    new-instance p1, Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListAdapter;

    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScGroupListDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListAdapter;-><init>(Lcom/metamoji/forSchool/ui/ScGroupListDialog;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScGroupListDialog;->m_listDataAdapter:Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListAdapter;

    .line 307
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/ScGroupListDialog;->m_groupList:Ljava/util/List;

    if-eqz p1, :cond_3

    .line 308
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 309
    check-cast v0, Ljava/util/Map;

    .line 310
    const-string v1, "group-id"

    invoke-static {v0, v1}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 311
    const-string v2, "group-name"

    invoke-static {v0, v2}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 313
    const-string v2, "TEACHER"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 317
    :cond_1
    iget-boolean v2, p0, Lcom/metamoji/forSchool/ui/ScGroupListDialog;->m_isManagerMode:Z

    if-eqz v2, :cond_2

    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 321
    :cond_2
    new-instance v2, Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListItemData;

    iget-boolean v3, p0, Lcom/metamoji/forSchool/ui/ScGroupListDialog;->m_isManagerMode:Z

    invoke-direct {v2, v3, v1, v0}, Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListItemData;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScGroupListDialog;->m_listDataAdapter:Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListAdapter;

    invoke-virtual {v0, v2}, Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 325
    :cond_3
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/ScGroupListDialog;->m_groupListView:Lcom/metamoji/forSchool/ui/ScListView;

    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScGroupListDialog;->m_listDataAdapter:Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListAdapter;

    invoke-virtual {p1, v0}, Lcom/metamoji/forSchool/ui/ScListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    .line 327
    :cond_4
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScGroupListDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListAdapter;->updateContext(Landroid/content/Context;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 232
    invoke-direct {p0}, Lcom/metamoji/forSchool/ui/ScGroupListDialog;->initByArguments()V

    .line 234
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_school_group_list:I

    iput v0, p0, Lcom/metamoji/forSchool/ui/ScGroupListDialog;->mViewId:I

    .line 235
    invoke-direct {p0}, Lcom/metamoji/forSchool/ui/ScGroupListDialog;->getDlgTitle()I

    move-result v0

    iput v0, p0, Lcom/metamoji/forSchool/ui/ScGroupListDialog;->mTitleId:I

    .line 236
    iget-boolean v0, p0, Lcom/metamoji/forSchool/ui/ScGroupListDialog;->m_isManagerMode:Z

    iput-boolean v0, p0, Lcom/metamoji/forSchool/ui/ScGroupListDialog;->mDone:Z

    .line 237
    iget-boolean v0, p0, Lcom/metamoji/forSchool/ui/ScGroupListDialog;->m_isManagerMode:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/metamoji/forSchool/ui/ScGroupListDialog;->mBack:Z

    .line 238
    iget-boolean v0, p0, Lcom/metamoji/forSchool/ui/ScGroupListDialog;->m_isManagerMode:Z

    iput-boolean v0, p0, Lcom/metamoji/forSchool/ui/ScGroupListDialog;->mCancel:Z

    .line 240
    iput-boolean v1, p0, Lcom/metamoji/forSchool/ui/ScGroupListDialog;->mV4Compatible:Z

    .line 241
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 243
    sget p2, Lcom/metamoji/noteanytime/R$id;->manage_mode_panel:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/forSchool/ui/ScGroupListDialog;->m_manageModeView:Landroid/view/View;

    .line 244
    sget p2, Lcom/metamoji/noteanytime/R$id;->add_group_btn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButton;

    iput-object p2, p0, Lcom/metamoji/forSchool/ui/ScGroupListDialog;->m_addButton:Lcom/metamoji/ui/common/UiButton;

    .line 245
    new-instance p3, Lcom/metamoji/forSchool/ui/ScGroupListDialog$1;

    invoke-direct {p3, p0}, Lcom/metamoji/forSchool/ui/ScGroupListDialog$1;-><init>(Lcom/metamoji/forSchool/ui/ScGroupListDialog;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    sget p2, Lcom/metamoji/noteanytime/R$id;->delete_group_btn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButton;

    iput-object p2, p0, Lcom/metamoji/forSchool/ui/ScGroupListDialog;->m_deleteButton:Lcom/metamoji/ui/common/UiButton;

    .line 252
    new-instance p3, Lcom/metamoji/forSchool/ui/ScGroupListDialog$2;

    invoke-direct {p3, p0}, Lcom/metamoji/forSchool/ui/ScGroupListDialog$2;-><init>(Lcom/metamoji/forSchool/ui/ScGroupListDialog;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    iget-boolean p2, p0, Lcom/metamoji/forSchool/ui/ScGroupListDialog;->m_isManagerMode:Z

    .line 262
    iget-object p3, p0, Lcom/metamoji/forSchool/ui/ScGroupListDialog;->m_manageModeView:Landroid/view/View;

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 260
    invoke-virtual {p3, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    .line 262
    invoke-virtual {p3, p2}, Landroid/view/View;->setVisibility(I)V

    .line 265
    :goto_0
    sget p2, Lcom/metamoji/noteanytime/R$id;->listView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/forSchool/ui/ScListView;

    iput-object p2, p0, Lcom/metamoji/forSchool/ui/ScGroupListDialog;->m_groupListView:Lcom/metamoji/forSchool/ui/ScListView;

    .line 266
    iget-object p3, p0, Lcom/metamoji/forSchool/ui/ScGroupListDialog;->m_listDataAdapter:Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListAdapter;

    if-eqz p3, :cond_1

    .line 267
    invoke-virtual {p2, p3}, Lcom/metamoji/forSchool/ui/ScListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 269
    :cond_1
    iget-boolean p2, p0, Lcom/metamoji/forSchool/ui/ScGroupListDialog;->m_isManagerMode:Z

    if-eqz p2, :cond_2

    .line 270
    iget-object p2, p0, Lcom/metamoji/forSchool/ui/ScGroupListDialog;->m_groupListView:Lcom/metamoji/forSchool/ui/ScListView;

    new-instance p3, Lcom/metamoji/forSchool/ui/ScGroupListDialog$DragListener;

    invoke-direct {p3, p0}, Lcom/metamoji/forSchool/ui/ScGroupListDialog$DragListener;-><init>(Lcom/metamoji/forSchool/ui/ScGroupListDialog;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/forSchool/ui/ScListView;->setDragListener(Lcom/metamoji/ui/cabinet/SimpleDragListener;)V

    .line 271
    iget-object p2, p0, Lcom/metamoji/forSchool/ui/ScGroupListDialog;->m_groupListView:Lcom/metamoji/forSchool/ui/ScListView;

    invoke-virtual {p2, v1}, Lcom/metamoji/forSchool/ui/ScListView;->setSortable(Z)V

    .line 273
    :cond_2
    iget-object p2, p0, Lcom/metamoji/forSchool/ui/ScGroupListDialog;->m_groupListView:Lcom/metamoji/forSchool/ui/ScListView;

    new-instance p3, Lcom/metamoji/forSchool/ui/ScGroupListDialog$3;

    invoke-direct {p3, p0}, Lcom/metamoji/forSchool/ui/ScGroupListDialog$3;-><init>(Lcom/metamoji/forSchool/ui/ScGroupListDialog;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/forSchool/ui/ScListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 286
    iget-object p2, p0, Lcom/metamoji/forSchool/ui/ScGroupListDialog;->m_groupListView:Lcom/metamoji/forSchool/ui/ScListView;

    new-instance p3, Lcom/metamoji/forSchool/ui/ScGroupListDialog$4;

    invoke-direct {p3, p0}, Lcom/metamoji/forSchool/ui/ScGroupListDialog$4;-><init>(Lcom/metamoji/forSchool/ui/ScGroupListDialog;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/forSchool/ui/ScListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 297
    invoke-virtual {p0, p1}, Lcom/metamoji/forSchool/ui/ScGroupListDialog;->restoreInstanceStateIfAvailable(Landroid/view/View;)Z

    return-object p1
.end method

.method public onDone(Landroid/view/View;)V
    .locals 4

    .line 349
    iget-boolean v0, p0, Lcom/metamoji/forSchool/ui/ScGroupListDialog;->m_isManagerMode:Z

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScGroupListDialog;->m_groupList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 352
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScGroupListDialog;->m_groupList:Ljava/util/List;

    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->createGroupDicForTeacher()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScGroupListDialog;->m_groupList:Ljava/util/List;

    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->createGroupDicForNonGroup()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 356
    :goto_0
    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScGroupListDialog;->m_listDataAdapter:Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListAdapter;

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 357
    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScGroupListDialog;->m_listDataAdapter:Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListAdapter;

    invoke-virtual {v1, v0}, Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListItemData;

    .line 358
    iget-object v2, p0, Lcom/metamoji/forSchool/ui/ScGroupListDialog;->m_groupList:Ljava/util/List;

    iget-object v3, v1, Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListItemData;->groupId:Ljava/lang/String;

    iget-object v1, v1, Lcom/metamoji/forSchool/ui/ScGroupListDialog$GroupListItemData;->groupName:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/metamoji/forSchool/ScSchoolUtils;->createGroupDic(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScGroupListDialog;->m_afterAction:Lcom/metamoji/forSchool/ui/ScGroupListDialog$IScGroupListDialogAfterAction;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 363
    invoke-interface {v0, v1}, Lcom/metamoji/forSchool/ui/ScGroupListDialog$IScGroupListDialogAfterAction;->action(Ljava/lang/String;)V

    .line 365
    :cond_1
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onDone(Landroid/view/View;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 336
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 337
    const-string v0, "isManagerMode"

    iget-boolean v1, p0, Lcom/metamoji/forSchool/ui/ScGroupListDialog;->m_isManagerMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
