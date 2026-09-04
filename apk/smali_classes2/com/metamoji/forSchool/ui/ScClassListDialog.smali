.class public Lcom/metamoji/forSchool/ui/ScClassListDialog;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "ScClassListDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/forSchool/ui/ScClassListDialog$Mode;,
        Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter;,
        Lcom/metamoji/forSchool/ui/ScClassListDialog$ArgKeys;,
        Lcom/metamoji/forSchool/ui/ScClassListDialog$IScClassListDialogAfterAction;,
        Lcom/metamoji/forSchool/ui/ScClassListDialog$DragListener;,
        Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListItemData;
    }
.end annotation


# static fields
.field private static s_afterAction:Lcom/metamoji/forSchool/ui/ScClassListDialog$IScClassListDialogAfterAction;


# instance fields
.field m_addButton:Lcom/metamoji/ui/common/UiButton;

.field m_deleteButton:Lcom/metamoji/ui/common/UiButton;

.field m_email:Ljava/lang/String;

.field m_listDataAdapter:Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter;

.field m_listView:Lcom/metamoji/forSchool/ui/ScListView;

.field m_loginName:Ljava/lang/String;

.field m_manageModeView:Landroid/view/View;

.field m_mode:Lcom/metamoji/forSchool/ui/ScClassListDialog$Mode;

.field m_nickName:Ljava/lang/String;

.field m_selectModeView:Landroid/view/View;

.field m_userId:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$maddClassItem(Lcom/metamoji/forSchool/ui/ScClassListDialog;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/forSchool/ui/ScClassListDialog;->addClassItem(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleAddButtonTap(Lcom/metamoji/forSchool/ui/ScClassListDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/forSchool/ui/ScClassListDialog;->handleAddButtonTap()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleDeleteButtonTap(Lcom/metamoji/forSchool/ui/ScClassListDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/forSchool/ui/ScClassListDialog;->handleDeleteButtonTap()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleItemCheckChanged(Lcom/metamoji/forSchool/ui/ScClassListDialog;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/forSchool/ui/ScClassListDialog;->handleItemCheckChanged(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleItemClicked(Lcom/metamoji/forSchool/ui/ScClassListDialog;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/forSchool/ui/ScClassListDialog;->handleItemClicked(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSelectionChanged(Lcom/metamoji/forSchool/ui/ScClassListDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/forSchool/ui/ScClassListDialog;->handleSelectionChanged()V

    return-void
.end method

.method static bridge synthetic -$$Nest$misManagerMode(Lcom/metamoji/forSchool/ui/ScClassListDialog;)Z
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/forSchool/ui/ScClassListDialog;->isManagerMode()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mmodifyClassItem(Lcom/metamoji/forSchool/ui/ScClassListDialog;Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListItemData;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/forSchool/ui/ScClassListDialog;->modifyClassItem(Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListItemData;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 361
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    .line 362
    const-string v0, "ScClassListDialog.constructor"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 364
    sget-object v0, Lcom/metamoji/forSchool/ui/ScClassListDialog$Mode;->ManageMode:Lcom/metamoji/forSchool/ui/ScClassListDialog$Mode;

    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog;->m_mode:Lcom/metamoji/forSchool/ui/ScClassListDialog$Mode;

    const/4 v0, 0x0

    .line 365
    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog;->m_email:Ljava/lang/String;

    .line 366
    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog;->m_userId:Ljava/lang/String;

    .line 367
    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog;->m_nickName:Ljava/lang/String;

    .line 369
    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog;->m_listDataAdapter:Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter;

    return-void
.end method

.method private addClassItem(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 717
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog;->m_listDataAdapter:Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter;

    new-instance v1, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListItemData;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1, p2}, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListItemData;-><init>(ZLjava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter;->add(Ljava/lang/Object;)V

    .line 718
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog;->m_listDataAdapter:Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter;

    invoke-virtual {p1}, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private getDlgTitle()I
    .locals 1

    .line 349
    invoke-direct {p0}, Lcom/metamoji/forSchool/ui/ScClassListDialog;->isManagerMode()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/metamoji/noteanytime/R$string;->School_ClassListDlg_Manage_Class:I

    return v0

    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$string;->School_ClassListDlg_Select_Class:I

    return v0
.end method

.method private handleAddButtonTap()V
    .locals 1

    const/4 v0, 0x0

    .line 696
    invoke-direct {p0, v0}, Lcom/metamoji/forSchool/ui/ScClassListDialog;->showMemberSettingsDialog(Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListItemData;)V

    return-void
.end method

.method private handleDeleteButtonTap()V
    .locals 2

    .line 703
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog;->m_listDataAdapter:Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter;

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter;->removeSelected()V

    .line 704
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog;->m_deleteButton:Lcom/metamoji/ui/common/UiButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    .line 706
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog;->m_listDataAdapter:Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter;

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private handleItemCheckChanged(I)V
    .locals 4

    .line 647
    invoke-direct {p0}, Lcom/metamoji/forSchool/ui/ScClassListDialog;->isManagerMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 651
    :cond_0
    sget-object v0, Lcom/metamoji/forSchool/ui/ScClassListDialog;->s_afterAction:Lcom/metamoji/forSchool/ui/ScClassListDialog$IScClassListDialogAfterAction;

    const/4 v1, 0x0

    .line 654
    invoke-virtual {p0, v1}, Lcom/metamoji/forSchool/ui/ScClassListDialog;->onDone(Landroid/view/View;)V

    .line 656
    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog;->m_listDataAdapter:Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter;

    invoke-virtual {v1, p1}, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListItemData;

    if-eqz v0, :cond_1

    .line 658
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 659
    const-string v2, "className"

    iget-object v3, p1, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListItemData;->className:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    const-string v2, "groupDicList"

    iget-object p1, p1, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListItemData;->groupDicList:Ljava/util/List;

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    invoke-interface {v0, v1}, Lcom/metamoji/forSchool/ui/ScClassListDialog$IScClassListDialogAfterAction;->action(Ljava/util/Map;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private handleItemClicked(I)V
    .locals 1

    .line 670
    invoke-direct {p0}, Lcom/metamoji/forSchool/ui/ScClassListDialog;->isManagerMode()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 673
    :cond_0
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog;->m_listDataAdapter:Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter;

    invoke-virtual {v0, p1}, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListItemData;

    .line 676
    invoke-direct {p0, p1}, Lcom/metamoji/forSchool/ui/ScClassListDialog;->showMemberSettingsDialog(Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListItemData;)V

    return-void
.end method

.method private handleSelectionChanged()V
    .locals 2

    .line 684
    invoke-direct {p0}, Lcom/metamoji/forSchool/ui/ScClassListDialog;->isManagerMode()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 688
    :cond_0
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog;->m_deleteButton:Lcom/metamoji/ui/common/UiButton;

    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog;->m_listDataAdapter:Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter;

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter;->isSelected()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    return-void
.end method

.method private initByArgument()V
    .locals 3

    .line 402
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScClassListDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 404
    const-string v1, "arg-mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/metamoji/forSchool/ui/ScClassListDialog$Mode;->toMode(I)Lcom/metamoji/forSchool/ui/ScClassListDialog$Mode;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog;->m_mode:Lcom/metamoji/forSchool/ui/ScClassListDialog$Mode;

    .line 405
    const-string v1, "arg-email"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog;->m_email:Ljava/lang/String;

    .line 406
    const-string v1, "arg-userid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog;->m_userId:Ljava/lang/String;

    .line 407
    const-string v1, "arg-nickname"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog;->m_nickName:Ljava/lang/String;

    .line 408
    const-string v1, "arg-loginname"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog;->m_loginName:Ljava/lang/String;

    return-void
.end method

.method private isManagerMode()Z
    .locals 2

    .line 345
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog;->m_mode:Lcom/metamoji/forSchool/ui/ScClassListDialog$Mode;

    sget-object v1, Lcom/metamoji/forSchool/ui/ScClassListDialog$Mode;->ManageMode:Lcom/metamoji/forSchool/ui/ScClassListDialog$Mode;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog;->m_mode:Lcom/metamoji/forSchool/ui/ScClassListDialog$Mode;

    sget-object v1, Lcom/metamoji/forSchool/ui/ScClassListDialog$Mode;->AddMode:Lcom/metamoji/forSchool/ui/ScClassListDialog$Mode;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private isSelectMode()Z
    .locals 1

    .line 353
    invoke-direct {p0}, Lcom/metamoji/forSchool/ui/ScClassListDialog;->isManagerMode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private modifyClassItem(Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListItemData;Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListItemData;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 730
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog;->m_listDataAdapter:Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter;

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 731
    iget-object v2, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog;->m_listDataAdapter:Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter;

    invoke-virtual {v2, v1}, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListItemData;

    .line 732
    iget-object v3, v2, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListItemData;->className:Ljava/lang/String;

    iget-object v4, p1, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListItemData;->className:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 734
    iput-object p2, v2, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListItemData;->className:Ljava/lang/String;

    .line 735
    iput-object p3, v2, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListItemData;->groupDicList:Ljava/util/List;

    .line 736
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog;->m_listDataAdapter:Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter;

    invoke-virtual {p1}, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter;->notifyDataSetChanged()V

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 741
    :cond_1
    const-string p1, "ScClassListDialog.modifyClassItem() error."

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    return-void
.end method

.method private showMemberSettingsDialog(Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListItemData;)V
    .locals 8

    if-eqz p1, :cond_0

    .line 751
    iget-object v0, p1, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListItemData;->className:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 752
    iget-object v1, p1, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListItemData;->groupDicList:Ljava/util/List;

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->createInitGroupList()Ljava/util/List;

    move-result-object v1

    .line 753
    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 754
    :goto_2
    iget-object v4, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog;->m_listDataAdapter:Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter;

    invoke-virtual {v4}, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 755
    iget-object v4, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog;->m_listDataAdapter:Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter;

    invoke-virtual {v4, v3}, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListItemData;

    if-eqz p1, :cond_2

    .line 756
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_3

    .line 760
    :cond_2
    iget-object v4, v4, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListItemData;->className:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 764
    :cond_3
    iget-object v3, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog;->m_userId:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/metamoji/forSchool/ScSchoolUtils;->getMemberDicListFromGroupList(Ljava/util/List;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 765
    const-string v4, "teacher"

    invoke-static {v3, v4}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 766
    const-string v5, "member"

    invoke-static {v3, v5}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 769
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScClassListDialog;->getTag()Ljava/lang/String;

    move-result-object v5

    .line 770
    new-instance v6, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;

    invoke-direct {v6}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;-><init>()V

    .line 771
    new-instance v7, Lcom/metamoji/forSchool/ui/ScClassListDialog$5;

    invoke-direct {v7, p0, v5, p1}, Lcom/metamoji/forSchool/ui/ScClassListDialog$5;-><init>(Lcom/metamoji/forSchool/ui/ScClassListDialog;Ljava/lang/String;Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListItemData;)V

    iput-object v7, v6, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_afterActionForSchool:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$INsCollaboMemberSettingsDialogAfterActionForSchool;

    .line 789
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog;->m_userId:Ljava/lang/String;

    iput-object p1, v6, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_ownerUserId:Ljava/lang/String;

    .line 790
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog;->m_nickName:Ljava/lang/String;

    iput-object p1, v6, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_ownerNickName:Ljava/lang/String;

    .line 791
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog;->m_loginName:Ljava/lang/String;

    iput-object p1, v6, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_ownerLoginName:Ljava/lang/String;

    .line 792
    iput-object v4, v6, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_presenterArray:Ljava/util/List;

    .line 793
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, v6, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_speakerArray:Ljava/util/List;

    .line 794
    iput-object v3, v6, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_visitorArray:Ljava/util/List;

    .line 795
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog;->m_userId:Ljava/lang/String;

    iput-object p1, v6, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_myUserId:Ljava/lang/String;

    .line 796
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog;->m_email:Ljava/lang/String;

    iput-object p1, v6, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_myAddress:Ljava/lang/String;

    .line 797
    iput-object v1, v6, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_groupList:Ljava/util/List;

    .line 798
    iput-object v0, v6, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_prevClassName:Ljava/lang/String;

    .line 799
    iput-object v2, v6, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_alreadyClassNameList:Ljava/util/List;

    .line 801
    const-string p1, "NsCollaboMemberSettingsDialog"

    invoke-virtual {v6, p1}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->safeShow(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public initDialog(Lcom/metamoji/forSchool/ui/ScClassListDialog$Mode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/forSchool/ui/ScClassListDialog$IScClassListDialogAfterAction;)V
    .locals 2

    .line 387
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 388
    const-string v1, "arg-mode"

    invoke-static {p1}, Lcom/metamoji/forSchool/ui/ScClassListDialog$Mode;->toInt(Lcom/metamoji/forSchool/ui/ScClassListDialog$Mode;)I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 389
    const-string p1, "arg-email"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    const-string p1, "arg-userid"

    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    const-string p1, "arg-nickname"

    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const-string p1, "arg-loginname"

    invoke-virtual {v0, p1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    invoke-virtual {p0, v0}, Lcom/metamoji/forSchool/ui/ScClassListDialog;->setArguments(Landroid/os/Bundle;)V

    .line 395
    sput-object p6, Lcom/metamoji/forSchool/ui/ScClassListDialog;->s_afterAction:Lcom/metamoji/forSchool/ui/ScClassListDialog$IScClassListDialogAfterAction;

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .line 523
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onActivityCreated(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    .line 524
    const-string v0, "new"

    goto :goto_0

    :cond_0
    const-string v0, "restore"

    :goto_0
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ScClassListDialog.onActivityCreated: %s"

    invoke-static {v1, v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 526
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog;->m_listDataAdapter:Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter;

    if-nez v0, :cond_3

    .line 527
    new-instance v0, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter;

    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScClassListDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter;-><init>(Lcom/metamoji/forSchool/ui/ScClassListDialog;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog;->m_listDataAdapter:Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter;

    .line 528
    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog;->m_listView:Lcom/metamoji/forSchool/ui/ScListView;

    invoke-virtual {v1, v0}, Lcom/metamoji/forSchool/ui/ScListView;->setAdapter(Landroid/widget/ListAdapter;)V

    if-nez p1, :cond_2

    .line 530
    const-string p1, "ScClassListDialog.onActivityCreated: ListAdapter created."

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 531
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->getClassDicList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 533
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 534
    const-string v1, "className"

    invoke-static {v0, v1}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 535
    const-string v2, "groupDicList"

    invoke-static {v0, v2}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 536
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    if-eqz v0, :cond_1

    .line 537
    new-instance v2, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListItemData;

    invoke-direct {p0}, Lcom/metamoji/forSchool/ui/ScClassListDialog;->isManagerMode()Z

    move-result v3

    invoke-direct {v2, v3, v1, v0}, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListItemData;-><init>(ZLjava/lang/String;Ljava/util/List;)V

    .line 538
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog;->m_listDataAdapter:Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter;

    invoke-virtual {v0, v2}, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter;->add(Ljava/lang/Object;)V

    goto :goto_1

    .line 543
    :cond_2
    const-string v0, "ScClassListDialog.onActivityCreated: ListAdapter restored."

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 544
    const-string v0, "classItemList"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 546
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .line 547
    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog;->m_listDataAdapter:Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter;

    check-cast v0, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListItemData;

    invoke-virtual {v1, v0}, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter;->add(Ljava/lang/Object;)V

    goto :goto_2

    .line 553
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScClassListDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter;->updateContext(Landroid/content/Context;)V

    .line 557
    :cond_4
    invoke-direct {p0}, Lcom/metamoji/forSchool/ui/ScClassListDialog;->handleSelectionChanged()V

    return-void
.end method

.method public onCancel(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 627
    sput-object v0, Lcom/metamoji/forSchool/ui/ScClassListDialog;->s_afterAction:Lcom/metamoji/forSchool/ui/ScClassListDialog$IScClassListDialogAfterAction;

    .line 628
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onCancel(Landroid/view/View;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    if-nez p3, :cond_0

    .line 421
    const-string v0, "new"

    goto :goto_0

    :cond_0
    const-string v0, "restore"

    :goto_0
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ScClassListDialog.onCreateDialog: %s"

    invoke-static {v1, v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 422
    invoke-direct {p0}, Lcom/metamoji/forSchool/ui/ScClassListDialog;->initByArgument()V

    .line 424
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_school_class_list:I

    iput v0, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog;->mViewId:I

    .line 425
    invoke-direct {p0}, Lcom/metamoji/forSchool/ui/ScClassListDialog;->getDlgTitle()I

    move-result v0

    iput v0, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog;->mTitleId:I

    .line 426
    invoke-direct {p0}, Lcom/metamoji/forSchool/ui/ScClassListDialog;->isManagerMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog;->mDone:Z

    const/4 v0, 0x1

    .line 427
    iput-boolean v0, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog;->mCancel:Z

    .line 428
    iput-boolean v0, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog;->mModal:Z

    .line 430
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 444
    sget p2, Lcom/metamoji/noteanytime/R$id;->manage_mode_panel:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog;->m_manageModeView:Landroid/view/View;

    .line 445
    sget p2, Lcom/metamoji/noteanytime/R$id;->select_mode_panel:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog;->m_selectModeView:Landroid/view/View;

    .line 446
    sget p2, Lcom/metamoji/noteanytime/R$id;->add_group_btn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButton;

    iput-object p2, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog;->m_addButton:Lcom/metamoji/ui/common/UiButton;

    .line 447
    new-instance p3, Lcom/metamoji/forSchool/ui/ScClassListDialog$1;

    invoke-direct {p3, p0}, Lcom/metamoji/forSchool/ui/ScClassListDialog$1;-><init>(Lcom/metamoji/forSchool/ui/ScClassListDialog;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 453
    sget p2, Lcom/metamoji/noteanytime/R$id;->delete_group_btn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButton;

    iput-object p2, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog;->m_deleteButton:Lcom/metamoji/ui/common/UiButton;

    .line 454
    new-instance p3, Lcom/metamoji/forSchool/ui/ScClassListDialog$2;

    invoke-direct {p3, p0}, Lcom/metamoji/forSchool/ui/ScClassListDialog$2;-><init>(Lcom/metamoji/forSchool/ui/ScClassListDialog;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 461
    invoke-direct {p0}, Lcom/metamoji/forSchool/ui/ScClassListDialog;->isManagerMode()Z

    move-result p2

    .line 465
    iget-object p3, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog;->m_manageModeView:Landroid/view/View;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p2, :cond_1

    .line 462
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 463
    iget-object p2, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog;->m_selectModeView:Landroid/view/View;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 465
    :cond_1
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 466
    iget-object p2, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog;->m_selectModeView:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 469
    :goto_1
    sget p2, Lcom/metamoji/noteanytime/R$id;->listView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/forSchool/ui/ScListView;

    iput-object p2, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog;->m_listView:Lcom/metamoji/forSchool/ui/ScListView;

    .line 470
    iget-object p3, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog;->m_listDataAdapter:Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter;

    if-eqz p3, :cond_2

    .line 474
    invoke-virtual {p2, p3}, Lcom/metamoji/forSchool/ui/ScListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 475
    const-string p2, "ScClassListDialog.onCreateDialog: reusing ListAdapter"

    invoke-static {p2}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 477
    :cond_2
    invoke-direct {p0}, Lcom/metamoji/forSchool/ui/ScClassListDialog;->isManagerMode()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 478
    iget-object p2, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog;->m_listView:Lcom/metamoji/forSchool/ui/ScListView;

    new-instance p3, Lcom/metamoji/forSchool/ui/ScClassListDialog$DragListener;

    invoke-direct {p3, p0}, Lcom/metamoji/forSchool/ui/ScClassListDialog$DragListener;-><init>(Lcom/metamoji/forSchool/ui/ScClassListDialog;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/forSchool/ui/ScListView;->setDragListener(Lcom/metamoji/ui/cabinet/SimpleDragListener;)V

    .line 479
    iget-object p2, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog;->m_listView:Lcom/metamoji/forSchool/ui/ScListView;

    invoke-virtual {p2, v0}, Lcom/metamoji/forSchool/ui/ScListView;->setSortable(Z)V

    .line 481
    :cond_3
    iget-object p2, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog;->m_listView:Lcom/metamoji/forSchool/ui/ScListView;

    new-instance p3, Lcom/metamoji/forSchool/ui/ScClassListDialog$3;

    invoke-direct {p3, p0}, Lcom/metamoji/forSchool/ui/ScClassListDialog$3;-><init>(Lcom/metamoji/forSchool/ui/ScClassListDialog;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/forSchool/ui/ScListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 494
    iget-object p2, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog;->m_listView:Lcom/metamoji/forSchool/ui/ScListView;

    new-instance p3, Lcom/metamoji/forSchool/ui/ScClassListDialog$4;

    invoke-direct {p3, p0}, Lcom/metamoji/forSchool/ui/ScClassListDialog$4;-><init>(Lcom/metamoji/forSchool/ui/ScClassListDialog;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/forSchool/ui/ScListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 506
    iget-object p2, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog;->m_mode:Lcom/metamoji/forSchool/ui/ScClassListDialog$Mode;

    sget-object p3, Lcom/metamoji/forSchool/ui/ScClassListDialog$Mode;->AddMode:Lcom/metamoji/forSchool/ui/ScClassListDialog$Mode;

    if-ne p2, p3, :cond_4

    const/4 p2, 0x0

    .line 508
    invoke-direct {p0, p2}, Lcom/metamoji/forSchool/ui/ScClassListDialog;->showMemberSettingsDialog(Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListItemData;)V

    .line 511
    :cond_4
    invoke-virtual {p0, p1}, Lcom/metamoji/forSchool/ui/ScClassListDialog;->restoreInstanceStateIfAvailable(Landroid/view/View;)Z

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 637
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onDismiss(Landroid/content/DialogInterface;)V

    const/4 p1, 0x0

    .line 638
    sput-object p1, Lcom/metamoji/forSchool/ui/ScClassListDialog;->s_afterAction:Lcom/metamoji/forSchool/ui/ScClassListDialog$IScClassListDialogAfterAction;

    return-void
.end method

.method public onDone(Landroid/view/View;)V
    .locals 6

    .line 586
    invoke-direct {p0}, Lcom/metamoji/forSchool/ui/ScClassListDialog;->isManagerMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 587
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 588
    :goto_0
    iget-object v2, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog;->m_listDataAdapter:Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter;

    invoke-virtual {v2}, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 589
    iget-object v2, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog;->m_listDataAdapter:Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter;

    invoke-virtual {v2, v1}, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListItemData;

    .line 590
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 591
    const-string v4, "className"

    iget-object v5, v2, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListItemData;->className:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    const-string v4, "groupDicList"

    iget-object v2, v2, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListItemData;->groupDicList:Ljava/util/List;

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 597
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v1

    .line 598
    const-string v2, "forSchoolClassDicList"

    invoke-virtual {v1, v2, v0}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Ljava/util/List;)V

    .line 602
    :cond_1
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog;->m_mode:Lcom/metamoji/forSchool/ui/ScClassListDialog$Mode;

    sget-object v1, Lcom/metamoji/forSchool/ui/ScClassListDialog$Mode;->AddMode:Lcom/metamoji/forSchool/ui/ScClassListDialog$Mode;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog;->m_listDataAdapter:Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter;

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 606
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScClassListDialog;->dismissAllowingStateLoss()V

    return-void

    .line 609
    :cond_2
    sget-object v0, Lcom/metamoji/forSchool/ui/ScClassListDialog;->s_afterAction:Lcom/metamoji/forSchool/ui/ScClassListDialog$IScClassListDialogAfterAction;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 610
    invoke-interface {v0, v1}, Lcom/metamoji/forSchool/ui/ScClassListDialog$IScClassListDialogAfterAction;->action(Ljava/util/Map;)V

    .line 611
    sput-object v1, Lcom/metamoji/forSchool/ui/ScClassListDialog;->s_afterAction:Lcom/metamoji/forSchool/ui/ScClassListDialog$IScClassListDialogAfterAction;

    .line 613
    :cond_3
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onDone(Landroid/view/View;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .line 565
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 566
    const-string v0, "ScClassListDialog.onSaveInstanceState"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 570
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog;->m_listDataAdapter:Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter;

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter;->getCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 571
    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog;->m_listDataAdapter:Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter;

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 572
    iget-object v3, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog;->m_listDataAdapter:Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter;

    invoke-virtual {v3, v2}, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListItemData;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 574
    :cond_0
    const-string v1, "classItemList"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 577
    sget-object v0, Lcom/metamoji/forSchool/ui/ScClassListDialog;->Key_ReconstructDialogFlag:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
